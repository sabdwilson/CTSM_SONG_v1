#! /bin/csh -f

#==============================================================================
# This script generates resolved run and long term archiving batch scripts 
# it adds the correct batch settings for the requested machine given the tasks and
# threads required for the specified machine
#==============================================================================

#=================================================
# Generate clean_build script
#=================================================

echo  "Generating clean_build script "

cp -f ./Tools/clean_build ./${CASE}.clean_build
chmod 775 ${CASEROOT}/${CASE}.clean_build

#=================================================
# Generate submit script
#=================================================

echo  "Generating submit script "

cat >> ${CASEROOT}/${CASE}.submit << EOF1
#! /bin/csh -f

./check_case || echo "check_case failed" && exit -99

${BATCHSUBMIT} ${CASE}.run

set sdate = \`date +"%Y-%m-%d %H:%M:%S"\`
echo "run submitted \$sdate" >>& CaseStatus

EOF1
chmod 775 ${CASEROOT}/${CASE}.submit

#=================================================
# Generate build script
#=================================================

echo  "Generating build script "

# Create the build file
if    (-e ${CASEROOT}/${CASE}.build) then
   rm     ${CASEROOT}/${CASE}.build
endif
touch     ${CASEROOT}/${CASE}.build
chmod 775 ${CASEROOT}/${CASE}.build

cat >> ${CASEROOT}/${CASE}.build << EOF1
#! /bin/csh -f

./Tools/ccsm_check_lockedfiles || exit -1

source ./Tools/ccsm_getenv || exit -2

set SNAME = \$0 ; set SNAME = \(\$SNAME:t\)
if (\$USE_MPISERIAL == "TRUE" && \$MPISERIAL_SUPPORT == "FALSE") then
   echo "\$SNAME ERROR: USE_MPISERIAL == TRUE not supported on target platform"
   echo "\$SNAME set USE_MPISERIAL = FALSE in env_conf.xml"
   echo "\$SNAME See the documentation about enabling this mode"
   exit -1
endif

setenv LID "\`date +%y%m%d-%H%M%S\`"

cd \$CASEROOT
source \$CASETOOLS/ccsm_buildnml.csh || exit -3
cd \$CASEROOT
source \$CASETOOLS/ccsm_prestage.csh || exit -3
cd \$CASEROOT
source \$CASETOOLS/ccsm_buildnml.csh || exit -3
cd \$CASEROOT
source \$CASETOOLS/ccsm_buildexe.csh || exit -3

set sdate = \`date +"%Y-%m-%d %H:%M:%S"\`
echo "build complete \$sdate" >>& \$CASEROOT/CaseStatus

EOF1

#=================================================
# Generate batch run script
#=================================================

echo  "Generating run script "

# Create the run file
touch ${CASEROOT}/${CASE}.run
chmod 775 ${CASEROOT}/${CASE}.run

# batch stuff which needs to be substituted now
setenv LBQUERY "TRUE"
if !($?BATCHQUERY) then
  setenv LBQUERY "FALSE"
  setenv BATCHQUERY "undefined"
else if ( "$BATCHQUERY" == 'UNSET' ) then
  setenv LBQUERY "FALSE"
  setenv BATCHQUERY "undefined"
endif

setenv LBSUBMIT "TRUE"
if !($?BATCHSUBMIT) then
  setenv LBSUBMIT "FALSE"
  setenv BATCHSUBMIT "undefined"
else if ( "$BATCHSUBMIT" == 'UNSET' ) then
  setenv LBSUBMIT "FALSE"
  setenv BATCHSUBMIT "undefined"
endif
   
# --------------------------------------------------

env PHASE=set_batch ${CCSM_MACHDIR}/mkbatch.${MACH}
${UTILROOT}/Tools/taskmaker.pl -document >> ${CASEROOT}/${CASE}.run

# ---------------------------------------------------

cat >> ${CASEROOT}/${CASE}.run << EOF1
#----------------------------------------------------
# Determine necessary environment variables
#----------------------------------------------------

cd $CASEROOT

./Tools/ccsm_check_lockedfiles || exit -1
source ./Tools/ccsm_getenv || exit -2

if (\$BUILD_COMPLETE != "TRUE") then
  echo "BUILD_COMPLETE is not TRUE"
  echo "Please rebuild the model interactively via"
  echo "   ./\${CASE}.build"
  exit -2
endif

setenv LBQUERY  $LBQUERY
setenv LBSUBMIT $LBSUBMIT

#----------------------------------------------------
# Determine time-stamp/file-ID string
# Clean up previous run timing files
#----------------------------------------------------

setenv LID "\`date +%y%m%d-%H%M%S\`"
# document env vars
env | egrep '(MP_|LOADL|XLS|FPE|DSM|OMP|MPC)' 

# ---------------------------------------------------
# Build the namelists and check prestage
# ---------------------------------------------------

cd \$CASEROOT
source \$CASETOOLS/ccsm_buildnml.csh || exit -3
cd \$CASEROOT
source \$CASETOOLS/ccsm_prestage.csh || exit -3
cd \$CASEROOT
source \$CASETOOLS/ccsm_buildnml.csh || exit -3

# ---------------------------------------------------
# Create and cleanup the timing directories
# ---------------------------------------------------

if (-d \$RUNDIR/timing) rm -r -f \$RUNDIR/timing
mkdir \$RUNDIR/timing
mkdir \$RUNDIR/timing/checkpoints

set sdate = \`date +"%Y-%m-%d %H:%M:%S"\`
echo "run started \$sdate" >>& \$CASEROOT/CaseStatus

EOF1

# --------------------------------------------------

env PHASE=set_exe ${CCSM_MACHDIR}/mkbatch.${MACH}

cat >> ${CASEROOT}/${CASE}.run << EOF1

cd \$CASEROOT
./Tools/ccsm_postrun.csh || exit 1

EOF1

#=================================================
# Generate batch long term archiving script 
# --- if appropriate
#=================================================

env PHASE=set_larch ${CCSM_MACHDIR}/mkbatch.${MACH}

