#!/usr/bin/python

import os, sys, csv, glob
import Scientific.IO.NetCDF
from Scientific.IO import NetCDF
from Numeric import *


#load data
output = open('output_toplot.txt','w')
nffileobs = NetCDF.NetCDFFile("./observations/US-Ho1obs.nc")
neevar = nffileobs.variables["NEE_filled"]
neeobs = neevar.getValue()

oi=0
for y in range(1,10):
    yst=str(y+1995)
    #optimization with code change
    nffile = NetCDF.NetCDFFile("./run0001/US-Ho1_I8520CN.clm2.h0."+yst+"-01-01-00000.nc","r")
    neevar=nffile.variables["NEE"]
    nee=neevar.getValue()*1e6/12

    #optimization before code change
    nffile2 = NetCDF.NetCDFFile("./run0014_saved/US-Ho1_I8520CN.clm2.h0."+yst+"-01-01-00000.nc","r")
    neevar2=nffile2.variables["NEE"]
    nee2=neevar2.getValue()*1e6/12

    #Gautam's run
    yst='000'+str(y)
    print(yst)
    nffile3 = NetCDF.NetCDFFile("/home/gb9/PTCLM_clm4/output/US-Ho1_RUN1_NPOOLMOD_hourly/US-Ho1_RUN1_NPOOLMOD_hourly.clm2.h0."+yst+"-01-01-00000.nc","r")
    neevar3=nffile3.variables["NEE"]
    nee3=neevar3.getValue()*1e6/12
    
    for i in range(0,8760):
        output.write(str((float(neeobs[oi*2+38])+float(neeobs[oi*2+39]))/2)+" "+str(float(nee[i]))+" "+str(float(nee2[i]))+" "+str(float(nee3[i]))+"\n")
        oi=oi+1
                     
output.close()
