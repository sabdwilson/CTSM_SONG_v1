#!/usr/bin/env python

import sys
sys.path.append("/home/u8/sdwilson/app/python/lib/python3.6/site-packages")
import xarray as xr
import fsspec
import numpy as np


site_array = np.array(['FLUXTOWER1','FLUXTOWER2'])
lat_array = np.array([32.6803,  32.6785])
lon_array = np.array([-111.6237,-111.6237])
save_path = '/home/u8/sdwilson/data/AROC/test/'
year_list = np.arange(1979,2023,1)
var_list = ["APCP_surface","TMP_2maboveground","SPFH_2maboveground",
            "DLWRF_surface", "DSWRF_surface", "PRES_surface", 
            "UGRD_10maboveground","VGRD_10maboveground"]

for y in range(len(year_list)):
    url = 's3://noaa-nws-aorc-v1-1-1km/{year}.zarr/'.format(year=year_list[y])
    ds_single = xr.open_zarr(fsspec.get_mapper(url, anon=True), consolidated=True)
    for site in range(len(site_array)):
        da = ds_single[var_list].sel(longitude=lon_array[site], 
                                     latitude=lat_array[site], 
                                     method='nearest').load()
        print(da)
        da.to_netcdf(save_path + '/{site}/{year}_{site}.nc'.format(site=site_array[site], year=year_list[y]))
        da.close()

    ds_single.close()

# When finished, close the client and shutdown the cluster if it's no longer needed
