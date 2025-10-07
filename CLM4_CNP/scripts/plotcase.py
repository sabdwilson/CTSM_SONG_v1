#!/usr/bin/python

import os, sys, csv, glob
import Scientific.IO.NetCDF
from Scientific.IO import NetCDF
import numpy
from optparse import OptionParser

parser = OptionParser()
parser.add_option("--csmdir", dest="mycsmdir", default='..', \
                  help = 'Base CESM directory (default = ..)')
parser.add_option("--case", dest="mycase", default='', \
                  help = "name of case to plot")
parser.add_option("--case2", dest="mycase2", default='', \
                  help = "name of second case to plot")
parser.add_option("--case3", dest="mycase3", default='', \
                  help = "name of third case to plot")
parser.add_option("--case4", dest="mycase4", default='', \
                  help = "name of second case to plot")
parser.add_option("--case5", dest="mycase5", default='', \
                  help = "name of third case to plot")
parser.add_option("--title", dest="mytitle", default='', \
                  help = "title of case to plot (for legend)")
parser.add_option("--title2", dest="mytitle2", default='', \
                  help = "title of second case to plot (for legend)")
parser.add_option("--title3", dest="mytitle3", default='', \
                  help = "title of third case to plot (for legend)")
parser.add_option("--title4", dest="mytitle4", default='', \
                  help = "title of second case to plot (for legend)")
parser.add_option("--title5", dest="mytitle5", default='', \
                  help = "title of third case to plot (for legend)")
parser.add_option("--obs", action="store_true", default=False, \
                  help = "plot observations", dest="myobs")
parser.add_option("--varfile", dest="myvarfile", default='varfile', \
                  help = 'file containing list of variables to plot')
parser.add_option("--var", dest="myvar", default='', \
                  help="variable to plot (overrides varfile, " \
                  +"sends plot to screen")
parser.add_option("--avpd", dest="myavpd", default=1, \
                  help = 'averaging period in # of output timesteps' \
                  +' (default = 1)')
parser.add_option("--hist_mfilt", dest="myhist_mfilt", default=-999, \
                  help = 'beginning model year to plot')
parser.add_option("--hist_nhtfrq", dest="myhist_nhtfrq", default=-999, \
                  help = 'beginning model year to plot')
parser.add_option("--ystart", dest="myystart", default=1, \
                  help = 'beginning model year to plot')
parser.add_option("--yend", dest="myyend", default=1, \
                  help = 'final model year to plot')
parser.add_option("--diurnal", dest="mydiurnal", default=False, \
                  action="store_true", help = 'plot diurnal cycle')
parser.add_option("--seasonal", dest="myseasonal", default=False, \
                  action="store_true", help = 'plot seasonal cycle')
(options,args) = parser.parse_args()
                  

cesmdir=os.path.abspath(options.mycsmdir)                 
if (options.mycase == ''): # or os.path.exists(options.mycase) == False):
    print('Error: invalid CESM root directory')
    sys.exit()
else:
    mycase1 = options.mycase
    if (options.mytitle == ''):
        mytitle1=mycase1
    else:
        mytitle1=options.mytitle

mycase2 = options.mycase2
if (options.mytitle2 == ''):
    mytitle2=mycase2
else:
    mytitle2=options.mytitle2
mycase3 = options.mycase3
if (options.mytitle3 == ''):
    mytitle3=mycase3
else:
    mytitle3=options.mytitle3
mycase4 = options.mycase4
if (options.mytitle4 == ''):
    mytitle4=mycase4
else:
    mytitle4=options.mytitle4
mycase5 = options.mycase5
if (options.mytitle5 == ''):
    mytitle5=mycase5
else:
    mytitle5=options.mytitle5

obs     = options.myobs

#get list of variables from varfile
myvars=[]

if (options.myvar == ''):
    if os.path.isfile('./PTCLM_files/'+options.myvarfile):
        input = open('./PTCLM_files/'+options.myvarfile)
        for s in input:
            myvars.append(s.strip())
    else:
        print('Error:  invalid varfile')
        sys.exit()
    terminal = 'postscript'
else:
    terminal=''
    myvars.append(options.myvar)
    

avpd      = int(options.myavpd)        # desired averaging period in output timestep
ystart    = int(options.myystart)      # beginning year to plot/average
yend      = int(options.myyend)        # final year to plot/average 

avtype = 'default'
if (options.mydiurnal):
    avtype = 'diurnal'
    avpd=1
if (options.myseasonal):
    avtype = 'seasonal'

#------------------------------------------------------------------------------

#get # of cases to plot
ncases=1
if mycase2 != '':
    ncases=2
    if mycase3 !='':
        ncases=3
        if mycase4 != '':
            ncases=4
            if mycase5 != '':
                ncases=5
if (obs):
    ncases=ncases+1


for c in range(0,ncases):
    if (c == 0):
        mycase = mycase1
        dir1=cesmdir+'/run/'+mycase1+'/run/'
        #dir1='/home/zdr/models/PTCLM_new/testclm4_ornl/clm4_ornl/scripts/optimization/run0033'
        os.chdir(dir1)
    if (c == 1):
        mycase = mycase2
        dir2=cesmdir+'/run/'+mycase2+'/run/'
        os.chdir(dir2)
    if (c == 2 and obs == False):
        mycase = mycase3
        dir3=cesmdir+'/run/'+mycase3+'/run/'
        os.chdir(dir3)
    if (c == 3 and obs == False):
        mycase = mycase4
        dir4=cesmdir+'/run/'+mycase4+'/run/'
        os.chdir(dir4)
    if (c == 4 and obs == False):
        mycase = mycase5
        dir5=cesmdir+'/run/'+mycase5+'/run/'
        os.chdir(dir5)
    if (obs and c == ncases-1):   #observations
        diro=dir1
        os.chdir(dir1)
    
    #query lnd_in file for output file information
    os.system('pwd')
    if (options.myhist_mfilt == -999 or options.myhist_nhtfrq == -999):
        print('Obtaining output resolution information from lnd_in')
        input = open("lnd_in")
        npf=-999
        tstep=-999
        for s in input:
            if (s[0:13].strip() == 'hist_mfilt'):
                s1,s2,val=s.split()
                npf=int(val)
                print(val)
            if (s[0:13].strip() == 'hist_nhtfrq'):
                s1,s2,val=s.split()
                print(val)
                tstep=int(val)
        input.close()
    else:
        npf   = int(options.myhist_mfilt)
        tstep = int(options.myhist_nhtfrq)
    
    if (npf == -999 or tstep == -999):
        print('Unable to obtain output file information from lnd_in.  Exiting')
        sys.exit()

    yststr=str(100000+ystart)
    #determine type of file to plot
    if (tstep == 0):
        ftype = 'default'
        testfile = mycase+'.clm2.h0.'+yststr[2:6]+'-01.nc'
    else:
        ftype = 'custom'
        nhtot=-1*tstep*npf
        if (nhtot != 8760):
            print('Only annual or default (monthly) files are supported')
            sys.exit()
        testfile = mycase+'.clm2.h0.'+yststr[2:6]+'-01-01-00000.nc'
    if (obs and c == ncases-1):
        ftype='obs'
        testfile = 'US-UMBobs.nc'

    #check for output files (if not here, change to archive directory)
    print(testfile)
    os.system('pwd')
    if (os.path.isfile(testfile) == False):
        print('Output not in run directory.  Switching to archive directory')
        archdir=cesmdir+'/run/archive/'+mycase+'/lnd/hist'
        if (os.path.exists(archdir) == False):
            print('Archive directory does not exist.  Exiting')
            sys.exit()
        else:
            os.chdir(archdir)
            if (c == 0):
                dir1=archdir
            if (c == 1):
                dir2=archdir
            if (c == 2):
                dir3=archdir
            if (ftype == 'obs'):
                diro=archdir
            if (os.path.isfile(testfile) == False):
                print('Output not found.  Exiting')
                sys.exit()
                

    #initialize data arrays
    nvar=len(myvars)
    mydata=numpy.zeros([nvar,2000000], numpy.float)
    x=numpy.zeros([2000000], numpy.float)
    nsteps=0
    var_units=[]
    var_long_names=[]

    #read monthly .nc files (default output)
    if (ftype == 'default'):
        for y in range(ystart,yend):
            yst=str(10000+y)[1:5]
            for m in range(0,12):
                mst=str(101+m)[1:3]
                nffile = NetCDF.NetCDFFile('./'+mycase+".clm2.h0."+yst+"-"+ \
                                           mst+".nc","a")
                nstepslast=nsteps
                for v in range(0,nvar):
                    nsteps=nstepslast
                    varout=nffile.variables[myvars[v]]
                    if (len(var_long_names) < nvar):
                        var_long_names.append(varout.long_name)
                        var_units.append(varout.units)
                    x[nsteps] = y+m/12.0
                    mydata[v,nsteps] = float(varout.getValue()[0,0])
#                    if (myvars[v] == 'NEE' or myvars[v] == 'GPP'):
#                        mydata[v,nsteps]=mydata[v,nsteps]*1e6/12.0
                    nsteps=nsteps+1
                nffile.close()            

    #read annual .nc files
    if (ftype == 'custom'):
        for y in range(ystart,yend+1):
            yst=str(10000+y)[1:5]
            nffile =  NetCDF.NetCDFFile('./'+mycase+".clm2.h0."+yst+\
                                        "-01-01-00000.nc","r")
            nstepslast=nsteps
            for v in range(0,nvar):
                print(y, myvars[v])
                nsteps=nstepslast
                varout=nffile.variables[myvars[v]]
                if (len(var_long_names) < nvar):
                    var_long_names.append(varout.long_name)
                    var_units.append(varout.units)
                indata = varout.getValue()[0:npf,0]
                print y, yst, indata
                if (myvars[v] == 'SOILPSI'):
                    indata = varout.getValue()[0:npf,3,0]
                for i in range(0,npf):
                    x[nsteps] = y+(i*1.0)/npf
                    mydata[v,nsteps] = float(indata[i])
                    nsteps=nsteps+1
            nffile.close()
    #print mydata[0,1:nsteps]


    #read obervation file, assumes it is in case directory (years must match!)
    #will work for NEE only!
    if (ftype == 'obs'):
        npd=24                 #number of time steps per day
        lst=-5                 #local standard time (diff from UTC)
        npf=(yend-ystart+1)*365*npd
        nffile = NetCDF.NetCDFFile('./US-UMBobs.nc',"r")
        nsteps=-(lst-1)
        nstepslast=nsteps
        for v in range(0,nvar):
            if (myvars[v] == 'NEE'):
                nsteps=nstepslast
                varout=nffile.variables[myvars[v]+'_filled']
                print(npf)
                indata = varout.getValue()[0:npf]*12/1e6
                for i in range(0,npf*24/npd):
                    x[nsteps] = ystart+(i*1.0)/8760
                    if (npd == 24):
                        mydata[v,max(nsteps,0)] = float(indata[i])
                        if (npd == 48):
                            mydata[v,max(nsteps,0)] = (float(indata[i*2])+ \
                                                       float(indata[i*2+1]))/2
                    nsteps=nsteps+1
        nffile.close()
        nsteps=nsteps+lst-1
    
    #perform averaging and write output files for gnuplot
    if (avtype == 'default'):
        print(nsteps, avpd)
        for v in range(0,nvar):
            output=open(myvars[v]+'_'+str(c)+".txt","w")
            for s in range(0,int(nsteps/avpd)):        
                output.write(str(sum(x[s*avpd:(s+1)*avpd])/avpd)+ " " + \
                             str(sum(mydata[v,s*avpd:(s+1)*avpd])/avpd)+"\n")
            output.close()

    #diurnal average (for whole year, assumes hourly output)
    if (avtype == 'diurnal'):
        for v in range(0,nvar):
            output=open(myvars[v]+'_'+str(c)+".txt","w")
            for s in range(0,24):        
                output.write(str(s)+ " " + \
                             str(sum(mydata[v,s:nsteps:24])/(nsteps/24))+"\n")
            output.close()

    #seasonal average (5-day blocks, assumes hourly output)
    if (avtype == 'seasonal'):
        for v in range(0,nvar):
            output=open(myvars[v]+'_'+str(c)+".txt","w")
            np = 365/avpd
            mysum=numpy.zeros(np, numpy.float)
            nh=0
            for y in range(0,(yend-ystart+1)):
                for s in range(0,np):
                   mysum[s]=mysum[s]+sum(mydata[v,(y*8760+s*24*avpd): \
                                                (y*8760+(s+1)*24*avpd)])
                   nh=nh+avpd*24
            nh=nh/np
            print(nh)
            for s in range(0,np):
                output.write(str(s*avpd)+" "+str(mysum[s]/nh)+"\n")
            output.close()
                
                
                


#create gnuplot script
output=open('plotmyvar.p','w')
#output.write('set terminal '+terminal+' enhanced color\n')
if terminal != '':
    output.write('set terminal '+terminal+' enhanced color\n')
    output.write('set output "'+mycase1+'_plots.ps"\n')
output.write('set style line 1 lt 1 lw 3\n')
output.write('set style line 2 lt 1 lw 3 lc rgb "blue"\n')
for v in range(0,nvar):
    cmd  = 'plot "'+dir1+'/'+myvars[v]+'_0.txt" with lines linestyle 1 title "' \
           +mytitle1+'" ' 
    cmd_xlab = 'set xlabel "model year" '
    cmd_ylab = 'set ylabel "'+myvars[v]+' ('+var_units[v]+')" '
    cmd_titl = 'set title  "'+var_long_names[v]+'" '
    if (ncases >= 2):
        cmd = cmd+', "'+dir2+'/'+myvars[v]+'_1.txt" with lines linestyle 2 title "' \
              +mytitle2+'" '
    if (ncases >= 3 and obs == False):
        cmd = cmd+', "'+dir3+'/'+myvars[v]+'_2.txt" with lines title "' \
              +mytitle3+'" '
    if (ncases >= 4 and obs == False):
        cmd = cmd+', "'+dir4+'/'+myvars[v]+'_3.txt" with lines title "' \
              +mytitle4+'" '
    if (ncases >= 5 and obs == False):
        cmd = cmd+', "'+dir5+'/'+myvars[v]+'_4.txt" with lines title "' \
              +mytitle5+'" '
    if (obs and myvars[v] == 'NEE'):
        cmd = cmd+', "'+diro+'/'+myvars[v]+'_'+str(ncases-1)+'.txt" with lines '
    output.write(cmd_xlab+'\n')
    output.write(cmd_ylab+'\n')
    output.write(cmd_titl+'\n')
    #output.write('set xrange [1997:2002]\n')
    output.write(cmd+'\n')
    #output.write('set xrange [1997:2002]\n')
    output.write('replot\n')
output.close()

#execute gnuplot script
os.system('gnuplot -persist plotmyvar.p')
os.system('mkdir '+cesmdir+'/scripts/plots/'+mycase1)
if (terminal == 'postscript'):
    os.system('ps2pdf '+mycase1+'_plots.ps '+mycase1+'_plots.pdf')
    os.system('mv '+mycase1+'_plots.pdf '+cesmdir+'/scripts/plots/'+mycase1)
    os.system('mv '+mycase1+'_plots.ps '+cesmdir+'/scripts/plots/'+mycase1) 
#os.system('ps2pdf '+cesmdir+'/scripts/plots/'+mycase1+'/'+mycase1+'_plots.ps')
