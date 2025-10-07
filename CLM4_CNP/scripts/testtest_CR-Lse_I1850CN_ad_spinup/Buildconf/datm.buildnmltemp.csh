#! /bin/csh -f 

set exedir = $RUNDIR; cd $exedir

#------------------------------------------------------------------------------
# specify input data files
#------------------------------------------------------------------------------
# If the user changes any input datasets - be sure they have unique filenames.  
# Do not duplicate existing input file names. 
# Note that streams namelist input has the form
#      streams = 'stream1.txt year_align year_first year_last ',
#                'stream2.txt year_align year_first year_last ',
#                ...
#                'streamN.txt year_align year_first year_last '
# where
# streamN.txt is the stream description file containing input stream details
# year_first  is the first year of data that will be used 
# year_last   is the last  year of data that will be used 
# year_align  is the model year that will be aligned with data for year_first 
#------------------------------------------------------------------------------

set ATM_DOMAIN_PATH = /home/xyk/DownloadedCCSMData/ccsm_inputdata/share/domains/domain.clm
set ATM_DOMAIN_FILE = $ATM_DOMAIN_PATH/domain.lnd.1x1pt_CR-Lse_navy.nc

echo ATM_DOMAINFILE = $ATM_DOMAIN_FILE >! $CASEBUILD/datm.input_data_list


set FFN  = "unused "   

cat >! datm_atm_in << EOF1
 &shr_strdata_nml
   dataMode       = 'CLMNCEP'
   domainFile     = '$ATM_DOMAIN_FILE'
   streams        = 'clm1PT.1x1pt_CR-Lse.stream.txt 1 1998 2000 ',
                    'presaero.stream.txt 1 1850 1850'
   vectors        = 'null','null'
   mapmask        = 'nomask','nomask'
   mapalgo        = 'nn','nn'
   tintalgo       = 'nearest','linear'
   taxmode        = 'cycle','cycle'
  /
! Set time-interpolation to nearest for forcing data as available hourly or half-hourly
EOF1

cat >! clm1PT.1x1pt_CR-Lse.stream.txt << EOF1
<streamstemplate>
      <general_comment>
         streams template for datm in CCSM4
      </general_comment>
<stream>
      <comment>
         Stream description file for atmospheric forcing from single point datasets
      </comment>
      <dataSource>
         CLMNCEP
      </dataSource>
      <domainInfo>
         <variableNames>
            time    time
            xc      lon
            yc      lat
            area    area
            mask    mask
         </variableNames>
         <filePath>
            /home/xyk/DownloadedCCSMData/ccsm_inputdata/share/domains/domain.clm
         </filePath>
         <fileNames>
            domain.lnd.1x1pt_CR-Lse_navy.nc
         </fileNames>
      </domainInfo>
      <fieldInfo>
         <variableNames>
            ZBOT     z
            TBOT     tbot
            RH       rh
            WIND     wind
            PRECTmms precn
            FSDS     swdn
            PSRF     pbot
            FLDS     lwdn
         </variableNames>
         <filePath>
            $DIN_LOC_ROOT/atm/datm7/CLM1PT_data/1x1pt_CR-Lse
         </filePath>
         <fileNames>
            1998-01.nc
            1998-02.nc
            1998-03.nc
            1998-04.nc
            1998-05.nc
            1998-06.nc
            1998-07.nc
            1998-08.nc
            1998-09.nc
            1998-10.nc
            1998-11.nc
            1998-12.nc
            1999-01.nc
            1999-02.nc
            1999-03.nc
            1999-04.nc
            1999-05.nc
            1999-06.nc
            1999-07.nc
            1999-08.nc
            1999-09.nc
            1999-10.nc
            1999-11.nc
            1999-12.nc
            2000-01.nc
            2000-02.nc
            2000-03.nc
            2000-04.nc
            2000-05.nc
            2000-06.nc
            2000-07.nc
            2000-08.nc
            2000-09.nc
            2000-10.nc
            2000-11.nc
            2000-12.nc
         </fileNames>
      </fieldInfo>
      <!-- Information on the program that created this file -->
      <build_streams_documentation>
         This CCSM stream text file was created by build_streams using the command line:
               /home/xyk/TropicalWarming/clm4_ornl_cnp/scripts/ccsm_utils/Tools/build_streams -t datm.template.streams.xml -s CLM1PT -b 1998 -e 2000 -res 1x1pt_CR-Lse -do domain.lnd.1x1pt_CR-Lse_navy.nc -dp /home/xyk/DownloadedCCSMData/ccsm_inputdata/share/domains/domain.clm -c 1x1pt_CR-Lse   
         For more information on build_streams:  
             /home/xyk/TropicalWarming/clm4_ornl_cnp/scripts/ccsm_utils/Tools/build_streams -help          
      </build_streams_documentation>
</stream>
</streamstemplate>
EOF1

$CASETOOLS/listfilesin_streams -input_data_list -t clm1PT.1x1pt_CR-Lse.stream.txt >> $CASEBUILD/datm.input_data_list

cat >! presaero.stream.txt << EOF1
<streamstemplate>
      <general_comment>
         streams template for datm in CCSM4
      </general_comment>
<stream>
      <comment>
         Stream description file for aerosol deposition
      </comment>
      <dataSource>
         presaero
      </dataSource>
      <domainInfo>
         <variableNames>
            time    time
            lon      lon
            lat      lat
            area    area
            mask    mask
         </variableNames>
         <filePath>
            $DIN_LOC_ROOT/atm/cam/chem/trop_mozart_aero/aero
         </filePath>
         <fileNames>
            aerosoldep_monthly_1849-2006_1.9x2.5_c090803.nc
         </fileNames>
      </domainInfo>
      <fieldInfo>
         <variableNames>
            BCDEPWET   bcphiwet
            BCPHODRY   bcphodry
            BCPHIDRY   bcphidry
            OCDEPWET   ocphiwet
            OCPHIDRY   ocphidry
            OCPHODRY   ocphodry
            DSTX01WD   dstwet1
            DSTX01DD   dstdry1
            DSTX02WD   dstwet2
            DSTX02DD   dstdry2
            DSTX03WD   dstwet3
            DSTX03DD   dstdry3
            DSTX04WD   dstwet4
            DSTX04DD   dstdry4
         </variableNames>
         <filePath>
            $DIN_LOC_ROOT/atm/cam/chem/trop_mozart_aero/aero
         </filePath>
         <offset>
            0
         </offset>
         <fileNames>
            aerosoldep_monthly_1849-2006_1.9x2.5_c090803.nc
         </fileNames>
      </fieldInfo>
      <!-- Information on the program that created this file -->
      <build_streams_documentation>
         This CCSM stream text file was created by build_streams using the command line:
               /home/xyk/TropicalWarming/clm4_ornl_cnp/scripts/ccsm_utils/Tools/build_streams -t datm.template.streams.xml -s presaero -b 1850 -e 1850 -p $DIN_LOC_ROOT/atm/cam/chem/trop_mozart_aero/aero -c aerosoldep_monthly_1849-2006_1.9x2.5_c090803.nc -dp $DIN_LOC_ROOT/atm/cam/chem/trop_mozart_aero/aero -do aerosoldep_monthly_1849-2006_1.9x2.5_c090803.nc   
         For more information on build_streams:  
             /home/xyk/TropicalWarming/clm4_ornl_cnp/scripts/ccsm_utils/Tools/build_streams -help          
      </build_streams_documentation>
</stream>
</streamstemplate>
EOF1


$CASETOOLS/listfilesin_streams -input_data_list -t presaero.stream.txt >> $CASEBUILD/datm.input_data_list


set base_filename = "datm_in"
set inst_counter = 1
while ($inst_counter <= $NINST_ATM)
    set inst_string = " "
    if ($NINST_ATM > 1) then
        set inst_string = $inst_counter
        if ($inst_counter <= 999) set inst_string = 0$inst_string
        if ($inst_counter <=  99) set inst_string = 0$inst_string
        if ($inst_counter <=   9) set inst_string = 0$inst_string
        set inst_string = _$inst_string
    endif
    set in_filename = ${base_filename}${inst_string}

cat >! ${in_filename} << EOF1
  &datm_nml
    atm_in = 'datm_atm_in'
    decomp = '1d'
    factorFn = '$FFN'
    iradsw   = 1
    presaero = .true.
  /
EOF1

    @ inst_counter = $inst_counter + 1
end

