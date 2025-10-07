#!/usr/bin/env python

import sys
sys.path.append("/home/u8/sdwilson/app/python/lib/python3.6/site-packages")
import numpy as np
import datetime
from dateutil.relativedelta import relativedelta
import xarray as xr

class Create_CRUNCEP_forcing(object):
    
    
    def __init__(self, data_path, filename, output_path,\
                       Yr_start, nmonth, lon, lat):
        
        self.data_path   = data_path
        self.filename    = filename
        self.output_path = output_path
        
        self.month_d = np.array([31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31])
        self.edgew   = np.array([lon])
        self.edgee   = np.array([lon])
        self.edges   = np.array([lat])
        self.edgen   = np.array([lat])
        self.lat     = np.array([lat])
        self.lon     = np.array([lon])
        
        self.nmonth    = nmonth
        self.Yr_start  = Yr_start
        self.timearray = datetime.datetime(Yr_start, 1, 1)
        
    def read_file(self):

        '''read var'''   
        print('Time: ', self.time_str)
        
        self.file_solar = self.data_path +\
                          'Solar6Hrly/' +\
                          self.filename +\
                          'Solr.{t}.nc'.format(t=self.time_str)
                          
        self.file_prep = self.data_path +\
                         'Precip6Hrly/' +\
                         self.filename +\
                         'Prec.{t}.nc'.format(t=self.time_str)
        
        self.file_tp   = self.data_path +\
                         'TPHWL6Hrly/' +\
                         self.filename +\
                         'TPQWL.{t}.nc'.format(t=self.time_str)
        
        print('File: ', self.file_solar)
        print('File: ', self.file_prep)
        print('File: ', self.file_tp)
        
        ds_solar = xr.open_dataset( self.file_solar )
        ds_prep  = xr.open_dataset( self.file_prep  )
        ds_tp    = xr.open_dataset( self.file_tp    )
        
        if ( ( self.timearray.year==self.Yr_start ) &\
             ( self.timearray.month==1 ) ): 
            
            lat = ds_solar['lat']; lon = ds_solar['lon']
            self.lat_i = np.where( lat.values == self.lat[0] )[0]
            self.lon_j = np.where( lon.values == self.lon[0] )[0]
        
        self.FSDS     = np.reshape( ds_solar['FSDS']   .values[:,self.lat_i,self.lon_j],\
                               (-1,1,1), order='F' )
        self.PRECTmms = np.reshape( ds_prep['PRECTmms'].values[:,self.lat_i,self.lon_j],\
                               (-1,1,1), order='F' )        
        self.FLDS     = np.reshape( ds_tp['FLDS']      .values[:,self.lat_i,self.lon_j],\
                               (-1,1,1), order='F' )        
        self.TBOT     = np.reshape( ds_tp['TBOT']      .values[:,self.lat_i,self.lon_j],\
                               (-1,1,1), order='F' )
        self.WIND     = np.reshape( ds_tp['WIND']      .values[:,self.lat_i,self.lon_j],\
                                    (-1,1,1), order='F' )
        self.PSRF     = np.reshape( ds_tp['PSRF']      .values[:,self.lat_i,self.lon_j],\
                                    (-1,1,1), order='F' )
        self.QBOT     = np.reshape( ds_tp['QBOT']      .values[:,self.lat_i,self.lon_j],\
                               (-1,1,1), order='F' )
        
        L  = 2.5 * 10**6; Rv = 461
        e  = ( self.PSRF/100 * self.QBOT ) / 0.622
        es =  6.11 * np.exp(L/Rv * (1/273 - 1/self.TBOT))
        self.RH = e / es * 100
        
        self.ZBOT     = np.empty( (self.time_len,1,1) ); self.ZBOT[:] = 2
    
        return
    
    def out_put(self):
        
        print( 'Output time: ', self.timearray.strftime('%Y-%m-%d %H:%M:%S') )
        time_s = np.arange(3, (self.time_len)*6, 6) / 24        
                
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
        
        zbot        = xr.DataArray(self.ZBOT,
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
        
        tbot        = xr.DataArray(self.TBOT,
                                   coords={
                                      "time": time_s,
                                    },
                                   dims=["time","lat","lon"],
                                   attrs={
                                     "long_name":  "temperature at the lowest atm level (TBOT)",
                                     "units":      "K"
                                     }
                             )
        rh         = xr.DataArray(self.RH,
                                   coords={
                                      "time": time_s,
                                    },
                                   dims=["time","lat","lon"],
                                   attrs={
                                     "long_name":  "relative humidity at the lowest atm level (RH)",
                                     "units":      "%"
                                     }
                                 )
        wind        = xr.DataArray(self.WIND,
                                   coords={
                                      "time": time_s,
                                    },
                                   dims=["time","lat","lon"],
                                   attrs={
                                     "long_name":  "wind at the lowest atm level (WIND)",
                                     "units":      "m/s"
                                     }
                                 )
        fsds        = xr.DataArray(self.FSDS,
                                    coords={
                                      "time": time_s,
                                    },
                                    dims=["time","lat","lon"],
                                    attrs={
                                      "long_name":  "incident solar (FSDS)",
                                      "units":      "W/m2"
                                      }
                                  )
        flds        = xr.DataArray(self.FLDS,
                                    coords={
                                      "time": time_s,
                                    },
                                    dims=["time","lat","lon"],
                                    attrs={
                                      "long_name":  "incident longwave (FLDS)",
                                      "units":      "W/m2"
                                      }
                                  )
        psrf        = xr.DataArray(self.PSRF,
                                   coords={
                                      "time": time_s,
                                    },
                                   dims=["time","lat","lon"],
                                   attrs={
                                     "long_name":  "pressure at the lowest atm level (PSRF)",
                                     "units":      "Pa"
                                     }
                                 )    
        prect       = xr.DataArray(self.PRECTmms,
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
        
        for n in range(self.nmonth):
            
            self.time_len = self.month_d[self.timearray.month-1] * 4
            
            self.time_str = self.timearray.strftime('%Y-%m')
            
            self.read_file()
            
            self.out_put()
            
            self.timearray = self.timearray + relativedelta( months = 1 )
        
        
        
    
    
if __name__ == '__main__':
    
    CRUNCEP_forcing = Create_CRUNCEP_forcing( data_path='/xdisk/chopinsong/chopinsong/CTSM_inputdata/climforcing/CRUNCEP/',\
                                              filename ='clmforc.cruncep.V7.c2016.0.5d.',\
                                              output_path='/home/u8/sdwilson/data/HA/1x1pt_HA/CLM1PT_data/',
                                              Yr_start=1980, nmonth=720,
                                      		lon=201.75, lat=21.75 )
    
    CRUNCEP_forcing.main()
    
    # file_p = '../Precip6Hrly/clmforc.cruncep.V7.c2016.0.5d.Prec.2015-01.nc'  
    # file_s = '../Solar6Hrly/clmforc.cruncep.V7.c2016.0.5d.Solr.2015-01.nc'
    # file_t = '../TPHWL6Hrly/clmforc.cruncep.V7.c2016.0.5d.TPQWL.2015-01.nc'
    
    # ds_p = xr.open_dataset( file_p )
    # ds_s = xr.open_dataset( file_s )
    # ds_t = xr.open_dataset( file_t )

    
    
    
    

