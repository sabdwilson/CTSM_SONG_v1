SUPPORTS_CXX := FALSE
ifeq ($(COMPILER),intel)
  FC_AUTO_R8 :=  -r8 
  FFLAGS_NOOPT :=  -O0 
  CXX_LDFLAGS :=  -cxxlib 
  SUPPORTS_CXX := TRUE
  FFLAGS :=  -qno-opt-dynamic-align  -convert big_endian -assume byterecl -ftz -traceback -assume realloc_lhs -fp-model source  
  FIXEDFLAGS :=  -fixed  
  SCC :=  icc 
  SFC :=  ifort 
  MPICC :=  mpicc  
  CFLAGS :=   -qno-opt-dynamic-align -fp-model precise -std=gnu99 
  MPIFC :=  mpif90 
  MPICXX :=  mpicxx 
  FREEFLAGS :=  -free 
  CXX_LINKER := FORTRAN
  SCXX :=  icpc 
endif
ifeq ($(COMPILER),gnu)
  FC_AUTO_R8 :=  -fdefault-real-8 
  HAS_F2008_CONTIGUOUS := FALSE
  FFLAGS_NOOPT :=  -O0 
  SUPPORTS_CXX := TRUE
  FFLAGS :=   -fconvert=big-endian -ffree-line-length-none -ffixed-line-length-none 
  FIXEDFLAGS :=   -ffixed-form 
  SCC :=  gcc 
  SFC :=  gfortran 
  MPICC :=  mpicc  
  CFLAGS :=  -std=gnu99 
  MPIFC :=  mpif90 
  MPICXX :=  mpicxx 
  FREEFLAGS :=  -ffree-form 
  CXX_LINKER := FORTRAN
  SCXX :=  g++ 
endif
CPPDEFS := $(CPPDEFS)  -DCESMCOUPLED 
ifeq ($(MODEL),pop)
  CPPDEFS := $(CPPDEFS)  -D_USE_FLOW_CONTROL 
endif
ifeq ($(MODEL),ufsatm)
  FFLAGS := $(FFLAGS)  $(FC_AUTO_R8) 
  CPPDEFS := $(CPPDEFS)  -DSPMD 
endif
ifeq ($(MODEL),mom)
  FFLAGS := $(FFLAGS)  $(FC_AUTO_R8) -Duse_LARGEFILE
endif
ifeq ($(COMPILER),intel)
  CPPDEFS := $(CPPDEFS)  -DFORTRANUNDERSCORE -DCPRINTEL
  ifeq ($(compile_threaded),TRUE)
    FFLAGS := $(FFLAGS)  -qopenmp 
    CFLAGS := $(CFLAGS)  -qopenmp 
  endif
  ifeq ($(DEBUG),TRUE)
    FFLAGS := $(FFLAGS)  -O0 -g -check uninit -check bounds -check pointers -fpe0 -check noarg_temp_created 
    CFLAGS := $(CFLAGS)  -O0 -g 
  endif
  ifeq ($(DEBUG),FALSE)
    FFLAGS := $(FFLAGS)  -O2 -debug minimal 
    CFLAGS := $(CFLAGS)  -O2 -debug minimal 
  endif
  ifeq ($(MPILIB),mvapich2)
    SLIBS := $(SLIBS)  -mkl=cluster 
  endif
  ifeq ($(MPILIB),mpich2)
    SLIBS := $(SLIBS)  -mkl=cluster 
  endif
  ifeq ($(MPILIB),mpt)
    SLIBS := $(SLIBS)  -mkl=cluster 
  endif
  ifeq ($(MPILIB),openmpi)
    SLIBS := $(SLIBS)  -mkl=cluster 
  endif
  ifeq ($(MPILIB),mpich)
    SLIBS := $(SLIBS)  -mkl=cluster 
  endif
  ifeq ($(MPILIB),mvapich)
    SLIBS := $(SLIBS)  -mkl=cluster 
  endif
  ifeq ($(MPILIB),impi)
    SLIBS := $(SLIBS)  -mkl=cluster 
  endif
  ifeq ($(MPILIB),mpi-serial)
    SLIBS := $(SLIBS)  -mkl 
  endif
  ifeq ($(compile_threaded),TRUE)
    LDFLAGS := $(LDFLAGS)  -qopenmp 
  endif
endif
ifeq ($(COMPILER),gnu)
  CPPDEFS := $(CPPDEFS)  -DFORTRANUNDERSCORE -DNO_R16 -DCPRGNU
  CPPDEFS := $(CPPDEFS)  -DFORTRANUNDERSCORE -DNO_R16 -DCPRGNU
  SLIBS := $(SLIBS) -L$(NETCDF_FORTRAN_PATH)/lib -lnetcdff -L$(NETCDF_PATH)/lib -lnetcdf -L$(HDF5)/lib -lhdf5_hl -lhdf5 -L$(LAPACK_DIR)/lib -llapack -L$(BLASDIR) -lblas
  ifeq ($(compile_threaded),TRUE)
    FFLAGS := $(FFLAGS)  -fopenmp 
    FFLAGS := $(FFLAGS)  -fopenmp 
    CFLAGS := $(CFLAGS)  -fopenmp 
    CFLAGS := $(CFLAGS)  -fopenmp 
  endif
  ifeq ($(DEBUG),TRUE)
    FFLAGS := $(FFLAGS)  -g -Wall -Og -fbacktrace -ffpe-trap=zero,overflow -fcheck=bounds 
    FFLAGS := $(FFLAGS)  -g -Wall -Og -fbacktrace -ffpe-trap=zero,overflow -fcheck=bounds 
    CFLAGS := $(CFLAGS)  -g -Wall -Og -fbacktrace -ffpe-trap=invalid,zero,overflow -fcheck=bounds 
    CFLAGS := $(CFLAGS)  -g -Wall -Og -fbacktrace -ffpe-trap=invalid,zero,overflow -fcheck=bounds 
  endif
  ifeq ($(DEBUG),FALSE)
    FFLAGS := $(FFLAGS)  -O 
    FFLAGS := $(FFLAGS)  -O 
    CFLAGS := $(CFLAGS)  -O 
    CFLAGS := $(CFLAGS)  -O 
  endif
  ifeq ($(compile_threaded),TRUE)
    LDFLAGS := $(LDFLAGS)  -fopenmp 
    LDFLAGS := $(LDFLAGS)  -fopenmp 
  endif
endif
ifeq ($(MODEL),ufsatm)
  INCLDIR := $(INCLDIR)  -I$(EXEROOT)/atm/obj/FMS 
endif
