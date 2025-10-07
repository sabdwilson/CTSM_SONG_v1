module CNSetValueMod

#if (defined CN)

!-----------------------------------------------------------------------
!BOP
!
! !MODULE: CNSetValueMod
!
! !DESCRIPTION:
! contains code to set all CN variables to specified value
! Used for both initialization of special landunit values, and
! setting fluxes to 0.0 at the beginning of each time step
! 3/23/09, Peter Thornton: Added new subroutine, CNZeroFluxes_dwt(), 
!     which initialize flux variables used in the pftdyn
!     routines. This is called from clm_driver1, as
!     these variables need to be initialized outside of the clumps loop.
!
! !USES:
    use shr_kind_mod, only: r8 => shr_kind_r8
    use clm_varpar  , only: nlevgrnd
    use clm_varctl  , only: iulog
    use clmtype
    implicit none
    save
    private
! !PUBLIC MEMBER FUNCTIONS:
    public :: CNZeroFluxes
    public :: CNZeroFluxes_dwt
    public :: CNSetPps
    public :: CNSetPepv
    public :: CNSetPcs
    public :: CNSetPns
    public :: CNSetPcf
    public :: CNSetPnf
    public :: CNSetCps
    public :: CNSetCcs
    public :: CNSetCns
    public :: CNSetCcf
    public :: CNSetCnf

!! add phosphorus 
    public :: CNSetPphos
    public :: CNSetPphof
    public :: CNSetCphos
    public :: CNSetCphof

! !PRIVATE MEMBER FUNCTIONS:
!
! !REVISION HISTORY:
! 9/04/03: Created by Peter Thornton
!
!EOP
!-----------------------------------------------------------------------

contains

!-----------------------------------------------------------------------
!BOP
!
! !IROUTINE: CNZeroFluxes
!
! !INTERFACE:
subroutine CNZeroFluxes(num_filterc, filterc, num_filterp, filterp)
!
! !DESCRIPTION:
!
! !USES:
!
! !ARGUMENTS:
    implicit none
    integer, intent(in) :: num_filterc ! number of good values in filterc
    integer, intent(in) :: filterc(:)  ! column filter
    integer, intent(in) :: num_filterp ! number of good values in filterp
    integer, intent(in) :: filterp(:)  ! pft filter
!
! !CALLED FROM:
! subroutine CNEcosystemDyn in module CNEcosystemDynMod.F90
!
! !REVISION HISTORY:
! 9/04/03: Created by Peter Thornton
!
! !LOCAL VARIABLES:
! local pointers to implicit in scalars
!
!
! local pointers to implicit in/out scalars
!
!
! local pointers to implicit out scalars
!
!
! !OTHER LOCAL VARIABLES:
!EOP
!-----------------------------------------------------------------------

    ! zero the column-level C and N fluxes
    call CNSetCcf(num_filterc, filterc, 0._r8, clm3%g%l%c%ccf)
#if (defined C13)
    call CNSetCcf(num_filterc, filterc, 0._r8, clm3%g%l%c%cc13f)
#endif
    call CNSetCnf(num_filterc, filterc, 0._r8, clm3%g%l%c%cnf)
!! add phosphorus
    call CNSetCphof(num_filterc, filterc, 0._r8, clm3%g%l%c%cphof)


    ! zero the column-average pft-level C and N fluxes
    call CNSetPcf(num_filterc, filterc, 0._r8, clm3%g%l%c%ccf%pcf_a)
    call CNSetPnf(num_filterc, filterc, 0._r8, clm3%g%l%c%cnf%pnf_a)
!! add phosphorus
    call CNSetPphof(num_filterc, filterc, 0._r8, clm3%g%l%c%cphof%pphof_a)

    ! zero the pft-level C and N fluxes
    call CNSetPcf(num_filterp, filterp, 0._r8, clm3%g%l%c%p%pcf)
#if (defined C13)
    call CNSetPcf(num_filterp, filterp, 0._r8, clm3%g%l%c%p%pc13f)
#endif
    call CNSetPnf(num_filterp, filterp, 0._r8, clm3%g%l%c%p%pnf)
!! add phosphorus
    call CNSetPphof(num_filterp, filterp, 0._r8, clm3%g%l%c%p%pphof)

end subroutine CNZeroFluxes
!-----------------------------------------------------------------------

!-----------------------------------------------------------------------
!BOP
!
! !IROUTINE: CNZeroFluxes_dwt
!
! !INTERFACE:
subroutine CNZeroFluxes_dwt( begc, endc, begp, endp )
!
! !DESCRIPTION:
!
! !USES:
!
! !ARGUMENTS:
    implicit none
    integer, intent(IN)  :: begc, endc    ! proc beginning and ending column indices
    integer, intent(IN)  :: begp, endp    ! proc beginning and ending pft indices
!
! !CALLED FROM:
! subroutine clm_driver1
!
! !REVISION HISTORY:
! 3/23/09: Created by Peter Thornton
!
! !LOCAL VARIABLES:
! local pointers to implicit in scalars
!
!
! local pointers to implicit in/out scalars
!
!
! local pointers to implicit out scalars
!
!
! !OTHER LOCAL VARIABLES:
    integer  :: c, p          ! indices
    type(column_type),   pointer :: cptr         ! pointer to column derived subtype
!EOP
!-----------------------------------------------------------------------

    cptr => clm3%g%l%c
    ! set column-level conversion and product pool fluxes
    ! to 0 at the beginning of every timestep

    do c = begc,endc
       ! C fluxes
       cptr%ccf%dwt_seedc_to_leaf(c) = 0._r8
       cptr%ccf%dwt_seedc_to_deadstem(c) = 0._r8
       cptr%ccf%dwt_conv_cflux(c) = 0._r8
       cptr%ccf%dwt_prod10c_gain(c) = 0._r8
       cptr%ccf%dwt_prod100c_gain(c) = 0._r8
       cptr%ccf%dwt_frootc_to_litr1c(c) = 0._r8
       cptr%ccf%dwt_frootc_to_litr2c(c) = 0._r8
       cptr%ccf%dwt_frootc_to_litr3c(c) = 0._r8
       cptr%ccf%dwt_livecrootc_to_cwdc(c) = 0._r8
       cptr%ccf%dwt_deadcrootc_to_cwdc(c) = 0._r8
#if (defined C13)
       ! C13 fluxes
       cptr%cc13f%dwt_seedc_to_leaf(c) = 0._r8
       cptr%cc13f%dwt_seedc_to_deadstem(c) = 0._r8
       cptr%cc13f%dwt_conv_cflux(c) = 0._r8
       cptr%cc13f%dwt_prod10c_gain(c) = 0._r8
       cptr%cc13f%dwt_prod100c_gain(c) = 0._r8
       cptr%cc13f%dwt_frootc_to_litr1c(c) = 0._r8
       cptr%cc13f%dwt_frootc_to_litr2c(c) = 0._r8
       cptr%cc13f%dwt_frootc_to_litr3c(c) = 0._r8
       cptr%cc13f%dwt_livecrootc_to_cwdc(c) = 0._r8
       cptr%cc13f%dwt_deadcrootc_to_cwdc(c) = 0._r8
#endif
       ! N fluxes
       cptr%cnf%dwt_seedn_to_leaf(c) = 0._r8
       cptr%cnf%dwt_seedn_to_deadstem(c) = 0._r8
       cptr%cnf%dwt_conv_nflux(c) = 0._r8
       cptr%cnf%dwt_prod10n_gain(c) = 0._r8
       cptr%cnf%dwt_prod100n_gain(c) = 0._r8
       cptr%cnf%dwt_frootn_to_litr1n(c) = 0._r8
       cptr%cnf%dwt_frootn_to_litr2n(c) = 0._r8
       cptr%cnf%dwt_frootn_to_litr3n(c) = 0._r8
       cptr%cnf%dwt_livecrootn_to_cwdn(c) = 0._r8
       cptr%cnf%dwt_deadcrootn_to_cwdn(c) = 0._r8

       ! P fluxes ; Add phosphorus
       cptr%cphof%dwt_seedp_to_leaf(c) = 0._r8
       cptr%cphof%dwt_seedp_to_deadstem(c) = 0._r8
       cptr%cphof%dwt_conv_pflux(c) = 0._r8
       cptr%cphof%dwt_prod10p_gain(c) = 0._r8
       cptr%cphof%dwt_prod100p_gain(c) = 0._r8
       cptr%cphof%dwt_frootp_to_litr1p(c) = 0._r8
       cptr%cphof%dwt_frootp_to_litr2p(c) = 0._r8
       cptr%cphof%dwt_frootp_to_litr3p(c) = 0._r8
       cptr%cphof%dwt_livecrootp_to_cwdp(c) = 0._r8
       cptr%cphof%dwt_deadcrootp_to_cwdp(c) = 0._r8


    end do
#if (defined CN)
    do p = begp,endp
       cptr%p%pcs%dispvegc(p)   = 0._r8
       cptr%p%pcs%storvegc(p)   = 0._r8
       cptr%p%pcs%totpftc(p)    = 0._r8
#if (defined C13)
       cptr%p%pc13s%dispvegc(p) = 0._r8
       cptr%p%pc13s%storvegc(p) = 0._r8
       cptr%p%pc13s%totpftc(p)  = 0._r8
#endif
       cptr%p%pns%dispvegn(p)   = 0._r8
       cptr%p%pns%storvegn(p)   = 0._r8
       cptr%p%pns%totvegn(p)    = 0._r8
       cptr%p%pns%totpftn(p)    = 0._r8
!!     add phosphorus
       cptr%p%pphos%dispvegp(p)   = 0._r8
       cptr%p%pphos%storvegp(p)   = 0._r8
       cptr%p%pphos%totvegp(p)    = 0._r8
       cptr%p%pphos%totpftp(p)    = 0._r8


    end do
#endif
    
end subroutine CNZeroFluxes_dwt
!-----------------------------------------------------------------------

!-----------------------------------------------------------------------
!BOP
!
! !IROUTINE: CNSetPps
!
! !INTERFACE:
subroutine CNSetPps(num, filter, val, pps)
!
! !DESCRIPTION:
! Set pft physical state variables
! !USES:
    use clm_varpar  , only : numrad
!
! !ARGUMENTS:
    implicit none
    integer , intent(in) :: num
    integer , intent(in) :: filter(:)
    real(r8), intent(in) :: val
    type (pft_pstate_type), intent(inout) :: pps
!
! !REVISION HISTORY:
! Created by Peter Thornton
!
! !LOCAL VARIABLES:
! local pointers to implicit in/out arrays
!
! !OTHER LOCAL VARIABLES:
   integer :: fi,i,j     ! loop index
!EOP
!------------------------------------------------------------------------

   do fi = 1,num
      i = filter(fi)
      pps%slasun(i) = val
      pps%slasha(i) = val
      pps%lncsun(i) = val
      pps%lncsha(i) = val
      pps%vcmxsun(i) = val
      pps%vcmxsha(i) = val
      pps%gdir(i) = val
   end do

   do j = 1,numrad
      do fi = 1,num
         i = filter(fi)
         pps%omega(i,j) = val
         pps%eff_kid(i,j) = val
         pps%eff_kii(i,j) = val
         pps%sun_faid(i,j) = val
         pps%sun_faii(i,j) = val
         pps%sha_faid(i,j) = val
         pps%sha_faii(i,j) = val
      end do
   end do

end subroutine CNSetPps
!-----------------------------------------------------------------------

!-----------------------------------------------------------------------
!BOP
!
! !IROUTINE: CNSetPepv
!
! !INTERFACE:
subroutine CNSetPepv (num, filter, val, pepv)
!
! !DESCRIPTION:
! Set pft ecophysiological variables
!
! !ARGUMENTS:
    implicit none
    integer , intent(in) :: num
    integer , intent(in) :: filter(:)
    real(r8), intent(in) :: val
    type (pft_epv_type), intent(inout) :: pepv
!
! !REVISION HISTORY:
! Created by Peter Thornton
!
! !LOCAL VARIABLES:
! local pointers to implicit in/out arrays
!
! !OTHER LOCAL VARIABLES:
   integer :: fi,i     ! loop index
!EOP
!------------------------------------------------------------------------

   do fi = 1,num
      i = filter(fi)
      pepv%dormant_flag(i) = val
      pepv%days_active(i) = val
      pepv%onset_flag(i) = val
      pepv%onset_counter(i) = val
      pepv%onset_gddflag(i) = val
      pepv%onset_fdd(i) = val
      pepv%onset_gdd(i) = val
      pepv%onset_swi(i) = val
      pepv%offset_flag(i) = val
      pepv%offset_counter(i) = val
      pepv%offset_fdd(i) = val
      pepv%offset_swi(i) = val
      pepv%lgsf(i) = val
      pepv%bglfr(i) = val
      pepv%bgtr(i) = val
      pepv%dayl(i) = val
      pepv%prev_dayl(i) = val
      pepv%annavg_t2m(i) = val
      pepv%tempavg_t2m(i) = val
      pepv%gpp(i) = val
      pepv%availc(i) = val
      pepv%xsmrpool_recover(i) = val
#if (defined C13)
      pepv%xsmrpool_c13ratio(i) = val
#endif
      pepv%alloc_pnow(i) = val
      pepv%c_allometry(i) = val
      pepv%n_allometry(i) = val
      pepv%plant_ndemand(i) = val
      pepv%tempsum_potential_gpp(i) = val
      pepv%annsum_potential_gpp(i) = val
      pepv%tempmax_retransn(i) = val
      pepv%annmax_retransn(i) = val
      pepv%avail_retransn(i) = val
      pepv%plant_nalloc(i) = val
      pepv%plant_calloc(i) = val
      pepv%excess_cflux(i) = val
      pepv%downreg(i) = val
      pepv%prev_leafc_to_litter(i) = val
      pepv%prev_frootc_to_litter(i) = val
      pepv%tempsum_npp(i) = val
      pepv%annsum_npp(i) = val
#if (defined CNDV)
      pepv%tempsum_litfall(i) = val
      pepv%annsum_litfall(i) = val
#endif
      !! added for phosphorus : 11/06/2011, X. YANG
      pepv%p_allometry(i) = val
      pepv%plant_pdemand(i) = val
      pepv%tempmax_retransp(i) = val
      pepv%annmax_retransp(i) = val
      pepv%avail_retransp(i) = val
      pepv%plant_palloc(i) = val
   end do

end subroutine CNSetPepv
!-----------------------------------------------------------------------

!-----------------------------------------------------------------------
!BOP
!
! !IROUTINE: CNSetPcs
!
! !INTERFACE:
subroutine CNSetPcs (num, filter, val, pcs)
!
! !DESCRIPTION:
! Set pft carbon state variables
!
! !USES:
    use surfrdMod , only : crop_prog
! !ARGUMENTS:
    implicit none
    integer , intent(in) :: num
    integer , intent(in) :: filter(:)
    real(r8), intent(in) :: val
    type (pft_cstate_type), intent(inout) :: pcs
!
! !REVISION HISTORY:
! Created by Peter Thornton
!
! !LOCAL VARIABLES:
! local pointers to implicit in/out arrays
!
! !OTHER LOCAL VARIABLES:
   integer :: fi,i     ! loop index
!EOP
!------------------------------------------------------------------------

   do fi = 1,num
      i = filter(fi)
      pcs%leafc(i) = val
      pcs%leafc_storage(i) = val
      pcs%leafc_xfer(i) = val
      pcs%frootc(i) = val
      pcs%frootc_storage(i) = val
      pcs%frootc_xfer(i) = val
      pcs%livestemc(i) = val
      pcs%livestemc_storage(i) = val
      pcs%livestemc_xfer(i) = val
      pcs%deadstemc(i) = val
      pcs%deadstemc_storage(i) = val
      pcs%deadstemc_xfer(i) = val
      pcs%livecrootc(i) = val
      pcs%livecrootc_storage(i) = val
      pcs%livecrootc_xfer(i) = val
      pcs%deadcrootc(i) = val
      pcs%deadcrootc_storage(i) = val
      pcs%deadcrootc_xfer(i) = val
      pcs%gresp_storage(i) = val
      pcs%gresp_xfer(i) = val
      pcs%cpool(i) = val
      pcs%xsmrpool(i) = val
      pcs%pft_ctrunc(i) = val
      pcs%dispvegc(i) = val
      pcs%storvegc(i) = val
      pcs%totvegc(i) = val
      pcs%totpftc(i) = val
      pcs%woodc(i) = val

      if ( crop_prog )then
         pcs%grainc(i)         = val
         pcs%grainc_storage(i) = val
         pcs%grainc_xfer(i)    = val
      end if
   end do

end subroutine CNSetPcs
!-----------------------------------------------------------------------

!-----------------------------------------------------------------------
!BOP
!
! !IROUTINE: CNSetPns
!
! !INTERFACE:
subroutine CNSetPns(num, filter, val, pns)
!
! !DESCRIPTION:
! Set pft nitrogen state variables
!
! !USES:
    use surfrdMod , only : crop_prog
! !ARGUMENTS:
    implicit none
    integer , intent(in) :: num
    integer , intent(in) :: filter(:)
    real(r8), intent(in) :: val
    type (pft_nstate_type), intent(inout) :: pns
!
! !REVISION HISTORY:
! Created by Peter Thornton
!
! !LOCAL VARIABLES:
! local pointers to implicit in/out arrays
!
! !OTHER LOCAL VARIABLES:
   integer :: fi,i     ! loop index
!EOP
!------------------------------------------------------------------------

   do fi = 1,num
      i = filter(fi)
      pns%leafn(i) = val
      pns%leafn_storage(i) = val
      pns%leafn_xfer(i) = val
      pns%frootn(i) = val
      pns%frootn_storage(i) = val
      pns%frootn_xfer(i) = val
      pns%livestemn(i) = val
      pns%livestemn_storage(i) = val
      pns%livestemn_xfer(i) = val
      pns%deadstemn(i) = val
      pns%deadstemn_storage(i) = val
      pns%deadstemn_xfer(i) = val
      pns%livecrootn(i) = val
      pns%livecrootn_storage(i) = val
      pns%livecrootn_xfer(i) = val
      pns%deadcrootn(i) = val
      pns%deadcrootn_storage(i) = val
      pns%deadcrootn_xfer(i) = val
      pns%retransn(i) = val
      pns%npool(i) = val
      pns%pft_ntrunc(i) = val
      pns%dispvegn(i) = val
      pns%storvegn(i) = val
      pns%totvegn(i) = val
      pns%totpftn(i) = val
      if ( crop_prog )then
         pns%grainn(i)         = val
         pns%grainn_storage(i) = val
         pns%grainn_xfer(i)    = val
      end if
   end do

end subroutine CNSetPns

!-----------------------------------------------------------------------

!! add phosphorus 
!-----------------------------------------------------------------------
!BOP
!
! !IROUTINE: CNSetPphos
!
! !INTERFACE:
subroutine CNSetPphos(num, filter, val, pphos)
!
! !DESCRIPTION:
! Set pft nitrogen state variables
!
! !USES:
    use surfrdMod , only : crop_prog
! !ARGUMENTS:
    implicit none
    integer , intent(in) :: num
    integer , intent(in) :: filter(:)
    real(r8), intent(in) :: val
    type (pft_phostate_type), intent(inout) :: pphos
!
! !REVISION HISTORY:
! Created by Peter Thornton
!
! !LOCAL VARIABLES:
! local pointers to implicit in/out arrays
!
! !OTHER LOCAL VARIABLES:
   integer :: fi,i     ! loop index
!EOP
!------------------------------------------------------------------------

   do fi = 1,num
      i = filter(fi)
      pphos%leafp(i) = val
      pphos%leafp_storage(i) = val
      pphos%leafp_xfer(i) = val
      pphos%frootp(i) = val
      pphos%frootp_storage(i) = val
      pphos%frootp_xfer(i) = val
      pphos%livestemp(i) = val
      pphos%livestemp_storage(i) = val
      pphos%livestemp_xfer(i) = val
      pphos%deadstemp(i) = val
      pphos%deadstemp_storage(i) = val
      pphos%deadstemp_xfer(i) = val
      pphos%livecrootp(i) = val
      pphos%livecrootp_storage(i) = val
      pphos%livecrootp_xfer(i) = val
      pphos%deadcrootp(i) = val
      pphos%deadcrootp_storage(i) = val
      pphos%deadcrootp_xfer(i) = val
      pphos%retransp(i) = val
      pphos%ppool(i) = val
      pphos%pft_ptrunc(i) = val
      pphos%dispvegp(i) = val
      pphos%storvegp(i) = val
      pphos%totvegp(i) = val
      pphos%totpftp(i) = val
      if ( crop_prog )then
         pphos%grainp(i)         = val
         pphos%grainp_storage(i) = val
         pphos%grainp_xfer(i)    = val
      end if
   end do

end subroutine CNSetPphos


!-----------------------------------------------------------------------

!-----------------------------------------------------------------------
!BOP
!
! !IROUTINE: CNSetPcf
!
! !INTERFACE:
subroutine CNSetPcf(num, filter, val, pcf)
!
! !DESCRIPTION:
! Set pft carbon flux variables
!
! !USES:
    use surfrdMod , only : crop_prog
! !ARGUMENTS:
    implicit none
    integer , intent(in) :: num
    integer , intent(in) :: filter(:)
    real(r8), intent(in) :: val
    type (pft_cflux_type), intent(inout) :: pcf
!
! !REVISION HISTORY:
! Created by Peter Thornton
!
! !LOCAL VARIABLES:
! local pointers to implicit in/out arrays
!
! !OTHER LOCAL VARIABLES:
   integer :: fi,i     ! loop index
!EOP
!------------------------------------------------------------------------

   do fi = 1,num
      i = filter(fi)
      pcf%m_leafc_to_litter(i) = val
      pcf%m_frootc_to_litter(i) = val
      pcf%m_leafc_storage_to_litter(i) = val
      pcf%m_frootc_storage_to_litter(i) = val
      pcf%m_livestemc_storage_to_litter(i) = val
      pcf%m_deadstemc_storage_to_litter(i) = val
      pcf%m_livecrootc_storage_to_litter(i) = val
      pcf%m_deadcrootc_storage_to_litter(i) = val
      pcf%m_leafc_xfer_to_litter(i) = val
      pcf%m_frootc_xfer_to_litter(i) = val
      pcf%m_livestemc_xfer_to_litter(i) = val
      pcf%m_deadstemc_xfer_to_litter(i) = val
      pcf%m_livecrootc_xfer_to_litter(i) = val
      pcf%m_deadcrootc_xfer_to_litter(i) = val
      pcf%m_livestemc_to_litter(i) = val
      pcf%m_deadstemc_to_litter(i) = val
      pcf%m_livecrootc_to_litter(i) = val
      pcf%m_deadcrootc_to_litter(i) = val
      pcf%m_gresp_storage_to_litter(i) = val
      pcf%m_gresp_xfer_to_litter(i) = val
      pcf%hrv_leafc_to_litter(i) = val             
      pcf%hrv_leafc_storage_to_litter(i) = val     
      pcf%hrv_leafc_xfer_to_litter(i) = val        
      pcf%hrv_frootc_to_litter(i) = val            
      pcf%hrv_frootc_storage_to_litter(i) = val    
      pcf%hrv_frootc_xfer_to_litter(i) = val       
      pcf%hrv_livestemc_to_litter(i) = val         
      pcf%hrv_livestemc_storage_to_litter(i) = val 
      pcf%hrv_livestemc_xfer_to_litter(i) = val    
      pcf%hrv_deadstemc_to_prod10c(i) = val        
      pcf%hrv_deadstemc_to_prod100c(i) = val       
      pcf%hrv_deadstemc_storage_to_litter(i) = val 
      pcf%hrv_deadstemc_xfer_to_litter(i) = val    
      pcf%hrv_livecrootc_to_litter(i) = val        
      pcf%hrv_livecrootc_storage_to_litter(i) = val
      pcf%hrv_livecrootc_xfer_to_litter(i) = val   
      pcf%hrv_deadcrootc_to_litter(i) = val        
      pcf%hrv_deadcrootc_storage_to_litter(i) = val
      pcf%hrv_deadcrootc_xfer_to_litter(i) = val   
      pcf%hrv_gresp_storage_to_litter(i) = val     
      pcf%hrv_gresp_xfer_to_litter(i) = val        
      pcf%hrv_xsmrpool_to_atm(i) = val                 
      pcf%m_leafc_to_fire(i) = val
      pcf%m_frootc_to_fire(i) = val
      pcf%m_leafc_storage_to_fire(i) = val
      pcf%m_frootc_storage_to_fire(i) = val
      pcf%m_livestemc_storage_to_fire(i) = val
      pcf%m_deadstemc_storage_to_fire(i) = val
      pcf%m_livecrootc_storage_to_fire(i) = val
      pcf%m_deadcrootc_storage_to_fire(i) = val
      pcf%m_leafc_xfer_to_fire(i) = val
      pcf%m_frootc_xfer_to_fire(i) = val
      pcf%m_livestemc_xfer_to_fire(i) = val
      pcf%m_deadstemc_xfer_to_fire(i) = val
      pcf%m_livecrootc_xfer_to_fire(i) = val
      pcf%m_deadcrootc_xfer_to_fire(i) = val
      pcf%m_livestemc_to_fire(i) = val
      pcf%m_deadstemc_to_fire(i) = val
      pcf%m_deadstemc_to_litter_fire(i) = val
      pcf%m_livecrootc_to_fire(i) = val
      pcf%m_deadcrootc_to_fire(i) = val
      pcf%m_deadcrootc_to_litter_fire(i) = val
      pcf%m_gresp_storage_to_fire(i) = val
      pcf%m_gresp_xfer_to_fire(i) = val
      pcf%leafc_xfer_to_leafc(i) = val
      pcf%frootc_xfer_to_frootc(i) = val
      pcf%livestemc_xfer_to_livestemc(i) = val
      pcf%deadstemc_xfer_to_deadstemc(i) = val
      pcf%livecrootc_xfer_to_livecrootc(i) = val
      pcf%deadcrootc_xfer_to_deadcrootc(i) = val
      pcf%leafc_to_litter(i) = val
      pcf%frootc_to_litter(i) = val
      pcf%leaf_mr(i) = val
      pcf%froot_mr(i) = val
      pcf%livestem_mr(i) = val
      pcf%livecroot_mr(i) = val
      pcf%leaf_curmr(i) = val
      pcf%froot_curmr(i) = val
      pcf%livestem_curmr(i) = val
      pcf%livecroot_curmr(i) = val
      pcf%leaf_xsmr(i) = val
      pcf%froot_xsmr(i) = val
      pcf%livestem_xsmr(i) = val
      pcf%livecroot_xsmr(i) = val
      pcf%psnsun_to_cpool(i) = val
      pcf%psnshade_to_cpool(i) = val
      pcf%cpool_to_xsmrpool(i) = val
      pcf%cpool_to_leafc(i) = val
      pcf%cpool_to_leafc_storage(i) = val
      pcf%cpool_to_frootc(i) = val
      pcf%cpool_to_frootc_storage(i) = val
      pcf%cpool_to_livestemc(i) = val
      pcf%cpool_to_livestemc_storage(i) = val
      pcf%cpool_to_deadstemc(i) = val
      pcf%cpool_to_deadstemc_storage(i) = val
      pcf%cpool_to_livecrootc(i) = val
      pcf%cpool_to_livecrootc_storage(i) = val
      pcf%cpool_to_deadcrootc(i) = val
      pcf%cpool_to_deadcrootc_storage(i) = val
      pcf%cpool_to_gresp_storage(i) = val
      pcf%cpool_leaf_gr(i) = val
      pcf%cpool_leaf_storage_gr(i) = val
      pcf%transfer_leaf_gr(i) = val
      pcf%cpool_froot_gr(i) = val
      pcf%cpool_froot_storage_gr(i) = val
      pcf%transfer_froot_gr(i) = val
      pcf%cpool_livestem_gr(i) = val
      pcf%cpool_livestem_storage_gr(i) = val
      pcf%transfer_livestem_gr(i) = val
      pcf%cpool_deadstem_gr(i) = val
      pcf%cpool_deadstem_storage_gr(i) = val
      pcf%transfer_deadstem_gr(i) = val
      pcf%cpool_livecroot_gr(i) = val
      pcf%cpool_livecroot_storage_gr(i) = val
      pcf%transfer_livecroot_gr(i) = val
      pcf%cpool_deadcroot_gr(i) = val
      pcf%cpool_deadcroot_storage_gr(i) = val
      pcf%transfer_deadcroot_gr(i) = val
      pcf%leafc_storage_to_xfer(i) = val
      pcf%frootc_storage_to_xfer(i) = val
      pcf%livestemc_storage_to_xfer(i) = val
      pcf%deadstemc_storage_to_xfer(i) = val
      pcf%livecrootc_storage_to_xfer(i) = val
      pcf%deadcrootc_storage_to_xfer(i) = val
      pcf%gresp_storage_to_xfer(i) = val
      pcf%livestemc_to_deadstemc(i) = val
      pcf%livecrootc_to_deadcrootc(i) = val
      pcf%gpp(i) = val
      pcf%mr(i) = val
      pcf%current_gr(i) = val
      pcf%transfer_gr(i) = val
      pcf%storage_gr(i) = val
      pcf%gr(i) = val
      pcf%ar(i) = val
      pcf%rr(i) = val
      pcf%npp(i) = val
      pcf%agnpp(i) = val
      pcf%bgnpp(i) = val
      pcf%litfall(i) = val
      pcf%vegfire(i) = val
      pcf%wood_harvestc(i) = val
      pcf%pft_cinputs(i) = val
      pcf%pft_coutputs(i) = val
      pcf%pft_fire_closs(i) = val
      pcf%frootc_alloc(i) = val
      pcf%frootc_loss(i) = val
      pcf%leafc_alloc(i) = val
      pcf%leafc_loss(i) = val
      pcf%woodc_alloc(i) = val
      pcf%woodc_loss(i) = val
      if ( crop_prog )then
         pcf%xsmrpool_to_atm(i)         = val
         pcf%livestemc_to_litter(i)     = val
         pcf%grainc_to_food(i)          = val
         pcf%grainc_xfer_to_grainc(i)   = val
         pcf%cpool_to_grainc(i)         = val
         pcf%cpool_to_grainc_storage(i) = val
         pcf%cpool_grain_gr(i)          = val
         pcf%cpool_grain_storage_gr(i)  = val
         pcf%transfer_grain_gr(i)       = val
         pcf%grainc_storage_to_xfer(i)  = val
      end if
   end do

end subroutine CNSetPcf
!-----------------------------------------------------------------------

!-----------------------------------------------------------------------
!BOP
!
! !IROUTINE: CNSetPnf
!
! !INTERFACE:
subroutine CNSetPnf(num, filter, val, pnf)
!
! !DESCRIPTION:
! Set pft nitrogen flux variables
!
! !USES:
    use surfrdMod , only : crop_prog
! !ARGUMENTS:
    implicit none
    integer , intent(in) :: num
    integer , intent(in) :: filter(:)
    real(r8), intent(in) :: val
    type (pft_nflux_type), intent(inout) :: pnf
!
! !REVISION HISTORY:
! Created by Peter Thornton
!
! !LOCAL VARIABLES:
! local pointers to implicit in/out arrays
!
! !OTHER LOCAL VARIABLES:
   integer :: fi,i     ! loop index
!EOP
!------------------------------------------------------------------------

   do fi = 1,num
      i=filter(fi)
      pnf%m_leafn_to_litter(i) = val
      pnf%m_frootn_to_litter(i) = val
      pnf%m_leafn_storage_to_litter(i) = val
      pnf%m_frootn_storage_to_litter(i) = val
      pnf%m_livestemn_storage_to_litter(i) = val
      pnf%m_deadstemn_storage_to_litter(i) = val
      pnf%m_livecrootn_storage_to_litter(i) = val
      pnf%m_deadcrootn_storage_to_litter(i) = val
      pnf%m_leafn_xfer_to_litter(i) = val
      pnf%m_frootn_xfer_to_litter(i) = val
      pnf%m_livestemn_xfer_to_litter(i) = val
      pnf%m_deadstemn_xfer_to_litter(i) = val
      pnf%m_livecrootn_xfer_to_litter(i) = val
      pnf%m_deadcrootn_xfer_to_litter(i) = val
      pnf%m_livestemn_to_litter(i) = val
      pnf%m_deadstemn_to_litter(i) = val
      pnf%m_livecrootn_to_litter(i) = val
      pnf%m_deadcrootn_to_litter(i) = val
      pnf%m_retransn_to_litter(i) = val
      pnf%hrv_leafn_to_litter(i) = val             
      pnf%hrv_frootn_to_litter(i) = val            
      pnf%hrv_leafn_storage_to_litter(i) = val     
      pnf%hrv_frootn_storage_to_litter(i) = val    
      pnf%hrv_livestemn_storage_to_litter(i) = val 
      pnf%hrv_deadstemn_storage_to_litter(i) = val 
      pnf%hrv_livecrootn_storage_to_litter(i) = val
      pnf%hrv_deadcrootn_storage_to_litter(i) = val
      pnf%hrv_leafn_xfer_to_litter(i) = val        
      pnf%hrv_frootn_xfer_to_litter(i) = val       
      pnf%hrv_livestemn_xfer_to_litter(i) = val    
      pnf%hrv_deadstemn_xfer_to_litter(i) = val    
      pnf%hrv_livecrootn_xfer_to_litter(i) = val   
      pnf%hrv_deadcrootn_xfer_to_litter(i) = val   
      pnf%hrv_livestemn_to_litter(i) = val         
      pnf%hrv_deadstemn_to_prod10n(i) = val        
      pnf%hrv_deadstemn_to_prod100n(i) = val       
      pnf%hrv_livecrootn_to_litter(i) = val        
      pnf%hrv_deadcrootn_to_litter(i) = val        
      pnf%hrv_retransn_to_litter(i) = val           
      pnf%m_leafn_to_fire(i) = val
      pnf%m_frootn_to_fire(i) = val
      pnf%m_leafn_storage_to_fire(i) = val
      pnf%m_frootn_storage_to_fire(i) = val
      pnf%m_livestemn_storage_to_fire(i) = val
      pnf%m_deadstemn_storage_to_fire(i) = val
      pnf%m_livecrootn_storage_to_fire(i) = val
      pnf%m_deadcrootn_storage_to_fire(i) = val
      pnf%m_leafn_xfer_to_fire(i) = val
      pnf%m_frootn_xfer_to_fire(i) = val
      pnf%m_livestemn_xfer_to_fire(i) = val
      pnf%m_deadstemn_xfer_to_fire(i) = val
      pnf%m_livecrootn_xfer_to_fire(i) = val
      pnf%m_deadcrootn_xfer_to_fire(i) = val
      pnf%m_livestemn_to_fire(i) = val
      pnf%m_deadstemn_to_fire(i) = val
      pnf%m_deadstemn_to_litter_fire(i) = val
      pnf%m_livecrootn_to_fire(i) = val
      pnf%m_deadcrootn_to_fire(i) = val
      pnf%m_deadcrootn_to_litter_fire(i) = val
      pnf%m_retransn_to_fire(i) = val
      pnf%leafn_xfer_to_leafn(i) = val
      pnf%frootn_xfer_to_frootn(i) = val
      pnf%livestemn_xfer_to_livestemn(i) = val
      pnf%deadstemn_xfer_to_deadstemn(i) = val
      pnf%livecrootn_xfer_to_livecrootn(i) = val
      pnf%deadcrootn_xfer_to_deadcrootn(i) = val
      pnf%leafn_to_litter(i) = val
      pnf%leafn_to_retransn(i) = val
      pnf%frootn_to_litter(i) = val
      pnf%retransn_to_npool(i) = val
      pnf%sminn_to_npool(i) = val
      pnf%npool_to_leafn(i) = val
      pnf%npool_to_leafn_storage(i) = val
      pnf%npool_to_frootn(i) = val
      pnf%npool_to_frootn_storage(i) = val
      pnf%npool_to_livestemn(i) = val
      pnf%npool_to_livestemn_storage(i) = val
      pnf%npool_to_deadstemn(i) = val
      pnf%npool_to_deadstemn_storage(i) = val
      pnf%npool_to_livecrootn(i) = val
      pnf%npool_to_livecrootn_storage(i) = val
      pnf%npool_to_deadcrootn(i) = val
      pnf%npool_to_deadcrootn_storage(i) = val
      pnf%leafn_storage_to_xfer(i) = val
      pnf%frootn_storage_to_xfer(i) = val
      pnf%livestemn_storage_to_xfer(i) = val
      pnf%deadstemn_storage_to_xfer(i) = val
      pnf%livecrootn_storage_to_xfer(i) = val
      pnf%deadcrootn_storage_to_xfer(i) = val
      pnf%livestemn_to_deadstemn(i) = val
      pnf%livestemn_to_retransn(i) = val
      pnf%livecrootn_to_deadcrootn(i) = val
      pnf%livecrootn_to_retransn(i) = val
      pnf%ndeploy(i) = val
      pnf%pft_ninputs(i) = val
      pnf%pft_noutputs(i) = val
      pnf%wood_harvestn(i) = val
      pnf%pft_fire_nloss(i) = val
      if ( crop_prog )then
         pnf%livestemn_to_litter(i)     = val
         pnf%grainn_to_food(i)          = val
         pnf%grainn_xfer_to_grainn(i)   = val
         pnf%npool_to_grainn(i)         = val
         pnf%npool_to_grainn_storage(i) = val
         pnf%grainn_storage_to_xfer(i)  = val
      end if
   end do

end subroutine CNSetPnf

!-----------------------------------------------------------------------
      
!! add phosphorus
!-----------------------------------------------------------------------
!BOP  
!     
! !IROUTINE: CNSetPphof
!     
! !INTERFACE:
subroutine CNSetPphof(num, filter, val, pphof)
!     
! !DESCRIPTION:
! Set pft phosphorus flux variables
!     
! !USES:
    use surfrdMod , only : crop_prog
! !ARGUMENTS:
    implicit none
    integer , intent(in) :: num
    integer , intent(in) :: filter(:)
    real(r8), intent(in) :: val 
    type (pft_phoflux_type), intent(inout) :: pphof
!     
! !REVISION HISTORY:
! Created by Peter Thornton
!     
! !LOCAL VARIABLES:
! local pointers to implicit in/out arrays
!     
! !OTHER LOCAL VARIABLES:
   integer :: fi,i     ! loop index
!EOP  
!------------------------------------------------------------------------
      
   do fi = 1,num
      i=filter(fi)
      pphof%m_leafp_to_litter(i) = val
      pphof%m_frootp_to_litter(i) = val 
      pphof%m_leafp_storage_to_litter(i) = val
      pphof%m_frootp_storage_to_litter(i) = val
      pphof%m_livestemp_storage_to_litter(i) = val
      pphof%m_deadstemp_storage_to_litter(i) = val
      pphof%m_livecrootp_storage_to_litter(i) = val
      pphof%m_deadcrootp_storage_to_litter(i) = val
      pphof%m_leafp_xfer_to_litter(i) = val
      pphof%m_frootp_xfer_to_litter(i) = val
      pphof%m_livestemp_xfer_to_litter(i) = val
      pphof%m_deadstemp_xfer_to_litter(i) = val
      pphof%m_livecrootp_xfer_to_litter(i) = val
      pphof%m_deadcrootp_xfer_to_litter(i) = val
      pphof%m_livestemp_to_litter(i) = val
      pphof%m_deadstemp_to_litter(i) = val
      pphof%m_livecrootp_to_litter(i) = val
      pphof%m_deadcrootp_to_litter(i) = val
      pphof%m_retransp_to_litter(i) = val
      pphof%hrv_leafp_to_litter(i) = val
      pphof%hrv_frootp_to_litter(i) = val
      pphof%hrv_leafp_storage_to_litter(i) = val
      pphof%hrv_frootp_storage_to_litter(i) = val
      pphof%hrv_livestemp_storage_to_litter(i) = val
      pphof%hrv_deadstemp_storage_to_litter(i) = val
      pphof%hrv_livecrootp_storage_to_litter(i) = val
      pphof%hrv_deadcrootp_storage_to_litter(i) = val
      pphof%hrv_leafp_xfer_to_litter(i) = val
      pphof%hrv_frootp_xfer_to_litter(i) = val
      pphof%hrv_livestemp_xfer_to_litter(i) = val
      pphof%hrv_deadstemp_xfer_to_litter(i) = val
      pphof%hrv_livecrootp_xfer_to_litter(i) = val
      pphof%hrv_deadcrootp_xfer_to_litter(i) = val
      pphof%hrv_livestemp_to_litter(i) = val
      pphof%hrv_deadstemp_to_prod10p(i) = val
      pphof%hrv_deadstemp_to_prod100p(i) = val
      pphof%hrv_livecrootp_to_litter(i) = val
      pphof%hrv_deadcrootp_to_litter(i) = val
      pphof%hrv_retransp_to_litter(i) = val
      pphof%m_leafp_to_fire(i) = val
      pphof%m_frootp_to_fire(i) = val
      pphof%m_leafp_storage_to_fire(i) = val
      pphof%m_frootp_storage_to_fire(i) = val
      pphof%m_livestemp_storage_to_fire(i) = val
      pphof%m_deadstemp_storage_to_fire(i) = val
      pphof%m_livecrootp_storage_to_fire(i) = val
      pphof%m_deadcrootp_storage_to_fire(i) = val
      pphof%m_leafp_xfer_to_fire(i) = val
      pphof%m_frootp_xfer_to_fire(i) = val
      pphof%m_livestemp_xfer_to_fire(i) = val
      pphof%m_deadstemp_xfer_to_fire(i) = val
      pphof%m_livecrootp_xfer_to_fire(i) = val
      pphof%m_deadcrootp_xfer_to_fire(i) = val
      pphof%m_livestemp_to_fire(i) = val
      pphof%m_deadstemp_to_fire(i) = val
      pphof%m_deadstemp_to_litter_fire(i) = val
      pphof%m_livecrootp_to_fire(i) = val
      pphof%m_deadcrootp_to_fire(i) = val
      pphof%m_deadcrootp_to_litter_fire(i) = val
      pphof%m_retransp_to_fire(i) = val
      pphof%leafp_xfer_to_leafp(i) = val
      pphof%frootp_xfer_to_frootp(i) = val
      pphof%livestemp_xfer_to_livestemp(i) = val
      pphof%deadstemp_xfer_to_deadstemp(i) = val
      pphof%livecrootp_xfer_to_livecrootp(i) = val
      pphof%deadcrootp_xfer_to_deadcrootp(i) = val
      pphof%leafp_to_litter(i) = val
      pphof%leafp_to_retransp(i) = val
      pphof%frootp_to_litter(i) = val
      pphof%retransp_to_ppool(i) = val
      pphof%sminp_to_ppool(i) = val
      pphof%ppool_to_leafp(i) = val
      pphof%ppool_to_leafp_storage(i) = val
      pphof%ppool_to_frootp(i) = val
      pphof%ppool_to_frootp_storage(i) = val
      pphof%ppool_to_livestemp(i) = val
      pphof%ppool_to_livestemp_storage(i) = val
      pphof%ppool_to_deadstemp(i) = val
      pphof%ppool_to_deadstemp_storage(i) = val
      pphof%ppool_to_livecrootp(i) = val
      pphof%ppool_to_livecrootp_storage(i) = val
      pphof%ppool_to_deadcrootp(i) = val
      pphof%ppool_to_deadcrootp_storage(i) = val
      pphof%leafp_storage_to_xfer(i) = val
      pphof%frootp_storage_to_xfer(i) = val
      pphof%livestemp_storage_to_xfer(i) = val
      pphof%deadstemp_storage_to_xfer(i) = val
      pphof%livecrootp_storage_to_xfer(i) = val
      pphof%deadcrootp_storage_to_xfer(i) = val
      pphof%livestemp_to_deadstemp(i) = val
      pphof%livestemp_to_retransp(i) = val
      pphof%livecrootp_to_deadcrootp(i) = val
      pphof%livecrootp_to_retransp(i) = val
      pphof%pdeploy(i) = val
      pphof%pft_pinputs(i) = val
      pphof%pft_poutputs(i) = val
      pphof%wood_harvestp(i) = val
      pphof%pft_fire_ploss(i) = val
      if ( crop_prog )then
         pphof%livestemp_to_litter(i)     = val
         pphof%grainp_to_food(i)          = val
         pphof%grainp_xfer_to_grainp(i)   = val
         pphof%ppool_to_grainp(i)         = val
         pphof%ppool_to_grainp_storage(i) = val
         pphof%grainp_storage_to_xfer(i)  = val
      end if
   end do

end subroutine CNSetPphof

!-----------------------------------------------------------------------

!-----------------------------------------------------------------------
!BOP
!
! !IROUTINE: CNSetCps
!
! !INTERFACE:
subroutine CNSetCps(num, filter, val, cps)
!
! !DESCRIPTION:
! Set column physical state variables
!
! !ARGUMENTS:
    implicit none
    integer , intent(in) :: num
    integer , intent(in) :: filter(:)
    real(r8), intent(in) :: val
    type (column_pstate_type), intent(inout) :: cps
!
! !REVISION HISTORY:
! Created by Peter Thornton
!
! !LOCAL VARIABLES:
! local pointers to implicit in/out arrays
!
! !OTHER LOCAL VARIABLES:
   integer :: fi,i,j     ! loop index
!EOP
!------------------------------------------------------------------------

   do fi = 1,num
      i = filter(fi)
      cps%decl(i) = val
      cps%coszen(i) = val
      cps%fpi(i) = val
      cps%fpg(i) = val
      cps%fpi_p(i) = val
      cps%fpg_p(i) = val
      cps%annsum_counter(i) = val
      cps%cannsum_npp(i) = val
      cps%cannavg_t2m(i) = val
      cps%wf(i) = val
      cps%me(i) = val
      cps%fire_prob(i) = val
      cps%mean_fire_prob(i) = val
      cps%fireseasonl(i) = val
      cps%farea_burned(i) = val
      cps%ann_farea_burned(i) = val
   end do

   do j = 1,nlevgrnd
      do fi = 1,num
         i = filter(fi)
         cps%bsw2(i,j) = val
         cps%psisat(i,j) = val
         cps%vwcsat(i,j) = val
         cps%soilpsi(i,j) = val
      end do
   end do

end subroutine CNSetCps
!-----------------------------------------------------------------------

!-----------------------------------------------------------------------
!BOP
!
! !IROUTINE: CNSetCcs
!
! !INTERFACE:
subroutine CNSetCcs(num, filter, val, ccs)
!
! !DESCRIPTION:
! Set column carbon state variables
!
! !ARGUMENTS:
    implicit none
    integer , intent(in) :: num
    integer , intent(in) :: filter(:)
    real(r8), intent(in) :: val
    type (column_cstate_type), intent(inout) :: ccs
!
! !REVISION HISTORY:
! Created by Peter Thornton
!
! !LOCAL VARIABLES:
! local pointers to implicit in/out arrays
!
! !OTHER LOCAL VARIABLES:
   integer :: fi,i     ! loop index
!EOP
!------------------------------------------------------------------------

   do fi = 1,num
      i = filter(fi)
      ccs%cwdc(i) = val
      ccs%litr1c(i) = val
      ccs%litr2c(i) = val
      ccs%litr3c(i) = val
      ccs%soil1c(i) = val
      ccs%soil2c(i) = val
      ccs%soil3c(i) = val
      ccs%soil4c(i) = val
      ccs%col_ctrunc(i) = val
      ccs%totlitc(i) = val
      ccs%totsomc(i) = val
      ccs%totecosysc(i) = val
      ccs%totcolc(i) = val

   end do

end subroutine CNSetCcs
!-----------------------------------------------------------------------

!-----------------------------------------------------------------------
!BOP
!
! !IROUTINE: CNSetCns
!
! !INTERFACE:
subroutine CNSetCns(num, filter, val, cns)
!
! !DESCRIPTION:
! Set column nitrogen state variables
!
! !ARGUMENTS:
    implicit none
    integer , intent(in) :: num
    integer , intent(in) :: filter(:)
    real(r8), intent(in) :: val
    type (column_nstate_type), intent(inout) :: cns
!
! !REVISION HISTORY:
! Created by Peter Thornton
!
! !LOCAL VARIABLES:
! local pointers to implicit in/out arrays
!
! !OTHER LOCAL VARIABLES:
   integer :: fi,i     ! loop index
!EOP
!------------------------------------------------------------------------

   do fi = 1,num
      i = filter(fi)
      cns%cwdn(i) = val
      cns%litr1n(i) = val
      cns%litr2n(i) = val
      cns%litr3n(i) = val
      cns%soil1n(i) = val
      cns%soil2n(i) = val
      cns%soil3n(i) = val
      cns%soil4n(i) = val
      cns%sminn(i) = val
      cns%col_ntrunc(i) = val
      cns%totlitn(i) = val
      cns%totsomn(i) = val
      cns%totecosysn(i) = val
      cns%totcoln(i) = val
   end do

end subroutine CNSetCns

!-----------------------------------------------------------------------

!! add phosphorus
!-----------------------------------------------------------------------
!BOP
!
! !IROUTINE: CNSetCphos
!
! !INTERFACE:
subroutine CNSetCphos(num, filter, val, cphos)
!
! !DESCRIPTION:
! Set column nitrogen state variables
!
! !ARGUMENTS:
    implicit none
    integer , intent(in) :: num
    integer , intent(in) :: filter(:)
    real(r8), intent(in) :: val
    type (column_phostate_type), intent(inout) :: cphos
!
! !REVISION HISTORY:
! Created by Peter Thornton
!
! !LOCAL VARIABLES:
! local pointers to implicit in/out arrays
!
! !OTHER LOCAL VARIABLES:
   integer :: fi,i     ! loop index
!EOP
!------------------------------------------------------------------------

   do fi = 1,num
      i = filter(fi)
      cphos%cwdp(i) = val
      cphos%litr1p(i) = val
      cphos%litr2p(i) = val
      cphos%litr3p(i) = val
      cphos%soil1p(i) = val
      cphos%soil2p(i) = val
      cphos%soil3p(i) = val
      cphos%soil4p(i) = val
      cphos%solutionp(i)= val
      cphos%labilep(i)= val
      cphos%secondp(i)= val
      cphos%occlp(i)= val
      cphos%primp(i)= val
      cphos%col_ptrunc(i) = val
      cphos%totlitp(i) = val
      cphos%totsomp(i) = val
      cphos%totecosysp(i) = val
      cphos%totcolp(i) = val
   end do

end subroutine CNSetCphos

!-----------------------------------------------------------------------

!-----------------------------------------------------------------------
!BOP
!
! !IROUTINE: CNSetCcf
!
! !INTERFACE:
subroutine CNSetCcf(num, filter, val, ccf)
!
! !DESCRIPTION:
! Set column carbon flux variables
!
! !USES:
    use surfrdMod , only : crop_prog
! !ARGUMENTS:
    implicit none
    integer , intent(in) :: num
    integer , intent(in) :: filter(:)
    real(r8), intent(in) :: val
    type (column_cflux_type), intent(inout) :: ccf
!
! !REVISION HISTORY:
! Created by Peter Thornton
!
! !LOCAL VARIABLES:
! local pointers to implicit in/out arrays
!
! !OTHER LOCAL VARIABLES:
   integer :: fi,i     ! loop index
!EOP
!------------------------------------------------------------------------

   do fi = 1,num
      i = filter(fi)
      ccf%m_leafc_to_litr1c(i)                = val
      ccf%m_leafc_to_litr2c(i)                = val
      ccf%m_leafc_to_litr3c(i)                = val
      ccf%m_frootc_to_litr1c(i)               = val
      ccf%m_frootc_to_litr2c(i)               = val
      ccf%m_frootc_to_litr3c(i)               = val
      ccf%m_leafc_storage_to_litr1c(i)        = val
      ccf%m_frootc_storage_to_litr1c(i)       = val
      ccf%m_livestemc_storage_to_litr1c(i)    = val
      ccf%m_deadstemc_storage_to_litr1c(i)    = val
      ccf%m_livecrootc_storage_to_litr1c(i)   = val
      ccf%m_deadcrootc_storage_to_litr1c(i)   = val
      ccf%m_leafc_xfer_to_litr1c(i)           = val
      ccf%m_frootc_xfer_to_litr1c(i)          = val
      ccf%m_livestemc_xfer_to_litr1c(i)       = val
      ccf%m_deadstemc_xfer_to_litr1c(i)       = val
      ccf%m_livecrootc_xfer_to_litr1c(i)      = val
      ccf%m_deadcrootc_xfer_to_litr1c(i)      = val
      ccf%m_livestemc_to_cwdc(i)              = val
      ccf%m_deadstemc_to_cwdc(i)              = val
      ccf%m_livecrootc_to_cwdc(i)             = val
      ccf%m_deadcrootc_to_cwdc(i)             = val
      ccf%m_gresp_storage_to_litr1c(i)        = val
      ccf%m_gresp_xfer_to_litr1c(i)           = val
      ccf%hrv_leafc_to_litr1c(i)              = val             
      ccf%hrv_leafc_to_litr2c(i)              = val             
      ccf%hrv_leafc_to_litr3c(i)              = val             
      ccf%hrv_frootc_to_litr1c(i)             = val            
      ccf%hrv_frootc_to_litr2c(i)             = val            
      ccf%hrv_frootc_to_litr3c(i)             = val            
      ccf%hrv_livestemc_to_cwdc(i)            = val           
      ccf%hrv_deadstemc_to_prod10c(i)         = val        
      ccf%hrv_deadstemc_to_prod100c(i)        = val       
      ccf%hrv_livecrootc_to_cwdc(i)           = val          
      ccf%hrv_deadcrootc_to_cwdc(i)           = val          
      ccf%hrv_leafc_storage_to_litr1c(i)      = val     
      ccf%hrv_frootc_storage_to_litr1c(i)     = val    
      ccf%hrv_livestemc_storage_to_litr1c(i)  = val 
      ccf%hrv_deadstemc_storage_to_litr1c(i)  = val 
      ccf%hrv_livecrootc_storage_to_litr1c(i) = val
      ccf%hrv_deadcrootc_storage_to_litr1c(i) = val
      if ( crop_prog )then
         ccf%livestemc_to_litr1c(i) = val
         ccf%livestemc_to_litr2c(i) = val
         ccf%livestemc_to_litr3c(i) = val
         ccf%grainc_to_litr1c(i)    = val
         ccf%grainc_to_litr2c(i)    = val
         ccf%grainc_to_litr3c(i)    = val
      end if
      ccf%hrv_gresp_storage_to_litr1c(i)      = val
      ccf%hrv_leafc_xfer_to_litr1c(i)         = val
      ccf%hrv_frootc_xfer_to_litr1c(i)        = val
      ccf%hrv_livestemc_xfer_to_litr1c(i)     = val
      ccf%hrv_deadstemc_xfer_to_litr1c(i)     = val
      ccf%hrv_livecrootc_xfer_to_litr1c(i)    = val
      ccf%hrv_deadcrootc_xfer_to_litr1c(i)    = val
      ccf%hrv_gresp_xfer_to_litr1c(i)         = val
      ccf%m_deadstemc_to_cwdc_fire(i)         = val
      ccf%m_deadcrootc_to_cwdc_fire(i)        = val
      ccf%m_litr1c_to_fire(i)                 = val
      ccf%m_litr2c_to_fire(i)                 = val
      ccf%m_litr3c_to_fire(i)                 = val
      ccf%m_cwdc_to_fire(i)                   = val
      ccf%prod10c_loss(i)                     = val
      ccf%prod100c_loss(i)                    = val
      ccf%product_closs(i)                    = val
      ccf%leafc_to_litr1c(i)                  = val
      ccf%leafc_to_litr2c(i)                  = val
      ccf%leafc_to_litr3c(i)                  = val
      ccf%frootc_to_litr1c(i)                 = val
      ccf%frootc_to_litr2c(i)                 = val
      ccf%frootc_to_litr3c(i)                 = val
      ccf%cwdc_to_litr2c(i)                   = val
      ccf%cwdc_to_litr3c(i)                   = val
      ccf%litr1_hr(i)                         = val
      ccf%litr1c_to_soil1c(i)                 = val
      ccf%litr2_hr(i)                         = val
      ccf%litr2c_to_soil2c(i)                 = val
      ccf%litr3_hr(i)                         = val
      ccf%litr3c_to_soil3c(i)                 = val
      ccf%soil1_hr(i)                         = val
      ccf%soil1c_to_soil2c(i)                 = val
      ccf%soil2_hr(i)                         = val
      ccf%soil2c_to_soil3c(i)                 = val
      ccf%soil3_hr(i)                         = val
      ccf%soil3c_to_soil4c(i)                 = val
      ccf%soil4_hr(i)                         = val
      ccf%lithr(i)                            = val
      ccf%somhr(i)                            = val
      ccf%hr(i)                               = val
      ccf%sr(i)                               = val
      ccf%er(i)                               = val
      ccf%litfire(i)                          = val
      ccf%somfire(i)                          = val
      ccf%totfire(i)                          = val
      ccf%nep(i)                              = val
      ccf%nbp(i)                              = val
      ccf%nee(i)                              = val
      ccf%col_cinputs(i)                      = val
      ccf%col_coutputs(i)                     = val
      ccf%col_fire_closs(i)                   = val
      ccf%cwdc_hr(i)                          = val
      ccf%cwdc_loss(i)                        = val
      ccf%litterc_loss(i)                     = val

  end do

end subroutine CNSetCcf
!-----------------------------------------------------------------------

!-----------------------------------------------------------------------
!BOP
!
! !IROUTINE: CNSetCnf
!
! !INTERFACE:
subroutine CNSetCnf(num, filter, val, cnf)
!
! !DESCRIPTION:
! Set column nitrogen flux variables
!
! !USES:
    use surfrdMod , only : crop_prog
! !ARGUMENTS:
    implicit none
    integer , intent(in) :: num
    integer , intent(in) :: filter(:)
    real(r8), intent(in) :: val
    type (column_nflux_type), intent(inout) :: cnf
!
! !REVISION HISTORY:
! Created by Peter Thornton
!
! !LOCAL VARIABLES:
! local pointers to implicit in/out arrays
!
! !OTHER LOCAL VARIABLES:
   integer :: fi,i     ! loop index
!EOP
!------------------------------------------------------------------------

   do fi = 1,num
      i = filter(fi)
      cnf%ndep_to_sminn(i) = val
      cnf%nfix_to_sminn(i) = val
      cnf%m_leafn_to_litr1n(i) = val
      cnf%m_leafn_to_litr2n(i) = val
      cnf%m_leafn_to_litr3n(i) = val
      cnf%m_frootn_to_litr1n(i) = val
      cnf%m_frootn_to_litr2n(i) = val
      cnf%m_frootn_to_litr3n(i) = val
      cnf%m_leafn_storage_to_litr1n(i) = val
      cnf%m_frootn_storage_to_litr1n(i) = val
      cnf%m_livestemn_storage_to_litr1n(i) = val
      cnf%m_deadstemn_storage_to_litr1n(i) = val
      cnf%m_livecrootn_storage_to_litr1n(i) = val
      cnf%m_deadcrootn_storage_to_litr1n(i) = val
      cnf%m_leafn_xfer_to_litr1n(i) = val
      cnf%m_frootn_xfer_to_litr1n(i) = val
      cnf%m_livestemn_xfer_to_litr1n(i) = val
      cnf%m_deadstemn_xfer_to_litr1n(i) = val
      cnf%m_livecrootn_xfer_to_litr1n(i) = val
      cnf%m_deadcrootn_xfer_to_litr1n(i) = val
      cnf%m_livestemn_to_cwdn(i) = val
      cnf%m_deadstemn_to_cwdn(i) = val
      cnf%m_livecrootn_to_cwdn(i) = val
      cnf%m_deadcrootn_to_cwdn(i) = val
      cnf%m_retransn_to_litr1n(i) = val
      cnf%hrv_leafn_to_litr1n(i) = val             
      cnf%hrv_leafn_to_litr2n(i) = val             
      cnf%hrv_leafn_to_litr3n(i) = val             
      cnf%hrv_frootn_to_litr1n(i) = val            
      cnf%hrv_frootn_to_litr2n(i) = val            
      cnf%hrv_frootn_to_litr3n(i) = val            
      cnf%hrv_livestemn_to_cwdn(i) = val           
      cnf%hrv_deadstemn_to_prod10n(i) = val        
      cnf%hrv_deadstemn_to_prod100n(i) = val       
      cnf%hrv_livecrootn_to_cwdn(i) = val          
      cnf%hrv_deadcrootn_to_cwdn(i) = val          
      cnf%hrv_retransn_to_litr1n(i) = val          
      cnf%hrv_leafn_storage_to_litr1n(i) = val     
      cnf%hrv_frootn_storage_to_litr1n(i) = val    
      cnf%hrv_livestemn_storage_to_litr1n(i) = val 
      cnf%hrv_deadstemn_storage_to_litr1n(i) = val 
      cnf%hrv_livecrootn_storage_to_litr1n(i) = val
      cnf%hrv_deadcrootn_storage_to_litr1n(i) = val
      cnf%hrv_leafn_xfer_to_litr1n(i) = val        
      cnf%hrv_frootn_xfer_to_litr1n(i) = val       
      cnf%hrv_livestemn_xfer_to_litr1n(i) = val    
      cnf%hrv_deadstemn_xfer_to_litr1n(i) = val    
      cnf%hrv_livecrootn_xfer_to_litr1n(i) = val   
      cnf%hrv_deadcrootn_xfer_to_litr1n(i) = val   
      cnf%m_deadstemn_to_cwdn_fire(i) = val
      cnf%m_deadcrootn_to_cwdn_fire(i) = val
      cnf%m_litr1n_to_fire(i) = val
      cnf%m_litr2n_to_fire(i) = val
      cnf%m_litr3n_to_fire(i) = val
      cnf%m_cwdn_to_fire(i) = val
      cnf%prod10n_loss(i) = val
      cnf%prod100n_loss(i) = val
      cnf%product_nloss(i) = val
      if ( crop_prog )then
         cnf%grainn_to_litr1n(i)    = val
         cnf%grainn_to_litr2n(i)    = val
         cnf%grainn_to_litr3n(i)    = val
         cnf%livestemn_to_litr1n(i) = val
         cnf%livestemn_to_litr2n(i) = val
         cnf%livestemn_to_litr3n(i) = val
      end if
      cnf%leafn_to_litr1n(i) = val
      cnf%leafn_to_litr2n(i) = val
      cnf%leafn_to_litr3n(i) = val
      cnf%frootn_to_litr1n(i) = val
      cnf%frootn_to_litr2n(i) = val
      cnf%frootn_to_litr3n(i) = val
      cnf%cwdn_to_litr2n(i) = val
      cnf%cwdn_to_litr3n(i) = val
      cnf%litr1n_to_soil1n(i) = val
      cnf%sminn_to_soil1n_l1(i) = val
      cnf%litr2n_to_soil2n(i) = val
      cnf%sminn_to_soil2n_l2(i) = val
      cnf%litr3n_to_soil3n(i) = val
      cnf%sminn_to_soil3n_l3(i) = val
      cnf%soil1n_to_soil2n(i) = val
      cnf%sminn_to_soil2n_s1(i) = val
      cnf%soil2n_to_soil3n(i) = val
      cnf%sminn_to_soil3n_s2(i) = val
      cnf%soil3n_to_soil4n(i) = val
      cnf%sminn_to_soil4n_s3(i) = val
      cnf%soil4n_to_sminn(i) = val
      cnf%sminn_to_denit_l1s1(i) = val
      cnf%sminn_to_denit_l2s2(i) = val
      cnf%sminn_to_denit_l3s3(i) = val
      cnf%sminn_to_denit_s1s2(i) = val
      cnf%sminn_to_denit_s2s3(i) = val
      cnf%sminn_to_denit_s3s4(i) = val
      cnf%sminn_to_denit_s4(i) = val
      cnf%sminn_to_denit_excess(i) = val
      cnf%sminn_leached(i) = val
      cnf%potential_immob(i) = val
      cnf%actual_immob(i) = val
      cnf%sminn_to_plant(i) = val
      cnf%supplement_to_sminn(i) = val
      cnf%gross_nmin(i) = val
      cnf%net_nmin(i) = val
      cnf%denit(i) = val
      cnf%col_ninputs(i) = val
      cnf%col_noutputs(i) = val
      cnf%col_fire_nloss(i) = val
   end do

end subroutine CNSetCnf

!-----------------------------------------------------------------------
!! add phosphorus 
!-----------------------------------------------------------------------
!BOP
!
! !IROUTINE: CNSetCphof
!
! !INTERFACE:
subroutine CNSetCphof(num, filter, val, cphof)
!
! !DESCRIPTION:
! Set column phosphorus flux variables
!
! !USES:
    use surfrdMod , only : crop_prog
! !ARGUMENTS:
    implicit none
    integer , intent(in) :: num
    integer , intent(in) :: filter(:)
    real(r8), intent(in) :: val
    type (column_phoflux_type), intent(inout) :: cphof
!
! !REVISION HISTORY:
! Created by Peter Thornton
!
! !LOCAL VARIABLES:
! local pointers to implicit in/out arrays
!
! !OTHER LOCAL VARIABLES:
   integer :: fi,i     ! loop index
!EOP
!------------------------------------------------------------------------

   do fi = 1,num
      i = filter(fi)
      cphof%primp_to_labilep(i) =val
      cphof%labilep_to_secondp(i) =val
      cphof%secondp_to_labilep(i) =val
      cphof%secondp_to_occlp(i) =val
      cphof%m_leafp_to_litr1p(i) = val
      cphof%m_leafp_to_litr2p(i) = val
      cphof%m_leafp_to_litr3p(i) = val
      cphof%m_frootp_to_litr1p(i) = val
      cphof%m_frootp_to_litr2p(i) = val
      cphof%m_frootp_to_litr3p(i) = val
      cphof%m_leafp_storage_to_litr1p(i) = val
      cphof%m_frootp_storage_to_litr1p(i) = val
      cphof%m_livestemp_storage_to_litr1p(i) = val
      cphof%m_deadstemp_storage_to_litr1p(i) = val
      cphof%m_livecrootp_storage_to_litr1p(i) = val
      cphof%m_deadcrootp_storage_to_litr1p(i) = val
      cphof%m_leafp_xfer_to_litr1p(i) = val
      cphof%m_frootp_xfer_to_litr1p(i) = val
      cphof%m_livestemp_xfer_to_litr1p(i) = val
      cphof%m_deadstemp_xfer_to_litr1p(i) = val
      cphof%m_livecrootp_xfer_to_litr1p(i) = val
      cphof%m_deadcrootp_xfer_to_litr1p(i) = val
      cphof%m_livestemp_to_cwdp(i) = val
      cphof%m_deadstemp_to_cwdp(i) = val
      cphof%m_livecrootp_to_cwdp(i) = val
      cphof%m_deadcrootp_to_cwdp(i) = val
      cphof%m_retransp_to_litr1p(i) = val
      cphof%hrv_leafp_to_litr1p(i) = val
      cphof%hrv_leafp_to_litr2p(i) = val
      cphof%hrv_leafp_to_litr3p(i) = val
      cphof%hrv_frootp_to_litr1p(i) = val
      cphof%hrv_frootp_to_litr2p(i) = val
      cphof%hrv_frootp_to_litr3p(i) = val
      cphof%hrv_livestemp_to_cwdp(i) = val
      cphof%hrv_deadstemp_to_prod10p(i) = val
      cphof%hrv_deadstemp_to_prod100p(i) = val
      cphof%hrv_livecrootp_to_cwdp(i) = val
      cphof%hrv_deadcrootp_to_cwdp(i) = val
      cphof%hrv_retransp_to_litr1p(i) = val
      cphof%hrv_leafp_storage_to_litr1p(i) = val
      cphof%hrv_frootp_storage_to_litr1p(i) = val
      cphof%hrv_livestemp_storage_to_litr1p(i) = val
      cphof%hrv_deadstemp_storage_to_litr1p(i) = val
      cphof%hrv_livecrootp_storage_to_litr1p(i) = val
      cphof%hrv_deadcrootp_storage_to_litr1p(i) = val
      cphof%hrv_leafp_xfer_to_litr1p(i) = val
      cphof%hrv_frootp_xfer_to_litr1p(i) = val
      cphof%hrv_livestemp_xfer_to_litr1p(i) = val
      cphof%hrv_deadstemp_xfer_to_litr1p(i) = val
      cphof%hrv_livecrootp_xfer_to_litr1p(i) = val
      cphof%hrv_deadcrootp_xfer_to_litr1p(i) = val
      cphof%m_deadstemp_to_cwdp_fire(i) = val
      cphof%m_deadcrootp_to_cwdp_fire(i) = val
      cphof%m_litr1p_to_fire(i) = val
      cphof%m_litr2p_to_fire(i) = val
      cphof%m_litr3p_to_fire(i) = val
      cphof%m_cwdp_to_fire(i) = val
      cphof%prod10p_loss(i) = val
      cphof%prod100p_loss(i) = val
      cphof%product_ploss(i) = val
      if ( crop_prog )then
         cphof%grainp_to_litr1p(i) = val
         cphof%grainp_to_litr2p(i) = val
         cphof%grainp_to_litr3p(i) = val
         cphof%livestemp_to_litr1p(i) = val
         cphof%livestemp_to_litr2p(i) = val
         cphof%livestemp_to_litr3p(i) = val
      end if
      cphof%leafp_to_litr1p(i) = val
      cphof%leafp_to_litr2p(i) = val
      cphof%leafp_to_litr3p(i) = val
      cphof%frootp_to_litr1p(i) = val
      cphof%frootp_to_litr2p(i) = val
      cphof%frootp_to_litr3p(i) = val
      cphof%cwdp_to_litr2p(i) = val
      cphof%cwdp_to_litr3p(i) = val
      cphof%litr1p_to_soil1p(i) = val
      cphof%sminp_to_soil1p_l1(i) = val
      cphof%litr2p_to_soil2p(i) = val
      cphof%sminp_to_soil2p_l2(i) = val
      cphof%litr3p_to_soil3p(i) = val
      cphof%sminp_to_soil3p_l3(i) = val
      cphof%soil1p_to_soil2p(i) = val
      cphof%sminp_to_soil2p_s1(i) = val
      cphof%soil2p_to_soil3p(i) = val
      cphof%sminp_to_soil3p_s2(i) = val
      cphof%soil3p_to_soil4p(i) = val
      cphof%sminp_to_soil4p_s3(i) = val
      cphof%soil4p_to_sminp(i) = val
      cphof%soil1p_to_sminp_biochem(i) = val
      cphof%soil2p_to_sminp_biochem(i) = val
      cphof%soil3p_to_sminp_biochem(i) = val
      cphof%soil4p_to_sminp_biochem(i) = val
!      cphof%sminn_to_denit_l1s1(i) = val
!      cphof%sminn_to_denit_l2s2(i) = val
!      cphof%sminn_to_denit_l3s3(i) = val
!      cphof%sminn_to_denit_s1s2(i) = val
!      cphof%sminn_to_denit_s2s3(i) = val
!      cphof%sminn_to_denit_s3s4(i) = val
!      cphof%sminn_to_denit_s4(i) = val
!      cphof%sminn_to_denit_excess(i) = val
      cphof%sminp_leached(i) = val
      cphof%potential_immob_p(i) = val
      cphof%actual_immob_p(i) = val
      cphof%sminp_to_plant(i) = val
      cphof%supplement_to_sminp(i) = val
      cphof%gross_pmin(i) = val
      cphof%net_pmin(i) = val
      cphof%biochem_pmin(i) = val
!      cphof%denit(i) = val
      cphof%col_pinputs(i) = val
      cphof%col_poutputs(i) = val
      cphof%col_fire_ploss(i) = val
   end do

end subroutine CNSetCphof

!-----------------------------------------------------------------------

#endif

end module CNSetValueMod
