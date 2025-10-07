#!/usr/bin/env python

import os, sys, csv, time, math
from optparse import OptionParser
import Scientific.IO.NetCDF
from Scientific.IO import NetCDF
#from Numeric import *


#DMR 3/30/11
#call_PTCLM.py does the following:
#  1. executes official version of PTCLM with options specified below
#      Latest verson of PTCLM creates grid, surf, ndep and aerdep data
#      with site-level information and performs a create_newcase.
#      It makes several modifications to the env_conf and env_run xml
#      files.  It does NOT configure, build or submit - that is done by
#      this wrapper.
#      note:  PTCLM.py is in ./scripts/ccsm_utils/Tools/lnd/clm/PTCLM
#      site-level information is also in that location.
#  2. configure case
#  3. build (compile) CESM with clean_build first if requested
#  4. apply patch for transient CO2 if transient run
#  5. apply user-specified output options to namelist
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
parser.add_option("--numxpts", dest="mynumxpts", default="", \
                    help="Number of points in Longitude-direction")
parser.add_option("--numypts", dest="mynumypts", default="", \
                    help="Number of points in Latitude-direction")
parser.add_option("--sitee", dest="mysitee", default="", \
                    help="Site eastern edge")
parser.add_option("--sitew", dest="mysitew", default="", \
                    help="Site wastern edge")
parser.add_option("--siten", dest="mysiten", default="", \
                    help="Site northern edge")
parser.add_option("--sites", dest="mysites", default="", \
                    help="Site southern edge")
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

PTCLMdir = csmdir+'/scripts/ccsm_utils/Tools/lnd/clm/PTCLM'

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
os.putenv("CLM_USRDAT_NAME", '1x1pt_'+options.site)
os.putenv("DOMAINPATH", options.ccsm_input+'/share/domains/domain.clm')


#------------------- get site information ----------------------------------

print('Creating surface data (based on 0.5x0.5 resolution dataset)')
os.chdir('./ccsm_utils/Tools/lnd/clm/PTCLM/PTCLM_sitedata')
AFdatareader = csv.reader(open(options.sitegroup+'_sitedata.txt',"rb"))
for row in AFdatareader:
    if row[0] == options.site:
        lon=float(row[3])
        if (lon < 0):
            lon=360.0+float(row[3]) 
        lat=float(row[4])
        startyear=int(row[6])
        endyear=int(row[7])
        alignyear = int(row[8])
        if options.regional == True:
           numxpts=int(row[9])
           numypts=int(row[10])
           resx=float(row[11])
           resy=float(row[12])
        else:
           numxpts=1
           numypts=1
           resx=0.1      #longitudinal resolution (degrees) 
           resy=0.1      #latitudinal resolution (degrees)
           #lat=lat-resy/2
           #lon=lon-resx/2
        if (options.makemet):
            print(" Making meteorological data for site")
            os.system('python '+csmdir+'/scripts/makemetdata.py' \
                          +' --site '+options.site+' --lat '+row[4]+' --lon '+ \
                          row[3]+' --ccsm_input '+options.ccsm_input+ \
                          ' --metdir '+options.metdir+' --startyear '+row[6]+ \
                          ' --endyear '+row[7])

#get corresponding 0.5x0.5 degree grid cells
if (lon < 0):
    xgrid = 720+int(round(lon*2))
else:
    xgrid = int(round(lon*2))
ygrid = int(round(lat*2)+180)

#------------------- create grid data -------------------------------------------------------

print('Creating grid data')
gridfile_orig = options.ccsm_input+'/lnd/clm2/griddata/' \
    +'griddata_0360x0720.nc'
gridfile_new = options.ccsm_input+'/lnd/clm2/griddata/' \
    +'griddata_'+str(numxpts)+'x'+str(numypts)+'pt_'+options.site+'.nc'
if (os.path.isfile(gridfile_new)):
    print('Warning:  Removing existing grid file')
    os.system('rm -rf '+gridfile_new)
os.system('ncks -d lsmlon,'+str(xgrid)+','+str(xgrid+numxpts-1)+' -d lsmlat,'+ \
              str(ygrid)+','+str(ygrid+numypts-1)+' '+gridfile_orig+' '+gridfile_new)
gridfile_new_nc = NetCDF.NetCDFFile(gridfile_new, "a")
numlon = gridfile_new_nc.variables['NUMLON']
numlon.assignValue(numxpts)
longxy = gridfile_new_nc.variables['LONGXY']
longxy_vals = longxy.getValue()
latixy = gridfile_new_nc.variables['LATIXY']
latixy_vals = latixy.getValue()
latn = gridfile_new_nc.variables['LATN']
latn_vals = latn.getValue()
lats = gridfile_new_nc.variables['LATS']
lats_vals = lats.getValue()
lone = gridfile_new_nc.variables['LONE']
lone_vals = lone.getValue()
lonw = gridfile_new_nc.variables['LONW']
lonw_vals = lonw.getValue()
area = gridfile_new_nc.variables['AREA']
area_vals = area.getValue()
for i in range(0,numxpts):
    for j in range(0,numypts):
        longxy_vals[i][j] = lon+i*resx
        latixy_vals[i][j] = lat+j*resy
        latn_vals[i][i] = lat+resy/2+j*resy
        lats_vals[i][j] = lat-resy/2+j*resy
        lone_vals[i][j] = lon+resx/2+i*resx
        lonw_vals[i][j] = lon-resx/2+i*resx
        area_vals[i][j] = (110.567+1.102*abs(lat)/90)*resy*111.321*math.cos((lon+i*resx)*math.pi/180)*resx
longxy.assignValue(longxy_vals)
latixy.assignValue(latixy_vals)
latn.assignValue(latn_vals)
lats.assignValue(lats_vals)
lone.assignValue(lone_vals)
lonw.assignValue(lonw_vals)
area.assignValue(area_vals)
gridfile_new_nc.close()

#-----------------------create frac data ------------------------------------------------------

print('Creating frac data')
fracfile_orig = options.ccsm_input+'/lnd/clm2/griddata/' \
    +'fracdata_0360x0720_ORCHIDEE.nc'
fracfile_new = options.ccsm_input+'/lnd/clm2/griddata/' \
    +'fracdata_'+str(numxpts)+'x'+str(numypts)+'pt_'+options.site+'.nc'
if (os.path.isfile(fracfile_new)):
    print('Warning: Removing existing frac file')
    os.system('rm -rf '+fracfile_new)
os.system('ncks -d lsmlon,'+str(xgrid)+','+str(xgrid+numxpts-1)+' -d lsmlat,'+ \
              str(ygrid)+','+str(ygrid+numypts-1)+' '+fracfile_orig+' '+fracfile_new)
fracfile_new_nc = NetCDF.NetCDFFile(fracfile_new, "a")
numlon = fracfile_new_nc.variables['NUMLON']
numlon.assignValue(numxpts)
landfrac = fracfile_new_nc.variables['LANDFRAC']
landfrac_vals = landfrac.getValue()
landmask = fracfile_new_nc.variables['LANDMASK']
landmask_vals = landmask.getValue()
longxy = fracfile_new_nc.variables['LONGXY']
longxy_vals = longxy.getValue()
latixy = fracfile_new_nc.variables['LATIXY']
latixy_vals = latixy.getValue()
for i in range(0,numxpts):
    for j in range(0,numypts):
        longxy_vals[i][j] = lon+i*resx
        latixy_vals[i][j] = lat+j*resy
        landfrac_vals[i][j] = 1.0
        landmask_vals[i][j] = 1
landfrac.assignValue(landfrac_vals)
landmask.assignValue(landmask_vals)
longxy.assignValue(longxy_vals)
latixy.assignValue(latixy_vals)
fracfile_new_nc.close()

#---------------------Create domain data --------------------------------------------------

print('Creating domain data')
domainfile_orig = options.ccsm_input+'/atm/datm7/domain.clm/' \
    +'domain.360x720_ORCHIDEE0to360.100409.nc'
domainfile_new = options.ccsm_input+'/share/domains/domain.clm/' \
    +'domain.lnd.'+str(numxpts)+'x'+str(numypts)+'pt_'+options.site+'_navy.nc'
if (os.path.isfile(domainfile_new)):
    print('Warning:  Removing existing domain file')
    os.system('rm -rf '+domainfile_new)
os.system('ncks -d ni,'+str(xgrid)+','+str(xgrid+numxpts-1)+' -d nj,'+str(ygrid)+ \
          ','+str(ygrid+numypts-1)+' '+domainfile_orig+' '+domainfile_new)
domainfile_new_nc = NetCDF.NetCDFFile(domainfile_new, "a")
frac = domainfile_new_nc.variables['frac']
frac_vals = frac.getValue()
mask = domainfile_new_nc.variables['mask']
mask_vals = mask.getValue()
xc = domainfile_new_nc.variables['xc']
xc_vals = xc.getValue()
yc = domainfile_new_nc.variables['yc']
yc_vals = yc.getValue()
xv = domainfile_new_nc.variables['xv']
xv_vals = xv.getValue()
xv.assignValue(xv_vals)
yv = domainfile_new_nc.variables['yv']
yv_vals = yv.getValue()
area = domainfile_new_nc.variables['area']
area_vals = area.getValue()
for i in range(0,numxpts):
    for j in range(0,numypts):
        frac_vals[i][j] = 1.0
        mask_vals[i][j] = 1
        xc_vals[i][j] = lon
        yc_vals[i][j] = lat
        print(i,j,lon,lat)
        xv_vals[i][j][0] = lon-resx/2+i*resx
        xv_vals[i][j][1] = lon+resx/2+i*resx
        xv_vals[i][j][2] = lon-resx/2+i*resx
        xv_vals[i][j][3] = lon+resx/2+i*resx
        yv_vals[i][j][0] = lat-resy/2+j*resy
        yv_vals[i][j][1] = lat-resy/2+j*resy
        yv_vals[i][j][2] = lat+resy/2+j*resy
        yv_vals[i][j][3] = lat+resy/2+j*resy
        area_vals[i][j] = resx*resy*math.pi/180*math.pi/180
frac.assignValue(frac_vals)
mask.assignValue(mask_vals)
xc.assignValue(xc_vals)
yc.assignValue(yc_vals)
xv.assignValue(xv_vals)
yv.assignValue(yv_vals)
area.assignValue(area_vals)
domainfile_new_nc.close()

#-------------------- create surface data ----------------------------------
if (lon < 0):
    xgrid = 720+int(round(lon*2))
else:
    xgrid = int(round(lon*2))
ygrid = int(round(lat*2)+180)

surffile_orig = options.ccsm_input+'/lnd/clm2/surfdata/' \
    +'surfdata_0.5x0.5_simyr1850.nc'
surffile_new = options.ccsm_input+'/lnd/clm2/surfdata/' \
    +'surfdata_'+str(numxpts)+'x'+str(numypts)+'pt_'+options.site+'_simyr1850.nc'
if (os.path.isfile(surffile_new)):
    print('Warning:  Removing existing surface file')
    os.system('rm -rf '+surffile_new)
os.system('ncks -d lsmlon,'+str(xgrid)+','+str(xgrid+numxpts-1)+' -d lsmlat,'+str(ygrid)+ \
          ','+str(ygrid+numypts-1)+' '+surffile_orig+' '+surffile_new)
    
surffile_new_nc = NetCDF.NetCDFFile(surffile_new, "a")
numlon = surffile_new_nc.variables['NUMLON']
numlon.assignValue(numxpts)
landfrac_pft = surffile_new_nc.variables['LANDFRAC_PFT']
landfrac_pft_vals = landfrac_pft.getValue()
pftdata_mask = surffile_new_nc.variables['PFTDATA_MASK']
pftdata_mask_vals = pftdata_mask.getValue()
longxy = surffile_new_nc.variables['LONGXY']
longxy_vals = longxy.getValue()
latixy = surffile_new_nc.variables['LATIXY']
latixy_vals = latixy.getValue()
latn = surffile_new_nc.variables['LATN']
latn_vals = latn.getValue()
lats = surffile_new_nc.variables['LATS']
lats_vals = lats.getValue()
lone = surffile_new_nc.variables['LONE']
lone_vals = lone.getValue()
lonw = surffile_new_nc.variables['LONW']
lonw_vals = lonw.getValue()
area = surffile_new_nc.variables['AREA']
area_vals = area.getValue()
pct_wetland = surffile_new_nc.variables['PCT_WETLAND']
pct_wetland_vals = pct_wetland.getValue()
pct_lake = surffile_new_nc.variables['PCT_LAKE']
pct_lake_vals = pct_lake.getValue()
pct_glacier = surffile_new_nc.variables['PCT_GLACIER']
pct_glacier_vals = pct_glacier.getValue()
pct_urban = surffile_new_nc.variables['PCT_URBAN']
pct_urban_vals = pct_urban.getValue()

#input from site-specific information
soil_color = surffile_new_nc.variables['SOIL_COLOR']
soil_color_vals = soil_color.getValue()
pct_sand = surffile_new_nc.variables['PCT_SAND']
pct_sand_vals = pct_sand.getValue()
pct_clay = surffile_new_nc.variables['PCT_CLAY']
pct_clay_vals = pct_clay.getValue()
organic = surffile_new_nc.variables['ORGANIC']
organic_vals = organic.getValue()
fmax = surffile_new_nc.variables['FMAX']
fmax_vals = fmax.getValue()
pct_pft = surffile_new_nc.variables['PCT_PFT']
pct_pft_vals = pct_pft.getValue()
monthly_lai = surffile_new_nc.variables['MONTHLY_LAI']
monthly_lai_vals = monthly_lai.getValue()
monthly_sai = surffile_new_nc.variables['MONTHLY_SAI']
monthly_sai_vals = monthly_sai.getValue()
monthly_height_top = surffile_new_nc.variables['MONTHLY_HEIGHT_TOP']
monthly_height_top_vals = monthly_height_top.getValue()
monthly_height_bot = surffile_new_nc.variables['MONTHLY_HEIGHT_BOT']
monthly_height_bot_vals = monthly_height_bot.getValue()

npft = 17

#read file for site-specific PFT information
AFdatareader = csv.reader(open(options.sitegroup+'_pftdata.txt','rb'))
mypft_frac=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
for row in AFdatareader:
    #print(row[0], row[1], options.site)
    if row[0] == options.site:
        for thispft in range(0,5):
            mypft_frac[int(row[2+2*thispft])]=float(row[1+2*thispft])

#read file for site-specific soil information
if (options.soilgrid == False):
    AFdatareader = csv.reader(open(options.sitegroup+'_soildata.txt','rb'))
    for row in AFdatareader:
    	if row[0] == options.site:
	   mypct_sand = row[4]
	   mypct_clay = row[5]

for i in range(0,numxpts):
    for j in range(0,numypts):
        landfrac_pft_vals[i][j] = 1.0
        pftdata_mask_vals[i][j] = 1
        longxy_vals[i][j] = lon+i*resx
        latixy_vals[i][j] = lat+j*resy
        latn_vals[i][i] = lat+resy/2+j*resy
        lats_vals[i][j] = lat-resy/2+j*resy
        lone_vals[i][j] = lon+resx/2+i*resx
        lonw_vals[i][j] = lon-resx/2+i*resx
        area_vals[i][j] = 111.2*resy*111.321*math.cos((lon+i*resx)*math.pi/180)*resx
        pct_wetland_vals[i][j] = 0.0
        pct_lake_vals[i][j]    = 0.0
        pct_glacier_vals[i][j] = 0.0
        pct_urban_vals[i][j]   = 0.0
        soil_color_vals[i][j] = soil_color_vals[0][0]
        fmax_vals[i][j] = fmax_vals[0][0]
        for k in range(0,10):
            if (options.soilgrid == False):
                organic_vals[k][j][i] = organic_vals[k][0][0]
                pct_sand_vals[k][j][i]   = mypct_sand
                pct_clay_vals[k][j][i]   = mypct_clay
        for p in range(0,npft):
            pct_pft_vals[p][j][i] = mypft_frac[p]
            #print p, mypft_frac[p]
            for t in range(0,12):
                monthly_lai_vals[t][p][j][i] = monthly_lai[t][p][0][0]
                monthly_sai_vals[t][p][j][i] = monthly_sai[t][p][0][0]
                monthly_height_top_vals[t][p][j][i] = monthly_height_top[t][p][0][0]
                monthly_height_bot_vals[t][p][j][i] = monthly_height_bot[t][p][0][0]

landfrac_pft.assignValue(landfrac_pft_vals)
pftdata_mask.assignValue(pftdata_mask_vals)
longxy.assignValue(longxy_vals)
latixy.assignValue(latixy_vals)
latn.assignValue(latn_vals)
lats.assignValue(lats_vals)
lone.assignValue(lone_vals)
lonw.assignValue(lonw_vals)
area.assignValue(area_vals)
pct_wetland.assignValue(pct_wetland_vals)
pct_lake.assignValue(pct_lake_vals)
pct_glacier.assignValue(pct_glacier_vals)
pct_urban.assignValue(pct_urban_vals)
soil_color.assignValue(soil_color_vals)
fmax.assignValue(fmax_vals)
organic.assignValue(organic_vals)
pct_sand.assignValue(pct_sand_vals)
pct_clay.assignValue(pct_clay_vals)
pct_pft.assignValue(pct_pft_vals)
monthly_height_top.assignValue(monthly_height_top_vals)
monthly_height_bot.assignValue(monthly_height_bot_vals)
surffile_new_nc.close()

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

#create new case
os.chdir('../../../../../..')
os.system('./create_newcase --case '+casename+' --mach '+options.machine+' --compset '+options.compset \
              +' --res CLM_USRDAT --skip_rundb --max_tasks_per_node 8 --scratchroot '+os.path.abspath('../run')+' --din_loc_root '+options.ccsm_input+' > create_newcase.log')
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

#make case-specific surface data file
mysimyr=1850
if (compset == 'I2000CN'):
    mysimyr=2000
os.system('cp '+options.ccsm_input+'/lnd/clm2/surfdata/' \
          +'surfdata_1x1pt_'+options.site+'_simyr'+str(mysimyr)+'.nc ' \
          +options.ccsm_input+'/lnd/clm2/surfdata/surfdata_1x1pt_'+ \
          casename+'_simyr'+str(mysimyr)+'.nc')
os.system('chmod u+w '+options.ccsm_input+'/lnd/clm2/surfdata/surfdata_' \
          +'1x1pt_'+casename+'_simyr'+str(mysimyr)+'.nc')
if (compset == 'I20TRCN'):
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
                 "_simyr"+str(mysimyr)+".nc'\n")
if (compset == 'I20TRCN'):
    output.write(" fpftdyn = '"+options.ccsm_input+ \
                     "/lnd/clm2/surfdata/surfdata.pftdyn_1x1pt_"+ \
                     casename+".nc'\n")
output.write(" fpftcon = '"+options.ccsm_input+ \
                 "/lnd/clm2/pftdata/pft-physiology.c110425."+ \
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
            print('TEST WALLTIME')
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
    os.system("qsub "+casename+".run")

#copy call_PTCLM.py to case directory
#os.chdir('..')
#os.system("cp "+cmd+" ./"+casename+'/call_PTCLM_'+casename+'.cmd')
