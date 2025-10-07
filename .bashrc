# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi 

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=


# User specific aliases and functions
  #interactive
  #/usr/local/bin/salloc --job-name=interactive --mem-per-cpu=4GB --nodes=1 --ntasks=1 --time=1:00:00 --account=windfall --partition=windfall
  #module load git/2.9
  module load gnu13/13.2.0
  module load openmpi5/5.0.5
 # module load python/3.6/3.6.5
  module load netcdf/4.9.2
  module load netcdf-fortran/4.6.1
 # module load cmake/3.15.4
 #module load openblas
  module load phdf5/1.14.0
  module load pnetcdf/1.12.3
  module load scalapack/2.2.0
  module load openblas/0.3.21
  module load perl/5.36.0
  module load ncl_ncarg/6.6.2
  module load nco/4.9.3
#  module load pnetcdf/1.12.0
#  module load phdf5/1.10.5
  export NCARG_ROOT=/opt/ohpc/pub/apps/ncl_ncarg/6.6.2

##-----EMSF install---------------------
  export ESMF_DIR=/home/u22/chopinsong/software/esmf-8.3.0
  export ESMF_INSTALL_PREFIX=/home/u22/chopinsong/software/esmf-8.3.0/INSTALL
#  export ESMF_BOPT="g"
  export REGRID_PROC=28  
  if [[ $REGRID_PROC > 1 ]]; then
        export ESMF_COMM=openmpi
  else
        export ESMF_COMM=mpiuni
  fi
  export ESMF_COMPILER=gfortran
  export ESMF_NETCDF="split"
  export ESMF_NETCDF_LIBPATH=/opt/ohpc/pub/libs/gnu13/openmpi5/netcdf/4.9.2/lib
  export ESMF_NETCDF_INCLUDE=/opt/ohpc/pub/libs/gnu13/openmpi5/netcdf/4.9.2/include
  export ESMF_NETCDFF_LIBPATH=/opt/ohpc/pub/libs/gnu13/openmpi5/netcdf-fortran/4.6.1/lib
  export ESMF_NETCDFF_INCLUDE=/opt/ohpc/pub/libs/gnu13/openmpi5/netcdf-fortran/4.6.1/include
  export ESMF_NETCDF_LIBS='-lnetcdff -lnetcdf'
  export LD_LIBRARY_PATH=/opt/ohpc/pub/mpi/openmpi3-gnu8/3.1.4/lib:$LD_LIBRARY_PATH
  export PATH="/opt/ohpc/pub/libs/gnu8/openmpi3/pnetcdf/1.12.0/bin:$PATH"
# NETCDF
  export NETCDF_PATH=/opt/ohpc/pub/libs/gnu13/openmpi5/netcdf/4.9.2
  export NETCDF_C_PATH=/opt/ohpc/pub/libs/gnu13/openmpi5/netcdf/4.9.2
  export NETCDF_FORTRAN_PATH=/opt/ohpc/pub/libs/gnu13/openmpi5/netcdf-fortran/4.6.1
  export NETCDF=/opt/ohpc/pub/libs/gnu13/openmpi5/netcdf-fortran/4.6.1
#  export NETCDF_PATH=/opt/ohpc/pub/libs/gnu8/openmpi3/netcdf/4.7.1
#  export NETCDF_C_PATH=/opt/ohpc/pub/libs/gnu8/openmpi3/netcdf/4.7.1
#  export NETCDF_FORTRAN_PATH=/opt/ohpc/pub/libs/gnu8/openmpi3/netcdf-fortran/4.5.2

#HDF5
  export HDF5_DIR=/opt/ohpc/pub/libs/gnu13/openmpi5/hdf5/1.14.0
  export HDF5_LIB=/opt/ohpc/pub/libs/gnu13/openmpi5/hdf5/1.14.0/lib
  export HDF5_BIN=/opt/ohpc/pub/libs/gnu13/openmpi5/hdf5/1.14.0/bin
  export HDF5_INC=/opt/ohpc/pub/libs/gnu13/openmpi5/hdf5/1.14.0/include
                                                      
# Ferret                                             
export PATH="/home/u22/chopinsong/ferret_v6.93/bin:$PATH" 
source /home/u22/chopinsong/ferret_v6.93/ferret_paths     

#perl
export PERL5LIB=/home/u32/tianyihu/perl5/lib/perl5/x86_64-linux-thread-multi:/home/u32/tianyihu/perl5/lib/perl5
#source /home/u22/chopinsong/my_project/bin/activate
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
#__conda_setup="$('/opt/ohpc/pub/apps/anaconda/2020.11/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
#if [ $? -eq 0 ]; then
#    eval "$__conda_setup"
#else
#    if [ -f "/opt/ohpc/pub/apps/anaconda/2020.11/etc/profile.d/conda.sh" ]; then
#        . "/opt/ohpc/pub/apps/anaconda/2020.11/etc/profile.d/conda.sh"
#    else
#        export PATH="/opt/ohpc/pub/apps/anaconda/2020.11/bin:$PATH"
#    fi
#fi
#unset __conda_setup
#export PATH="/home/u22/chopinsong/.conda/envs/mpi4py/bin:$PATH"  
# <<< conda initialize <<<

