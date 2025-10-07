#!/usr/bin/env python3

# -*- coding: utf-8 -*-
"""
Created on Wed Apr  7 20:47:01 2021

@author: 13466
"""
import numpy as np
import datetime
from dateutil.relativedelta import relativedelta
import xarray as xr

def creat_forcing_data(Yr, Mth, md, lon, lai, zbot, edgew, edgee,\
                       edges, edgen, tbot, rh, wind, fsds, flds,\
                       psrf, prect):
    
    '''generate time seris'''
    
    '''new method'''
    timestr = datetime.datetime(Yr, Mth, 1).strftime('%Y-%m-%d %H:%M:%S')
    time_s = np.arange(0, md[ Mth-1 ] * 24, 1)/24
    print(md[Mth-1]) 
    '''create variables'''
    
    time_array = xr.DataArray(time_s,
                              coords={
                                  "time": time_s,
                                }, 
                              dims=["time"],
                              attrs={
                                  "long_name": "Time axis",
                                  "units": "days since {time}"\
                                           .format(time = timestr),
                                  "calendar": "noleap",
                                }
                              )
    
    lon       = xr.DataArray(lon,
                             dims=["lat","lon"],
                             attrs={
                                 "long_name":  "longitude",
                                 "units":      "degrees E"
                                 }
                             )
    
    lai        = xr.DataArray(lai,
                              dims=["lat","lon"],
                              attrs={
                                 "long_name":  "laititude",
                                 "units":      "degrees N"
                                 }
                             )
    
    zbot        = xr.DataArray(zbot,
                               coords={
                                  "time": time_s,
                                },
                               dims=["time","lat","lon"],
                               attrs={
                                 "long_name":  "observational height",
                                 "units":      "m"
                                 }
                             )
    
    edgew       = xr.DataArray(edgew,
                               dims=["scalar"],
                               attrs={
                                 "long_name":  "western edge in atmospheric data",
                                 "units":      "degrees E"
                                 }
                             )
    edgee       = xr.DataArray(edgee,
                               dims=["scalar"],
                               attrs={
                                 "long_name":  "eastern edge in atmospheric data",
                                 "units":      "degrees E"
                                 }
                             )
    edges       = xr.DataArray(edges,
                               dims=["scalar"],
                               attrs={
                                 "long_name":  "southern edge in atmospheric data",
                                 "units":      "degrees N"
                                 }
                             )   
    edgen       = xr.DataArray(edgen,
                               dims=["scalar"],
                               attrs={
                                 "long_name":  "northern edge in atmospheric data",
                                 "units":      "degrees N"
                                 }
                             )
    tbot        = xr.DataArray(tbot,
                               coords={
                                  "time": time_s,
                                },
                               dims=["time","lat","lon"],
                               attrs={
                                 "long_name":  "temperature at the lowest atm level (TBOT)",
                                 "units":      "K"
                                 }
                             )
    rh         = xr.DataArray(rh,
                               coords={
                                  "time": time_s,
                                },
                               dims=["time","lat","lon"],
                               attrs={
                                 "long_name":  "relative humidity at the lowest atm level (RH)",
                                 "units":      "%"
                                 }
                             )
    wind        = xr.DataArray(wind,
                               coords={
                                  "time": time_s,
                                },
                               dims=["time","lat","lon"],
                               attrs={
                                 "long_name":  "wind at the lowest atm level (WIND)",
                                 "units":      "m/s"
                                 }
                             )
    fsds        = xr.DataArray(fsds,
                                coords={
                                  "time": time_s,
                                },
                                dims=["time","lat","lon"],
                                attrs={
                                  "long_name":  "incident solar (FSDS)",
                                  "units":      "W/m2"
                                  }
                              )
    flds        = xr.DataArray(flds,
                                coords={
                                  "time": time_s,
                                },
                                dims=["time","lat","lon"],
                                attrs={
                                  "long_name":  "incident longwave (FLDS)",
                                  "units":      "W/m2"
                                  }
                              )
    psrf        = xr.DataArray(psrf,
                               coords={
                                  "time": time_s,
                                },
                               dims=["time","lat","lon"],
                               attrs={
                                 "long_name":  "pressure at the lowest atm level (PSRF)",
                                 "units":      "Pa"
                                 }
                             )    
    prect       = xr.DataArray(prect,
                               coords={
                                  "time": time_s,
                                },
                               dims=["time","lat","lon"],
                               attrs={
                                 "long_name":  "precipitation (PRECTmms)",
                                 "units":      "mm/s"
                                 }
                             )
    
    '''create dataset'''
    ds_test = xr.Dataset(
            {
                "time":   time_array,
                "LONGXY": lon,
                "LATIXY": lai,
                "ZBOT":   zbot,
                "EDGEW":  edgew,
                "EDGEE":  edgee,
                "EDGES":  edges,
                "EDGEN":  edgen,
                "TBOT":   tbot,
                "RH":     rh,
                "WIND":   wind,
                "FSDS":   fsds,
                "FLDS":   flds,
                "PSRF":   psrf,
                "PRECTmms": prect
             },
            # coords={
            #        "lat": lat,
            #        "lon": lon,
            #        "scaler": scaler,
            #      "time": time_s,
    
            #      },
            attrs={'institution': 'Oak Ridge National Laboratory',
                    'history': \
                    'File Origin - This file was created at'+\
                    ' Oak Ridge National Laboratory for the'+\
                    ' site-level MDC in 2010',
                    'site_location': \
                    'Latitude:   31.7365   Longitude:   289.94190'+\
                    ' Elevation (m):   1531.'}
        )
    
           
    return ds_test

def read_NLDAS(file, latv, lonv):
    #PRES = Surface pressure (Pa)
    #DSWRF = Shortwave radiation flux downwards (surface) (W/m^2)
    #DLWRF = Longwave radiation flux downwards (surface) (W/m^2)
    #SPFH = 2-m above ground Specific humidity (kg/kg)
    #TMP = 2-m above ground Temperature (K)
    #UGRD = 10-m above ground Zonal wind speed (m/s)
    #VGRD = 10-m above ground Meridional wind speed (m/s)
    #APCP = Precipitation hourly total (kg/m^2)
    
    ds  = xr.open_dataset( file  )
    lat = ds['lat']; lon = ds['lon']
    lat_i = np.where( lat.values == latv )[0]
    lon_j = np.where( lon.values == lonv )[0]
    psrf  = ds['PSurf'].values[0, lat_i[0], lon_j[0]]    #pa
    tbot  = ds['Tair'].values[ 0, lat_i[0], lon_j[0]]  #degree
    fsds  = ds['SWdown'].values[0, lat_i[0], lon_j[0]]
    flds  = ds['LWdown'].values[0, lat_i[0], lon_j[0]]
    prect = ds['Rainf'].values[0, lat_i[0], lon_j[0]] / 3600
    U     = ds['Wind_E'].values[0, lat_i[0], lon_j[0]]
    V     = ds['Wind_N'].values[0, lat_i[0], lon_j[0]]
    wind  = np.sqrt(U**2 + V**2)
    
    q     = ds['Qair'].values[0, lat_i[0], lon_j[0]]
    L = 2.5 * 10**6; Rv = 461
    e  = ( psrf/100 * q ) / 0.622
    es =  6.11 * np.exp(L/Rv * (1/273 - 1/tbot))
    rh = e / es * 100
    
    return psrf, tbot, wind, fsds, flds, prect, rh



month_d = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
lon = np.array([[247.5625]]);   lai = np.array([[40.1875]])
lat_wkg = 40.1875; lon_wkg = -112.4375
edgew = np.array([247.5625]); edgee = np.array([247.56255])
edges = np.array([40.1875]);   edgen = np.array([40.1875])

'''Read variables'''
start_yr = 2014; end_year = 2024
timearray = datetime.datetime(start_yr, 2, 1)
start_date = datetime.datetime(1979, 2, 1) #file start date to get skip row
nmonth = ( end_year - start_yr ) * 12 - 1 # no 1979-01-01 data

for i in range(1, nmonth+1, 1):
    nrow    = month_d[ timearray.month -1 ] * 24
    psrf = np.zeros([nrow,1,1])
    tbot = np.zeros([nrow,1,1])
    wind = np.zeros([nrow,1,1])
    fsds = np.zeros([nrow,1,1])
    flds = np.zeros([nrow,1,1])
    prect= np.zeros([nrow,1,1])
    rh   = np.zeros([nrow,1,1])
    
    td = timearray 
    for i in range(0, nrow, 1):
        date_str = td.strftime('%Y%m%d.%H')
        filename = 'NLDAS_FORA0125_H.A'+\
                   date_str +'00.020.nc'
        print(filename) 
        filepath = '/xdisk/chopinsong/chopinsong/'+ \
                   'CTSM_inputdata/climforcing/NLDAS/NLDAS_forcing/'
        psrf_N, tbot_N, wind_N, fsds_N, flds_N, prect_N, rh_N =\
                        read_NLDAS(filepath + filename, lat_wkg, lon_wkg)
        psrf[i] = psrf_N
        tbot[i] = tbot_N
        wind[i] = wind_N
        fsds[i] = fsds_N
        flds[i] = flds_N
        prect[i]= prect_N
        rh[i]   = rh_N
        td = td + relativedelta( hours = 1 )
        
    zbot = np.empty( (nrow,1,1) ); zbot[:] = 2
    
    ds_test = creat_forcing_data( timearray.year,\
                                  timearray.month,\
                                  month_d, \
                                  lon, lai, zbot, edgew, edgee,\
                                  edges, edgen, tbot, rh, wind, \
                                  fsds, flds, psrf, prect)

    encode = {'time': {'_FillValue': None}, 'LONGXY': {'_FillValue': None},
              'LATIXY': {'_FillValue': None}, 'ZBOT': {'_FillValue': None},
              'EDGEW': {'_FillValue': None}, 'EDGEE': {'_FillValue': None},
              'EDGES': {'_FillValue': None}, 'EDGEN': {'_FillValue': None},
              'TBOT': {'_FillValue': None}, 'RH': {'_FillValue': None},
              'WIND': {'_FillValue': None}, 'PSRF': {'_FillValue': None},
              'FSDS': {'_FillValue': None}, 'FLDS': {'_FillValue': None},
              'PRECTmms': {'_FillValue': None}}
    
    ds_test.to_netcdf("/home/u8/sdwilson/data/Omics_bgc"+\
                      "/ONAQ/1x1pt_ONAQ/CLM1PT_data/{strs}.nc".\
                      format(strs = timearray.strftime('%Y-%m') )
                      ,encoding=encode)
    timearray = timearray + relativedelta( months = 1 )
        
    
