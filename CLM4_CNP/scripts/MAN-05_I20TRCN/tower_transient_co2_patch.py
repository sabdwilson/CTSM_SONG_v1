#!/usr/bin/python

from optparse import OptionParser, OptionGroup
import os, csv, time

options = OptionParser()
options.add_option("--site", dest="site")
options.add_option("--sitegroup", dest="sitegroup")
options.add_option("--align_year", dest="align_year", \
                   default="1850")
options.add_option("--ccsm_input", dest="ccsm_input")
options.add_option("--co2_file", dest="co2_file")
(options, args) = options.parse_args()

site=options.site
#get start and year of input meteorology from site data file
os.system('pwd')
fname = '../PTCLM_files/PTCLM_sitedata/'+ \
        options.sitegroup+'_sitedata.txt'
AFdatareader = csv.reader(open(fname, "rb"))
for row in AFdatareader:
    if row[0] == options.site:
        startyear = int(row[6])
        endyear   = int(row[7])
    

ccsm_input=options.ccsm_input
#  transient CO2 patch (modified to work for tower data)
input  = open("./Buildconf/datm.buildnml.csh")
output = open("./Buildconf/datm.buildnmltemp.csh",'w')
os.system("cp ../../models/lnd/clm/doc/UsersGuide/co2_streams.txt ./Buildconf")
#replace /fs/cgd/csm in co2_streams file with ccsm_input
inputcs = open("./Buildconf/co2_streams.txt")
outputcs = open("./Buildconf/co2_streamstemp.txt",'w')
for s in inputcs:
    outputcs.write(s.replace("/fis/cgd/cseg/csm/inputdata",ccsm_input))
inputcs.close()
outputcs.close()
inputcs = open("./Buildconf/co2_streamstemp.txt")
outputcs = open("./Buildconf/co2_streams.txt",'w')
#replace co2 file
for s in inputcs:
    outputcs.write(s.replace("fco2_datm_1765-2007_c100614.nc",options.co2_file))
inputcs.close()
outputcs.close()


#patch datm namelist
for s in input:
    if s[0:29] == "                    'presaero":
        output.write(s[0:(len(s)-1)]+",\n")
        output.write("                    'datm.global1val.stream.CO2.txt 1766 1766 2009 '\n")
    elif s[0:10] == "   streams":
        output.write("   streams        = 'clm1PT.1x1pt_"+site+".stream.txt " \
                     +options.align_year+" "+str(startyear)+" "+ \
                     str(endyear)+"'\n")
    elif s[0:10] == "   vectors":
        output.write("   vectors        = 'null', 'null', 'null'\n")
    elif s[0:10] == '   mapmask':
        output.write("   mapmask        = 'nomask','nomask','nomask'\n")
    elif s[0:11] == '   tintalgo':
        output.write("   tintalgo       = 'linear','linear','linear'\n")
    elif s[0:10] == '$CASETOOLS':
        output.write("cp $CASEBUILD/co2_streams.txt datm.global1val.stream.CO2.txt\n")
        output.write("$CASETOOLS/listfilesin_streams -input_data_list -t presaero.stream.txt >> $CASEBUILD/datm.input_data_list\n")
        output.write("$CASETOOLS/listfilesin_streams -input_data_list -t datm.global1val.stream.CO2.txt  >> $CASEBUILD/datm.input_data_list\n")
    else:
        output.write(s)
input.close()
output.close()
os.system("mv ./Buildconf/datm.buildnmltemp.csh ./Buildconf/datm.buildnml.csh")
