#!/bin/bash
#
#
# Batch script to submit to create mapping files
# for several resolutions.
#
# Currently only setup to run on bluefire.
# 
# Bluefire specific batch commands:
#BSUB -P 93300606
#BSUB -n 8
#BSUB -R "span[ptile=8]" 
#BSUB -o regrid.%J.out   # ouput filename
#BSUB -e regrid.%J.err   # error filename
#BSUB -J regrid          # job name
#BSUB -W 6:00
#BSUB -q regular         # queue

#----------------------------------------------------------------------

if [ -z "$RES" ]; then
   echo "Run for all valid resolutions (dropping out single-point resolutions)"
   resols=`../../bld/queryDefaultNamelist.pl -res list -silent`
   # remove single-point resolutions
   newresols=""
   for res in $resols; do
      if [ `echo "$res" | grep -c "1x1_"` ]; then
         newresols="$newresols $res"
      fi
   done
   resols=$newresols
else
   resols="$RES"
fi
echo "Create mapping files for this list of resolutions: $resols"




#----------------------------------------------------------------------

for res in $resols; do
  echo "Create mapping files for: $res"
  #----------------------------------------------------------------------
  cmdargs="-r $res"
  if [ -z $LSF_PJL_TYPE ]; then
    cmdargs="$cmdargs -b"
  fi
  time env REGRID_PROC=8 mkmapdata.sh $cmdargs
done
