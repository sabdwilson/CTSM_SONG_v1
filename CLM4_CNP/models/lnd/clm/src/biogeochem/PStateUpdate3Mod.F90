
module PStateUpdate3Mod
#ifdef CN

!-----------------------------------------------------------------------
!BOP
!
! !MODULE: PStateUpdate3Mod
!
! !DESCRIPTION:
! Module for phosphorus state variable update, mortality fluxes.
! Also, sminp leaching flux.
!
! !USES:
    use shr_kind_mod, only: r8 => shr_kind_r8
    implicit none
    save
    private
! !PUBLIC MEMBER FUNCTIONS:
    public:: PStateUpdate3
!
! !REVISION HISTORY:
! 7/27/2004: Created by Peter Thornton
!
!EOP
!-----------------------------------------------------------------------

contains

!-----------------------------------------------------------------------
!BOP
!
! !IROUTINE: PStateUpdate3
!
! !INTERFACE:
subroutine PStateUpdate3(num_soilc, filter_soilc, num_soilp, filter_soilp)
!
! !DESCRIPTION:
! On the radiation time step, update all the prognostic phosphorus state
! variables affected by gap-phase mortality fluxes. Also the Sminn leaching flux.
!
! !USES:
   use clmtype
   use clm_time_manager, only: get_step_size
!
! !ARGUMENTS:
   implicit none
   integer, intent(in) :: num_soilc       ! number of soil columns in filter
   integer, intent(in) :: filter_soilc(:) ! filter for soil columns
   integer, intent(in) :: num_soilp       ! number of soil pfts in filter
   integer, intent(in) :: filter_soilp(:) ! filter for soil pfts
!
! !CALLED FROM:
! subroutine CNEcosystemDyn
!
! !REVISION HISTORY:
! 8/1/03: Created by Peter Thornton
!
! !LOCAL VARIABLES:
! local pointers to implicit in scalars
   real(r8), pointer :: sminp_leached(:) 
   real(r8), pointer :: m_cwdp_to_fire(:)
   real(r8), pointer :: m_deadcrootp_to_cwdp_fire(:)
   real(r8), pointer :: m_deadstemp_to_cwdp_fire(:)
   real(r8), pointer :: m_litr1p_to_fire(:)
   real(r8), pointer :: m_litr2p_to_fire(:)
   real(r8), pointer :: m_litr3p_to_fire(:)
   real(r8), pointer :: m_deadcrootp_storage_to_fire(:)
   real(r8), pointer :: m_deadcrootp_to_fire(:)
   real(r8), pointer :: m_deadcrootp_to_litter_fire(:)
   real(r8), pointer :: m_deadcrootp_xfer_to_fire(:)
   real(r8), pointer :: m_deadstemp_storage_to_fire(:)
   real(r8), pointer :: m_deadstemp_to_fire(:)
   real(r8), pointer :: m_deadstemp_to_litter_fire(:)
   real(r8), pointer :: m_deadstemp_xfer_to_fire(:)
   real(r8), pointer :: m_frootp_storage_to_fire(:)
   real(r8), pointer :: m_frootp_to_fire(:)
   real(r8), pointer :: m_frootp_xfer_to_fire(:)
   real(r8), pointer :: m_leafp_storage_to_fire(:)
   real(r8), pointer :: m_leafp_to_fire(:)
   real(r8), pointer :: m_leafp_xfer_to_fire(:)
   real(r8), pointer :: m_livecrootp_storage_to_fire(:)
   real(r8), pointer :: m_livecrootp_to_fire(:)
   real(r8), pointer :: m_livecrootp_xfer_to_fire(:)
   real(r8), pointer :: m_livestemp_storage_to_fire(:)
   real(r8), pointer :: m_livestemp_to_fire(:)
   real(r8), pointer :: m_livestemp_xfer_to_fire(:)
   real(r8), pointer :: m_retransp_to_fire(:)
!
! local pointers to implicit in/out scalars
   real(r8), pointer :: labilep(:)              ! (gN/m2) soil mineral N
   real(r8), pointer :: cwdp(:)               ! (gN/m2) coarse woody debris N
   real(r8), pointer :: litr1p(:)             ! (gN/m2) litter labile N
   real(r8), pointer :: litr2p(:)             ! (gN/m2) litter cellulose N
   real(r8), pointer :: litr3p(:)             ! (gN/m2) litter lignin N
   real(r8), pointer :: deadcrootp(:)         ! (gN/m2) dead coarse root N
   real(r8), pointer :: deadcrootp_storage(:) ! (gN/m2) dead coarse root N storage
   real(r8), pointer :: deadcrootp_xfer(:)    ! (gN/m2) dead coarse root N transfer
   real(r8), pointer :: deadstemp(:)          ! (gN/m2) dead stem N
   real(r8), pointer :: deadstemp_storage(:)  ! (gN/m2) dead stem N storage
   real(r8), pointer :: deadstemp_xfer(:)     ! (gN/m2) dead stem N transfer
   real(r8), pointer :: frootp(:)             ! (gN/m2) fine root N
   real(r8), pointer :: frootp_storage(:)     ! (gN/m2) fine root N storage
   real(r8), pointer :: frootp_xfer(:)        ! (gN/m2) fine root N transfer
   real(r8), pointer :: leafp(:)              ! (gN/m2) leaf N
   real(r8), pointer :: leafp_storage(:)      ! (gN/m2) leaf N storage
   real(r8), pointer :: leafp_xfer(:)         ! (gN/m2) leaf N transfer
   real(r8), pointer :: livecrootp(:)         ! (gN/m2) live coarse root N
   real(r8), pointer :: livecrootp_storage(:) ! (gN/m2) live coarse root N storage
   real(r8), pointer :: livecrootp_xfer(:)    ! (gN/m2) live coarse root N transfer
   real(r8), pointer :: livestemp(:)          ! (gN/m2) live stem N
   real(r8), pointer :: livestemp_storage(:)  ! (gN/m2) live stem N storage
   real(r8), pointer :: livestemp_xfer(:)     ! (gN/m2) live stem N transfer
   real(r8), pointer :: retransp(:)           ! (gN/m2) plant pool of retranslocated N
!
! local pointers to implicit out scalars
!
! !OTHER LOCAL VARIABLES:
   integer :: c,p        ! indices
   integer :: fp,fc      ! lake filter indices
   real(r8):: dt         ! radiation time step (seconds)

!EOP
!-----------------------------------------------------------------------

    ! assign local pointers at the column level
    sminp_leached                  => clm3%g%l%c%cphof%sminp_leached
    m_cwdp_to_fire                 => clm3%g%l%c%cphof%m_cwdp_to_fire
    m_deadcrootp_to_cwdp_fire      => clm3%g%l%c%cphof%m_deadcrootp_to_cwdp_fire
    m_deadstemp_to_cwdp_fire       => clm3%g%l%c%cphof%m_deadstemp_to_cwdp_fire
    m_litr1p_to_fire               => clm3%g%l%c%cphof%m_litr1p_to_fire
    m_litr2p_to_fire               => clm3%g%l%c%cphof%m_litr2p_to_fire
    m_litr3p_to_fire               => clm3%g%l%c%cphof%m_litr3p_to_fire
    labilep                          => clm3%g%l%c%cphos%labilep
    cwdp                           => clm3%g%l%c%cphos%cwdp
    litr1p                         => clm3%g%l%c%cphos%litr1p
    litr2p                         => clm3%g%l%c%cphos%litr2p
    litr3p                         => clm3%g%l%c%cphos%litr3p

    ! assign local pointers at the pft level
    m_deadcrootp_storage_to_fire   => clm3%g%l%c%p%pphof%m_deadcrootp_storage_to_fire
    m_deadcrootp_to_fire           => clm3%g%l%c%p%pphof%m_deadcrootp_to_fire
    m_deadcrootp_to_litter_fire    => clm3%g%l%c%p%pphof%m_deadcrootp_to_litter_fire
    m_deadcrootp_xfer_to_fire      => clm3%g%l%c%p%pphof%m_deadcrootp_xfer_to_fire
    m_deadstemp_storage_to_fire    => clm3%g%l%c%p%pphof%m_deadstemp_storage_to_fire
    m_deadstemp_to_fire            => clm3%g%l%c%p%pphof%m_deadstemp_to_fire
    m_deadstemp_to_litter_fire     => clm3%g%l%c%p%pphof%m_deadstemp_to_litter_fire
    m_deadstemp_xfer_to_fire       => clm3%g%l%c%p%pphof%m_deadstemp_xfer_to_fire
    m_frootp_storage_to_fire       => clm3%g%l%c%p%pphof%m_frootp_storage_to_fire
    m_frootp_to_fire               => clm3%g%l%c%p%pphof%m_frootp_to_fire
    m_frootp_xfer_to_fire          => clm3%g%l%c%p%pphof%m_frootp_xfer_to_fire
    m_leafp_storage_to_fire        => clm3%g%l%c%p%pphof%m_leafp_storage_to_fire
    m_leafp_to_fire                => clm3%g%l%c%p%pphof%m_leafp_to_fire
    m_leafp_xfer_to_fire           => clm3%g%l%c%p%pphof%m_leafp_xfer_to_fire
    m_livecrootp_storage_to_fire   => clm3%g%l%c%p%pphof%m_livecrootp_storage_to_fire
    m_livecrootp_to_fire           => clm3%g%l%c%p%pphof%m_livecrootp_to_fire
    m_livecrootp_xfer_to_fire      => clm3%g%l%c%p%pphof%m_livecrootp_xfer_to_fire
    m_livestemp_storage_to_fire    => clm3%g%l%c%p%pphof%m_livestemp_storage_to_fire
    m_livestemp_to_fire            => clm3%g%l%c%p%pphof%m_livestemp_to_fire
    m_livestemp_xfer_to_fire       => clm3%g%l%c%p%pphof%m_livestemp_xfer_to_fire
    m_retransp_to_fire             => clm3%g%l%c%p%pphof%m_retransp_to_fire
    deadcrootp                     => clm3%g%l%c%p%pphos%deadcrootp
    deadcrootp_storage             => clm3%g%l%c%p%pphos%deadcrootp_storage
    deadcrootp_xfer                => clm3%g%l%c%p%pphos%deadcrootp_xfer
    deadstemp                      => clm3%g%l%c%p%pphos%deadstemp
    deadstemp_storage              => clm3%g%l%c%p%pphos%deadstemp_storage
    deadstemp_xfer                 => clm3%g%l%c%p%pphos%deadstemp_xfer
    frootp                         => clm3%g%l%c%p%pphos%frootp
    frootp_storage                 => clm3%g%l%c%p%pphos%frootp_storage
    frootp_xfer                    => clm3%g%l%c%p%pphos%frootp_xfer
    leafp                          => clm3%g%l%c%p%pphos%leafp
    leafp_storage                  => clm3%g%l%c%p%pphos%leafp_storage
    leafp_xfer                     => clm3%g%l%c%p%pphos%leafp_xfer
    livecrootp                     => clm3%g%l%c%p%pphos%livecrootp
    livecrootp_storage             => clm3%g%l%c%p%pphos%livecrootp_storage
    livecrootp_xfer                => clm3%g%l%c%p%pphos%livecrootp_xfer
    livestemp                      => clm3%g%l%c%p%pphos%livestemp
    livestemp_storage              => clm3%g%l%c%p%pphos%livestemp_storage
    livestemp_xfer                 => clm3%g%l%c%p%pphos%livestemp_xfer
    retransp                       => clm3%g%l%c%p%pphos%retransp

   ! set time steps
   dt = real( get_step_size(), r8 )

   ! column loop
   do fc = 1,num_soilc
      c = filter_soilc(fc)

      ! leaching flux for P moved to PStateUpdate1 
!      ! mineral N loss due to leaching
!      labilep(c) = labilep(c) - sminp_leached(c) * dt
!      print*, labilep(c), ' labile P after leaching '   

      ! column level nitrogen fluxes from fire
      
      ! pft-level wood to column-level CWD (uncombusted wood)
      cwdp(c) = cwdp(c) + m_deadstemp_to_cwdp_fire(c) * dt
      cwdp(c) = cwdp(c) + m_deadcrootp_to_cwdp_fire(c) * dt

      ! litter and CWD losses to fire
      litr1p(c) = litr1p(c) - m_litr1p_to_fire(c) * dt
      litr2p(c) = litr2p(c) - m_litr2p_to_fire(c) * dt
      litr3p(c) = litr3p(c) - m_litr3p_to_fire(c) * dt
      cwdp(c)   = cwdp(c)   - m_cwdp_to_fire(c)   * dt

   end do ! end of column loop

   ! pft loop
   do fp = 1,num_soilp
      p = filter_soilp(fp)

      ! pft-level nitrogen fluxes from fire
      ! displayed pools
      leafp(p)      = leafp(p)      - m_leafp_to_fire(p)             * dt
      frootp(p)     = frootp(p)     - m_frootp_to_fire(p)            * dt
      livestemp(p)  = livestemp(p)  - m_livestemp_to_fire(p)         * dt
      deadstemp(p)  = deadstemp(p)  - m_deadstemp_to_fire(p)         * dt
      deadstemp(p)  = deadstemp(p)  - m_deadstemp_to_litter_fire(p)  * dt
      livecrootp(p) = livecrootp(p) - m_livecrootp_to_fire(p)        * dt
      deadcrootp(p) = deadcrootp(p) - m_deadcrootp_to_fire(p)        * dt
      deadcrootp(p) = deadcrootp(p) - m_deadcrootp_to_litter_fire(p) * dt

      ! storage pools
      leafp_storage(p)      = leafp_storage(p)      - m_leafp_storage_to_fire(p)      * dt
      frootp_storage(p)     = frootp_storage(p)     - m_frootp_storage_to_fire(p)     * dt
      livestemp_storage(p)  = livestemp_storage(p)  - m_livestemp_storage_to_fire(p)  * dt
      deadstemp_storage(p)  = deadstemp_storage(p)  - m_deadstemp_storage_to_fire(p)  * dt
      livecrootp_storage(p) = livecrootp_storage(p) - m_livecrootp_storage_to_fire(p) * dt
      deadcrootp_storage(p) = deadcrootp_storage(p) - m_deadcrootp_storage_to_fire(p) * dt

      ! transfer pools
      leafp_xfer(p)      = leafp_xfer(p)      - m_leafp_xfer_to_fire(p)      * dt
      frootp_xfer(p)     = frootp_xfer(p)     - m_frootp_xfer_to_fire(p)     * dt
      livestemp_xfer(p)  = livestemp_xfer(p)  - m_livestemp_xfer_to_fire(p)  * dt
      deadstemp_xfer(p)  = deadstemp_xfer(p)  - m_deadstemp_xfer_to_fire(p)  * dt
      livecrootp_xfer(p) = livecrootp_xfer(p) - m_livecrootp_xfer_to_fire(p) * dt
      deadcrootp_xfer(p) = deadcrootp_xfer(p) - m_deadcrootp_xfer_to_fire(p) * dt

      ! retranslocated N pool
      retransp(p) = retransp(p) - m_retransp_to_fire(p) * dt

   end do

end subroutine PStateUpdate3
!-----------------------------------------------------------------------
#endif

end module PStateUpdate3Mod
