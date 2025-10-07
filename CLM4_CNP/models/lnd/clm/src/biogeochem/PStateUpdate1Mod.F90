module PStateUpdate1Mod
#ifdef CN

!-----------------------------------------------------------------------
!BOP
!
! !MODULE: PStateUpdate1Mod
!
! !DESCRIPTION:
! Module for phosphorus state variable updates, non-mortality fluxes.
!
! !USES:
    use shr_kind_mod, only: r8 => shr_kind_r8
    implicit none
    save
    private
! !PUBLIC MEMBER FUNCTIONS:
    public:: PStateUpdate1
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
! !IROUTINE: PStateUpdate1
!
! !INTERFACE:
subroutine PStateUpdate1(num_soilc, filter_soilc, num_soilp, filter_soilp)
!
! !DESCRIPTION:
! On the radiation time step, update all the prognostic nitrogen state
! variables (except for gap-phase mortality and fire fluxes)
!
! !USES:
   use clmtype
   use clm_time_manager, only: get_step_size
   use pftvarcon       , only: npcropmin, nc3crop
   use soilorder_varcon, only: smax,ks_sorption
   use surfrdMod       , only: crop_prog
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
   integer , pointer :: ivt(:)                  ! pft vegetation type
   real(r8), pointer :: woody(:)                ! binary flag for woody lifeform (1=woody, 0=not woody)
   real(r8), pointer :: cwdp_to_litr2p(:)       ! decomp. of coarse woody debris N to litter 2 N (gN/m2/s)
   real(r8), pointer :: cwdp_to_litr3p(:)       ! decomp. of coarse woody debris N to litter 3 N (gN/m2/s)
   real(r8), pointer :: grainp_to_litr1p(:)     ! grain N litterfall to litter 1 N (gN/m2/s)
   real(r8), pointer :: grainp_to_litr2p(:)     ! grain N litterfall to litter 2 N (gN/m2/s)
   real(r8), pointer :: grainp_to_litr3p(:)     ! grain N litterfall to litter 3 N (gN/m2/s)
   real(r8), pointer :: livestemp_to_litr1p(:)  ! livestem N litterfall to litter 1 N (gN/m2/s)
   real(r8), pointer :: livestemp_to_litr2p(:)  ! livestem N litterfall to litter 2 N (gN/m2/s)
   real(r8), pointer :: livestemp_to_litr3p(:)  ! livestem N litterfall to litter 3 N (gN/m2/s)
   real(r8), pointer :: frootp_to_litr1p(:)     ! fine root N litterfall to litter 1 N (gN/m2/s)
   real(r8), pointer :: frootp_to_litr2p(:)     ! fine root N litterfall to litter 2 N (gN/m2/s)
   real(r8), pointer :: frootp_to_litr3p(:)     ! fine root N litterfall to litter 3 N (gN/m2/s)
   real(r8), pointer :: leafp_to_litr1p(:)      ! leaf N litterfall to litter 1 N (gN/m2/s)
   real(r8), pointer :: leafp_to_litr2p(:)      ! leaf N litterfall to litter 2 N (gN/m2/s)
   real(r8), pointer :: leafp_to_litr3p(:)      ! leaf N litterfall to litter 3 N (gN/m2/s)
   real(r8), pointer :: litr1p_to_soil1p(:)
   real(r8), pointer :: litr2p_to_soil2p(:)
   real(r8), pointer :: litr3p_to_soil3p(:)
   real(r8), pointer :: sminp_to_plant(:)
   real(r8), pointer :: sminp_to_soil1p_l1(:)
   real(r8), pointer :: sminp_to_soil2p_l2(:)
   real(r8), pointer :: sminp_to_soil2p_s1(:)
   real(r8), pointer :: sminp_to_soil3p_l3(:)
   real(r8), pointer :: sminp_to_soil3p_s2(:)
   real(r8), pointer :: sminp_to_soil4p_s3(:)
   real(r8), pointer :: soil1p_to_soil2p(:)
   real(r8), pointer :: soil2p_to_soil3p(:)
   real(r8), pointer :: soil3p_to_soil4p(:)
   real(r8), pointer :: soil4p_to_sminp(:)
   real(r8), pointer :: soil1p_to_sminp_biochem(:)
   real(r8), pointer :: soil2p_to_sminp_biochem(:)
   real(r8), pointer :: soil3p_to_sminp_biochem(:)
   real(r8), pointer :: soil4p_to_sminp_biochem(:)
   real(r8), pointer :: supplement_to_sminp(:)
   real(r8), pointer :: deadcrootp_storage_to_xfer(:)
   real(r8), pointer :: deadcrootp_xfer_to_deadcrootp(:)
   real(r8), pointer :: deadstemp_storage_to_xfer(:)
   real(r8), pointer :: deadstemp_xfer_to_deadstemp(:)
   real(r8), pointer :: frootp_storage_to_xfer(:)
   real(r8), pointer :: frootp_to_litter(:)
   real(r8), pointer :: frootp_xfer_to_frootp(:)
   real(r8), pointer :: leafp_storage_to_xfer(:)
   real(r8), pointer :: leafp_to_litter(:)
   real(r8), pointer :: leafp_to_retransp(:)
   real(r8), pointer :: leafp_xfer_to_leafp(:)
   real(r8), pointer :: livecrootp_storage_to_xfer(:)
   real(r8), pointer :: livecrootp_to_deadcrootp(:)
   real(r8), pointer :: livecrootp_to_retransp(:)
   real(r8), pointer :: livecrootp_xfer_to_livecrootp(:)
   real(r8), pointer :: livestemp_storage_to_xfer(:)
   real(r8), pointer :: livestemp_to_deadstemp(:)
   real(r8), pointer :: livestemp_to_retransp(:)
   real(r8), pointer :: livestemp_xfer_to_livestemp(:)
   real(r8), pointer :: ppool_to_deadcrootp(:)
   real(r8), pointer :: ppool_to_deadcrootp_storage(:)
   real(r8), pointer :: ppool_to_deadstemp(:)
   real(r8), pointer :: ppool_to_deadstemp_storage(:)
   real(r8), pointer :: ppool_to_frootp(:)
   real(r8), pointer :: ppool_to_frootp_storage(:)
   real(r8), pointer :: ppool_to_leafp(:)
   real(r8), pointer :: ppool_to_leafp_storage(:)
   real(r8), pointer :: ppool_to_livecrootp(:)
   real(r8), pointer :: ppool_to_livecrootp_storage(:)
   real(r8), pointer :: ppool_to_livestemp(:)           ! allocation to live stem N (gN/m2/s)
   real(r8), pointer :: ppool_to_livestemp_storage(:)   ! allocation to live stem N storage (gN/m2/s)
   real(r8), pointer :: retransp_to_ppool(:)            ! deployment of retranslocated N (gN/m2/s)
   real(r8), pointer :: sminp_to_ppool(:)               ! deployment of soil mineral N uptake (gN/m2/s)
   real(r8), pointer :: grainp_storage_to_xfer(:)       ! grain N shift storage to transfer (gN/m2/s)
   real(r8), pointer :: grainp_to_food(:)               ! grain N to food (gN/m2/s)
   real(r8), pointer :: grainp_xfer_to_grainp(:)        ! grain N growth from storage (gN/m2/s)
   real(r8), pointer :: livestemp_to_litter(:)          ! livestem N to litter (gN/m2/s)
   real(r8), pointer :: ppool_to_grainp(:)              ! allocation to grain N (gN/m2/s)
   real(r8), pointer :: ppool_to_grainp_storage(:)      ! allocation to grain N storage (gN/m2/s)

   real(r8), pointer :: sminp_leached(:)                ! P leached

!! add inorganic P transformation fluxes
   real(r8), pointer :: primp_to_labilep(:)
   real(r8), pointer :: labilep_to_secondp(:)
   real(r8), pointer :: secondp_to_labilep(:)
   real(r8), pointer :: secondp_to_occlp(:)

    
!
! local pointers to implicit in/out scalars
   real(r8), pointer :: grainp(:)             ! (gN/m2) grain N
   real(r8), pointer :: grainp_storage(:)     ! (gN/m2) grain N storage
   real(r8), pointer :: grainp_xfer(:)        ! (gN/m2) grain N transfer
   real(r8), pointer :: litr1p(:)             ! (gN/m2) litter labile N
   real(r8), pointer :: litr2p(:)             ! (gN/m2) litter cellulose N
   real(r8), pointer :: litr3p(:)             ! (gN/m2) litter lignin N
   real(r8), pointer :: solutionp(:)              ! (gP/m2) soil solution mineral P
   real(r8), pointer :: labilep(:)              ! (gP/m2) soil labile mineral P
   real(r8), pointer :: secondp(:)              ! (gP/m2) soil secondary mineral P
   real(r8), pointer :: occlp(:)              ! (gP/m2) soil occluded mineral P
   real(r8), pointer :: primp(:)              ! (gP/m2) soil parimary mineral P
   real(r8), pointer :: soil1p(:)             ! (gN/m2) soil organic matter N (fast pool)
   real(r8), pointer :: soil2p(:)             ! (gN/m2) soil organic matter N (medium pool)
   real(r8), pointer :: soil3p(:)             ! (gN/m2) soil orgainc matter N (slow pool)
   real(r8), pointer :: soil4p(:)             ! (gN/m2) soil orgainc matter N (slowest pool)
   real(r8), pointer :: cwdp(:)               ! (gN/m2) coarse woody debris N
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
   real(r8), pointer :: deadcrootp(:)         ! (gN/m2) dead coarse root N
   real(r8), pointer :: deadcrootp_storage(:) ! (gN/m2) dead coarse root N storage
   real(r8), pointer :: deadcrootp_xfer(:)    ! (gN/m2) dead coarse root N transfer
   real(r8), pointer :: deadstemp(:)          ! (gN/m2) dead stem N
   real(r8), pointer :: deadstemp_storage(:)  ! (gN/m2) dead stem N storage
   real(r8), pointer :: deadstemp_xfer(:)     ! (gN/m2) dead stem N transfer
   real(r8), pointer :: retransp(:)           ! (gN/m2) plant pool of retranslocated N
   real(r8), pointer :: ppool(:)              ! (gN/m2) temporary plant N pool

! local pointers for dynamic landcover fluxes and states
   real(r8), pointer :: dwt_seedp_to_leaf(:)
   real(r8), pointer :: dwt_seedp_to_deadstem(:)
   real(r8), pointer :: dwt_frootp_to_litr1p(:)
   real(r8), pointer :: dwt_frootp_to_litr2p(:)
   real(r8), pointer :: dwt_frootp_to_litr3p(:)
   real(r8), pointer :: dwt_livecrootp_to_cwdp(:)
   real(r8), pointer :: dwt_deadcrootp_to_cwdp(:)
   real(r8), pointer :: seedp(:)
!
! local pointers to implicit out scalars
   real(r8), pointer :: col_begnb(:)   ! nitrogen mass, beginning of time step (gN/m**2)
   real(r8), pointer :: pft_begnb(:)   ! nitrogen mass, beginning of time step (gN/m**2)
!
! !OTHER LOCAL VARIABLES:
   integer :: c,p      ! indices
   integer :: fp,fc    ! lake filter indices
   real(r8):: dt       ! radiation time step (seconds)
   real(r8):: smax_c       ! parameter(gP/m2), maximum amount of sorbed P in equilibrium with solution P
   real(r8):: ks_sorption_c ! parameter(gP/m2), empirical constant for sorbed P in equilibrium with solution P 
   real(r8):: flux_mineralization   !! local temperary variable
   real(r8):: temp_solutionp 

   integer, pointer :: isoiorder(:)


!EOP
!-----------------------------------------------------------------------
   ! assign local pointers
   woody                          => pftcon%woody
   isoiorder                      => clm3%g%l%c%cps%isoiorder

   ! assign local pointers at the column level

   primp_to_labilep               => clm3%g%l%c%cphof%primp_to_labilep
   labilep_to_secondp             => clm3%g%l%c%cphof%labilep_to_secondp
   secondp_to_labilep             => clm3%g%l%c%cphof%secondp_to_labilep
   secondp_to_occlp               => clm3%g%l%c%cphof%secondp_to_occlp
   cwdp_to_litr2p                 => clm3%g%l%c%cphof%cwdp_to_litr2p
   cwdp_to_litr3p                 => clm3%g%l%c%cphof%cwdp_to_litr3p
   livestemp_to_litr1p            => clm3%g%l%c%cphof%livestemp_to_litr1p
   livestemp_to_litr2p            => clm3%g%l%c%cphof%livestemp_to_litr2p
   livestemp_to_litr3p            => clm3%g%l%c%cphof%livestemp_to_litr3p
   grainp_to_litr1p               => clm3%g%l%c%cphof%grainp_to_litr1p
   grainp_to_litr2p               => clm3%g%l%c%cphof%grainp_to_litr2p
   grainp_to_litr3p               => clm3%g%l%c%cphof%grainp_to_litr3p
   frootp_to_litr1p               => clm3%g%l%c%cphof%frootp_to_litr1p
   frootp_to_litr2p               => clm3%g%l%c%cphof%frootp_to_litr2p
   frootp_to_litr3p               => clm3%g%l%c%cphof%frootp_to_litr3p
   leafp_to_litr1p                => clm3%g%l%c%cphof%leafp_to_litr1p
   leafp_to_litr2p                => clm3%g%l%c%cphof%leafp_to_litr2p
   leafp_to_litr3p                => clm3%g%l%c%cphof%leafp_to_litr3p
   litr1p_to_soil1p               => clm3%g%l%c%cphof%litr1p_to_soil1p
   litr2p_to_soil2p               => clm3%g%l%c%cphof%litr2p_to_soil2p
   litr3p_to_soil3p               => clm3%g%l%c%cphof%litr3p_to_soil3p
!   ndep_to_sminp                  => clm3%g%l%c%cphof%ndep_to_sminp
!   nfix_to_sminp                  => clm3%g%l%c%cphof%nfix_to_sminp
!   sminp_to_denit_excess          => clm3%g%l%c%cphof%sminp_to_denit_excess
!   sminp_to_denit_l1s1            => clm3%g%l%c%cphof%sminp_to_denit_l1s1
!   sminp_to_denit_l2s2            => clm3%g%l%c%cphof%sminp_to_denit_l2s2
!   sminp_to_denit_l3s3            => clm3%g%l%c%cphof%sminp_to_denit_l3s3
!   sminp_to_denit_s1s2            => clm3%g%l%c%cphof%sminp_to_denit_s1s2
!   sminp_to_denit_s2s3            => clm3%g%l%c%cphof%sminp_to_denit_s2s3
!   sminp_to_denit_s3s4            => clm3%g%l%c%cphof%sminp_to_denit_s3s4
!   sminp_to_denit_s4              => clm3%g%l%c%cphof%sminp_to_denit_s4
   sminp_to_plant                 => clm3%g%l%c%cphof%sminp_to_plant
   sminp_to_soil1p_l1             => clm3%g%l%c%cphof%sminp_to_soil1p_l1
   sminp_to_soil2p_l2             => clm3%g%l%c%cphof%sminp_to_soil2p_l2
   sminp_to_soil2p_s1             => clm3%g%l%c%cphof%sminp_to_soil2p_s1
   sminp_to_soil3p_l3             => clm3%g%l%c%cphof%sminp_to_soil3p_l3
   sminp_to_soil3p_s2             => clm3%g%l%c%cphof%sminp_to_soil3p_s2
   sminp_to_soil4p_s3             => clm3%g%l%c%cphof%sminp_to_soil4p_s3
   soil1p_to_soil2p               => clm3%g%l%c%cphof%soil1p_to_soil2p
   soil2p_to_soil3p               => clm3%g%l%c%cphof%soil2p_to_soil3p
   soil3p_to_soil4p               => clm3%g%l%c%cphof%soil3p_to_soil4p
   soil4p_to_sminp                => clm3%g%l%c%cphof%soil4p_to_sminp
   soil1p_to_sminp_biochem        => clm3%g%l%c%cphof%soil1p_to_sminp_biochem
   soil2p_to_sminp_biochem        => clm3%g%l%c%cphof%soil2p_to_sminp_biochem
   soil3p_to_sminp_biochem        => clm3%g%l%c%cphof%soil3p_to_sminp_biochem
   soil4p_to_sminp_biochem        => clm3%g%l%c%cphof%soil4p_to_sminp_biochem
   supplement_to_sminp            => clm3%g%l%c%cphof%supplement_to_sminp
   sminp_leached                  => clm3%g%l%c%cphof% sminp_leached
   cwdp                           => clm3%g%l%c%cphos%cwdp
   litr1p                         => clm3%g%l%c%cphos%litr1p
   litr2p                         => clm3%g%l%c%cphos%litr2p
   litr3p                         => clm3%g%l%c%cphos%litr3p
   solutionp                          => clm3%g%l%c%cphos%solutionp
   labilep                          => clm3%g%l%c%cphos%labilep
   secondp                          => clm3%g%l%c%cphos%secondp
   occlp                          => clm3%g%l%c%cphos%occlp
   primp                          => clm3%g%l%c%cphos%primp
   soil1p                         => clm3%g%l%c%cphos%soil1p
   soil2p                         => clm3%g%l%c%cphos%soil2p
   soil3p                         => clm3%g%l%c%cphos%soil3p
   soil4p                         => clm3%g%l%c%cphos%soil4p
   ! new pointers for dynamic landcover
   dwt_seedp_to_leaf              => clm3%g%l%c%cphof%dwt_seedp_to_leaf
   dwt_seedp_to_deadstem          => clm3%g%l%c%cphof%dwt_seedp_to_deadstem
   dwt_frootp_to_litr1p           => clm3%g%l%c%cphof%dwt_frootp_to_litr1p
   dwt_frootp_to_litr2p           => clm3%g%l%c%cphof%dwt_frootp_to_litr2p
   dwt_frootp_to_litr3p           => clm3%g%l%c%cphof%dwt_frootp_to_litr3p
   dwt_livecrootp_to_cwdp         => clm3%g%l%c%cphof%dwt_livecrootp_to_cwdp
   dwt_deadcrootp_to_cwdp         => clm3%g%l%c%cphof%dwt_deadcrootp_to_cwdp
   seedp                          => clm3%g%l%c%cphos%seedp

   ! assign local pointers at the pft level
   ivt                            => clm3%g%l%c%p%itype
   deadcrootp_storage_to_xfer     => clm3%g%l%c%p%pphof%deadcrootp_storage_to_xfer
   deadcrootp_xfer_to_deadcrootp  => clm3%g%l%c%p%pphof%deadcrootp_xfer_to_deadcrootp
   deadstemp_storage_to_xfer      => clm3%g%l%c%p%pphof%deadstemp_storage_to_xfer
   deadstemp_xfer_to_deadstemp    => clm3%g%l%c%p%pphof%deadstemp_xfer_to_deadstemp
   frootp_storage_to_xfer         => clm3%g%l%c%p%pphof%frootp_storage_to_xfer
   frootp_to_litter               => clm3%g%l%c%p%pphof%frootp_to_litter
   frootp_xfer_to_frootp          => clm3%g%l%c%p%pphof%frootp_xfer_to_frootp
   leafp_storage_to_xfer          => clm3%g%l%c%p%pphof%leafp_storage_to_xfer
   leafp_to_litter                => clm3%g%l%c%p%pphof%leafp_to_litter
   leafp_to_retransp              => clm3%g%l%c%p%pphof%leafp_to_retransp
   leafp_xfer_to_leafp            => clm3%g%l%c%p%pphof%leafp_xfer_to_leafp
   livecrootp_storage_to_xfer     => clm3%g%l%c%p%pphof%livecrootp_storage_to_xfer
   livecrootp_to_deadcrootp       => clm3%g%l%c%p%pphof%livecrootp_to_deadcrootp
   livecrootp_to_retransp         => clm3%g%l%c%p%pphof%livecrootp_to_retransp
   livecrootp_xfer_to_livecrootp  => clm3%g%l%c%p%pphof%livecrootp_xfer_to_livecrootp
   livestemp_storage_to_xfer      => clm3%g%l%c%p%pphof%livestemp_storage_to_xfer
   livestemp_to_deadstemp         => clm3%g%l%c%p%pphof%livestemp_to_deadstemp
   livestemp_to_retransp          => clm3%g%l%c%p%pphof%livestemp_to_retransp
   livestemp_xfer_to_livestemp    => clm3%g%l%c%p%pphof%livestemp_xfer_to_livestemp
   ppool_to_deadcrootp            => clm3%g%l%c%p%pphof%ppool_to_deadcrootp
   ppool_to_deadcrootp_storage    => clm3%g%l%c%p%pphof%ppool_to_deadcrootp_storage
   ppool_to_deadstemp             => clm3%g%l%c%p%pphof%ppool_to_deadstemp
   ppool_to_deadstemp_storage     => clm3%g%l%c%p%pphof%ppool_to_deadstemp_storage
   ppool_to_frootp                => clm3%g%l%c%p%pphof%ppool_to_frootp
   ppool_to_frootp_storage        => clm3%g%l%c%p%pphof%ppool_to_frootp_storage
   ppool_to_leafp                 => clm3%g%l%c%p%pphof%ppool_to_leafp
   ppool_to_leafp_storage         => clm3%g%l%c%p%pphof%ppool_to_leafp_storage
   ppool_to_livecrootp            => clm3%g%l%c%p%pphof%ppool_to_livecrootp
   ppool_to_livecrootp_storage    => clm3%g%l%c%p%pphof%ppool_to_livecrootp_storage
   ppool_to_livestemp             => clm3%g%l%c%p%pphof%ppool_to_livestemp
   ppool_to_livestemp_storage     => clm3%g%l%c%p%pphof%ppool_to_livestemp_storage
   retransp_to_ppool              => clm3%g%l%c%p%pphof%retransp_to_ppool
   sminp_to_ppool                 => clm3%g%l%c%p%pphof%sminp_to_ppool
   grainp_storage_to_xfer         => clm3%g%l%c%p%pphof%grainp_storage_to_xfer
   grainp_to_food                 => clm3%g%l%c%p%pphof%grainp_to_food
   grainp_xfer_to_grainp          => clm3%g%l%c%p%pphof%grainp_xfer_to_grainp
   livestemp_to_litter            => clm3%g%l%c%p%pphof%livestemp_to_litter
   ppool_to_grainp                => clm3%g%l%c%p%pphof%ppool_to_grainp
   ppool_to_grainp_storage        => clm3%g%l%c%p%pphof%ppool_to_grainp_storage
   grainp                         => clm3%g%l%c%p%pphos%grainp
   grainp_storage                 => clm3%g%l%c%p%pphos%grainp_storage
   grainp_xfer                    => clm3%g%l%c%p%pphos%grainp_xfer
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
   ppool                          => clm3%g%l%c%p%pphos%ppool
   retransp                       => clm3%g%l%c%p%pphos%retransp

   ! set time steps
   dt = real( get_step_size(), r8 )


   ! column loop
   do fc = 1,num_soilc
      c = filter_soilc(fc)
      ! assign read in parameter values
      smax_c = smax( isoiorder(c) )
      ks_sorption_c = ks_sorption( isoiorder(c) ) 

!      print*,c,isoiorder(c),smax( isoiorder(c) ),ks_sorption( isoiorder(c)),'column soil order'  
!      print*,smax_c,ks_sorption_c,'smax and ks_sorption read in YANGXJ'
      ! column-level fluxes

!      ! N deposition and fixation
!      sminp(c) = sminp(c) + ndep_to_sminp(c)*dt
!      sminp(c) = sminp(c) + nfix_to_sminp(c)*dt

!      print*,"BEFORE UPDATE: LITTER AND SOIL P", &   
!         litr1p(c) + &
!         litr2p(c) + &
!         litr3p(c) + &
!         cwdp(c) + &
!         soil1p(c) + &
!         soil2p(c) + &
!         soil3p(c) + &
!         soil4p(c)


      ! plant to litter fluxes
      ! leaf litter
      litr1p(c) = litr1p(c) + leafp_to_litr1p(c)*dt
      litr2p(c) = litr2p(c) + leafp_to_litr2p(c)*dt
      litr3p(c) = litr3p(c) + leafp_to_litr3p(c)*dt
      ! fine root litter
      litr1p(c) = litr1p(c) + frootp_to_litr1p(c)*dt
      litr2p(c) = litr2p(c) + frootp_to_litr2p(c)*dt
      litr3p(c) = litr3p(c) + frootp_to_litr3p(c)*dt
      if ( crop_prog )then
         ! livestem litter
         litr1p(c) = litr1p(c) + livestemp_to_litr1p(c)*dt
         litr2p(c) = litr2p(c) + livestemp_to_litr2p(c)*dt
         litr3p(c) = litr3p(c) + livestemp_to_litr3p(c)*dt
         ! grain litter
         litr1p(c) = litr1p(c) + grainp_to_litr1p(c)*dt
         litr2p(c) = litr2p(c) + grainp_to_litr2p(c)*dt
         litr3p(c) = litr3p(c) + grainp_to_litr3p(c)*dt
      end if


      ! seeding fluxes, from dynamic landcover
      seedp(c) = seedp(c) - dwt_seedp_to_leaf(c) * dt
      seedp(c) = seedp(c) - dwt_seedp_to_deadstem(c) * dt
   
      ! fluxes into litter and CWD, from dynamic landcover
      litr1p(c) = litr1p(c) + dwt_frootp_to_litr1p(c)*dt
      litr2p(c) = litr2p(c) + dwt_frootp_to_litr2p(c)*dt
      litr3p(c) = litr3p(c) + dwt_frootp_to_litr3p(c)*dt
      cwdp(c)   = cwdp(c)   + dwt_livecrootp_to_cwdp(c)*dt
      cwdp(c)   = cwdp(c)   + dwt_deadcrootp_to_cwdp(c)*dt
      
      ! CWD to litter fluxes
      cwdp(c)   = cwdp(c)   - cwdp_to_litr2p(c)*dt
      litr2p(c) = litr2p(c) + cwdp_to_litr2p(c)*dt
      cwdp(c)   = cwdp(c)   - cwdp_to_litr3p(c)*dt
      litr3p(c) = litr3p(c) + cwdp_to_litr3p(c)*dt

      ! update litter states
      litr1p(c) = litr1p(c) - litr1p_to_soil1p(c)*dt
      litr2p(c) = litr2p(c) - litr2p_to_soil2p(c)*dt
      litr3p(c) = litr3p(c) - litr3p_to_soil3p(c)*dt


      ! update SOM states
      soil1p(c) = soil1p(c) + &
         (litr1p_to_soil1p(c) + sminp_to_soil1p_l1(c) - soil1p_to_soil2p(c))*dt - &
         soil1p_to_sminp_biochem(c)*dt
      soil2p(c) = soil2p(c) + &
         (litr2p_to_soil2p(c) + sminp_to_soil2p_l2(c) + &
          soil1p_to_soil2p(c) + sminp_to_soil2p_s1(c) - soil2p_to_soil3p(c))*dt - & 
         soil2p_to_sminp_biochem(c)*dt
      soil3p(c) = soil3p(c) + &
         (litr3p_to_soil3p(c) + sminp_to_soil3p_l3(c) + &
          soil2p_to_soil3p(c) + sminp_to_soil3p_s2(c) - soil3p_to_soil4p(c))*dt - &
         soil3p_to_sminp_biochem(c)*dt
      soil4p(c) = soil4p(c) + &
         (soil3p_to_soil4p(c) + sminp_to_soil4p_s3(c) - soil4p_to_sminp(c))*dt  - &
         soil4p_to_sminp_biochem(c)*dt

!      print*,"AFTER UPDATE: LITTER AND SOIL P", &   
!         litr1p(c) + &
!         litr2p(c) + &
!         litr3p(c) + &
!         cwdp(c)   + &
!         soil1p(c) + &
!         soil2p(c) + &
!         soil3p(c) + &
!         soil4p(c)


 
!      print*,soil1p_to_sminp_biochem(c)*dt,soil2p_to_sminp_biochem(c)*dt,soil3p_to_sminp_biochem(c)*dt,&
!             soil4p_to_sminp_biochem(c)*dt,'biochemical mineralizaton'

      ! update inorganic P pools

!      print*, " SOLUTION AND LABILE P BEFORE UPDATE YANGXJ",solutionp(c), labilep(c) 

      flux_mineralization = -( sminp_to_soil1p_l1(c) + sminp_to_soil2p_l2(c) + &
          sminp_to_soil3p_l3(c) + sminp_to_soil2p_s1(c) + &
          sminp_to_soil3p_s2(c) + sminp_to_soil4p_s3(c) - &
          soil4p_to_sminp(c) )*dt                        + &
          soil1p_to_sminp_biochem(c)*dt                + &
          soil2p_to_sminp_biochem(c)*dt                + &
          soil3p_to_sminp_biochem(c)*dt                + &
          soil4p_to_sminp_biochem(c)*dt
      
!     print*, " NET FLUX ENTERING LITTER AND SOIL",&
!             leafp_to_litr1p(c)*dt+leafp_to_litr2p(c)*dt + leafp_to_litr3p(c)*dt&
!                            + frootp_to_litr1p(c)*dt&
!                            + frootp_to_litr2p(c)*dt&
!                            + frootp_to_litr3p(c)*dt - flux_mineralization
      temp_solutionp = solutionp(c)
      solutionp(c) = solutionp(c)  + ( flux_mineralization + primp_to_labilep(c)*dt &
                                   + secondp_to_labilep(c)*dt &
                                   + supplement_to_sminp(c)*dt - sminp_to_plant(c)*dt&
                                   - labilep_to_secondp(c)*dt - sminp_leached(c)*dt ) / &
                                     ( 1._r8+(smax_c*ks_sorption_c)/(ks_sorption_c+solutionp(c))**2._r8 )                         
      labilep(c) = labilep(c) + ( (smax_c*ks_sorption_c)/(ks_sorption_c+temp_solutionp)**2._r8 ) * &
                                ( flux_mineralization + primp_to_labilep(c)*dt + secondp_to_labilep(c)*dt &
                                + supplement_to_sminp(c)*dt - sminp_to_plant(c)*dt & 
                                - labilep_to_secondp(c)*dt - sminp_leached(c)*dt ) / &
                                ( 1._r8+(smax_c*ks_sorption_c)/(ks_sorption_c+temp_solutionp)**2._r8 )

!      print*, " SOLUTION AND LABILE P AFTER UPDATE YANGXJ",solutionp(c), labilep(c) 

!      print*, " SOLUTION AND LABILE P AFTER UPDATE",solutionp(c)+ labilep(c) 
!      print*, "NET FLUX ENTERING SOLUTION AND LABILE P", flux_mineralization +primp_to_labilep(c)*dt &
!!                                   + secondp_to_labilep(c)*dt &
!                                   + supplement_to_sminp(c)*dt -sminp_to_plant(c)*dt&
!                                   - labilep_to_secondp(c)*dt - sminp_leached(c)*dt
!      print*, "NET P mineralization", flux_mineralization
!      print*, "weathering", primp_to_labilep(c)*dt
!      print*, "secondary to labile",secondp_to_labilep(c)*dt
!      print*, "supplement_to_sminp(c)*dt",supplement_to_sminp(c)*dt
!      print*, "sminp_to_plant(c)*dt",sminp_to_plant(c)*dt
!      print*, "labilep_to_secondp(c)*dt",labilep_to_secondp(c)*dt
!      print*, " sminp_leached(c)*dt",sminp_leached(c)*dt 
!

!      labilep(c) = smax*solutionp(c)/(ks_sorption+solutionp(c))
   
      secondp(c) = secondp(c) + ( labilep_to_secondp(c) - secondp_to_labilep(c)- secondp_to_occlp(c) )*dt

      occlp(c)   = occlp(c) + ( secondp_to_occlp(c) ) * dt

      primp(c)   = primp(c) - ( primp_to_labilep(c) )*dt
 

   end do ! end of column loop

   ! pft loop
   do fp = 1,num_soilp
      p = filter_soilp(fp)

      ! phenology: transfer growth fluxes
      leafp(p)       = leafp(p)       + leafp_xfer_to_leafp(p)*dt
      leafp_xfer(p)  = leafp_xfer(p)  - leafp_xfer_to_leafp(p)*dt
      frootp(p)      = frootp(p)      + frootp_xfer_to_frootp(p)*dt
      frootp_xfer(p) = frootp_xfer(p) - frootp_xfer_to_frootp(p)*dt
      if (woody(ivt(p)) == 1.0_r8) then
          livestemp(p)       = livestemp(p)       + livestemp_xfer_to_livestemp(p)*dt
          livestemp_xfer(p)  = livestemp_xfer(p)  - livestemp_xfer_to_livestemp(p)*dt
          deadstemp(p)       = deadstemp(p)       + deadstemp_xfer_to_deadstemp(p)*dt
          deadstemp_xfer(p)  = deadstemp_xfer(p)  - deadstemp_xfer_to_deadstemp(p)*dt
          livecrootp(p)      = livecrootp(p)      + livecrootp_xfer_to_livecrootp(p)*dt
          livecrootp_xfer(p) = livecrootp_xfer(p) - livecrootp_xfer_to_livecrootp(p)*dt
          deadcrootp(p)      = deadcrootp(p)      + deadcrootp_xfer_to_deadcrootp(p)*dt
          deadcrootp_xfer(p) = deadcrootp_xfer(p) - deadcrootp_xfer_to_deadcrootp(p)*dt
      end if
      if (ivt(p) >= npcropmin) then ! skip 2 generic crops
          ! lines here for consistency; the transfer terms are zero
          livestemp(p)       = livestemp(p)      + livestemp_xfer_to_livestemp(p)*dt
          livestemp_xfer(p)  = livestemp_xfer(p) - livestemp_xfer_to_livestemp(p)*dt
          grainp(p)          = grainp(p)         + grainp_xfer_to_grainp(p)*dt
          grainp_xfer(p)     = grainp_xfer(p)    - grainp_xfer_to_grainp(p)*dt
      end if

      ! phenology: litterfall and retranslocation fluxes
      leafp(p)    = leafp(p)    - leafp_to_litter(p)*dt
      frootp(p)   = frootp(p)   - frootp_to_litter(p)*dt
      leafp(p)    = leafp(p)    - leafp_to_retransp(p)*dt
      retransp(p) = retransp(p) + leafp_to_retransp(p)*dt

      ! live wood turnover and retranslocation fluxes
      if (woody(ivt(p)) == 1._r8) then
          livestemp(p)  = livestemp(p)  - livestemp_to_deadstemp(p)*dt
          deadstemp(p)  = deadstemp(p)  + livestemp_to_deadstemp(p)*dt
          livestemp(p)  = livestemp(p)  - livestemp_to_retransp(p)*dt
          retransp(p)   = retransp(p)   + livestemp_to_retransp(p)*dt
          livecrootp(p) = livecrootp(p) - livecrootp_to_deadcrootp(p)*dt
          deadcrootp(p) = deadcrootp(p) + livecrootp_to_deadcrootp(p)*dt
          livecrootp(p) = livecrootp(p) - livecrootp_to_retransp(p)*dt
          retransp(p)   = retransp(p)   + livecrootp_to_retransp(p)*dt
      end if
      if (ivt(p) >= npcropmin) then ! skip 2 generic crops
          livestemp(p)  = livestemp(p)  - livestemp_to_litter(p)*dt
          livestemp(p)  = livestemp(p)  - livestemp_to_retransp(p)*dt
          retransp(p)   = retransp(p)   + livestemp_to_retransp(p)*dt
          grainp(p)     = grainp(p)     - grainp_to_food(p)*dt
      end if

      ! uptake from soil mineral N pool
      ppool(p) = ppool(p) + sminp_to_ppool(p)*dt

      ! deployment from retranslocation pool
      ppool(p)    = ppool(p)    + retransp_to_ppool(p)*dt
      retransp(p) = retransp(p) - retransp_to_ppool(p)*dt

      ! allocation fluxes
      ppool(p)           = ppool(p)          - ppool_to_leafp(p)*dt
      leafp(p)           = leafp(p)          + ppool_to_leafp(p)*dt
      ppool(p)           = ppool(p)          - ppool_to_leafp_storage(p)*dt
      leafp_storage(p)   = leafp_storage(p)  + ppool_to_leafp_storage(p)*dt
      ppool(p)           = ppool(p)          - ppool_to_frootp(p)*dt
      frootp(p)          = frootp(p)         + ppool_to_frootp(p)*dt
      ppool(p)           = ppool(p)          - ppool_to_frootp_storage(p)*dt
      frootp_storage(p)  = frootp_storage(p) + ppool_to_frootp_storage(p)*dt
      if (woody(ivt(p)) == 1._r8) then
          ppool(p)              = ppool(p)              - ppool_to_livestemp(p)*dt
          livestemp(p)          = livestemp(p)          + ppool_to_livestemp(p)*dt
          ppool(p)              = ppool(p)              - ppool_to_livestemp_storage(p)*dt
          livestemp_storage(p)  = livestemp_storage(p)  + ppool_to_livestemp_storage(p)*dt
          ppool(p)              = ppool(p)              - ppool_to_deadstemp(p)*dt
          deadstemp(p)          = deadstemp(p)          + ppool_to_deadstemp(p)*dt
          ppool(p)              = ppool(p)              - ppool_to_deadstemp_storage(p)*dt
          deadstemp_storage(p)  = deadstemp_storage(p)  + ppool_to_deadstemp_storage(p)*dt
          ppool(p)              = ppool(p)              - ppool_to_livecrootp(p)*dt
          livecrootp(p)         = livecrootp(p)         + ppool_to_livecrootp(p)*dt
          ppool(p)              = ppool(p)              - ppool_to_livecrootp_storage(p)*dt
          livecrootp_storage(p) = livecrootp_storage(p) + ppool_to_livecrootp_storage(p)*dt
          ppool(p)              = ppool(p)              - ppool_to_deadcrootp(p)*dt
          deadcrootp(p)         = deadcrootp(p)         + ppool_to_deadcrootp(p)*dt
          ppool(p)              = ppool(p)              - ppool_to_deadcrootp_storage(p)*dt
          deadcrootp_storage(p) = deadcrootp_storage(p) + ppool_to_deadcrootp_storage(p)*dt
      end if
      if (ivt(p) >= npcropmin) then ! skip 2 generic crops
          ppool(p)              = ppool(p)              - ppool_to_livestemp(p)*dt
          livestemp(p)          = livestemp(p)          + ppool_to_livestemp(p)*dt
          ppool(p)              = ppool(p)              - ppool_to_livestemp_storage(p)*dt
          livestemp_storage(p)  = livestemp_storage(p)  + ppool_to_livestemp_storage(p)*dt
          ppool(p)              = ppool(p)              - ppool_to_grainp(p)*dt
          grainp(p)             = grainp(p)             + ppool_to_grainp(p)*dt
          ppool(p)              = ppool(p)              - ppool_to_grainp_storage(p)*dt
          grainp_storage(p)     = grainp_storage(p)     + ppool_to_grainp_storage(p)*dt
      end if

      ! move storage pools into transfer pools
      leafp_storage(p)  = leafp_storage(p)  - leafp_storage_to_xfer(p)*dt
      leafp_xfer(p)     = leafp_xfer(p)     + leafp_storage_to_xfer(p)*dt
      frootp_storage(p) = frootp_storage(p) - frootp_storage_to_xfer(p)*dt
      frootp_xfer(p)    = frootp_xfer(p)    + frootp_storage_to_xfer(p)*dt
      if (woody(ivt(p)) == 1._r8) then
          livestemp_storage(p)  = livestemp_storage(p)  - livestemp_storage_to_xfer(p)*dt
          livestemp_xfer(p)     = livestemp_xfer(p)     + livestemp_storage_to_xfer(p)*dt
          deadstemp_storage(p)  = deadstemp_storage(p)  - deadstemp_storage_to_xfer(p)*dt
          deadstemp_xfer(p)     = deadstemp_xfer(p)     + deadstemp_storage_to_xfer(p)*dt
          livecrootp_storage(p) = livecrootp_storage(p) - livecrootp_storage_to_xfer(p)*dt
          livecrootp_xfer(p)    = livecrootp_xfer(p)    + livecrootp_storage_to_xfer(p)*dt
          deadcrootp_storage(p) = deadcrootp_storage(p) - deadcrootp_storage_to_xfer(p)*dt
          deadcrootp_xfer(p)    = deadcrootp_xfer(p)    + deadcrootp_storage_to_xfer(p)*dt
      end if
      if (ivt(p) >= npcropmin) then ! skip 2 generic crops
          ! lines here for consistency; the transfer terms are zero
          livestemp_storage(p)  = livestemp_storage(p) - livestemp_storage_to_xfer(p)*dt
          livestemp_xfer(p)     = livestemp_xfer(p)    + livestemp_storage_to_xfer(p)*dt
          grainp_storage(p)     = grainp_storage(p)    - grainp_storage_to_xfer(p)*dt
          grainp_xfer(p)        = grainp_xfer(p)       + grainp_storage_to_xfer(p)*dt
      end if

   end do

end subroutine PStateUpdate1
!-----------------------------------------------------------------------

#endif

end module PStateUpdate1Mod
