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

set ATM_DOMAIN_PATH = /home/ysa/ccsm_inputdata/share/domains/domain.clm
set ATM_DOMAIN_FILE = $ATM_DOMAIN_PATH/domain.lnd.1x1pt_MAN-05_navy.nc

echo ATM_DOMAINFILE = $ATM_DOMAIN_FILE >! $CASEBUILD/datm.input_data_list


set FFN  = "unused "   

cat >! datm_atm_in << EOF1
 &shr_strdata_nml
   dataMode       = 'CLMNCEP'
   domainFile     = '$ATM_DOMAIN_FILE'
   streams        = 'clm1PT.1x1pt_MAN-05.stream.txt 1860 1986 2006'
                    'presaero.stream.txt 1849 1849 2006',
                    'datm.global1val.stream.CO2.txt 1766 1766 2009 '
   vectors        = 'null', 'null', 'null'
   mapmask        = 'nomask','nomask','nomask'
   mapalgo        = 'nn','nn'
   tintalgo       = 'linear','linear','linear'
   taxmode        = 'cycle','cycle'
  /
! Set time-interpolation to nearest for forcing data as available hourly or half-hourly
EOF1

cat >! clm1PT.1x1pt_MAN-05.stream.txt << EOF1
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
            /home/ysa/ccsm_inputdata/share/domains/domain.clm
         </filePath>
         <fileNames>
            domain.lnd.1x1pt_MAN-05_navy.nc
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
            $DIN_LOC_ROOT/atm/datm7/CLM1PT_data/1x1pt_MAN-05
         </filePath>
         <fileNames>
            1986-01.nc
            1986-02.nc
            1986-03.nc
            1986-04.nc
            1986-05.nc
            1986-06.nc
            1986-07.nc
            1986-08.nc
            1986-09.nc
            1986-10.nc
            1986-11.nc
            1986-12.nc
            1987-01.nc
            1987-02.nc
            1987-03.nc
            1987-04.nc
            1987-05.nc
            1987-06.nc
            1987-07.nc
            1987-08.nc
            1987-09.nc
            1987-10.nc
            1987-11.nc
            1987-12.nc
            1988-01.nc
            1988-02.nc
            1988-03.nc
            1988-04.nc
            1988-05.nc
            1988-06.nc
            1988-07.nc
            1988-08.nc
            1988-09.nc
            1988-10.nc
            1988-11.nc
            1988-12.nc
            1989-01.nc
            1989-02.nc
            1989-03.nc
            1989-04.nc
            1989-05.nc
            1989-06.nc
            1989-07.nc
            1989-08.nc
            1989-09.nc
            1989-10.nc
            1989-11.nc
            1989-12.nc
            1990-01.nc
            1990-02.nc
            1990-03.nc
            1990-04.nc
            1990-05.nc
            1990-06.nc
            1990-07.nc
            1990-08.nc
            1990-09.nc
            1990-10.nc
            1990-11.nc
            1990-12.nc
            1991-01.nc
            1991-02.nc
            1991-03.nc
            1991-04.nc
            1991-05.nc
            1991-06.nc
            1991-07.nc
            1991-08.nc
            1991-09.nc
            1991-10.nc
            1991-11.nc
            1991-12.nc
            1992-01.nc
            1992-02.nc
            1992-03.nc
            1992-04.nc
            1992-05.nc
            1992-06.nc
            1992-07.nc
            1992-08.nc
            1992-09.nc
            1992-10.nc
            1992-11.nc
            1992-12.nc
            1993-01.nc
            1993-02.nc
            1993-03.nc
            1993-04.nc
            1993-05.nc
            1993-06.nc
            1993-07.nc
            1993-08.nc
            1993-09.nc
            1993-10.nc
            1993-11.nc
            1993-12.nc
            1994-01.nc
            1994-02.nc
            1994-03.nc
            1994-04.nc
            1994-05.nc
            1994-06.nc
            1994-07.nc
            1994-08.nc
            1994-09.nc
            1994-10.nc
            1994-11.nc
            1994-12.nc
            1995-01.nc
            1995-02.nc
            1995-03.nc
            1995-04.nc
            1995-05.nc
            1995-06.nc
            1995-07.nc
            1995-08.nc
            1995-09.nc
            1995-10.nc
            1995-11.nc
            1995-12.nc
            1996-01.nc
            1996-02.nc
            1996-03.nc
            1996-04.nc
            1996-05.nc
            1996-06.nc
            1996-07.nc
            1996-08.nc
            1996-09.nc
            1996-10.nc
            1996-11.nc
            1996-12.nc
            1997-01.nc
            1997-02.nc
            1997-03.nc
            1997-04.nc
            1997-05.nc
            1997-06.nc
            1997-07.nc
            1997-08.nc
            1997-09.nc
            1997-10.nc
            1997-11.nc
            1997-12.nc
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
            2001-01.nc
            2001-02.nc
            2001-03.nc
            2001-04.nc
            2001-05.nc
            2001-06.nc
            2001-07.nc
            2001-08.nc
            2001-09.nc
            2001-10.nc
            2001-11.nc
            2001-12.nc
            2002-01.nc
            2002-02.nc
            2002-03.nc
            2002-04.nc
            2002-05.nc
            2002-06.nc
            2002-07.nc
            2002-08.nc
            2002-09.nc
            2002-10.nc
            2002-11.nc
            2002-12.nc
            2003-01.nc
            2003-02.nc
            2003-03.nc
            2003-04.nc
            2003-05.nc
            2003-06.nc
            2003-07.nc
            2003-08.nc
            2003-09.nc
            2003-10.nc
            2003-11.nc
            2003-12.nc
            2004-01.nc
            2004-02.nc
            2004-03.nc
            2004-04.nc
            2004-05.nc
            2004-06.nc
            2004-07.nc
            2004-08.nc
            2004-09.nc
            2004-10.nc
            2004-11.nc
            2004-12.nc
            2005-01.nc
            2005-02.nc
            2005-03.nc
            2005-04.nc
            2005-05.nc
            2005-06.nc
            2005-07.nc
            2005-08.nc
            2005-09.nc
            2005-10.nc
            2005-11.nc
            2005-12.nc
            2006-01.nc
            2006-02.nc
            2006-03.nc
            2006-04.nc
            2006-05.nc
            2006-06.nc
            2006-07.nc
            2006-08.nc
            2006-09.nc
            2006-10.nc
            2006-11.nc
            2006-12.nc
         </fileNames>
      </fieldInfo>
      <!-- Information on the program that created this file -->
      <build_streams_documentation>
         This CCSM stream text file was created by build_streams using the command line:
               /home/ysa/clm4_ornl_cnp/scripts/ccsm_utils/Tools/build_streams -t datm.template.streams.xml -s CLM1PT -b 1986 -e 2006 -res 1x1pt_MAN-05 -do domain.lnd.1x1pt_MAN-05_navy.nc -dp /home/ysa/ccsm_inputdata/share/domains/domain.clm -c 1x1pt_MAN-05   
         For more information on build_streams:  
             /home/ysa/clm4_ornl_cnp/scripts/ccsm_utils/Tools/build_streams -help          
      </build_streams_documentation>
</stream>
</streamstemplate>
EOF1

cp $CASEBUILD/co2_streams.txt datm.global1val.stream.CO2.txt
$CASETOOLS/listfilesin_streams -input_data_list -t presaero.stream.txt >> $CASEBUILD/datm.input_data_list
$CASETOOLS/listfilesin_streams -input_data_list -t datm.global1val.stream.CO2.txt  >> $CASEBUILD/datm.input_data_list

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
               /home/ysa/clm4_ornl_cnp/scripts/ccsm_utils/Tools/build_streams -t datm.template.streams.xml -s presaero -b 1849 -e 2006 -p $DIN_LOC_ROOT/atm/cam/chem/trop_mozart_aero/aero -c aerosoldep_monthly_1849-2006_1.9x2.5_c090803.nc -dp $DIN_LOC_ROOT/atm/cam/chem/trop_mozart_aero/aero -do aerosoldep_monthly_1849-2006_1.9x2.5_c090803.nc   
         For more information on build_streams:  
             /home/ysa/clm4_ornl_cnp/scripts/ccsm_utils/Tools/build_streams -help          
      </build_streams_documentation>
</stream>
</streamstemplate>
EOF1


cp $CASEBUILD/co2_streams.txt datm.global1val.stream.CO2.txt
$CASETOOLS/listfilesin_streams -input_data_list -t presaero.stream.txt >> $CASEBUILD/datm.input_data_list
$CASETOOLS/listfilesin_streams -input_data_list -t datm.global1val.stream.CO2.txt  >> $CASEBUILD/datm.input_data_list


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

