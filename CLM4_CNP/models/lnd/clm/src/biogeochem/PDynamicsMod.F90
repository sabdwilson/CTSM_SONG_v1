
module PDynamicsMod

!-----------------------------------------------------------------------
!BOP
!
! !MODULE: PDynamicsMod
!
! !DESCRIPTION:
! Module for mineral phosphorus dynamics 
! for coupled carbon-nitrogen-phosphorus code.
!
! !USES:
   use shr_kind_mod, only: r8 => shr_kind_r8
   implicit none
   save
   private
! !PUBLIC MEMBER FUNCTIONS:
   public :: PWeathering
   public :: PAdsorption
   public :: PDesorption
   public :: POcclusion
   public :: PBiochemMin
   public :: PLeaching
!
! !REVISION HISTORY:
! 10/26/2011: Xiaojuan Yang
!
!EOP
!-----------------------------------------------------------------------

contains

!-----------------------------------------------------------------------
!BOP
!

subroutine PWeathering(num_soilc, filter_soilc)

!  The release of phosphate P due to the weathering of primary minerals 
!

!  !USES
   use clmtype
   use clm_time_manager, only: get_step_size
   use clm_varcon      , only: secspday
   use soilorder_varcon, only: r_weather

!  !ARGUMENTS
   implicit none
   integer, intent(in) :: num_soilc       ! number of soil columns in filter
   integer, intent(in) :: filter_soilc(:) ! filter for soil columns

!  !CALLED FROM 
!
!  

!  !!REVISION HISTORY:
!  10/26/2011: created by Xiaojuan Yang

!  !LOCAL VARIABLES:
!  local pointers to implicit in scalars
   real(r8), pointer :: primp(:)
   integer, pointer :: isoiorder(:)
   
!  local pointers to implicit out scalars
   real(r8), pointer :: primp_to_labilep(:)


!  !OTHER LOCAL VARIABLES
   integer  :: c,fc 
   real(r8)     :: r_weather_c 
   real(r8)     :: rr
   real(r8):: dt           !decomp timestep (seconds)
   real(r8):: dtd          !decomp timestep (days)

!EOP
!-----------------------------------------------------------------------
   ! Assign local pointers to derived type arrays (in)
   isoiorder         => clm3%g%l%c%cps%isoiorder
   primp             => clm3%g%l%c%cphos%primp
   ! Assign local pointers to derived type arrays (out)
   primp_to_labilep => clm3%g%l%c%cphof%primp_to_labilep

   ! set time steps
   dt = real( get_step_size(), r8 )
   dtd = dt/(30._r8*secspday)
   
   do fc = 1,num_soilc
      c = filter_soilc(fc)

      !! read in monthly rate is converted to that in half hour
      r_weather_c = r_weather( isoiorder(c) )
      rr=-log(1._r8-r_weather_c)
      r_weather_c=1._r8-exp(-rr*dtd)

!      primp_to_labilep(c) = primp(c)*r_weather/dt
      primp_to_labilep(c) = 0.005_r8/(365._r8*24._r8*3600._r8)
!       primp_to_labilep(c) = 0._r8       
   end do

end subroutine PWeathering

   
!-----------------------------------------------------------------------
!BOP
!
subroutine PAdsorption(num_soilc, filter_soilc )

!  The adsorption of labile P in soil solution on secondary minerals 
!

!  !USES
   use clmtype
   use clm_time_manager, only: get_step_size
   use clm_varcon      , only: secspday
   use soilorder_varcon, only: r_adsorp  

!  !ARGUMENTS
   implicit none
   integer, intent(in) :: num_soilc       ! number of soil columns in filter
   integer, intent(in) :: filter_soilc(:) ! filter for soil columns

!  !CALLED FROM 
!

!  !!REVISION HISTORY:
!  10/26/2011: created by Xiaojuan Yang

!  !LOCAL VARIABLES:
!  local pointers to implicit in scalars
   real(r8), pointer :: labilep(:)
   real(r8), pointer :: solutionp(:)
   integer, pointer :: isoiorder(:)
!  local pointers to implicit out scalars
   real(r8), pointer :: labilep_to_secondp(:)

!  !OTHER LOCAL VARIABLES
   integer  :: c,fc 
   real(r8)     :: r_adsorp_c
   real(r8)     :: rr
   real(r8):: dt           !decomp timestep (seconds)
   real(r8):: dtd          !decomp timestep (days)


!EOP
!-----------------------------------------------------------------------

   ! Assign local pointers to derived type arrays (in)
   isoiorder         => clm3%g%l%c%cps%isoiorder
   solutionp   => clm3%g%l%c%cphos%solutionp
   labilep   => clm3%g%l%c%cphos%labilep
 
   ! Assign local pointers to derived type arrays (out)
   labilep_to_secondp => clm3%g%l%c%cphof%labilep_to_secondp
 
   ! set time steps
   dt = real( get_step_size(), r8 )
   dtd = dt/(30._r8*secspday)
    

   do fc = 1,num_soilc
      c = filter_soilc(fc)

        ! calculate rate at half-hour time step
        r_adsorp_c = r_adsorp( isoiorder(c) )
        rr=-log(1._r8-r_adsorp_c)
        r_adsorp_c = 1._r8-exp(-rr*dtd)

        if(labilep(c) > 0._r8)then  
           labilep_to_secondp(c) = ( labilep(c) )*r_adsorp_c/dt 
        else
           labilep_to_secondp(c) = 0._r8
        endif
   end do

end subroutine PAdsorption


!-----------------------------------------------------------------------
!BOP
!
subroutine PDesorption(num_soilc, filter_soilc )

!  The desorption of secondary mineral P to labile P in soil solutioin
!

!  !USES
   use clmtype
   use clm_time_manager, only: get_step_size
   use clm_varcon      , only: secspday
   use soilorder_varcon, only: r_desorp

!  !ARGUMENTS
   implicit none
   integer, intent(in) :: num_soilc       ! number of soil columns in filter
   integer, intent(in) :: filter_soilc(:) ! filter for soil columns

!  !CALLED FROM 
!
!  

!  !!REVISION HISTORY:
!  10/26/2011: created by Xiaojuan Yang

!  !LOCAL VARIABLES:
!  local pointers to implicit in scalars
   real(r8), pointer :: secondp(:)
   integer, pointer :: isoiorder(:)

!  local pointers to implicit out scalars
   real(r8), pointer :: secondp_to_labilep(:)

!  !OTHER LOCAL VARIABLES
   integer  :: c,fc 
   real(r8)     :: r_desorp_c
   real(r8)     :: rr
   real(r8):: dt           !decomp timestep (seconds)
   real(r8):: dtd          !decomp timestep (days)


!EOP
!-----------------------------------------------------------------------
   ! Assign local pointers to derived type arrays (in)
   isoiorder         => clm3%g%l%c%cps%isoiorder
   secondp   => clm3%g%l%c%cphos%secondp
 
   ! Assign local pointers to derived type arrays (out)
   secondp_to_labilep => clm3%g%l%c%cphof%secondp_to_labilep
 
   ! set time steps
   dt = real( get_step_size(), r8 )
   dtd = dt/(30._r8*secspday)
   
    


   do fc = 1,num_soilc
      c = filter_soilc(fc)

        ! calculate rate at half-hour time step
        r_desorp_c = r_desorp( isoiorder(c) )
        rr=-log(1._r8-r_desorp_c)
        r_desorp_c = 1._r8-exp(-rr*dtd)

        if(secondp(c) > 0._r8)then
          secondp_to_labilep(c) = secondp(c)*r_desorp_c/dt 
        else
          secondp_to_labilep(c) = 0._r8
        endif 
   end do

end subroutine PDesorption


!-----------------------------------------------------------------------
!BOP
!
subroutine POcclusion(num_soilc, filter_soilc )

!  The occlusion of secondary mineral P into occluded P
!

!  !USES
   use clmtype
   use clm_time_manager, only: get_step_size
   use clm_varcon      , only: secspday
   use soilorder_varcon       , only: r_occlude

!  !ARGUMENTS
   implicit none
   integer, intent(in) :: num_soilc       ! number of soil columns in filter
   integer, intent(in) :: filter_soilc(:) ! filter for soil columns

!  !CALLED FROM 
!
!  

!  !!REVISION HISTORY:
!  10/26/2011: created by Xiaojuan Yang

!  !LOCAL VARIABLES:
!  local pointers to implicit in scalars
   real(r8), pointer :: secondp(:)
   integer, pointer :: isoiorder(:)
!  local pointers to implicit out scalars
   real(r8), pointer :: secondp_to_occlp(:)

!  !OTHER LOCAL VARIABLES
   integer  :: c,fc 
   real(r8)     :: r_occlude_c
   real(r8)     :: rr
   real(r8):: dt           !decomp timestep (seconds)
   real(r8):: dtd          !decomp timestep (days)


!EOP
!-----------------------------------------------------------------------

   ! Assign local pointers to derived type arrays (in)
   isoiorder         => clm3%g%l%c%cps%isoiorder
   secondp   => clm3%g%l%c%cphos%secondp
 
   ! Assign local pointers to derived type arrays (out)
   secondp_to_occlp => clm3%g%l%c%cphof%secondp_to_occlp
 
   ! set time steps
   dt = real( get_step_size(), r8 )
   dtd = dt/(30._r8*secspday)
   
   do fc = 1,num_soilc
      c = filter_soilc(fc)

        ! calculate rate at half-hour time step
        r_occlude_c = r_occlude( isoiorder(c) )
        rr=-log(1._r8-r_occlude_c)
        r_occlude_c = 1._r8-exp(-rr*dtd)

        if(secondp(c) > 0._r8)then
           secondp_to_occlp(c) = secondp(c)*r_occlude_c/dt
        else
           secondp_to_occlp(c) =0._r8
        endif 
!        secondp_to_occlp(c) = 0.05_r8/(365._r8*24._r8*3600._r8)
!         secondp_to_occlp(c) = 0._r8 
   end do

end subroutine POcclusion

!-----------------------------------------------------------------------
!BOP

subroutine PBiochemMin(num_soilc, filter_soilc)

!  !USES
   use clmtype
   use clm_time_manager    , only : get_step_size
   use clm_varcon      , only: secspday
   use soilorder_varcon       , only: k_s1_biochem,k_s2_biochem,k_s3_biochem,k_s4_biochem


!  !ARGUMENTS
   implicit none
   integer, intent(in) :: num_soilc       ! number of soil columns in filter
   integer, intent(in) :: filter_soilc(:) ! filter for soil columns

!  !!REVISION HISTORY:
!  11/16/2011: created by Xiaojuan Yang

!  !LOCAL VARIABLES:
!  local pointers to implicit in scalars
   integer, pointer :: isoiorder(:)
   real(r8), pointer :: soil1p(:)             ! (gP/m2) soil organic matter P (fast pool)
   real(r8), pointer :: soil2p(:)             ! (gP/m2) soil organic matter P (medium pool)
   real(r8), pointer :: soil3p(:)             ! (gP/m2) soil orgainc matter P (slow pool)
   real(r8), pointer :: soil4p(:)             ! (gP/m2) soil orgainc matter P (slowest pool)
   real(r8), pointer :: fpi(:)                ! fraction of potential N immobilization (no units)
   real(r8), pointer :: fpi_p(:)              ! fraction of potential P immobilization (no units)

!  local pointers to implicit out scalars
   real(r8), pointer :: soil1p_to_sminp_biochem(:)       ! P biochemical mineralization  (gP/m2/s)
   real(r8), pointer :: soil2p_to_sminp_biochem(:)       ! P biochemical mineralization  (gP/m2/s)
   real(r8), pointer :: soil3p_to_sminp_biochem(:)       ! P biochemical mineralization  (gP/m2/s)
   real(r8), pointer :: soil4p_to_sminp_biochem(:)       ! P biochemical mineralization  (gP/m2/s)
   real(r8), pointer :: biochem_pmin(:)                  ! net rate of P biochemical mineralization  (gP/m2/s)

!  !OTHER LOCAL VARIABLES
   integer  :: c,fc
   real(r8) :: rr
   real(r8):: dt           !decomp timestep (seconds)
   real(r8):: dtd          !decomp timestep (days)
   real(r8):: k_s1_biochem_c         !specfic biochemical rate constant SOM 1
   real(r8):: k_s2_biochem_c         !specfic biochemical rate constant SOM 1
   real(r8):: k_s3_biochem_c         !specfic biochemical rate constant SOM 1
   real(r8):: k_s4_biochem_c         !specfic biochemical rate constant SOM 1
   real(r8):: r_bc



!EOP
!-----------------------------------------------------------------------

   ! Assign local pointers to derived type arrays (in)
   isoiorder         => clm3%g%l%c%cps%isoiorder

   soil1p   => clm3%g%l%c%cphos%soil1p
   soil2p   => clm3%g%l%c%cphos%soil2p
   soil3p   => clm3%g%l%c%cphos%soil3p
   soil4p   => clm3%g%l%c%cphos%soil4p

   fpi      => clm3%g%l%c%cps%fpi
   fpi_p    => clm3%g%l%c%cps%fpi_p

   ! Assign local pointers to derived type arrays (out)
   soil1p_to_sminp_biochem  => clm3%g%l%c%cphof%soil1p_to_sminp_biochem
   soil2p_to_sminp_biochem  => clm3%g%l%c%cphof%soil2p_to_sminp_biochem
   soil3p_to_sminp_biochem  => clm3%g%l%c%cphof%soil3p_to_sminp_biochem
   soil4p_to_sminp_biochem  => clm3%g%l%c%cphof%soil4p_to_sminp_biochem

   biochem_pmin             => clm3%g%l%c%cphof%biochem_pmin

   ! set time steps
   dt = real( get_step_size(), r8 )
   dtd = dt/(secspday)
   

   ! set biochemical mineralization rate for P(daily)
!   k_s1_biochem = 0.8_r8
!   k_s2_biochem = 0.8_r8
!   k_s3_biochem = 0.05_r8
!   k_s4_biochem = 0.005_r8

   r_bc = -5._r8  
    
   ! calculate rate at half-hour time step    

   do fc = 1,num_soilc
      c = filter_soilc(fc)

      
      k_s1_biochem_c = k_s1_biochem( isoiorder(c) )
      k_s2_biochem_c = k_s2_biochem( isoiorder(c) )
      k_s3_biochem_c = k_s3_biochem( isoiorder(c) )
      k_s4_biochem_c = k_s4_biochem( isoiorder(c) )
 
      rr=-log(1._r8-k_s1_biochem_c) 
      k_s1_biochem_c = 1-exp(-rr*dtd)

      rr=-log(1-k_s2_biochem_c) 
      k_s2_biochem_c = 1-exp(-rr*dtd)

      rr=-log(1-k_s3_biochem_c) 
      k_s3_biochem_c = 1-exp(-rr*dtd)

      rr=-log(1-k_s4_biochem_c) 
      k_s4_biochem_c = 1-exp(-rr*dtd)

      if(soil1p(c) > 0.)then
        soil1p_to_sminp_biochem(c) = soil1p(c) * k_s1_biochem_c * fpi(c)* (1._r8-exp(r_bc*(1-fpi_p(c)) ) )/dt
      endif
      if(soil2p(c) > 0.)then
        soil2p_to_sminp_biochem(c) = soil2p(c) * k_s2_biochem_c * fpi(c)* (1._r8-exp(r_bc*(1-fpi_p(c)) ) )/dt
      endif
      if(soil3p(c) > 0.)then
        soil3p_to_sminp_biochem(c) = soil3p(c) * k_s3_biochem_c * fpi(c)* (1._r8-exp(r_bc*(1-fpi_p(c)) ) )/dt
      endif
      if(soil4p(c) > 0.)then
        soil4p_to_sminp_biochem(c) = soil4p(c) * k_s4_biochem_c * fpi(c)* (1._r8-exp(r_bc*(1-fpi_p(c)) ) )/dt
      endif
 
 
      biochem_pmin(c) = &
        soil1p_to_sminp_biochem(c)+soil2p_to_sminp_biochem(c)+soil3p_to_sminp_biochem(c)+soil4p_to_sminp_biochem(c) 

   enddo

end subroutine PBiochemMin


!-----------------------------------------------------------------------
!BOP
!
subroutine PLeaching(lbc,ubc,num_soilc, filter_soilc )

!  The leaching of labile P in soil solution on secondary minerals 
!

!  !USES
   use clmtype
   use clm_varpar      , only : nlevsoi
   use clm_time_manager, only: get_step_size
   use clm_varcon      , only: secspday

!  !ARGUMENTS
   implicit none
   integer, intent(in) :: lbc, ubc        ! column bounds
   integer, intent(in) :: num_soilc       ! number of soil columns in filter
   integer, intent(in) :: filter_soilc(:) ! filter for soil columns

!  !CALLED FROM 
!
!  

!  !!REVISION HISTORY:
!  10/26/2011: created by Xiaojuan Yang

!  !LOCAL VARIABLES:
!  local pointers to implicit in scalars
   real(r8), pointer :: h2osoi_liq(:,:)  ! liquid water (kg/m2) (new) (-nlevsno+1:nlevgrnd)
   real(r8), pointer :: qflx_drain(:)    ! sub-surface runoff (mm H2O /s)
   real(r8), pointer :: solutionp(:)
!  local pointers to implicit out scalars
   real(r8), pointer :: sminp_leached(:)

!  !OTHER LOCAL VARIABLES

   integer  :: j,c,fc             ! indices
   real(r8) :: dt                 ! radiation time step (seconds)
   real(r8) :: tot_water(lbc:ubc) ! total column liquid water (kg water/m2)
   real(r8) :: disp_conc          ! dissolved mineral N concentration
                                  ! (gN/kg water)


!EOP
!-----------------------------------------------------------------------

   ! Assign local pointers to derived type arrays (in)
   h2osoi_liq    => clm3%g%l%c%cws%h2osoi_liq
   qflx_drain    => clm3%g%l%c%cwf%qflx_drain
   solutionp         => clm3%g%l%c%cphos%solutionp

   ! Assign local pointers to derived type arrays (out)
   sminp_leached => clm3%g%l%c%cphof%sminp_leached

   ! set time steps
   dt = real( get_step_size(), r8 )


   ! calculate the total soil water
   !question_yang: why consider soil water through all soil layers???
   tot_water(lbc:ubc) = 0._r8
   do j = 1,nlevsoi
      do fc = 1,num_soilc
         c = filter_soilc(fc)
         tot_water(c) = tot_water(c) + h2osoi_liq(c,j)
      end do
   end do


   ! Loop through columns
   do fc = 1,num_soilc
      c = filter_soilc(fc)
      
      ! calculate the dissolved mineral N concentration (gN/kg water)
      ! assumes that 10% of mineral nitrogen is soluble
      disp_conc = 0._r8
      if (tot_water(c) > 0._r8) then
         disp_conc = (solutionp(c))/tot_water(c)
      end if
      
      ! calculate the N leaching flux as a function of the dissolved
      ! concentration and the sub-surface drainage flux
      sminp_leached(c) = disp_conc * qflx_drain(c)
      
      ! limit the flux based on current sminn state
      ! only let at most the assumed soluble fraction
      ! of sminn be leached on any given timestep
      sminp_leached(c) = min(sminp_leached(c), (solutionp(c))/dt)
      
      ! limit the flux to a positive value
      sminp_leached(c) = max(sminp_leached(c), 0._r8)

      !! testing for spinup run

!      sminp_leached(c) = 0._r8
   
   end do

end subroutine PLeaching


end module PDynamicsMod
