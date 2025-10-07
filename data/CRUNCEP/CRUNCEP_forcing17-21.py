#!/usr/bin/env python

#import sys
#sys.path.append("/home/u8/sdwilson/app/python/lib/python3.6/site-packages")
import numpy as np
import datetime
from dateutil.relativedelta import relativedelta
import xarray as xr

class Create_CRUNCEP_forcing(object):
    
    
    def __init__(self, data_path, output_path,\
                       Yr_start, nyear, nmonth, lon, lat):
        
        self.data_path   = data_path

        self.output_path = output_path
        
        self.month_d = np.array([31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31])
        
        self.edgew   = np.array([lon])
        self.edgee   = np.array([lon])
        self.edges   = np.array([lat])
        self.edgen   = np.array([lat])
        self.lat     = np.array([lat])
        self.lon     = np.array([lon])
        self.nyear     = nyear
        self.nmonth    = nmonth
        self.Yr_start  = Yr_start
        self.timearray = datetime.datetime(Yr_start, 1, 1)
        
    def read_file(self):

        '''read var'''   
        print('Time: ', self.time_str)
        
        self.file_longwave = self.data_path +\
                          'DOWNLW6HRLY/' +\
                          'dlwrf.sfc.gauss.{t}.nc'.format(t=self.time_str)
                          
        self.file_solar = self.data_path +\
                         'DOWNSW6HRLY/' +\
                         'dswrf.sfc.gauss.{t}.nc'.format(t=self.time_str)
        
        self.file_prep   = self.data_path +\
                         'PRECIP6HRLY/' +\
                         'prate.sfc.gauss.{t}.nc'.format(t=self.time_str)
        self.file_pres   = self.data_path +\
                         'PRES6HRLY/' +\
                          'pres.sfc.gauss.{t}.nc'.format(t=self.time_str)
        self.file_rh     = self.data_path +\
                         'RH6HRLY/' +\
                         'shum.2m.gauss.{t}.nc'.format(t=self.time_str)
        self.file_tp  = self.data_path +\
                          'TEMP6HRLY/' +\
                          'air.2m.gauss.{t}.nc'.format(t=self.time_str)
        self.file_windu = self.data_path +\
                            'WINDU6HRLY/' +\
                            'uwnd.{t}.nc'.format(t=self.time_str)
        self.file_windv = self.data_path +\
                            'WINDV6HRLY/' +\
                            'vwnd.{t}.nc'.format(t=self.time_str)
                            
        
        print('File: ', self.file_solar)
        print('File: ', self.file_prep)
        print('File: ', self.file_tp)
        
        ds_solar = xr.open_dataset( self.file_solar )
        ds_longwave = xr.open_dataset( self.file_longwave )
        ds_rh    = xr.open_dataset( self.file_rh )
        ds_windu = xr.open_dataset(self.file_windu )
        ds_windv = xr.open_dataset(self.file_windv )
        ds_prep  = xr.open_dataset( self.file_prep  )
        ds_tp    = xr.open_dataset( self.file_tp    )
        ds_pres  = xr.open_dataset( self.file_pres )
        
        if ( ( self.timearray.year==self.Yr_start ) &\
             ( self.timearray.month==1 ) ): 
            
            lat = ds_solar['lat']; lon = ds_solar['lon']
            self.lat_i = np.where( lat.values == self.lat[0] )[0]
            self.lon_j = np.where( lon.values == self.lon[0] )[0]
        
        self.FSDS     = np.reshape( ds_solar['dswrf']   .values[:,self.lat_i,self.lon_j],\
                               (-1,1,1), order='F' )
        self.PRECTmms = np.reshape( ds_prep['prate'].values[:,self.lat_i,self.lon_j],\
                               (-1,1,1), order='F' )        
        self.FLDS     = np.reshape( ds_longwave['dlwrf']      .values[:,self.lat_i,self.lon_j],\
                               (-1,1,1), order='F' )        
        self.TBOT     = np.reshape( ds_tp['air']      .values[:,self.lat_i,self.lon_j],\
                               (-1,1,1), order='F' )
        self.UWIND     = np.reshape( ds_windu['uwnd']      .values[:,1,self.lat_i,self.lon_j],\
                                 (-1,1,1), order='F' )
        self.VWIND     = np.reshape( ds_windv['vwnd']      .values[:,1,self.lat_i,self.lon_j],\
                                     (-1,1,1), order='F' )
        self.PSRF     = np.reshape( ds_pres['pres']      .values[:,self.lat_i,self.lon_j],\
                                    (-1,1,1), order='F' )
        self.RH     = np.reshape( ds_rh['shum']      .values[:,self.lat_i,self.lon_j],\
                               (-1,1,1), order='F' )
        
        L  = 2.5 * 10**6; Rv = 461
        
        es =  6.11 * np.exp(L/Rv * (1/273 - 1/self.TBOT))
        print(self.TBOT.shape)
        self.ZBOT     = np.empty( (self.time_len,1,1) ); self.ZBOT[:] = 2
        self.WIND = np.sqrt(self.UWIND**2 + self.VWIND**2)
        return
    
    def out_put(self,ZBOT,time_len,TBOT,RH,WIND,FSDS,FLDS,PRECTmms,PSRF):
        
        print( 'Output time: ', self.timearray.strftime('%Y-%m-%d %H:%M:%S') )
        time_s = np.arange(3, (time_len)*6, 6) / 24        
        print(time_s.shape,TBOT.shape,RH.shape,WIND.shape,FSDS.shape,FLDS.shape)       
        time_array = xr.DataArray(time_s,
                                  coords={
                                      "time": time_s,
                                    }, 
                                  dims=["time"],
                                  attrs={
                                      "long_name": "Time axis",
                                      "units": "days since {time}"\
                                               .format(time = self.timearray.strftime('%Y-%m-%d %H:%M:%S')),
                                      "calendar": "noleap",
                                    }
                                  )        
        lon       = xr.DataArray(self.lon,
                                 dims=["lon"],
                                 attrs={
                                     "long_name":  "longitude",
                                     "units":      "degrees E"
                                     }
                                 )
    
        lai        = xr.DataArray(self.lat,
                                  dims=["lat"],
                                  attrs={
                                     "long_name":  "laititude",
                                     "units":      "degrees N"
                                     }
                                 )
        
        zbot        = xr.DataArray(ZBOT,
                                   coords={
                                      "time": time_s,
                                    },
                                   dims=["time","lat","lon"],
                                   attrs={
                                     "long_name":  "observational height",
                                     "units":      "m"
                                     }
                                 )
        
        edgew       = xr.DataArray(self.edgew,
                                   dims=["scalar"],
                                   attrs={
                                     "long_name":  "western edge in atmospheric data",
                                     "units":      "degrees E"
                                     }
                                 )
        edgee       = xr.DataArray(self.edgee,
                                   dims=["scalar"],
                                   attrs={
                                     "long_name":  "eastern edge in atmospheric data",
                                     "units":      "degrees E"
                                     }
                                 )
        edges       = xr.DataArray(self.edges,
                                   dims=["scalar"],
                                   attrs={
                                     "long_name":  "southern edge in atmospheric data",
                                     "units":      "degrees N"
                                     }
                                 )   
        edgen       = xr.DataArray(self.edgen,
                                   dims=["scalar"],
                                   attrs={
                                     "long_name":  "northern edge in atmospheric data",
                                     "units":      "degrees N"
                                     }
                                 )
        
        tbot        = xr.DataArray(TBOT,
                                   coords={
                                      "time": time_s,
                                    },
                                   dims=["time","lat","lon"],
                                   attrs={
                                     "long_name":  "temperature at the lowest atm level (TBOT)",
                                     "units":      "K"
                                     }
                             )
        rh         = xr.DataArray(RH,
                                   coords={
                                      "time": time_s,
                                    },
                                   dims=["time","lat","lon"],
                                   attrs={
                                     "long_name":  "relative humidity at the lowest atm level (RH)",
                                     "units":      "%"
                                     }
                                 )
        wind        = xr.DataArray(WIND,
                                   coords={
                                      "time": time_s,
                                    },
                                   dims=["time","lat","lon"],
                                   attrs={
                                     "long_name":  "wind at the lowest atm level (WIND)",
                                     "units":      "m/s"
                                     }
                                 )
        fsds        = xr.DataArray(FSDS,
                                    coords={
                                      "time": time_s,
                                    },
                                    dims=["time","lat","lon"],
                                    attrs={
                                      "long_name":  "incident solar (FSDS)",
                                      "units":      "W/m2"
                                      }
                                  )
        flds        = xr.DataArray(FLDS,
                                    coords={
                                      "time": time_s,
                                    },
                                    dims=["time","lat","lon"],
                                    attrs={
                                      "long_name":  "incident longwave (FLDS)",
                                      "units":      "W/m2"
                                      }
                                  )
        psrf        = xr.DataArray(PSRF,
                                   coords={
                                      "time": time_s,
                                    },
                                   dims=["time","lat","lon"],
                                   attrs={
                                     "long_name":  "pressure at the lowest atm level (PSRF)",
                                     "units":      "Pa"
                                     }
                                 )    
        prect       = xr.DataArray(PRECTmms,
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
                                #coords={
                                #        "LATIXY": lat,
                                #        "LONGXY": lon,
                                #        "time": time_s,    
                                #      },
                                attrs={
                                        'site_location': \
                                        'Latitude:   31.75   Longitude:   289.75'+\
                                        ' Elevation (m):   1531.'
                                      }
                            )
        
        encode = {'time': {'_FillValue': None}, 'LONGXY': {'_FillValue': None},
                  'LATIXY': {'_FillValue': None}, 'ZBOT': {'_FillValue': None},
                  'EDGEW': {'_FillValue': None}, 'EDGEE': {'_FillValue': None},
                  'EDGES': {'_FillValue': None}, 'EDGEN': {'_FillValue': None},
                  'TBOT': {'_FillValue': None}, 'RH': {'_FillValue': None},
                  'WIND': {'_FillValue': None}, 'PSRF': {'_FillValue': None},
                  'FSDS': {'_FillValue': None}, 'FLDS': {'_FillValue': None},
                  'PRECTmms': {'_FillValue': None}}
    
        ds_test.to_netcdf( self.output_path+"/{strs}.nc".\
                           format(strs = self.timearray.strftime('%Y-%m') )
                           ,encoding=encode )
        
        
        return
    
    def main(self):
        
        for i in range(self.nyear):
            
            self.time_len = 365* 4
            
            self.time_str = self.timearray.strftime('%Y')
            
            self.read_file()
            
            
            for n in range(self.nmonth):
                
                index_start = 4 * np.sum(self.month_d[:n])
                index_end   = 4 * np.sum(self.month_d[:n+1])
                
                self.out_put(ZBOT=self.ZBOT[index_start:index_end],time_len=self.month_d[n]*4,
                             TBOT=self.TBOT[index_start:index_end],RH=self.RH[index_start:index_end],
                             WIND=self.WIND[index_start:index_end],FLDS=self.FLDS[index_start:index_end],
                             FSDS=self.FSDS[index_start:index_end],PSRF=self.PSRF[index_start:index_end],
			     PRECTmms=self.PRECTmms[index_start:index_end])
                self.timearray = self.timearray + relativedelta( months = 1 )
        
        
        
    
    
if __name__ == '__main__':
    
    CRUNCEP_forcing = Create_CRUNCEP_forcing( data_path='/xdisk/chopinsong/chopinsong/CTSM_inputdata/climforcing/CRUNCEP17-21/',\
                                              output_path='/home/u8/sdwilson/data/PAS-CA/1x1pt_PAS-CA/CLM1PT_data/',\
					      Yr_start=2017, nmonth=12, nyear=1,\
                                              lon=301.875, lat=48.5705 )
    
    CRUNCEP_forcing.main()
    
    # file_p = '../Precip6Hrly/clmforc.cruncep.V7.c2016.0.5d.Prec.2015-01.nc'  
    # file_s = '../Solar6Hrly/clmforc.cruncep.V7.c2016.0.5d.Solr.2015-01.nc'
    # file_t = '../TPHWL6Hrly/clmforc.cruncep.V7.c2016.0.5d.TPQWL.2015-01.nc'
    
    # ds_p = xr.open_dataset( file_p )
    # ds_s = xr.open_dataset( file_s )
    # ds_t = xr.open_dataset( file_t )

    
    
    
    
