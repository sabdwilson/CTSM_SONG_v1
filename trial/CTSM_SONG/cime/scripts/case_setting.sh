#!/bin/bash

export CASERANK=1 #1-AP SPINUP 2-Final SPINUP 3-Historical
export CTSMROOT=/home/u22/chopinsong/CTSM_SONG
export CIMEROOT=/home/u22/chopinsong/CTSM_SONG/cime
export MYDATAFILES=/xdisk/chopinsong/chopinsong/CTSM_inputdata/lnd/clm2/mydatafiles/
export OUTPUT=/groups/chopinsong/CTSM_projects
export SITE=US-WKG

export CASE1=1x1pt_$SITE"_spinup_amf"
export CASE2=1x1pt_$SITE"_spinup_final_amf"
export CASE3=1x1pt_$SITE"_hist_amf"

export CASEPATH1=$CTSMROOT/case_run/$CASE1
export CASEPATH2=$CTSMROOT/case_run/$CASE2
export CASEPATH3=$CTSMROOT/case_run/$CASE3

export OUTPUTPATH1=$OUTPUT/$CASE1/run
export OUTPUTPATH2=$OUTPUT/$CASE2/run
export OUTPUTPATH3=$OUTPUT/$CASE3/run

./xmlchange MPILIB=openmpi
./xmlchange DEBUG=TRUE
./xmlchange CLM_BLDNML_OPTS="-bgc bgc -mask navy -no-crop"
./xmlchange DATM_CLMNCEP_YR_START=2005
./xmlchange DATM_CLMNCEP_YR_END=2020
./xmlchange DATM_CLMNCEP_YR_ALIGN=2005
./xmlchange ATM_NCPL=24 
echo "hist_nhtfrq = 0,0" >> user_nl_clm
echo "hist_mfilt  = 1440,1440" >> user_nl_clm

if [[ $CASERANK -eq 1 ]]
then
  ./xmlchange JOB_WALLCLOCK_TIME=07:00:00
  ./xmlchange CLM_ACCELERATED_SPINUP="on"
  ./xmlchange RUN_TYPE=startup
  ./xmlchange RUN_STARTDATE="2005-01-01"
  ./xmlchange STOP_N=120
  ./xmlchange STOP_OPTION=nyears
  ./xmlchange TPROF_TOTAL=1
  ./xmlchange HIST_OPTION=nyears
  ./xmlchange HIST_N=50
  ./xmlchange AVGHIST_OPTION=nyears
  ./xmlchange AVGHIST_N=50
  echo "taxmode='cycle','cycle','cycle'" >> user_nl_datm
elif [[ $CASERANK -eq 2 ]]
then
  ./xmlchange JOB_WALLCLOCK_TIME=07:00:00
  ./xmlchange CLM_ACCELERATED_SPINUP="off"
  ./xmlchange RUN_TYPE=startup
  ./xmlchange RUN_STARTDATE="2005-01-01"
  ./xmlchange STOP_N=120
  ./xmlchange STOP_OPTION=nyears
  ./xmlchange TPROF_TOTAL=1
  ./xmlchange HIST_OPTION=nyears
  ./xmlchange HIST_N=50
  ./xmlchange AVGHIST_OPTION=nyears
  ./xmlchange AVGHIST_N=50
  cp $OUTPUTPATH1/rpointer.atm .
  cp $OUTPUTPATH1/rpointer.drv .
  cp $OUTPUTPATH1/rpointer.lnd .
  cp $OUTPUTPATH1/$CASE1.cpl.r.*.nc .
  cp $OUTPUTPATH1/$CASE1.clm2.r.*.nc .
  cp $OUTPUTPATH1/$CASE1.datm.rs1.*.bin .
  echo "taxmode='cycle','cycle','cycle'" >> user_nl_datm
  echo "Enter fnindat number:"
  read STR
  echo "finidat='$CASEPATH2/$CASE1.clm2.r.$STR.nc'" >> user_nl_clm
else
  ./xmlchange JOB_WALLCLOCK_TIME=03:00:00
  ./xmlchange CLM_ACCELERATED_SPINUP="off"
  ./xmlchange RUN_TYPE=startup
  ./xmlchange RUN_STARTDATE="2005-01-01"
  ./xmlchange STOP_N=16
  ./xmlchange STOP_OPTION=nyears
  ./xmlchange TPROF_TOTAL=1
  ./xmlchange HIST_OPTION=nyears
  ./xmlchange HIST_N=16
  ./xmlchange AVGHIST_OPTION=nyears
  ./xmlchange AVGHIST_N=16
  ./xmlchange CLM_CO2_TYPE=diagnostic
  ./xmlchange CCSM_BGC=CO2A
  cp $OUTPUTPATH2/rpointer.atm .
  cp $OUTPUTPATH2/rpointer.drv .
  cp $OUTPUTPATH2/rpointer.lnd .
  cp $OUTPUTPATH2/$CASE2'.cpl.r.'*.nc .
  cp $OUTPUTPATH2/$CASE2'.clm2.r.'*.nc .
  cp $OUTPUTPATH2/$CASE2'.datm.rs1.'*.bin .
  echo "Enter fnindat number:"
  read STR
  echo "finidat='$CASEPATH3/$CASE2.clm2.r.$STR.nc'" >> user_nl_clm
  cat << EOF > user_nl_datm
  dtlimit = 1.5,1.5,1.5,1.5
  fillalgo = "nn", "nn", "nn","nn"
  fillmask = "nomask", "nomask", "nomask","nomask"
  fillread = "NOT_SET", "NOT_SET", "NOT_SET", "NOT_SET"
  fillwrite = "NOT_SET", "NOT_SET", "NOT_SET","NOT_SET"
  mapalgo = "nn", "nn", "nn","nn"
  mapmask = "nomask", "nomask", "nomask","nomask"
  mapread = "NOT_SET", "NOT_SET", "NOT_SET","NOT_SET"
  mapwrite = "NOT_SET", "NOT_SET", "NOT_SET","NOT_SET"
  readmode = "single", "single", "single","single"
  streams = "datm.streams.txt.CLM1PT.CLM_USRDAT 2005 2005 2020",
       "datm.streams.txt.presaero.clim_2000 1 2000 2000",
       "datm.streams.txt.topo.observed 1 1 1",
       "datm.streams.txt.co2tseries 1750 1750 2015"
  taxmode = "cycle", "cycle", "cycle","extend"
  tintalgo = "nearest", "linear", "lower","linear"
EOF
fi

