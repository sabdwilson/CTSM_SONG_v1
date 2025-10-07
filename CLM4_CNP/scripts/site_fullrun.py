#!/usr/bin/env python

import os, sys, csv
from optparse import OptionParser

parser = OptionParser();

parser.add_option("--caseidprefix", dest="mycaseid", default="", \
                  help="Unique identifier to include as a prefix to the case name")
parser.add_option("--site", dest="site", default='', \
                  help = '6-character FLUXNET code to run (required)')
parser.add_option("--sitegroup", dest="sitegroup", default="AmeriFlux", \
                  help = "site group to use (default AmeriFlux)")
parser.add_option("--machine", dest="machine", default = 'generic_linux_pgi', \
                  help = "machine to use (default = generic_linux_pgi)")
parser.add_option("--csmdir", dest="csmdir", default='..', \
                  help = "base CESM directory (default = ../)")
parser.add_option("--ccsm_input", dest="ccsm_input", \
                  default='../../ccsm_inputdata', \
                  help = "input data directory for CESM (required)")
parser.add_option("--srcmods_loc", dest="srcmods_loc", default='', \
                  help = 'Copy sourcemods from this location')
parser.add_option("--nyears_final_spinup", dest="nyears_final_spinup", default='1000', \
                  help="base no. of years for final spinup")
parser.add_option("--clean_build", action="store_true", default=False, \
                  help="Perform a clean build")
parser.add_option("--hist_mfilt", dest="hist_mfilt", default="365", \
                  help = 'number of output timesteps per file (transient only)')
parser.add_option("--hist_nhtfrq", dest="hist_nhtfrq", default="-24", \
                  help = 'output file timestep (transient only)')
parser.add_option("--parm_file", dest="parm_file", default="", \
                  help = 'parameter file to use')
parser.add_option("--nofire", dest="no_fire", default=False, \
                  action="store_true", help='Turn off fire algorithms')
parser.add_option("--regional", action="store_true", \
                   dest="regional", default=False, \
                   help="Flag for regional run (2x2 or greater)")
parser.add_option("--np", dest="np", default=1, \
                  help = 'number of processors')
parser.add_option("--tstep", dest="tstep", default=0.5, \
                  help = 'CLM timestep (hours)')
parser.add_option("--co2_file", dest="co2_file", default="fco2_datm_1765-2007_c100614.nc", \
                  help = 'CLM timestep (hours)')
parser.add_option("--nyears_ad_spinup", dest="ny_ad", default=600, \
                  help = 'number of years to run ad_spinup')
parser.add_option("--metdir", dest="metdir", default="none", \
                  help = 'subdirectory for met data forcing')
parser.add_option("--C13", dest="C13", default=False, \
                      help = 'Switch to turn on C13', action="store_true")
parser.add_option("--C14", dest="C14", default=False, \
                  help = 'Use C14 as C13 (no decay)', action="store_true")
parser.add_option("--ninst", dest="ninst", default=1, \
                      help = 'number of land model instances')
parser.add_option("--npoolmod", action="store_true", dest="npoolmod", default=False, \
                    help="To turn on nitrogen pool modifications")
parser.add_option("--q10wbmod", action="store_true", dest="q10wbmod", default=False, \
                    help="To turn on Woodrow-Berry Q10 curve")
parser.add_option("--tfmod", action="store_true", dest="tfmod", default=False, \
                    help="To set temperature threshold (0 degC) for plant wilting factor")
parser.add_option("--makemetdata", action="store_true", dest="makemet", default=False, \
                    help="generate site meteorology")
parser.add_option("--refcase", dest="refcase" , default='none', \
                  help = 'Use already compiled CLM case')
parser.add_option("--soilgrid", dest="soilgrid", default=False, \
	          action="store_true", help='use gridded soil data')

(options, args) = parser.parse_args()

ccsm_input = options.ccsm_input
mycaseid   = options.mycaseid
srcmods    = options.srcmods_loc

#get start and year of input meteorology from site data file
fname = './PTCLM_files/PTCLM_sitedata/'+ \
    options.sitegroup+'_sitedata.txt'
AFdatareader = csv.reader(open(fname, "rb"))


for row in AFdatareader:
    if row[0] == options.site or (options.site == 'all' and row[0] !='site_code' \
                                      and row[0] != ''):
        site      = row[0]
        startyear = int(row[6])
        endyear   = int(row[7])

        ncycle   = endyear-startyear+1   #number of years in met cycle
        translen = endyear-1850+1        #length of transient run

        #use parameter file if it exists
        if (options.parm_file == ''):
          if (os.path.exists('./PTCLM_files/parms_'+site)):
              print ('Using parameter file PTCLM_Files/parms_'+site)
              options.parm_file = './PTCLM_files/parms_'+site
         
 
        for i in range(0,ncycle+1):  #figure out length of final spinup run
            fsplen = int(options.nyears_final_spinup)+i
            if ((fsplen+translen) % ncycle == 0):
                break
#	translen=149  #force stop in 1999 for LIDET

        #get align_year for transient run
        year_align = (startyear-1850) % ncycle
        #print year_align, fsplen
        basecmd = 'python runCLM.py --site '+site+' --ccsm_input '+ \
            os.path.abspath(ccsm_input)+' --rmold --no_submit --sitegroup ' + \
            options.sitegroup
        if (srcmods != ''):
            srcmods    = os.path.abspath(srcmods)
            basecmd = basecmd+' --srcmods_loc '+srcmods
        if (mycaseid != ''):
            basecmd = basecmd+' --caseidprefix '+mycaseid
        if (options.parm_file != ''):
            basecmd = basecmd+' --parm_file '+options.parm_file
        if (options.no_fire):
            basecmd = basecmd+' --no_fire '
        if (options.clean_build):
            basecmd = basecmd+' --clean_build '
        if (options.regional):
            basecmd = basecmd+' --regional '
        if (options.metdir !='none'):
            basecmd = basecmd+' --metdir '+options.metdir
        if (options.C13):
            basecmd = basecmd+' --C13 '
        if (options.C13):
            basecmd = basecmd+' --C14 '
        if (options.ninst > 1):
            basecmd = basecmd+' --ninst '+str(options.ninst)
        if (options.npoolmod):
            basecmd = basecmd+' --npoolmod '
        if (options.q10wbmod):
            basecmd = basecmd+' --q10wbmod '
        if (options.tfmod):
            basecmd = basecmd+' --tfmod '
        if (options.refcase != 'none'):
            basecmd = basecmd+' --refcase '+options.refcase
        if (options.soilgrid):
	    basecmd = basecmd+' --soilgrid'
        basecmd = basecmd + ' --np '+str(options.np)
        basecmd = basecmd + ' --tstep '+str(options.tstep)
        basecmd = basecmd + ' --co2_file '+options.co2_file

        #build commands
        #AD spinup
        cmd_adsp = basecmd+' --ad_spinup --nyears_ad_spinup '+str(options.ny_ad)+ \
            ' --hist_mfilt 1 --hist_nhtfrq -8760'
        if (options.makemet):
            cmd_adsp = cmd_adsp+' --makemetdata'
        #exit spinup
        cmd_exsp = basecmd+' --exit_spinup --nyears_ad_spinup '+str(options.ny_ad)+ \
            ' --hist_mfilt 1 --hist_nhtfrq -8760'
        #final spinup
        if mycaseid !='':
            basecase=mycaseid+'_'+site+'_I1850CN'
        else:
            basecase=site+'_I1850CN'

        cmd_fnsp = basecmd+' --finidat_case '+basecase+'_exit_spinup '+ \
            '--finidat_year '+str(int(options.ny_ad)+2)+' --run_units nyears --run_n '+ \
            str(fsplen)+' --hist_mfilt 365 --hist_nhtfrq -24'
        #transient
        cmd_trns = basecmd+' --finidat_case '+basecase+ \
            ' --finidat_year '+str(fsplen+1)+' --run_units nyears' \
            +' --run_n '+str(translen)+' --align_year '+ \
            str(year_align+1850)+' --compset I20TRCN --hist_nhtfrq '+ \
            options.hist_nhtfrq+' --hist_mfilt '+options.hist_mfilt
        
        #print(cmd_trns)

        #set site environment variable
        os.environ['SITE']=site

        if (options.refcase == 'none'):
            input = open('./PTCLM_files/site_fullrun_template.pbs')
        else:
            input = open('./PTCLM_files/site_fullrun_template_refcase.pbs')
        output = open('./PTCLM_files/site_fullrun_temp.pbs','w')
        #make site-specific pbs script
        for s in input:
            if mycaseid != '':
                output.write(s.replace("#SITE#",mycaseid+"_"+site))
            else:
                output.write(s.replace("#SITE#",site))        
        input.close()
        output.close()

        input = open('./PTCLM_files/site_fullrun_temp.pbs')
        output = open('./PTCLM_files/site_fullrun.pbs','w')
        for s in input:
            if (options.refcase == 'none'):
                output.write(s.replace("#SCRIPTS#",os.path.abspath('.')))        
            else:
                output.write(s.replace("#RUNDIR#",os.path.abspath('../run')))
        input.close()
        output.close()
        os.system('rm ./PTCLM_files/site_fullrun_temp.pbs')

        #build cases
        print('\nSetting up ad_spinup case\n')
        os.system(cmd_adsp)
        print('\nSetting up exit_spinup case\n') 
        os.system(cmd_exsp)
        print('\nSetting up final spinup case\n')
        os.system(cmd_fnsp)
        print('\nSetting up transient case\n')
        os.system(cmd_trns)
        
        #submit
        os.chdir('PTCLM_files')
        os.system('qsub site_fullrun.pbs')
        os.chdir('..')

