#!/usr/bin/env python

import os, sys, csv, time, math
from optparse import OptionParser
import Scientific.IO.NetCDF
from Scientific.IO import NetCDF
#from Numeric import *


#DMR 4/16/13
#call_runCLM.py does the following:
#  1. Call routines to create point data (makepointdata.py, makemetdata.py)
#  2. Set point and case-specific namelist options
#  2. configure case
#  3. build (compile) CESM with clean_build first if requested
#  4. apply patch for transient CO2 if transient run
#  6. apply user-specified PBS and submit information
#  7. submit job to PBS queue if requested.
#
#  For reproducibility, a copy of the current call_PTCLM.py is saved
#  to the newly created case directory.  This is for informational
#  purposes only - the script should not be executed from within
#  the case directory.
#
#-------------------Parse options-----------------------------------------------

parser = OptionParser()

parser.add_option("--caseidprefix", dest="mycaseid", default="", \
                  help="Unique identifier to include as a prefix to the case name")
parser.add_option("--site", dest="site", default='', \
                  help = '6-character FLUXNET code to run (required)')
parser.add_option("--sitegroup", dest="sitegroup", default="AmeriFlux", \
                  help = "site group to use (default AmeriFlux)")
parser.add_option("--coldstart", dest="coldstart", default=False, \
                  help = "set cold start (mutually exclusive w/finidat)", \
                  action="store_true")
parser.add_option("--compset", dest="compset", default='I1850CN', \
                  help = "component set to use (required)")
parser.add_option("--ad_spinup", action="store_true", \
                  dest="ad_spinup", default=False, \
                  help = 'Run accelerated decomposition spinup')
parser.add_option("--exit_spinup", action="store_true", \
                  dest="exit_spinup", default=False, \
                  help = 'Run exit spinup')
parser.add_option("--machine", dest="machine", default = 'generic_linux_pgi', \
                  help = "machine to use (default = generic_linux_pgi)")
parser.add_option("--csmdir", dest="csmdir", default='..', \
                  help = "base CESM directory (default = ../)")
parser.add_option("--ccsm_input", dest="ccsm_input", \
                  default='../../ccsm_inputdata', \
                  help = "input data directory for CESM (required)")
parser.add_option("--finidat_case", dest="finidat_case", default='', \
                  help = "case containing initial data file to use" \
                  +" (should be in your run directory)")
parser.add_option("--finidat", dest="finidat", default='', \
                  help = "initial data file to use" \
                  +" (should be in your run directory)")
parser.add_option("--finidat_year", dest="finidat_year", default=-1, \
                  help = "model year of initial data file (default is" \
                  +" last available)")
parser.add_option("--run_units", dest="run_units", default='nyears', \
                  help = "run length units (ndays, nyears)")
parser.add_option("--run_n", dest="run_n", default=600, \
                  help = "run length (in run units)")
parser.add_option("--rmold", dest="rmold", default=False, action="store_true", \
                  help = 'Remove old case directory with same name' \
                  +" before proceeding")
parser.add_option("--srcmods_loc", dest="srcmods_loc", default='', \
                  help = 'Copy sourcemods from this location')
parser.add_option("--parm_file", dest="parm_file", default='',
                  help = 'file for parameter modifications')
parser.add_option("--parm_file_P", dest="parm_file_P", default='',
                  help = 'file for P parameter modifications')
parser.add_option("--hist_mfilt", dest="hist_mfilt", default=-1, \
                  help = 'number of output timesteps per file')
parser.add_option("--hist_nhtfrq", dest="hist_nhtfrq", default=-999, \
                  help = 'output file timestep')
parser.add_option("--hist_vars", dest="hist_vars", default='', \
                  help = 'use hist_vars file')
parser.add_option("--queue", dest="queue", default='essg08q', \
                  help = 'PBS submission queue')
parser.add_option("--clean_build", dest="clean_build", default=False, \
                  help = 'Perform clean build before building', \
                  action="store_true")
parser.add_option("--no_config", dest="no_config", default=False, \
                  help = 'do NOT configure case', action="store_true")
parser.add_option("--no_build", dest="no_build", default=False, \
                  help = 'do NOT build CESM', action="store_true")
parser.add_option("--no_submit", dest="no_submit", default=False, \
                  help = 'do NOT submit CESM to queue', action="store_true")
parser.add_option("--no_fire", dest="no_fire", action="store_true", \
                  default=False, help="Turn off fire algorightms")
parser.add_option("--align_year", dest="align_year", default="1850", \
                  help = 'Alignment year (transient run only)')
parser.add_option("--regional", action="store_true", \
                   dest="regional", default=False, \
                   help="Flag for regional run (2x2 or greater)")
parser.add_option("--np", dest="np", default=1, \
                  help = 'number of processors')
parser.add_option("--ninst", dest="ninst", default=1, \
                  help = 'number of land model instances')
parser.add_option("--tstep", dest="tstep", default=0.5, \
                  help = 'CLM timestep (hours)')
parser.add_option("--co2_file", dest="co2_file", default="fco2_datm_1765-2007_c100614.nc", \
                  help = 'CLM timestep (hours)')
parser.add_option("--nyears_ad_spinup", dest="ny_ad", default=600, \
                  help = 'number of years to run ad_spinup')
parser.add_option("--metdir", dest="metdir", default="none", \
                  help = 'subdirectory for met data forcing')
parser.add_option("--nopointdata", action="store_true", \
                  dest="nopointdata", help="Do NOT make point data (use data already created)", \
                  default=False)
parser.add_option("--croot", dest="mycasesroot", default="./", \
                    help="Directory where the case would be created")
parser.add_option("--rroot", dest="myrunroot", default="./", \
                    help="Directory where the run would be created")
parser.add_option("--cleanlogs",dest="cleanlogs", help=\
                   "Removes temporary and log files that are created",\
                   default=False,action="store_true")
parser.add_option("--nofire", action="store_true", dest="nofire", default=False, \
                    help="To turn off wildfires")
parser.add_option("--npoolmod", action="store_true", dest="npoolmod", default=False, \
                    help="To turn on nitrogen pool modifications")
parser.add_option("--q10wbmod", action="store_true", dest="q10wbmod", default=False, \
                    help="To turn on Woodrow-Berry Q10 curve")
parser.add_option("--tfmod", action="store_true", dest="tfmod", default=False, \
                    help="To set temperature threshold (0 degC) for plant wilting factor")
parser.add_option("--C13", dest="C13", default=False, \
                  help = 'Switch to turn on C13', action="store_true")
parser.add_option("--C14", dest="C14", default=False, \
                  help = 'Use C14 as C13 (no decay)', action="store_true")
parser.add_option("--branch", dest="branch", default=False, \
		  help = 'Switch for branch run', action="store_true")
parser.add_option("--makemetdata", dest="makemet", default=False, \
		  help = 'Generate meteorology', action="store_true")
parser.add_option("--soilgrid", dest="soilgrid", default=False, \
                  help = 'Use gridded soil data', action="store_true")
parser.add_option("--refcase", dest="refcase" , default='none', \
                  help = 'Use already compiled CLM case')

(options, args) = parser.parse_args()

#-------------------------------------------------------------------------------


#check for valid csm directory
if (os.path.exists(options.csmdir) == False):
    print('Error:  invalid CESM directory')
    sys.exit()
else:
    csmdir=os.path.abspath(options.csmdir)

#check for valid input data directory
if (options.ccsm_input == '' or (os.path.exists(options.ccsm_input) \
                                 == False)):
    print('Error:  invalid input data directory')
    sys.exit()
else:
    options.ccsm_input = os.path.abspath(options.ccsm_input)

#check for valid compset
compset = options.compset
if (compset != 'I1850CN' and compset != 'I2000CN' and compset != 'I20TRCN'):
    print('Error:  please enter valid option for compset')
    print('        (I1850CN, I2000CN, I20TRCN)')
    sys.exit()

#check consistency of options
if (options.ad_spinup and options.exit_spinup):
    print('Error:  Cannot specify both ad_spinup and exit_spinup')
    sys.exit()
    
if (compset == 'I20TRCN'):
    #ignore spinup option if transient compset
    if (options.ad_spinup or options.exit_spinup):
      print('Spinup options not available for transient compset.')
      sys.exit()
    #finidat is required for transient compset
    if (options.finidat_case == ''):
        print('Error:  must provide initial data file for I20TRCN compset')
        sys.exit()

#get full path of finidat file
finidat=''
finidat_year=int(options.finidat_year)
if (options.exit_spinup):
    if (options.mycaseid != ''):
        options.finidat_case = options.mycaseid+'_'+options.site+ \
                               '_I1850CN_ad_spinup'
    else:
        options.finidat_case = options.site+'_I1850CN_ad_spinup'
    finidat_year = int(options.ny_ad)+1
if (options.finidat_case != ''):
    finidat_yst = str(finidat_year)
    if (finidat_year >= 100 and finidat_year < 1000):
        finidat_yst = '0'+str(finidat_year)
    if (finidat_year >= 10 and finidat_year < 100):
        finidat_yst = '00'+str(finidat_year)
    if (finidat_year < 10):
        finidat_yst = '000'+str(finidat_year)
    if(options.myrunroot == './'): 
        finidat = csmdir+'/run/'+options.finidat_case+'/run/'+ \
                  options.finidat_case+'.clm2.r.'+finidat_yst+ \
                  '-01-01-00000.nc'
    else:
        finidat = options.myrunroot+'/'+options.finidat_case+'/run/'+ \
                  options.finidat_case+'.clm2.r.'+finidat_yst+ \
                  '-01-01-00000.nc'

#construct default casename
casename    = options.site+"_"+compset
if (options.mycaseid != ""):
    casename = options.mycaseid+'_'+casename
if (options.ad_spinup):
    casename = casename+'_ad_spinup'
if (options.exit_spinup):
    casename = casename+'_exit_spinup'

PTCLMdir = csmdir+'/scripts/PTCLM_files/'

if (options.mycasesroot != "./"):
    casedir=options.mycasesroot+"/"+casename
else:
    casedir=csmdir+"/scripts/"+casename

#Check for existing case directory
if (os.path.exists(casedir)):
    print('Warning:  Case directory exists and --rmold not specified')
    var = raw_input('proceed (p), remove old (r), or exit (x)? ')
    if var[0] == 'r':
        os.system('rm -rf '+casedir)
    if var[0] == 'x':
        sys.exit()    

#Environment variable hacks
os.putenv("USE_MPISERIAL","TRUE")
os.putenv("CLM_USRDAT_NAME", "1x1pt_"+options.site)
os.putenv("DOMAINPATH", options.ccsm_input+'/share/domains/domain.clm')


#------------------- make point data for site -------------------------------
ptcmd = 'python makepointdata.py --casename '+casename+ \
              ' --site '+options.site+' --sitegroup '+options.sitegroup+ \
              ' --csmdir '+csmdir+' --ccsm_input '+options.ccsm_input+ \
              ' --compset '+compset
#print ptcmd
print(ptcmd)
if (options.metdir != 'none'):
    ptcmd = ptcmd + ' --metdir '+options.metdir
if (options.makemet):
    ptcmd = ptcmd + ' --makemetdata'
if (options.soilgrid):
    ptcmd = ptcmd + ' --soilgrid'
if (options.regional):
    ptcmd = ptcmd + ' --regional'
os.system(ptcmd)

#get site year information
os.chdir('./PTCLM_files/PTCLM_sitedata')
AFdatareader = csv.reader(open(options.sitegroup+'_sitedata.txt',"rb"))
for row in AFdatareader:
    if row[0] == options.site:
        startyear=int(row[6])
        endyear=int(row[7])
        alignyear = int(row[8])
        if options.regional == True:
           numxpts=int(row[9])
           numypts=int(row[10])
        else:
           numxpts=1
           numypts=1
os.chdir('../..')
#get simyr
mysimyr=1850
if (options.compset == 'I2000CN'):
    mysimyr=2000

#parameter (pft-phys) modifications if desired
os.system('cp '+options.ccsm_input+'/lnd/clm2/pftdata/pft-physiology.c110425.nc ' \
              +options.ccsm_input+'/lnd/clm2/pftdata/pft-physiology.c110425.'+ \
              casename+'.nc')
if (options.parm_file != ''):
    pftfile = NetCDF.NetCDFFile(options.ccsm_input+'/lnd/clm2/pftdata/' \
                                +'pft-physiology.c110425.'+casename+'.nc',"a")
    input   = open(os.path.abspath(options.parm_file))
    for s in input:
        if s[0:1] != '#':
            values = s.split()
            temp = pftfile.variables[values[0]]
            temp_data = temp.getValue()
            temp_data[int(values[1])] = float(values[2])
            temp.assignValue(temp_data)
    input.close()
    pftfile.close()

#parameter (soil order dependent) modifications if desired    ::X.YANG 
os.system('cp '+options.ccsm_input+'/lnd/clm2/pftdata/CNP_parameters_c121029.nc ' \
              +options.ccsm_input+'/lnd/clm2/pftdata/CNP_parameters_c121029'+ \
              casename+'.nc')
if (options.parm_file_P != ''):
    soilorderfile = NetCDF.NetCDFFile(options.ccsm_input+'/lnd/clm2/pftdata/' \
                                +'CNP_parameters_c121029'+casename+'.nc',"a")
    input   = open(os.path.abspath(options.parm_file_P))
    for s in input:
        if s[0:1] != '#':
            values = s.split()
            temp = soilorderfile.variables[values[0]]
            temp_data = temp.getValue()
            temp_data[int(values[1])] = float(values[2])
            temp.assignValue(temp_data)
    input.close()
    soilorderfile.close()

#set number of run years for ad, exit spinup cases
if (options.ny_ad != options.run_n and options.ad_spinup):
    options.run_n = options.ny_ad
elif (options.exit_spinup):
    options.run_n = 1

#------------------IF no refcase, create, configure and build -----------------------------------------

if (options.refcase == 'none'):
    #create new case
    print ('./create_newcase --case '+casename+' --mach '+options.machine+' --compset '+ \
                  options.compset+' --res CLM_USRDAT --skip_rundb --max_tasks_per_node 8' + \
                  ' --scratchroot '+os.path.abspath('../run')+' --din_loc_root '+options.ccsm_input)
    os.system('./create_newcase --case '+casename+' --mach '+options.machine+' --compset '+ \
                  options.compset+' --res CLM_USRDAT --skip_rundb --max_tasks_per_node 8' + \
                  ' --scratchroot '+os.path.abspath('../run')+' --din_loc_root '+options.ccsm_input+ \
                  ' > create_newcase.log')
    if (os.path.isdir(casename)):
        print(casename+' created.  See create_newcase.log for details')
        os.system('mv create_newcase.log '+casename)
    else:
        print('failed to create case.  See create_newcase.log for details')

    #go to newly created case directory
    if (options.mycasesroot == "./" ):
        print('options.mycasesroot '+options.mycasesroot)
        print('casedir '+casedir)
        os.chdir(csmdir+"/scripts/"+casename)
    else:
        os.chdir(casedir)

    #change some xml values
    os.system('./xmlchange -file env_conf.xml -id ' \
                  +'DATM_MODE -val CLM1PT') 
    os.system('./xmlchange -file env_conf.xml -id ' \
                  +'DATM_CLMNCEP_YR_START -val '+str(startyear))
    os.system('./xmlchange -file env_conf.xml -id ' \
                  +'DATM_CLMNCEP_YR_END -val '+str(endyear))

    if (options.tstep != 0.5):
        os.system('./xmlchange -file env_conf.xml -id ' \
                      +'ATM_NCPL -val '+str(int(24/float(options.tstep))))
    if (options.branch or options.exit_spinup):
        os.system('./xmlchange -file env_conf.xml -id ' \
                      +'RUN_TYPE -val branch')
        os.system('./xmlchange -file env_conf.xml -id ' \
                      +'RUN_REFDATE -val '+finidat_yst+'-01-01')
        os.system('./xmlchange -file env_conf.xml -id ' \
                      +'RUN_REFCASE -val '+options.finidat_case)

     #adds capability to run with transient CO2
    if (compset == 'I20TRCN'):
        os.system('./xmlchange -file env_conf.xml -id ' \
                      +'CCSM_BGC -val CO2A')
        os.system('./xmlchange -file env_conf.xml -id ' \
                      +'CLM_CO2_TYPE -val diagnostic')

    #if number of land instances > 1
    os.system('./xmlchange -file env_mach_pes.xml -id NTASKS_ATM -val 1')
    os.system('./xmlchange -file env_mach_pes.xml -id NTASKS_LND -val 1')
    os.system('./xmlchange -file env_mach_pes.xml -id NTASKS_ICE -val 1')
    os.system('./xmlchange -file env_mach_pes.xml -id NTASKS_OCN -val 1')
    os.system('./xmlchange -file env_mach_pes.xml -id NTASKS_CPL -val 1')
    os.system('./xmlchange -file env_mach_pes.xml -id NTASKS_GLC -val 1')
    os.system('./xmlchange -file env_conf.xml -id USE_MPISERIAL -val TRUE')
    if (int(options.ninst) > 1):
        os.system('./xmlchange -file env_mach_pes.xml -id ' \
                      +'NINST_LND -val '+options.ninst)
        os.system('./xmlchange -file env_mach_pes.xml -id ' \
                      +'NTASKS_LND -val '+options.ninst)
        os.system('./xmlchange -file env_conf.xml -id ' \
                      +'USE_MPISERIAL -val FALSE')

    #if running with > 1 processor
    if (int(options.np) > 1):
        os.system('./xmlchange -file env_mach_pes.xml -id ' \
                      +'NTASKS_LND -val '+options.np)
        os.system('./xmlchange -file env_conf.xml -id ' \
                      +'USE_MPISERIAL -val FALSE')

    os.system('./xmlchange -file env_run.xml -id ' \
                  +'STOP_OPTION -val '+options.run_units)
    os.system('./xmlchange -file env_run.xml -id ' \
                  +'STOP_N -val '+str(options.run_n))

    #User-defined resolution
    os.system('./xmlchange -file env_conf.xml -id CLM_BLDNML_OPTS ' \
                  +'-val "-mask navy"')
    os.system('./xmlchange -file env_conf.xml -id CLM_USRDAT_NAME ' \
                  +'-val '+str(numxpts)+'x'+str(numypts)+'pt_'+options.site)

    #make case-specific dynamic surface data file
    if (compset == 'I20TRCN'):
        os.system('cp '+options.ccsm_input+'/lnd/clm2/surfdata/' \
                      +'surfdata.pftdyn_1x1pt_US-NR1_simyr*.nc ' \
          +options.ccsm_input+'/lnd/clm2/surfdata/surfdata.pftdyn_1x1pt_'+ \
                      casename+'.nc')
        os.system('cp '+options.ccsm_input+'/lnd/clm2/surfdata/' \
                      +'surfdata.pftdyn_1x1pt_'+options.site+'_simyr*.nc ' \
                      +options.ccsm_input+'/lnd/clm2/surfdata/surfdata.pftdyn_1x1pt_'+ \
                      casename+'.nc')
        os.system('chmod u+w '+options.ccsm_input+'/lnd/clm2/surfdata/surfdata' \
                      +'.pftdyn_1x1pt_'+casename+'.nc')
        
    #clm namelist modifications
    output = open("user_nl_clm",'w')
    output.write('&clm_inparm\n')
    if (options.hist_mfilt != -1):
        output.write(" hist_mfilt = "+ str(options.hist_mfilt)+"\n")
    if (options.hist_nhtfrq != -999):
        output.write(" hist_nhtfrq = "+ str(options.hist_nhtfrq)+"\n")
    if (options.hist_vars != ''):
        output.write(" hist_empty_htapes = .true.\n")
        #read hist_vars file
        hvars_file = open('../'+options.hist_vars)
        myline = " hist_fincl1 = "
        for s2 in hvars_file:
            if line2 ==0:
                myline = myline+"'"+s2.strip()+"'"
            else:
                myline = myline+",'"+s2.strip()+"'"
            line2=line2+1
            output.write(myline+"\n")
            hvars_file.close()
    if (finidat != ''):
        output.write(" finidat = '"+finidat+"'\n")
    output.write(" fsurdat = '"+options.ccsm_input+ \
                 "/lnd/clm2/surfdata/surfdata_1x1pt_"+casename+ \
                 "_simyr"+str(mysimyr)+'_c130404'+".nc'\n")
    if (compset == 'I20TRCN'):
        output.write(" fpftdyn = '"+options.ccsm_input+ \
                         "/lnd/clm2/surfdata/surfdata.pftdyn_1x1pt_"+ \
                         casename+".nc'\n")
    output.write(" fpftcon = '"+options.ccsm_input+ \
                     "/lnd/clm2/pftdata/pft-physiology.c110425."+ \
                     casename+".nc'\n")
    # add soi order dependent parameters
    output.write(" fsoilordercon = '"+options.ccsm_input+ \
                     "/lnd/clm2/pftdata/CNP_parameters_c121029"+ \
                     casename+".nc'\n")
    output.write( " stream_fldfilename_ndep = '"+options.ccsm_input+ \
                      "/lnd/clm2/ndepdata/fndep_clm_hist_simyr1849-2006_1.9x2.5_c100428.nc'\n")
    output.write("/\n")
    output.close()


    #configure case
    if (options.no_config == False):
        os.system('./configure -case > configure.log')
    else:
        print("Warning:  No case configure performed.  PTCLM will not " \
                  +"make any requested modifications to env_*.xml files.  Exiting.")
        sys.exit()

    #copy sourcemods
    os.chdir('..')
    if (options.srcmods_loc != ''):
        if (os.path.exists(options.srcmods_loc) == False):
            print('Invalid srcmods directory.  Exiting')
            sys.exit()
        options.srcmods_loc = os.path.abspath(options.srcmods_loc)
        os.system('cp -r '+options.srcmods_loc+'/* ./'+casename+ \
                      '/SourceMods')
    if(options.mycasesroot == './' ):
        os.chdir(csmdir+"/scripts/"+casename)
    else:
        os.chdir(casedir)

    #clm build exe modifications
    input  = open("./Buildconf/clm.buildexe.csh")
    output = open("./Buildconf/clm.buildexetemp.csh",'w')
    for s in input:
        if (s[0:11] == 'set clmdefs'):
            s=s[:-2]
            if (options.nofire):
                s=s+' -DNOFIRE'
            if (options.C13):
                s=s+' -DC13'
            if (options.C14):
                s=s+' -DC14'
                #C14 requires C13 flag to be set
                if (options.C13 == False):
                    s=s+' -DC13'  
            if (options.ad_spinup):
                s=s+' -DAD_SPINUP'
            if (options.exit_spinup):
                s=s+' -DEXIT_SPINUP'
            if (options.npoolmod):
                s=s+' -DNPOOLMOD'
            if (options.tfmod):
                s=s+' -DTFMOD'
            if (options.q10wbmod):
                s=s+' -DQ10WBMOD'
            output.write(s+'"\n')                
        else:
            output.write(s)
    input.close()
    output.close()
    os.system("mv ./Buildconf/clm.buildexetemp.csh "+ \
                  "./Buildconf/clm.buildexe.csh")
    os.system("chmod u+x ./Buildconf/clm.buildexe.csh")

    #clean build if requested
    if (options.clean_build):
        os.system('./'+casename+'.clean_build')
    #compile cesm
    if (options.no_build == False):
        os.system('./'+casename+'.build')

    if (options.mycasesroot == './'):
        os.chdir(csmdir+"/scripts/"+casename)
    else:
        os.chdir(casedir)        

    #transient CO2 patch for transient run (datm buildnml mods)
    if (compset == "I20TRCN"):
        os.system('cp '+PTCLMdir+'/tower_transient_co2_patch.py .')
        os.system('python tower_transient_co2_patch.py --site '+ \
                      options.site+' --align_year '+options.align_year \
                      +' --sitegroup '+options.sitegroup+' --ccsm_input '+ \
                      options.ccsm_input+' --co2_file '+options.co2_file)
        os.system('chmod a+x ./Buildconf/datm.buildnml.csh')

    #datm namelist modifications
    input  = open("./Buildconf/datm.buildnml.csh")
    output = open("./Buildconf/datm.buildnmltemp.csh",'w')
    #cycle all streams, replace site name
    for s in input:
        output.write(((s.replace("'extend'","'cycle'")).replace('CLM_USRDAT','1x1pt_'+options.site)) \
                         .replace('aerosoldep_monthly_1849-2006_1x1pt_US-UMB.nc', \
                                      'aerosoldep_monthly_1849-2006_1.9x2.5_c090803.nc'))
    output.close()
    input.close()
    input  = open("./Buildconf/datm.buildnmltemp.csh")
    output = open("./Buildconf/datm.buildnml.csh",'w')
    #met data subdirectory
    for s in input:
        if (options.metdir != 'none'):
            output.write(s.replace('/CLM1PT_data/','/CLM1PT_data/'+options.metdir+'/'))
        else:
            output.write(s)
    output.close()
    input.close()

    os.system("chmod a+x ./Buildconf/datm.buildnml.csh")

    #make necessary modificaitons to run script for OIC
    if (options.machine == "generic_linux_pgi"):
        input  = open("./"+casename+".run")
        output = open("./"+casename+"temp.run",'w')
        for s in input:
            if s[6:8]  == '-N':
                output.write("#PBS -N "+casename+"\n")
            elif s[9:14] == 'batch':
                output.write("#PBS -q "+options.queue+"\n")
            #elif s[0:4] == 'cd /':                 
                #output.write("cd "+csmdir+'/scripts/'+casename+"\n")
                #os.chdir(casedir)
            elif s[0:7] == './Tools':
                output.write("cd "+csmdir+'/scripts/'+casename+"\n")
                output.write(s)
            elif s[0:14] =="##PBS -l nodes":
                output.write("#PBS -l nodes="+str((int(options.np)-1)/8+1)+ \
                                 ":ppn="+str(min(int(options.np),8))+"\n")  
            elif s[9:17] == 'walltime':
                output.write("#PBS -l walltime=48:00:00\n") 
            elif s[0:5] == '##PBS':
                output.write(s.replace("##PBS","#PBS"))
            elif s[0:7] == '   exit':
                output.write('   #exit 2')
            elif s[0:10] == '   #mpirun':
                output.write("   mpirun -np "+str(options.np)+" --hostfile $PBS_NODEFILE ./ccsm.exe >&! ccsm.log.$LID\n")
            elif s[0:5] == 'sleep':
                output.write("sleep 5\n")
            else:
                output.write(s)
        output.close()
        input.close()
        os.system("mv "+casename+"temp.run "+casename+".run")

else:  

#----------------------------Reference case set ------------------------------------------
    os.chdir('../run')
    incasename  = options.refcase+'_REFCASE_'+options.compset
    if (options.ad_spinup):
        incasename = incasename + '_ad_spinup'
    if (options.exit_spinup):
        incasename = incasename + '_exit_spinup'
    os.system('mkdir -p '+casename+'/run')
    os.chdir(casename+'/run')
    print 'Copying files from '+incasename+' to '+casename
    os.system('cp ../../'+incasename+'/run/*_in* .')
    os.system('cp ../../'+incasename+'/run/ccsm.exe .')
    os.system('cp ../../'+incasename+'/run/*.nml .')
    os.system('cp ../../'+incasename+'/run/*eam* .')
    os.system('cp ../../'+incasename+'/run/*.rc .')
   

   #Change generic site/case name to actual site/case name in namelst files
    os.system('chmod u+w *')
    os.system('sed -e s/'+incasename+'/'+casename+'/ig  lnd_in > lnd_in_tmp')
    os.system('mv lnd_in_tmp lnd_in')
    os.system('sed -e s/REFCASE/'+options.site+'/ig  lnd_in > lnd_in_tmp')
    os.system('mv lnd_in_tmp lnd_in')
    ptstr = str(numxpts)+'x'+str(numypts)+'pt'
    os.system('sed -e s/1x1pt/'+ptstr+'/ig  lnd_in > lnd_in_tmp')
    os.system('mv lnd_in_tmp lnd_in')
    os.system('sed -e s/'+incasename+'/'+casename+'/ig  datm_atm_in > datm_atm_in_tmp')
    os.system('mv datm_atm_in_tmp datm_atm_in')
    os.system('sed -e s/REFCASE/'+options.site+'/ig  datm_atm_in > datm_atm_in_tmp')
    os.system('mv datm_atm_in_tmp datm_atm_in')
    os.system('sed -e s/1x1pt/'+ptstr+'/ig  datm_atm_in > datm_atm_in_tmp')
    os.system('mv datm_atm_in_tmp datm_atm_in')
    os.system('sed -e s/CLM_USRDAT/1x1pt_'+options.site+'/ig  datm_atm_in > datm_atm_in_tmp')
    os.system('mv datm_atm_in_tmp datm_atm_in')
    os.system('mv clm1PT.CLM_USRDAT.stream.txt clm1PT.1x1pt_REFCASE.stream.txt')
    os.system('sed -e s/REFCASE/'+options.site+'/ig clm1PT.1x1pt_REFCASE.stream.txt > clm1PTstream.tmp')
    os.system('mv clm1PTstream.tmp clm1PT.'+ptstr+'_'+options.site+'.stream.txt')
    os.system('sed -e s/1x1pt/'+ptstr+'/ig clm1PT.'+ptstr+'_'+options.site+'.stream.txt > clm1PTstream.tmp')
    os.system('mv clm1PTstream.tmp clm1PT.'+ptstr+'_'+options.site+'.stream.txt')
    os.system('rm *REFCASE*')
    os.system('sed -e s/'+incasename+'/'+casename+'/ig  drv_in > drv_in_tmp')
    os.system('mv drv_in_tmp drv_in')
    os.system('sed -e s/REFCASE/'+options.site+'/ig  drv_in > drv_in_tmp')
    os.system('mv drv_in_tmp drv_in')
    
    #modify met stream file for correct years
    myinput  = open('clm1PT.'+ptstr+'_'+options.site+'.stream.txt')
    myoutput = open('clm1PT.'+ptstr+'_'+options.site+'.stream.txt.tmp','w')
    for s in myinput:
        if (s[0:22] == '            2000-01.nc'):
            for y in range(startyear,endyear+1):
                for m in range(1,13):
                    if (m < 10):
                        myoutput.write('            '+str(y)+'-0'+str(m)+'.nc\n')
                    else:
                        myoutput.write('            '+str(y)+'-'+str(m)+'.nc\n')
        elif (s[0:17] == '            2000-'):
            continue  #do nothing
        else:
            myoutput.write(s)
    myinput.close()
    myoutput.close()
    os.system('mv clm1PT.'+ptstr+'_'+options.site+'.stream.txt.tmp clm1PT.'+ptstr+'_'+options.site+'.stream.txt')

    #modify presearo stream file to change to 1850-2000 file
    myinput  = open('presaero.stream.txt')
    myoutput = open('presaero.stream.txt.tmp','w')
    for s in myinput:
        if (s[0:22] == '            aerosoldep'):
            myoutput.write('            aerosoldep_monthly_1849-2006_1.9x2.5_c090803.nc\n')
        else:
            myoutput.write(s)
    myinput.close()
    myoutput.close()
    os.system('mv presaero.stream.txt.tmp presaero.stream.txt')

    #modify datm_atm_in for correct years
    myinput  = open('datm_atm_in')
    myoutput = open('datm_atm_in_tmp','w')
    for s in myinput:
        if (s[0:10] == '   streams'):
            if (compset == 'I20TRCN'):
                myoutput.write("   streams        = 'clm1PT."+ptstr+"_"+options.site+".stream"+ \
                                   ".txt "+str(options.align_year)+" "+str(startyear)+" "+str(endyear)+" ',\n")  
            else:
                myoutput.write("   streams        = 'clm1PT."+ptstr+"_"+options.site+ \
                                   ".stream.txt 1 "+str(startyear)+" "+str(endyear)+" ',\n")
        else:
            myoutput.write(s)
    myinput.close()
    myoutput.close()
    os.system('mv datm_atm_in_tmp datm_atm_in')

    #modify component .nml files
    nmlfiles=['atm','cpl','glc','ice','lnd','ocn']
    for mynml in nmlfiles:
        outfile = open(mynml+'_modelio.nml','w')
        outfile.write('&modelio\n')
        outfile.write('   diri    = "'+os.path.abspath('../..')+'/'+incasename+'/'+ \
                          mynml+'   "\n')
        outfile.write('   diro    = "./"\n') #'+os.path.abspath('.')+'   "\n')
        outfile.write('   logfile = "'+mynml+'.log   "\n')
        outfile.write('/\n')
        outfile.close()
          
    #make drv_in namelist modifications (run length for final spin/tranisent case)
    myinput  = open('drv_in')
    myoutput = open('drv_in_tmp','w')
    for s in myinput:
        if (s[0:8] == '  stop_n'):
            myoutput.write("  stop_n         = "+str(options.run_n)+'\n')                               
        elif (s[0:11] == '  restart_n'):
            myoutput.write("  restart_n      = "+str(options.run_n)+'\n')
        elif (s[0:10] == '  stop_ymd'):
            myoutput.write("  stop_ymd       = -999\n")
        elif (s[0:13] == '  restart_ymd'):
            myoutput.write("  restart_ymd    = -999\n")
        elif (s[0:12] == '  atm_cpl_dt'):
            myoutput.write("  atm_cpl_dt     = "+str(float(options.tstep)*3600)+'\n')
        elif (s[0:12] == '  lnd_cpl_dt'):
            myoutput.write("  lnd_cpl_dt     = "+str(float(options.tstep)*3600)+'\n')
        elif (s[0:12] == '  ice_cpl_dt'):
            myoutput.write("  atm_cpl_dt     = "+str(float(options.tstep)*3600)+'\n')
        elif (s[0:11] == '  start_ymd'):
            if (options.exit_spinup):
                myoutput.write("  start_ymd      = "+finidat_yst+'0101\n')
            else:
                myoutput.write(s)
        else:
            myoutput.write(s)
    myinput.close()
    myoutput.close()
    os.system('mv drv_in_tmp drv_in')
            
    #make lnd_in namelist modification for finidat file in transient case for correct year
    myinput  = open('lnd_in')
    myoutput = open('lnd_in_tmp','w')
   
    for s in myinput:
        if (s[0:8] == ' hist_mf'):
            if (compset == 'I20TRCN'):
                myoutput.write(' hist_mfilt      = 12, 8760, 365\n')
            else: 
                myoutput.write(' hist_mfilt      = 1\n')
        elif (s[0:8] == ' hist_nh'):
            if (compset == 'I20TRCN'):
                myoutput.write(' hist_nhtfrq     = 0, -1, -24\n')
                myoutput.write(" hist_fincl2     = 'NEE', 'GPP', 'NPP', 'ER', 'SR', 'EFLX_LH_TOT', 'FSH', 'FPSN', 'BTRAN', 'FPG', 'FPI', 'TV', 'FSA', 'FIRA', 'FCTR', 'FCEV', 'FGEV', 'TBOT', 'FLDS', 'FSDS', 'RAIN', 'SNOW', 'WIND', 'PBOT', 'QBOT'\n")
                myoutput.write(" hist_fincl3     = 'NEE', 'GPP', 'NPP', 'AGNPP', 'BGNPP', 'ER', 'AR', 'HR', 'SR', 'EFLX_LH_TOT', 'FSH', 'FPSN', 'BTRAN', 'FPG', 'FPI', 'TBOT', 'FLDS', 'FSDS', 'RAIN', 'SNOW', 'WIND', 'PBOT', 'QBOT', 'PFT_FIRE_CLOSS', 'LITFALL', 'TLAI', 'LEAFC' ,'FROOTC', 'LIVESTEMC', 'DEADSTEMC', 'LIVECROOTC', 'DEADCROOTC', 'TOTVEGC', 'TOTSOMC', 'TOTLITC', 'CWDC', 'TOTECOSYSC', 'TOTCOLC', 'TOTSOMN', 'TOTECOSYSN', 'SMINN', 'QOVER', 'QDRAI', 'QRGWL', 'QRUNOFF' \n")
            else:
                myoutput.write(' hist_nhtfrq    = -8760\n')
        elif (s[0:8] == ' finidat'):
            myoutput.write(" finidat   = '"+finidat+"'\n")
        elif (s[0:7] == ' nrevsn'):
            myoutput.write(" nrevsn    = '"+finidat+"'\n")
        elif (s[0:6] == ' dtime'):
            myoutput.write(" dtime     = "+str(float(options.tstep)*3600)+'\n')
        else:
            myoutput.write(s)
    myinput.close()
    myoutput.close()
    os.system('mv lnd_in_tmp lnd_in')

    #write a basic PBS script
    output = open(casename+'.run','w')
    output.write('#PBS -S /bin/bash\n')
    output.write('#PBS -V\n')
    output.write('#PBS -m ae\n')
    output.write('#PBS -N '+casename+'\n')
    output.write('#PBS -q '+options.queue+'\n')
    output.write("#PBS -l nodes="+str((int(options.np)-1)/8+1)+ \
                     ":ppn="+str(min(int(options.np),8))+"\n")  
    output.write('#PBS -l walltime=48:00:00\n')
    output.write("cd "+csmdir+'/run/'+casename+"/run\n")
    if (options.np == 1):
        output.write("./ccsm.exe > ccsm_log.txt\n")
    else:
        output.write("mpirun -np "+options.np+" --hostfile $PBS_NODEFILE ./ccsm.exe\n")
    output.close()

#---------------------------end of refcase ------------------------------------------------



#copy rpointers and restart files to current run directory
if(finidat != '' and options.myrunroot != '' ):
    os.system('cp -f '+options.finidat+' '+options.myrunroot+'/'+\
              casename+'/run/')
    os.system('cp -f '+options.myrunroot+'/'+options.finidat_case+\
              '/run/rpointer.* '+options.myrunroot+'/run/'+
              casename+'/run')        
if (finidat != '' and options.myrunroot == '' ):
    os.system('cp -f '+csmdir+'/run/'+options.finidat_case+'/run/'+ \
              options.finidat_case+'.*'+finidat_yst+'* '+csmdir+ \
              '/run/' +casename+'/run/')
    os.system('cp -f '+csmdir+'/run/'+options.finidat_case+'/run/'+ \
              'rpointer.* '+csmdir+'/run/'+casename+'/run/')

#submit job if requested
if (options.no_submit == False):
    os.system("pwd")
    os.system("qsub "+casename+".run")


#copy call_PTCLM.py to case directory
#os.chdir('..')
#os.system("cp "+cmd+" ./"+casename+'/call_PTCLM_'+casename+'.cmd')
