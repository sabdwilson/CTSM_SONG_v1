#! /bin/csh -f 

#******************************************************************#
#                  WARNING:                                        #
# - If the user changes any input datasets - be sure to give it a  #
#   unique filename. Do not duplicate any existing input files     #
#******************************************************************#

set exedir = $RUNDIR; cd $exedir

set default_lnd_in_filename = "lnd_in"

set lnd_inst_counter = 1

while ($lnd_inst_counter <= $NINST_LND)

    set lnd_in_filename = $default_lnd_in_filename

    if ($NINST_LND > 1) then
        set lnd_inst_string = $lnd_inst_counter
        if ($lnd_inst_counter <= 999) set lnd_inst_string = 0$lnd_inst_string
        if ($lnd_inst_counter <=  99) set lnd_inst_string = 0$lnd_inst_string
        if ($lnd_inst_counter <=   9) set lnd_inst_string = 0$lnd_inst_string
        set lnd_in_filename = ${default_lnd_in_filename}_${lnd_inst_string}
    endif

    cat >! $lnd_in_filename << EOF

&clm_inparm
 co2_ppmv		= 284.7
 co2_type		= 'constant'
 create_crop_landunit		= .false.
 do_rtm		= .true.
 dtime		= 1800
 fatmlndfrc		= '/home/ysa/ccsm_inputdata//share/domains/domain.lnd.fv0.9x1.25_gx1v6.090309.nc'
 finidat		= '$DIN_LOC_ROOT/ccsm4_init/b40.1850.track1.1deg.006/0863-01-01/b40.1850.track1.1deg.006.clm2.r.0863-01-01-00000.nc'
 fpftcon		= '$DIN_LOC_ROOT/lnd/clm2/pftdata/pft-physiology.c110425.nc'
 frivinp_rtm		= '$DIN_LOC_ROOT/lnd/clm2/rtmdata/rdirc_0.5x0.5_simyr2000_c101124.nc'
 fsnowaging		= '$DIN_LOC_ROOT/lnd/clm2/snicardata/snicar_drdt_bst_fit_60_c070416.nc'
 fsnowoptics		= '$DIN_LOC_ROOT/lnd/clm2/snicardata/snicar_optics_5bnd_c090915.nc'
 fsurdat		= '$DIN_LOC_ROOT/lnd/clm2/surfdata/surfdata_0.9x1.25_simyr1850_c110921.nc'
 ice_runoff		= .true.
 maxpatch_glcmec		= 0
 rtm_nsteps		= 6
 urban_hac		= 'ON_WASTEHEAT'
 urban_traffic		= .false.
/
&ndepdyn_nml
 ndepmapalgo		= 'bilinear'
 stream_fldfilename_ndep		= '$DIN_LOC_ROOT/lnd/clm2/ndepdata/fndep_clm_hist_simyr1849-2006_1.9x2.5_c100428.nc'
 stream_year_first_ndep		= 1850
 stream_year_last_ndep		= 1850
/
#!--------------------------------------------------------------------------------------------------------------------------
#! lnd_in:: Comment:
#! This namelist was created using the following command-line:
#!     /home/ysa/clm4_ornl_cnp/models/lnd/clm/bld/build-namelist -config /home/ysa/clm4_ornl_cnp/scripts/testyang/Buildconf/clmconf/config_cache.xml -res 0.9x1.25 -mask gx1v6 -ignore_ic_date -use_case 1850_control -infile cesm_namelist -clm_start_type default -glc_nec 0 -rtm_res R05 -rtm_tstep 10800 -co2_ppmv 284.7 -datm_presaero clim_1850 -namelist &clm_inparm  / -csmdata $DIN_LOC_ROOT -inputdata /home/ysa/clm4_ornl_cnp/scripts/testyang/Buildconf/clm.input_data_list
#! For help on options use: /home/ysa/clm4_ornl_cnp/models/lnd/clm/bld/build-namelist -help
#!--------------------------------------------------------------------------------------------------------------------------
EOF

    @ lnd_inst_counter = $lnd_inst_counter + 1

end

