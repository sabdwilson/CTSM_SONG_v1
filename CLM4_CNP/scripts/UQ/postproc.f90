module globals

integer NVAR_MAX, NENS_MAX, NT_MAX
parameter(NVAR_MAX = 10)
parameter(NPARMS_MAX = 100)
parameter(NENS_MAX = 15000)
parameter(NT_MAX   = 10)

end module globals


program postproc

use globals
use netcdf
implicit none

include "mpif.h"

character(len=200) filename, case, outfile, optdir, dummy
character(len=50) varnames(NVAR_MAX), thisvar
character(len=50) pnames(NPARMS_MAX), fst
characteR(len=6) rst, est
character(len=5) yst, nst
character(len=3) mst
character(len=15) pname_temp
integer i, r, y ,m, n, v, n_years, n_vars, nav, varid
integer myid, ierr, numprocs, npy, n_parms, ens_size, start_year
integer npf, ind(16,NVAR_MAX), thisgroup, thisinst
integer :: RCODE, NCID, opt
integer mystart(3), mycount(3)
double precision val(NT_MAX)
double precision obs_in(5), sse_min
double precision vals_temp(NVAR_MAX, NT_MAX)
double precision vals_out(NVAR_MAX,NENS_MAX,NT_MAX)     !n_vars, size, n_tsteps
double precision vals_out_all(NVAR_MAX,NENS_MAX,NT_MAX)
double precision obs(NVAR_MAX,NT_MAX), parms_data(3)
double precision sse(NVAR_MAX, NENS_MAX)
real tempvalt(1,365), tempvalp(17)
double precision parms_out(NPARMS_MAX,NENS_MAX)
double precision parms_out_all(NPARMS_MAX,NENS_MAX)
logical useobs
varnames(:)=''
pnames(:)=''

!------------------- user input ------------------------------------

optdir='/tmp/work/zdr/UQ'
case='OPT_US-NR1_I1850CN_ad_spinup'

ens_size   = 10001   !size of model ensemble
start_year = 191    !model year to start analysis
n_years    = 1      !number of years to average over
npy        = 1      !number of output files per model year
npf        = 10      !number of model output timesteps per file 
nav        = 10     !number of output timesteps to average over
useobs     = .false.
!variable names
varnames(1)='GPP'
varnames(2)='TLAI'
varnames(3)='ER'
varnames(4)='HR'
varnames(5)='NPP'
varnames(6)='TOTSOMC'
varnames(7)='TOTVEGC'


!get parameters from parms_def file
filename='./parms_def.txt'
open(8,file=trim(filename))
read(8,*) dummy
read(8,*) dummy
n_parms=0
do i=1,500
   read(8,'(3(f8.2,1x),I3,2x,A15)',end=5) parms_data, opt, pname_temp
   if (opt .ge. 1) then 
      n_parms = n_parms + 1
      pnames(n_parms) = pname_temp
   end if
end do

5 continue


!---------------end user input------------------------------------------

!figure out how many varnames and parameters
n_vars=0
do n=1,NVAR_MAX
   if (varnames(n) .ne. '') n_vars = n_vars+1
end do

parms_out(:,:)=0d0
parms_out_all(:,:)=0d0
vals_out(:,:,:)=0d0
vals_out_all(:,:,:)=0d0

call MPI_INIT(ierr)
call MPI_COMM_RANK(MPI_COMM_WORLD, myid, ierr)
call MPI_COMM_SIZE(MPI_COMM_WORLD, numprocs, ierr)

do r=myid,ens_size,numprocs            !loop through groups
   ind(:,:)=1
   thisgroup=r/16+1
   thisinst = mod(r,16)+1

   do y=1,n_years         !loop through years
      do m=1,npy          !loop though months
         write(rst,'(I6)') 100000+thisgroup      !group number
         write(yst,'(I5)') 10000+start_year+y-1  !year 
         write(mst,'(I3)') 100+m                 !month
         write(nst,'(I5)') 10000+thisinst        !instance
         write(est,'(I6)') 100000+r            !ensemble member number
        
         !get varnames
         if (npy .eq. 12) then   !default monthly output 
            filename=trim(optdir) // '/' // trim(case) // '/g' // rst(2:6) // '/' &
                 // trim(case) // '.clm2_'// nst(2:5) // '.h0.' // yst(2:5) &
                 // '-' // mst(2:3) // '.nc'        
         end if
         if (npy .eq. 1) then     !annual output (annual averages only)
            filename = trim(optdir) // '/' // trim(case) // '/g' // rst(2:6) // '/' &
                 // trim(case) // '.clm2_'// nst(2:5) // '.h0.' // yst(2:5) &
                 // '-01-01-00000.nc'        
         end if
         
         RCODE = NF90_OPEN(trim(filename), NF90_NOWRITE, NCID)
         do v=1,n_vars
            RCODE = NF90_INQ_VARID(NCID, trim(varnames(v)), varid)  
            RCODE = NF90_GET_VAR(NCID, varid, tempvalt(1:1,1:npf))
            do i=1,npf
               val(i)=tempvalt(1,i)*1d0
               vals_temp(v,ind(n,v))=val(i)
               ind(n,v)=ind(n,v)+1
            end do
         end do
         RCODE = NF90_CLOSE(NCID)

         !get parameters
         if (m .eq. 1 .and. y .eq. 1) then 
            if (r .eq. 0) then 
               filename=trim(optdir) // '/' // trim(case) // '/g' // rst(2:6) // &
                    '/pft-physiology_control.nc'
            else
               filename=trim(optdir) // '/' // trim(case) // '/g' // rst(2:6) //  &
                    '/pft-physiology_' // est(2:6) // '.nc'
            end if
            RCODE = NF90_OPEN(trim(filename), NF90_NOWRITE, NCID)
            do v=1,n_parms
               RCODE = NF90_INQ_VARID(NCID, trim(pnames(v)), varid) 
               mystart(1) = 1
               if (v .le. 40) mystart(1)=2 
               RCODE = NF90_GET_VAR(NCID, varid, tempvalp(1:1),mystart(1:1))
               parms_out(v,r+1) = tempvalp(1)*1d0
            end do
            RCODE = NF90_CLOSE(NCID)
         end if
      end do
   end do

   !do time averaging
   do i=1,1 !n_years*npy/nav
      do v=1,n_vars
         vals_out(v,r+1,i) = sum(vals_temp(v,(i-1)*nav+1:i*nav))/nav
      end do
   end do
end do

call MPI_REDUCE(vals_out, vals_out_all, NVAR_MAX*NT_MAX*NENS_MAX, &
     MPI_DOUBLE_PRECISION, MPI_SUM, 0, MPI_COMM_WORLD, ierr)
call MPI_REDUCE(parms_out, parms_out_all, NPARMS_MAX*NENS_MAX, &
     MPI_DOUBLE_PRECISION, MPI_SUM, 0, MPI_COMM_WORLD, ierr)

if (myid .eq. 0) then
  !load observations (restricted to daily NEE)
  if (useobs) then 
     filename=trim(optdir) // '/observations/US-NR1_NEE.txt'
     open(unit=8, file=trim(filename))
     read(8,*) dummy! 
     n=1
     do i=1,10000
        read(8,*,end=20) obs_in(1:5)
        if (obs_in(1) .eq. start_year .and. obs_in(1) .lt. start_year+n_years) then 
           obs(1,n)=obs_in(3)*12d0/1e6
           n=n+1
        end if
     end do
20   continue
     close(8)
     !calculate sse
     sse(1,:)=0d0
     sse_min=99999
     do n=1,ens_size
        do i=1,n_years*npy*npf
           sse(1,n)=sse(1,n)+(obs(1,i)-vals_out_all(1,n,i))**2
        end do
        if (sse(1,n) .lt. sse_min) then 
           sse_min = sse(1,n)
           print*, n, sse_min
        end if
     end do
  else
     obs(:,:)=-999.
     sse(:,:)=-999.
  end if

  !write variable files
  !do v=1,n_vars
  !   outfile=trim(varnames(v)) // '_out.txt'
  !   open(9,file=outfile)
  !   do y=1,n_years*npy/nav
  !      write(9,'(1024(g13.6,1x))') vals_out_all(v,1:n_groups*16,y)
  !   end do
  !   close(9)
  !end do
  !write parameter file
  !outfile='parms_out.txt'
  !open(9,file=outfile)
  !write(9,'(9(g13.6,1x))') parms_out_all(1:n_parms,:)
  !close(9)
  call write_outnetcdf('test.nc', varnames, pnames, vals_out_all, parms_out_all, &
       obs, start_year, ens_size, 365d0/(npy*npf/nav), n_years*npy*npf/nav)
  open(9,file='test.txt')
  parms_out_all(36,:)=-999
  do i=1,ens_size
     write(9,'(78(f24.16,1x))') parms_out_all(1:n_parms,i), vals_out_all(1:n_vars,i,1)
  end do
  close(9)

end if

call MPI_FINALIZE(ierr)
end program postproc


!--------------------------------------------------------------
subroutine write_outnetcdf(filename, varnames, pnames, vals_out_all, parms_out_all, &
     obs, start_year, ens_size, tstep, nsteps)

use netcdf
use globals

implicit none

character(len=200) filename
character(len=50) varnames(NVAR_MAX)
character(len=50) pnames(NPARMS_MAX)
character(len=5) startyrst
double precision vals_out_all(NVAR_MAX,NENS_MAX,NT_MAX)
double precision parms_out_all(NPARMS_MAX,NENS_MAX), dtime(nsteps)
double precision obs(10,365), tstep
integer i, n, ens_size, start_year, nsteps, outvarid(200)
integer RCODE, NCID, dimid(2), n_vars, n_parms

!figure out how many varnames and parameters
n_vars=0
n_parms=0
do n=1,NVAR_MAX
   if (varnames(n) .ne. '') n_vars = n_vars+1
end do
do n=1,NPARMS_MAX
   if (pnames(n) .ne. '') n_parms = n_parms+1
end do

RCODE = NF90_CREATE(trim(filename), NF90_CLOBBER, NCID)
RCODE = NF90_DEF_DIM(NCID, 'DTIME', nsteps, dimid(2))
RCODE = NF90_DEF_DIM(NCID, 'ens', ens_size, dimid(1))

!time variable
write(startyrst,'(I5)') 10000+start_year
RCODE = NF90_DEF_VAR(NCID, 'DTIME', NF90_DOUBLE, dimid(2), outvarid(n_vars+n_parms+1))
RCODE = NF90_PUT_ATT(NCID, outvarid(n_vars+n_parms+1), 'units', 'days since ' // startyrst(2:5) // &
	'-01-01')

!define varnames and parameters
do i=1,n_vars
   RCODE = NF90_DEF_VAR(NCID, trim(varnames(i)), NF90_DOUBLE, dimid, outvarid(i))
   print*, varnames(i), RCODE
end do
do i=1,n_parms
   RCODE = NF90_DEF_VAR(NCID, trim(pnames(i)), NF90_DOUBLE, dimid(1), outvarid(n_vars+i))
   print*, pnames(i), RCODE
end do
!observations
RCODE = NF90_DEF_VAR(NCID, 'NEE_observed', NF90_DOUBLE, dimid(2), &
     outvarid(n_vars+n_parms+2))
RCODE = NF90_ENDDEF(NCID)

!create and put time variable
do i=1,nsteps
   dtime(i)=(i-0.5d0)*tstep
end do
RCODE = NF90_PUT_VAR(NCID, outvarid(n_vars+n_parms+1), dtime) 
!put varnames
do i=1,n_vars
   RCODE = NF90_PUT_VAR(NCID, outvarid(i), vals_out_all(i,1:ens_size,1:nsteps))
   print*, i, RCODE
end do
!put parameters
do i=1,n_parms
   RCODE = NF90_PUT_VAR(NCID, outvarid(n_vars+i), parms_out_all(i,1:ens_size))
   print*, i, RCODE
end do
RCODE = NF90_PUT_VAR(NCID, outvarid(n_vars+n_parms+2), obs(1,1:nsteps))
   
RCODE = NF90_CLOSE(NCID)

end subroutine write_outnetcdf



!--------------------------------------------------------------
subroutine getnetcdfvar(filename, varname, n_var, npf, val)

use netcdf

implicit none

character(len=200) filename
character(len=50), varname
integer v, RCODE, NCID, varid, n_var, npf
double precision tempval, tempval_pft(17), val(365)
real tempvalt(1,1,365)

val(:)=-999

RCODE = NF90_OPEN(trim(filename), NF90_NOWRITE, NCID)
print*, RCODE
!varname = trim(varname)
print*, varname
if (npf .eq. 1) then 
   if (trim(varname) .eq. 'mp' .or. trim(varname) .eq. 'leafcn' .or. &
        trim(varname) .eq. 'flnr' .or. trim(varname) .eq. 'froot_leaf' .or. &
        trim(varname) .eq. 'leaf_long' .or. trim(varname) .eq. 'roota_par' &
        .or. trim(varname) .eq. 'rootb_par') then  !multiple pfts per parameter file
      RCODE = NF90_INQ_VARID(NCID, trim(varname), varid)
      RCODE = NF90_GET_VAR(NCID, varid, tempval_pft)
      val(1)=tempval_pft(2)
   else           !one value per file
      RCODE = NF90_INQ_VARID(NCID, trim(varname), varid)
      RCODE = NF90_GET_VAR(NCID, varid, tempval)
      val(1)=tempval
   end if
else              !multiple timesteps per output file
   RCODE = NF90_INQ_VARID(NCID, trim(varname), varid)
   print*, RCODE
   RCODE = NF90_GET_VAR(NCID, varid, tempvalt(1,1,1:npf))
   print*, RCODE
   val(1:npf)=tempvalt(1,1,1:npf)*1d0
   print*, tempvalt(1,1,1:npf)*1d0
end if

RCODE = NF90_CLOSE(NCID)

end subroutine getnetcdfvar
