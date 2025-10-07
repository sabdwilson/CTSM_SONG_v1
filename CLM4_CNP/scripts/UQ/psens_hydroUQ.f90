module psens_data
  integer npfts, np, np_all, nsamples, np_surf, ngroups, np_node
  parameter(np_all= 102)  !number of total parameters
  parameter(np    = 50)  !number of pft-specific parameters
  parameter(npfts = 21)  !number of pfts in pft-physiology file   
  parameter(np_surf = 10) !number of parameters in surfdata file
  parameter(np_node = 16) !number of cores per node

  character(len=800) CLM_base, basecase_in, basecase, pftfile_in, optdir
  character(len=800) clm_rundir, surffile_in, ccsm_input, sample_file
  character(len=15)  parm_names(np_all)
  character(len=6)   mysite
  character(len=1)  fullrun

  double precision ccsm_parms(np_all)
  double precision parm_ranges(2,np_all)
  double precision random_samples(np_all), myrand(np_all,100000)
  double precision spbasis(np_all)
  integer useparm(np_all), mypft, lst, npd, startyr, nyears, nyears_sim
  integer n_param, myparams(np_all), nchunks, chunksize
  logical docontinue
  integer nyears_ad, nyears_exit, nyears_final, nyears_trans

end module psens_data


program main

  use psens_data

  implicit none

  integer I, J, L, N, p, die, myid, numprocs, nsamples_temp
  integer errcodes(np_node), usize, n_assigned_max, n_assigned
  integer nsens, ntasks_tot, ntasks_done, done, ndone, clock
  integer :: root=0
  character(len=800) line, cmd, rundir, fname
  character(len=800) pftfile(np_node), surffile(np_node)
  character(len=100) scratchstr
  character(len=5) yst
  character(len=4) pst, nst, myidst
  double precision ccsm_parms_temp(np_all)
  logical exists, validsample
  integer :: nr
  integer, dimension(:), ALLOCATABLE :: seed
  
  !random seed
  CALL RANDOM_SEED (size = nr)
  ALLOCATE(seed(nr))
  CALL SYSTEM_CLOCK(COUNT = clock)
  seed = clock+37000-(/(i-1,i=1,nr)/)
  CALL RANDOM_SEED(PUT = seed)

  nsens = 1   !number of values for parameter sensitivity test
  docontinue = .false.

  !get case information, parameter ranges   
  fname='./ccsm_opt.txt'
  call get_clm_info(fname)

  !get random parameter samples
  do i=1,nsamples
     validsample=.false.
     do while (validsample .eq. .false.)
        call random_number(random_samples)
        do j=1,np_all
           if (useparm(j) .eq. 1) then 
              random_samples(j) = (parm_ranges(2,j) - parm_ranges(1,j))* &
                   random_samples(j) + parm_ranges(1,j)
           else
              random_samples(j) = ccsm_parms(j)
           end if
        end do
        validsample=.true.
        !apply parameter constraints (e.g. a+b+c < 1)
        random_samples(38) = 1 - random_samples(36) - random_samples(37)
        if (random_samples(38) .lt. parm_ranges(1,38) .or. &
             random_samples(38) .gt. parm_ranges(2,38)) &
             validsample=.false.
        random_samples(41) = 1 - random_samples(39) - random_samples(40)
        if (random_samples(41) .lt. parm_ranges(1,41) .or. &
             random_samples(41) .gt. parm_ranges(2,41)) &
             validsample=.false.
        if (random_samples(27) .lt. random_samples(21)) validsample=.false.
        if (random_samples(27) .lt. random_samples(28)) validsample=.false.
     end do
     myrand(:,i)=random_samples
  end do

  !If parameters from table provided, overwrite random samples
  j=1
  if (trim(sample_file) .ne. 'none' .and. trim(sample_file) .ne. '') then 
     open(unit=8, file=trim(sample_file))
     do 
        read(8,*,end=5), spbasis(1:n_param)
        p=1
        do i=1,np_all
           if (useparm(i) .eq. 1) then 
              myrand(i,j)=spbasis(p)
              if (sample_file(1:3) .eq. 'LHS') then 
                 !ranges are normalized 0-1
                 myrand(i,j)=spbasis(p)*(parm_ranges(2,i)-parm_ranges(1,i)) &
                      +parm_ranges(1,i)
              end if
              p=p+1
           end if
        end do
        j=j+1
     end do
  end if
 
5 continue
  if ((j-1) .gt. 1 .and. (j-1) .lt. nsamples) nsamples=j-1

  ngroups=nsamples/np_node+1
  if (mod(nsamples,np_node) .eq. 0) ngroups=nsamples/np_node

  do p=1,ngroups
     call setup_psens(p)
  end do

end program main


!-------------------------set up directories for parameter sensitivity run---------------

subroutine setup_psens(p)

  use psens_data

  implicit none

  character(len=800) rundir, pftfile(np_node), surffile(np_node), cmd, line
  character(len=6) pst, nst
  integer c, i, p, n, procs_tospawn, errcodes(procs_tospawn), ncases
  integer ierr, myid, intercomm, nstart
  logical dospawn
  integer :: root=0
  
  !set up run directory and copy files

  ncases=1
  if (fullrun .eq. 'T') ncases=4
 
  do c=1,ncases  !loop through all four cases if requested
     if (ncases .eq. 4) then 
        if (c .eq. 1) basecase = trim(basecase_in) // '_I1850CN_ad_spinup'
        if (c .eq. 2) basecase = trim(basecase_in) // '_I1850CN_exit_spinup'
        if (c .eq. 3) basecase = trim(basecase_in) // '_I1850CN'
        if (c .eq. 4) basecase = trim(basecase_in) // '_I20TRCN'
     else
        basecase = basecase_in
     end if
     !create PFT file with unique identifier
     if (p .eq. 1) then 
        !control ruN
        pftfile(1) = './pft-physiology_control.nc'
        surffile(1)= './surfdata_control.nc'
        do i=1,np_node-1
           write(pst,'(I6)') 100000+(p-1)*np_node+i
           pftfile(i+1)  = './pft-physiology_' // pst(2:6) // '.nc'
           surffile(i+1) = './surfdata_' // pst(2:6) // '.nc'
        end do
        write(pst,'(I6)') 100000+p
        rundir = trim(basecase) // '/g' // pst(2:6)
     else 
        do i=1,np_node
           write(pst,'(I6)') 100000+(p-1)*np_node+i-1
           pftfile(i)  = './pft-physiology_' // pst(2:6) // '.nc'
           surffile(i) = './surfdata_' // pst(2:6) // '.nc' 
        end do
        write(pst,'(I6)') 100000+p
        rundir = trim(basecase) // '/g' // pst(2:6)  
     end if
  
     call setup_rundir(rundir, pftfile, surffile, c)
     call chdir(rundir)
     
     do i=1,np_node
        !copy pft and surf data files into run directory
        cmd = 'cp ' // trim(pftfile_in) // ' ' // trim(pftfile(i))
        call system(cmd)
        cmd = 'chmod u+w ' // trim(pftfile(i))
        call system(cmd)
        cmd = 'cp ' // trim(surffile_in) // ' ' // trim(surffile(i))
        call system(cmd)
        cmd = 'chmod u+w ' // trim(surffile(i))
        call system(cmd)

        !modify pft-physiology files
        if (p .eq. 1) then 
           if (i .gt. 1) call modifyparms(pftfile(i), surffile(i), i-1)
        else
           call modifyparms(pftfile(i), surffile(i), (p-1)*np_node+i-1)
        end if
     end do

     call chdir(trim(optdir))
  end do

end subroutine setup_psens
  

!-----------------get_clm_info (get data about case to use) -------------------------------

subroutine get_clm_info(fname)
 use psens_data
 implicit none

 character(len=800) fname, dummy, cmd
 integer i, j
 !get case information 
 open(8, file=fname)
 read(8,"(13x,A6)") mysite
 read(8,"(13x,A800)") basecase_in
 read(8,"(13x,I1)") mypft
 read(8,"(13x,A800)") optdir
 read(8,"(13x,A800)") clm_rundir
 read(8,"(13x,A800)") ccsm_input
 read(8,"(13x,A800)") sample_file
 read(8,"(13x,I10)") nsamples
 read(8,"(13x,A1)")  fullrun
 read(8,"(13x,I5)")  nyears_ad
 read(8,"(13x,I5)")  nyears_exit
 read(8,"(13x,I5)")  nyears_final
 read(8,"(13x,I5)")  nyears_trans
 close(8)
  
 pftfile_in  = trim(ccsm_input) // '/lnd/clm2/pftdata/pft-physiology.c110425.nc'
 surffile_in = trim(ccsm_input) // '/lnd/clm2/surfdata/surfdata_1x1pt_' // mysite &
      // '_simyr1850.nc'

 !load default ccsm parameters and ranges
 fname = './parms_def.txt'
 open(unit=8, file=fname, status='old')
 read(8,*) dummy
 read(8,*) dummy
 
 n_param=0
 useparm(:)=0
 do i=1,200
    read(8,*,end=10) parm_ranges(1:2,i), ccsm_parms(i), useparm(i), parm_names(i)
    if (useparm(i) .gt. 0) then 
       n_param=n_param+1
       myparams(n_param)=i
    end if
 end do

 10 continue
 close(8)
end subroutine get_clm_info

!-----------------setup_rundir (create run directory and copy files) -----------------------

subroutine setup_rundir(rundir, pftfile, surffile, c)
  !subroutine to copy files to new run directory
  use psens_data
  implicit none

  integer i, j, c
  character(len=800) cmd, line, rundir, pftfile(np_node), surffile(np_node)
  character(len=5) lndst, nyst

  cmd = 'mkdir -p ./' // trim(rundir)
  call system(cmd)
  call chdir(rundir)
  !clean up any old output files
  call system('rm *.nc')
  !copy case directory 
  cmd = "cp -r " // trim(clm_rundir) // "/" // trim(basecase) // "/run/*.nml* ./"
  call system(cmd)
  cmd = "cp -r " // trim(clm_rundir) // "/" // trim(basecase) // "/run/*_in* ./"
  call system(cmd)
  cmd = "cp -r " // trim(clm_rundir) // "/" // trim(basecase) // "/run/*.exe ./"
  call system(cmd)
  cmd = "cp -r " // trim(clm_rundir) // "/" // trim(basecase) // "/run/*eam.txt ./"
  call system(cmd)
  cmd = "cp -r " // trim(clm_rundir) // "/" // trim(basecase) // "/run/timing ./"
  call system(cmd)
  cmd = "cp -r " // trim(clm_rundir) // "/" // trim(basecase) // "/run/*.rc ./"
  call system(cmd)
  if (docontinue) then 
     cmd = "cp -r " // trim(clm_rundir) // "/" // trim(basecase) // "/run/rpointer* ./"
     call system(cmd)
     cmd = "cp -r " // trim(clm_rundir) // "/" // trim(basecase) // "/run/*.r*.*.nc ./"
     call system(cmd)
     cmd = "cp -r " // trim(clm_rundir) // "/" // trim(basecase) // "/run/*.bin ./"
     call system(cmd)
  end if

  !copy ccsm_input data into run directory
  cmd = 'cp -r ' // trim(ccsm_input) // '/atm/datm7/CLM1PT_data/2hr_avg/1x1pt_' // mysite //  &
        ' ./'
  call system(cmd)

  !copy aerosol data file into run directory
  cmd = 'cp ' // trim(ccsm_input) // '/atm/cam/chem/trop_mozart_aero/aero/' &
       //'aerosoldep_monthly_1849-2006_1x1pt_' // mysite // '.nc ./'
  call system(cmd)
  
  !copy nitrogen data file into run directory
  cmd = 'cp ' // trim(ccsm_input) // '/lnd/clm2/ndepdata/fndep_clm_simyr1849-2006_1x1pt_' &
       // mysite // '.nc ./'
  call system(cmd)

  !copy domain file into run directory
  cmd = 'cp ' // trim(ccsm_input) // '/atm/datm7/domain.clm/domain.lnd.1x1pt_' // &
       mysite // '_navy.nc ./'
  call system(cmd)

  !copy grid and frac files
  cmd = 'cp ' // trim(ccsm_input) // '/lnd/clm2/griddata/griddata_1x1pt_' // &
       mysite // '.nc ./'
  call system(cmd)
  cmd = 'cp ' // trim(ccsm_input) // '/lnd/clm2/griddata/fracdata_1x1pt_' // &
       mysite // '_navy.nc ./'
  call system(cmd)
  !copy snicar data
  cmd = 'cp ' // trim(ccsm_input) // '/lnd/clm2/snicardata/snicar_drdt_bst_fit' // &
       '_60_c070416.nc ./'
  call system(cmd)
  cmd = 'cp ' // trim(ccsm_input) // '/lnd/clm2/snicardata/snicar_optics_5bnd_' // &
       'c090915.nc ./'
  call system(cmd)



  !modify stream file to point to local input data directory
  cmd = 'cp clm1PT.1x1pt_' // mysite // '.stream.txt clm1PT.1x1pt_' // &
       mysite // '.stream.txt.tmp'
  call system(cmd)
  open(8, file = 'clm1PT.1x1pt_' // mysite // '.stream.txt.tmp', status='OLD')
  open(9, file = 'clm1PT.1x1pt_' // mysite // '.stream.txt')
  do i=1,500
     read(8, "(A800)", end=31) line
     if (i .eq. 39) then 
        write(9,*) "            ./1x1pt_" // mysite 
     else if (i .eq. 21) then 
        write(9,*) "            ./"
     else
        write(9,*) trim(line)
     end if
  end do
31 continue
  close(8)
  close(9)
  
  !modify datm_atm_in
  cmd = 'cp datm_atm_in datm_atm_in.tmp'
  call system(cmd)
  open(8, file = 'datm_atm_in.tmp', status='OLD')
  open(9, file = 'datm_atm_in')
  do i=1,500
     read(8, '(A800)', end=32) line
     if (i .eq. 3) then 
        write(9,*) "   domainFile     = './domain.lnd.1x1pt_" // mysite // "_navy.nc'"
     else
        write(9,*) trim(line)
     end if
  end do
32 continue
  close(8)
  close(9)

  !modify drv_in (for continue run)
  if (docontinue) then 
     cmd = 'cp drv_in drv_in_tmp'
     call system(cmd)
     open(8, file = 'drv_in_tmp', status='OLD')
     open(9, file = 'drv_in')
     do i=1,500
        read(8, "(A800)", end=33) line
        if (i .eq. 9) then 
           write(9,*) "  start_type = 'continue'"
        else
           write(9,*) trim(line)
        end if
     end do
33   continue
     close(8) 
     close(9)
     
  end if
  
  !similarly modify aerosol stream file
  cmd = 'cp presaero.stream.txt presaero.stream.txt.tmp'
  call system(cmd)
  open(8, file = 'presaero.stream.txt.tmp', status='OLD')
  open(9, file = 'presaero.stream.txt')
  do i=1,500
     read(8, "(A800)", end=34) line
     if (i .eq. 21 .or. i .eq. 45) then 
        write(9,*) '            ./'
     else
        write(9,*) trim(line)
     end if
  end do
34 continue
  close(8)
  close(9)

  
  !change pft physiology file in lnd_in namelists
  cmd = 'cp lnd_in_0001 lnd_in_tmp'
  call system(cmd)  
  do i=1,np_node
     write(lndst,'(I5)') 10000+i

     open(8, file="lnd_in_tmp", status="OLD")
     open(9, file="lnd_in_" // lndst(2:5))
  
     do j=1,100
        read(8,"(A800)",end=35) line
        if (line(1:8) .eq. " fpftcon" .or. line(1:9) .eq. "  fpftcon") then 
           write(9,*) " fpftcon               = '" // trim(pftfile(i)) // "'"
        else if (line(1:8) .eq. " fsurdat" .or. line(1:9) .eq. "  fsurdat") then
           write(9,*) " fsurdat               = '" // trim(surffile(i)) // "'"
        else if (line(1:24) .eq. " stream_fldfilename_ndep") then 
           write(9,*) " stream_fldfilename_ndep  =     '" // &
                "./fndep_clm_simyr1849-2006_1x1pt_" // mysite // ".nc'"
        else if (line(1:8) .eq. ' fsurdat' .or. line(1:9) .eq. &
             '  fsurdat') then
           write(9,*) " fsurdat       = './surfdata_1x1pt_" // mysite // &
                "_simyr1850.nc'"
        else if (line(1:9) .eq. ' fatmgrid' .or. line(1:10) .eq. '  fatmgrid') then 
           write(9,*) " fatmgrid = './griddata_1x1pt_" //  mysite // ".nc'" 
        else if (line(1:11) .eq. ' fatmlndfrc' .or. line(1:12) .eq. '  fatmlndfrc') then 
           write(9,*) " fatmlndfrc = './fracdata_1x1pt_" //  mysite // "_navy.nc'" 
        else if (line(1:11) .eq. ' fsnowaging' .or. line(1:12) .eq. '  fsnowaging') then 
           write(9,*) " fsnowaging = './snicar_drdt_bst_fit_60_c070416.nc'"
        else if (line(1:12) .eq. ' fsnowoptics' .or. line(1:13) .eq. '  fsnowoptics') then 
           write(9,*) " fsnowoptics = './snicar_optics_5bnd_c090915.nc'"
        else if (c .eq. 2. .and. line(1:7) .eq. ' nrevsn' .or. line(1:8) .eq. '  nrevsn') then
           write(nyst,'(I5)') 10000+nyears_ad+1
           write(9,*) " nrevsn = './" // trim(basecase) // ".clm2.r." // nyst(2:5) // &
                "-01-01-00000.nc'"
        else if (c .eq. 3 .and. line(1:8) .eq. ' finidat' .or. line(1:9) .eq. '  finidat') then 
           write(nyst,'(I5)') 10000+nyears_ad + nyears_exit + 1
           write(9,*) " finidat = './" // trim(basecase) // ".clm2.r." // nyst(2:5) // &
                "-01-01-00000.nc'"
        else if (c .eq. 4 .and. line(1:8) .eq. ' finidat' .or. line(1:9) .eq. '  finidat') then 
           write(nyst,'(I5)') 10000+nyears_final + 1
           write(9,*) " finidat = './" // trim(basecase) // ".clm2.r." // nyst(2:5) // &
                "-01-01-00000.nc'"
        else
           write(9,*) trim(line)
        end if 
        
     end do

35   continue
     close(8)
     close(9)

  end do

  !modify logfile output locations  
  call modifylogio_loc('atm')
  call modifylogio_loc('cpl')
  call modifylogio_loc('glc')
  call modifylogio_loc('ice')
  call modifylogio_loc('lnd')
  call modifylogio_loc('ocn')
  
  call chdir(trim(optdir))
  
end subroutine setup_rundir

!--------------modifylogio_loc (modify ccsm log file locations)---------------------------

subroutine modifylogio_loc(type)

  use psens_data
  implicit none

  !subroutine to modify log file output location  
  integer i, p, nf
  character(len=3)   type
  character(len=800) line, cmd, fname_in
  character(len=5)   pst
  
  nf=1
  if (type .eq. 'lnd') nf=np_node

  do p=1,nf
    write(pst,'(I5)') 10000+p
    pst(1:1)='_'
    fname_in=type // "_modelio.nml"
    if (type .eq. 'lnd') fname_in=trim(fname_in) // pst
    open(8, file=trim(fname_in), status="OLD")
    open(9, file=type // "_modelio.nml_tmp")
    do i=1,5
       read(8,"(A800)") line
       if (line(1:7) .eq. "   diro") then
          write(9,*) '   diro   = "./   "'
       !else if (line(1:7) .eq. "   diri") then 
       !   write(9,*) '   diri   = "./inputs/' // type // '"'
       else
          write(9,*) trim(line)
       end if
    end do
    close(8)
    close(9)
    cmd = "cp " // type // "_modelio.nml_tmp " // trim(fname_in)
    call system(cmd)
    !copy input files to working directory
    !cmd = 'mkdir -p ./inputs/' // type
    !call system(cmd)
    !cmd = 'cp -r ' // trim(clm_rundir) // "/" // trim(basecase) // '/' // type // '/* ./inputs/' &
    !     // type
    !call system(cmd)
 end do

end subroutine modifylogio_loc
  

!----------------modifyparms (modify pft-physiology file) --------------------------------


subroutine modifyparms(pftfile, surffile, p)
  !subroutine to manipulate parameters in PFT-physiology file

  use netcdf
  use psens_data
  implicit none

  character(len=800) pftfile, surffile
  character(len=15) parm_name
  integer i, j, NCID, RCODE, varid, pnum, clock, p
  double precision parm_fac, data(npfts), data1d
  double precision datas(1,1)
  double precision myparmval
  logical validsample
  integer :: nr

  print*, 'TEST5', p
  do i=1,np_all
     if (useparm(i) .eq. 1) then 
        parm_name = parm_names(i)
        if (i .le. np) then           !PFT-specific
           RCODE = NF90_open(trim(pftfile), NF90_WRITE, NCID)
           RCODE = NF90_INQ_VARID(NCID, trim(parm_name), varid)
           
           RCODE = NF90_GET_VAR(NCID, varid, data)
           data(mypft+1) = myrand(i,p)
           
           RCODE = NF90_PUT_VAR(NCID, varid, data)
           
           RCODE = NF90_CLOSE(NCID)
        else if (i .gt. np .and. i .le. np_all-np_surf) then     !non PFT-specific
           RCODE = NF90_open(trim(pftfile), NF90_WRITE, NCID)
           RCODE = NF90_INQ_VARID(NCID, trim(parm_name), varid)
           
           RCODE = NF90_GET_VAR(NCID, varid, data1d)
           !data1d  = data1d*parm_fac
           data1d = myrand(i,p)
           
           RCODE = NF90_PUT_VAR(NCID, varid, data1d)
           RCODE = NF90_CLOSE(NCID)
        else                       !surface data file
           RCODE = NF90_open(trim(surffile), NF90_WRITE, NCID)
           RCODE = NF90_INQ_VARID(NCID, trim(parm_name), varid)
           
           RCODE = NF90_GET_VAR(NCID, varid, data1d)
           !data(mypft+1)  = data(mypft+1)*parm_fac
           data1d = myrand(i,p)
           
           RCODE = NF90_PUT_VAR(NCID, varid, data1d)     
           RCODE = NF90_CLOSE(NCID)
        end if
     end if
  end do

end subroutine modifyparms
