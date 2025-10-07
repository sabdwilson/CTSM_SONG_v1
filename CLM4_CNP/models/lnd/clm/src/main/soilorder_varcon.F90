module soilorder_varcon


!-----------------------------------------------------------------------
!BOP
!
! !MODULE: soilorder_varcon
!
! !DESCRIPTION:
! Module containing soil order specific constants  and method to
! read and initialize soil order constants.
!
! !USES:
  use shr_kind_mod, only : r8 => shr_kind_r8
  use abortutils  , only : endrun
  use clm_varpar  , only : nsoilorder
  use clm_varctl  , only : iulog
!
! !PUBLIC TYPES:
  implicit none
  save
!
! Soil order  constants
!
  character(len=40) soilordername(0:nsoilorder)    ! soil order description
  integer :: Water
  integer :: Andisols
  integer :: Gelisols
  integer :: Histosols
  integer :: Entisols
  integer :: Inceptisols
  integer :: Aridsols
  integer :: Vertisols
  integer :: Mollisols
  integer :: Alfisols
  integer :: Spodosols
  integer :: Ultisols
  integer :: Oxisols 
  integer :: Shifting_sand
  integer :: rock_land
  integer :: Ice_Glacier

  ! PDynamicsMod.F90 & PStateUpdate1Mod.F90
  real(r8) :: smax(0:nsoilorder)
  real(r8) :: ks_sorption(0:nsoilorder)
 ! PDynamicsMod.F90
  real(r8) :: r_weather(0:nsoilorder)
  real(r8) :: r_adsorp(0:nsoilorder)
  real(r8) :: r_desorp(0:nsoilorder)
  real(r8) :: r_occlude(0:nsoilorder)
  real(r8) :: k_s1_biochem(0:nsoilorder)
  real(r8) :: k_s2_biochem(0:nsoilorder)
  real(r8) :: k_s3_biochem(0:nsoilorder)
  real(r8) :: k_s4_biochem(0:nsoilorder)

  public :: soilorder_conrd


contains

  subroutine soilorder_conrd

!! Read soil order dependent constants

! !USES:
    use fileutils , only : getfil
    use ncdio_pio , only : ncd_io, ncd_pio_closefile, ncd_pio_openfile,file_desc_t, &
                          ncd_inqdid, ncd_inqdlen
    use clm_varctl, only : fsoilordercon
    use clm_varcon, only : tfrz
    use spmdMod   , only : masterproc
    use nanMod    , only : nan
!
! !ARGUMENTS:
    implicit none
!
! !CALLED FROM:
! routine initialize in module initializeMod
    

! !LOCAL VARIABLES:
!EOP
    character(len=256) :: locfn ! local file name
    integer :: i,n              ! loop indices
    integer :: ier              ! error code
    type(file_desc_t) :: ncid   ! pio netCDF file id
    integer :: dimid            ! netCDF dimension id
    integer :: nsoil             ! number of soil orders in soil order dependent parameter file
    logical :: readv            ! read variable in or not
    character(len=32) :: subname = 'soilorder_conrd'              ! subroutine name
    !
    ! Expected soil order names: The names expected on the  file and the order
    ! they are expected to be in.
    !
    character(len=40), parameter :: expected_soilnames(0:nsoilorder) = (/ &
                 'Water                      '  &
               , 'Andisols                   '  &
               , 'Gelisols                   '  &
               , 'Histosols                  '  &
               , 'Entisols                   '  &
               , 'Inceptisols                '  &
               , 'Aridsols                   '  &
               , 'Vertisols                  '  &
               , 'Mollisols                  '  &
               , 'Alfisols                   '  &
               , 'Spodosols                  '  &
               , 'Ultisols                   '  &
               , 'Oxisols                    '  &
               , 'shiftingsand               '  &
               , 'rockland                   '  &
               , 'iceglacier                 '  &
    /)
!-----------------------------------------------------------------------

    ! Set specific vegetation type values

    if (masterproc) then
       write(iulog,*) 'Attempting to read soil order dependent parameters .....'
    end if
    call getfil (fsoilordercon, locfn, 0)
    call ncd_pio_openfile (ncid, trim(locfn), 0)
    call ncd_inqdid(ncid,'soilorder',dimid)
    call ncd_inqdlen(ncid,dimid,nsoil)

    call ncd_io('soilordername',soilordername, 'read', ncid, readvar=readv,posNOTonfile=.true.)
    if ( .not. readv ) call endrun( trim(subname)//' ERROR: error in reading in soil order parameter data' )
    call ncd_io('r_weather',r_weather, 'read', ncid, readvar=readv)  
    if ( .not. readv ) call endrun( trim(subname)//' ERROR: error in reading in soil order parameter data' )
    call ncd_io('r_adsorp',r_adsorp, 'read', ncid, readvar=readv)    
    if ( .not. readv ) call endrun( trim(subname)//' ERROR: error in reading in soil order parameter data' )
    call ncd_io('r_desorp',r_desorp, 'read', ncid, readvar=readv)      
    if ( .not. readv ) call endrun( trim(subname)//' ERROR: error in reading in soil order parameter data' )
    call ncd_io('r_occlude',r_occlude, 'read', ncid, readvar=readv)  
    if ( .not. readv ) call endrun( trim(subname)//' ERROR: error in reading in soil order parameter data' )
    call ncd_io('k_s1_biochem',k_s1_biochem, 'read', ncid, readvar=readv)    
    if ( .not. readv ) call endrun( trim(subname)//' ERROR: error in reading in soil order parameter data' )
    call ncd_io('k_s2_biochem',k_s2_biochem, 'read', ncid, readvar=readv)    
    if ( .not. readv ) call endrun( trim(subname)//' ERROR: error in reading in soil order parameter data' )
    call ncd_io('k_s3_biochem',k_s3_biochem, 'read', ncid, readvar=readv)    
    if ( .not. readv ) call endrun( trim(subname)//' ERROR: error in reading in soil order parameter data' )
    call ncd_io('k_s4_biochem',k_s4_biochem, 'read', ncid, readvar=readv)    
    if ( .not. readv ) call endrun( trim(subname)//' ERROR: error in reading in soil order parameter data' )
    call ncd_io('smax',smax, 'read', ncid, readvar=readv)    
    if ( .not. readv ) call endrun( trim(subname)//' ERROR: error in reading in soil order parameter data' )
    call ncd_io('ks_sorption',ks_sorption, 'read', ncid, readvar=readv)      
    if ( .not. readv ) call endrun( trim(subname)//' ERROR: error in reading in soil order parameter data' )
  
    call ncd_pio_closefile(ncid)

    do i = 1,nsoilorder

       if ( trim(adjustl(soilordername(i))) /= trim(expected_soilnames(i)) )then
          write(iulog,*)'soilorder_conrd: soil order name is NOT what is expected, name = ', &
                        trim(soilordername(i)), ', expected name = ',trim(expected_soilnames(i))
          call endrun( 'soilorder_conrd: bad name for soil order on fsoilordercon dataset' )
       end if

    enddo

    if (masterproc) then
       write(iulog,*) 'Successfully read PFT physiological data'
       write(iulog,*)
    end if

   end subroutine soilorder_conrd


end module soilorder_varcon
