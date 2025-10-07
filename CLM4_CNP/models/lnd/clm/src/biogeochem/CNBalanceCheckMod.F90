
module CNBalanceCheckMod
#ifdef CN

!-----------------------------------------------------------------------
!BOP
!
! !MODULE: CNBalanceCheckMod
!
! !DESCRIPTION:
! Module for carbon mass balance checking.
!
! !USES:
    use abortutils  , only: endrun
    use shr_kind_mod, only: r8 => shr_kind_r8
    use clm_varctl  , only: iulog
    implicit none
    save
    private
! !PUBLIC MEMBER FUNCTIONS:
    public :: BeginCBalance
    public :: BeginNBalance
    public :: CBalanceCheck
    public :: NBalanceCheck
    public :: BeginPBalance
    public :: PBalanceCheck
!
! !REVISION HISTORY:
! 4/23/2004: Created by Peter Thornton
!
!EOP
!-----------------------------------------------------------------------

contains

!-----------------------------------------------------------------------
!BOP
!
! !IROUTINE: BeginCBalance
!
! !INTERFACE:
subroutine BeginCBalance(lbc, ubc, num_soilc, filter_soilc)
!
! !DESCRIPTION:
! On the radiation time step, calculate the beginning carbon balance for mass
! conservation checks.
!
! !USES:
   use clmtype
!
! !ARGUMENTS:
   implicit none
   integer, intent(in) :: lbc, ubc        ! column bounds
   integer, intent(in) :: num_soilc       ! number of soil columns filter
   integer, intent(in) :: filter_soilc(ubc-lbc+1) ! filter for soil columns
!
! !CALLED FROM:
! subroutine clm_driver1
!
! !REVISION HISTORY:
! 2/4/05: Created by Peter Thornton
!
! !LOCAL VARIABLES:
! local pointers to implicit in arrays
   real(r8), pointer :: totcolc(:)            ! (gC/m2) total column carbon, incl veg and cpool
!
! local pointers to implicit out arrays
   real(r8), pointer :: col_begcb(:)   ! carbon mass, beginning of time step (gC/m**2)
!
! !OTHER LOCAL VARIABLES:
   integer :: c     ! indices
   integer :: fc   ! lake filter indices
!
!EOP
!-----------------------------------------------------------------------
   ! assign local pointers at the column level
   col_begcb                      => clm3%g%l%c%ccbal%begcb
   totcolc                        => clm3%g%l%c%ccs%totcolc

   ! column loop
   do fc = 1,num_soilc
      c = filter_soilc(fc)
 
      ! calculate beginning column-level carbon balance,
      ! for mass conservation check
 
      col_begcb(c) = totcolc(c)

   end do ! end of columns loop
 

end subroutine BeginCBalance
!-----------------------------------------------------------------------

!-----------------------------------------------------------------------
!BOP
!
! !IROUTINE: BeginNBalance
!
! !INTERFACE:
subroutine BeginNBalance(lbc, ubc, num_soilc, filter_soilc)
!
! !DESCRIPTION:
! On the radiation time step, calculate the beginning nitrogen balance for mass
! conservation checks.
!
! !USES:
   use clmtype
!
! !ARGUMENTS:
   implicit none
   integer, intent(in) :: lbc, ubc        ! column bounds
   integer, intent(in) :: num_soilc       ! number of soil columns filter
   integer, intent(in) :: filter_soilc(ubc-lbc+1) ! filter for soil columns
!
! !CALLED FROM:
! subroutine clm_driver1
!
! !REVISION HISTORY:
! 2/4/05: Created by Peter Thornton
!
! !LOCAL VARIABLES:
! local pointers to implicit in arrays
   real(r8), pointer :: totcoln(:)            ! (gN/m2) total column nitrogen, incl veg
!
! local pointers to implicit out arrays
   real(r8), pointer :: col_begnb(:)   ! nitrogen mass, beginning of time step (gN/m**2)
!
! !OTHER LOCAL VARIABLES:
   integer :: c     ! indices
   integer :: fc   ! lake filter indices
!
!EOP
!-----------------------------------------------------------------------
   ! assign local pointers at the column level
   col_begnb                      => clm3%g%l%c%cnbal%begnb
   totcoln                        => clm3%g%l%c%cns%totcoln

   ! column loop
   do fc = 1,num_soilc
      c = filter_soilc(fc)
 
      ! calculate beginning column-level nitrogen balance,
      ! for mass conservation check
 
      col_begnb(c) = totcoln(c)

   end do ! end of columns loop
 
end subroutine BeginNBalance
!-----------------------------------------------------------------------


!-----------------------------------------------------------------------
!BOP
!
! !IROUTINE: BeginPBalance
!
! !INTERFACE:
subroutine BeginPBalance(lbc, ubc, num_soilc, filter_soilc)
!
! !DESCRIPTION:
! On the radiation time step, calculate the beginning phosphorus balance for mass
! conservation checks.
!
! !USES:
   use clmtype
!
! !ARGUMENTS:
   implicit none
   integer, intent(in) :: lbc, ubc        ! column bounds
   integer, intent(in) :: num_soilc       ! number of soil columns filter
   integer, intent(in) :: filter_soilc(ubc-lbc+1) ! filter for soil columns
!
! !CALLED FROM:
! subroutine clm_driver1
!
! !REVISION HISTORY:
! 07/06/2012: X. YANG
!
! !LOCAL VARIABLES:
! local pointers to implicit in arrays
   real(r8), pointer :: totcolp(:)            ! (gP/m2) total column phosphorus, incl veg
   real(r8), pointer :: totlitp(:)            ! (gP/m2) total column phosphorus, incl veg
   real(r8), pointer :: totsomp(:)            ! (gP/m2) total column phosphorus, incl veg
   real(r8), pointer :: totprodp(:)            ! (gP/m2) total column phosphorus, incl veg
   real(r8), pointer :: col_totpftp(:)            ! (gP/m2) total column phosphorus, incl veg
!
! local pointers to implicit out arrays
   real(r8), pointer :: col_begpb(:)   ! phosphorus mass, beginning of time step (gP/m**2)
!
! !OTHER LOCAL VARIABLES:
   integer :: c     ! indices
   integer :: fc   ! lake filter indices
!
!EOP
!-----------------------------------------------------------------------
   ! assign local pointers at the column level
   col_begpb                      => clm3%g%l%c%cphobal%begpb
   totcolp                        => clm3%g%l%c%cphos%totcolp
   totlitp                        => clm3%g%l%c%cphos%totlitp
   totsomp                        => clm3%g%l%c%cphos%totsomp
   totprodp                        => clm3%g%l%c%cphos%totprodp
   col_totpftp                       => clm3%g%l%c%cphos%pphos_a%totpftp

   ! column loop
   do fc = 1,num_soilc
      c = filter_soilc(fc)
 
      ! calculate beginning column-level phosphorus balance,
      ! for mass conservation check
 
      col_begpb(c) = totcolp(c)

   end do ! end of columns loop
 
end subroutine BeginPBalance
!-----------------------------------------------------------------------

!-----------------------------------------------------------------------
!BOP
!
! !IROUTINE: CBalanceCheck
!
! !INTERFACE:
subroutine CBalanceCheck(lbc, ubc, num_soilc, filter_soilc)
!
! !DESCRIPTION:
! On the radiation time step, perform carbon mass conservation check for column and pft
!
! !USES:
   use clmtype
   use clm_time_manager, only: get_step_size
!
! !ARGUMENTS:
   implicit none
   integer, intent(in) :: lbc, ubc        ! column bounds
   integer, intent(in) :: num_soilc       ! number of soil columns in filter
   integer, intent(in) :: filter_soilc(ubc-lbc+1) ! filter for soil columns
!
! !CALLED FROM:
! subroutine clm_driver1
!
! !REVISION HISTORY:
! 12/9/03: Created by Peter Thornton
!
! !LOCAL VARIABLES:
!
! local pointers to implicit in arrays
   real(r8), pointer :: totcolc(:)            ! (gC/m2) total column carbon, incl veg and cpool
   real(r8), pointer :: gpp(:)            ! (gC/m2/s) gross primary production 
   real(r8), pointer :: er(:)            ! (gC/m2/s) total ecosystem respiration, autotrophic + heterotrophic
   real(r8), pointer :: col_fire_closs(:) ! (gC/m2/s) total column-level fire C loss
   real(r8), pointer :: col_hrv_xsmrpool_to_atm(:)  ! excess MR pool harvest mortality (gC/m2/s)
   real(r8), pointer :: dwt_closs(:)              ! (gC/m2/s) total carbon loss from product pools and conversion
   real(r8), pointer :: product_closs(:)      ! (gC/m2/s) total wood product carbon loss
!
! local pointers to implicit out arrays
   real(r8), pointer :: col_cinputs(:)  ! (gC/m2/s) total column-level carbon inputs (for balance check)
   real(r8), pointer :: col_coutputs(:) ! (gC/m2/s) total column-level carbon outputs (for balance check)
   real(r8), pointer :: col_begcb(:)    ! carbon mass, beginning of time step (gC/m**2)
   real(r8), pointer :: col_endcb(:)    ! carbon mass, end of time step (gC/m**2)
   real(r8), pointer :: col_errcb(:)    ! carbon balance error for the timestep (gC/m**2)
!
! !OTHER LOCAL VARIABLES:
   integer :: c,err_index  ! indices
   integer :: fc          ! lake filter indices
   logical :: err_found      ! error flag
   real(r8):: dt             ! radiation time step (seconds)
!EOP
!-----------------------------------------------------------------------

    ! assign local pointers to column-level arrays
	totcolc                        => clm3%g%l%c%ccs%totcolc
	gpp                            => clm3%g%l%c%ccf%pcf_a%gpp
	er                             => clm3%g%l%c%ccf%er
	col_fire_closs                 => clm3%g%l%c%ccf%col_fire_closs
	col_hrv_xsmrpool_to_atm        => clm3%g%l%c%ccf%pcf_a%hrv_xsmrpool_to_atm
	dwt_closs                      => clm3%g%l%c%ccf%dwt_closs
	product_closs                  => clm3%g%l%c%ccf%product_closs
	
    col_cinputs                    => clm3%g%l%c%ccf%col_cinputs
    col_coutputs                   => clm3%g%l%c%ccf%col_coutputs
    col_begcb                      => clm3%g%l%c%ccbal%begcb
    col_endcb                      => clm3%g%l%c%ccbal%endcb
    col_errcb                      => clm3%g%l%c%ccbal%errcb

   ! set time steps
   dt = real( get_step_size(), r8 )

   err_found = .false.
   ! column loop
   do fc = 1,num_soilc
      c = filter_soilc(fc)

      ! calculate the total column-level carbon storage, for mass conservation check

      col_endcb(c) = totcolc(c)

      ! calculate total column-level inputs
	  
	  col_cinputs(c) = gpp(c)
	  
      ! calculate total column-level outputs
	  ! er = ar + hr, col_fire_closs includes pft-level fire losses

      col_coutputs(c) = er(c) + col_fire_closs(c) + dwt_closs(c) + product_closs(c) + col_hrv_xsmrpool_to_atm(c)

      ! calculate the total column-level carbon balance error for this time step

      col_errcb(c) = (col_cinputs(c) - col_coutputs(c))*dt - &
         (col_endcb(c) - col_begcb(c))

      ! check for significant errors
      if (abs(col_errcb(c)) > 1e-8_r8) then
         err_found = .true.
         err_index = c
      end if
      
   end do ! end of columns loop

   if (err_found) then
      c = err_index
      write(iulog,*)'column cbalance error = ', col_errcb(c), c
      write(iulog,*)'begcb       = ',col_begcb(c)
      write(iulog,*)'endcb       = ',col_endcb(c)
      write(iulog,*)'delta store = ',col_endcb(c)-col_begcb(c)
      write(iulog,*)'input mass  = ',col_cinputs(c)*dt
      write(iulog,*)'output mass = ',col_coutputs(c)*dt
      write(iulog,*)'net flux    = ',(col_cinputs(c)-col_coutputs(c))*dt
      write(iulog,*)'nee         = ',clm3%g%l%c%ccf%nee(c) * dt
      write(iulog,*)'gpp         = ',gpp(c) * dt
      write(iulog,*)'er          = ',er(c) * dt
      write(iulog,*)'col_fire_closs         = ',col_fire_closs(c) * dt
      write(iulog,*)'col_hrv_xsmrpool_to_atm = ',col_hrv_xsmrpool_to_atm(c) * dt
      write(iulog,*)'dwt_closs         = ',dwt_closs(c) * dt
      write(iulog,*)'product_closs         = ',product_closs(c) * dt
      call endrun
   end if


end subroutine CBalanceCheck
!-----------------------------------------------------------------------

!-----------------------------------------------------------------------
!BOP
!
! !IROUTINE: NBalanceCheck
!
! !INTERFACE:
subroutine NBalanceCheck(lbc, ubc, num_soilc, filter_soilc)
!
! !DESCRIPTION:
! On the radiation time step, perform nitrogen mass conservation check
! for column and pft
!
! !USES:
   use clmtype
   use clm_time_manager, only: get_step_size
!
! !ARGUMENTS:
   implicit none
   integer, intent(in) :: lbc, ubc        ! column bounds
   integer, intent(in) :: num_soilc       ! number of soil columns in filter
   integer, intent(in) :: filter_soilc(ubc-lbc+1) ! filter for soil columns
!
! !CALLED FROM:
! subroutine clm_driver1
!
! !REVISION HISTORY:
! 12/9/03: Created by Peter Thornton
!
! !LOCAL VARIABLES:
!
! local pointers to implicit in arrays
   real(r8), pointer :: totcoln(:)               ! (gN/m2) total column nitrogen, incl veg
   real(r8), pointer :: ndep_to_sminn(:)         ! atmospheric N deposition to soil mineral N (gN/m2/s)
   real(r8), pointer :: nfix_to_sminn(:)         ! symbiotic/asymbiotic N fixation to soil mineral N (gN/m2/s) 
   real(r8), pointer :: supplement_to_sminn(:)   ! supplemental N supply (gN/m2/s)
   real(r8), pointer :: denit(:)                 ! total rate of denitrification (gN/m2/s)
   real(r8), pointer :: sminn_leached(:)         ! soil mineral N pool loss to leaching (gN/m2/s)
   real(r8), pointer :: col_fire_nloss(:)        ! total column-level fire N loss (gN/m2/s)
   real(r8), pointer :: dwt_nloss(:)              ! (gN/m2/s) total nitrogen loss from product pools and conversion
   real(r8), pointer :: product_nloss(:)          ! (gN/m2/s) total wood product nitrogen loss
!
! local pointers to implicit in/out arrays
!
! local pointers to implicit out arrays
   real(r8), pointer :: col_ninputs(:)           ! column-level N inputs (gN/m2/s)
   real(r8), pointer :: col_noutputs(:)          ! column-level N outputs (gN/m2/s)
   real(r8), pointer :: col_begnb(:)             ! nitrogen mass, beginning of time step (gN/m**2)
   real(r8), pointer :: col_endnb(:)             ! nitrogen mass, end of time step (gN/m**2)
   real(r8), pointer :: col_errnb(:)             ! nitrogen balance error for the timestep (gN/m**2)
!
! !OTHER LOCAL VARIABLES:
   integer :: c,err_index    ! indices
   integer :: fc             ! lake filter indices
   logical :: err_found      ! error flag
   real(r8):: dt             ! radiation time step (seconds)
!EOP
!-----------------------------------------------------------------------
    ! assign local pointers to column-level arrays

    totcoln                        => clm3%g%l%c%cns%totcoln
	ndep_to_sminn                  => clm3%g%l%c%cnf%ndep_to_sminn
    nfix_to_sminn                  => clm3%g%l%c%cnf%nfix_to_sminn
    supplement_to_sminn            => clm3%g%l%c%cnf%supplement_to_sminn
    denit                          => clm3%g%l%c%cnf%denit
    sminn_leached                  => clm3%g%l%c%cnf%sminn_leached
    col_fire_nloss                 => clm3%g%l%c%cnf%col_fire_nloss
    dwt_nloss                      => clm3%g%l%c%cnf%dwt_nloss
    product_nloss                  => clm3%g%l%c%cnf%product_nloss

    col_ninputs                    => clm3%g%l%c%cnf%col_ninputs
    col_noutputs                   => clm3%g%l%c%cnf%col_noutputs
    col_begnb                      => clm3%g%l%c%cnbal%begnb
    col_endnb                      => clm3%g%l%c%cnbal%endnb
    col_errnb                      => clm3%g%l%c%cnbal%errnb

   ! set time steps
   dt = real( get_step_size(), r8 )

   err_found = .false.
   ! column loop
   do fc = 1,num_soilc
      c=filter_soilc(fc)

      ! calculate the total column-level nitrogen storage, for mass conservation check

      col_endnb(c) = totcoln(c)

      ! calculate total column-level inputs

      col_ninputs(c) = ndep_to_sminn(c) + nfix_to_sminn(c) + supplement_to_sminn(c)

      ! calculate total column-level outputs

      col_noutputs(c) = denit(c) + sminn_leached(c) + col_fire_nloss(c) + dwt_nloss(c) + product_nloss(c)

      ! calculate the total column-level nitrogen balance error for this time step

      col_errnb(c) = (col_ninputs(c) - col_noutputs(c))*dt - &
         (col_endnb(c) - col_begnb(c))

!      print*,'column nbalance error = ', col_errnb(c), c
!      print*,'begnb       = ',col_begnb(c)
!      print*,'endnb       = ',col_endnb(c)
!      print*,'delta store = ',col_endnb(c)-col_begnb(c)
!      print*,'input mass  = ',col_ninputs(c)*dt
!      print*,'output mass = ',col_noutputs(c)*dt
!      print*,'net flux    = ',(col_ninputs(c)-col_noutputs(c))*dt 
  

      if (abs(col_errnb(c)) > 1e-8_r8) then
         err_found = .true.
         err_index = c
      end if

   end do ! end of columns loop
   if (err_found) then
      c = err_index
      write(iulog,*)'column nbalance error = ', col_errnb(c), c
      write(iulog,*)'begnb       = ',col_begnb(c)
      write(iulog,*)'endnb       = ',col_endnb(c)
      write(iulog,*)'delta store = ',col_endnb(c)-col_begnb(c)
      write(iulog,*)'input mass  = ',col_ninputs(c)*dt
      write(iulog,*)'output mass = ',col_noutputs(c)*dt
      write(iulog,*)'net flux    = ',(col_ninputs(c)-col_noutputs(c))*dt
      call endrun
   end if

end subroutine NBalanceCheck
!-----------------------------------------------------------------------


!-----------------------------------------------------------------------
!BOP
!
! !IROUTINE: PBalanceCheck
!
! !INTERFACE:
subroutine PBalanceCheck(lbc, ubc, num_soilc, filter_soilc)
!
! !DESCRIPTION:
! On the radiation time step, perform phosphorus mass conservation check
! for column and pft
!
! !USES:
   use clmtype
   use clm_time_manager, only: get_step_size
!
! !ARGUMENTS:
   implicit none
   integer, intent(in) :: lbc, ubc        ! column bounds
   integer, intent(in) :: num_soilc       ! number of soil columns in filter
   integer, intent(in) :: filter_soilc(ubc-lbc+1) ! filter for soil columns
!
! !CALLED FROM:
! subroutine clm_driver1
!
! !REVISION HISTORY:
! 07/06/12: Created by X. YANG
!
! !LOCAL VARIABLES:
!
! local pointers to implicit in arrays
   real(r8), pointer :: totcolp(:)               ! (gP/m2) total column phosphorus, incl veg
   real(r8), pointer :: totlitp(:)               ! (gP/m2) total column phosphorus, incl veg
   real(r8), pointer :: totsomp(:)               ! (gP/m2) total column phosphorus, incl veg
   real(r8), pointer :: totprodp(:)               ! (gP/m2) total column phosphorus, incl veg
   real(r8), pointer :: col_totpftp(:)               ! (gP/m2) total column phosphorus, incl veg
   real(r8), pointer :: primp_to_labilep(:)         ! P input from weathering (gP/m2/s)
   real(r8), pointer :: supplement_to_sminp(:)   ! supplemental P supply (gP/m2/s)
   real(r8), pointer :: secondp_to_occlp(:)      ! P loss to occluded pool (gP/m2/s)
   real(r8), pointer :: sminp_leached(:)         ! soil mineral P loss to leaching (gP/m2/s)
   real(r8), pointer :: col_fire_ploss(:)        ! total column-level fire P loss (gP/m2/s)
   real(r8), pointer :: dwt_ploss(:)              ! (gP/m2/s) total nitrogen loss from product pools and conversion
   real(r8), pointer :: product_ploss(:)          ! (gP/m2/s) total wood product nitrogen loss
!
! local pointers to implicit in/out arrays
!
! local pointers to implicit out arrays
   real(r8), pointer :: col_pinputs(:)           ! column-level P inputs (gP/m2/s)
   real(r8), pointer :: col_poutputs(:)          ! column-level P outputs (gP/m2/s)
   real(r8), pointer :: col_begpb(:)             ! phosphorus mass, beginning of time step (gP/m**2)
   real(r8), pointer :: col_endpb(:)             ! phosphorus mass, end of time step (gP/m**2)
   real(r8), pointer :: col_errpb(:)             ! phosphorus balance error for the timestep (gP/m**2)
!
! !OTHER LOCAL VARIABLES:
   integer :: c,err_index    ! indices
   integer :: fc             ! lake filter indices
   logical :: err_found      ! error flag
   real(r8):: dt             ! radiation time step (seconds)
!EOP
!-----------------------------------------------------------------------
    ! assign local pointers to column-level arrays

    totcolp                        => clm3%g%l%c%cphos%totcolp
    totlitp                        => clm3%g%l%c%cphos%totlitp
    totsomp                        => clm3%g%l%c%cphos%totsomp
    totprodp                        => clm3%g%l%c%cphos%totprodp
    col_totpftp                        => clm3%g%l%c%cphos%pphos_a%totpftp
    primp_to_labilep               => clm3%g%l%c%cphof%primp_to_labilep
    supplement_to_sminp            => clm3%g%l%c%cphof%supplement_to_sminp
    secondp_to_occlp               => clm3%g%l%c%cphof%secondp_to_occlp
    sminp_leached                  => clm3%g%l%c%cphof%sminp_leached
    col_fire_ploss                 => clm3%g%l%c%cphof%col_fire_ploss
    dwt_ploss                      => clm3%g%l%c%cphof%dwt_ploss
    product_ploss                  => clm3%g%l%c%cphof%product_ploss

    col_pinputs                    => clm3%g%l%c%cphof%col_pinputs
    col_poutputs                   => clm3%g%l%c%cphof%col_poutputs
    col_begpb                      => clm3%g%l%c%cphobal%begpb
    col_endpb                      => clm3%g%l%c%cphobal%endpb
    col_errpb                      => clm3%g%l%c%cphobal%errpb

   ! set time steps
   dt = real( get_step_size(), r8 )

   err_found = .false.
   ! column loop
   do fc = 1,num_soilc
      c=filter_soilc(fc)

      ! calculate the total column-level phosphorus storage, for mass conservation check

      col_endpb(c) = totcolp(c)

      ! calculate total column-level inputs

      col_pinputs(c) = primp_to_labilep(c) + supplement_to_sminp(c)

      ! calculate total column-level outputs

      col_poutputs(c) = secondp_to_occlp(c) + sminp_leached(c) + col_fire_ploss(c) + dwt_ploss(c) + product_ploss(c)

      ! calculate the total column-level nitrogen balance error for this time step

      col_errpb(c) = (col_pinputs(c) - col_poutputs(c))*dt - &
         (col_endpb(c) - col_begpb(c))

      if (abs(col_errpb(c)) > 1e-8_r8) then
         err_found = .true.
         err_index = c
      end if

   end do ! end of columns loop

!      print*,'column pbalance error = ', col_errpb(c), c
!      print*,'begpb       = ',col_begpb(c)
!      print*,'endpb       = ',col_endpb(c)
!      print*,'delta store = ',col_endpb(c)-col_begpb(c)
!      print*,'input mass  = ',col_pinputs(c)*dt
!      print*,'output mass = ',col_poutputs(c)*dt
!      print*,'net flux    = ',(col_pinputs(c)-col_poutputs(c))*dt
   

!   print*, " CHECK P BALANCE" 
   if (err_found) then
      c = err_index
      write(iulog,*)'column pbalance error = ', col_errpb(c), c
      write(iulog,*)'begpb       = ',col_begpb(c)
      write(iulog,*)'endpb       = ',col_endpb(c)
      write(iulog,*)'delta store = ',col_endpb(c)-col_begpb(c)
      write(iulog,*)'input mass  = ',col_pinputs(c)*dt
      write(iulog,*)'output mass = ',col_poutputs(c)*dt
      write(iulog,*)'net flux    = ',(col_pinputs(c)-col_poutputs(c))*dt
      call endrun
   end if

end subroutine PBalanceCheck
!-----------------------------------------------------------------------
#endif

end module CNBalanceCheckMod
