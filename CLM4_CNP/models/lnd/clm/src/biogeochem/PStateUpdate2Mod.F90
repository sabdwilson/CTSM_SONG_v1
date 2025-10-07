
module PStateUpdate2Mod
#ifdef CN

!-----------------------------------------------------------------------
!BOP
!
! !MODULE: PStateUpdate2Mod
!
! !DESCRIPTION:
! Module for phosphorus state variable update, mortality fluxes.
!
! !USES:
    use shr_kind_mod, only: r8 => shr_kind_r8
    implicit none
    save
    private
! !PUBLIC MEMBER FUNCTIONS:
    public:: PStateUpdate2
    public:: PStateUpdate2h
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
! !IROUTINE: PStateUpdate2
!
! !INTERFACE:
subroutine PStateUpdate2(num_soilc, filter_soilc, num_soilp, filter_soilp)
!
! !DESCRIPTION:
! On the radiation time step, update all the prognostic nitrogen state
! variables affected by gap-phase mortality fluxes
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
!
   real(r8), pointer :: m_deadcrootp_storage_to_litr1p(:)
   real(r8), pointer :: m_deadcrootp_to_cwdp(:)
   real(r8), pointer :: m_deadcrootp_xfer_to_litr1p(:)
   real(r8), pointer :: m_deadstemp_storage_to_litr1p(:)
   real(r8), pointer :: m_deadstemp_to_cwdp(:)
   real(r8), pointer :: m_deadstemp_xfer_to_litr1p(:)
   real(r8), pointer :: m_frootp_storage_to_litr1p(:)
   real(r8), pointer :: m_frootp_to_litr1p(:)
   real(r8), pointer :: m_frootp_to_litr2p(:)
   real(r8), pointer :: m_frootp_to_litr3p(:)
   real(r8), pointer :: m_frootp_xfer_to_litr1p(:)
   real(r8), pointer :: m_leafp_storage_to_litr1p(:)
   real(r8), pointer :: m_leafp_to_litr1p(:)
   real(r8), pointer :: m_leafp_to_litr2p(:)
   real(r8), pointer :: m_leafp_to_litr3p(:)
   real(r8), pointer :: m_leafp_xfer_to_litr1p(:)
   real(r8), pointer :: m_livecrootp_storage_to_litr1p(:)
   real(r8), pointer :: m_livecrootp_to_cwdp(:)
   real(r8), pointer :: m_livecrootp_xfer_to_litr1p(:)
   real(r8), pointer :: m_livestemp_storage_to_litr1p(:)
   real(r8), pointer :: m_livestemp_to_cwdp(:)
   real(r8), pointer :: m_livestemp_xfer_to_litr1p(:)
   real(r8), pointer :: m_retransp_to_litr1p(:)
   real(r8), pointer :: m_deadcrootp_storage_to_litter(:)
   real(r8), pointer :: m_deadcrootp_to_litter(:)
   real(r8), pointer :: m_deadcrootp_xfer_to_litter(:)
   real(r8), pointer :: m_deadstemp_storage_to_litter(:)
   real(r8), pointer :: m_deadstemp_to_litter(:)
   real(r8), pointer :: m_deadstemp_xfer_to_litter(:)
   real(r8), pointer :: m_frootp_storage_to_litter(:)
   real(r8), pointer :: m_frootp_to_litter(:)
   real(r8), pointer :: m_frootp_xfer_to_litter(:)
   real(r8), pointer :: m_leafp_storage_to_litter(:)
   real(r8), pointer :: m_leafp_to_litter(:)
   real(r8), pointer :: m_leafp_xfer_to_litter(:)
   real(r8), pointer :: m_livecrootp_storage_to_litter(:)
   real(r8), pointer :: m_livecrootp_to_litter(:)
   real(r8), pointer :: m_livecrootp_xfer_to_litter(:)
   real(r8), pointer :: m_livestemp_storage_to_litter(:)
   real(r8), pointer :: m_livestemp_to_litter(:)
   real(r8), pointer :: m_livestemp_xfer_to_litter(:)
   real(r8), pointer :: m_retransp_to_litter(:)
!
! local pointers to implicit in/out scalars
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
!
! !OTHER LOCAL VARIABLES:
   integer :: c,p         ! indices
   integer :: fp,fc       ! lake filter indices
   real(r8):: dt          ! radiation time step (seconds)

!EOP
!-----------------------------------------------------------------------
    ! assign local pointers at the column level
    m_deadcrootp_storage_to_litr1p => clm3%g%l%c%cphof%m_deadcrootp_storage_to_litr1p
    m_deadcrootp_to_cwdp           => clm3%g%l%c%cphof%m_deadcrootp_to_cwdp
    m_deadcrootp_xfer_to_litr1p    => clm3%g%l%c%cphof%m_deadcrootp_xfer_to_litr1p
    m_deadstemp_storage_to_litr1p  => clm3%g%l%c%cphof%m_deadstemp_storage_to_litr1p
    m_deadstemp_to_cwdp            => clm3%g%l%c%cphof%m_deadstemp_to_cwdp
    m_deadstemp_xfer_to_litr1p     => clm3%g%l%c%cphof%m_deadstemp_xfer_to_litr1p
    m_frootp_storage_to_litr1p     => clm3%g%l%c%cphof%m_frootp_storage_to_litr1p
    m_frootp_to_litr1p             => clm3%g%l%c%cphof%m_frootp_to_litr1p
    m_frootp_to_litr2p             => clm3%g%l%c%cphof%m_frootp_to_litr2p
    m_frootp_to_litr3p             => clm3%g%l%c%cphof%m_frootp_to_litr3p
    m_frootp_xfer_to_litr1p        => clm3%g%l%c%cphof%m_frootp_xfer_to_litr1p
    m_leafp_storage_to_litr1p      => clm3%g%l%c%cphof%m_leafp_storage_to_litr1p
    m_leafp_to_litr1p              => clm3%g%l%c%cphof%m_leafp_to_litr1p
    m_leafp_to_litr2p              => clm3%g%l%c%cphof%m_leafp_to_litr2p
    m_leafp_to_litr3p              => clm3%g%l%c%cphof%m_leafp_to_litr3p
    m_leafp_xfer_to_litr1p         => clm3%g%l%c%cphof%m_leafp_xfer_to_litr1p
    m_livecrootp_storage_to_litr1p => clm3%g%l%c%cphof%m_livecrootp_storage_to_litr1p
    m_livecrootp_to_cwdp           => clm3%g%l%c%cphof%m_livecrootp_to_cwdp
    m_livecrootp_xfer_to_litr1p    => clm3%g%l%c%cphof%m_livecrootp_xfer_to_litr1p
    m_livestemp_storage_to_litr1p  => clm3%g%l%c%cphof%m_livestemp_storage_to_litr1p
    m_livestemp_to_cwdp            => clm3%g%l%c%cphof%m_livestemp_to_cwdp
    m_livestemp_xfer_to_litr1p     => clm3%g%l%c%cphof%m_livestemp_xfer_to_litr1p
    m_retransp_to_litr1p           => clm3%g%l%c%cphof%m_retransp_to_litr1p
    cwdp                           => clm3%g%l%c%cphos%cwdp
    litr1p                         => clm3%g%l%c%cphos%litr1p
    litr2p                         => clm3%g%l%c%cphos%litr2p
    litr3p                         => clm3%g%l%c%cphos%litr3p

    ! assign local pointers at the pft level
    m_deadcrootp_storage_to_litter => clm3%g%l%c%p%pphof%m_deadcrootp_storage_to_litter
    m_deadcrootp_to_litter         => clm3%g%l%c%p%pphof%m_deadcrootp_to_litter
    m_deadcrootp_xfer_to_litter    => clm3%g%l%c%p%pphof%m_deadcrootp_xfer_to_litter
    m_deadstemp_storage_to_litter  => clm3%g%l%c%p%pphof%m_deadstemp_storage_to_litter
    m_deadstemp_to_litter          => clm3%g%l%c%p%pphof%m_deadstemp_to_litter
    m_deadstemp_xfer_to_litter     => clm3%g%l%c%p%pphof%m_deadstemp_xfer_to_litter
    m_frootp_storage_to_litter     => clm3%g%l%c%p%pphof%m_frootp_storage_to_litter
    m_frootp_to_litter             => clm3%g%l%c%p%pphof%m_frootp_to_litter
    m_frootp_xfer_to_litter        => clm3%g%l%c%p%pphof%m_frootp_xfer_to_litter
    m_leafp_storage_to_litter      => clm3%g%l%c%p%pphof%m_leafp_storage_to_litter
    m_leafp_to_litter              => clm3%g%l%c%p%pphof%m_leafp_to_litter
    m_leafp_xfer_to_litter         => clm3%g%l%c%p%pphof%m_leafp_xfer_to_litter
    m_livecrootp_storage_to_litter => clm3%g%l%c%p%pphof%m_livecrootp_storage_to_litter
    m_livecrootp_to_litter         => clm3%g%l%c%p%pphof%m_livecrootp_to_litter
    m_livecrootp_xfer_to_litter    => clm3%g%l%c%p%pphof%m_livecrootp_xfer_to_litter
    m_livestemp_storage_to_litter  => clm3%g%l%c%p%pphof%m_livestemp_storage_to_litter
    m_livestemp_to_litter          => clm3%g%l%c%p%pphof%m_livestemp_to_litter
    m_livestemp_xfer_to_litter     => clm3%g%l%c%p%pphof%m_livestemp_xfer_to_litter
    m_retransp_to_litter           => clm3%g%l%c%p%pphof%m_retransp_to_litter
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

      ! column-level nitrogen fluxes from gap-phase mortality

      ! leaf to litter
      litr1p(c) = litr1p(c) + m_leafp_to_litr1p(c) * dt
      litr2p(c) = litr2p(c) + m_leafp_to_litr2p(c) * dt
      litr3p(c) = litr3p(c) + m_leafp_to_litr3p(c) * dt

      ! fine root to litter
      litr1p(c) = litr1p(c) + m_frootp_to_litr1p(c) * dt
      litr2p(c) = litr2p(c) + m_frootp_to_litr2p(c) * dt
      litr3p(c) = litr3p(c) + m_frootp_to_litr3p(c) * dt

      ! wood to CWD
      cwdp(c) = cwdp(c) + m_livestemp_to_cwdp(c)  * dt
      cwdp(c) = cwdp(c) + m_deadstemp_to_cwdp(c)  * dt
      cwdp(c) = cwdp(c) + m_livecrootp_to_cwdp(c) * dt
      cwdp(c) = cwdp(c) + m_deadcrootp_to_cwdp(c) * dt

      ! retranslocated N pool to litter
      litr1p(c) = litr1p(c) + m_retransp_to_litr1p(c) * dt

      ! storage pools to litter
      litr1p(c) = litr1p(c) + m_leafp_storage_to_litr1p(c)      * dt
      litr1p(c) = litr1p(c) + m_frootp_storage_to_litr1p(c)     * dt
      litr1p(c) = litr1p(c) + m_livestemp_storage_to_litr1p(c)  * dt
      litr1p(c) = litr1p(c) + m_deadstemp_storage_to_litr1p(c)  * dt
      litr1p(c) = litr1p(c) + m_livecrootp_storage_to_litr1p(c) * dt
      litr1p(c) = litr1p(c) + m_deadcrootp_storage_to_litr1p(c) * dt

      ! transfer pools to litter
      litr1p(c) = litr1p(c) + m_leafp_xfer_to_litr1p(c)      * dt
      litr1p(c) = litr1p(c) + m_frootp_xfer_to_litr1p(c)     * dt
      litr1p(c) = litr1p(c) + m_livestemp_xfer_to_litr1p(c)  * dt
      litr1p(c) = litr1p(c) + m_deadstemp_xfer_to_litr1p(c)  * dt
      litr1p(c) = litr1p(c) + m_livecrootp_xfer_to_litr1p(c) * dt
      litr1p(c) = litr1p(c) + m_deadcrootp_xfer_to_litr1p(c) * dt

   end do ! end of column loop

   ! pft loop
   do fp = 1,num_soilp
      p = filter_soilp(fp)

      ! pft-level nitrogen fluxes from gap-phase mortality
      ! displayed pools
      leafp(p)      = leafp(p)      - m_leafp_to_litter(p)      * dt
      frootp(p)     = frootp(p)     - m_frootp_to_litter(p)     * dt
      livestemp(p)  = livestemp(p)  - m_livestemp_to_litter(p)  * dt
      deadstemp(p)  = deadstemp(p)  - m_deadstemp_to_litter(p)  * dt
      livecrootp(p) = livecrootp(p) - m_livecrootp_to_litter(p) * dt
      deadcrootp(p) = deadcrootp(p) - m_deadcrootp_to_litter(p) * dt
      retransp(p)   = retransp(p)   - m_retransp_to_litter(p)   * dt

      ! storage pools
      leafp_storage(p)      = leafp_storage(p)      - m_leafp_storage_to_litter(p)      * dt
      frootp_storage(p)     = frootp_storage(p)     - m_frootp_storage_to_litter(p)     * dt
      livestemp_storage(p)  = livestemp_storage(p)  - m_livestemp_storage_to_litter(p)  * dt
      deadstemp_storage(p)  = deadstemp_storage(p)  - m_deadstemp_storage_to_litter(p)  * dt
      livecrootp_storage(p) = livecrootp_storage(p) - m_livecrootp_storage_to_litter(p) * dt
      deadcrootp_storage(p) = deadcrootp_storage(p) - m_deadcrootp_storage_to_litter(p) * dt

      ! transfer pools
      leafp_xfer(p)      = leafp_xfer(p)      - m_leafp_xfer_to_litter(p)      * dt
      frootp_xfer(p)     = frootp_xfer(p)     - m_frootp_xfer_to_litter(p)     * dt
      livestemp_xfer(p)  = livestemp_xfer(p)  - m_livestemp_xfer_to_litter(p)  * dt
      deadstemp_xfer(p)  = deadstemp_xfer(p)  - m_deadstemp_xfer_to_litter(p)  * dt
      livecrootp_xfer(p) = livecrootp_xfer(p) - m_livecrootp_xfer_to_litter(p) * dt
      deadcrootp_xfer(p) = deadcrootp_xfer(p) - m_deadcrootp_xfer_to_litter(p) * dt

   end do

end subroutine PStateUpdate2
!-----------------------------------------------------------------------

!-----------------------------------------------------------------------
!BOP
!
! !IROUTINE: PStateUpdate2h
!
! !INTERFACE:
subroutine PStateUpdate2h(num_soilc, filter_soilc, num_soilp, filter_soilp)
!
! !DESCRIPTION:
! Update all the prognostic nitrogen state
! variables affected by harvest mortality fluxes
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
!
   real(r8), pointer :: hrv_deadcrootp_storage_to_litr1p(:)
   real(r8), pointer :: hrv_deadcrootp_to_cwdp(:)
   real(r8), pointer :: hrv_deadcrootp_xfer_to_litr1p(:)
   real(r8), pointer :: hrv_deadstemp_storage_to_litr1p(:)
   real(r8), pointer :: hrv_deadstemp_xfer_to_litr1p(:)
   real(r8), pointer :: hrv_frootp_storage_to_litr1p(:)
   real(r8), pointer :: hrv_frootp_to_litr1p(:)
   real(r8), pointer :: hrv_frootp_to_litr2p(:)
   real(r8), pointer :: hrv_frootp_to_litr3p(:)
   real(r8), pointer :: hrv_frootp_xfer_to_litr1p(:)
   real(r8), pointer :: hrv_leafp_storage_to_litr1p(:)
   real(r8), pointer :: hrv_leafp_to_litr1p(:)
   real(r8), pointer :: hrv_leafp_to_litr2p(:)
   real(r8), pointer :: hrv_leafp_to_litr3p(:)
   real(r8), pointer :: hrv_leafp_xfer_to_litr1p(:)
   real(r8), pointer :: hrv_livecrootp_storage_to_litr1p(:)
   real(r8), pointer :: hrv_livecrootp_to_cwdp(:)
   real(r8), pointer :: hrv_livecrootp_xfer_to_litr1p(:)
   real(r8), pointer :: hrv_livestemp_storage_to_litr1p(:)
   real(r8), pointer :: hrv_livestemp_to_cwdp(:)
   real(r8), pointer :: hrv_livestemp_xfer_to_litr1p(:)
   real(r8), pointer :: hrv_retransp_to_litr1p(:)
   real(r8), pointer :: hrv_deadcrootp_storage_to_litter(:)
   real(r8), pointer :: hrv_deadcrootp_to_litter(:)
   real(r8), pointer :: hrv_deadcrootp_xfer_to_litter(:)
   real(r8), pointer :: hrv_deadstemp_storage_to_litter(:)
   real(r8), pointer :: hrv_deadstemp_to_prod10p(:)
   real(r8), pointer :: hrv_deadstemp_to_prod100p(:)
   real(r8), pointer :: hrv_deadstemp_xfer_to_litter(:)
   real(r8), pointer :: hrv_frootp_storage_to_litter(:)
   real(r8), pointer :: hrv_frootp_to_litter(:)
   real(r8), pointer :: hrv_frootp_xfer_to_litter(:)
   real(r8), pointer :: hrv_leafp_storage_to_litter(:)
   real(r8), pointer :: hrv_leafp_to_litter(:)
   real(r8), pointer :: hrv_leafp_xfer_to_litter(:)
   real(r8), pointer :: hrv_livecrootp_storage_to_litter(:)
   real(r8), pointer :: hrv_livecrootp_to_litter(:)
   real(r8), pointer :: hrv_livecrootp_xfer_to_litter(:)
   real(r8), pointer :: hrv_livestemp_storage_to_litter(:)
   real(r8), pointer :: hrv_livestemp_to_litter(:)
   real(r8), pointer :: hrv_livestemp_xfer_to_litter(:)
   real(r8), pointer :: hrv_retransp_to_litter(:)
!
! local pointers to implicit in/out scalars
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
!
! !OTHER LOCAL VARIABLES:
   integer :: c,p         ! indices
   integer :: fp,fc       ! lake filter indices
   real(r8):: dt          ! radiation time step (seconds)

!EOP
!-----------------------------------------------------------------------
    ! assign local pointers at the column level
    hrv_deadcrootp_storage_to_litr1p => clm3%g%l%c%cphof%hrv_deadcrootp_storage_to_litr1p
    hrv_deadcrootp_to_cwdp           => clm3%g%l%c%cphof%hrv_deadcrootp_to_cwdp
    hrv_deadcrootp_xfer_to_litr1p    => clm3%g%l%c%cphof%hrv_deadcrootp_xfer_to_litr1p
    hrv_deadstemp_storage_to_litr1p  => clm3%g%l%c%cphof%hrv_deadstemp_storage_to_litr1p
    hrv_deadstemp_xfer_to_litr1p     => clm3%g%l%c%cphof%hrv_deadstemp_xfer_to_litr1p
    hrv_frootp_storage_to_litr1p     => clm3%g%l%c%cphof%hrv_frootp_storage_to_litr1p
    hrv_frootp_to_litr1p             => clm3%g%l%c%cphof%hrv_frootp_to_litr1p
    hrv_frootp_to_litr2p             => clm3%g%l%c%cphof%hrv_frootp_to_litr2p
    hrv_frootp_to_litr3p             => clm3%g%l%c%cphof%hrv_frootp_to_litr3p
    hrv_frootp_xfer_to_litr1p        => clm3%g%l%c%cphof%hrv_frootp_xfer_to_litr1p
    hrv_leafp_storage_to_litr1p      => clm3%g%l%c%cphof%hrv_leafp_storage_to_litr1p
    hrv_leafp_to_litr1p              => clm3%g%l%c%cphof%hrv_leafp_to_litr1p
    hrv_leafp_to_litr2p              => clm3%g%l%c%cphof%hrv_leafp_to_litr2p
    hrv_leafp_to_litr3p              => clm3%g%l%c%cphof%hrv_leafp_to_litr3p
    hrv_leafp_xfer_to_litr1p         => clm3%g%l%c%cphof%hrv_leafp_xfer_to_litr1p
    hrv_livecrootp_storage_to_litr1p => clm3%g%l%c%cphof%hrv_livecrootp_storage_to_litr1p
    hrv_livecrootp_to_cwdp           => clm3%g%l%c%cphof%hrv_livecrootp_to_cwdp
    hrv_livecrootp_xfer_to_litr1p    => clm3%g%l%c%cphof%hrv_livecrootp_xfer_to_litr1p
    hrv_livestemp_storage_to_litr1p  => clm3%g%l%c%cphof%hrv_livestemp_storage_to_litr1p
    hrv_livestemp_to_cwdp            => clm3%g%l%c%cphof%hrv_livestemp_to_cwdp
    hrv_livestemp_xfer_to_litr1p     => clm3%g%l%c%cphof%hrv_livestemp_xfer_to_litr1p
    hrv_retransp_to_litr1p           => clm3%g%l%c%cphof%hrv_retransp_to_litr1p
    cwdp                           => clm3%g%l%c%cphos%cwdp
    litr1p                         => clm3%g%l%c%cphos%litr1p
    litr2p                         => clm3%g%l%c%cphos%litr2p
    litr3p                         => clm3%g%l%c%cphos%litr3p

    ! assign local pointers at the pft level
    hrv_deadcrootp_storage_to_litter => clm3%g%l%c%p%pphof%hrv_deadcrootp_storage_to_litter
    hrv_deadcrootp_to_litter         => clm3%g%l%c%p%pphof%hrv_deadcrootp_to_litter
    hrv_deadcrootp_xfer_to_litter    => clm3%g%l%c%p%pphof%hrv_deadcrootp_xfer_to_litter
    hrv_deadstemp_storage_to_litter  => clm3%g%l%c%p%pphof%hrv_deadstemp_storage_to_litter
    hrv_deadstemp_to_prod10p         => clm3%g%l%c%p%pphof%hrv_deadstemp_to_prod10p
    hrv_deadstemp_to_prod100p        => clm3%g%l%c%p%pphof%hrv_deadstemp_to_prod100p
    hrv_deadstemp_xfer_to_litter     => clm3%g%l%c%p%pphof%hrv_deadstemp_xfer_to_litter
    hrv_frootp_storage_to_litter     => clm3%g%l%c%p%pphof%hrv_frootp_storage_to_litter
    hrv_frootp_to_litter             => clm3%g%l%c%p%pphof%hrv_frootp_to_litter
    hrv_frootp_xfer_to_litter        => clm3%g%l%c%p%pphof%hrv_frootp_xfer_to_litter
    hrv_leafp_storage_to_litter      => clm3%g%l%c%p%pphof%hrv_leafp_storage_to_litter
    hrv_leafp_to_litter              => clm3%g%l%c%p%pphof%hrv_leafp_to_litter
    hrv_leafp_xfer_to_litter         => clm3%g%l%c%p%pphof%hrv_leafp_xfer_to_litter
    hrv_livecrootp_storage_to_litter => clm3%g%l%c%p%pphof%hrv_livecrootp_storage_to_litter
    hrv_livecrootp_to_litter         => clm3%g%l%c%p%pphof%hrv_livecrootp_to_litter
    hrv_livecrootp_xfer_to_litter    => clm3%g%l%c%p%pphof%hrv_livecrootp_xfer_to_litter
    hrv_livestemp_storage_to_litter  => clm3%g%l%c%p%pphof%hrv_livestemp_storage_to_litter
    hrv_livestemp_to_litter          => clm3%g%l%c%p%pphof%hrv_livestemp_to_litter
    hrv_livestemp_xfer_to_litter     => clm3%g%l%c%p%pphof%hrv_livestemp_xfer_to_litter
    hrv_retransp_to_litter           => clm3%g%l%c%p%pphof%hrv_retransp_to_litter
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

      ! column-level nitrogen fluxes from harvest mortality

      ! leaf to litter
      litr1p(c) = litr1p(c) + hrv_leafp_to_litr1p(c) * dt
      litr2p(c) = litr2p(c) + hrv_leafp_to_litr2p(c) * dt
      litr3p(c) = litr3p(c) + hrv_leafp_to_litr3p(c) * dt

      ! fine root to litter
      litr1p(c) = litr1p(c) + hrv_frootp_to_litr1p(c) * dt
      litr2p(c) = litr2p(c) + hrv_frootp_to_litr2p(c) * dt
      litr3p(c) = litr3p(c) + hrv_frootp_to_litr3p(c) * dt

      ! wood to CWD
      cwdp(c) = cwdp(c) + hrv_livestemp_to_cwdp(c)  * dt
      cwdp(c) = cwdp(c) + hrv_livecrootp_to_cwdp(c) * dt
      cwdp(c) = cwdp(c) + hrv_deadcrootp_to_cwdp(c) * dt

      ! wood to product pools - updates done in CNWoodProducts()
      
      ! retranslocated N pool to litter
      litr1p(c) = litr1p(c) + hrv_retransp_to_litr1p(c) * dt

      ! storage pools to litter
      litr1p(c) = litr1p(c) + hrv_leafp_storage_to_litr1p(c)      * dt
      litr1p(c) = litr1p(c) + hrv_frootp_storage_to_litr1p(c)     * dt
      litr1p(c) = litr1p(c) + hrv_livestemp_storage_to_litr1p(c)  * dt
      litr1p(c) = litr1p(c) + hrv_deadstemp_storage_to_litr1p(c)  * dt
      litr1p(c) = litr1p(c) + hrv_livecrootp_storage_to_litr1p(c) * dt
      litr1p(c) = litr1p(c) + hrv_deadcrootp_storage_to_litr1p(c) * dt

      ! transfer pools to litter
      litr1p(c) = litr1p(c) + hrv_leafp_xfer_to_litr1p(c)      * dt
      litr1p(c) = litr1p(c) + hrv_frootp_xfer_to_litr1p(c)     * dt
      litr1p(c) = litr1p(c) + hrv_livestemp_xfer_to_litr1p(c)  * dt
      litr1p(c) = litr1p(c) + hrv_deadstemp_xfer_to_litr1p(c)  * dt
      litr1p(c) = litr1p(c) + hrv_livecrootp_xfer_to_litr1p(c) * dt
      litr1p(c) = litr1p(c) + hrv_deadcrootp_xfer_to_litr1p(c) * dt

   end do ! end of column loop

   ! pft loop
   do fp = 1,num_soilp
      p = filter_soilp(fp)

      ! pft-level nitrogen fluxes from harvest mortality
      ! displayed pools
      leafp(p)      = leafp(p)      - hrv_leafp_to_litter(p)      * dt
      frootp(p)     = frootp(p)     - hrv_frootp_to_litter(p)     * dt
      livestemp(p)  = livestemp(p)  - hrv_livestemp_to_litter(p)  * dt
      deadstemp(p)  = deadstemp(p)  - hrv_deadstemp_to_prod10p(p) * dt
      deadstemp(p)  = deadstemp(p)  - hrv_deadstemp_to_prod100p(p)* dt
      livecrootp(p) = livecrootp(p) - hrv_livecrootp_to_litter(p) * dt
      deadcrootp(p) = deadcrootp(p) - hrv_deadcrootp_to_litter(p) * dt
      retransp(p)   = retransp(p)   - hrv_retransp_to_litter(p)   * dt

      ! storage pools
      leafp_storage(p)      = leafp_storage(p)      - hrv_leafp_storage_to_litter(p)      * dt
      frootp_storage(p)     = frootp_storage(p)     - hrv_frootp_storage_to_litter(p)     * dt
      livestemp_storage(p)  = livestemp_storage(p)  - hrv_livestemp_storage_to_litter(p)  * dt
      deadstemp_storage(p)  = deadstemp_storage(p)  - hrv_deadstemp_storage_to_litter(p)  * dt
      livecrootp_storage(p) = livecrootp_storage(p) - hrv_livecrootp_storage_to_litter(p) * dt
      deadcrootp_storage(p) = deadcrootp_storage(p) - hrv_deadcrootp_storage_to_litter(p) * dt

      ! transfer pools
      leafp_xfer(p)      = leafp_xfer(p)      - hrv_leafp_xfer_to_litter(p)      * dt
      frootp_xfer(p)     = frootp_xfer(p)     - hrv_frootp_xfer_to_litter(p)     * dt
      livestemp_xfer(p)  = livestemp_xfer(p)  - hrv_livestemp_xfer_to_litter(p)  * dt
      deadstemp_xfer(p)  = deadstemp_xfer(p)  - hrv_deadstemp_xfer_to_litter(p)  * dt
      livecrootp_xfer(p) = livecrootp_xfer(p) - hrv_livecrootp_xfer_to_litter(p) * dt
      deadcrootp_xfer(p) = deadcrootp_xfer(p) - hrv_deadcrootp_xfer_to_litter(p) * dt

   end do

end subroutine PStateUpdate2h
!-----------------------------------------------------------------------

#endif

end module PStateUpdate2Mod
