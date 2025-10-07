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

set ATM_DOMAIN_PATH = /home/ysa/ccsm_inputdata//share/domains
set ATM_DOMAIN_FILE = $ATM_DOMAIN_PATH/domain.lnd.fv0.9x1.25_gx1v6.090309.nc

echo ATM_DOMAINFILE = $ATM_DOMAIN_FILE >! $CASEBUILD/datm.input_data_list


set FFN  = "unused "   

cat >! datm_atm_in << EOF1
 &shr_strdata_nml
   dataMode       = 'CLMNCEP'
   domainFile     = '$ATM_DOMAIN_FILE'
   streams        = 'clm_qian.T62.stream.Solar.txt 1 1948 1972 ',
                    'clm_qian.T62.stream.Precip.txt 1 1948 1972 ',
                    'clm_qian.T62.stream.TPQW.txt 1 1948 1972 ',
                    'presaero.stream.txt 1 1 1'
   vectors        = 'null'
   mapmask        = 'nomask',
                    'nomask',
                    'nomask',
                    'nomask'
   tintalgo       = 'coszen',
                    'nearest',
                    'linear',
                    'linear'
  /
EOF1

cat >! clm_qian.T62.stream.Solar.txt << EOF1
<streamstemplate>
      <general_comment>
         streams template for datm in CCSM4
      </general_comment>
<stream>
      <comment>
         Stream description file for Qian et. al. 2006 solar data
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
            $DIN_LOC_ROOT/atm/datm7
         </filePath>
         <fileNames>
            domain.T62.050609.nc
         </fileNames>
      </domainInfo>
      <fieldInfo>
         <variableNames>
            FSDS     swdn
         </variableNames>
         <filePath>
            $DIN_LOC_ROOT/atm/datm7/atm_forcing.datm7.Qian.T62.c080727/Solar6Hrly
         </filePath>
         <tInterpAlgo>
            coszen
         </tInterpAlgo>
         <offset>
            0
         </offset>
         <fileNames>
            clmforc.Qian.c2006.T62.Solr.1948-01.nc
            clmforc.Qian.c2006.T62.Solr.1948-02.nc
            clmforc.Qian.c2006.T62.Solr.1948-03.nc
            clmforc.Qian.c2006.T62.Solr.1948-04.nc
            clmforc.Qian.c2006.T62.Solr.1948-05.nc
            clmforc.Qian.c2006.T62.Solr.1948-06.nc
            clmforc.Qian.c2006.T62.Solr.1948-07.nc
            clmforc.Qian.c2006.T62.Solr.1948-08.nc
            clmforc.Qian.c2006.T62.Solr.1948-09.nc
            clmforc.Qian.c2006.T62.Solr.1948-10.nc
            clmforc.Qian.c2006.T62.Solr.1948-11.nc
            clmforc.Qian.c2006.T62.Solr.1948-12.nc
            clmforc.Qian.c2006.T62.Solr.1949-01.nc
            clmforc.Qian.c2006.T62.Solr.1949-02.nc
            clmforc.Qian.c2006.T62.Solr.1949-03.nc
            clmforc.Qian.c2006.T62.Solr.1949-04.nc
            clmforc.Qian.c2006.T62.Solr.1949-05.nc
            clmforc.Qian.c2006.T62.Solr.1949-06.nc
            clmforc.Qian.c2006.T62.Solr.1949-07.nc
            clmforc.Qian.c2006.T62.Solr.1949-08.nc
            clmforc.Qian.c2006.T62.Solr.1949-09.nc
            clmforc.Qian.c2006.T62.Solr.1949-10.nc
            clmforc.Qian.c2006.T62.Solr.1949-11.nc
            clmforc.Qian.c2006.T62.Solr.1949-12.nc
            clmforc.Qian.c2006.T62.Solr.1950-01.nc
            clmforc.Qian.c2006.T62.Solr.1950-02.nc
            clmforc.Qian.c2006.T62.Solr.1950-03.nc
            clmforc.Qian.c2006.T62.Solr.1950-04.nc
            clmforc.Qian.c2006.T62.Solr.1950-05.nc
            clmforc.Qian.c2006.T62.Solr.1950-06.nc
            clmforc.Qian.c2006.T62.Solr.1950-07.nc
            clmforc.Qian.c2006.T62.Solr.1950-08.nc
            clmforc.Qian.c2006.T62.Solr.1950-09.nc
            clmforc.Qian.c2006.T62.Solr.1950-10.nc
            clmforc.Qian.c2006.T62.Solr.1950-11.nc
            clmforc.Qian.c2006.T62.Solr.1950-12.nc
            clmforc.Qian.c2006.T62.Solr.1951-01.nc
            clmforc.Qian.c2006.T62.Solr.1951-02.nc
            clmforc.Qian.c2006.T62.Solr.1951-03.nc
            clmforc.Qian.c2006.T62.Solr.1951-04.nc
            clmforc.Qian.c2006.T62.Solr.1951-05.nc
            clmforc.Qian.c2006.T62.Solr.1951-06.nc
            clmforc.Qian.c2006.T62.Solr.1951-07.nc
            clmforc.Qian.c2006.T62.Solr.1951-08.nc
            clmforc.Qian.c2006.T62.Solr.1951-09.nc
            clmforc.Qian.c2006.T62.Solr.1951-10.nc
            clmforc.Qian.c2006.T62.Solr.1951-11.nc
            clmforc.Qian.c2006.T62.Solr.1951-12.nc
            clmforc.Qian.c2006.T62.Solr.1952-01.nc
            clmforc.Qian.c2006.T62.Solr.1952-02.nc
            clmforc.Qian.c2006.T62.Solr.1952-03.nc
            clmforc.Qian.c2006.T62.Solr.1952-04.nc
            clmforc.Qian.c2006.T62.Solr.1952-05.nc
            clmforc.Qian.c2006.T62.Solr.1952-06.nc
            clmforc.Qian.c2006.T62.Solr.1952-07.nc
            clmforc.Qian.c2006.T62.Solr.1952-08.nc
            clmforc.Qian.c2006.T62.Solr.1952-09.nc
            clmforc.Qian.c2006.T62.Solr.1952-10.nc
            clmforc.Qian.c2006.T62.Solr.1952-11.nc
            clmforc.Qian.c2006.T62.Solr.1952-12.nc
            clmforc.Qian.c2006.T62.Solr.1953-01.nc
            clmforc.Qian.c2006.T62.Solr.1953-02.nc
            clmforc.Qian.c2006.T62.Solr.1953-03.nc
            clmforc.Qian.c2006.T62.Solr.1953-04.nc
            clmforc.Qian.c2006.T62.Solr.1953-05.nc
            clmforc.Qian.c2006.T62.Solr.1953-06.nc
            clmforc.Qian.c2006.T62.Solr.1953-07.nc
            clmforc.Qian.c2006.T62.Solr.1953-08.nc
            clmforc.Qian.c2006.T62.Solr.1953-09.nc
            clmforc.Qian.c2006.T62.Solr.1953-10.nc
            clmforc.Qian.c2006.T62.Solr.1953-11.nc
            clmforc.Qian.c2006.T62.Solr.1953-12.nc
            clmforc.Qian.c2006.T62.Solr.1954-01.nc
            clmforc.Qian.c2006.T62.Solr.1954-02.nc
            clmforc.Qian.c2006.T62.Solr.1954-03.nc
            clmforc.Qian.c2006.T62.Solr.1954-04.nc
            clmforc.Qian.c2006.T62.Solr.1954-05.nc
            clmforc.Qian.c2006.T62.Solr.1954-06.nc
            clmforc.Qian.c2006.T62.Solr.1954-07.nc
            clmforc.Qian.c2006.T62.Solr.1954-08.nc
            clmforc.Qian.c2006.T62.Solr.1954-09.nc
            clmforc.Qian.c2006.T62.Solr.1954-10.nc
            clmforc.Qian.c2006.T62.Solr.1954-11.nc
            clmforc.Qian.c2006.T62.Solr.1954-12.nc
            clmforc.Qian.c2006.T62.Solr.1955-01.nc
            clmforc.Qian.c2006.T62.Solr.1955-02.nc
            clmforc.Qian.c2006.T62.Solr.1955-03.nc
            clmforc.Qian.c2006.T62.Solr.1955-04.nc
            clmforc.Qian.c2006.T62.Solr.1955-05.nc
            clmforc.Qian.c2006.T62.Solr.1955-06.nc
            clmforc.Qian.c2006.T62.Solr.1955-07.nc
            clmforc.Qian.c2006.T62.Solr.1955-08.nc
            clmforc.Qian.c2006.T62.Solr.1955-09.nc
            clmforc.Qian.c2006.T62.Solr.1955-10.nc
            clmforc.Qian.c2006.T62.Solr.1955-11.nc
            clmforc.Qian.c2006.T62.Solr.1955-12.nc
            clmforc.Qian.c2006.T62.Solr.1956-01.nc
            clmforc.Qian.c2006.T62.Solr.1956-02.nc
            clmforc.Qian.c2006.T62.Solr.1956-03.nc
            clmforc.Qian.c2006.T62.Solr.1956-04.nc
            clmforc.Qian.c2006.T62.Solr.1956-05.nc
            clmforc.Qian.c2006.T62.Solr.1956-06.nc
            clmforc.Qian.c2006.T62.Solr.1956-07.nc
            clmforc.Qian.c2006.T62.Solr.1956-08.nc
            clmforc.Qian.c2006.T62.Solr.1956-09.nc
            clmforc.Qian.c2006.T62.Solr.1956-10.nc
            clmforc.Qian.c2006.T62.Solr.1956-11.nc
            clmforc.Qian.c2006.T62.Solr.1956-12.nc
            clmforc.Qian.c2006.T62.Solr.1957-01.nc
            clmforc.Qian.c2006.T62.Solr.1957-02.nc
            clmforc.Qian.c2006.T62.Solr.1957-03.nc
            clmforc.Qian.c2006.T62.Solr.1957-04.nc
            clmforc.Qian.c2006.T62.Solr.1957-05.nc
            clmforc.Qian.c2006.T62.Solr.1957-06.nc
            clmforc.Qian.c2006.T62.Solr.1957-07.nc
            clmforc.Qian.c2006.T62.Solr.1957-08.nc
            clmforc.Qian.c2006.T62.Solr.1957-09.nc
            clmforc.Qian.c2006.T62.Solr.1957-10.nc
            clmforc.Qian.c2006.T62.Solr.1957-11.nc
            clmforc.Qian.c2006.T62.Solr.1957-12.nc
            clmforc.Qian.c2006.T62.Solr.1958-01.nc
            clmforc.Qian.c2006.T62.Solr.1958-02.nc
            clmforc.Qian.c2006.T62.Solr.1958-03.nc
            clmforc.Qian.c2006.T62.Solr.1958-04.nc
            clmforc.Qian.c2006.T62.Solr.1958-05.nc
            clmforc.Qian.c2006.T62.Solr.1958-06.nc
            clmforc.Qian.c2006.T62.Solr.1958-07.nc
            clmforc.Qian.c2006.T62.Solr.1958-08.nc
            clmforc.Qian.c2006.T62.Solr.1958-09.nc
            clmforc.Qian.c2006.T62.Solr.1958-10.nc
            clmforc.Qian.c2006.T62.Solr.1958-11.nc
            clmforc.Qian.c2006.T62.Solr.1958-12.nc
            clmforc.Qian.c2006.T62.Solr.1959-01.nc
            clmforc.Qian.c2006.T62.Solr.1959-02.nc
            clmforc.Qian.c2006.T62.Solr.1959-03.nc
            clmforc.Qian.c2006.T62.Solr.1959-04.nc
            clmforc.Qian.c2006.T62.Solr.1959-05.nc
            clmforc.Qian.c2006.T62.Solr.1959-06.nc
            clmforc.Qian.c2006.T62.Solr.1959-07.nc
            clmforc.Qian.c2006.T62.Solr.1959-08.nc
            clmforc.Qian.c2006.T62.Solr.1959-09.nc
            clmforc.Qian.c2006.T62.Solr.1959-10.nc
            clmforc.Qian.c2006.T62.Solr.1959-11.nc
            clmforc.Qian.c2006.T62.Solr.1959-12.nc
            clmforc.Qian.c2006.T62.Solr.1960-01.nc
            clmforc.Qian.c2006.T62.Solr.1960-02.nc
            clmforc.Qian.c2006.T62.Solr.1960-03.nc
            clmforc.Qian.c2006.T62.Solr.1960-04.nc
            clmforc.Qian.c2006.T62.Solr.1960-05.nc
            clmforc.Qian.c2006.T62.Solr.1960-06.nc
            clmforc.Qian.c2006.T62.Solr.1960-07.nc
            clmforc.Qian.c2006.T62.Solr.1960-08.nc
            clmforc.Qian.c2006.T62.Solr.1960-09.nc
            clmforc.Qian.c2006.T62.Solr.1960-10.nc
            clmforc.Qian.c2006.T62.Solr.1960-11.nc
            clmforc.Qian.c2006.T62.Solr.1960-12.nc
            clmforc.Qian.c2006.T62.Solr.1961-01.nc
            clmforc.Qian.c2006.T62.Solr.1961-02.nc
            clmforc.Qian.c2006.T62.Solr.1961-03.nc
            clmforc.Qian.c2006.T62.Solr.1961-04.nc
            clmforc.Qian.c2006.T62.Solr.1961-05.nc
            clmforc.Qian.c2006.T62.Solr.1961-06.nc
            clmforc.Qian.c2006.T62.Solr.1961-07.nc
            clmforc.Qian.c2006.T62.Solr.1961-08.nc
            clmforc.Qian.c2006.T62.Solr.1961-09.nc
            clmforc.Qian.c2006.T62.Solr.1961-10.nc
            clmforc.Qian.c2006.T62.Solr.1961-11.nc
            clmforc.Qian.c2006.T62.Solr.1961-12.nc
            clmforc.Qian.c2006.T62.Solr.1962-01.nc
            clmforc.Qian.c2006.T62.Solr.1962-02.nc
            clmforc.Qian.c2006.T62.Solr.1962-03.nc
            clmforc.Qian.c2006.T62.Solr.1962-04.nc
            clmforc.Qian.c2006.T62.Solr.1962-05.nc
            clmforc.Qian.c2006.T62.Solr.1962-06.nc
            clmforc.Qian.c2006.T62.Solr.1962-07.nc
            clmforc.Qian.c2006.T62.Solr.1962-08.nc
            clmforc.Qian.c2006.T62.Solr.1962-09.nc
            clmforc.Qian.c2006.T62.Solr.1962-10.nc
            clmforc.Qian.c2006.T62.Solr.1962-11.nc
            clmforc.Qian.c2006.T62.Solr.1962-12.nc
            clmforc.Qian.c2006.T62.Solr.1963-01.nc
            clmforc.Qian.c2006.T62.Solr.1963-02.nc
            clmforc.Qian.c2006.T62.Solr.1963-03.nc
            clmforc.Qian.c2006.T62.Solr.1963-04.nc
            clmforc.Qian.c2006.T62.Solr.1963-05.nc
            clmforc.Qian.c2006.T62.Solr.1963-06.nc
            clmforc.Qian.c2006.T62.Solr.1963-07.nc
            clmforc.Qian.c2006.T62.Solr.1963-08.nc
            clmforc.Qian.c2006.T62.Solr.1963-09.nc
            clmforc.Qian.c2006.T62.Solr.1963-10.nc
            clmforc.Qian.c2006.T62.Solr.1963-11.nc
            clmforc.Qian.c2006.T62.Solr.1963-12.nc
            clmforc.Qian.c2006.T62.Solr.1964-01.nc
            clmforc.Qian.c2006.T62.Solr.1964-02.nc
            clmforc.Qian.c2006.T62.Solr.1964-03.nc
            clmforc.Qian.c2006.T62.Solr.1964-04.nc
            clmforc.Qian.c2006.T62.Solr.1964-05.nc
            clmforc.Qian.c2006.T62.Solr.1964-06.nc
            clmforc.Qian.c2006.T62.Solr.1964-07.nc
            clmforc.Qian.c2006.T62.Solr.1964-08.nc
            clmforc.Qian.c2006.T62.Solr.1964-09.nc
            clmforc.Qian.c2006.T62.Solr.1964-10.nc
            clmforc.Qian.c2006.T62.Solr.1964-11.nc
            clmforc.Qian.c2006.T62.Solr.1964-12.nc
            clmforc.Qian.c2006.T62.Solr.1965-01.nc
            clmforc.Qian.c2006.T62.Solr.1965-02.nc
            clmforc.Qian.c2006.T62.Solr.1965-03.nc
            clmforc.Qian.c2006.T62.Solr.1965-04.nc
            clmforc.Qian.c2006.T62.Solr.1965-05.nc
            clmforc.Qian.c2006.T62.Solr.1965-06.nc
            clmforc.Qian.c2006.T62.Solr.1965-07.nc
            clmforc.Qian.c2006.T62.Solr.1965-08.nc
            clmforc.Qian.c2006.T62.Solr.1965-09.nc
            clmforc.Qian.c2006.T62.Solr.1965-10.nc
            clmforc.Qian.c2006.T62.Solr.1965-11.nc
            clmforc.Qian.c2006.T62.Solr.1965-12.nc
            clmforc.Qian.c2006.T62.Solr.1966-01.nc
            clmforc.Qian.c2006.T62.Solr.1966-02.nc
            clmforc.Qian.c2006.T62.Solr.1966-03.nc
            clmforc.Qian.c2006.T62.Solr.1966-04.nc
            clmforc.Qian.c2006.T62.Solr.1966-05.nc
            clmforc.Qian.c2006.T62.Solr.1966-06.nc
            clmforc.Qian.c2006.T62.Solr.1966-07.nc
            clmforc.Qian.c2006.T62.Solr.1966-08.nc
            clmforc.Qian.c2006.T62.Solr.1966-09.nc
            clmforc.Qian.c2006.T62.Solr.1966-10.nc
            clmforc.Qian.c2006.T62.Solr.1966-11.nc
            clmforc.Qian.c2006.T62.Solr.1966-12.nc
            clmforc.Qian.c2006.T62.Solr.1967-01.nc
            clmforc.Qian.c2006.T62.Solr.1967-02.nc
            clmforc.Qian.c2006.T62.Solr.1967-03.nc
            clmforc.Qian.c2006.T62.Solr.1967-04.nc
            clmforc.Qian.c2006.T62.Solr.1967-05.nc
            clmforc.Qian.c2006.T62.Solr.1967-06.nc
            clmforc.Qian.c2006.T62.Solr.1967-07.nc
            clmforc.Qian.c2006.T62.Solr.1967-08.nc
            clmforc.Qian.c2006.T62.Solr.1967-09.nc
            clmforc.Qian.c2006.T62.Solr.1967-10.nc
            clmforc.Qian.c2006.T62.Solr.1967-11.nc
            clmforc.Qian.c2006.T62.Solr.1967-12.nc
            clmforc.Qian.c2006.T62.Solr.1968-01.nc
            clmforc.Qian.c2006.T62.Solr.1968-02.nc
            clmforc.Qian.c2006.T62.Solr.1968-03.nc
            clmforc.Qian.c2006.T62.Solr.1968-04.nc
            clmforc.Qian.c2006.T62.Solr.1968-05.nc
            clmforc.Qian.c2006.T62.Solr.1968-06.nc
            clmforc.Qian.c2006.T62.Solr.1968-07.nc
            clmforc.Qian.c2006.T62.Solr.1968-08.nc
            clmforc.Qian.c2006.T62.Solr.1968-09.nc
            clmforc.Qian.c2006.T62.Solr.1968-10.nc
            clmforc.Qian.c2006.T62.Solr.1968-11.nc
            clmforc.Qian.c2006.T62.Solr.1968-12.nc
            clmforc.Qian.c2006.T62.Solr.1969-01.nc
            clmforc.Qian.c2006.T62.Solr.1969-02.nc
            clmforc.Qian.c2006.T62.Solr.1969-03.nc
            clmforc.Qian.c2006.T62.Solr.1969-04.nc
            clmforc.Qian.c2006.T62.Solr.1969-05.nc
            clmforc.Qian.c2006.T62.Solr.1969-06.nc
            clmforc.Qian.c2006.T62.Solr.1969-07.nc
            clmforc.Qian.c2006.T62.Solr.1969-08.nc
            clmforc.Qian.c2006.T62.Solr.1969-09.nc
            clmforc.Qian.c2006.T62.Solr.1969-10.nc
            clmforc.Qian.c2006.T62.Solr.1969-11.nc
            clmforc.Qian.c2006.T62.Solr.1969-12.nc
            clmforc.Qian.c2006.T62.Solr.1970-01.nc
            clmforc.Qian.c2006.T62.Solr.1970-02.nc
            clmforc.Qian.c2006.T62.Solr.1970-03.nc
            clmforc.Qian.c2006.T62.Solr.1970-04.nc
            clmforc.Qian.c2006.T62.Solr.1970-05.nc
            clmforc.Qian.c2006.T62.Solr.1970-06.nc
            clmforc.Qian.c2006.T62.Solr.1970-07.nc
            clmforc.Qian.c2006.T62.Solr.1970-08.nc
            clmforc.Qian.c2006.T62.Solr.1970-09.nc
            clmforc.Qian.c2006.T62.Solr.1970-10.nc
            clmforc.Qian.c2006.T62.Solr.1970-11.nc
            clmforc.Qian.c2006.T62.Solr.1970-12.nc
            clmforc.Qian.c2006.T62.Solr.1971-01.nc
            clmforc.Qian.c2006.T62.Solr.1971-02.nc
            clmforc.Qian.c2006.T62.Solr.1971-03.nc
            clmforc.Qian.c2006.T62.Solr.1971-04.nc
            clmforc.Qian.c2006.T62.Solr.1971-05.nc
            clmforc.Qian.c2006.T62.Solr.1971-06.nc
            clmforc.Qian.c2006.T62.Solr.1971-07.nc
            clmforc.Qian.c2006.T62.Solr.1971-08.nc
            clmforc.Qian.c2006.T62.Solr.1971-09.nc
            clmforc.Qian.c2006.T62.Solr.1971-10.nc
            clmforc.Qian.c2006.T62.Solr.1971-11.nc
            clmforc.Qian.c2006.T62.Solr.1971-12.nc
            clmforc.Qian.c2006.T62.Solr.1972-01.nc
            clmforc.Qian.c2006.T62.Solr.1972-02.nc
            clmforc.Qian.c2006.T62.Solr.1972-03.nc
            clmforc.Qian.c2006.T62.Solr.1972-04.nc
            clmforc.Qian.c2006.T62.Solr.1972-05.nc
            clmforc.Qian.c2006.T62.Solr.1972-06.nc
            clmforc.Qian.c2006.T62.Solr.1972-07.nc
            clmforc.Qian.c2006.T62.Solr.1972-08.nc
            clmforc.Qian.c2006.T62.Solr.1972-09.nc
            clmforc.Qian.c2006.T62.Solr.1972-10.nc
            clmforc.Qian.c2006.T62.Solr.1972-11.nc
            clmforc.Qian.c2006.T62.Solr.1972-12.nc
         </fileNames>
      </fieldInfo>
      <!-- Information on the program that created this file -->
      <build_streams_documentation>
         This CCSM stream text file was created by build_streams using the command line:
               /home/ysa/clm4_ornl_cnp/scripts/ccsm_utils/Tools/build_streams -t datm.template.streams.xml -s CLM_QIAN.Solar -b 1948 -e 1972   
         For more information on build_streams:  
             /home/ysa/clm4_ornl_cnp/scripts/ccsm_utils/Tools/build_streams -help          
      </build_streams_documentation>
</stream>
</streamstemplate>
EOF1

cat >! clm_qian.T62.stream.Precip.txt << EOF1
<streamstemplate>
      <general_comment>
         streams template for datm in CCSM4
      </general_comment>
<stream>
      <comment>
         Stream description file for Qian et. al. 2006 precipitation data
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
            $DIN_LOC_ROOT/atm/datm7
         </filePath>
         <fileNames>
            domain.T62.050609.nc
         </fileNames>
      </domainInfo>
      <fieldInfo>
         <variableNames>
            PRECTmms precn
         </variableNames>
         <filePath>
            $DIN_LOC_ROOT/atm/datm7/atm_forcing.datm7.Qian.T62.c080727/Precip6Hrly
         </filePath>
         <tInterpAlgo>
            nearest
         </tInterpAlgo>
         <offset>
            0
         </offset>
         <fileNames>
            clmforc.Qian.c2006.T62.Prec.1948-01.nc
            clmforc.Qian.c2006.T62.Prec.1948-02.nc
            clmforc.Qian.c2006.T62.Prec.1948-03.nc
            clmforc.Qian.c2006.T62.Prec.1948-04.nc
            clmforc.Qian.c2006.T62.Prec.1948-05.nc
            clmforc.Qian.c2006.T62.Prec.1948-06.nc
            clmforc.Qian.c2006.T62.Prec.1948-07.nc
            clmforc.Qian.c2006.T62.Prec.1948-08.nc
            clmforc.Qian.c2006.T62.Prec.1948-09.nc
            clmforc.Qian.c2006.T62.Prec.1948-10.nc
            clmforc.Qian.c2006.T62.Prec.1948-11.nc
            clmforc.Qian.c2006.T62.Prec.1948-12.nc
            clmforc.Qian.c2006.T62.Prec.1949-01.nc
            clmforc.Qian.c2006.T62.Prec.1949-02.nc
            clmforc.Qian.c2006.T62.Prec.1949-03.nc
            clmforc.Qian.c2006.T62.Prec.1949-04.nc
            clmforc.Qian.c2006.T62.Prec.1949-05.nc
            clmforc.Qian.c2006.T62.Prec.1949-06.nc
            clmforc.Qian.c2006.T62.Prec.1949-07.nc
            clmforc.Qian.c2006.T62.Prec.1949-08.nc
            clmforc.Qian.c2006.T62.Prec.1949-09.nc
            clmforc.Qian.c2006.T62.Prec.1949-10.nc
            clmforc.Qian.c2006.T62.Prec.1949-11.nc
            clmforc.Qian.c2006.T62.Prec.1949-12.nc
            clmforc.Qian.c2006.T62.Prec.1950-01.nc
            clmforc.Qian.c2006.T62.Prec.1950-02.nc
            clmforc.Qian.c2006.T62.Prec.1950-03.nc
            clmforc.Qian.c2006.T62.Prec.1950-04.nc
            clmforc.Qian.c2006.T62.Prec.1950-05.nc
            clmforc.Qian.c2006.T62.Prec.1950-06.nc
            clmforc.Qian.c2006.T62.Prec.1950-07.nc
            clmforc.Qian.c2006.T62.Prec.1950-08.nc
            clmforc.Qian.c2006.T62.Prec.1950-09.nc
            clmforc.Qian.c2006.T62.Prec.1950-10.nc
            clmforc.Qian.c2006.T62.Prec.1950-11.nc
            clmforc.Qian.c2006.T62.Prec.1950-12.nc
            clmforc.Qian.c2006.T62.Prec.1951-01.nc
            clmforc.Qian.c2006.T62.Prec.1951-02.nc
            clmforc.Qian.c2006.T62.Prec.1951-03.nc
            clmforc.Qian.c2006.T62.Prec.1951-04.nc
            clmforc.Qian.c2006.T62.Prec.1951-05.nc
            clmforc.Qian.c2006.T62.Prec.1951-06.nc
            clmforc.Qian.c2006.T62.Prec.1951-07.nc
            clmforc.Qian.c2006.T62.Prec.1951-08.nc
            clmforc.Qian.c2006.T62.Prec.1951-09.nc
            clmforc.Qian.c2006.T62.Prec.1951-10.nc
            clmforc.Qian.c2006.T62.Prec.1951-11.nc
            clmforc.Qian.c2006.T62.Prec.1951-12.nc
            clmforc.Qian.c2006.T62.Prec.1952-01.nc
            clmforc.Qian.c2006.T62.Prec.1952-02.nc
            clmforc.Qian.c2006.T62.Prec.1952-03.nc
            clmforc.Qian.c2006.T62.Prec.1952-04.nc
            clmforc.Qian.c2006.T62.Prec.1952-05.nc
            clmforc.Qian.c2006.T62.Prec.1952-06.nc
            clmforc.Qian.c2006.T62.Prec.1952-07.nc
            clmforc.Qian.c2006.T62.Prec.1952-08.nc
            clmforc.Qian.c2006.T62.Prec.1952-09.nc
            clmforc.Qian.c2006.T62.Prec.1952-10.nc
            clmforc.Qian.c2006.T62.Prec.1952-11.nc
            clmforc.Qian.c2006.T62.Prec.1952-12.nc
            clmforc.Qian.c2006.T62.Prec.1953-01.nc
            clmforc.Qian.c2006.T62.Prec.1953-02.nc
            clmforc.Qian.c2006.T62.Prec.1953-03.nc
            clmforc.Qian.c2006.T62.Prec.1953-04.nc
            clmforc.Qian.c2006.T62.Prec.1953-05.nc
            clmforc.Qian.c2006.T62.Prec.1953-06.nc
            clmforc.Qian.c2006.T62.Prec.1953-07.nc
            clmforc.Qian.c2006.T62.Prec.1953-08.nc
            clmforc.Qian.c2006.T62.Prec.1953-09.nc
            clmforc.Qian.c2006.T62.Prec.1953-10.nc
            clmforc.Qian.c2006.T62.Prec.1953-11.nc
            clmforc.Qian.c2006.T62.Prec.1953-12.nc
            clmforc.Qian.c2006.T62.Prec.1954-01.nc
            clmforc.Qian.c2006.T62.Prec.1954-02.nc
            clmforc.Qian.c2006.T62.Prec.1954-03.nc
            clmforc.Qian.c2006.T62.Prec.1954-04.nc
            clmforc.Qian.c2006.T62.Prec.1954-05.nc
            clmforc.Qian.c2006.T62.Prec.1954-06.nc
            clmforc.Qian.c2006.T62.Prec.1954-07.nc
            clmforc.Qian.c2006.T62.Prec.1954-08.nc
            clmforc.Qian.c2006.T62.Prec.1954-09.nc
            clmforc.Qian.c2006.T62.Prec.1954-10.nc
            clmforc.Qian.c2006.T62.Prec.1954-11.nc
            clmforc.Qian.c2006.T62.Prec.1954-12.nc
            clmforc.Qian.c2006.T62.Prec.1955-01.nc
            clmforc.Qian.c2006.T62.Prec.1955-02.nc
            clmforc.Qian.c2006.T62.Prec.1955-03.nc
            clmforc.Qian.c2006.T62.Prec.1955-04.nc
            clmforc.Qian.c2006.T62.Prec.1955-05.nc
            clmforc.Qian.c2006.T62.Prec.1955-06.nc
            clmforc.Qian.c2006.T62.Prec.1955-07.nc
            clmforc.Qian.c2006.T62.Prec.1955-08.nc
            clmforc.Qian.c2006.T62.Prec.1955-09.nc
            clmforc.Qian.c2006.T62.Prec.1955-10.nc
            clmforc.Qian.c2006.T62.Prec.1955-11.nc
            clmforc.Qian.c2006.T62.Prec.1955-12.nc
            clmforc.Qian.c2006.T62.Prec.1956-01.nc
            clmforc.Qian.c2006.T62.Prec.1956-02.nc
            clmforc.Qian.c2006.T62.Prec.1956-03.nc
            clmforc.Qian.c2006.T62.Prec.1956-04.nc
            clmforc.Qian.c2006.T62.Prec.1956-05.nc
            clmforc.Qian.c2006.T62.Prec.1956-06.nc
            clmforc.Qian.c2006.T62.Prec.1956-07.nc
            clmforc.Qian.c2006.T62.Prec.1956-08.nc
            clmforc.Qian.c2006.T62.Prec.1956-09.nc
            clmforc.Qian.c2006.T62.Prec.1956-10.nc
            clmforc.Qian.c2006.T62.Prec.1956-11.nc
            clmforc.Qian.c2006.T62.Prec.1956-12.nc
            clmforc.Qian.c2006.T62.Prec.1957-01.nc
            clmforc.Qian.c2006.T62.Prec.1957-02.nc
            clmforc.Qian.c2006.T62.Prec.1957-03.nc
            clmforc.Qian.c2006.T62.Prec.1957-04.nc
            clmforc.Qian.c2006.T62.Prec.1957-05.nc
            clmforc.Qian.c2006.T62.Prec.1957-06.nc
            clmforc.Qian.c2006.T62.Prec.1957-07.nc
            clmforc.Qian.c2006.T62.Prec.1957-08.nc
            clmforc.Qian.c2006.T62.Prec.1957-09.nc
            clmforc.Qian.c2006.T62.Prec.1957-10.nc
            clmforc.Qian.c2006.T62.Prec.1957-11.nc
            clmforc.Qian.c2006.T62.Prec.1957-12.nc
            clmforc.Qian.c2006.T62.Prec.1958-01.nc
            clmforc.Qian.c2006.T62.Prec.1958-02.nc
            clmforc.Qian.c2006.T62.Prec.1958-03.nc
            clmforc.Qian.c2006.T62.Prec.1958-04.nc
            clmforc.Qian.c2006.T62.Prec.1958-05.nc
            clmforc.Qian.c2006.T62.Prec.1958-06.nc
            clmforc.Qian.c2006.T62.Prec.1958-07.nc
            clmforc.Qian.c2006.T62.Prec.1958-08.nc
            clmforc.Qian.c2006.T62.Prec.1958-09.nc
            clmforc.Qian.c2006.T62.Prec.1958-10.nc
            clmforc.Qian.c2006.T62.Prec.1958-11.nc
            clmforc.Qian.c2006.T62.Prec.1958-12.nc
            clmforc.Qian.c2006.T62.Prec.1959-01.nc
            clmforc.Qian.c2006.T62.Prec.1959-02.nc
            clmforc.Qian.c2006.T62.Prec.1959-03.nc
            clmforc.Qian.c2006.T62.Prec.1959-04.nc
            clmforc.Qian.c2006.T62.Prec.1959-05.nc
            clmforc.Qian.c2006.T62.Prec.1959-06.nc
            clmforc.Qian.c2006.T62.Prec.1959-07.nc
            clmforc.Qian.c2006.T62.Prec.1959-08.nc
            clmforc.Qian.c2006.T62.Prec.1959-09.nc
            clmforc.Qian.c2006.T62.Prec.1959-10.nc
            clmforc.Qian.c2006.T62.Prec.1959-11.nc
            clmforc.Qian.c2006.T62.Prec.1959-12.nc
            clmforc.Qian.c2006.T62.Prec.1960-01.nc
            clmforc.Qian.c2006.T62.Prec.1960-02.nc
            clmforc.Qian.c2006.T62.Prec.1960-03.nc
            clmforc.Qian.c2006.T62.Prec.1960-04.nc
            clmforc.Qian.c2006.T62.Prec.1960-05.nc
            clmforc.Qian.c2006.T62.Prec.1960-06.nc
            clmforc.Qian.c2006.T62.Prec.1960-07.nc
            clmforc.Qian.c2006.T62.Prec.1960-08.nc
            clmforc.Qian.c2006.T62.Prec.1960-09.nc
            clmforc.Qian.c2006.T62.Prec.1960-10.nc
            clmforc.Qian.c2006.T62.Prec.1960-11.nc
            clmforc.Qian.c2006.T62.Prec.1960-12.nc
            clmforc.Qian.c2006.T62.Prec.1961-01.nc
            clmforc.Qian.c2006.T62.Prec.1961-02.nc
            clmforc.Qian.c2006.T62.Prec.1961-03.nc
            clmforc.Qian.c2006.T62.Prec.1961-04.nc
            clmforc.Qian.c2006.T62.Prec.1961-05.nc
            clmforc.Qian.c2006.T62.Prec.1961-06.nc
            clmforc.Qian.c2006.T62.Prec.1961-07.nc
            clmforc.Qian.c2006.T62.Prec.1961-08.nc
            clmforc.Qian.c2006.T62.Prec.1961-09.nc
            clmforc.Qian.c2006.T62.Prec.1961-10.nc
            clmforc.Qian.c2006.T62.Prec.1961-11.nc
            clmforc.Qian.c2006.T62.Prec.1961-12.nc
            clmforc.Qian.c2006.T62.Prec.1962-01.nc
            clmforc.Qian.c2006.T62.Prec.1962-02.nc
            clmforc.Qian.c2006.T62.Prec.1962-03.nc
            clmforc.Qian.c2006.T62.Prec.1962-04.nc
            clmforc.Qian.c2006.T62.Prec.1962-05.nc
            clmforc.Qian.c2006.T62.Prec.1962-06.nc
            clmforc.Qian.c2006.T62.Prec.1962-07.nc
            clmforc.Qian.c2006.T62.Prec.1962-08.nc
            clmforc.Qian.c2006.T62.Prec.1962-09.nc
            clmforc.Qian.c2006.T62.Prec.1962-10.nc
            clmforc.Qian.c2006.T62.Prec.1962-11.nc
            clmforc.Qian.c2006.T62.Prec.1962-12.nc
            clmforc.Qian.c2006.T62.Prec.1963-01.nc
            clmforc.Qian.c2006.T62.Prec.1963-02.nc
            clmforc.Qian.c2006.T62.Prec.1963-03.nc
            clmforc.Qian.c2006.T62.Prec.1963-04.nc
            clmforc.Qian.c2006.T62.Prec.1963-05.nc
            clmforc.Qian.c2006.T62.Prec.1963-06.nc
            clmforc.Qian.c2006.T62.Prec.1963-07.nc
            clmforc.Qian.c2006.T62.Prec.1963-08.nc
            clmforc.Qian.c2006.T62.Prec.1963-09.nc
            clmforc.Qian.c2006.T62.Prec.1963-10.nc
            clmforc.Qian.c2006.T62.Prec.1963-11.nc
            clmforc.Qian.c2006.T62.Prec.1963-12.nc
            clmforc.Qian.c2006.T62.Prec.1964-01.nc
            clmforc.Qian.c2006.T62.Prec.1964-02.nc
            clmforc.Qian.c2006.T62.Prec.1964-03.nc
            clmforc.Qian.c2006.T62.Prec.1964-04.nc
            clmforc.Qian.c2006.T62.Prec.1964-05.nc
            clmforc.Qian.c2006.T62.Prec.1964-06.nc
            clmforc.Qian.c2006.T62.Prec.1964-07.nc
            clmforc.Qian.c2006.T62.Prec.1964-08.nc
            clmforc.Qian.c2006.T62.Prec.1964-09.nc
            clmforc.Qian.c2006.T62.Prec.1964-10.nc
            clmforc.Qian.c2006.T62.Prec.1964-11.nc
            clmforc.Qian.c2006.T62.Prec.1964-12.nc
            clmforc.Qian.c2006.T62.Prec.1965-01.nc
            clmforc.Qian.c2006.T62.Prec.1965-02.nc
            clmforc.Qian.c2006.T62.Prec.1965-03.nc
            clmforc.Qian.c2006.T62.Prec.1965-04.nc
            clmforc.Qian.c2006.T62.Prec.1965-05.nc
            clmforc.Qian.c2006.T62.Prec.1965-06.nc
            clmforc.Qian.c2006.T62.Prec.1965-07.nc
            clmforc.Qian.c2006.T62.Prec.1965-08.nc
            clmforc.Qian.c2006.T62.Prec.1965-09.nc
            clmforc.Qian.c2006.T62.Prec.1965-10.nc
            clmforc.Qian.c2006.T62.Prec.1965-11.nc
            clmforc.Qian.c2006.T62.Prec.1965-12.nc
            clmforc.Qian.c2006.T62.Prec.1966-01.nc
            clmforc.Qian.c2006.T62.Prec.1966-02.nc
            clmforc.Qian.c2006.T62.Prec.1966-03.nc
            clmforc.Qian.c2006.T62.Prec.1966-04.nc
            clmforc.Qian.c2006.T62.Prec.1966-05.nc
            clmforc.Qian.c2006.T62.Prec.1966-06.nc
            clmforc.Qian.c2006.T62.Prec.1966-07.nc
            clmforc.Qian.c2006.T62.Prec.1966-08.nc
            clmforc.Qian.c2006.T62.Prec.1966-09.nc
            clmforc.Qian.c2006.T62.Prec.1966-10.nc
            clmforc.Qian.c2006.T62.Prec.1966-11.nc
            clmforc.Qian.c2006.T62.Prec.1966-12.nc
            clmforc.Qian.c2006.T62.Prec.1967-01.nc
            clmforc.Qian.c2006.T62.Prec.1967-02.nc
            clmforc.Qian.c2006.T62.Prec.1967-03.nc
            clmforc.Qian.c2006.T62.Prec.1967-04.nc
            clmforc.Qian.c2006.T62.Prec.1967-05.nc
            clmforc.Qian.c2006.T62.Prec.1967-06.nc
            clmforc.Qian.c2006.T62.Prec.1967-07.nc
            clmforc.Qian.c2006.T62.Prec.1967-08.nc
            clmforc.Qian.c2006.T62.Prec.1967-09.nc
            clmforc.Qian.c2006.T62.Prec.1967-10.nc
            clmforc.Qian.c2006.T62.Prec.1967-11.nc
            clmforc.Qian.c2006.T62.Prec.1967-12.nc
            clmforc.Qian.c2006.T62.Prec.1968-01.nc
            clmforc.Qian.c2006.T62.Prec.1968-02.nc
            clmforc.Qian.c2006.T62.Prec.1968-03.nc
            clmforc.Qian.c2006.T62.Prec.1968-04.nc
            clmforc.Qian.c2006.T62.Prec.1968-05.nc
            clmforc.Qian.c2006.T62.Prec.1968-06.nc
            clmforc.Qian.c2006.T62.Prec.1968-07.nc
            clmforc.Qian.c2006.T62.Prec.1968-08.nc
            clmforc.Qian.c2006.T62.Prec.1968-09.nc
            clmforc.Qian.c2006.T62.Prec.1968-10.nc
            clmforc.Qian.c2006.T62.Prec.1968-11.nc
            clmforc.Qian.c2006.T62.Prec.1968-12.nc
            clmforc.Qian.c2006.T62.Prec.1969-01.nc
            clmforc.Qian.c2006.T62.Prec.1969-02.nc
            clmforc.Qian.c2006.T62.Prec.1969-03.nc
            clmforc.Qian.c2006.T62.Prec.1969-04.nc
            clmforc.Qian.c2006.T62.Prec.1969-05.nc
            clmforc.Qian.c2006.T62.Prec.1969-06.nc
            clmforc.Qian.c2006.T62.Prec.1969-07.nc
            clmforc.Qian.c2006.T62.Prec.1969-08.nc
            clmforc.Qian.c2006.T62.Prec.1969-09.nc
            clmforc.Qian.c2006.T62.Prec.1969-10.nc
            clmforc.Qian.c2006.T62.Prec.1969-11.nc
            clmforc.Qian.c2006.T62.Prec.1969-12.nc
            clmforc.Qian.c2006.T62.Prec.1970-01.nc
            clmforc.Qian.c2006.T62.Prec.1970-02.nc
            clmforc.Qian.c2006.T62.Prec.1970-03.nc
            clmforc.Qian.c2006.T62.Prec.1970-04.nc
            clmforc.Qian.c2006.T62.Prec.1970-05.nc
            clmforc.Qian.c2006.T62.Prec.1970-06.nc
            clmforc.Qian.c2006.T62.Prec.1970-07.nc
            clmforc.Qian.c2006.T62.Prec.1970-08.nc
            clmforc.Qian.c2006.T62.Prec.1970-09.nc
            clmforc.Qian.c2006.T62.Prec.1970-10.nc
            clmforc.Qian.c2006.T62.Prec.1970-11.nc
            clmforc.Qian.c2006.T62.Prec.1970-12.nc
            clmforc.Qian.c2006.T62.Prec.1971-01.nc
            clmforc.Qian.c2006.T62.Prec.1971-02.nc
            clmforc.Qian.c2006.T62.Prec.1971-03.nc
            clmforc.Qian.c2006.T62.Prec.1971-04.nc
            clmforc.Qian.c2006.T62.Prec.1971-05.nc
            clmforc.Qian.c2006.T62.Prec.1971-06.nc
            clmforc.Qian.c2006.T62.Prec.1971-07.nc
            clmforc.Qian.c2006.T62.Prec.1971-08.nc
            clmforc.Qian.c2006.T62.Prec.1971-09.nc
            clmforc.Qian.c2006.T62.Prec.1971-10.nc
            clmforc.Qian.c2006.T62.Prec.1971-11.nc
            clmforc.Qian.c2006.T62.Prec.1971-12.nc
            clmforc.Qian.c2006.T62.Prec.1972-01.nc
            clmforc.Qian.c2006.T62.Prec.1972-02.nc
            clmforc.Qian.c2006.T62.Prec.1972-03.nc
            clmforc.Qian.c2006.T62.Prec.1972-04.nc
            clmforc.Qian.c2006.T62.Prec.1972-05.nc
            clmforc.Qian.c2006.T62.Prec.1972-06.nc
            clmforc.Qian.c2006.T62.Prec.1972-07.nc
            clmforc.Qian.c2006.T62.Prec.1972-08.nc
            clmforc.Qian.c2006.T62.Prec.1972-09.nc
            clmforc.Qian.c2006.T62.Prec.1972-10.nc
            clmforc.Qian.c2006.T62.Prec.1972-11.nc
            clmforc.Qian.c2006.T62.Prec.1972-12.nc
         </fileNames>
      </fieldInfo>
      <!-- Information on the program that created this file -->
      <build_streams_documentation>
         This CCSM stream text file was created by build_streams using the command line:
               /home/ysa/clm4_ornl_cnp/scripts/ccsm_utils/Tools/build_streams -t datm.template.streams.xml -s CLM_QIAN.Precip -b 1948 -e 1972   
         For more information on build_streams:  
             /home/ysa/clm4_ornl_cnp/scripts/ccsm_utils/Tools/build_streams -help          
      </build_streams_documentation>
</stream>
</streamstemplate>
EOF1

cat >! clm_qian.T62.stream.TPQW.txt << EOF1
<streamstemplate>
      <general_comment>
         streams template for datm in CCSM4
      </general_comment>
<stream>
      <comment>
         Stream description file for Qian et. al. 2006 temperature, pressure, humidity and wind data
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
            $DIN_LOC_ROOT/atm/datm7
         </filePath>
         <fileNames>
            domain.T62.050609.nc
         </fileNames>
      </domainInfo>
      <fieldInfo>
         <variableNames>
            TBOT     tbot
            WIND     wind
            QBOT     shum
            PSRF     pbot
         </variableNames>
         <filePath>
            $DIN_LOC_ROOT/atm/datm7/atm_forcing.datm7.Qian.T62.c080727/TmpPrsHumWnd3Hrly
         </filePath>
         <tInterpAlgo>
            linear
         </tInterpAlgo>
         <offset>
            0
         </offset>
         <fileNames>
            clmforc.Qian.c2006.T62.TPQW.1948-01.nc
            clmforc.Qian.c2006.T62.TPQW.1948-02.nc
            clmforc.Qian.c2006.T62.TPQW.1948-03.nc
            clmforc.Qian.c2006.T62.TPQW.1948-04.nc
            clmforc.Qian.c2006.T62.TPQW.1948-05.nc
            clmforc.Qian.c2006.T62.TPQW.1948-06.nc
            clmforc.Qian.c2006.T62.TPQW.1948-07.nc
            clmforc.Qian.c2006.T62.TPQW.1948-08.nc
            clmforc.Qian.c2006.T62.TPQW.1948-09.nc
            clmforc.Qian.c2006.T62.TPQW.1948-10.nc
            clmforc.Qian.c2006.T62.TPQW.1948-11.nc
            clmforc.Qian.c2006.T62.TPQW.1948-12.nc
            clmforc.Qian.c2006.T62.TPQW.1949-01.nc
            clmforc.Qian.c2006.T62.TPQW.1949-02.nc
            clmforc.Qian.c2006.T62.TPQW.1949-03.nc
            clmforc.Qian.c2006.T62.TPQW.1949-04.nc
            clmforc.Qian.c2006.T62.TPQW.1949-05.nc
            clmforc.Qian.c2006.T62.TPQW.1949-06.nc
            clmforc.Qian.c2006.T62.TPQW.1949-07.nc
            clmforc.Qian.c2006.T62.TPQW.1949-08.nc
            clmforc.Qian.c2006.T62.TPQW.1949-09.nc
            clmforc.Qian.c2006.T62.TPQW.1949-10.nc
            clmforc.Qian.c2006.T62.TPQW.1949-11.nc
            clmforc.Qian.c2006.T62.TPQW.1949-12.nc
            clmforc.Qian.c2006.T62.TPQW.1950-01.nc
            clmforc.Qian.c2006.T62.TPQW.1950-02.nc
            clmforc.Qian.c2006.T62.TPQW.1950-03.nc
            clmforc.Qian.c2006.T62.TPQW.1950-04.nc
            clmforc.Qian.c2006.T62.TPQW.1950-05.nc
            clmforc.Qian.c2006.T62.TPQW.1950-06.nc
            clmforc.Qian.c2006.T62.TPQW.1950-07.nc
            clmforc.Qian.c2006.T62.TPQW.1950-08.nc
            clmforc.Qian.c2006.T62.TPQW.1950-09.nc
            clmforc.Qian.c2006.T62.TPQW.1950-10.nc
            clmforc.Qian.c2006.T62.TPQW.1950-11.nc
            clmforc.Qian.c2006.T62.TPQW.1950-12.nc
            clmforc.Qian.c2006.T62.TPQW.1951-01.nc
            clmforc.Qian.c2006.T62.TPQW.1951-02.nc
            clmforc.Qian.c2006.T62.TPQW.1951-03.nc
            clmforc.Qian.c2006.T62.TPQW.1951-04.nc
            clmforc.Qian.c2006.T62.TPQW.1951-05.nc
            clmforc.Qian.c2006.T62.TPQW.1951-06.nc
            clmforc.Qian.c2006.T62.TPQW.1951-07.nc
            clmforc.Qian.c2006.T62.TPQW.1951-08.nc
            clmforc.Qian.c2006.T62.TPQW.1951-09.nc
            clmforc.Qian.c2006.T62.TPQW.1951-10.nc
            clmforc.Qian.c2006.T62.TPQW.1951-11.nc
            clmforc.Qian.c2006.T62.TPQW.1951-12.nc
            clmforc.Qian.c2006.T62.TPQW.1952-01.nc
            clmforc.Qian.c2006.T62.TPQW.1952-02.nc
            clmforc.Qian.c2006.T62.TPQW.1952-03.nc
            clmforc.Qian.c2006.T62.TPQW.1952-04.nc
            clmforc.Qian.c2006.T62.TPQW.1952-05.nc
            clmforc.Qian.c2006.T62.TPQW.1952-06.nc
            clmforc.Qian.c2006.T62.TPQW.1952-07.nc
            clmforc.Qian.c2006.T62.TPQW.1952-08.nc
            clmforc.Qian.c2006.T62.TPQW.1952-09.nc
            clmforc.Qian.c2006.T62.TPQW.1952-10.nc
            clmforc.Qian.c2006.T62.TPQW.1952-11.nc
            clmforc.Qian.c2006.T62.TPQW.1952-12.nc
            clmforc.Qian.c2006.T62.TPQW.1953-01.nc
            clmforc.Qian.c2006.T62.TPQW.1953-02.nc
            clmforc.Qian.c2006.T62.TPQW.1953-03.nc
            clmforc.Qian.c2006.T62.TPQW.1953-04.nc
            clmforc.Qian.c2006.T62.TPQW.1953-05.nc
            clmforc.Qian.c2006.T62.TPQW.1953-06.nc
            clmforc.Qian.c2006.T62.TPQW.1953-07.nc
            clmforc.Qian.c2006.T62.TPQW.1953-08.nc
            clmforc.Qian.c2006.T62.TPQW.1953-09.nc
            clmforc.Qian.c2006.T62.TPQW.1953-10.nc
            clmforc.Qian.c2006.T62.TPQW.1953-11.nc
            clmforc.Qian.c2006.T62.TPQW.1953-12.nc
            clmforc.Qian.c2006.T62.TPQW.1954-01.nc
            clmforc.Qian.c2006.T62.TPQW.1954-02.nc
            clmforc.Qian.c2006.T62.TPQW.1954-03.nc
            clmforc.Qian.c2006.T62.TPQW.1954-04.nc
            clmforc.Qian.c2006.T62.TPQW.1954-05.nc
            clmforc.Qian.c2006.T62.TPQW.1954-06.nc
            clmforc.Qian.c2006.T62.TPQW.1954-07.nc
            clmforc.Qian.c2006.T62.TPQW.1954-08.nc
            clmforc.Qian.c2006.T62.TPQW.1954-09.nc
            clmforc.Qian.c2006.T62.TPQW.1954-10.nc
            clmforc.Qian.c2006.T62.TPQW.1954-11.nc
            clmforc.Qian.c2006.T62.TPQW.1954-12.nc
            clmforc.Qian.c2006.T62.TPQW.1955-01.nc
            clmforc.Qian.c2006.T62.TPQW.1955-02.nc
            clmforc.Qian.c2006.T62.TPQW.1955-03.nc
            clmforc.Qian.c2006.T62.TPQW.1955-04.nc
            clmforc.Qian.c2006.T62.TPQW.1955-05.nc
            clmforc.Qian.c2006.T62.TPQW.1955-06.nc
            clmforc.Qian.c2006.T62.TPQW.1955-07.nc
            clmforc.Qian.c2006.T62.TPQW.1955-08.nc
            clmforc.Qian.c2006.T62.TPQW.1955-09.nc
            clmforc.Qian.c2006.T62.TPQW.1955-10.nc
            clmforc.Qian.c2006.T62.TPQW.1955-11.nc
            clmforc.Qian.c2006.T62.TPQW.1955-12.nc
            clmforc.Qian.c2006.T62.TPQW.1956-01.nc
            clmforc.Qian.c2006.T62.TPQW.1956-02.nc
            clmforc.Qian.c2006.T62.TPQW.1956-03.nc
            clmforc.Qian.c2006.T62.TPQW.1956-04.nc
            clmforc.Qian.c2006.T62.TPQW.1956-05.nc
            clmforc.Qian.c2006.T62.TPQW.1956-06.nc
            clmforc.Qian.c2006.T62.TPQW.1956-07.nc
            clmforc.Qian.c2006.T62.TPQW.1956-08.nc
            clmforc.Qian.c2006.T62.TPQW.1956-09.nc
            clmforc.Qian.c2006.T62.TPQW.1956-10.nc
            clmforc.Qian.c2006.T62.TPQW.1956-11.nc
            clmforc.Qian.c2006.T62.TPQW.1956-12.nc
            clmforc.Qian.c2006.T62.TPQW.1957-01.nc
            clmforc.Qian.c2006.T62.TPQW.1957-02.nc
            clmforc.Qian.c2006.T62.TPQW.1957-03.nc
            clmforc.Qian.c2006.T62.TPQW.1957-04.nc
            clmforc.Qian.c2006.T62.TPQW.1957-05.nc
            clmforc.Qian.c2006.T62.TPQW.1957-06.nc
            clmforc.Qian.c2006.T62.TPQW.1957-07.nc
            clmforc.Qian.c2006.T62.TPQW.1957-08.nc
            clmforc.Qian.c2006.T62.TPQW.1957-09.nc
            clmforc.Qian.c2006.T62.TPQW.1957-10.nc
            clmforc.Qian.c2006.T62.TPQW.1957-11.nc
            clmforc.Qian.c2006.T62.TPQW.1957-12.nc
            clmforc.Qian.c2006.T62.TPQW.1958-01.nc
            clmforc.Qian.c2006.T62.TPQW.1958-02.nc
            clmforc.Qian.c2006.T62.TPQW.1958-03.nc
            clmforc.Qian.c2006.T62.TPQW.1958-04.nc
            clmforc.Qian.c2006.T62.TPQW.1958-05.nc
            clmforc.Qian.c2006.T62.TPQW.1958-06.nc
            clmforc.Qian.c2006.T62.TPQW.1958-07.nc
            clmforc.Qian.c2006.T62.TPQW.1958-08.nc
            clmforc.Qian.c2006.T62.TPQW.1958-09.nc
            clmforc.Qian.c2006.T62.TPQW.1958-10.nc
            clmforc.Qian.c2006.T62.TPQW.1958-11.nc
            clmforc.Qian.c2006.T62.TPQW.1958-12.nc
            clmforc.Qian.c2006.T62.TPQW.1959-01.nc
            clmforc.Qian.c2006.T62.TPQW.1959-02.nc
            clmforc.Qian.c2006.T62.TPQW.1959-03.nc
            clmforc.Qian.c2006.T62.TPQW.1959-04.nc
            clmforc.Qian.c2006.T62.TPQW.1959-05.nc
            clmforc.Qian.c2006.T62.TPQW.1959-06.nc
            clmforc.Qian.c2006.T62.TPQW.1959-07.nc
            clmforc.Qian.c2006.T62.TPQW.1959-08.nc
            clmforc.Qian.c2006.T62.TPQW.1959-09.nc
            clmforc.Qian.c2006.T62.TPQW.1959-10.nc
            clmforc.Qian.c2006.T62.TPQW.1959-11.nc
            clmforc.Qian.c2006.T62.TPQW.1959-12.nc
            clmforc.Qian.c2006.T62.TPQW.1960-01.nc
            clmforc.Qian.c2006.T62.TPQW.1960-02.nc
            clmforc.Qian.c2006.T62.TPQW.1960-03.nc
            clmforc.Qian.c2006.T62.TPQW.1960-04.nc
            clmforc.Qian.c2006.T62.TPQW.1960-05.nc
            clmforc.Qian.c2006.T62.TPQW.1960-06.nc
            clmforc.Qian.c2006.T62.TPQW.1960-07.nc
            clmforc.Qian.c2006.T62.TPQW.1960-08.nc
            clmforc.Qian.c2006.T62.TPQW.1960-09.nc
            clmforc.Qian.c2006.T62.TPQW.1960-10.nc
            clmforc.Qian.c2006.T62.TPQW.1960-11.nc
            clmforc.Qian.c2006.T62.TPQW.1960-12.nc
            clmforc.Qian.c2006.T62.TPQW.1961-01.nc
            clmforc.Qian.c2006.T62.TPQW.1961-02.nc
            clmforc.Qian.c2006.T62.TPQW.1961-03.nc
            clmforc.Qian.c2006.T62.TPQW.1961-04.nc
            clmforc.Qian.c2006.T62.TPQW.1961-05.nc
            clmforc.Qian.c2006.T62.TPQW.1961-06.nc
            clmforc.Qian.c2006.T62.TPQW.1961-07.nc
            clmforc.Qian.c2006.T62.TPQW.1961-08.nc
            clmforc.Qian.c2006.T62.TPQW.1961-09.nc
            clmforc.Qian.c2006.T62.TPQW.1961-10.nc
            clmforc.Qian.c2006.T62.TPQW.1961-11.nc
            clmforc.Qian.c2006.T62.TPQW.1961-12.nc
            clmforc.Qian.c2006.T62.TPQW.1962-01.nc
            clmforc.Qian.c2006.T62.TPQW.1962-02.nc
            clmforc.Qian.c2006.T62.TPQW.1962-03.nc
            clmforc.Qian.c2006.T62.TPQW.1962-04.nc
            clmforc.Qian.c2006.T62.TPQW.1962-05.nc
            clmforc.Qian.c2006.T62.TPQW.1962-06.nc
            clmforc.Qian.c2006.T62.TPQW.1962-07.nc
            clmforc.Qian.c2006.T62.TPQW.1962-08.nc
            clmforc.Qian.c2006.T62.TPQW.1962-09.nc
            clmforc.Qian.c2006.T62.TPQW.1962-10.nc
            clmforc.Qian.c2006.T62.TPQW.1962-11.nc
            clmforc.Qian.c2006.T62.TPQW.1962-12.nc
            clmforc.Qian.c2006.T62.TPQW.1963-01.nc
            clmforc.Qian.c2006.T62.TPQW.1963-02.nc
            clmforc.Qian.c2006.T62.TPQW.1963-03.nc
            clmforc.Qian.c2006.T62.TPQW.1963-04.nc
            clmforc.Qian.c2006.T62.TPQW.1963-05.nc
            clmforc.Qian.c2006.T62.TPQW.1963-06.nc
            clmforc.Qian.c2006.T62.TPQW.1963-07.nc
            clmforc.Qian.c2006.T62.TPQW.1963-08.nc
            clmforc.Qian.c2006.T62.TPQW.1963-09.nc
            clmforc.Qian.c2006.T62.TPQW.1963-10.nc
            clmforc.Qian.c2006.T62.TPQW.1963-11.nc
            clmforc.Qian.c2006.T62.TPQW.1963-12.nc
            clmforc.Qian.c2006.T62.TPQW.1964-01.nc
            clmforc.Qian.c2006.T62.TPQW.1964-02.nc
            clmforc.Qian.c2006.T62.TPQW.1964-03.nc
            clmforc.Qian.c2006.T62.TPQW.1964-04.nc
            clmforc.Qian.c2006.T62.TPQW.1964-05.nc
            clmforc.Qian.c2006.T62.TPQW.1964-06.nc
            clmforc.Qian.c2006.T62.TPQW.1964-07.nc
            clmforc.Qian.c2006.T62.TPQW.1964-08.nc
            clmforc.Qian.c2006.T62.TPQW.1964-09.nc
            clmforc.Qian.c2006.T62.TPQW.1964-10.nc
            clmforc.Qian.c2006.T62.TPQW.1964-11.nc
            clmforc.Qian.c2006.T62.TPQW.1964-12.nc
            clmforc.Qian.c2006.T62.TPQW.1965-01.nc
            clmforc.Qian.c2006.T62.TPQW.1965-02.nc
            clmforc.Qian.c2006.T62.TPQW.1965-03.nc
            clmforc.Qian.c2006.T62.TPQW.1965-04.nc
            clmforc.Qian.c2006.T62.TPQW.1965-05.nc
            clmforc.Qian.c2006.T62.TPQW.1965-06.nc
            clmforc.Qian.c2006.T62.TPQW.1965-07.nc
            clmforc.Qian.c2006.T62.TPQW.1965-08.nc
            clmforc.Qian.c2006.T62.TPQW.1965-09.nc
            clmforc.Qian.c2006.T62.TPQW.1965-10.nc
            clmforc.Qian.c2006.T62.TPQW.1965-11.nc
            clmforc.Qian.c2006.T62.TPQW.1965-12.nc
            clmforc.Qian.c2006.T62.TPQW.1966-01.nc
            clmforc.Qian.c2006.T62.TPQW.1966-02.nc
            clmforc.Qian.c2006.T62.TPQW.1966-03.nc
            clmforc.Qian.c2006.T62.TPQW.1966-04.nc
            clmforc.Qian.c2006.T62.TPQW.1966-05.nc
            clmforc.Qian.c2006.T62.TPQW.1966-06.nc
            clmforc.Qian.c2006.T62.TPQW.1966-07.nc
            clmforc.Qian.c2006.T62.TPQW.1966-08.nc
            clmforc.Qian.c2006.T62.TPQW.1966-09.nc
            clmforc.Qian.c2006.T62.TPQW.1966-10.nc
            clmforc.Qian.c2006.T62.TPQW.1966-11.nc
            clmforc.Qian.c2006.T62.TPQW.1966-12.nc
            clmforc.Qian.c2006.T62.TPQW.1967-01.nc
            clmforc.Qian.c2006.T62.TPQW.1967-02.nc
            clmforc.Qian.c2006.T62.TPQW.1967-03.nc
            clmforc.Qian.c2006.T62.TPQW.1967-04.nc
            clmforc.Qian.c2006.T62.TPQW.1967-05.nc
            clmforc.Qian.c2006.T62.TPQW.1967-06.nc
            clmforc.Qian.c2006.T62.TPQW.1967-07.nc
            clmforc.Qian.c2006.T62.TPQW.1967-08.nc
            clmforc.Qian.c2006.T62.TPQW.1967-09.nc
            clmforc.Qian.c2006.T62.TPQW.1967-10.nc
            clmforc.Qian.c2006.T62.TPQW.1967-11.nc
            clmforc.Qian.c2006.T62.TPQW.1967-12.nc
            clmforc.Qian.c2006.T62.TPQW.1968-01.nc
            clmforc.Qian.c2006.T62.TPQW.1968-02.nc
            clmforc.Qian.c2006.T62.TPQW.1968-03.nc
            clmforc.Qian.c2006.T62.TPQW.1968-04.nc
            clmforc.Qian.c2006.T62.TPQW.1968-05.nc
            clmforc.Qian.c2006.T62.TPQW.1968-06.nc
            clmforc.Qian.c2006.T62.TPQW.1968-07.nc
            clmforc.Qian.c2006.T62.TPQW.1968-08.nc
            clmforc.Qian.c2006.T62.TPQW.1968-09.nc
            clmforc.Qian.c2006.T62.TPQW.1968-10.nc
            clmforc.Qian.c2006.T62.TPQW.1968-11.nc
            clmforc.Qian.c2006.T62.TPQW.1968-12.nc
            clmforc.Qian.c2006.T62.TPQW.1969-01.nc
            clmforc.Qian.c2006.T62.TPQW.1969-02.nc
            clmforc.Qian.c2006.T62.TPQW.1969-03.nc
            clmforc.Qian.c2006.T62.TPQW.1969-04.nc
            clmforc.Qian.c2006.T62.TPQW.1969-05.nc
            clmforc.Qian.c2006.T62.TPQW.1969-06.nc
            clmforc.Qian.c2006.T62.TPQW.1969-07.nc
            clmforc.Qian.c2006.T62.TPQW.1969-08.nc
            clmforc.Qian.c2006.T62.TPQW.1969-09.nc
            clmforc.Qian.c2006.T62.TPQW.1969-10.nc
            clmforc.Qian.c2006.T62.TPQW.1969-11.nc
            clmforc.Qian.c2006.T62.TPQW.1969-12.nc
            clmforc.Qian.c2006.T62.TPQW.1970-01.nc
            clmforc.Qian.c2006.T62.TPQW.1970-02.nc
            clmforc.Qian.c2006.T62.TPQW.1970-03.nc
            clmforc.Qian.c2006.T62.TPQW.1970-04.nc
            clmforc.Qian.c2006.T62.TPQW.1970-05.nc
            clmforc.Qian.c2006.T62.TPQW.1970-06.nc
            clmforc.Qian.c2006.T62.TPQW.1970-07.nc
            clmforc.Qian.c2006.T62.TPQW.1970-08.nc
            clmforc.Qian.c2006.T62.TPQW.1970-09.nc
            clmforc.Qian.c2006.T62.TPQW.1970-10.nc
            clmforc.Qian.c2006.T62.TPQW.1970-11.nc
            clmforc.Qian.c2006.T62.TPQW.1970-12.nc
            clmforc.Qian.c2006.T62.TPQW.1971-01.nc
            clmforc.Qian.c2006.T62.TPQW.1971-02.nc
            clmforc.Qian.c2006.T62.TPQW.1971-03.nc
            clmforc.Qian.c2006.T62.TPQW.1971-04.nc
            clmforc.Qian.c2006.T62.TPQW.1971-05.nc
            clmforc.Qian.c2006.T62.TPQW.1971-06.nc
            clmforc.Qian.c2006.T62.TPQW.1971-07.nc
            clmforc.Qian.c2006.T62.TPQW.1971-08.nc
            clmforc.Qian.c2006.T62.TPQW.1971-09.nc
            clmforc.Qian.c2006.T62.TPQW.1971-10.nc
            clmforc.Qian.c2006.T62.TPQW.1971-11.nc
            clmforc.Qian.c2006.T62.TPQW.1971-12.nc
            clmforc.Qian.c2006.T62.TPQW.1972-01.nc
            clmforc.Qian.c2006.T62.TPQW.1972-02.nc
            clmforc.Qian.c2006.T62.TPQW.1972-03.nc
            clmforc.Qian.c2006.T62.TPQW.1972-04.nc
            clmforc.Qian.c2006.T62.TPQW.1972-05.nc
            clmforc.Qian.c2006.T62.TPQW.1972-06.nc
            clmforc.Qian.c2006.T62.TPQW.1972-07.nc
            clmforc.Qian.c2006.T62.TPQW.1972-08.nc
            clmforc.Qian.c2006.T62.TPQW.1972-09.nc
            clmforc.Qian.c2006.T62.TPQW.1972-10.nc
            clmforc.Qian.c2006.T62.TPQW.1972-11.nc
            clmforc.Qian.c2006.T62.TPQW.1972-12.nc
         </fileNames>
      </fieldInfo>
      <!-- Information on the program that created this file -->
      <build_streams_documentation>
         This CCSM stream text file was created by build_streams using the command line:
               /home/ysa/clm4_ornl_cnp/scripts/ccsm_utils/Tools/build_streams -t datm.template.streams.xml -s CLM_QIAN.TPQW -b 1948 -e 1972   
         For more information on build_streams:  
             /home/ysa/clm4_ornl_cnp/scripts/ccsm_utils/Tools/build_streams -help          
      </build_streams_documentation>
</stream>
</streamstemplate>
EOF1


$CASETOOLS/listfilesin_streams -input_data_list -t clm_qian.T62.stream.Solar.txt >> $CASEBUILD/datm.input_data_list
$CASETOOLS/listfilesin_streams -input_data_list -t clm_qian.T62.stream.Precip.txt >> $CASEBUILD/datm.input_data_list
$CASETOOLS/listfilesin_streams -input_data_list -t clm_qian.T62.stream.TPQW.txt >> $CASEBUILD/datm.input_data_list

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
               /home/ysa/clm4_ornl_cnp/scripts/ccsm_utils/Tools/build_streams -t datm.template.streams.xml -s presaero -b 1 -e 1 -p $DIN_LOC_ROOT/atm/cam/chem/trop_mozart_aero/aero -c aerosoldep_monthly_1849-2006_1.9x2.5_c090803.nc -dp $DIN_LOC_ROOT/atm/cam/chem/trop_mozart_aero/aero -do aerosoldep_monthly_1849-2006_1.9x2.5_c090803.nc   
         For more information on build_streams:  
             /home/ysa/clm4_ornl_cnp/scripts/ccsm_utils/Tools/build_streams -help          
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

