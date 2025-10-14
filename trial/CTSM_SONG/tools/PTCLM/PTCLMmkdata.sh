#!/bin/bash

export machine="UA-puma"
pwd
cd /home/u8/sdwilson/CTSM_SONG/tools/PTCLM
export CTSMDATA="/xdisk/chopinsong/chopinsong/CTSM_inputdata"
export CTSM_ROOT="/home/u8/sdwilson/CTSM_SONG"
export NCARG_ROOT="/opt/ohpc/pub/apps/ncl_ncarg/6.6.2/"
export outputdatapath="/xdisk/chopinsong/sdwilson/CTSM_sabrina/PTCLM/mydatafile/CLBJ"
export sitename='CLBJ'
export datagdate=250415

##=======example 1: extract pft and soil information from global data + general crop + allow no urban data check case=======================
##./PTCLMsublist --ctsm_root=${CTSM_ROOT} -l $sitename -d $CTSMDATA --account=chopinsong --mach=$machine -o "--map_gdate $datagdate --mksurfdata_opts -urban_skip_abort_on_invalid_data_check --no-crop --pftgrid --soilgrid --mydatadir=$outputdatapath"
##=======example 2: extract pft and soil information from global data + general crop ======================================(--no-crop)
#./PTCLMsublist --ctsm_root=${CTSM_ROOT} -l $sitename -d $CTSMDATA --account=chopinsong --mach=$machine -o "--map_gdate $datagdate --crop --pftgrid --soilgrid --mydatadir=$outputdatapath"
##=======example 3: exact pft and soil information from user-prepared txt file + general crop ==============================
./PTCLMsublist --ctsm_root=${CTSM_ROOT} -l $sitename -d $CTSMDATA --account=chopinsong --mach=$machine -o "--map_gdate $datagdate --crop --mydatadir=$outputdatapath"
##=======example 4: extract pft and soil information from global data + general crop + allow lack of some surface file ======================
#./PTCLMsublist --ctsm_root=${CTSM_ROOT} -l $sitename -d $CTSMDATA --account=chopinsong --mach=$machine -o "--map_gdate $datagdate --mksurfdata_opts -allownofile --no-crop --pftgrid --soilgrid --mydatadir=$outputdatapath"
##=======example 5: extract pft and soil information from global data + prognostic crop =======================

#./PTCLMsublist --ctsm_root=${CTSM_ROOT} -l $sitename -d $CTSMDATA --account=chopinsong --mach=$machine -o "--map_gdate $datagdate --crop --mydatadir=$outputdatapath"
#Example 6
#./PTCLMsublist --ctsm_root=${CTSM_ROOT} -l $sitename -d $CTSMDATA --account=chopinsong --mach=$machine -o "--map_gdate $datagdate --crop --soilgrid --mydatadir=$outputdatapath --clmnmlusecase=1850-2000_transient"
echo "finish running"
