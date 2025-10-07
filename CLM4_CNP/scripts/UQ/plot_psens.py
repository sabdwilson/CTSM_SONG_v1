#!/usr/bin/python

import os, sys, csv, glob
import Scientific.IO.NetCDF
from Scientific.IO import NetCDF
from Numeric import *
from optparse import OptionParser
import pp

def getavpd(startyear, vars):
    avpd = 96                # number of months to average
    np   = 77                # number of parameters
    case      = 'NEWPARMS_CONLY_US-UMB_I1850CN'
    
    var_units=[]
    var_long_names=[]
    
    nv = len(vars)
    sum_psens = Numeric.zeros([nv,np],Numeric.Float)
    sum_con   = Numeric.zeros([nv],Numeric.Float)
    output_temp    = Numeric.zeros([nv,np],Numeric.Float)

    for y in range(startyear,startyear+avpd/12):
        for m in range(1,13):
            mst=str(100+m)
            yst=str(10000+y)
            fname_con     = './'+case+'/control/'+case+ \
                            '.clm2.h0.'+ yst[1:5]+'-'+mst[1:3]+'.nc'
            nf_con        = Scientific.IO.NetCDF.NetCDFFile(fname_con,'r')
            for p in range(0,np):
                pst=str(1000+p+1)
                fname_psens='./'+case+'/p'+pst[1:4]+ \
                             '_001/'+case+'.clm2.h0.'+ \
                             yst[1:5]+'-'+mst[1:3]+'.nc'
                nf_psens    = Scientific.IO.NetCDF.NetCDFFile(fname_psens,'r')
                for v in range(0,nv):
                    myvar_con = nf_con.variables[vars[v]]          
                    myvar     = nf_psens.variables[vars[v]]
                    #get variable names and units
                    #if (y == startyear and m == 1 and p == 0):
                    #    var_long_names.append(myvar.long_name)
                    #    var_units.append(myvar.units)
                    #get control data
                    if (p == 0):
                        sum_con[v] = sum_con[v] + float(myvar_con.getValue()[0][0][0])
                    #get parameter sensitivity data
                    sum_psens[v,p] = sum_psens[v,p] + float(myvar.getValue()[0][0][0])
                nf_psens.close()
            nf_con.close()
            
    for v in range(0,nv):
        for p in range(0,np):
            #output as percentage difference from control
            if (sum_con[v] > 0):
                output_temp[v,p]=sum_psens[v,p]/sum_con[v]*100-100.0
    return output_temp

#--------------------------------- main program -------------------------------

nyr         =  200
startyear   = 1004
avpd        = 96
vars        = ['GPP', 'TLAI', 'TOTSOMC', 'EFLX_LH_TOT', 'FSH']
nv = len(vars)
np = 77
output = zeros([nv,np,200000],Float)

#get parameter names from parms_def.txt
input = open("./parms_def.txt")
pnames=[]
for s in input:
    if (s.split()[3] == "1"):
        pnames.append(s.split()[4])

#initialize parallel python
ppservers=()
job_server = pp.Server(ppservers=ppservers)
print("Starting pp with",job_server.get_ncpus(),"workers")

nperiods=56
ncycles=nperiods/8

for i in range(0,ncycles):
    jobs=[]
    print i
    for j in range(0,8):
        print 1004+i*8*avpd/12+j*avpd/12
        jobs.append(job_server.submit(getavpd,(1004+i*8*avpd/12+j*avpd/12,vars,),(), \
                                      ("Numeric","Scientific.IO.NetCDF",)))
    ji=i*8
    for job in jobs:
        result = job()
        for p in range(0,np):
            for v in range(0,nv):
                output[v][p][ji] = result[v][p]
        ji=ji+1
        

#Energy fluxes
#vars       = ['QDRAI', 'QOVER', 'QRUNOFF', 'QSOIL', 'QVEGE', 'QVEGT', \
#              'EFLX_LH_TOT', 'FSH']


print(pnames)
thisoutind=nperiods
#output=open('psens_out.txt','w')


#---------- make plots (variables by parameter) -----------------------------
out_plot = open('plotmyvar.p','w')
out_plot.write('set terminal postscript enhanced color\n')
out_plot.write('set output "psens.ps"\n')

for v in range(0,nv):
    #write output variables to be used for plots
    outf = open('psens_'+vars[v]+'.txt','w')
    for i in range(0,thisoutind):
        dst=str(1+(i+0.5)*avpd/12)+' '
        for p in range(0,np):
            dst=dst+str(output[v,p,i])+' '
        outf.write(dst+'\n')
    outf.close()

    #create plotting script
    cmd ='plot "psens_'+vars[v]+'.txt" using 1:2 with lines title "' \
          +pnames[0]+'" linewidth 3, '
    for p in range(1,np):
        cmd = cmd+'"psens_'+vars[v]+'.txt" using 1:'+ \
                   str(p+2)+' with lines linewidth 3 title "xxx", ' #+pnames[p]+'", '
    out_plot.write('set xlabel "model year"\n')
    out_plot.write('set ylabel "'+vars[v]+' difference from control (%)"\n')
    #out_plot.write('set title "'+var_long_names[v]+'"\n')
    out_plot.write('set key right outside\n')
    out_plot.write(cmd[:-2]+'\n')

out_plot.close()
os.system('gnuplot plotmyvar.p')
         
            

#---------------- make plots (parameters by variable) -------------------------
out_plot = open('plotmyvar.p','w')
out_plot.write('set terminal postscript enhanced color\n')
out_plot.write('set output "psens_pbyv.ps"\n')

for p in range(0,np):
    #write output variables to be used for plots (variables by parameter)
    outf = open('psens_'+pnames[p]+'.txt','w')
    for i in range(0,thisoutind):
        dst=str(1+(i+0.5)*avpd)+' '
        for v in range(0,nv):
            dst=dst+str(output[v,p,i])+' '
        outf.write(dst+'\n')
    outf.close()

    #create plotting script
    cmd ='plot "psens_'+pnames[p]+'.txt" using 1:2 with lines title "' \
          +vars[0]+'" linewidth 3, '
    for v in range(1,nv):
        cmd = cmd+'"psens_'+pnames[p]+'.txt" using 1:'+ \
                   str(v+2)+' with lines linewidth 3 title "'+vars[v]+'", '
    out_plot.write('set xlabel "model year"\n')
    out_plot.write('set ylabel "difference from control (%)"\n')
    out_plot.write('set title "'+pnames[p]+'"\n')
    out_plot.write('set key right outside\n')
    out_plot.write(cmd[:-2]+'\n')

out_plot.close()
os.system('gnuplot plotmyvar.p')
         
