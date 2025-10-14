#!/bin/bash

Monitor_job() {

    #Job_id: An array of job id

    local Job_type=$1
    shift
    local Job_id=("$@")
    local n=${#Job_id[@]}

    echo "================Start Monitoring Job===================="
    echo "Job type: $Job_type"
    echo "Job size: $n"
    while true
    do
        Running=0
        Pending=0
        Completed=0
        Failed=0
        for ((i = 0; i < $n; i++))
        do
            State[$i]=$(sacct -j ${Job_id[$i]} | head -n 3 | tail -1 | awk '{print $6}')
            echo "Job $i with State ${State[$i]}"
            if [[ ${State[$i]} == "RUNNING" ]]; then
                Running=$((${Running} + 1))
            elif [[ ${State[$i]} == "PENDING" ]]; then
                Pending=$((${Pending} + 1))
            elif [[ ${State[$i]} == "COMPLETED" ]]; then
                Completed=$((${Completed} + 1))
            elif [[ ${State[$i]} == "FAILED" ]]; then
                Failed=$((${Failed} + 1))
            else
                echo "Job ${State[$i]}"
            fi
            echo "Pending   Job number is ${Pending}"
            echo "Running   Job number is ${Running}"
            echo "Completed Job number is ${Completed}"
            echo "Failed    Job number is ${Failed}"
        done

        if [[ $((${Completed} + ${Failed})) == ${n} ]]
        then
            echo "All job finished"

            if [[ ${Failed} > =0 ]]; then
                echo "Some job failed"
                exit 0
            else
                return ${State[@]}
                break
            fi
        fi

        sleep 1m

    done

    echo "===================Monitor ${Job_type} over===================="
    echo ""

}

echo "begin: spinup, final, hist"
echo "================== Setting script running options================="
case_revised_src=0
case_running_spinup=(0 0 0)
case_running_final=(1 1 1)
case_running_hist=(0 0 0)

echo "=================== Setting env variable ====================="
export machine="UA-puma"
export queue="standard"
export myhome="/home/u8/sdwilson"
export CTSM_folder="${myhome}/CTSM_SONG"
export OUTPUT_folder="/xdisk/chopinsong/sdwilson/CTSM_sabrina"
export compset="I1PtClm50SpRs"

# CASE_NAME: Name of the case: 1x1_${Site}_${CASE_NAME}_${Run}
# Project_folder: Folder of this Project Case in $CTSM/case_run
# Case_folder: Folder of this case
# CASE_SRC: Folder of Modified Source Code and other files needed
export CASE_NAME="test2"
export Project_folder="Omics_soilbgc"
export Run_folder="1x1pt_JORN"
export Case_folder="${CTSM_folder}/case_run/${Project_folder}/${Run_folder}"
#(1)if using revised code from a specific case (e.g., specific code that implemented PSIImax-temperature
# relationship, set case_revised_src==1; and then give the specific pathway where the case specific source code
# is located. For the BioClimate project, all Tianyi's revised code is in the following pathway
#(2)if using model defaul source case, setting case_revised_src=0, and don't need to setting CASE_SRC variable. 
echo "case_revised_src=$case_revised_src"
if ((case_revised_src == 1))
then
	export CASE_SRC="${CTSM_folder}/case_run/${Project_folder}/SourceMods"
	echo "====source code is from $CASE_SRC========="
else
	export CASE_SRC=" "
	echo "====useing model default code=============="
fi

#Surface_data: Pathway of surface data folder
export Surface_data="/xdisk/chopinsong/sdwilson/CTSM_sabrina/PTCLM/mydatafile"
export Surface_data_spinup="${Surface_data}/JORN/1x1pt_JORN"
export Surface_data_final="${Surface_data}/JORN/1x1pt_JORN"
export Surface_data_hist="${Surface_data}/JORN/1x1pt_JORN"
export fsurf_data="surfdata_jorn_20perc.nc"
export fatmdomain="domain.lnd.1x1pt_JORN_navy.240920.nc"
export Forcing="/home/u8/sdwilson/data/Omics_bgc/JORN"

#XML Options
export RUN_STARTDATE_spinup="2018-01-01"
export STOP_N_spinup=300
export RUN_TYPE_spinup=startup
export STOP_OPTION_spinup=nyears
export DATM_CLMNCEP_YR_START_spinup=2018
export DATM_CLMNCEP_YR_END_spinup=2021
export DATM_CLMNCEP_YR_ALIGN_spinup=2018
export JOB_WALLCLOCK_TIME_spinup=03:00:00
export walltime_spinup=03:00:00

export RUN_STARTDATE_final="2018-01-01"
export STOP_OPTION_final=nyears
export STOP_N_final=300
export RUN_TYPE_final=startup
export DATM_CLMNCEP_YR_START_final=2018
export DATM_CLMNCEP_YR_END_final=2021
export DATM_CLMNCEP_YR_ALIGN_final=2018
export JOB_WALLCLOCK_TIME_final=04:00:00
export walltime_final=04:00:00

export RUN_STARTDATE_hist="2018-01-01"
export STOP_OPTION_hist=date
export STOP_N_hist=-999
export RUN_TYPE_hist=startup
export DATM_CLMNCEP_YR_START_hist=2018
export DATM_CLMNCEP_YR_END_hist=2023
export DATM_CLMNCEP_YR_ALIGN_hist=2018
export JOB_WALLCLOCK_TIME_hist=00:45:00
export walltime_hist=00:45:00

export BLDNML_OPTS="-bgc bgc -mask navy -no-crop"
export paramfile="clm50_params.nc"


echo "=================Setting env variable over===================="
echo ""
echo "====================Create Case folder========================"
mkdir -v ${Case_folder}
echo "=============================================================="

cd ${CTSM_folder}/cime/scripts/
Run_type=("spinup" "final" "hist")
for v in "${Run_type[@]}"
do
    if [ ! -d ${Case_folder}/${CASE_NAME}_${v} ];then
    echo "==================Creating ${v} case==========================="
    surfdata="Surface_data_${v}"
    echo "create_newcase --user-mods-dir ${!surfdata} --case ${Case_folder}/${CASE_NAME}_${v} \
    --compset ${compset} --res CLM_USRDAT --machine ${machine} -q ${queue}"
    ./create_newcase --user-mods-dir ${!surfdata} --case ${Case_folder}/${CASE_NAME}_${v} \
        --compset ${compset} --res CLM_USRDAT --machine ${machine} -q ${queue}

    if [ $? -ne 0 ]
    then
        echo "ERROR: Case could not be created."
        exit -1
    fi


    echo "=====================Copy Source Code to each case======================"
    if (( case_revised_src == 1 ))
    then
    	cp -v ${CASE_SRC}/*.F90 ${Case_folder}/${CASE_NAME}_${v}/SourceMods/src.clm
    fi 
    echo "========================================================================"
    fi
done

echo "======================Go to accelerated spinup case========================="
cd ${Case_folder}/${CASE_NAME}_spinup
cp ${CTSM_folder}/case_run/CTSM_run_script.sh .
echo $(pwd)

./xmlchange CIME_OUTPUT_ROOT="${OUTPUT_folder}/${Project_folder}/${Run_folder}/${CASE_NAME}"
if (( ${case_running_spinup[0]} == 1 ));then
 checkfile=Macros.cmake
 if [ -f "$checkfile" ];then
  echo "==================== case.setup has been run,and thus reset it========"
  ./case.setup --reset
 else
  echo "======================Accelerated spinup case set up========================="
  ./case.setup
 fi
fi
if ((${case_running_spinup[1]} == 1));then
echo "=================set namelist variables for accelerated spinup case building================"
./xmlchange JOB_WALLCLOCK_TIME=${JOB_WALLCLOCK_TIME_spinup}
./xmlchange walltime=${walltime_spinup}
./xmlchange CLM_ACCELERATED_SPINUP="on"
./xmlchange ATM_NCPL=48
./xmlchange RUN_TYPE=${RUN_TYPE_spinup}
./xmlchange RUN_STARTDATE=${RUN_STARTDATE_spinup}
./xmlchange STOP_N=${STOP_N_spinup}
./xmlchange STOP_OPTION=${STOP_OPTION_spinup}
./xmlchange STOP_DATE=-999
#Instataneous output
./xmlchange HIST_OPTION=nyears
./xmlchange HIST_N=1000
#driver average history file frequency 
./xmlchange AVGHIST_OPTION=nyears
./xmlchange AVGHIST_N=1000
./xmlchange MPILIB=openmpi
./xmlchange DEBUG=TRUE
./xmlchange CLM_BLDNML_OPTS="${BLDNML_OPTS}"
./xmlchange DATM_CLMNCEP_YR_START=${DATM_CLMNCEP_YR_START_spinup}
./xmlchange DATM_CLMNCEP_YR_END=${DATM_CLMNCEP_YR_END_spinup}
./xmlchange DATM_CLMNCEP_YR_ALIGN=${DATM_CLMNCEP_YR_ALIGN_spinup}
./xmlchange DIN_LOC_ROOT_CLMFORC="${Forcing}"
./xmlchange LND_DOMAIN_PATH="${Surface_data_spinup}"
./xmlchange LND_DOMAIN_FILE="${fatmdomain}"
./xmlchange ATM_DOMAIN_PATH="${Surface_data_spinup}"
./xmlchange ATM_DOMAIN_FILE="${fatmdomain}"
./xmlchange CLM_USRDAT_NAME="${Run_folder}"
cat >> user_nl_clm <<EOF
fsurdat = '${Surface_data_spinup}/${fsurf_data}'
hist_nhtfrq = 0
hist_mfilt  = 1200
use_fertilizer = .false.
use_init_interp = .true.
use_crop = .false.
use_century_decomp = .false.
use_vertsoilc = .false.
use_hydrstress = .true.
use_cn         = .true.
use_luna       = .false.
use_lch4       = .false.
do_harvest = .false.
do_transient_crops = .false.
do_transient_pfts = .false.
hist_fincl1 = 'GPP:A','TWS:A','TOTECOSYSC:A','TOTVEGC:A','TLAI:A','TOTSOMC:A'
hist_dov2xy = .true.
hist_type1d_pertape = ' '
constrain_stress_deciduous_onset=.false.
soil_layerstruct_predefined = '10SL_3.5m'
EOF
#paramfile='${CASE_SRC}/${paramfile}'
cat >> user_nl_datm << EOF 
taxmode='cycle','cycle','cycle'
EOF
fi

if ((${case_running_spinup[1]} == 1));then
echo "================Accelerated spinup case Build script submitting=================="
./case.build > build.log
echo "============model is built sucessfully================"
fi

if ((${case_running_spinup[2]} == 1));then
echo "===================Run accelerated spinup script submitting====================="
./case.submit -a "--nodes=1 --ntasks=1 --mem-per-cpu=1gb" > Run.log
echo "=====================Accelerated spinup case Start to Run======================="
log_file="Run.log"
Job_id[1]=$(tail --l 1 ${log_file} | grep -Eo "[0-9]+$")
echo "Job id is ${Job_id[1]}"
Monitor_job "Model Run" ${Job_id[@]}
sleep 1m
fi
echo "=======================Accelerated spinup JOB Successed=========================="

echo "====================== Go to final spinup case============================"
cd ${Case_folder}/${CASE_NAME}_final
cp ${CTSM_folder}/case_run/CTSM_run_script.sh .
echo $(pwd)
cp -v ${OUTPUT_folder}/${Project_folder}/${Run_folder}/${CASE_NAME}/${CASE_NAME}_spinup/run/${CASE_NAME}_*.clm2.r.* ./
Restart_f=$(basename -a \
$(ls ${OUTPUT_folder}/${Project_folder}/${Run_folder}/${CASE_NAME}/${CASE_NAME}_spinup/run/${CASE_NAME}_*.clm2.r.*))
echo "${Restart_f}"

./xmlchange CIME_OUTPUT_ROOT="${OUTPUT_folder}/${Project_folder}/${Run_folder}/${CASE_NAME}"
 
if (( ${case_running_final[0]} == 1 ));then
checkfile=Macros.cmake
if [ -f "$checkfile" ];then
  echo "==================== case.setup has been run,and thus reset final spinup setup case========"
  ./case.setup --reset
else
  echo "======================Final spinup case set up========================="
  ./case.setup
fi
fi
if ((${case_running_final[1]} == 1));then
echo "================Final spinup case build namelist setting==========="
./xmlchange JOB_WALLCLOCK_TIME=${JOB_WALLCLOCK_TIME_final}
./xmlchange walltime=${walltime_final}
./xmlchange RUN_TYPE=${RUN_TYPE_final}
./xmlchange RUN_STARTDATE=${RUN_STARTDATE_final}
./xmlchange STOP_N=${STOP_N_final}
./xmlchange STOP_OPTION=${STOP_OPTION_final}
./xmlchange STOP_DATE=-999
./xmlchange CLM_ACCELERATED_SPINUP="off"
./xmlchange ATM_NCPL=48
#Instataneous output
./xmlchange HIST_OPTION=nyears
./xmlchange HIST_N=1000
#driver average history file frequency 
./xmlchange AVGHIST_OPTION=nyears
./xmlchange AVGHIST_N=1000
./xmlchange MPILIB=openmpi
./xmlchange DEBUG=TRUE
./xmlchange CLM_BLDNML_OPTS="${BLDNML_OPTS}"
./xmlchange DATM_CLMNCEP_YR_START=${DATM_CLMNCEP_YR_START_final}
./xmlchange DATM_CLMNCEP_YR_END=${DATM_CLMNCEP_YR_END_final}
./xmlchange DATM_CLMNCEP_YR_ALIGN=${DATM_CLMNCEP_YR_ALIGN_final}
./xmlchange DIN_LOC_ROOT_CLMFORC="${Forcing}"
./xmlchange LND_DOMAIN_PATH="${Surface_data_final}"
./xmlchange LND_DOMAIN_FILE="${fatmdomain}"
./xmlchange ATM_DOMAIN_PATH="${Surface_data_final}"
./xmlchange ATM_DOMAIN_FILE="${fatmdomain}"
./xmlchange CLM_USRDAT_NAME="${Run_folder}"
cat >> user_nl_clm <<EOF
hist_nhtfrq = 0
hist_mfilt  = 1200
use_fertilizer = .false.
use_init_interp = .true.
use_vertsoilc = .false.
use_crop = .false.
use_hydrstress = .true.
use_century_decomp = .false.
use_cn         = .true.
use_dynroot    = .false.
use_luna       = .false.
do_harvest = .false.
do_transient_crops = .false.
do_transient_pfts = .false.
hist_fincl1 = 'GPP:A','TWS:A','TOTECOSYSC:A','TOTVEGC:A','TLAI:A','TOTSOMC:A'
hist_dov2xy = .true.
hist_type1d_pertape = ' '
constrain_stress_deciduous_onset=.false.
soil_layerstruct_predefined = '10SL_3.5m'
fsurdat = '${Surface_data_final}/${fsurf_data}'
finidat='${Case_folder}/${CASE_NAME}_final/${Restart_f}'
EOF
#paramfile="${CASE_SRC}/${paramfile}"

cat >> user_nl_datm << EOF 
taxmode='cycle','cycle','cycle'
EOF
fi

if (( ${case_running_final[1]} == 1)); then
echo "================Final spinup case Build script submitting=================="
./case.build>build.log
echo "========= model is built sucessfully=============="
fi

if (( ${case_running_final[2]} == 1)); then
echo "===================Run final spinup script submitting====================="
./case.submit -a "--nodes=1 --ntasks=1 --mem-per-cpu=1gb" > Run.log
echo "=====================Final spinup case Start to Run======================="
log_file="Run.log"
Job_id[1]=$(tail --l 1 ${log_file} | grep -Eo "[0-9]+$")
echo "Job id is ${Job_id[1]}"
Monitor_job "Model Run" ${Job_id[@]}
sleep 1m
echo "=======================Final spinup JOB Successed=========================="
fi

echo "====================Go to historical run======================="
cd ${Case_folder}/${CASE_NAME}_hist
cp ${CTSM_folder}/case_run/CTSM_run_script.sh .
echo $(pwd)
cp -v ${OUTPUT_folder}/${Project_folder}/${Run_folder}/${CASE_NAME}/${CASE_NAME}_final/run/${CASE_NAME}_*.clm2.r.* ./
Restart_f=$(basename -a \
$(ls ${OUTPUT_folder}/${Project_folder}/${Run_folder}/${CASE_NAME}/${CASE_NAME}_final/run/${CASE_NAME}_*.clm2.r.*))
echo "${Restart_f}"

./xmlchange CIME_OUTPUT_ROOT="${OUTPUT_folder}/${Project_folder}/${Run_folder}/${CASE_NAME}"

if ((${case_running_hist[0]} == 1));then
checkfile=Macros.cmake
if [ -f "$checkfile" ];then
  echo "==================== case.setup has been run,and thus reset historical setup case========"
  ./case.setup --reset
else
  echo "======================Historical case set up========================="
  ./case.setup
fi
fi

if ((${case_running_hist[1]} == 1));then
echo "=====================Historical build case namelist setting======================"
cp -v ${CTSM_folder}/case_run/datm.streams.txt.co2tseries \
/${OUTPUT_folder}/${Project_folder}/${Run_folder}/${CASE_NAME}/${CASE_NAME}_hist/run/

./xmlchange JOB_WALLCLOCK_TIME=${JOB_WALLCLOCK_TIME_hist}
./xmlchange walltime=${walltime_hist}
./xmlchange RUN_TYPE=${RUN_TYPE_hist}
./xmlchange RUN_STARTDATE=${RUN_STARTDATE_hist}
./xmlchange STOP_N=${STOP_N_hist}
./xmlchange STOP_OPTION=${STOP_OPTION_hist}
./xmlchange STOP_DATE=20230630
./xmlchange CLM_ACCELERATED_SPINUP="off"
./xmlchange ATM_NCPL=48
#Instataneous output
./xmlchange HIST_OPTION=nmonths
./xmlchange HIST_N=12
./xmlchange AVGHIST_OPTION=nmonths
./xmlchange AVGHIST_N=12
./xmlchange MPILIB=openmpi
./xmlchange DEBUG=TRUE
./xmlchange CLM_BLDNML_OPTS="${BLDNML_OPTS}"
./xmlchange DATM_CLMNCEP_YR_START=${DATM_CLMNCEP_YR_START_hist}
./xmlchange DATM_CLMNCEP_YR_END=${DATM_CLMNCEP_YR_END_hist}
./xmlchange DATM_CLMNCEP_YR_ALIGN=${DATM_CLMNCEP_YR_ALIGN_hist}
./xmlchange DIN_LOC_ROOT_CLMFORC="${Forcing}"
./xmlchange LND_DOMAIN_PATH="${Surface_data_hist}"
./xmlchange LND_DOMAIN_FILE="${fatmdomain}"
./xmlchange ATM_DOMAIN_PATH="${Surface_data_hist}"
./xmlchange ATM_DOMAIN_FILE="${fatmdomain}"
./xmlchange CLM_USRDAT_NAME="${Run_folder}"
./xmlchange CCSM_BGC=CO2A,CLM_CO2_TYPE=diagnostic

cat >> user_nl_clm <<EOF
hist_empty_htapes = .true.
hist_fincl1 = 'GPP:A','TOTSOMC:A','TOTSOMN:A','TSOI:A','H2OSOI:A',
              'SR:A'
hist_fincl2 = 'TSOI:A','H2OSOI:A','RAIN:A','SNOW:A',
              'QTOPSOIL:A'
hist_dov2xy = .true.,.true.
hist_type1d_pertape = ' ', ' '
hist_nhtfrq = -1,-1
hist_mfilt  = 365, 365
use_init_interp = .true.
use_fertilizer  = .false.
use_century_decomp = .false.
use_crop        = .false.
use_hydrstress  = .true.
use_cn          = .true.
use_luna        = .false.
do_harvest         = .false.
do_transient_crops = .false.
do_transient_pfts  = .false.
use_vertsoilc = .false.
constrain_stress_deciduous_onset=.false.
soil_layerstruct_predefined = '10SL_3.5m'
finidat='${Case_folder}/${CASE_NAME}_hist/${Restart_f}'
fsurdat = '${Surface_data_hist}/${fsurf_data}'
EOF

#paramfile='${CASE_SRC}/${paramfile}'

cat >> user_nl_datm <<EOF
dtlimit = 1.5,1.5,1.5,1.5
fillalgo = "nn", "nn", "nn", "nn"
fillmask = "nomask", "nomask", "nomask","nomask"
fillread = "NOT_SET", "NOT_SET", "NOT_SET", "NOT_SET"
fillwrite = "NOT_SET", "NOT_SET", "NOT_SET","NOT_SET"
mapalgo = "nn", "nn", "nn","nn"
mapmask = "nomask", "nomask", "nomask","nomask"
mapread = "NOT_SET", "NOT_SET", "NOT_SET","NOT_SET"
mapwrite = "NOT_SET", "NOT_SET", "NOT_SET","NOT_SET"
readmode = "single", "single", "single","single"
streams = "datm.streams.txt.CLM1PT.CLM_USRDAT 2018 2018 2023",
      "datm.streams.txt.presaero.clim_2000 1 2000 2000",
      "datm.streams.txt.topo.observed 1 1 1",
      "datm.streams.txt.co2tseries 2009 2009 2015"
taxmode = "cycle", "cycle", "cycle","extend"
tintalgo = "nearest", "linear", "lower","linear"
EOF
fi

if ((${case_running_hist[1]} == 1));then
echo "================Hist Case Build script submitting=================="
./case.build > build.log
echo "========== Model is built sucessfully==============="
fi

if ((${case_running_hist[2]} == 1));then
echo "===================Hist Run script submitting====================="
./case.submit -a "--nodes=1 --ntasks=1 --mem-per-cpu=1gb" > Run.log
echo "=====================Hist Case Start to Run======================="
log_file="Run.log"
Job_id[1]=$(tail --l 1 ${log_file} | grep -Eo "[0-9]+$")
echo "Job id is ${Job_id[1]}"
Monitor_job "Model Run" ${Job_id[@]}
sleep 1m
echo "====================Historical Run Over========================"
fi
echo "====================Finish All Three Cases======================"
