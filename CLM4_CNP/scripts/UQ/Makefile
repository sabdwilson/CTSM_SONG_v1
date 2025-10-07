F90 = mpif90
CC  = mpicc

# Define environment
ENVIRON = -DERGO
ENVIRON = -DHAVE_MPI

#Compiler options
FFLAGS = -O3 -module obj
CFLAGS = -O3
MODEL = CLM

# Preprocessor options
CPP = /usr/bin/cpp
FCPPFLAGS = $(ENVIRON)
FSRCDIR = ./srctmp

#directories
OD = ./obj
BASE_NETCDF=/home/zdr/netcdf-4.0
INCDIR = -I/usr/include -I$(HOMEDIR)/include -I$(BASE_NETCDF)/include 
LIBDIR = -L. -L$(BASE_NETCDF)/lib 



all: postproc psens


psens: $(OD)/psens.o
	$(F90) -o $@ $(FFLAGS) $(INCDIR) $^ $(LIBDIR) -lnetcdf


postproc: $(OD)/postproc.o
	$(F90) -o $@ $(FFLAGS) $(INCDIR) $^ $(LIBDIR) -lnetcdf

#object files
$(OD)/psens.o: psens.f90
	$(F90) -c $(FFLAGS) $(INCDIR) psens.f90 -o $@
$(OD)/postproc.o: postproc.f90
	$(F90) -c $(FFLAGS) $(INCDIR) postproc.f90 -o $@

clean:
	rm -rf *.o *.mod obj/* postproc psens

depend:
	makedepend -- $(CFLAGS) -- $(SRCS) -- $(INCDIR)
