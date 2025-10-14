#!/bin/bash

export CTSMROOT=/home/u22/chopinsong/CTSM_SONG
export SITE=US-UMB
export TEST=testcase2
export CASERANK=1

if [[ $CASERANK -eq 1 ]]
then
 export CASE=1x1pt_$SITE"_spinup_"$TEST
elif [[ $CASERANK -eq 2 ]]
then
 export CASE=1x1pt_$SITE"_spinup_final_"$TEST
else
 export CASE=1x1pt_$SITE"_hist_"$TEST
fi

export MYCASE=$CTSMROOT/case_run/$CASE
export CIMEROOT=/home/u22/chopinsong/CTSM_SONG/cime
#export MYDATAFILES=/xdisk/chopinsong/chopinsong/CTSM_inputdata/lnd/clm2/mydatafiles
export MYDATAFILES=/groups/chopinsong/CTSM_projects/PTCLM

cd $CIMEROOT/scripts
./create_newcase --user-mods-dir $MYDATAFILES/1x1pt_$SITE --case $MYCASE --res CLM_USRDAT --compset I1PtClm51SpRs --run-unsupported --mach UA-puma -q standard

#./create_newcase  --case $MYCASE --res CLM_USRDAT --compset I1PtClm51SpRs --run-unsupported --mach UA-puma -q standard
cd $MYCASE

cp $CTSMROOT/case_run/case_setting.sh . 

