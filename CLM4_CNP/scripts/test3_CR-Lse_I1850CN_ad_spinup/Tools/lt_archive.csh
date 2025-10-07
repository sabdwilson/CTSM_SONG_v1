#!/bin/csh -fvx

# Long-term archiver
# Trey White, December 6, 2011
# trey@ucar.edu

date

if ( ! $?DOUT_L_HPSS_ACCNT ) then
    set DOUT_L_HPSS_ACCNT = 0
endif

# clean up after previous archiver, "lt_archive.pl"
# this is for backward compatibility

cd $DOUT_S_ROOT
set olddirs = `find $DOUT_S_ROOT -name '.lta*'`
foreach dir ( $olddirs )

    # try again to send files
    cd $dir
    if ( $DOUT_L_HPSS_ACCNT > 0 ) then
	hsi -a $DOUT_L_HPSS_ACCNT "mkdir -p $DOUT_L_MSROOT ; chmod +t $DOUT_L_MSROOT ; cd $DOUT_L_MSROOT ; put -dPR *"
    else
	hsi "mkdir -p $DOUT_L_MSROOT ; chmod +t $DOUT_L_MSROOT ; cd $DOUT_L_MSROOT ; put -dPR *"
    endif

    # delete if all files were sent
    cd $DOUT_S_ROOT
    set remaining = `find $dir -type f | wc -l`
    if ( $remaining == 0 ) then
	rm -rf $dir
    endif
end

# send files to HPSS and delete upon success

cd $DOUT_S_ROOT
if ( $DOUT_L_HPSS_ACCNT > 0 ) then
    hsi -a $DOUT_L_HPSS_ACCNT "mkdir -p $DOUT_L_MSROOT ; chmod +t $DOUT_L_MSROOT ; cd $DOUT_L_MSROOT ; put -dPR *"
else
    hsi "mkdir -p $DOUT_L_MSROOT ; chmod +t $DOUT_L_MSROOT ; cd $DOUT_L_MSROOT ; put -dPR *"
endif

date
