#!/bin/bash

# Author : Guoshuai Li
# Contact: GUOSHUAI Li  <liguoshuai@outlook.com> <liguoshuai@lzb.ac.cn>
# Copyright (C) 2025

#common_year
for ((common=1950; common<=2023;++common))
do
   echo $common
   

#M"$((common))"
cd /home/ligs/Storage/era5_land_hourly/common_year/M"$((common))"

#"$((common))"01
#calculate wind speed
cdo -b 32 -chname,u10,WS -sqrt -add -sqr -selname,u10 era5_land_hourly_10m_u_component_of_wind_"$((common))"01.nc -sqr -selname,v10 era5_land_hourly_10m_v_component_of_wind_"$((common))"01.nc era5_land_WS_"$((common))"01.nc
#calculate wind direction
cdo -b 32 -chname,u10,WD -mulc,57.2957805 -atan2 -mulc,-1 era5_land_hourly_10m_u_component_of_wind_"$((common))"01.nc -mulc,-1 era5_land_hourly_10m_v_component_of_wind_"$((common))"01.nc era5_land_WD_"$((common))"01.nc
#mask sand-moving wind speeds, ≥5.8m/s
cdo setrtomiss,0,5.7999999 era5_land_WS_"$((common))"01.nc era5_land_WS_setrtomiss_"$((common))"01.nc
#mask all the wind directions of corresponding sand-moving wind speeds, the sand-moving wind direction
cdo ifthen era5_land_WS_setrtomiss_"$((common))"01.nc era5_land_WD_"$((common))"01.nc era5_land_WD_ifthen_"$((common))"01.nc
#delete intermediate results
rm -f era5_land_WS_"$((common))"01.nc
rm -f era5_land_WD_"$((common))"01.nc

#"$((common))"02
#calculate wind speed
cdo -b 32 -chname,u10,WS -sqrt -add -sqr -selname,u10 era5_land_hourly_10m_u_component_of_wind_"$((common))"02.nc -sqr -selname,v10 era5_land_hourly_10m_v_component_of_wind_"$((common))"02.nc era5_land_WS_"$((common))"02.nc
#calculate wind direction
cdo -b 32 -chname,u10,WD -mulc,57.2957805 -atan2 -mulc,-1 era5_land_hourly_10m_u_component_of_wind_"$((common))"02.nc -mulc,-1 era5_land_hourly_10m_v_component_of_wind_"$((common))"02.nc era5_land_WD_"$((common))"02.nc
#mask sand-moving wind speeds, ≥5.8m/s
cdo setrtomiss,0,5.7999999 era5_land_WS_"$((common))"02.nc era5_land_WS_setrtomiss_"$((common))"02.nc
#mask all the wind directions of corresponding sand-moving wind speeds, the sand-moving wind direction
cdo ifthen era5_land_WS_setrtomiss_"$((common))"02.nc era5_land_WD_"$((common))"02.nc era5_land_WD_ifthen_"$((common))"02.nc
#delete intermediate results
rm -f era5_land_WS_"$((common))"02.nc
rm -f era5_land_WD_"$((common))"02.nc

#"$((common))"03
#calculate wind speed
cdo -b 32 -chname,u10,WS -sqrt -add -sqr -selname,u10 era5_land_hourly_10m_u_component_of_wind_"$((common))"03.nc -sqr -selname,v10 era5_land_hourly_10m_v_component_of_wind_"$((common))"03.nc era5_land_WS_"$((common))"03.nc
#calculate wind direction
cdo -b 32 -chname,u10,WD -mulc,57.2957805 -atan2 -mulc,-1 era5_land_hourly_10m_u_component_of_wind_"$((common))"03.nc -mulc,-1 era5_land_hourly_10m_v_component_of_wind_"$((common))"03.nc era5_land_WD_"$((common))"03.nc
#mask sand-moving wind speeds, ≥5.8m/s
cdo setrtomiss,0,5.7999999 era5_land_WS_"$((common))"03.nc era5_land_WS_setrtomiss_"$((common))"03.nc
#mask all the wind directions of corresponding sand-moving wind speeds, the sand-moving wind direction
cdo ifthen era5_land_WS_setrtomiss_"$((common))"03.nc era5_land_WD_"$((common))"03.nc era5_land_WD_ifthen_"$((common))"03.nc
#delete intermediate results
rm -f era5_land_WS_"$((common))"03.nc
rm -f era5_land_WD_"$((common))"03.nc

#"$((common))"04
#calculate wind speed
cdo -b 32 -chname,u10,WS -sqrt -add -sqr -selname,u10 era5_land_hourly_10m_u_component_of_wind_"$((common))"04.nc -sqr -selname,v10 era5_land_hourly_10m_v_component_of_wind_"$((common))"04.nc era5_land_WS_"$((common))"04.nc
#calculate wind direction
cdo -b 32 -chname,u10,WD -mulc,57.2957805 -atan2 -mulc,-1 era5_land_hourly_10m_u_component_of_wind_"$((common))"04.nc -mulc,-1 era5_land_hourly_10m_v_component_of_wind_"$((common))"04.nc era5_land_WD_"$((common))"04.nc
#mask sand-moving wind speeds, ≥5.8m/s
cdo setrtomiss,0,5.7999999 era5_land_WS_"$((common))"04.nc era5_land_WS_setrtomiss_"$((common))"04.nc
#mask all the wind directions of corresponding sand-moving wind speeds, the sand-moving wind direction
cdo ifthen era5_land_WS_setrtomiss_"$((common))"04.nc era5_land_WD_"$((common))"04.nc era5_land_WD_ifthen_"$((common))"04.nc
#delete intermediate results
rm -f era5_land_WS_"$((common))"04.nc
rm -f era5_land_WD_"$((common))"04.nc

#"$((common))"05
#calculate wind speed
cdo -b 32 -chname,u10,WS -sqrt -add -sqr -selname,u10 era5_land_hourly_10m_u_component_of_wind_"$((common))"05.nc -sqr -selname,v10 era5_land_hourly_10m_v_component_of_wind_"$((common))"05.nc era5_land_WS_"$((common))"05.nc
#calculate wind direction
cdo -b 32 -chname,u10,WD -mulc,57.2957805 -atan2 -mulc,-1 era5_land_hourly_10m_u_component_of_wind_"$((common))"05.nc -mulc,-1 era5_land_hourly_10m_v_component_of_wind_"$((common))"05.nc era5_land_WD_"$((common))"05.nc
#mask sand-moving wind speeds, ≥5.8m/s
cdo setrtomiss,0,5.7999999 era5_land_WS_"$((common))"05.nc era5_land_WS_setrtomiss_"$((common))"05.nc
#mask all the wind directions of corresponding sand-moving wind speeds, the sand-moving wind direction
cdo ifthen era5_land_WS_setrtomiss_"$((common))"05.nc era5_land_WD_"$((common))"05.nc era5_land_WD_ifthen_"$((common))"05.nc
#delete intermediate results
rm -f era5_land_WS_"$((common))"05.nc
rm -f era5_land_WD_"$((common))"05.nc

#"$((common))"06
#calculate wind speed
cdo -b 32 -chname,u10,WS -sqrt -add -sqr -selname,u10 era5_land_hourly_10m_u_component_of_wind_"$((common))"06.nc -sqr -selname,v10 era5_land_hourly_10m_v_component_of_wind_"$((common))"06.nc era5_land_WS_"$((common))"06.nc
#calculate wind direction
cdo -b 32 -chname,u10,WD -mulc,57.2957805 -atan2 -mulc,-1 era5_land_hourly_10m_u_component_of_wind_"$((common))"06.nc -mulc,-1 era5_land_hourly_10m_v_component_of_wind_"$((common))"06.nc era5_land_WD_"$((common))"06.nc
#mask sand-moving wind speeds, ≥5.8m/s
cdo setrtomiss,0,5.7999999 era5_land_WS_"$((common))"06.nc era5_land_WS_setrtomiss_"$((common))"06.nc
#mask all the wind directions of corresponding sand-moving wind speeds, the sand-moving wind direction
cdo ifthen era5_land_WS_setrtomiss_"$((common))"06.nc era5_land_WD_"$((common))"06.nc era5_land_WD_ifthen_"$((common))"06.nc
#delete intermediate results
rm -f era5_land_WS_"$((common))"06.nc
rm -f era5_land_WD_"$((common))"06.nc

#"$((common))"07
#calculate wind speed
cdo -b 32 -chname,u10,WS -sqrt -add -sqr -selname,u10 era5_land_hourly_10m_u_component_of_wind_"$((common))"07.nc -sqr -selname,v10 era5_land_hourly_10m_v_component_of_wind_"$((common))"07.nc era5_land_WS_"$((common))"07.nc
#calculate wind direction
cdo -b 32 -chname,u10,WD -mulc,57.2957805 -atan2 -mulc,-1 era5_land_hourly_10m_u_component_of_wind_"$((common))"07.nc -mulc,-1 era5_land_hourly_10m_v_component_of_wind_"$((common))"07.nc era5_land_WD_"$((common))"07.nc
#mask sand-moving wind speeds, ≥5.8m/s
cdo setrtomiss,0,5.7999999 era5_land_WS_"$((common))"07.nc era5_land_WS_setrtomiss_"$((common))"07.nc
#mask all the wind directions of corresponding sand-moving wind speeds, the sand-moving wind direction
cdo ifthen era5_land_WS_setrtomiss_"$((common))"07.nc era5_land_WD_"$((common))"07.nc era5_land_WD_ifthen_"$((common))"07.nc
#delete intermediate results
rm -f era5_land_WS_"$((common))"07.nc
rm -f era5_land_WD_"$((common))"07.nc

#"$((common))"08
#calculate wind speed
cdo -b 32 -chname,u10,WS -sqrt -add -sqr -selname,u10 era5_land_hourly_10m_u_component_of_wind_"$((common))"08.nc -sqr -selname,v10 era5_land_hourly_10m_v_component_of_wind_"$((common))"08.nc era5_land_WS_"$((common))"08.nc
#calculate wind direction
cdo -b 32 -chname,u10,WD -mulc,57.2957805 -atan2 -mulc,-1 era5_land_hourly_10m_u_component_of_wind_"$((common))"08.nc -mulc,-1 era5_land_hourly_10m_v_component_of_wind_"$((common))"08.nc era5_land_WD_"$((common))"08.nc
#mask sand-moving wind speeds, ≥5.8m/s
cdo setrtomiss,0,5.7999999 era5_land_WS_"$((common))"08.nc era5_land_WS_setrtomiss_"$((common))"08.nc
#mask all the wind directions of corresponding sand-moving wind speeds, the sand-moving wind direction
cdo ifthen era5_land_WS_setrtomiss_"$((common))"08.nc era5_land_WD_"$((common))"08.nc era5_land_WD_ifthen_"$((common))"08.nc
#delete intermediate results
rm -f era5_land_WS_"$((common))"08.nc
rm -f era5_land_WD_"$((common))"08.nc

#"$((common))"09
#calculate wind speed
cdo -b 32 -chname,u10,WS -sqrt -add -sqr -selname,u10 era5_land_hourly_10m_u_component_of_wind_"$((common))"09.nc -sqr -selname,v10 era5_land_hourly_10m_v_component_of_wind_"$((common))"09.nc era5_land_WS_"$((common))"09.nc
#calculate wind direction
cdo -b 32 -chname,u10,WD -mulc,57.2957805 -atan2 -mulc,-1 era5_land_hourly_10m_u_component_of_wind_"$((common))"09.nc -mulc,-1 era5_land_hourly_10m_v_component_of_wind_"$((common))"09.nc era5_land_WD_"$((common))"09.nc
#mask sand-moving wind speeds, ≥5.8m/s
cdo setrtomiss,0,5.7999999 era5_land_WS_"$((common))"09.nc era5_land_WS_setrtomiss_"$((common))"09.nc
#mask all the wind directions of corresponding sand-moving wind speeds, the sand-moving wind direction
cdo ifthen era5_land_WS_setrtomiss_"$((common))"09.nc era5_land_WD_"$((common))"09.nc era5_land_WD_ifthen_"$((common))"09.nc
#delete intermediate results
rm -f era5_land_WS_"$((common))"09.nc
rm -f era5_land_WD_"$((common))"09.nc

#"$((common))"10
#calculate wind speed
cdo -b 32 -chname,u10,WS -sqrt -add -sqr -selname,u10 era5_land_hourly_10m_u_component_of_wind_"$((common))"10.nc -sqr -selname,v10 era5_land_hourly_10m_v_component_of_wind_"$((common))"10.nc era5_land_WS_"$((common))"10.nc
#calculate wind direction
cdo -b 32 -chname,u10,WD -mulc,57.2957805 -atan2 -mulc,-1 era5_land_hourly_10m_u_component_of_wind_"$((common))"10.nc -mulc,-1 era5_land_hourly_10m_v_component_of_wind_"$((common))"10.nc era5_land_WD_"$((common))"10.nc
#mask sand-moving wind speeds, ≥5.8m/s
cdo setrtomiss,0,5.7999999 era5_land_WS_"$((common))"10.nc era5_land_WS_setrtomiss_"$((common))"10.nc
#mask all the wind directions of corresponding sand-moving wind speeds, the sand-moving wind direction
cdo ifthen era5_land_WS_setrtomiss_"$((common))"10.nc era5_land_WD_"$((common))"10.nc era5_land_WD_ifthen_"$((common))"10.nc
#delete intermediate results
rm -f era5_land_WS_"$((common))"10.nc
rm -f era5_land_WD_"$((common))"10.nc

#"$((common))"11
#calculate wind speed
cdo -b 32 -chname,u10,WS -sqrt -add -sqr -selname,u10 era5_land_hourly_10m_u_component_of_wind_"$((common))"11.nc -sqr -selname,v10 era5_land_hourly_10m_v_component_of_wind_"$((common))"11.nc era5_land_WS_"$((common))"11.nc
#calculate wind direction
cdo -b 32 -chname,u10,WD -mulc,57.2957805 -atan2 -mulc,-1 era5_land_hourly_10m_u_component_of_wind_"$((common))"11.nc -mulc,-1 era5_land_hourly_10m_v_component_of_wind_"$((common))"11.nc era5_land_WD_"$((common))"11.nc
#mask sand-moving wind speeds, ≥5.8m/s
cdo setrtomiss,0,5.7999999 era5_land_WS_"$((common))"11.nc era5_land_WS_setrtomiss_"$((common))"11.nc
#mask all the wind directions of corresponding sand-moving wind speeds, the sand-moving wind direction
cdo ifthen era5_land_WS_setrtomiss_"$((common))"11.nc era5_land_WD_"$((common))"11.nc era5_land_WD_ifthen_"$((common))"11.nc
#delete intermediate results
rm -f era5_land_WS_"$((common))"11.nc
rm -f era5_land_WD_"$((common))"11.nc

#"$((common))"12
#calculate wind speed
cdo -b 32 -chname,u10,WS -sqrt -add -sqr -selname,u10 era5_land_hourly_10m_u_component_of_wind_"$((common))"12.nc -sqr -selname,v10 era5_land_hourly_10m_v_component_of_wind_"$((common))"12.nc era5_land_WS_"$((common))"12.nc
#calculate wind direction
cdo -b 32 -chname,u10,WD -mulc,57.2957805 -atan2 -mulc,-1 era5_land_hourly_10m_u_component_of_wind_"$((common))"12.nc -mulc,-1 era5_land_hourly_10m_v_component_of_wind_"$((common))"12.nc era5_land_WD_"$((common))"12.nc
#mask sand-moving wind speeds, ≥5.8m/s
cdo setrtomiss,0,5.7999999 era5_land_WS_"$((common))"12.nc era5_land_WS_setrtomiss_"$((common))"12.nc
#mask all the wind directions of corresponding sand-moving wind speeds, the sand-moving wind direction
cdo ifthen era5_land_WS_setrtomiss_"$((common))"12.nc era5_land_WD_"$((common))"12.nc era5_land_WD_ifthen_"$((common))"12.nc
#delete intermediate results
rm -f era5_land_WS_"$((common))"12.nc
rm -f era5_land_WD_"$((common))"12.nc

#concatenate the monthly sand-moving wind speeds
cdo cat era5_land_WS_setrtomiss_"$((common))"01.nc era5_land_WS_setrtomiss_"$((common))"02.nc era5_land_WS_setrtomiss_"$((common))"03.nc era5_land_WS_setrtomiss_"$((common))"04.nc era5_land_WS_setrtomiss_"$((common))"05.nc era5_land_WS_setrtomiss_"$((common))"06.nc era5_land_WS_setrtomiss_"$((common))"07.nc era5_land_WS_setrtomiss_"$((common))"08.nc era5_land_WS_setrtomiss_"$((common))"09.nc era5_land_WS_setrtomiss_"$((common))"10.nc era5_land_WS_setrtomiss_"$((common))"11.nc era5_land_WS_setrtomiss_"$((common))"12.nc era5_land_WS_setrtomiss_"$((common))".nc
#delete intermediate results
rm -f era5_land_WS_setrtomiss_"$((common))"01.nc
rm -f era5_land_WS_setrtomiss_"$((common))"02.nc
rm -f era5_land_WS_setrtomiss_"$((common))"03.nc
rm -f era5_land_WS_setrtomiss_"$((common))"04.nc
rm -f era5_land_WS_setrtomiss_"$((common))"05.nc
rm -f era5_land_WS_setrtomiss_"$((common))"06.nc
rm -f era5_land_WS_setrtomiss_"$((common))"07.nc
rm -f era5_land_WS_setrtomiss_"$((common))"08.nc
rm -f era5_land_WS_setrtomiss_"$((common))"09.nc
rm -f era5_land_WS_setrtomiss_"$((common))"10.nc
rm -f era5_land_WS_setrtomiss_"$((common))"11.nc
rm -f era5_land_WS_setrtomiss_"$((common))"12.nc

#concatenate the monthly sand-moving wind directions
cdo cat era5_land_WD_ifthen_"$((common))"01.nc era5_land_WD_ifthen_"$((common))"02.nc era5_land_WD_ifthen_"$((common))"03.nc era5_land_WD_ifthen_"$((common))"04.nc era5_land_WD_ifthen_"$((common))"05.nc era5_land_WD_ifthen_"$((common))"06.nc era5_land_WD_ifthen_"$((common))"07.nc era5_land_WD_ifthen_"$((common))"08.nc era5_land_WD_ifthen_"$((common))"09.nc era5_land_WD_ifthen_"$((common))"10.nc era5_land_WD_ifthen_"$((common))"11.nc era5_land_WD_ifthen_"$((common))"12.nc era5_land_WD_ifthen_"$((common))".nc
#delete intermediate results
rm -f era5_land_WD_ifthen_"$((common))"01.nc
rm -f era5_land_WD_ifthen_"$((common))"02.nc
rm -f era5_land_WD_ifthen_"$((common))"03.nc
rm -f era5_land_WD_ifthen_"$((common))"04.nc
rm -f era5_land_WD_ifthen_"$((common))"05.nc
rm -f era5_land_WD_ifthen_"$((common))"06.nc
rm -f era5_land_WD_ifthen_"$((common))"07.nc
rm -f era5_land_WD_ifthen_"$((common))"08.nc
rm -f era5_land_WD_ifthen_"$((common))"09.nc
rm -f era5_land_WD_ifthen_"$((common))"10.nc
rm -f era5_land_WD_ifthen_"$((common))"11.nc
rm -f era5_land_WD_ifthen_"$((common))"12.nc

#distinguish the azimuth of sand-moving wind directions
#N, -11.25≤N＜11.25
cdo setvrange,-11.25,11.2499999 era5_land_WD_ifthen_"$((common))".nc era5_land_WD_ifthen_setvrange_N_"$((common))".nc
#mask sand-moving wind speeds in the N azimuth
cdo ifthen era5_land_WD_ifthen_setvrange_N_"$((common))".nc era5_land_WS_setrtomiss_"$((common))".nc era5_land_WS_setrtomiss_ifthen_N_"$((common))".nc
#2 m/s bins of sand-moving wind speeds in the N azimuth, 5.8m/s≤WS＜8m/s, 8m/s≤WS＜10m/s, 10m/s≤WS＜12m/s, 12m/s≤WS＜14m/s, 14m/s≤WS＜16m/s, 16m/s≤WS＜18m/s, 18m/s≤WS＜20m/s, 20m/s≤WS＜22m/s, 22m/s≤WS＜24m/s, 24m/s≤WS＜26m/s, 26m/s≤WS＜28m/s, 28m/s≤WS＜30m/s, 30m/s≤WS＜32m/s, 32m/s≤WS
cdo histcount,5.8,7.9999999,9.9999999,11.9999999,13.9999999,15.9999999,17.9999999,19.9999999,21.9999999,23.9999999,25.9999999,27.9999999,29.9999999,31.9999999,inf era5_land_WS_setrtomiss_ifthen_N_"$((common))".nc era5_land_WS_setrtomiss_ifthen_N_histcount_"$((common))".nc
#the sand-moving wind frequency in the N azimuth, 8760 is the total hours for the “$common_year”
cdo divc,8760 era5_land_WS_setrtomiss_ifthen_N_histcount_"$((common))".nc era5_land_WS_setrtomiss_ifthen_N_histcount_divc_"$((common))".nc
#setmisstoc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_N_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_N_histcount_divc_setmisstoc_"$((common))".nc
#mulc
cdo mulc,100 era5_land_WS_setrtomiss_ifthen_N_histcount_divc_setmisstoc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_N_histcount_divc_setmisstoc_mulc_"$((common))".nc
#weighting factor U^2(U-Ut), U is the mean wind speed，and they are 7, 9, 11, 13, 15, 17, 19, 21, 23, 25, 27, 29, 31, 32m/s, respectively; and m/s needs to be conversed into knot. Notably, the value of U^2(U-Ut) is not divided by 100, as its subsquent multiplication represents a demensionless sand-moving wind frequency, rather than a percentage-based sand-moving wind frequency.
#level,5.8 U^2(U-Ut)=(7*3600/1852)*(7*3600/1852)*(7*3600/1852-5.8*3600/1852)=431.878795
#level,8 U^2(U-Ut)=(9*3600/1852)*(9*3600/1852)*(9*3600/1852-5.8*3600/1852)=1903.792241
#level,10 U^2(U-Ut)=(11*3600/1852)*(11*3600/1852)*(11*3600/1852-5.8*3600/1852)=4621.396906
#level,12 U^2(U-Ut)=(13*3600/1852)*(13*3600/1852)*(13*3600/1852-5.8*3600/1852)=8937.246908
#level,14 U^2(U-Ut)=(15*3600/1852)*(15*3600/1852)*(15*3600/1852-5.8*3600/1852)=15203.896368
#level,16 U^2(U-Ut)=(17*3600/1852)*(17*3600/1852)*(17*3600/1852-5.8*3600/1852)=23773.899403
#level,18 U^2(U-Ut)=(19*3600/1852)*(19*3600/1852)*(19*3600/1852-5.8*3600/1852)=34999.810131
#level,20 U^2(U-Ut)=(21*3600/1852)*(21*3600/1852)*(21*3600/1852-5.8*3600/1852)=49234.182673
#level,22 U^2(U-Ut)=(23*3600/1852)*(23*3600/1852)*(23*3600/1852-5.8*3600/1852)=66829.571146
#level,24 U^2(U-Ut)=(25*3600/1852)*(25*3600/1852)*(25*3600/1852-5.8*3600/1852)=88138.529669
#level,26 U^2(U-Ut)=(27*3600/1852)*(27*3600/1852)*(27*3600/1852-5.8*3600/1852)=113513.612360
#level,28 U^2(U-Ut)=(29*3600/1852)*(29*3600/1852)*(29*3600/1852-5.8*3600/1852)=143307.373339
#level,30 U^2(U-Ut)=(31*3600/1852)*(31*3600/1852)*(31*3600/1852-5.8*3600/1852)=177872.366724
#level,32 U^2(U-Ut)=(32*3600/1852)*(32*3600/1852)*(32*3600/1852-5.8*3600/1852)=197054.248731
#1 knot = 1 nautical mile/hour =1852m/hour=1852/3600m/s=0.5144m/s
#sellevel5.8
cdo -mulc,431.878795 -sellevel,5.8 era5_land_WS_setrtomiss_ifthen_N_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel5.8_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel5.8_"$((common))".nc era5_land_DP_N_range5.8_8_"$((common))".nc
#sellevel8
cdo -mulc,1903.792241 -sellevel,8 era5_land_WS_setrtomiss_ifthen_N_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel8_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel8_"$((common))".nc era5_land_DP_N_range8_10_"$((common))".nc
#sellevel10
cdo -mulc,4621.396906 -sellevel,10 era5_land_WS_setrtomiss_ifthen_N_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel10_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel10_"$((common))".nc era5_land_DP_N_range10_12_"$((common))".nc
#sellevel12
cdo -mulc,8937.246908 -sellevel,12 era5_land_WS_setrtomiss_ifthen_N_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel12_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel12_"$((common))".nc era5_land_DP_N_range12_14_"$((common))".nc
#sellevel14
cdo -mulc,15203.896368 -sellevel,14 era5_land_WS_setrtomiss_ifthen_N_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel14_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel14_"$((common))".nc era5_land_DP_N_range14_16_"$((common))".nc
#sellevel16
cdo -mulc,23773.899403 -sellevel,16 era5_land_WS_setrtomiss_ifthen_N_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel16_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel16_"$((common))".nc era5_land_DP_N_range16_18_"$((common))".nc
#sellevel18
cdo -mulc,34999.810131 -sellevel,18 era5_land_WS_setrtomiss_ifthen_N_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel18_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel18_"$((common))".nc era5_land_DP_N_range18_20_"$((common))".nc
#sellevel20
cdo -mulc,49234.182673 -sellevel,20 era5_land_WS_setrtomiss_ifthen_N_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel20_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel20_"$((common))".nc era5_land_DP_N_range20_22_"$((common))".nc
#sellevel22
cdo -mulc,66829.571146 -sellevel,22 era5_land_WS_setrtomiss_ifthen_N_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel22_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel22_"$((common))".nc era5_land_DP_N_range22_24_"$((common))".nc
#sellevel24
cdo -mulc,88138.529669 -sellevel,24 era5_land_WS_setrtomiss_ifthen_N_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel24_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel24_"$((common))".nc era5_land_DP_N_range24_26_"$((common))".nc
#sellevel26
cdo -mulc,113513.612360 -sellevel,26 era5_land_WS_setrtomiss_ifthen_N_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel26_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel26_"$((common))".nc era5_land_DP_N_range26_28_"$((common))".nc
#sellevel28
cdo -mulc,143307.373339 -sellevel,28 era5_land_WS_setrtomiss_ifthen_N_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel28_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel28_"$((common))".nc era5_land_DP_N_range28_30_"$((common))".nc
#sellevel30
cdo -mulc,177872.366724 -sellevel,30 era5_land_WS_setrtomiss_ifthen_N_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel30_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel30_"$((common))".nc era5_land_DP_N_range30_32_"$((common))".nc
#sellevel32
cdo -mulc,197054.248731 -sellevel,32 era5_land_WS_setrtomiss_ifthen_N_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel32_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel32_"$((common))".nc era5_land_DP_N_range32_inf_"$((common))".nc
#enssum
cdo enssum era5_land_DP_N_range5.8_8_"$((common))".nc era5_land_DP_N_range8_10_"$((common))".nc era5_land_DP_N_range10_12_"$((common))".nc era5_land_DP_N_range12_14_"$((common))".nc era5_land_DP_N_range14_16_"$((common))".nc era5_land_DP_N_range16_18_"$((common))".nc era5_land_DP_N_range18_20_"$((common))".nc era5_land_DP_N_range20_22_"$((common))".nc era5_land_DP_N_range22_24_"$((common))".nc era5_land_DP_N_range24_26_"$((common))".nc era5_land_DP_N_range26_28_"$((common))".nc era5_land_DP_N_range28_30_"$((common))".nc era5_land_DP_N_range30_32_"$((common))".nc era5_land_DP_N_range32_inf_"$((common))".nc era5_land_DP_N_range_enssum_"$((common))".nc
#change variable name into DP_N, in order to be used in the resultanting
cdo chname,WS,DP_N era5_land_DP_N_range_enssum_"$((common))".nc era5_land_DP_N_range_enssum_chname_"$((common))".nc
#delete intermediate results
rm -f era5_land_WD_ifthen_setvrange_N_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_N_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_N_histcount_divc_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_N_histcount_divc_setmisstoc_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel5.8_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel8_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel10_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel12_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel14_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel16_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel18_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel20_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel22_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel24_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel26_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel28_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel30_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel32_"$((common))".nc
rm -f era5_land_DP_N_range5.8_8_"$((common))".nc
rm -f era5_land_DP_N_range8_10_"$((common))".nc
rm -f era5_land_DP_N_range10_12_"$((common))".nc
rm -f era5_land_DP_N_range12_14_"$((common))".nc
rm -f era5_land_DP_N_range14_16_"$((common))".nc
rm -f era5_land_DP_N_range16_18_"$((common))".nc
rm -f era5_land_DP_N_range18_20_"$((common))".nc
rm -f era5_land_DP_N_range20_22_"$((common))".nc
rm -f era5_land_DP_N_range22_24_"$((common))".nc
rm -f era5_land_DP_N_range24_26_"$((common))".nc
rm -f era5_land_DP_N_range26_28_"$((common))".nc
rm -f era5_land_DP_N_range28_30_"$((common))".nc
rm -f era5_land_DP_N_range30_32_"$((common))".nc
rm -f era5_land_DP_N_range32_inf_"$((common))".nc

#NNE, 11.25≤NNE＜33.75
cdo setvrange,11.25,33.7499999 era5_land_WD_ifthen_"$((common))".nc era5_land_WD_ifthen_setvrange_NNE_"$((common))".nc
#mask sand-moving wind speeds in the NNE azimuth
cdo ifthen era5_land_WD_ifthen_setvrange_NNE_"$((common))".nc era5_land_WS_setrtomiss_"$((common))".nc era5_land_WS_setrtomiss_ifthen_NNE_"$((common))".nc
#2 m/s bins of sand-moving wind speeds in the NNE azimuth, 5.8m/s≤WS＜8m/s, 8m/s≤WS＜10m/s, 10m/s≤WS＜12m/s, 12m/s≤WS＜14m/s, 14m/s≤WS＜16m/s, 16m/s≤WS＜18m/s, 18m/s≤WS＜20m/s, 20m/s≤WS＜22m/s, 22m/s≤WS＜24m/s, 24m/s≤WS＜26m/s, 26m/s≤WS＜28m/s, 28m/s≤WS＜30m/s, 30m/s≤WS＜32m/s, 32m/s≤WS
cdo histcount,5.8,7.9999999,9.9999999,11.9999999,13.9999999,15.9999999,17.9999999,19.9999999,21.9999999,23.9999999,25.9999999,27.9999999,29.9999999,31.9999999,inf era5_land_WS_setrtomiss_ifthen_NNE_"$((common))".nc era5_land_WS_setrtomiss_ifthen_NNE_histcount_"$((common))".nc
#the sand-moving wind frequency in the NNE azimuth, 8760 is the total hours for the “$common_year”
cdo divc,8760 era5_land_WS_setrtomiss_ifthen_NNE_histcount_"$((common))".nc era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_"$((common))".nc
#setmisstoc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_setmisstoc_"$((common))".nc
#mulc
cdo mulc,100 era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_setmisstoc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_setmisstoc_mulc_"$((common))".nc
#weighting factor U^2(U-Ut), U is the mean wind speed，and they are 7, 9, 11, 13, 15, 17, 19, 21, 23, 25, 27, 29, 31, 32m/s, respectively; and m/s needs to be conversed into knot. Notably, the value of U^2(U-Ut) is not divided by 100, as its subsquent multiplication represents a demensionless sand-moving wind frequency, rather than a percentage-based sand-moving wind frequency.
#level,5.8 U^2(U-Ut)=(7*3600/1852)*(7*3600/1852)*(7*3600/1852-5.8*3600/1852)=431.878795
#level,8 U^2(U-Ut)=(9*3600/1852)*(9*3600/1852)*(9*3600/1852-5.8*3600/1852)=1903.792241
#level,10 U^2(U-Ut)=(11*3600/1852)*(11*3600/1852)*(11*3600/1852-5.8*3600/1852)=4621.396906
#level,12 U^2(U-Ut)=(13*3600/1852)*(13*3600/1852)*(13*3600/1852-5.8*3600/1852)=8937.246908
#level,14 U^2(U-Ut)=(15*3600/1852)*(15*3600/1852)*(15*3600/1852-5.8*3600/1852)=15203.896368
#level,16 U^2(U-Ut)=(17*3600/1852)*(17*3600/1852)*(17*3600/1852-5.8*3600/1852)=23773.899403
#level,18 U^2(U-Ut)=(19*3600/1852)*(19*3600/1852)*(19*3600/1852-5.8*3600/1852)=34999.810131
#level,20 U^2(U-Ut)=(21*3600/1852)*(21*3600/1852)*(21*3600/1852-5.8*3600/1852)=49234.182673
#level,22 U^2(U-Ut)=(23*3600/1852)*(23*3600/1852)*(23*3600/1852-5.8*3600/1852)=66829.571146
#level,24 U^2(U-Ut)=(25*3600/1852)*(25*3600/1852)*(25*3600/1852-5.8*3600/1852)=88138.529669
#level,26 U^2(U-Ut)=(27*3600/1852)*(27*3600/1852)*(27*3600/1852-5.8*3600/1852)=113513.612360
#level,28 U^2(U-Ut)=(29*3600/1852)*(29*3600/1852)*(29*3600/1852-5.8*3600/1852)=143307.373339
#level,30 U^2(U-Ut)=(31*3600/1852)*(31*3600/1852)*(31*3600/1852-5.8*3600/1852)=177872.366724
#level,32 U^2(U-Ut)=(32*3600/1852)*(32*3600/1852)*(32*3600/1852-5.8*3600/1852)=197054.248731
#1 knot = 1 nautical mile/hour =1852m/hour=1852/3600m/s=0.5144m/s
#sellevel5.8
cdo -mulc,431.878795 -sellevel,5.8 era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel5.8_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel5.8_"$((common))".nc era5_land_DP_NNE_range5.8_8_"$((common))".nc
#sellevel8
cdo -mulc,1903.792241 -sellevel,8 era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel8_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel8_"$((common))".nc era5_land_DP_NNE_range8_10_"$((common))".nc
#sellevel10
cdo -mulc,4621.396906 -sellevel,10 era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel10_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel10_"$((common))".nc era5_land_DP_NNE_range10_12_"$((common))".nc
#sellevel12
cdo -mulc,8937.246908 -sellevel,12 era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel12_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel12_"$((common))".nc era5_land_DP_NNE_range12_14_"$((common))".nc
#sellevel14
cdo -mulc,15203.896368 -sellevel,14 era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel14_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel14_"$((common))".nc era5_land_DP_NNE_range14_16_"$((common))".nc
#sellevel16
cdo -mulc,23773.899403 -sellevel,16 era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel16_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel16_"$((common))".nc era5_land_DP_NNE_range16_18_"$((common))".nc
#sellevel18
cdo -mulc,34999.810131 -sellevel,18 era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel18_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel18_"$((common))".nc era5_land_DP_NNE_range18_20_"$((common))".nc
#sellevel20
cdo -mulc,49234.182673 -sellevel,20 era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel20_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel20_"$((common))".nc era5_land_DP_NNE_range20_22_"$((common))".nc
#sellevel22
cdo -mulc,66829.571146 -sellevel,22 era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel22_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel22_"$((common))".nc era5_land_DP_NNE_range22_24_"$((common))".nc
#sellevel24
cdo -mulc,88138.529669 -sellevel,24 era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel24_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel24_"$((common))".nc era5_land_DP_NNE_range24_26_"$((common))".nc
#sellevel26
cdo -mulc,113513.612360 -sellevel,26 era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel26_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel26_"$((common))".nc era5_land_DP_NNE_range26_28_"$((common))".nc
#sellevel28
cdo -mulc,143307.373339 -sellevel,28 era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel28_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel28_"$((common))".nc era5_land_DP_NNE_range28_30_"$((common))".nc
#sellevel30
cdo -mulc,177872.366724 -sellevel,30 era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel30_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel30_"$((common))".nc era5_land_DP_NNE_range30_32_"$((common))".nc
#sellevel32
cdo -mulc,197054.248731 -sellevel,32 era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel32_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel32_"$((common))".nc era5_land_DP_NNE_range32_inf_"$((common))".nc
#enssum
cdo enssum era5_land_DP_NNE_range5.8_8_"$((common))".nc era5_land_DP_NNE_range8_10_"$((common))".nc era5_land_DP_NNE_range10_12_"$((common))".nc era5_land_DP_NNE_range12_14_"$((common))".nc era5_land_DP_NNE_range14_16_"$((common))".nc era5_land_DP_NNE_range16_18_"$((common))".nc era5_land_DP_NNE_range18_20_"$((common))".nc era5_land_DP_NNE_range20_22_"$((common))".nc era5_land_DP_NNE_range22_24_"$((common))".nc era5_land_DP_NNE_range24_26_"$((common))".nc era5_land_DP_NNE_range26_28_"$((common))".nc era5_land_DP_NNE_range28_30_"$((common))".nc era5_land_DP_NNE_range30_32_"$((common))".nc era5_land_DP_NNE_range32_inf_"$((common))".nc era5_land_DP_NNE_range_enssum_"$((common))".nc
#change variable name into DP_NNE, in order to be used in the resultanting
cdo chname,WS,DP_NNE era5_land_DP_NNE_range_enssum_"$((common))".nc era5_land_DP_NNE_range_enssum_chname_"$((common))".nc
#delete intermediate results
rm -f era5_land_WD_ifthen_setvrange_NNE_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NNE_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_setmisstoc_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel5.8_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel8_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel10_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel12_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel14_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel16_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel18_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel20_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel22_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel24_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel26_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel28_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel30_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel32_"$((common))".nc
rm -f era5_land_DP_NNE_range5.8_8_"$((common))".nc
rm -f era5_land_DP_NNE_range8_10_"$((common))".nc
rm -f era5_land_DP_NNE_range10_12_"$((common))".nc
rm -f era5_land_DP_NNE_range12_14_"$((common))".nc
rm -f era5_land_DP_NNE_range14_16_"$((common))".nc
rm -f era5_land_DP_NNE_range16_18_"$((common))".nc
rm -f era5_land_DP_NNE_range18_20_"$((common))".nc
rm -f era5_land_DP_NNE_range20_22_"$((common))".nc
rm -f era5_land_DP_NNE_range22_24_"$((common))".nc
rm -f era5_land_DP_NNE_range24_26_"$((common))".nc
rm -f era5_land_DP_NNE_range26_28_"$((common))".nc
rm -f era5_land_DP_NNE_range28_30_"$((common))".nc
rm -f era5_land_DP_NNE_range30_32_"$((common))".nc
rm -f era5_land_DP_NNE_range32_inf_"$((common))".nc

#NE, 33.75≤NE＜56.25
cdo setvrange,33.75,56.2499999 era5_land_WD_ifthen_"$((common))".nc era5_land_WD_ifthen_setvrange_NE_"$((common))".nc
#mask sand-moving wind speeds in the NE azimuth
cdo ifthen era5_land_WD_ifthen_setvrange_NE_"$((common))".nc era5_land_WS_setrtomiss_"$((common))".nc era5_land_WS_setrtomiss_ifthen_NE_"$((common))".nc
#2 m/s bins of sand-moving wind speeds in the NE azimuth, 5.8m/s≤WS＜8m/s, 8m/s≤WS＜10m/s, 10m/s≤WS＜12m/s, 12m/s≤WS＜14m/s, 14m/s≤WS＜16m/s, 16m/s≤WS＜18m/s, 18m/s≤WS＜20m/s, 20m/s≤WS＜22m/s, 22m/s≤WS＜24m/s, 24m/s≤WS＜26m/s, 26m/s≤WS＜28m/s, 28m/s≤WS＜30m/s, 30m/s≤WS＜32m/s, 32m/s≤WS
cdo histcount,5.8,7.9999999,9.9999999,11.9999999,13.9999999,15.9999999,17.9999999,19.9999999,21.9999999,23.9999999,25.9999999,27.9999999,29.9999999,31.9999999,inf era5_land_WS_setrtomiss_ifthen_NE_"$((common))".nc era5_land_WS_setrtomiss_ifthen_NE_histcount_"$((common))".nc
#the sand-moving wind frequency in the NE azimuth, 8760 is the total hours for the “$common_year”
cdo divc,8760 era5_land_WS_setrtomiss_ifthen_NE_histcount_"$((common))".nc era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_"$((common))".nc
#setmisstoc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_setmisstoc_"$((common))".nc
#mulc
cdo mulc,100 era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_setmisstoc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_setmisstoc_mulc_"$((common))".nc
#weighting factor U^2(U-Ut), U is the mean wind speed，and they are 7, 9, 11, 13, 15, 17, 19, 21, 23, 25, 27, 29, 31, 32m/s, respectively; and m/s needs to be conversed into knot. Notably, the value of U^2(U-Ut) is not divided by 100, as its subsquent multiplication represents a demensionless sand-moving wind frequency, rather than a percentage-based sand-moving wind frequency.
#level,5.8 U^2(U-Ut)=(7*3600/1852)*(7*3600/1852)*(7*3600/1852-5.8*3600/1852)=431.878795
#level,8 U^2(U-Ut)=(9*3600/1852)*(9*3600/1852)*(9*3600/1852-5.8*3600/1852)=1903.792241
#level,10 U^2(U-Ut)=(11*3600/1852)*(11*3600/1852)*(11*3600/1852-5.8*3600/1852)=4621.396906
#level,12 U^2(U-Ut)=(13*3600/1852)*(13*3600/1852)*(13*3600/1852-5.8*3600/1852)=8937.246908
#level,14 U^2(U-Ut)=(15*3600/1852)*(15*3600/1852)*(15*3600/1852-5.8*3600/1852)=15203.896368
#level,16 U^2(U-Ut)=(17*3600/1852)*(17*3600/1852)*(17*3600/1852-5.8*3600/1852)=23773.899403
#level,18 U^2(U-Ut)=(19*3600/1852)*(19*3600/1852)*(19*3600/1852-5.8*3600/1852)=34999.810131
#level,20 U^2(U-Ut)=(21*3600/1852)*(21*3600/1852)*(21*3600/1852-5.8*3600/1852)=49234.182673
#level,22 U^2(U-Ut)=(23*3600/1852)*(23*3600/1852)*(23*3600/1852-5.8*3600/1852)=66829.571146
#level,24 U^2(U-Ut)=(25*3600/1852)*(25*3600/1852)*(25*3600/1852-5.8*3600/1852)=88138.529669
#level,26 U^2(U-Ut)=(27*3600/1852)*(27*3600/1852)*(27*3600/1852-5.8*3600/1852)=113513.612360
#level,28 U^2(U-Ut)=(29*3600/1852)*(29*3600/1852)*(29*3600/1852-5.8*3600/1852)=143307.373339
#level,30 U^2(U-Ut)=(31*3600/1852)*(31*3600/1852)*(31*3600/1852-5.8*3600/1852)=177872.366724
#level,32 U^2(U-Ut)=(32*3600/1852)*(32*3600/1852)*(32*3600/1852-5.8*3600/1852)=197054.248731
#1 knot = 1 nautical mile/hour =1852m/hour=1852/3600m/s=0.5144m/s
#sellevel5.8
cdo -mulc,431.878795 -sellevel,5.8 era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel5.8_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel5.8_"$((common))".nc era5_land_DP_NE_range5.8_8_"$((common))".nc
#sellevel8
cdo -mulc,1903.792241 -sellevel,8 era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel8_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel8_"$((common))".nc era5_land_DP_NE_range8_10_"$((common))".nc
#sellevel10
cdo -mulc,4621.396906 -sellevel,10 era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel10_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel10_"$((common))".nc era5_land_DP_NE_range10_12_"$((common))".nc
#sellevel12
cdo -mulc,8937.246908 -sellevel,12 era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel12_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel12_"$((common))".nc era5_land_DP_NE_range12_14_"$((common))".nc
#sellevel14
cdo -mulc,15203.896368 -sellevel,14 era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel14_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel14_"$((common))".nc era5_land_DP_NE_range14_16_"$((common))".nc
#sellevel16
cdo -mulc,23773.899403 -sellevel,16 era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel16_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel16_"$((common))".nc era5_land_DP_NE_range16_18_"$((common))".nc
#sellevel18
cdo -mulc,34999.810131 -sellevel,18 era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel18_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel18_"$((common))".nc era5_land_DP_NE_range18_20_"$((common))".nc
#sellevel20
cdo -mulc,49234.182673 -sellevel,20 era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel20_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel20_"$((common))".nc era5_land_DP_NE_range20_22_"$((common))".nc
#sellevel22
cdo -mulc,66829.571146 -sellevel,22 era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel22_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel22_"$((common))".nc era5_land_DP_NE_range22_24_"$((common))".nc
#sellevel24
cdo -mulc,88138.529669 -sellevel,24 era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel24_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel24_"$((common))".nc era5_land_DP_NE_range24_26_"$((common))".nc
#sellevel26
cdo -mulc,113513.612360 -sellevel,26 era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel26_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel26_"$((common))".nc era5_land_DP_NE_range26_28_"$((common))".nc
#sellevel28
cdo -mulc,143307.373339 -sellevel,28 era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel28_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel28_"$((common))".nc era5_land_DP_NE_range28_30_"$((common))".nc
#sellevel30
cdo -mulc,177872.366724 -sellevel,30 era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel30_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel30_"$((common))".nc era5_land_DP_NE_range30_32_"$((common))".nc
#sellevel32
cdo -mulc,197054.248731 -sellevel,32 era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel32_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel32_"$((common))".nc era5_land_DP_NE_range32_inf_"$((common))".nc
#enssum
cdo enssum era5_land_DP_NE_range5.8_8_"$((common))".nc era5_land_DP_NE_range8_10_"$((common))".nc era5_land_DP_NE_range10_12_"$((common))".nc era5_land_DP_NE_range12_14_"$((common))".nc era5_land_DP_NE_range14_16_"$((common))".nc era5_land_DP_NE_range16_18_"$((common))".nc era5_land_DP_NE_range18_20_"$((common))".nc era5_land_DP_NE_range20_22_"$((common))".nc era5_land_DP_NE_range22_24_"$((common))".nc era5_land_DP_NE_range24_26_"$((common))".nc era5_land_DP_NE_range26_28_"$((common))".nc era5_land_DP_NE_range28_30_"$((common))".nc era5_land_DP_NE_range30_32_"$((common))".nc era5_land_DP_NE_range32_inf_"$((common))".nc era5_land_DP_NE_range_enssum_"$((common))".nc
#change variable name into DP_NE, in order to be used in the resultanting
cdo chname,WS,DP_NE era5_land_DP_NE_range_enssum_"$((common))".nc era5_land_DP_NE_range_enssum_chname_"$((common))".nc
#delete intermediate results
rm -f era5_land_WD_ifthen_setvrange_NE_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NE_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_setmisstoc_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel5.8_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel8_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel10_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel12_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel14_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel16_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel18_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel20_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel22_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel24_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel26_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel28_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel30_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel32_"$((common))".nc
rm -f era5_land_DP_NE_range5.8_8_"$((common))".nc
rm -f era5_land_DP_NE_range8_10_"$((common))".nc
rm -f era5_land_DP_NE_range10_12_"$((common))".nc
rm -f era5_land_DP_NE_range12_14_"$((common))".nc
rm -f era5_land_DP_NE_range14_16_"$((common))".nc
rm -f era5_land_DP_NE_range16_18_"$((common))".nc
rm -f era5_land_DP_NE_range18_20_"$((common))".nc
rm -f era5_land_DP_NE_range20_22_"$((common))".nc
rm -f era5_land_DP_NE_range22_24_"$((common))".nc
rm -f era5_land_DP_NE_range24_26_"$((common))".nc
rm -f era5_land_DP_NE_range26_28_"$((common))".nc
rm -f era5_land_DP_NE_range28_30_"$((common))".nc
rm -f era5_land_DP_NE_range30_32_"$((common))".nc
rm -f era5_land_DP_NE_range32_inf_"$((common))".nc

#ENE, 56.25≤ENE＜78.75
cdo setvrange,56.25,78.7499999 era5_land_WD_ifthen_"$((common))".nc era5_land_WD_ifthen_setvrange_ENE_"$((common))".nc
#mask sand-moving wind speeds in the ENE azimuth
cdo ifthen era5_land_WD_ifthen_setvrange_ENE_"$((common))".nc era5_land_WS_setrtomiss_"$((common))".nc era5_land_WS_setrtomiss_ifthen_ENE_"$((common))".nc
#2 m/s bins of sand-moving wind speeds in the ENE azimuth, 5.8m/s≤WS＜8m/s, 8m/s≤WS＜10m/s, 10m/s≤WS＜12m/s, 12m/s≤WS＜14m/s, 14m/s≤WS＜16m/s, 16m/s≤WS＜18m/s, 18m/s≤WS＜20m/s, 20m/s≤WS＜22m/s, 22m/s≤WS＜24m/s, 24m/s≤WS＜26m/s, 26m/s≤WS＜28m/s, 28m/s≤WS＜30m/s, 30m/s≤WS＜32m/s, 32m/s≤WS
cdo histcount,5.8,7.9999999,9.9999999,11.9999999,13.9999999,15.9999999,17.9999999,19.9999999,21.9999999,23.9999999,25.9999999,27.9999999,29.9999999,31.9999999,inf era5_land_WS_setrtomiss_ifthen_ENE_"$((common))".nc era5_land_WS_setrtomiss_ifthen_ENE_histcount_"$((common))".nc
#the sand-moving wind frequency in the ENE azimuth, 8760 is the total hours for the “$common_year”
cdo divc,8760 era5_land_WS_setrtomiss_ifthen_ENE_histcount_"$((common))".nc era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_"$((common))".nc
#setmisstoc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_setmisstoc_"$((common))".nc
#mulc
cdo mulc,100 era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_setmisstoc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_setmisstoc_mulc_"$((common))".nc
#weighting factor U^2(U-Ut), U is the mean wind speed，and they are 7, 9, 11, 13, 15, 17, 19, 21, 23, 25, 27, 29, 31, 32m/s, respectively; and m/s needs to be conversed into knot. Notably, the value of U^2(U-Ut) is not divided by 100, as its subsquent multiplication represents a demensionless sand-moving wind frequency, rather than a percentage-based sand-moving wind frequency.
#level,5.8 U^2(U-Ut)=(7*3600/1852)*(7*3600/1852)*(7*3600/1852-5.8*3600/1852)=431.878795
#level,8 U^2(U-Ut)=(9*3600/1852)*(9*3600/1852)*(9*3600/1852-5.8*3600/1852)=1903.792241
#level,10 U^2(U-Ut)=(11*3600/1852)*(11*3600/1852)*(11*3600/1852-5.8*3600/1852)=4621.396906
#level,12 U^2(U-Ut)=(13*3600/1852)*(13*3600/1852)*(13*3600/1852-5.8*3600/1852)=8937.246908
#level,14 U^2(U-Ut)=(15*3600/1852)*(15*3600/1852)*(15*3600/1852-5.8*3600/1852)=15203.896368
#level,16 U^2(U-Ut)=(17*3600/1852)*(17*3600/1852)*(17*3600/1852-5.8*3600/1852)=23773.899403
#level,18 U^2(U-Ut)=(19*3600/1852)*(19*3600/1852)*(19*3600/1852-5.8*3600/1852)=34999.810131
#level,20 U^2(U-Ut)=(21*3600/1852)*(21*3600/1852)*(21*3600/1852-5.8*3600/1852)=49234.182673
#level,22 U^2(U-Ut)=(23*3600/1852)*(23*3600/1852)*(23*3600/1852-5.8*3600/1852)=66829.571146
#level,24 U^2(U-Ut)=(25*3600/1852)*(25*3600/1852)*(25*3600/1852-5.8*3600/1852)=88138.529669
#level,26 U^2(U-Ut)=(27*3600/1852)*(27*3600/1852)*(27*3600/1852-5.8*3600/1852)=113513.612360
#level,28 U^2(U-Ut)=(29*3600/1852)*(29*3600/1852)*(29*3600/1852-5.8*3600/1852)=143307.373339
#level,30 U^2(U-Ut)=(31*3600/1852)*(31*3600/1852)*(31*3600/1852-5.8*3600/1852)=177872.366724
#level,32 U^2(U-Ut)=(32*3600/1852)*(32*3600/1852)*(32*3600/1852-5.8*3600/1852)=197054.248731
#1 knot = 1 nautical mile/hour =1852m/hour=1852/3600m/s=0.5144m/s
#sellevel5.8
cdo -mulc,431.878795 -sellevel,5.8 era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel5.8_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel5.8_"$((common))".nc era5_land_DP_ENE_range5.8_8_"$((common))".nc
#sellevel8
cdo -mulc,1903.792241 -sellevel,8 era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel8_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel8_"$((common))".nc era5_land_DP_ENE_range8_10_"$((common))".nc
#sellevel10
cdo -mulc,4621.396906 -sellevel,10 era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel10_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel10_"$((common))".nc era5_land_DP_ENE_range10_12_"$((common))".nc
#sellevel12
cdo -mulc,8937.246908 -sellevel,12 era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel12_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel12_"$((common))".nc era5_land_DP_ENE_range12_14_"$((common))".nc
#sellevel14
cdo -mulc,15203.896368 -sellevel,14 era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel14_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel14_"$((common))".nc era5_land_DP_ENE_range14_16_"$((common))".nc
#sellevel16
cdo -mulc,23773.899403 -sellevel,16 era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel16_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel16_"$((common))".nc era5_land_DP_ENE_range16_18_"$((common))".nc
#sellevel18
cdo -mulc,34999.810131 -sellevel,18 era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel18_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel18_"$((common))".nc era5_land_DP_ENE_range18_20_"$((common))".nc
#sellevel20
cdo -mulc,49234.182673 -sellevel,20 era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel20_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel20_"$((common))".nc era5_land_DP_ENE_range20_22_"$((common))".nc
#sellevel22
cdo -mulc,66829.571146 -sellevel,22 era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel22_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel22_"$((common))".nc era5_land_DP_ENE_range22_24_"$((common))".nc
#sellevel24
cdo -mulc,88138.529669 -sellevel,24 era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel24_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel24_"$((common))".nc era5_land_DP_ENE_range24_26_"$((common))".nc
#sellevel26
cdo -mulc,113513.612360 -sellevel,26 era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel26_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel26_"$((common))".nc era5_land_DP_ENE_range26_28_"$((common))".nc
#sellevel28
cdo -mulc,143307.373339 -sellevel,28 era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel28_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel28_"$((common))".nc era5_land_DP_ENE_range28_30_"$((common))".nc
#sellevel30
cdo -mulc,177872.366724 -sellevel,30 era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel30_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel30_"$((common))".nc era5_land_DP_ENE_range30_32_"$((common))".nc
#sellevel32
cdo -mulc,197054.248731 -sellevel,32 era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel32_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel32_"$((common))".nc era5_land_DP_ENE_range32_inf_"$((common))".nc
#enssum
cdo enssum era5_land_DP_ENE_range5.8_8_"$((common))".nc era5_land_DP_ENE_range8_10_"$((common))".nc era5_land_DP_ENE_range10_12_"$((common))".nc era5_land_DP_ENE_range12_14_"$((common))".nc era5_land_DP_ENE_range14_16_"$((common))".nc era5_land_DP_ENE_range16_18_"$((common))".nc era5_land_DP_ENE_range18_20_"$((common))".nc era5_land_DP_ENE_range20_22_"$((common))".nc era5_land_DP_ENE_range22_24_"$((common))".nc era5_land_DP_ENE_range24_26_"$((common))".nc era5_land_DP_ENE_range26_28_"$((common))".nc era5_land_DP_ENE_range28_30_"$((common))".nc era5_land_DP_ENE_range30_32_"$((common))".nc era5_land_DP_ENE_range32_inf_"$((common))".nc era5_land_DP_ENE_range_enssum_"$((common))".nc
#change variable name into DP_ENE, in order to be used in the resultanting 
cdo chname,WS,DP_ENE era5_land_DP_ENE_range_enssum_"$((common))".nc era5_land_DP_ENE_range_enssum_chname_"$((common))".nc
#delete intermediate results
rm -f era5_land_WD_ifthen_setvrange_ENE_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_ENE_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_setmisstoc_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel5.8_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel8_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel10_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel12_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel14_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel16_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel18_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel20_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel22_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel24_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel26_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel28_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel30_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel32_"$((common))".nc
rm -f era5_land_DP_ENE_range5.8_8_"$((common))".nc
rm -f era5_land_DP_ENE_range8_10_"$((common))".nc
rm -f era5_land_DP_ENE_range10_12_"$((common))".nc
rm -f era5_land_DP_ENE_range12_14_"$((common))".nc
rm -f era5_land_DP_ENE_range14_16_"$((common))".nc
rm -f era5_land_DP_ENE_range16_18_"$((common))".nc
rm -f era5_land_DP_ENE_range18_20_"$((common))".nc
rm -f era5_land_DP_ENE_range20_22_"$((common))".nc
rm -f era5_land_DP_ENE_range22_24_"$((common))".nc
rm -f era5_land_DP_ENE_range24_26_"$((common))".nc
rm -f era5_land_DP_ENE_range26_28_"$((common))".nc
rm -f era5_land_DP_ENE_range28_30_"$((common))".nc
rm -f era5_land_DP_ENE_range30_32_"$((common))".nc
rm -f era5_land_DP_ENE_range32_inf_"$((common))".nc

#E, 78.75≤E＜101.25
cdo setvrange,78.75,101.2499999 era5_land_WD_ifthen_"$((common))".nc era5_land_WD_ifthen_setvrange_E_"$((common))".nc
#mask sand-moving wind speeds in the E azimuth
cdo ifthen era5_land_WD_ifthen_setvrange_E_"$((common))".nc era5_land_WS_setrtomiss_"$((common))".nc era5_land_WS_setrtomiss_ifthen_E_"$((common))".nc
#2 m/s bins of sand-moving wind speeds in the E azimuth, 5.8m/s≤WS＜8m/s, 8m/s≤WS＜10m/s, 10m/s≤WS＜12m/s, 12m/s≤WS＜14m/s, 14m/s≤WS＜16m/s, 16m/s≤WS＜18m/s, 18m/s≤WS＜20m/s, 20m/s≤WS＜22m/s, 22m/s≤WS＜24m/s, 24m/s≤WS＜26m/s, 26m/s≤WS＜28m/s, 28m/s≤WS＜30m/s, 30m/s≤WS＜32m/s, 32m/s≤WS
cdo histcount,5.8,7.9999999,9.9999999,11.9999999,13.9999999,15.9999999,17.9999999,19.9999999,21.9999999,23.9999999,25.9999999,27.9999999,29.9999999,31.9999999,inf era5_land_WS_setrtomiss_ifthen_E_"$((common))".nc era5_land_WS_setrtomiss_ifthen_E_histcount_"$((common))".nc
#the sand-moving wind frequency in the E azimuth, 8760 is the total hours for the “$common_year”
cdo divc,8760 era5_land_WS_setrtomiss_ifthen_E_histcount_"$((common))".nc era5_land_WS_setrtomiss_ifthen_E_histcount_divc_"$((common))".nc
#setmisstoc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_E_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_E_histcount_divc_setmisstoc_"$((common))".nc
#mulc
cdo mulc,100 era5_land_WS_setrtomiss_ifthen_E_histcount_divc_setmisstoc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_E_histcount_divc_setmisstoc_mulc_"$((common))".nc
#weighting factor U^2(U-Ut), U is the mean wind speed，and they are 7, 9, 11, 13, 15, 17, 19, 21, 23, 25, 27, 29, 31, 32m/s, respectively; and m/s needs to be conversed into knot. Notably, the value of U^2(U-Ut) is not divided by 100, as its subsquent multiplication represents a demensionless sand-moving wind frequency, rather than a percentage-based sand-moving wind frequency.
#level,5.8 U^2(U-Ut)=(7*3600/1852)*(7*3600/1852)*(7*3600/1852-5.8*3600/1852)=431.878795
#level,8 U^2(U-Ut)=(9*3600/1852)*(9*3600/1852)*(9*3600/1852-5.8*3600/1852)=1903.792241
#level,10 U^2(U-Ut)=(11*3600/1852)*(11*3600/1852)*(11*3600/1852-5.8*3600/1852)=4621.396906
#level,12 U^2(U-Ut)=(13*3600/1852)*(13*3600/1852)*(13*3600/1852-5.8*3600/1852)=8937.246908
#level,14 U^2(U-Ut)=(15*3600/1852)*(15*3600/1852)*(15*3600/1852-5.8*3600/1852)=15203.896368
#level,16 U^2(U-Ut)=(17*3600/1852)*(17*3600/1852)*(17*3600/1852-5.8*3600/1852)=23773.899403
#level,18 U^2(U-Ut)=(19*3600/1852)*(19*3600/1852)*(19*3600/1852-5.8*3600/1852)=34999.810131
#level,20 U^2(U-Ut)=(21*3600/1852)*(21*3600/1852)*(21*3600/1852-5.8*3600/1852)=49234.182673
#level,22 U^2(U-Ut)=(23*3600/1852)*(23*3600/1852)*(23*3600/1852-5.8*3600/1852)=66829.571146
#level,24 U^2(U-Ut)=(25*3600/1852)*(25*3600/1852)*(25*3600/1852-5.8*3600/1852)=88138.529669
#level,26 U^2(U-Ut)=(27*3600/1852)*(27*3600/1852)*(27*3600/1852-5.8*3600/1852)=113513.612360
#level,28 U^2(U-Ut)=(29*3600/1852)*(29*3600/1852)*(29*3600/1852-5.8*3600/1852)=143307.373339
#level,30 U^2(U-Ut)=(31*3600/1852)*(31*3600/1852)*(31*3600/1852-5.8*3600/1852)=177872.366724
#level,32 U^2(U-Ut)=(32*3600/1852)*(32*3600/1852)*(32*3600/1852-5.8*3600/1852)=197054.248731
#1 knot = 1 nautical mile/hour =1852m/hour=1852/3600m/s=0.5144m/s
#sellevel5.8
cdo -mulc,431.878795 -sellevel,5.8 era5_land_WS_setrtomiss_ifthen_E_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel5.8_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel5.8_"$((common))".nc era5_land_DP_E_range5.8_8_"$((common))".nc
#sellevel8
cdo -mulc,1903.792241 -sellevel,8 era5_land_WS_setrtomiss_ifthen_E_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel8_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel8_"$((common))".nc era5_land_DP_E_range8_10_"$((common))".nc
#sellevel10
cdo -mulc,4621.396906 -sellevel,10 era5_land_WS_setrtomiss_ifthen_E_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel10_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel10_"$((common))".nc era5_land_DP_E_range10_12_"$((common))".nc
#sellevel12
cdo -mulc,8937.246908 -sellevel,12 era5_land_WS_setrtomiss_ifthen_E_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel12_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel12_"$((common))".nc era5_land_DP_E_range12_14_"$((common))".nc
#sellevel14
cdo -mulc,15203.896368 -sellevel,14 era5_land_WS_setrtomiss_ifthen_E_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel14_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel14_"$((common))".nc era5_land_DP_E_range14_16_"$((common))".nc
#sellevel16
cdo -mulc,23773.899403 -sellevel,16 era5_land_WS_setrtomiss_ifthen_E_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel16_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel16_"$((common))".nc era5_land_DP_E_range16_18_"$((common))".nc
#sellevel18
cdo -mulc,34999.810131 -sellevel,18 era5_land_WS_setrtomiss_ifthen_E_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel18_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel18_"$((common))".nc era5_land_DP_E_range18_20_"$((common))".nc
#sellevel20
cdo -mulc,49234.182673 -sellevel,20 era5_land_WS_setrtomiss_ifthen_E_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel20_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel20_"$((common))".nc era5_land_DP_E_range20_22_"$((common))".nc
#sellevel22
cdo -mulc,66829.571146 -sellevel,22 era5_land_WS_setrtomiss_ifthen_E_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel22_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel22_"$((common))".nc era5_land_DP_E_range22_24_"$((common))".nc
#sellevel24
cdo -mulc,88138.529669 -sellevel,24 era5_land_WS_setrtomiss_ifthen_E_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel24_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel24_"$((common))".nc era5_land_DP_E_range24_26_"$((common))".nc
#sellevel26
cdo -mulc,113513.612360 -sellevel,26 era5_land_WS_setrtomiss_ifthen_E_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel26_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel26_"$((common))".nc era5_land_DP_E_range26_28_"$((common))".nc
#sellevel28
cdo -mulc,143307.373339 -sellevel,28 era5_land_WS_setrtomiss_ifthen_E_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel28_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel28_"$((common))".nc era5_land_DP_E_range28_30_"$((common))".nc
#sellevel30
cdo -mulc,177872.366724 -sellevel,30 era5_land_WS_setrtomiss_ifthen_E_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel30_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel30_"$((common))".nc era5_land_DP_E_range30_32_"$((common))".nc
#sellevel32
cdo -mulc,197054.248731 -sellevel,32 era5_land_WS_setrtomiss_ifthen_E_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel32_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel32_"$((common))".nc era5_land_DP_E_range32_inf_"$((common))".nc
#enssum
cdo enssum era5_land_DP_E_range5.8_8_"$((common))".nc era5_land_DP_E_range8_10_"$((common))".nc era5_land_DP_E_range10_12_"$((common))".nc era5_land_DP_E_range12_14_"$((common))".nc era5_land_DP_E_range14_16_"$((common))".nc era5_land_DP_E_range16_18_"$((common))".nc era5_land_DP_E_range18_20_"$((common))".nc era5_land_DP_E_range20_22_"$((common))".nc era5_land_DP_E_range22_24_"$((common))".nc era5_land_DP_E_range24_26_"$((common))".nc era5_land_DP_E_range26_28_"$((common))".nc era5_land_DP_E_range28_30_"$((common))".nc era5_land_DP_E_range30_32_"$((common))".nc era5_land_DP_E_range32_inf_"$((common))".nc era5_land_DP_E_range_enssum_"$((common))".nc
#change variable name into DP_E, in order to be used in the resultanting
cdo chname,WS,DP_E era5_land_DP_E_range_enssum_"$((common))".nc era5_land_DP_E_range_enssum_chname_"$((common))".nc
#delete intermediate results
rm -f era5_land_WD_ifthen_setvrange_E_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_E_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_E_histcount_divc_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_E_histcount_divc_setmisstoc_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel5.8_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel8_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel10_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel12_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel14_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel16_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel18_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel20_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel22_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel24_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel26_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel28_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel30_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel32_"$((common))".nc
rm -f era5_land_DP_E_range5.8_8_"$((common))".nc
rm -f era5_land_DP_E_range8_10_"$((common))".nc
rm -f era5_land_DP_E_range10_12_"$((common))".nc
rm -f era5_land_DP_E_range12_14_"$((common))".nc
rm -f era5_land_DP_E_range14_16_"$((common))".nc
rm -f era5_land_DP_E_range16_18_"$((common))".nc
rm -f era5_land_DP_E_range18_20_"$((common))".nc
rm -f era5_land_DP_E_range20_22_"$((common))".nc
rm -f era5_land_DP_E_range22_24_"$((common))".nc
rm -f era5_land_DP_E_range24_26_"$((common))".nc
rm -f era5_land_DP_E_range26_28_"$((common))".nc
rm -f era5_land_DP_E_range28_30_"$((common))".nc
rm -f era5_land_DP_E_range30_32_"$((common))".nc
rm -f era5_land_DP_E_range32_inf_"$((common))".nc

#ESE, 101.25≤ESE＜123.75
cdo setvrange,101.25,123.7499999 era5_land_WD_ifthen_"$((common))".nc era5_land_WD_ifthen_setvrange_ESE_"$((common))".nc
#mask sand-moving wind speeds in the ESE azimuth
cdo ifthen era5_land_WD_ifthen_setvrange_ESE_"$((common))".nc era5_land_WS_setrtomiss_"$((common))".nc era5_land_WS_setrtomiss_ifthen_ESE_"$((common))".nc
#2 m/s bins of sand-moving wind speeds in the ESE azimuth, 5.8m/s≤WS＜8m/s, 8m/s≤WS＜10m/s, 10m/s≤WS＜12m/s, 12m/s≤WS＜14m/s, 14m/s≤WS＜16m/s, 16m/s≤WS＜18m/s, 18m/s≤WS＜20m/s, 20m/s≤WS＜22m/s, 22m/s≤WS＜24m/s, 24m/s≤WS＜26m/s, 26m/s≤WS＜28m/s, 28m/s≤WS＜30m/s, 30m/s≤WS＜32m/s, 32m/s≤WS
cdo histcount,5.8,7.9999999,9.9999999,11.9999999,13.9999999,15.9999999,17.9999999,19.9999999,21.9999999,23.9999999,25.9999999,27.9999999,29.9999999,31.9999999,inf era5_land_WS_setrtomiss_ifthen_ESE_"$((common))".nc era5_land_WS_setrtomiss_ifthen_ESE_histcount_"$((common))".nc
#the sand-moving wind frequency in the ESE azimuth, 8760 is the total hours for the “$common_year”
cdo divc,8760 era5_land_WS_setrtomiss_ifthen_ESE_histcount_"$((common))".nc era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_"$((common))".nc
#setmisstoc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_setmisstoc_"$((common))".nc
#mulc
cdo mulc,100 era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_setmisstoc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_setmisstoc_mulc_"$((common))".nc
#weighting factor U^2(U-Ut), U is the mean wind speed，and they are 7, 9, 11, 13, 15, 17, 19, 21, 23, 25, 27, 29, 31, 32m/s, respectively; and m/s needs to be conversed into knot. Notably, the value of U^2(U-Ut) is not divided by 100, as its subsquent multiplication represents a demensionless sand-moving wind frequency, rather than a percentage-based sand-moving wind frequency.
#level,5.8 U^2(U-Ut)=(7*3600/1852)*(7*3600/1852)*(7*3600/1852-5.8*3600/1852)=431.878795
#level,8 U^2(U-Ut)=(9*3600/1852)*(9*3600/1852)*(9*3600/1852-5.8*3600/1852)=1903.792241
#level,10 U^2(U-Ut)=(11*3600/1852)*(11*3600/1852)*(11*3600/1852-5.8*3600/1852)=4621.396906
#level,12 U^2(U-Ut)=(13*3600/1852)*(13*3600/1852)*(13*3600/1852-5.8*3600/1852)=8937.246908
#level,14 U^2(U-Ut)=(15*3600/1852)*(15*3600/1852)*(15*3600/1852-5.8*3600/1852)=15203.896368
#level,16 U^2(U-Ut)=(17*3600/1852)*(17*3600/1852)*(17*3600/1852-5.8*3600/1852)=23773.899403
#level,18 U^2(U-Ut)=(19*3600/1852)*(19*3600/1852)*(19*3600/1852-5.8*3600/1852)=34999.810131
#level,20 U^2(U-Ut)=(21*3600/1852)*(21*3600/1852)*(21*3600/1852-5.8*3600/1852)=49234.182673
#level,22 U^2(U-Ut)=(23*3600/1852)*(23*3600/1852)*(23*3600/1852-5.8*3600/1852)=66829.571146
#level,24 U^2(U-Ut)=(25*3600/1852)*(25*3600/1852)*(25*3600/1852-5.8*3600/1852)=88138.529669
#level,26 U^2(U-Ut)=(27*3600/1852)*(27*3600/1852)*(27*3600/1852-5.8*3600/1852)=113513.612360
#level,28 U^2(U-Ut)=(29*3600/1852)*(29*3600/1852)*(29*3600/1852-5.8*3600/1852)=143307.373339
#level,30 U^2(U-Ut)=(31*3600/1852)*(31*3600/1852)*(31*3600/1852-5.8*3600/1852)=177872.366724
#level,32 U^2(U-Ut)=(32*3600/1852)*(32*3600/1852)*(32*3600/1852-5.8*3600/1852)=197054.248731
#1 knot = 1 nautical mile/hour =1852m/hour=1852/3600m/s=0.5144m/s
#sellevel5.8
cdo -mulc,431.878795 -sellevel,5.8 era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel5.8_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel5.8_"$((common))".nc era5_land_DP_ESE_range5.8_8_"$((common))".nc
#sellevel8
cdo -mulc,1903.792241 -sellevel,8 era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel8_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel8_"$((common))".nc era5_land_DP_ESE_range8_10_"$((common))".nc
#sellevel10
cdo -mulc,4621.396906 -sellevel,10 era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel10_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel10_"$((common))".nc era5_land_DP_ESE_range10_12_"$((common))".nc
#sellevel12
cdo -mulc,8937.246908 -sellevel,12 era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel12_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel12_"$((common))".nc era5_land_DP_ESE_range12_14_"$((common))".nc
#sellevel14
cdo -mulc,15203.896368 -sellevel,14 era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel14_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel14_"$((common))".nc era5_land_DP_ESE_range14_16_"$((common))".nc
#sellevel16
cdo -mulc,23773.899403 -sellevel,16 era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel16_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel16_"$((common))".nc era5_land_DP_ESE_range16_18_"$((common))".nc
#sellevel18
cdo -mulc,34999.810131 -sellevel,18 era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel18_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel18_"$((common))".nc era5_land_DP_ESE_range18_20_"$((common))".nc
#sellevel20
cdo -mulc,49234.182673 -sellevel,20 era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel20_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel20_"$((common))".nc era5_land_DP_ESE_range20_22_"$((common))".nc
#sellevel22
cdo -mulc,66829.571146 -sellevel,22 era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel22_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel22_"$((common))".nc era5_land_DP_ESE_range22_24_"$((common))".nc
#sellevel24
cdo -mulc,88138.529669 -sellevel,24 era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel24_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel24_"$((common))".nc era5_land_DP_ESE_range24_26_"$((common))".nc
#sellevel26
cdo -mulc,113513.612360 -sellevel,26 era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel26_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel26_"$((common))".nc era5_land_DP_ESE_range26_28_"$((common))".nc
#sellevel28
cdo -mulc,143307.373339 -sellevel,28 era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel28_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel28_"$((common))".nc era5_land_DP_ESE_range28_30_"$((common))".nc
#sellevel30
cdo -mulc,177872.366724 -sellevel,30 era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel30_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel30_"$((common))".nc era5_land_DP_ESE_range30_32_"$((common))".nc
#sellevel32
cdo -mulc,197054.248731 -sellevel,32 era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel32_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel32_"$((common))".nc era5_land_DP_ESE_range32_inf_"$((common))".nc
#enssum
cdo enssum era5_land_DP_ESE_range5.8_8_"$((common))".nc era5_land_DP_ESE_range8_10_"$((common))".nc era5_land_DP_ESE_range10_12_"$((common))".nc era5_land_DP_ESE_range12_14_"$((common))".nc era5_land_DP_ESE_range14_16_"$((common))".nc era5_land_DP_ESE_range16_18_"$((common))".nc era5_land_DP_ESE_range18_20_"$((common))".nc era5_land_DP_ESE_range20_22_"$((common))".nc era5_land_DP_ESE_range22_24_"$((common))".nc era5_land_DP_ESE_range24_26_"$((common))".nc era5_land_DP_ESE_range26_28_"$((common))".nc era5_land_DP_ESE_range28_30_"$((common))".nc era5_land_DP_ESE_range30_32_"$((common))".nc era5_land_DP_ESE_range32_inf_"$((common))".nc era5_land_DP_ESE_range_enssum_"$((common))".nc
#change variable name into DP_ESE, in order to be used in the resultanting
cdo chname,WS,DP_ESE era5_land_DP_ESE_range_enssum_"$((common))".nc era5_land_DP_ESE_range_enssum_chname_"$((common))".nc
#delete intermediate results
rm -f era5_land_WD_ifthen_setvrange_ESE_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_ESE_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_setmisstoc_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel5.8_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel8_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel10_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel12_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel14_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel16_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel18_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel20_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel22_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel24_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel26_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel28_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel30_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel32_"$((common))".nc
rm -f era5_land_DP_ESE_range5.8_8_"$((common))".nc
rm -f era5_land_DP_ESE_range8_10_"$((common))".nc
rm -f era5_land_DP_ESE_range10_12_"$((common))".nc
rm -f era5_land_DP_ESE_range12_14_"$((common))".nc
rm -f era5_land_DP_ESE_range14_16_"$((common))".nc
rm -f era5_land_DP_ESE_range16_18_"$((common))".nc
rm -f era5_land_DP_ESE_range18_20_"$((common))".nc
rm -f era5_land_DP_ESE_range20_22_"$((common))".nc
rm -f era5_land_DP_ESE_range22_24_"$((common))".nc
rm -f era5_land_DP_ESE_range24_26_"$((common))".nc
rm -f era5_land_DP_ESE_range26_28_"$((common))".nc
rm -f era5_land_DP_ESE_range28_30_"$((common))".nc
rm -f era5_land_DP_ESE_range30_32_"$((common))".nc
rm -f era5_land_DP_ESE_range32_inf_"$((common))".nc

#SE, 123.75≤SE＜146.25
cdo setvrange,123.75,146.2499999 era5_land_WD_ifthen_"$((common))".nc era5_land_WD_ifthen_setvrange_SE_"$((common))".nc
#mask sand-moving wind speeds in the SE azimuth
cdo ifthen era5_land_WD_ifthen_setvrange_SE_"$((common))".nc era5_land_WS_setrtomiss_"$((common))".nc era5_land_WS_setrtomiss_ifthen_SE_"$((common))".nc
#2 m/s bins of sand-moving wind speeds in the SE azimuth, 5.8m/s≤WS＜8m/s, 8m/s≤WS＜10m/s, 10m/s≤WS＜12m/s, 12m/s≤WS＜14m/s, 14m/s≤WS＜16m/s, 16m/s≤WS＜18m/s, 18m/s≤WS＜20m/s, 20m/s≤WS＜22m/s, 22m/s≤WS＜24m/s, 24m/s≤WS＜26m/s, 26m/s≤WS＜28m/s, 28m/s≤WS＜30m/s, 30m/s≤WS＜32m/s, 32m/s≤WS
cdo histcount,5.8,7.9999999,9.9999999,11.9999999,13.9999999,15.9999999,17.9999999,19.9999999,21.9999999,23.9999999,25.9999999,27.9999999,29.9999999,31.9999999,inf era5_land_WS_setrtomiss_ifthen_SE_"$((common))".nc era5_land_WS_setrtomiss_ifthen_SE_histcount_"$((common))".nc
#the sand-moving wind frequency in the SE azimuth, 8760 is the total hours for the “$common_year”
cdo divc,8760 era5_land_WS_setrtomiss_ifthen_SE_histcount_"$((common))".nc era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_"$((common))".nc
#setmisstoc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_setmisstoc_"$((common))".nc
#mulc
cdo mulc,100 era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_setmisstoc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_setmisstoc_mulc_"$((common))".nc
#weighting factor U^2(U-Ut), U is the mean wind speed，and they are 7, 9, 11, 13, 15, 17, 19, 21, 23, 25, 27, 29, 31, 32m/s, respectively; and m/s needs to be conversed into knot. Notably, the value of U^2(U-Ut) is not divided by 100, as its subsquent multiplication represents a demensionless sand-moving wind frequency, rather than a percentage-based sand-moving wind frequency.
#level,5.8 U^2(U-Ut)=(7*3600/1852)*(7*3600/1852)*(7*3600/1852-5.8*3600/1852)=431.878795
#level,8 U^2(U-Ut)=(9*3600/1852)*(9*3600/1852)*(9*3600/1852-5.8*3600/1852)=1903.792241
#level,10 U^2(U-Ut)=(11*3600/1852)*(11*3600/1852)*(11*3600/1852-5.8*3600/1852)=4621.396906
#level,12 U^2(U-Ut)=(13*3600/1852)*(13*3600/1852)*(13*3600/1852-5.8*3600/1852)=8937.246908
#level,14 U^2(U-Ut)=(15*3600/1852)*(15*3600/1852)*(15*3600/1852-5.8*3600/1852)=15203.896368
#level,16 U^2(U-Ut)=(17*3600/1852)*(17*3600/1852)*(17*3600/1852-5.8*3600/1852)=23773.899403
#level,18 U^2(U-Ut)=(19*3600/1852)*(19*3600/1852)*(19*3600/1852-5.8*3600/1852)=34999.810131
#level,20 U^2(U-Ut)=(21*3600/1852)*(21*3600/1852)*(21*3600/1852-5.8*3600/1852)=49234.182673
#level,22 U^2(U-Ut)=(23*3600/1852)*(23*3600/1852)*(23*3600/1852-5.8*3600/1852)=66829.571146
#level,24 U^2(U-Ut)=(25*3600/1852)*(25*3600/1852)*(25*3600/1852-5.8*3600/1852)=88138.529669
#level,26 U^2(U-Ut)=(27*3600/1852)*(27*3600/1852)*(27*3600/1852-5.8*3600/1852)=113513.612360
#level,28 U^2(U-Ut)=(29*3600/1852)*(29*3600/1852)*(29*3600/1852-5.8*3600/1852)=143307.373339
#level,30 U^2(U-Ut)=(31*3600/1852)*(31*3600/1852)*(31*3600/1852-5.8*3600/1852)=177872.366724
#level,32 U^2(U-Ut)=(32*3600/1852)*(32*3600/1852)*(32*3600/1852-5.8*3600/1852)=197054.248731
#1 knot = 1 nautical mile/hour =1852m/hour=1852/3600m/s=0.5144m/s
#sellevel5.8
cdo -mulc,431.878795 -sellevel,5.8 era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel5.8_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel5.8_"$((common))".nc era5_land_DP_SE_range5.8_8_"$((common))".nc
#sellevel8
cdo -mulc,1903.792241 -sellevel,8 era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel8_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel8_"$((common))".nc era5_land_DP_SE_range8_10_"$((common))".nc
#sellevel10
cdo -mulc,4621.396906 -sellevel,10 era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel10_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel10_"$((common))".nc era5_land_DP_SE_range10_12_"$((common))".nc
#sellevel12
cdo -mulc,8937.246908 -sellevel,12 era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel12_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel12_"$((common))".nc era5_land_DP_SE_range12_14_"$((common))".nc
#sellevel14
cdo -mulc,15203.896368 -sellevel,14 era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel14_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel14_"$((common))".nc era5_land_DP_SE_range14_16_"$((common))".nc
#sellevel16
cdo -mulc,23773.899403 -sellevel,16 era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel16_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel16_"$((common))".nc era5_land_DP_SE_range16_18_"$((common))".nc
#sellevel18
cdo -mulc,34999.810131 -sellevel,18 era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel18_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel18_"$((common))".nc era5_land_DP_SE_range18_20_"$((common))".nc
#sellevel20
cdo -mulc,49234.182673 -sellevel,20 era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel20_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel20_"$((common))".nc era5_land_DP_SE_range20_22_"$((common))".nc
#sellevel22
cdo -mulc,66829.571146 -sellevel,22 era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel22_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel22_"$((common))".nc era5_land_DP_SE_range22_24_"$((common))".nc
#sellevel24
cdo -mulc,88138.529669 -sellevel,24 era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel24_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel24_"$((common))".nc era5_land_DP_SE_range24_26_"$((common))".nc
#sellevel26
cdo -mulc,113513.612360 -sellevel,26 era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel26_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel26_"$((common))".nc era5_land_DP_SE_range26_28_"$((common))".nc
#sellevel28
cdo -mulc,143307.373339 -sellevel,28 era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel28_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel28_"$((common))".nc era5_land_DP_SE_range28_30_"$((common))".nc
#sellevel30
cdo -mulc,177872.366724 -sellevel,30 era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel30_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel30_"$((common))".nc era5_land_DP_SE_range30_32_"$((common))".nc
#sellevel32
cdo -mulc,197054.248731 -sellevel,32 era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel32_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel32_"$((common))".nc era5_land_DP_SE_range32_inf_"$((common))".nc
#enssum
cdo enssum era5_land_DP_SE_range5.8_8_"$((common))".nc era5_land_DP_SE_range8_10_"$((common))".nc era5_land_DP_SE_range10_12_"$((common))".nc era5_land_DP_SE_range12_14_"$((common))".nc era5_land_DP_SE_range14_16_"$((common))".nc era5_land_DP_SE_range16_18_"$((common))".nc era5_land_DP_SE_range18_20_"$((common))".nc era5_land_DP_SE_range20_22_"$((common))".nc era5_land_DP_SE_range22_24_"$((common))".nc era5_land_DP_SE_range24_26_"$((common))".nc era5_land_DP_SE_range26_28_"$((common))".nc era5_land_DP_SE_range28_30_"$((common))".nc era5_land_DP_SE_range30_32_"$((common))".nc era5_land_DP_SE_range32_inf_"$((common))".nc era5_land_DP_SE_range_enssum_"$((common))".nc
#change variable name into DP_SE, in order to be used in the resultanting
cdo chname,WS,DP_SE era5_land_DP_SE_range_enssum_"$((common))".nc era5_land_DP_SE_range_enssum_chname_"$((common))".nc
#delete intermediate results
rm -f era5_land_WD_ifthen_setvrange_SE_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SE_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_setmisstoc_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel5.8_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel8_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel10_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel12_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel14_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel16_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel18_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel20_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel22_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel24_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel26_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel28_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel30_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel32_"$((common))".nc
rm -f era5_land_DP_SE_range5.8_8_"$((common))".nc
rm -f era5_land_DP_SE_range8_10_"$((common))".nc
rm -f era5_land_DP_SE_range10_12_"$((common))".nc
rm -f era5_land_DP_SE_range12_14_"$((common))".nc
rm -f era5_land_DP_SE_range14_16_"$((common))".nc
rm -f era5_land_DP_SE_range16_18_"$((common))".nc
rm -f era5_land_DP_SE_range18_20_"$((common))".nc
rm -f era5_land_DP_SE_range20_22_"$((common))".nc
rm -f era5_land_DP_SE_range22_24_"$((common))".nc
rm -f era5_land_DP_SE_range24_26_"$((common))".nc
rm -f era5_land_DP_SE_range26_28_"$((common))".nc
rm -f era5_land_DP_SE_range28_30_"$((common))".nc
rm -f era5_land_DP_SE_range30_32_"$((common))".nc
rm -f era5_land_DP_SE_range32_inf_"$((common))".nc

#SSE, 146.25≤SSE＜168.75
cdo setvrange,146.25,168.7499999 era5_land_WD_ifthen_"$((common))".nc era5_land_WD_ifthen_setvrange_SSE_"$((common))".nc
#mask sand-moving wind speeds in the SSE azimuth
cdo ifthen era5_land_WD_ifthen_setvrange_SSE_"$((common))".nc era5_land_WS_setrtomiss_"$((common))".nc era5_land_WS_setrtomiss_ifthen_SSE_"$((common))".nc
#2 m/s bins of sand-moving wind speeds in the SSE azimuth, 5.8m/s≤WS＜8m/s, 8m/s≤WS＜10m/s, 10m/s≤WS＜12m/s, 12m/s≤WS＜14m/s, 14m/s≤WS＜16m/s, 16m/s≤WS＜18m/s, 18m/s≤WS＜20m/s, 20m/s≤WS＜22m/s, 22m/s≤WS＜24m/s, 24m/s≤WS＜26m/s, 26m/s≤WS＜28m/s, 28m/s≤WS＜30m/s, 30m/s≤WS＜32m/s, 32m/s≤WS
cdo histcount,5.8,7.9999999,9.9999999,11.9999999,13.9999999,15.9999999,17.9999999,19.9999999,21.9999999,23.9999999,25.9999999,27.9999999,29.9999999,31.9999999,inf era5_land_WS_setrtomiss_ifthen_SSE_"$((common))".nc era5_land_WS_setrtomiss_ifthen_SSE_histcount_"$((common))".nc
#the sand-moving wind frequency in the SSE azimuth, 8760 is the total hours for the “$common_year”
cdo divc,8760 era5_land_WS_setrtomiss_ifthen_SSE_histcount_"$((common))".nc era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_"$((common))".nc
#setmisstoc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_setmisstoc_"$((common))".nc
#mulc
cdo mulc,100 era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_setmisstoc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_setmisstoc_mulc_"$((common))".nc
#weighting factor U^2(U-Ut), U is the mean wind speed，and they are 7, 9, 11, 13, 15, 17, 19, 21, 23, 25, 27, 29, 31, 32m/s, respectively; and m/s needs to be conversed into knot. Notably, the value of U^2(U-Ut) is not divided by 100, as its subsquent multiplication represents a demensionless sand-moving wind frequency, rather than a percentage-based sand-moving wind frequency.
#level,5.8 U^2(U-Ut)=(7*3600/1852)*(7*3600/1852)*(7*3600/1852-5.8*3600/1852)=431.878795
#level,8 U^2(U-Ut)=(9*3600/1852)*(9*3600/1852)*(9*3600/1852-5.8*3600/1852)=1903.792241
#level,10 U^2(U-Ut)=(11*3600/1852)*(11*3600/1852)*(11*3600/1852-5.8*3600/1852)=4621.396906
#level,12 U^2(U-Ut)=(13*3600/1852)*(13*3600/1852)*(13*3600/1852-5.8*3600/1852)=8937.246908
#level,14 U^2(U-Ut)=(15*3600/1852)*(15*3600/1852)*(15*3600/1852-5.8*3600/1852)=15203.896368
#level,16 U^2(U-Ut)=(17*3600/1852)*(17*3600/1852)*(17*3600/1852-5.8*3600/1852)=23773.899403
#level,18 U^2(U-Ut)=(19*3600/1852)*(19*3600/1852)*(19*3600/1852-5.8*3600/1852)=34999.810131
#level,20 U^2(U-Ut)=(21*3600/1852)*(21*3600/1852)*(21*3600/1852-5.8*3600/1852)=49234.182673
#level,22 U^2(U-Ut)=(23*3600/1852)*(23*3600/1852)*(23*3600/1852-5.8*3600/1852)=66829.571146
#level,24 U^2(U-Ut)=(25*3600/1852)*(25*3600/1852)*(25*3600/1852-5.8*3600/1852)=88138.529669
#level,26 U^2(U-Ut)=(27*3600/1852)*(27*3600/1852)*(27*3600/1852-5.8*3600/1852)=113513.612360
#level,28 U^2(U-Ut)=(29*3600/1852)*(29*3600/1852)*(29*3600/1852-5.8*3600/1852)=143307.373339
#level,30 U^2(U-Ut)=(31*3600/1852)*(31*3600/1852)*(31*3600/1852-5.8*3600/1852)=177872.366724
#level,32 U^2(U-Ut)=(32*3600/1852)*(32*3600/1852)*(32*3600/1852-5.8*3600/1852)=197054.248731
#1 knot = 1 nautical mile/hour =1852m/hour=1852/3600m/s=0.5144m/s
#sellevel5.8
cdo -mulc,431.878795 -sellevel,5.8 era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel5.8_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel5.8_"$((common))".nc era5_land_DP_SSE_range5.8_8_"$((common))".nc
#sellevel8
cdo -mulc,1903.792241 -sellevel,8 era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel8_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel8_"$((common))".nc era5_land_DP_SSE_range8_10_"$((common))".nc
#sellevel10
cdo -mulc,4621.396906 -sellevel,10 era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel10_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel10_"$((common))".nc era5_land_DP_SSE_range10_12_"$((common))".nc
#sellevel12
cdo -mulc,8937.246908 -sellevel,12 era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel12_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel12_"$((common))".nc era5_land_DP_SSE_range12_14_"$((common))".nc
#sellevel14
cdo -mulc,15203.896368 -sellevel,14 era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel14_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel14_"$((common))".nc era5_land_DP_SSE_range14_16_"$((common))".nc
#sellevel16
cdo -mulc,23773.899403 -sellevel,16 era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel16_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel16_"$((common))".nc era5_land_DP_SSE_range16_18_"$((common))".nc
#sellevel18
cdo -mulc,34999.810131 -sellevel,18 era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel18_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel18_"$((common))".nc era5_land_DP_SSE_range18_20_"$((common))".nc
#sellevel20
cdo -mulc,49234.182673 -sellevel,20 era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel20_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel20_"$((common))".nc era5_land_DP_SSE_range20_22_"$((common))".nc
#sellevel22
cdo -mulc,66829.571146 -sellevel,22 era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel22_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel22_"$((common))".nc era5_land_DP_SSE_range22_24_"$((common))".nc
#sellevel24
cdo -mulc,88138.529669 -sellevel,24 era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel24_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel24_"$((common))".nc era5_land_DP_SSE_range24_26_"$((common))".nc
#sellevel26
cdo -mulc,113513.612360 -sellevel,26 era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel26_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel26_"$((common))".nc era5_land_DP_SSE_range26_28_"$((common))".nc
#sellevel28
cdo -mulc,143307.373339 -sellevel,28 era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel28_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel28_"$((common))".nc era5_land_DP_SSE_range28_30_"$((common))".nc
#sellevel30
cdo -mulc,177872.366724 -sellevel,30 era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel30_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel30_"$((common))".nc era5_land_DP_SSE_range30_32_"$((common))".nc
#sellevel32
cdo -mulc,197054.248731 -sellevel,32 era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel32_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel32_"$((common))".nc era5_land_DP_SSE_range32_inf_"$((common))".nc
#enssum
cdo enssum era5_land_DP_SSE_range5.8_8_"$((common))".nc era5_land_DP_SSE_range8_10_"$((common))".nc era5_land_DP_SSE_range10_12_"$((common))".nc era5_land_DP_SSE_range12_14_"$((common))".nc era5_land_DP_SSE_range14_16_"$((common))".nc era5_land_DP_SSE_range16_18_"$((common))".nc era5_land_DP_SSE_range18_20_"$((common))".nc era5_land_DP_SSE_range20_22_"$((common))".nc era5_land_DP_SSE_range22_24_"$((common))".nc era5_land_DP_SSE_range24_26_"$((common))".nc era5_land_DP_SSE_range26_28_"$((common))".nc era5_land_DP_SSE_range28_30_"$((common))".nc era5_land_DP_SSE_range30_32_"$((common))".nc era5_land_DP_SSE_range32_inf_"$((common))".nc era5_land_DP_SSE_range_enssum_"$((common))".nc
#change variable name into DP_SSE, in order to be used in the resultanting
cdo chname,WS,DP_SSE era5_land_DP_SSE_range_enssum_"$((common))".nc era5_land_DP_SSE_range_enssum_chname_"$((common))".nc
#delete intermediate results
rm -f era5_land_WD_ifthen_setvrange_SSE_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SSE_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_setmisstoc_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel5.8_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel8_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel10_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel12_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel14_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel16_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel18_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel20_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel22_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel24_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel26_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel28_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel30_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel32_"$((common))".nc
rm -f era5_land_DP_SSE_range5.8_8_"$((common))".nc
rm -f era5_land_DP_SSE_range8_10_"$((common))".nc
rm -f era5_land_DP_SSE_range10_12_"$((common))".nc
rm -f era5_land_DP_SSE_range12_14_"$((common))".nc
rm -f era5_land_DP_SSE_range14_16_"$((common))".nc
rm -f era5_land_DP_SSE_range16_18_"$((common))".nc
rm -f era5_land_DP_SSE_range18_20_"$((common))".nc
rm -f era5_land_DP_SSE_range20_22_"$((common))".nc
rm -f era5_land_DP_SSE_range22_24_"$((common))".nc
rm -f era5_land_DP_SSE_range24_26_"$((common))".nc
rm -f era5_land_DP_SSE_range26_28_"$((common))".nc
rm -f era5_land_DP_SSE_range28_30_"$((common))".nc
rm -f era5_land_DP_SSE_range30_32_"$((common))".nc
rm -f era5_land_DP_SSE_range32_inf_"$((common))".nc

#S, -180＜S＜-168.75, 168.75≤S≤180, note that here uses setrtomiss
cdo setrtomiss,-168.75,168.7499999 era5_land_WD_ifthen_"$((common))".nc era5_land_WD_ifthen_setrtomiss_S_"$((common))".nc
#mask sand-moving wind speeds in the S azimuth
cdo ifthen era5_land_WD_ifthen_setrtomiss_S_"$((common))".nc era5_land_WS_setrtomiss_"$((common))".nc era5_land_WS_setrtomiss_ifthen_S_"$((common))".nc
#2 m/s bins of sand-moving wind speeds in the S azimuth, 5.8m/s≤WS＜8m/s, 8m/s≤WS＜10m/s, 10m/s≤WS＜12m/s, 12m/s≤WS＜14m/s, 14m/s≤WS＜16m/s, 16m/s≤WS＜18m/s, 18m/s≤WS＜20m/s, 20m/s≤WS＜22m/s, 22m/s≤WS＜24m/s, 24m/s≤WS＜26m/s, 26m/s≤WS＜28m/s, 28m/s≤WS＜30m/s, 30m/s≤WS＜32m/s, 32m/s≤WS
cdo histcount,5.8,7.9999999,9.9999999,11.9999999,13.9999999,15.9999999,17.9999999,19.9999999,21.9999999,23.9999999,25.9999999,27.9999999,29.9999999,31.9999999,inf era5_land_WS_setrtomiss_ifthen_S_"$((common))".nc era5_land_WS_setrtomiss_ifthen_S_histcount_"$((common))".nc
#the sand-moving wind frequency in the S azimuth, 8760 is the total hours for the “$common_year”
cdo divc,8760 era5_land_WS_setrtomiss_ifthen_S_histcount_"$((common))".nc era5_land_WS_setrtomiss_ifthen_S_histcount_divc_"$((common))".nc
#setmisstoc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_S_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_S_histcount_divc_setmisstoc_"$((common))".nc
#mulc
cdo mulc,100 era5_land_WS_setrtomiss_ifthen_S_histcount_divc_setmisstoc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_S_histcount_divc_setmisstoc_mulc_"$((common))".nc
#weighting factor U^2(U-Ut), U is the mean wind speed，and they are 7, 9, 11, 13, 15, 17, 19, 21, 23, 25, 27, 29, 31, 32m/s, respectively; and m/s needs to be conversed into knot. Notably, the value of U^2(U-Ut) is not divided by 100, as its subsquent multiplication represents a demensionless sand-moving wind frequency, rather than a percentage-based sand-moving wind frequency.
#level,5.8 U^2(U-Ut)=(7*3600/1852)*(7*3600/1852)*(7*3600/1852-5.8*3600/1852)=431.878795
#level,8 U^2(U-Ut)=(9*3600/1852)*(9*3600/1852)*(9*3600/1852-5.8*3600/1852)=1903.792241
#level,10 U^2(U-Ut)=(11*3600/1852)*(11*3600/1852)*(11*3600/1852-5.8*3600/1852)=4621.396906
#level,12 U^2(U-Ut)=(13*3600/1852)*(13*3600/1852)*(13*3600/1852-5.8*3600/1852)=8937.246908
#level,14 U^2(U-Ut)=(15*3600/1852)*(15*3600/1852)*(15*3600/1852-5.8*3600/1852)=15203.896368
#level,16 U^2(U-Ut)=(17*3600/1852)*(17*3600/1852)*(17*3600/1852-5.8*3600/1852)=23773.899403
#level,18 U^2(U-Ut)=(19*3600/1852)*(19*3600/1852)*(19*3600/1852-5.8*3600/1852)=34999.810131
#level,20 U^2(U-Ut)=(21*3600/1852)*(21*3600/1852)*(21*3600/1852-5.8*3600/1852)=49234.182673
#level,22 U^2(U-Ut)=(23*3600/1852)*(23*3600/1852)*(23*3600/1852-5.8*3600/1852)=66829.571146
#level,24 U^2(U-Ut)=(25*3600/1852)*(25*3600/1852)*(25*3600/1852-5.8*3600/1852)=88138.529669
#level,26 U^2(U-Ut)=(27*3600/1852)*(27*3600/1852)*(27*3600/1852-5.8*3600/1852)=113513.612360
#level,28 U^2(U-Ut)=(29*3600/1852)*(29*3600/1852)*(29*3600/1852-5.8*3600/1852)=143307.373339
#level,30 U^2(U-Ut)=(31*3600/1852)*(31*3600/1852)*(31*3600/1852-5.8*3600/1852)=177872.366724
#level,32 U^2(U-Ut)=(32*3600/1852)*(32*3600/1852)*(32*3600/1852-5.8*3600/1852)=197054.248731
#1 knot = 1 nautical mile/hour =1852m/hour=1852/3600m/s=0.5144m/s
#sellevel5.8
cdo -mulc,431.878795 -sellevel,5.8 era5_land_WS_setrtomiss_ifthen_S_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel5.8_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel5.8_"$((common))".nc era5_land_DP_S_range5.8_8_"$((common))".nc
#sellevel8
cdo -mulc,1903.792241 -sellevel,8 era5_land_WS_setrtomiss_ifthen_S_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel8_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel8_"$((common))".nc era5_land_DP_S_range8_10_"$((common))".nc
#sellevel10
cdo -mulc,4621.396906 -sellevel,10 era5_land_WS_setrtomiss_ifthen_S_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel10_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel10_"$((common))".nc era5_land_DP_S_range10_12_"$((common))".nc
#sellevel12
cdo -mulc,8937.246908 -sellevel,12 era5_land_WS_setrtomiss_ifthen_S_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel12_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel12_"$((common))".nc era5_land_DP_S_range12_14_"$((common))".nc
#sellevel14
cdo -mulc,15203.896368 -sellevel,14 era5_land_WS_setrtomiss_ifthen_S_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel14_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel14_"$((common))".nc era5_land_DP_S_range14_16_"$((common))".nc
#sellevel16
cdo -mulc,23773.899403 -sellevel,16 era5_land_WS_setrtomiss_ifthen_S_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel16_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel16_"$((common))".nc era5_land_DP_S_range16_18_"$((common))".nc
#sellevel18
cdo -mulc,34999.810131 -sellevel,18 era5_land_WS_setrtomiss_ifthen_S_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel18_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel18_"$((common))".nc era5_land_DP_S_range18_20_"$((common))".nc
#sellevel20
cdo -mulc,49234.182673 -sellevel,20 era5_land_WS_setrtomiss_ifthen_S_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel20_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel20_"$((common))".nc era5_land_DP_S_range20_22_"$((common))".nc
#sellevel22
cdo -mulc,66829.571146 -sellevel,22 era5_land_WS_setrtomiss_ifthen_S_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel22_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel22_"$((common))".nc era5_land_DP_S_range22_24_"$((common))".nc
#sellevel24
cdo -mulc,88138.529669 -sellevel,24 era5_land_WS_setrtomiss_ifthen_S_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel24_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel24_"$((common))".nc era5_land_DP_S_range24_26_"$((common))".nc
#sellevel26
cdo -mulc,113513.612360 -sellevel,26 era5_land_WS_setrtomiss_ifthen_S_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel26_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel26_"$((common))".nc era5_land_DP_S_range26_28_"$((common))".nc
#sellevel28
cdo -mulc,143307.373339 -sellevel,28 era5_land_WS_setrtomiss_ifthen_S_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel28_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel28_"$((common))".nc era5_land_DP_S_range28_30_"$((common))".nc
#sellevel30
cdo -mulc,177872.366724 -sellevel,30 era5_land_WS_setrtomiss_ifthen_S_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel30_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel30_"$((common))".nc era5_land_DP_S_range30_32_"$((common))".nc
#sellevel32
cdo -mulc,197054.248731 -sellevel,32 era5_land_WS_setrtomiss_ifthen_S_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel32_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel32_"$((common))".nc era5_land_DP_S_range32_inf_"$((common))".nc
#enssum
cdo enssum era5_land_DP_S_range5.8_8_"$((common))".nc era5_land_DP_S_range8_10_"$((common))".nc era5_land_DP_S_range10_12_"$((common))".nc era5_land_DP_S_range12_14_"$((common))".nc era5_land_DP_S_range14_16_"$((common))".nc era5_land_DP_S_range16_18_"$((common))".nc era5_land_DP_S_range18_20_"$((common))".nc era5_land_DP_S_range20_22_"$((common))".nc era5_land_DP_S_range22_24_"$((common))".nc era5_land_DP_S_range24_26_"$((common))".nc era5_land_DP_S_range26_28_"$((common))".nc era5_land_DP_S_range28_30_"$((common))".nc era5_land_DP_S_range30_32_"$((common))".nc era5_land_DP_S_range32_inf_"$((common))".nc era5_land_DP_S_range_enssum_"$((common))".nc
#change variable name into DP_S, in order to be used in the resultanting
cdo chname,WS,DP_S era5_land_DP_S_range_enssum_"$((common))".nc era5_land_DP_S_range_enssum_chname_"$((common))".nc
#delete intermediate results
rm -f era5_land_WD_ifthen_setrtomiss_S_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_S_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_S_histcount_divc_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_S_histcount_divc_setmisstoc_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel5.8_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel8_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel10_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel12_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel14_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel16_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel18_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel20_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel22_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel24_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel26_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel28_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel30_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel32_"$((common))".nc
rm -f era5_land_DP_S_range5.8_8_"$((common))".nc
rm -f era5_land_DP_S_range8_10_"$((common))".nc
rm -f era5_land_DP_S_range10_12_"$((common))".nc
rm -f era5_land_DP_S_range12_14_"$((common))".nc
rm -f era5_land_DP_S_range14_16_"$((common))".nc
rm -f era5_land_DP_S_range16_18_"$((common))".nc
rm -f era5_land_DP_S_range18_20_"$((common))".nc
rm -f era5_land_DP_S_range20_22_"$((common))".nc
rm -f era5_land_DP_S_range22_24_"$((common))".nc
rm -f era5_land_DP_S_range24_26_"$((common))".nc
rm -f era5_land_DP_S_range26_28_"$((common))".nc
rm -f era5_land_DP_S_range28_30_"$((common))".nc
rm -f era5_land_DP_S_range30_32_"$((common))".nc
rm -f era5_land_DP_S_range32_inf_"$((common))".nc

#SSW, -168.75≤SSW＜-146.25
cdo setvrange,-168.75,-146.2500001 era5_land_WD_ifthen_"$((common))".nc era5_land_WD_ifthen_setvrange_SSW_"$((common))".nc
#mask sand-moving wind speeds in the SSW azimuth
cdo ifthen era5_land_WD_ifthen_setvrange_SSW_"$((common))".nc era5_land_WS_setrtomiss_"$((common))".nc era5_land_WS_setrtomiss_ifthen_SSW_"$((common))".nc
#2 m/s bins of sand-moving wind speeds in the SSW azimuth, 5.8m/s≤WS＜8m/s, 8m/s≤WS＜10m/s, 10m/s≤WS＜12m/s, 12m/s≤WS＜14m/s, 14m/s≤WS＜16m/s, 16m/s≤WS＜18m/s, 18m/s≤WS＜20m/s, 20m/s≤WS＜22m/s, 22m/s≤WS＜24m/s, 24m/s≤WS＜26m/s, 26m/s≤WS＜28m/s, 28m/s≤WS＜30m/s, 30m/s≤WS＜32m/s, 32m/s≤WS
cdo histcount,5.8,7.9999999,9.9999999,11.9999999,13.9999999,15.9999999,17.9999999,19.9999999,21.9999999,23.9999999,25.9999999,27.9999999,29.9999999,31.9999999,inf era5_land_WS_setrtomiss_ifthen_SSW_"$((common))".nc era5_land_WS_setrtomiss_ifthen_SSW_histcount_"$((common))".nc
#the sand-moving wind frequency in the SSW azimuth, 8760 is the total hours for the “$common_year”
cdo divc,8760 era5_land_WS_setrtomiss_ifthen_SSW_histcount_"$((common))".nc era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_"$((common))".nc
#setmisstoc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_setmisstoc_"$((common))".nc
#mulc
cdo mulc,100 era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_setmisstoc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_setmisstoc_mulc_"$((common))".nc
#weighting factor U^2(U-Ut), U is the mean wind speed，and they are 7, 9, 11, 13, 15, 17, 19, 21, 23, 25, 27, 29, 31, 32m/s, respectively; and m/s needs to be conversed into knot. Notably, the value of U^2(U-Ut) is not divided by 100, as its subsquent multiplication represents a demensionless sand-moving wind frequency, rather than a percentage-based sand-moving wind frequency.
#level,5.8 U^2(U-Ut)=(7*3600/1852)*(7*3600/1852)*(7*3600/1852-5.8*3600/1852)=431.878795
#level,8 U^2(U-Ut)=(9*3600/1852)*(9*3600/1852)*(9*3600/1852-5.8*3600/1852)=1903.792241
#level,10 U^2(U-Ut)=(11*3600/1852)*(11*3600/1852)*(11*3600/1852-5.8*3600/1852)=4621.396906
#level,12 U^2(U-Ut)=(13*3600/1852)*(13*3600/1852)*(13*3600/1852-5.8*3600/1852)=8937.246908
#level,14 U^2(U-Ut)=(15*3600/1852)*(15*3600/1852)*(15*3600/1852-5.8*3600/1852)=15203.896368
#level,16 U^2(U-Ut)=(17*3600/1852)*(17*3600/1852)*(17*3600/1852-5.8*3600/1852)=23773.899403
#level,18 U^2(U-Ut)=(19*3600/1852)*(19*3600/1852)*(19*3600/1852-5.8*3600/1852)=34999.810131
#level,20 U^2(U-Ut)=(21*3600/1852)*(21*3600/1852)*(21*3600/1852-5.8*3600/1852)=49234.182673
#level,22 U^2(U-Ut)=(23*3600/1852)*(23*3600/1852)*(23*3600/1852-5.8*3600/1852)=66829.571146
#level,24 U^2(U-Ut)=(25*3600/1852)*(25*3600/1852)*(25*3600/1852-5.8*3600/1852)=88138.529669
#level,26 U^2(U-Ut)=(27*3600/1852)*(27*3600/1852)*(27*3600/1852-5.8*3600/1852)=113513.612360
#level,28 U^2(U-Ut)=(29*3600/1852)*(29*3600/1852)*(29*3600/1852-5.8*3600/1852)=143307.373339
#level,30 U^2(U-Ut)=(31*3600/1852)*(31*3600/1852)*(31*3600/1852-5.8*3600/1852)=177872.366724
#level,32 U^2(U-Ut)=(32*3600/1852)*(32*3600/1852)*(32*3600/1852-5.8*3600/1852)=197054.248731
#1 knot = 1 nautical mile/hour =1852m/hour=1852/3600m/s=0.5144m/s
#sellevel5.8
cdo -mulc,431.878795 -sellevel,5.8 era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel5.8_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel5.8_"$((common))".nc era5_land_DP_SSW_range5.8_8_"$((common))".nc
#sellevel8
cdo -mulc,1903.792241 -sellevel,8 era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel8_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel8_"$((common))".nc era5_land_DP_SSW_range8_10_"$((common))".nc
#sellevel10
cdo -mulc,4621.396906 -sellevel,10 era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel10_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel10_"$((common))".nc era5_land_DP_SSW_range10_12_"$((common))".nc
#sellevel12
cdo -mulc,8937.246908 -sellevel,12 era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel12_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel12_"$((common))".nc era5_land_DP_SSW_range12_14_"$((common))".nc
#sellevel14
cdo -mulc,15203.896368 -sellevel,14 era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel14_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel14_"$((common))".nc era5_land_DP_SSW_range14_16_"$((common))".nc
#sellevel16
cdo -mulc,23773.899403 -sellevel,16 era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel16_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel16_"$((common))".nc era5_land_DP_SSW_range16_18_"$((common))".nc
#sellevel18
cdo -mulc,34999.810131 -sellevel,18 era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel18_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel18_"$((common))".nc era5_land_DP_SSW_range18_20_"$((common))".nc
#sellevel20
cdo -mulc,49234.182673 -sellevel,20 era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel20_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel20_"$((common))".nc era5_land_DP_SSW_range20_22_"$((common))".nc
#sellevel22
cdo -mulc,66829.571146 -sellevel,22 era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel22_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel22_"$((common))".nc era5_land_DP_SSW_range22_24_"$((common))".nc
#sellevel24
cdo -mulc,88138.529669 -sellevel,24 era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel24_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel24_"$((common))".nc era5_land_DP_SSW_range24_26_"$((common))".nc
#sellevel26
cdo -mulc,113513.612360 -sellevel,26 era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel26_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel26_"$((common))".nc era5_land_DP_SSW_range26_28_"$((common))".nc
#sellevel28
cdo -mulc,143307.373339 -sellevel,28 era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel28_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel28_"$((common))".nc era5_land_DP_SSW_range28_30_"$((common))".nc
#sellevel30
cdo -mulc,177872.366724 -sellevel,30 era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel30_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel30_"$((common))".nc era5_land_DP_SSW_range30_32_"$((common))".nc
#sellevel32
cdo -mulc,197054.248731 -sellevel,32 era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel32_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel32_"$((common))".nc era5_land_DP_SSW_range32_inf_"$((common))".nc
#enssum
cdo enssum era5_land_DP_SSW_range5.8_8_"$((common))".nc era5_land_DP_SSW_range8_10_"$((common))".nc era5_land_DP_SSW_range10_12_"$((common))".nc era5_land_DP_SSW_range12_14_"$((common))".nc era5_land_DP_SSW_range14_16_"$((common))".nc era5_land_DP_SSW_range16_18_"$((common))".nc era5_land_DP_SSW_range18_20_"$((common))".nc era5_land_DP_SSW_range20_22_"$((common))".nc era5_land_DP_SSW_range22_24_"$((common))".nc era5_land_DP_SSW_range24_26_"$((common))".nc era5_land_DP_SSW_range26_28_"$((common))".nc era5_land_DP_SSW_range28_30_"$((common))".nc era5_land_DP_SSW_range30_32_"$((common))".nc era5_land_DP_SSW_range32_inf_"$((common))".nc era5_land_DP_SSW_range_enssum_"$((common))".nc
#change variable name into DP_SSW, in order to be used in the resultanting
cdo chname,WS,DP_SSW era5_land_DP_SSW_range_enssum_"$((common))".nc era5_land_DP_SSW_range_enssum_chname_"$((common))".nc
#delete intermediate results
rm -f era5_land_WD_ifthen_setvrange_SSW_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SSW_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_setmisstoc_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel5.8_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel8_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel10_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel12_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel14_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel16_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel18_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel20_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel22_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel24_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel26_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel28_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel30_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel32_"$((common))".nc
rm -f era5_land_DP_SSW_range5.8_8_"$((common))".nc
rm -f era5_land_DP_SSW_range8_10_"$((common))".nc
rm -f era5_land_DP_SSW_range10_12_"$((common))".nc
rm -f era5_land_DP_SSW_range12_14_"$((common))".nc
rm -f era5_land_DP_SSW_range14_16_"$((common))".nc
rm -f era5_land_DP_SSW_range16_18_"$((common))".nc
rm -f era5_land_DP_SSW_range18_20_"$((common))".nc
rm -f era5_land_DP_SSW_range20_22_"$((common))".nc
rm -f era5_land_DP_SSW_range22_24_"$((common))".nc
rm -f era5_land_DP_SSW_range24_26_"$((common))".nc
rm -f era5_land_DP_SSW_range26_28_"$((common))".nc
rm -f era5_land_DP_SSW_range28_30_"$((common))".nc
rm -f era5_land_DP_SSW_range30_32_"$((common))".nc
rm -f era5_land_DP_SSW_range32_inf_"$((common))".nc

#SW, -146.25≤SW＜-123.75
cdo setvrange,-146.25,-123.7500001 era5_land_WD_ifthen_"$((common))".nc era5_land_WD_ifthen_setvrange_SW_"$((common))".nc
#mask sand-moving wind speeds in the SW azimuth
cdo ifthen era5_land_WD_ifthen_setvrange_SW_"$((common))".nc era5_land_WS_setrtomiss_"$((common))".nc era5_land_WS_setrtomiss_ifthen_SW_"$((common))".nc
#2 m/s bins of sand-moving wind speeds in the SW azimuth, 5.8m/s≤WS＜8m/s, 8m/s≤WS＜10m/s, 10m/s≤WS＜12m/s, 12m/s≤WS＜14m/s, 14m/s≤WS＜16m/s, 16m/s≤WS＜18m/s, 18m/s≤WS＜20m/s, 20m/s≤WS＜22m/s, 22m/s≤WS＜24m/s, 24m/s≤WS＜26m/s, 26m/s≤WS＜28m/s, 28m/s≤WS＜30m/s, 30m/s≤WS＜32m/s, 32m/s≤WS
cdo histcount,5.8,7.9999999,9.9999999,11.9999999,13.9999999,15.9999999,17.9999999,19.9999999,21.9999999,23.9999999,25.9999999,27.9999999,29.9999999,31.9999999,inf era5_land_WS_setrtomiss_ifthen_SW_"$((common))".nc era5_land_WS_setrtomiss_ifthen_SW_histcount_"$((common))".nc
#the sand-moving wind frequency in the SW azimuth, 8760 is the total hours for the “$common_year”
cdo divc,8760 era5_land_WS_setrtomiss_ifthen_SW_histcount_"$((common))".nc era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_"$((common))".nc
#setmisstoc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_setmisstoc_"$((common))".nc
#mulc
cdo mulc,100 era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_setmisstoc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_setmisstoc_mulc_"$((common))".nc
#weighting factor U^2(U-Ut), U is the mean wind speed，and they are 7, 9, 11, 13, 15, 17, 19, 21, 23, 25, 27, 29, 31, 32m/s, respectively; and m/s needs to be conversed into knot. Notably, the value of U^2(U-Ut) is not divided by 100, as its subsquent multiplication represents a demensionless sand-moving wind frequency, rather than a percentage-based sand-moving wind frequency.
#level,5.8 U^2(U-Ut)=(7*3600/1852)*(7*3600/1852)*(7*3600/1852-5.8*3600/1852)=431.878795
#level,8 U^2(U-Ut)=(9*3600/1852)*(9*3600/1852)*(9*3600/1852-5.8*3600/1852)=1903.792241
#level,10 U^2(U-Ut)=(11*3600/1852)*(11*3600/1852)*(11*3600/1852-5.8*3600/1852)=4621.396906
#level,12 U^2(U-Ut)=(13*3600/1852)*(13*3600/1852)*(13*3600/1852-5.8*3600/1852)=8937.246908
#level,14 U^2(U-Ut)=(15*3600/1852)*(15*3600/1852)*(15*3600/1852-5.8*3600/1852)=15203.896368
#level,16 U^2(U-Ut)=(17*3600/1852)*(17*3600/1852)*(17*3600/1852-5.8*3600/1852)=23773.899403
#level,18 U^2(U-Ut)=(19*3600/1852)*(19*3600/1852)*(19*3600/1852-5.8*3600/1852)=34999.810131
#level,20 U^2(U-Ut)=(21*3600/1852)*(21*3600/1852)*(21*3600/1852-5.8*3600/1852)=49234.182673
#level,22 U^2(U-Ut)=(23*3600/1852)*(23*3600/1852)*(23*3600/1852-5.8*3600/1852)=66829.571146
#level,24 U^2(U-Ut)=(25*3600/1852)*(25*3600/1852)*(25*3600/1852-5.8*3600/1852)=88138.529669
#level,26 U^2(U-Ut)=(27*3600/1852)*(27*3600/1852)*(27*3600/1852-5.8*3600/1852)=113513.612360
#level,28 U^2(U-Ut)=(29*3600/1852)*(29*3600/1852)*(29*3600/1852-5.8*3600/1852)=143307.373339
#level,30 U^2(U-Ut)=(31*3600/1852)*(31*3600/1852)*(31*3600/1852-5.8*3600/1852)=177872.366724
#level,32 U^2(U-Ut)=(32*3600/1852)*(32*3600/1852)*(32*3600/1852-5.8*3600/1852)=197054.248731
#1 knot = 1 nautical mile/hour =1852m/hour=1852/3600m/s=0.5144m/s
#sellevel5.8
cdo -mulc,431.878795 -sellevel,5.8 era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel5.8_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel5.8_"$((common))".nc era5_land_DP_SW_range5.8_8_"$((common))".nc
#sellevel8
cdo -mulc,1903.792241 -sellevel,8 era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel8_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel8_"$((common))".nc era5_land_DP_SW_range8_10_"$((common))".nc
#sellevel10
cdo -mulc,4621.396906 -sellevel,10 era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel10_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel10_"$((common))".nc era5_land_DP_SW_range10_12_"$((common))".nc
#sellevel12
cdo -mulc,8937.246908 -sellevel,12 era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel12_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel12_"$((common))".nc era5_land_DP_SW_range12_14_"$((common))".nc
#sellevel14
cdo -mulc,15203.896368 -sellevel,14 era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel14_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel14_"$((common))".nc era5_land_DP_SW_range14_16_"$((common))".nc
#sellevel16
cdo -mulc,23773.899403 -sellevel,16 era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel16_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel16_"$((common))".nc era5_land_DP_SW_range16_18_"$((common))".nc
#sellevel18
cdo -mulc,34999.810131 -sellevel,18 era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel18_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel18_"$((common))".nc era5_land_DP_SW_range18_20_"$((common))".nc
#sellevel20
cdo -mulc,49234.182673 -sellevel,20 era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel20_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel20_"$((common))".nc era5_land_DP_SW_range20_22_"$((common))".nc
#sellevel22
cdo -mulc,66829.571146 -sellevel,22 era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel22_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel22_"$((common))".nc era5_land_DP_SW_range22_24_"$((common))".nc
#sellevel24
cdo -mulc,88138.529669 -sellevel,24 era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel24_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel24_"$((common))".nc era5_land_DP_SW_range24_26_"$((common))".nc
#sellevel26
cdo -mulc,113513.612360 -sellevel,26 era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel26_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel26_"$((common))".nc era5_land_DP_SW_range26_28_"$((common))".nc
#sellevel28
cdo -mulc,143307.373339 -sellevel,28 era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel28_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel28_"$((common))".nc era5_land_DP_SW_range28_30_"$((common))".nc
#sellevel30
cdo -mulc,177872.366724 -sellevel,30 era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel30_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel30_"$((common))".nc era5_land_DP_SW_range30_32_"$((common))".nc
#sellevel32
cdo -mulc,197054.248731 -sellevel,32 era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel32_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel32_"$((common))".nc era5_land_DP_SW_range32_inf_"$((common))".nc
#enssum
cdo enssum era5_land_DP_SW_range5.8_8_"$((common))".nc era5_land_DP_SW_range8_10_"$((common))".nc era5_land_DP_SW_range10_12_"$((common))".nc era5_land_DP_SW_range12_14_"$((common))".nc era5_land_DP_SW_range14_16_"$((common))".nc era5_land_DP_SW_range16_18_"$((common))".nc era5_land_DP_SW_range18_20_"$((common))".nc era5_land_DP_SW_range20_22_"$((common))".nc era5_land_DP_SW_range22_24_"$((common))".nc era5_land_DP_SW_range24_26_"$((common))".nc era5_land_DP_SW_range26_28_"$((common))".nc era5_land_DP_SW_range28_30_"$((common))".nc era5_land_DP_SW_range30_32_"$((common))".nc era5_land_DP_SW_range32_inf_"$((common))".nc era5_land_DP_SW_range_enssum_"$((common))".nc
#change variable name into DP_SW, in order to be used in the resultanting
cdo chname,WS,DP_SW era5_land_DP_SW_range_enssum_"$((common))".nc era5_land_DP_SW_range_enssum_chname_"$((common))".nc
#delete intermediate results
rm -f era5_land_WD_ifthen_setvrange_SW_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SW_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_setmisstoc_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel5.8_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel8_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel10_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel12_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel14_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel16_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel18_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel20_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel22_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel24_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel26_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel28_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel30_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel32_"$((common))".nc
rm -f era5_land_DP_SW_range5.8_8_"$((common))".nc
rm -f era5_land_DP_SW_range8_10_"$((common))".nc
rm -f era5_land_DP_SW_range10_12_"$((common))".nc
rm -f era5_land_DP_SW_range12_14_"$((common))".nc
rm -f era5_land_DP_SW_range14_16_"$((common))".nc
rm -f era5_land_DP_SW_range16_18_"$((common))".nc
rm -f era5_land_DP_SW_range18_20_"$((common))".nc
rm -f era5_land_DP_SW_range20_22_"$((common))".nc
rm -f era5_land_DP_SW_range22_24_"$((common))".nc
rm -f era5_land_DP_SW_range24_26_"$((common))".nc
rm -f era5_land_DP_SW_range26_28_"$((common))".nc
rm -f era5_land_DP_SW_range28_30_"$((common))".nc
rm -f era5_land_DP_SW_range30_32_"$((common))".nc
rm -f era5_land_DP_SW_range32_inf_"$((common))".nc

#WSW, -123.75≤WSW＜-101.25
cdo setvrange,-123.75,-101.2500001 era5_land_WD_ifthen_"$((common))".nc era5_land_WD_ifthen_setvrange_WSW_"$((common))".nc
#mask sand-moving wind speeds in the WSW azimuth
cdo ifthen era5_land_WD_ifthen_setvrange_WSW_"$((common))".nc era5_land_WS_setrtomiss_"$((common))".nc era5_land_WS_setrtomiss_ifthen_WSW_"$((common))".nc
#2 m/s bins of sand-moving wind speeds in the WSW azimuth, 5.8m/s≤WS＜8m/s, 8m/s≤WS＜10m/s, 10m/s≤WS＜12m/s, 12m/s≤WS＜14m/s, 14m/s≤WS＜16m/s, 16m/s≤WS＜18m/s, 18m/s≤WS＜20m/s, 20m/s≤WS＜22m/s, 22m/s≤WS＜24m/s, 24m/s≤WS＜26m/s, 26m/s≤WS＜28m/s, 28m/s≤WS＜30m/s, 30m/s≤WS＜32m/s, 32m/s≤WS
cdo histcount,5.8,7.9999999,9.9999999,11.9999999,13.9999999,15.9999999,17.9999999,19.9999999,21.9999999,23.9999999,25.9999999,27.9999999,29.9999999,31.9999999,inf era5_land_WS_setrtomiss_ifthen_WSW_"$((common))".nc era5_land_WS_setrtomiss_ifthen_WSW_histcount_"$((common))".nc
#the sand-moving wind frequency in the WSW azimuth, 8760 is the total hours for the “$common_year”
cdo divc,8760 era5_land_WS_setrtomiss_ifthen_WSW_histcount_"$((common))".nc era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_"$((common))".nc
#setmisstoc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_setmisstoc_"$((common))".nc
#mulc
cdo mulc,100 era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_setmisstoc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_setmisstoc_mulc_"$((common))".nc
#weighting factor U^2(U-Ut), U is the mean wind speed，and they are 7, 9, 11, 13, 15, 17, 19, 21, 23, 25, 27, 29, 31, 32m/s, respectively; and m/s needs to be conversed into knot. Notably, the value of U^2(U-Ut) is not divided by 100, as its subsquent multiplication represents a demensionless sand-moving wind frequency, rather than a percentage-based sand-moving wind frequency.
#level,5.8 U^2(U-Ut)=(7*3600/1852)*(7*3600/1852)*(7*3600/1852-5.8*3600/1852)=431.878795
#level,8 U^2(U-Ut)=(9*3600/1852)*(9*3600/1852)*(9*3600/1852-5.8*3600/1852)=1903.792241
#level,10 U^2(U-Ut)=(11*3600/1852)*(11*3600/1852)*(11*3600/1852-5.8*3600/1852)=4621.396906
#level,12 U^2(U-Ut)=(13*3600/1852)*(13*3600/1852)*(13*3600/1852-5.8*3600/1852)=8937.246908
#level,14 U^2(U-Ut)=(15*3600/1852)*(15*3600/1852)*(15*3600/1852-5.8*3600/1852)=15203.896368
#level,16 U^2(U-Ut)=(17*3600/1852)*(17*3600/1852)*(17*3600/1852-5.8*3600/1852)=23773.899403
#level,18 U^2(U-Ut)=(19*3600/1852)*(19*3600/1852)*(19*3600/1852-5.8*3600/1852)=34999.810131
#level,20 U^2(U-Ut)=(21*3600/1852)*(21*3600/1852)*(21*3600/1852-5.8*3600/1852)=49234.182673
#level,22 U^2(U-Ut)=(23*3600/1852)*(23*3600/1852)*(23*3600/1852-5.8*3600/1852)=66829.571146
#level,24 U^2(U-Ut)=(25*3600/1852)*(25*3600/1852)*(25*3600/1852-5.8*3600/1852)=88138.529669
#level,26 U^2(U-Ut)=(27*3600/1852)*(27*3600/1852)*(27*3600/1852-5.8*3600/1852)=113513.612360
#level,28 U^2(U-Ut)=(29*3600/1852)*(29*3600/1852)*(29*3600/1852-5.8*3600/1852)=143307.373339
#level,30 U^2(U-Ut)=(31*3600/1852)*(31*3600/1852)*(31*3600/1852-5.8*3600/1852)=177872.366724
#level,32 U^2(U-Ut)=(32*3600/1852)*(32*3600/1852)*(32*3600/1852-5.8*3600/1852)=197054.248731
#1 knot = 1 nautical mile/hour =1852m/hour=1852/3600m/s=0.5144m/s
#sellevel5.8
cdo -mulc,431.878795 -sellevel,5.8 era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel5.8_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel5.8_"$((common))".nc era5_land_DP_WSW_range5.8_8_"$((common))".nc
#sellevel8
cdo -mulc,1903.792241 -sellevel,8 era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel8_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel8_"$((common))".nc era5_land_DP_WSW_range8_10_"$((common))".nc
#sellevel10
cdo -mulc,4621.396906 -sellevel,10 era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel10_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel10_"$((common))".nc era5_land_DP_WSW_range10_12_"$((common))".nc
#sellevel12
cdo -mulc,8937.246908 -sellevel,12 era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel12_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel12_"$((common))".nc era5_land_DP_WSW_range12_14_"$((common))".nc
#sellevel14
cdo -mulc,15203.896368 -sellevel,14 era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel14_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel14_"$((common))".nc era5_land_DP_WSW_range14_16_"$((common))".nc
#sellevel16
cdo -mulc,23773.899403 -sellevel,16 era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel16_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel16_"$((common))".nc era5_land_DP_WSW_range16_18_"$((common))".nc
#sellevel18
cdo -mulc,34999.810131 -sellevel,18 era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel18_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel18_"$((common))".nc era5_land_DP_WSW_range18_20_"$((common))".nc
#sellevel20
cdo -mulc,49234.182673 -sellevel,20 era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel20_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel20_"$((common))".nc era5_land_DP_WSW_range20_22_"$((common))".nc
#sellevel22
cdo -mulc,66829.571146 -sellevel,22 era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel22_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel22_"$((common))".nc era5_land_DP_WSW_range22_24_"$((common))".nc
#sellevel24
cdo -mulc,88138.529669 -sellevel,24 era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel24_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel24_"$((common))".nc era5_land_DP_WSW_range24_26_"$((common))".nc
#sellevel26
cdo -mulc,113513.612360 -sellevel,26 era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel26_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel26_"$((common))".nc era5_land_DP_WSW_range26_28_"$((common))".nc
#sellevel28
cdo -mulc,143307.373339 -sellevel,28 era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel28_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel28_"$((common))".nc era5_land_DP_WSW_range28_30_"$((common))".nc
#sellevel30
cdo -mulc,177872.366724 -sellevel,30 era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel30_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel30_"$((common))".nc era5_land_DP_WSW_range30_32_"$((common))".nc
#sellevel32
cdo -mulc,197054.248731 -sellevel,32 era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel32_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel32_"$((common))".nc era5_land_DP_WSW_range32_inf_"$((common))".nc
#enssum
cdo enssum era5_land_DP_WSW_range5.8_8_"$((common))".nc era5_land_DP_WSW_range8_10_"$((common))".nc era5_land_DP_WSW_range10_12_"$((common))".nc era5_land_DP_WSW_range12_14_"$((common))".nc era5_land_DP_WSW_range14_16_"$((common))".nc era5_land_DP_WSW_range16_18_"$((common))".nc era5_land_DP_WSW_range18_20_"$((common))".nc era5_land_DP_WSW_range20_22_"$((common))".nc era5_land_DP_WSW_range22_24_"$((common))".nc era5_land_DP_WSW_range24_26_"$((common))".nc era5_land_DP_WSW_range26_28_"$((common))".nc era5_land_DP_WSW_range28_30_"$((common))".nc era5_land_DP_WSW_range30_32_"$((common))".nc era5_land_DP_WSW_range32_inf_"$((common))".nc era5_land_DP_WSW_range_enssum_"$((common))".nc
#change variable name into DP_WSW, in order to be used in the resultanting
cdo chname,WS,DP_WSW era5_land_DP_WSW_range_enssum_"$((common))".nc era5_land_DP_WSW_range_enssum_chname_"$((common))".nc
#delete intermediate results
rm -f era5_land_WD_ifthen_setvrange_WSW_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_WSW_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_setmisstoc_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel5.8_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel8_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel10_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel12_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel14_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel16_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel18_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel20_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel22_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel24_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel26_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel28_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel30_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel32_"$((common))".nc
rm -f era5_land_DP_WSW_range5.8_8_"$((common))".nc
rm -f era5_land_DP_WSW_range8_10_"$((common))".nc
rm -f era5_land_DP_WSW_range10_12_"$((common))".nc
rm -f era5_land_DP_WSW_range12_14_"$((common))".nc
rm -f era5_land_DP_WSW_range14_16_"$((common))".nc
rm -f era5_land_DP_WSW_range16_18_"$((common))".nc
rm -f era5_land_DP_WSW_range18_20_"$((common))".nc
rm -f era5_land_DP_WSW_range20_22_"$((common))".nc
rm -f era5_land_DP_WSW_range22_24_"$((common))".nc
rm -f era5_land_DP_WSW_range24_26_"$((common))".nc
rm -f era5_land_DP_WSW_range26_28_"$((common))".nc
rm -f era5_land_DP_WSW_range28_30_"$((common))".nc
rm -f era5_land_DP_WSW_range30_32_"$((common))".nc
rm -f era5_land_DP_WSW_range32_inf_"$((common))".nc

#W, -101.25≤W＜-78.75
cdo setvrange,-101.25,-78.7500001 era5_land_WD_ifthen_"$((common))".nc era5_land_WD_ifthen_setvrange_W_"$((common))".nc
#mask sand-moving wind speeds in the W azimuth
cdo ifthen era5_land_WD_ifthen_setvrange_W_"$((common))".nc era5_land_WS_setrtomiss_"$((common))".nc era5_land_WS_setrtomiss_ifthen_W_"$((common))".nc
#2 m/s bins of sand-moving wind speeds in the W azimuth, 5.8m/s≤WS＜8m/s, 8m/s≤WS＜10m/s, 10m/s≤WS＜12m/s, 12m/s≤WS＜14m/s, 14m/s≤WS＜16m/s, 16m/s≤WS＜18m/s, 18m/s≤WS＜20m/s, 20m/s≤WS＜22m/s, 22m/s≤WS＜24m/s, 24m/s≤WS＜26m/s, 26m/s≤WS＜28m/s, 28m/s≤WS＜30m/s, 30m/s≤WS＜32m/s, 32m/s≤WS
cdo histcount,5.8,7.9999999,9.9999999,11.9999999,13.9999999,15.9999999,17.9999999,19.9999999,21.9999999,23.9999999,25.9999999,27.9999999,29.9999999,31.9999999,inf era5_land_WS_setrtomiss_ifthen_W_"$((common))".nc era5_land_WS_setrtomiss_ifthen_W_histcount_"$((common))".nc
#the sand-moving wind frequency in the W azimuth, 8760 is the total hours for the “$common_year”
cdo divc,8760 era5_land_WS_setrtomiss_ifthen_W_histcount_"$((common))".nc era5_land_WS_setrtomiss_ifthen_W_histcount_divc_"$((common))".nc
#setmisstoc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_W_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_W_histcount_divc_setmisstoc_"$((common))".nc
#mulc
cdo mulc,100 era5_land_WS_setrtomiss_ifthen_W_histcount_divc_setmisstoc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_W_histcount_divc_setmisstoc_mulc_"$((common))".nc
#weighting factor U^2(U-Ut), U is the mean wind speed，and they are 7, 9, 11, 13, 15, 17, 19, 21, 23, 25, 27, 29, 31, 32m/s, respectively; and m/s needs to be conversed into knot. Notably, the value of U^2(U-Ut) is not divided by 100, as its subsquent multiplication represents a demensionless sand-moving wind frequency, rather than a percentage-based sand-moving wind frequency.
#level,5.8 U^2(U-Ut)=(7*3600/1852)*(7*3600/1852)*(7*3600/1852-5.8*3600/1852)=431.878795
#level,8 U^2(U-Ut)=(9*3600/1852)*(9*3600/1852)*(9*3600/1852-5.8*3600/1852)=1903.792241
#level,10 U^2(U-Ut)=(11*3600/1852)*(11*3600/1852)*(11*3600/1852-5.8*3600/1852)=4621.396906
#level,12 U^2(U-Ut)=(13*3600/1852)*(13*3600/1852)*(13*3600/1852-5.8*3600/1852)=8937.246908
#level,14 U^2(U-Ut)=(15*3600/1852)*(15*3600/1852)*(15*3600/1852-5.8*3600/1852)=15203.896368
#level,16 U^2(U-Ut)=(17*3600/1852)*(17*3600/1852)*(17*3600/1852-5.8*3600/1852)=23773.899403
#level,18 U^2(U-Ut)=(19*3600/1852)*(19*3600/1852)*(19*3600/1852-5.8*3600/1852)=34999.810131
#level,20 U^2(U-Ut)=(21*3600/1852)*(21*3600/1852)*(21*3600/1852-5.8*3600/1852)=49234.182673
#level,22 U^2(U-Ut)=(23*3600/1852)*(23*3600/1852)*(23*3600/1852-5.8*3600/1852)=66829.571146
#level,24 U^2(U-Ut)=(25*3600/1852)*(25*3600/1852)*(25*3600/1852-5.8*3600/1852)=88138.529669
#level,26 U^2(U-Ut)=(27*3600/1852)*(27*3600/1852)*(27*3600/1852-5.8*3600/1852)=113513.612360
#level,28 U^2(U-Ut)=(29*3600/1852)*(29*3600/1852)*(29*3600/1852-5.8*3600/1852)=143307.373339
#level,30 U^2(U-Ut)=(31*3600/1852)*(31*3600/1852)*(31*3600/1852-5.8*3600/1852)=177872.366724
#level,32 U^2(U-Ut)=(32*3600/1852)*(32*3600/1852)*(32*3600/1852-5.8*3600/1852)=197054.248731
#1 knot = 1 nautical mile/hour =1852m/hour=1852/3600m/s=0.5144m/s
#sellevel5.8
cdo -mulc,431.878795 -sellevel,5.8 era5_land_WS_setrtomiss_ifthen_W_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel5.8_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel5.8_"$((common))".nc era5_land_DP_W_range5.8_8_"$((common))".nc
#sellevel8
cdo -mulc,1903.792241 -sellevel,8 era5_land_WS_setrtomiss_ifthen_W_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel8_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel8_"$((common))".nc era5_land_DP_W_range8_10_"$((common))".nc
#sellevel10
cdo -mulc,4621.396906 -sellevel,10 era5_land_WS_setrtomiss_ifthen_W_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel10_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel10_"$((common))".nc era5_land_DP_W_range10_12_"$((common))".nc
#sellevel12
cdo -mulc,8937.246908 -sellevel,12 era5_land_WS_setrtomiss_ifthen_W_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel12_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel12_"$((common))".nc era5_land_DP_W_range12_14_"$((common))".nc
#sellevel14
cdo -mulc,15203.896368 -sellevel,14 era5_land_WS_setrtomiss_ifthen_W_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel14_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel14_"$((common))".nc era5_land_DP_W_range14_16_"$((common))".nc
#sellevel16
cdo -mulc,23773.899403 -sellevel,16 era5_land_WS_setrtomiss_ifthen_W_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel16_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel16_"$((common))".nc era5_land_DP_W_range16_18_"$((common))".nc
#sellevel18
cdo -mulc,34999.810131 -sellevel,18 era5_land_WS_setrtomiss_ifthen_W_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel18_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel18_"$((common))".nc era5_land_DP_W_range18_20_"$((common))".nc
#sellevel20
cdo -mulc,49234.182673 -sellevel,20 era5_land_WS_setrtomiss_ifthen_W_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel20_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel20_"$((common))".nc era5_land_DP_W_range20_22_"$((common))".nc
#sellevel22
cdo -mulc,66829.571146 -sellevel,22 era5_land_WS_setrtomiss_ifthen_W_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel22_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel22_"$((common))".nc era5_land_DP_W_range22_24_"$((common))".nc
#sellevel24
cdo -mulc,88138.529669 -sellevel,24 era5_land_WS_setrtomiss_ifthen_W_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel24_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel24_"$((common))".nc era5_land_DP_W_range24_26_"$((common))".nc
#sellevel26
cdo -mulc,113513.612360 -sellevel,26 era5_land_WS_setrtomiss_ifthen_W_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel26_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel26_"$((common))".nc era5_land_DP_W_range26_28_"$((common))".nc
#sellevel28
cdo -mulc,143307.373339 -sellevel,28 era5_land_WS_setrtomiss_ifthen_W_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel28_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel28_"$((common))".nc era5_land_DP_W_range28_30_"$((common))".nc
#sellevel30
cdo -mulc,177872.366724 -sellevel,30 era5_land_WS_setrtomiss_ifthen_W_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel30_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel30_"$((common))".nc era5_land_DP_W_range30_32_"$((common))".nc
#sellevel32
cdo -mulc,197054.248731 -sellevel,32 era5_land_WS_setrtomiss_ifthen_W_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel32_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel32_"$((common))".nc era5_land_DP_W_range32_inf_"$((common))".nc
#enssum
cdo enssum era5_land_DP_W_range5.8_8_"$((common))".nc era5_land_DP_W_range8_10_"$((common))".nc era5_land_DP_W_range10_12_"$((common))".nc era5_land_DP_W_range12_14_"$((common))".nc era5_land_DP_W_range14_16_"$((common))".nc era5_land_DP_W_range16_18_"$((common))".nc era5_land_DP_W_range18_20_"$((common))".nc era5_land_DP_W_range20_22_"$((common))".nc era5_land_DP_W_range22_24_"$((common))".nc era5_land_DP_W_range24_26_"$((common))".nc era5_land_DP_W_range26_28_"$((common))".nc era5_land_DP_W_range28_30_"$((common))".nc era5_land_DP_W_range30_32_"$((common))".nc era5_land_DP_W_range32_inf_"$((common))".nc era5_land_DP_W_range_enssum_"$((common))".nc
#change variable name into DP_W, in order to be used in the resultanting
cdo chname,WS,DP_W era5_land_DP_W_range_enssum_"$((common))".nc era5_land_DP_W_range_enssum_chname_"$((common))".nc
#delete intermediate results
rm -f era5_land_WD_ifthen_setvrange_W_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_W_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_W_histcount_divc_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_W_histcount_divc_setmisstoc_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel5.8_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel8_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel10_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel12_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel14_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel16_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel18_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel20_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel22_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel24_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel26_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel28_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel30_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel32_"$((common))".nc
rm -f era5_land_DP_W_range5.8_8_"$((common))".nc
rm -f era5_land_DP_W_range8_10_"$((common))".nc
rm -f era5_land_DP_W_range10_12_"$((common))".nc
rm -f era5_land_DP_W_range12_14_"$((common))".nc
rm -f era5_land_DP_W_range14_16_"$((common))".nc
rm -f era5_land_DP_W_range16_18_"$((common))".nc
rm -f era5_land_DP_W_range18_20_"$((common))".nc
rm -f era5_land_DP_W_range20_22_"$((common))".nc
rm -f era5_land_DP_W_range22_24_"$((common))".nc
rm -f era5_land_DP_W_range24_26_"$((common))".nc
rm -f era5_land_DP_W_range26_28_"$((common))".nc
rm -f era5_land_DP_W_range28_30_"$((common))".nc
rm -f era5_land_DP_W_range30_32_"$((common))".nc
rm -f era5_land_DP_W_range32_inf_"$((common))".nc

#WNW, -78.75≤WNW＜-56.25
cdo setvrange,-78.75,-56.2500001 era5_land_WD_ifthen_"$((common))".nc era5_land_WD_ifthen_setvrange_WNW_"$((common))".nc
#mask sand-moving wind speeds in the WNW azimuth
cdo ifthen era5_land_WD_ifthen_setvrange_WNW_"$((common))".nc era5_land_WS_setrtomiss_"$((common))".nc era5_land_WS_setrtomiss_ifthen_WNW_"$((common))".nc
#2 m/s bins of sand-moving wind speeds in the WNW azimuth, 5.8m/s≤WS＜8m/s, 8m/s≤WS＜10m/s, 10m/s≤WS＜12m/s, 12m/s≤WS＜14m/s, 14m/s≤WS＜16m/s, 16m/s≤WS＜18m/s, 18m/s≤WS＜20m/s, 20m/s≤WS＜22m/s, 22m/s≤WS＜24m/s, 24m/s≤WS＜26m/s, 26m/s≤WS＜28m/s, 28m/s≤WS＜30m/s, 30m/s≤WS＜32m/s, 32m/s≤WS
cdo histcount,5.8,7.9999999,9.9999999,11.9999999,13.9999999,15.9999999,17.9999999,19.9999999,21.9999999,23.9999999,25.9999999,27.9999999,29.9999999,31.9999999,inf era5_land_WS_setrtomiss_ifthen_WNW_"$((common))".nc era5_land_WS_setrtomiss_ifthen_WNW_histcount_"$((common))".nc
#the sand-moving wind frequency in the WNW azimuth, 8760 is the total hours for the “$common_year”
cdo divc,8760 era5_land_WS_setrtomiss_ifthen_WNW_histcount_"$((common))".nc era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_"$((common))".nc
#setmisstoc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_setmisstoc_"$((common))".nc
#mulc
cdo mulc,100 era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_setmisstoc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_setmisstoc_mulc_"$((common))".nc
#weighting factor U^2(U-Ut), U is the mean wind speed，and they are 7, 9, 11, 13, 15, 17, 19, 21, 23, 25, 27, 29, 31, 32m/s, respectively; and m/s needs to be conversed into knot. Notably, the value of U^2(U-Ut) is not divided by 100, as its subsquent multiplication represents a demensionless sand-moving wind frequency, rather than a percentage-based sand-moving wind frequency.
#level,5.8 U^2(U-Ut)=(7*3600/1852)*(7*3600/1852)*(7*3600/1852-5.8*3600/1852)=431.878795
#level,8 U^2(U-Ut)=(9*3600/1852)*(9*3600/1852)*(9*3600/1852-5.8*3600/1852)=1903.792241
#level,10 U^2(U-Ut)=(11*3600/1852)*(11*3600/1852)*(11*3600/1852-5.8*3600/1852)=4621.396906
#level,12 U^2(U-Ut)=(13*3600/1852)*(13*3600/1852)*(13*3600/1852-5.8*3600/1852)=8937.246908
#level,14 U^2(U-Ut)=(15*3600/1852)*(15*3600/1852)*(15*3600/1852-5.8*3600/1852)=15203.896368
#level,16 U^2(U-Ut)=(17*3600/1852)*(17*3600/1852)*(17*3600/1852-5.8*3600/1852)=23773.899403
#level,18 U^2(U-Ut)=(19*3600/1852)*(19*3600/1852)*(19*3600/1852-5.8*3600/1852)=34999.810131
#level,20 U^2(U-Ut)=(21*3600/1852)*(21*3600/1852)*(21*3600/1852-5.8*3600/1852)=49234.182673
#level,22 U^2(U-Ut)=(23*3600/1852)*(23*3600/1852)*(23*3600/1852-5.8*3600/1852)=66829.571146
#level,24 U^2(U-Ut)=(25*3600/1852)*(25*3600/1852)*(25*3600/1852-5.8*3600/1852)=88138.529669
#level,26 U^2(U-Ut)=(27*3600/1852)*(27*3600/1852)*(27*3600/1852-5.8*3600/1852)=113513.612360
#level,28 U^2(U-Ut)=(29*3600/1852)*(29*3600/1852)*(29*3600/1852-5.8*3600/1852)=143307.373339
#level,30 U^2(U-Ut)=(31*3600/1852)*(31*3600/1852)*(31*3600/1852-5.8*3600/1852)=177872.366724
#level,32 U^2(U-Ut)=(32*3600/1852)*(32*3600/1852)*(32*3600/1852-5.8*3600/1852)=197054.248731
#1 knot = 1 nautical mile/hour =1852m/hour=1852/3600m/s=0.5144m/s
#sellevel5.8
cdo -mulc,431.878795 -sellevel,5.8 era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel5.8_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel5.8_"$((common))".nc era5_land_DP_WNW_range5.8_8_"$((common))".nc
#sellevel8
cdo -mulc,1903.792241 -sellevel,8 era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel8_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel8_"$((common))".nc era5_land_DP_WNW_range8_10_"$((common))".nc
#sellevel10
cdo -mulc,4621.396906 -sellevel,10 era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel10_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel10_"$((common))".nc era5_land_DP_WNW_range10_12_"$((common))".nc
#sellevel12
cdo -mulc,8937.246908 -sellevel,12 era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel12_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel12_"$((common))".nc era5_land_DP_WNW_range12_14_"$((common))".nc
#sellevel14
cdo -mulc,15203.896368 -sellevel,14 era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel14_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel14_"$((common))".nc era5_land_DP_WNW_range14_16_"$((common))".nc
#sellevel16
cdo -mulc,23773.899403 -sellevel,16 era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel16_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel16_"$((common))".nc era5_land_DP_WNW_range16_18_"$((common))".nc
#sellevel18
cdo -mulc,34999.810131 -sellevel,18 era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel18_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel18_"$((common))".nc era5_land_DP_WNW_range18_20_"$((common))".nc
#sellevel20
cdo -mulc,49234.182673 -sellevel,20 era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel20_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel20_"$((common))".nc era5_land_DP_WNW_range20_22_"$((common))".nc
#sellevel22
cdo -mulc,66829.571146 -sellevel,22 era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel22_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel22_"$((common))".nc era5_land_DP_WNW_range22_24_"$((common))".nc
#sellevel24
cdo -mulc,88138.529669 -sellevel,24 era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel24_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel24_"$((common))".nc era5_land_DP_WNW_range24_26_"$((common))".nc
#sellevel26
cdo -mulc,113513.612360 -sellevel,26 era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel26_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel26_"$((common))".nc era5_land_DP_WNW_range26_28_"$((common))".nc
#sellevel28
cdo -mulc,143307.373339 -sellevel,28 era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel28_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel28_"$((common))".nc era5_land_DP_WNW_range28_30_"$((common))".nc
#sellevel30
cdo -mulc,177872.366724 -sellevel,30 era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel30_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel30_"$((common))".nc era5_land_DP_WNW_range30_32_"$((common))".nc
#sellevel32
cdo -mulc,197054.248731 -sellevel,32 era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel32_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel32_"$((common))".nc era5_land_DP_WNW_range32_inf_"$((common))".nc
#enssum
cdo enssum era5_land_DP_WNW_range5.8_8_"$((common))".nc era5_land_DP_WNW_range8_10_"$((common))".nc era5_land_DP_WNW_range10_12_"$((common))".nc era5_land_DP_WNW_range12_14_"$((common))".nc era5_land_DP_WNW_range14_16_"$((common))".nc era5_land_DP_WNW_range16_18_"$((common))".nc era5_land_DP_WNW_range18_20_"$((common))".nc era5_land_DP_WNW_range20_22_"$((common))".nc era5_land_DP_WNW_range22_24_"$((common))".nc era5_land_DP_WNW_range24_26_"$((common))".nc era5_land_DP_WNW_range26_28_"$((common))".nc era5_land_DP_WNW_range28_30_"$((common))".nc era5_land_DP_WNW_range30_32_"$((common))".nc era5_land_DP_WNW_range32_inf_"$((common))".nc era5_land_DP_WNW_range_enssum_"$((common))".nc
#change variable name into DP_WNW, in order to be used in the resultanting
cdo chname,WS,DP_WNW era5_land_DP_WNW_range_enssum_"$((common))".nc era5_land_DP_WNW_range_enssum_chname_"$((common))".nc
#delete intermediate results
rm -f era5_land_WD_ifthen_setvrange_WNW_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_WNW_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_setmisstoc_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel5.8_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel8_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel10_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel12_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel14_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel16_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel18_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel20_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel22_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel24_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel26_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel28_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel30_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel32_"$((common))".nc
rm -f era5_land_DP_WNW_range5.8_8_"$((common))".nc
rm -f era5_land_DP_WNW_range8_10_"$((common))".nc
rm -f era5_land_DP_WNW_range10_12_"$((common))".nc
rm -f era5_land_DP_WNW_range12_14_"$((common))".nc
rm -f era5_land_DP_WNW_range14_16_"$((common))".nc
rm -f era5_land_DP_WNW_range16_18_"$((common))".nc
rm -f era5_land_DP_WNW_range18_20_"$((common))".nc
rm -f era5_land_DP_WNW_range20_22_"$((common))".nc
rm -f era5_land_DP_WNW_range22_24_"$((common))".nc
rm -f era5_land_DP_WNW_range24_26_"$((common))".nc
rm -f era5_land_DP_WNW_range26_28_"$((common))".nc
rm -f era5_land_DP_WNW_range28_30_"$((common))".nc
rm -f era5_land_DP_WNW_range30_32_"$((common))".nc
rm -f era5_land_DP_WNW_range32_inf_"$((common))".nc

#NW, -56.25≤NW＜-33.75
cdo setvrange,-56.25,-33.7500001 era5_land_WD_ifthen_"$((common))".nc era5_land_WD_ifthen_setvrange_NW_"$((common))".nc
#mask sand-moving wind speeds in the NW azimuth
cdo ifthen era5_land_WD_ifthen_setvrange_NW_"$((common))".nc era5_land_WS_setrtomiss_"$((common))".nc era5_land_WS_setrtomiss_ifthen_NW_"$((common))".nc
#2 m/s bins of sand-moving wind speeds in the NW azimuth, 5.8m/s≤WS＜8m/s, 8m/s≤WS＜10m/s, 10m/s≤WS＜12m/s, 12m/s≤WS＜14m/s, 14m/s≤WS＜16m/s, 16m/s≤WS＜18m/s, 18m/s≤WS＜20m/s, 20m/s≤WS＜22m/s, 22m/s≤WS＜24m/s, 24m/s≤WS＜26m/s, 26m/s≤WS＜28m/s, 28m/s≤WS＜30m/s, 30m/s≤WS＜32m/s, 32m/s≤WS
cdo histcount,5.8,7.9999999,9.9999999,11.9999999,13.9999999,15.9999999,17.9999999,19.9999999,21.9999999,23.9999999,25.9999999,27.9999999,29.9999999,31.9999999,inf era5_land_WS_setrtomiss_ifthen_NW_"$((common))".nc era5_land_WS_setrtomiss_ifthen_NW_histcount_"$((common))".nc
#the sand-moving wind frequency in the NW azimuth, 8760 is the total hours for the “$common_year”
cdo divc,8760 era5_land_WS_setrtomiss_ifthen_NW_histcount_"$((common))".nc era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_"$((common))".nc
#setmisstoc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_setmisstoc_"$((common))".nc
#mulc
cdo mulc,100 era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_setmisstoc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_setmisstoc_mulc_"$((common))".nc
#weighting factor U^2(U-Ut), U is the mean wind speed，and they are 7, 9, 11, 13, 15, 17, 19, 21, 23, 25, 27, 29, 31, 32m/s, respectively; and m/s needs to be conversed into knot. Notably, the value of U^2(U-Ut) is not divided by 100, as its subsquent multiplication represents a demensionless sand-moving wind frequency, rather than a percentage-based sand-moving wind frequency.
#level,5.8 U^2(U-Ut)=(7*3600/1852)*(7*3600/1852)*(7*3600/1852-5.8*3600/1852)=431.878795
#level,8 U^2(U-Ut)=(9*3600/1852)*(9*3600/1852)*(9*3600/1852-5.8*3600/1852)=1903.792241
#level,10 U^2(U-Ut)=(11*3600/1852)*(11*3600/1852)*(11*3600/1852-5.8*3600/1852)=4621.396906
#level,12 U^2(U-Ut)=(13*3600/1852)*(13*3600/1852)*(13*3600/1852-5.8*3600/1852)=8937.246908
#level,14 U^2(U-Ut)=(15*3600/1852)*(15*3600/1852)*(15*3600/1852-5.8*3600/1852)=15203.896368
#level,16 U^2(U-Ut)=(17*3600/1852)*(17*3600/1852)*(17*3600/1852-5.8*3600/1852)=23773.899403
#level,18 U^2(U-Ut)=(19*3600/1852)*(19*3600/1852)*(19*3600/1852-5.8*3600/1852)=34999.810131
#level,20 U^2(U-Ut)=(21*3600/1852)*(21*3600/1852)*(21*3600/1852-5.8*3600/1852)=49234.182673
#level,22 U^2(U-Ut)=(23*3600/1852)*(23*3600/1852)*(23*3600/1852-5.8*3600/1852)=66829.571146
#level,24 U^2(U-Ut)=(25*3600/1852)*(25*3600/1852)*(25*3600/1852-5.8*3600/1852)=88138.529669
#level,26 U^2(U-Ut)=(27*3600/1852)*(27*3600/1852)*(27*3600/1852-5.8*3600/1852)=113513.612360
#level,28 U^2(U-Ut)=(29*3600/1852)*(29*3600/1852)*(29*3600/1852-5.8*3600/1852)=143307.373339
#level,30 U^2(U-Ut)=(31*3600/1852)*(31*3600/1852)*(31*3600/1852-5.8*3600/1852)=177872.366724
#level,32 U^2(U-Ut)=(32*3600/1852)*(32*3600/1852)*(32*3600/1852-5.8*3600/1852)=197054.248731
#1 knot = 1 nautical mile/hour =1852m/hour=1852/3600m/s=0.5144m/s
#sellevel5.8
cdo -mulc,431.878795 -sellevel,5.8 era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel5.8_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel5.8_"$((common))".nc era5_land_DP_NW_range5.8_8_"$((common))".nc
#sellevel8
cdo -mulc,1903.792241 -sellevel,8 era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel8_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel8_"$((common))".nc era5_land_DP_NW_range8_10_"$((common))".nc
#sellevel10
cdo -mulc,4621.396906 -sellevel,10 era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel10_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel10_"$((common))".nc era5_land_DP_NW_range10_12_"$((common))".nc
#sellevel12
cdo -mulc,8937.246908 -sellevel,12 era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel12_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel12_"$((common))".nc era5_land_DP_NW_range12_14_"$((common))".nc
#sellevel14
cdo -mulc,15203.896368 -sellevel,14 era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel14_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel14_"$((common))".nc era5_land_DP_NW_range14_16_"$((common))".nc
#sellevel16
cdo -mulc,23773.899403 -sellevel,16 era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel16_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel16_"$((common))".nc era5_land_DP_NW_range16_18_"$((common))".nc
#sellevel18
cdo -mulc,34999.810131 -sellevel,18 era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel18_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel18_"$((common))".nc era5_land_DP_NW_range18_20_"$((common))".nc
#sellevel20
cdo -mulc,49234.182673 -sellevel,20 era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel20_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel20_"$((common))".nc era5_land_DP_NW_range20_22_"$((common))".nc
#sellevel22
cdo -mulc,66829.571146 -sellevel,22 era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel22_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel22_"$((common))".nc era5_land_DP_NW_range22_24_"$((common))".nc
#sellevel24
cdo -mulc,88138.529669 -sellevel,24 era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel24_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel24_"$((common))".nc era5_land_DP_NW_range24_26_"$((common))".nc
#sellevel26
cdo -mulc,113513.612360 -sellevel,26 era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel26_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel26_"$((common))".nc era5_land_DP_NW_range26_28_"$((common))".nc
#sellevel28
cdo -mulc,143307.373339 -sellevel,28 era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel28_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel28_"$((common))".nc era5_land_DP_NW_range28_30_"$((common))".nc
#sellevel30
cdo -mulc,177872.366724 -sellevel,30 era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel30_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel30_"$((common))".nc era5_land_DP_NW_range30_32_"$((common))".nc
#sellevel32
cdo -mulc,197054.248731 -sellevel,32 era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel32_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel32_"$((common))".nc era5_land_DP_NW_range32_inf_"$((common))".nc
#enssum
cdo enssum era5_land_DP_NW_range5.8_8_"$((common))".nc era5_land_DP_NW_range8_10_"$((common))".nc era5_land_DP_NW_range10_12_"$((common))".nc era5_land_DP_NW_range12_14_"$((common))".nc era5_land_DP_NW_range14_16_"$((common))".nc era5_land_DP_NW_range16_18_"$((common))".nc era5_land_DP_NW_range18_20_"$((common))".nc era5_land_DP_NW_range20_22_"$((common))".nc era5_land_DP_NW_range22_24_"$((common))".nc era5_land_DP_NW_range24_26_"$((common))".nc era5_land_DP_NW_range26_28_"$((common))".nc era5_land_DP_NW_range28_30_"$((common))".nc era5_land_DP_NW_range30_32_"$((common))".nc era5_land_DP_NW_range32_inf_"$((common))".nc era5_land_DP_NW_range_enssum_"$((common))".nc
#change variable name into DP_NW, in order to be used in the resultanting
cdo chname,WS,DP_NW era5_land_DP_NW_range_enssum_"$((common))".nc era5_land_DP_NW_range_enssum_chname_"$((common))".nc
#delete intermediate results
rm -f era5_land_WD_ifthen_setvrange_NW_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NW_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_setmisstoc_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel5.8_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel8_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel10_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel12_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel14_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel16_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel18_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel20_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel22_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel24_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel26_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel28_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel30_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel32_"$((common))".nc
rm -f era5_land_DP_NW_range5.8_8_"$((common))".nc
rm -f era5_land_DP_NW_range8_10_"$((common))".nc
rm -f era5_land_DP_NW_range10_12_"$((common))".nc
rm -f era5_land_DP_NW_range12_14_"$((common))".nc
rm -f era5_land_DP_NW_range14_16_"$((common))".nc
rm -f era5_land_DP_NW_range16_18_"$((common))".nc
rm -f era5_land_DP_NW_range18_20_"$((common))".nc
rm -f era5_land_DP_NW_range20_22_"$((common))".nc
rm -f era5_land_DP_NW_range22_24_"$((common))".nc
rm -f era5_land_DP_NW_range24_26_"$((common))".nc
rm -f era5_land_DP_NW_range26_28_"$((common))".nc
rm -f era5_land_DP_NW_range28_30_"$((common))".nc
rm -f era5_land_DP_NW_range30_32_"$((common))".nc
rm -f era5_land_DP_NW_range32_inf_"$((common))".nc

#NNW, -33.75≤NNW＜-11.25
cdo setvrange,-33.75,-11.2500001 era5_land_WD_ifthen_"$((common))".nc era5_land_WD_ifthen_setvrange_NNW_"$((common))".nc
#mask sand-moving wind speeds in the NNW azimuth
cdo ifthen era5_land_WD_ifthen_setvrange_NNW_"$((common))".nc era5_land_WS_setrtomiss_"$((common))".nc era5_land_WS_setrtomiss_ifthen_NNW_"$((common))".nc
#2 m/s bins of sand-moving wind speeds in the NNW azimuth, 5.8m/s≤WS＜8m/s, 8m/s≤WS＜10m/s, 10m/s≤WS＜12m/s, 12m/s≤WS＜14m/s, 14m/s≤WS＜16m/s, 16m/s≤WS＜18m/s, 18m/s≤WS＜20m/s, 20m/s≤WS＜22m/s, 22m/s≤WS＜24m/s, 24m/s≤WS＜26m/s, 26m/s≤WS＜28m/s, 28m/s≤WS＜30m/s, 30m/s≤WS＜32m/s, 32m/s≤WS
cdo histcount,5.8,7.9999999,9.9999999,11.9999999,13.9999999,15.9999999,17.9999999,19.9999999,21.9999999,23.9999999,25.9999999,27.9999999,29.9999999,31.9999999,inf era5_land_WS_setrtomiss_ifthen_NNW_"$((common))".nc era5_land_WS_setrtomiss_ifthen_NNW_histcount_"$((common))".nc
#the sand-moving wind frequency in the NNW azimuth, 8760 is the total hours for the “$common_year”
cdo divc,8760 era5_land_WS_setrtomiss_ifthen_NNW_histcount_"$((common))".nc era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_"$((common))".nc
#setmisstoc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_setmisstoc_"$((common))".nc
#mulc
cdo mulc,100 era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_setmisstoc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_setmisstoc_mulc_"$((common))".nc
#weighting factor U^2(U-Ut), U is the mean wind speed，and they are 7, 9, 11, 13, 15, 17, 19, 21, 23, 25, 27, 29, 31, 32m/s, respectively; and m/s needs to be conversed into knot. Notably, the value of U^2(U-Ut) is not divided by 100, as its subsquent multiplication represents a demensionless sand-moving wind frequency, rather than a percentage-based sand-moving wind frequency.
#level,5.8 U^2(U-Ut)=(7*3600/1852)*(7*3600/1852)*(7*3600/1852-5.8*3600/1852)=431.878795
#level,8 U^2(U-Ut)=(9*3600/1852)*(9*3600/1852)*(9*3600/1852-5.8*3600/1852)=1903.792241
#level,10 U^2(U-Ut)=(11*3600/1852)*(11*3600/1852)*(11*3600/1852-5.8*3600/1852)=4621.396906
#level,12 U^2(U-Ut)=(13*3600/1852)*(13*3600/1852)*(13*3600/1852-5.8*3600/1852)=8937.246908
#level,14 U^2(U-Ut)=(15*3600/1852)*(15*3600/1852)*(15*3600/1852-5.8*3600/1852)=15203.896368
#level,16 U^2(U-Ut)=(17*3600/1852)*(17*3600/1852)*(17*3600/1852-5.8*3600/1852)=23773.899403
#level,18 U^2(U-Ut)=(19*3600/1852)*(19*3600/1852)*(19*3600/1852-5.8*3600/1852)=34999.810131
#level,20 U^2(U-Ut)=(21*3600/1852)*(21*3600/1852)*(21*3600/1852-5.8*3600/1852)=49234.182673
#level,22 U^2(U-Ut)=(23*3600/1852)*(23*3600/1852)*(23*3600/1852-5.8*3600/1852)=66829.571146
#level,24 U^2(U-Ut)=(25*3600/1852)*(25*3600/1852)*(25*3600/1852-5.8*3600/1852)=88138.529669
#level,26 U^2(U-Ut)=(27*3600/1852)*(27*3600/1852)*(27*3600/1852-5.8*3600/1852)=113513.612360
#level,28 U^2(U-Ut)=(29*3600/1852)*(29*3600/1852)*(29*3600/1852-5.8*3600/1852)=143307.373339
#level,30 U^2(U-Ut)=(31*3600/1852)*(31*3600/1852)*(31*3600/1852-5.8*3600/1852)=177872.366724
#level,32 U^2(U-Ut)=(32*3600/1852)*(32*3600/1852)*(32*3600/1852-5.8*3600/1852)=197054.248731
#1 knot = 1 nautical mile/hour =1852m/hour=1852/3600m/s=0.5144m/s
#sellevel5.8
cdo -mulc,431.878795 -sellevel,5.8 era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel5.8_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel5.8_"$((common))".nc era5_land_DP_NNW_range5.8_8_"$((common))".nc
#sellevel8
cdo -mulc,1903.792241 -sellevel,8 era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel8_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel8_"$((common))".nc era5_land_DP_NNW_range8_10_"$((common))".nc
#sellevel10
cdo -mulc,4621.396906 -sellevel,10 era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel10_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel10_"$((common))".nc era5_land_DP_NNW_range10_12_"$((common))".nc
#sellevel12
cdo -mulc,8937.246908 -sellevel,12 era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel12_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel12_"$((common))".nc era5_land_DP_NNW_range12_14_"$((common))".nc
#sellevel14
cdo -mulc,15203.896368 -sellevel,14 era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel14_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel14_"$((common))".nc era5_land_DP_NNW_range14_16_"$((common))".nc
#sellevel16
cdo -mulc,23773.899403 -sellevel,16 era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel16_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel16_"$((common))".nc era5_land_DP_NNW_range16_18_"$((common))".nc
#sellevel18
cdo -mulc,34999.810131 -sellevel,18 era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel18_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel18_"$((common))".nc era5_land_DP_NNW_range18_20_"$((common))".nc
#sellevel20
cdo -mulc,49234.182673 -sellevel,20 era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel20_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel20_"$((common))".nc era5_land_DP_NNW_range20_22_"$((common))".nc
#sellevel22
cdo -mulc,66829.571146 -sellevel,22 era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel22_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel22_"$((common))".nc era5_land_DP_NNW_range22_24_"$((common))".nc
#sellevel24
cdo -mulc,88138.529669 -sellevel,24 era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel24_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel24_"$((common))".nc era5_land_DP_NNW_range24_26_"$((common))".nc
#sellevel26
cdo -mulc,113513.612360 -sellevel,26 era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel26_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel26_"$((common))".nc era5_land_DP_NNW_range26_28_"$((common))".nc
#sellevel28
cdo -mulc,143307.373339 -sellevel,28 era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel28_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel28_"$((common))".nc era5_land_DP_NNW_range28_30_"$((common))".nc
#sellevel30
cdo -mulc,177872.366724 -sellevel,30 era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel30_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel30_"$((common))".nc era5_land_DP_NNW_range30_32_"$((common))".nc
#sellevel32
cdo -mulc,197054.248731 -sellevel,32 era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_"$((common))".nc era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel32_"$((common))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel32_"$((common))".nc era5_land_DP_NNW_range32_inf_"$((common))".nc
#enssum
cdo enssum era5_land_DP_NNW_range5.8_8_"$((common))".nc era5_land_DP_NNW_range8_10_"$((common))".nc era5_land_DP_NNW_range10_12_"$((common))".nc era5_land_DP_NNW_range12_14_"$((common))".nc era5_land_DP_NNW_range14_16_"$((common))".nc era5_land_DP_NNW_range16_18_"$((common))".nc era5_land_DP_NNW_range18_20_"$((common))".nc era5_land_DP_NNW_range20_22_"$((common))".nc era5_land_DP_NNW_range22_24_"$((common))".nc era5_land_DP_NNW_range24_26_"$((common))".nc era5_land_DP_NNW_range26_28_"$((common))".nc era5_land_DP_NNW_range28_30_"$((common))".nc era5_land_DP_NNW_range30_32_"$((common))".nc era5_land_DP_NNW_range32_inf_"$((common))".nc era5_land_DP_NNW_range_enssum_"$((common))".nc
#change variable name into DP_NNW, in order to be used in the resultanting
cdo chname,WS,DP_NNW era5_land_DP_NNW_range_enssum_"$((common))".nc era5_land_DP_NNW_range_enssum_chname_"$((common))".nc
#delete intermediate results
rm -f era5_land_WD_ifthen_setvrange_NNW_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NNW_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_setmisstoc_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel5.8_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel8_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel10_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel12_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel14_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel16_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel18_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel20_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel22_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel24_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel26_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel28_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel30_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel32_"$((common))".nc
rm -f era5_land_DP_NNW_range5.8_8_"$((common))".nc
rm -f era5_land_DP_NNW_range8_10_"$((common))".nc
rm -f era5_land_DP_NNW_range10_12_"$((common))".nc
rm -f era5_land_DP_NNW_range12_14_"$((common))".nc
rm -f era5_land_DP_NNW_range14_16_"$((common))".nc
rm -f era5_land_DP_NNW_range16_18_"$((common))".nc
rm -f era5_land_DP_NNW_range18_20_"$((common))".nc
rm -f era5_land_DP_NNW_range20_22_"$((common))".nc
rm -f era5_land_DP_NNW_range22_24_"$((common))".nc
rm -f era5_land_DP_NNW_range24_26_"$((common))".nc
rm -f era5_land_DP_NNW_range26_28_"$((common))".nc
rm -f era5_land_DP_NNW_range28_30_"$((common))".nc
rm -f era5_land_DP_NNW_range30_32_"$((common))".nc
rm -f era5_land_DP_NNW_range32_inf_"$((common))".nc

#calculate DP，add up the DPs in the N, NNE, NE, ENE, E, ESE, SE, SSE, S, SSW, SW, WSW, W, WNW, NW, NNW azimuth
cdo enssum era5_land_DP_N_range_enssum_"$((common))".nc era5_land_DP_NNE_range_enssum_"$((common))".nc era5_land_DP_NE_range_enssum_"$((common))".nc era5_land_DP_ENE_range_enssum_"$((common))".nc era5_land_DP_E_range_enssum_"$((common))".nc era5_land_DP_ESE_range_enssum_"$((common))".nc era5_land_DP_SE_range_enssum_"$((common))".nc era5_land_DP_SSE_range_enssum_"$((common))".nc era5_land_DP_S_range_enssum_"$((common))".nc era5_land_DP_SSW_range_enssum_"$((common))".nc era5_land_DP_SW_range_enssum_"$((common))".nc era5_land_DP_WSW_range_enssum_"$((common))".nc era5_land_DP_W_range_enssum_"$((common))".nc era5_land_DP_WNW_range_enssum_"$((common))".nc era5_land_DP_NW_range_enssum_"$((common))".nc era5_land_DP_NNW_range_enssum_"$((common))".nc era5_land_DP_range_enssum_"$((common))".nc
#change variable name into DP, in order to be used in the resultanting
cdo chname,WS,DP era5_land_DP_range_enssum_"$((common))".nc era5_land_DP_"$((common))".nc

#merge the nc files with new variable names from 16 azimuth, and form the new nc file
cdo merge era5_land_DP_N_range_enssum_chname_"$((common))".nc era5_land_DP_NNE_range_enssum_chname_"$((common))".nc era5_land_DP_NE_range_enssum_chname_"$((common))".nc era5_land_DP_ENE_range_enssum_chname_"$((common))".nc era5_land_DP_E_range_enssum_chname_"$((common))".nc era5_land_DP_ESE_range_enssum_chname_"$((common))".nc era5_land_DP_SE_range_enssum_chname_"$((common))".nc era5_land_DP_SSE_range_enssum_chname_"$((common))".nc era5_land_DP_S_range_enssum_chname_"$((common))".nc era5_land_DP_SSW_range_enssum_chname_"$((common))".nc era5_land_DP_SW_range_enssum_chname_"$((common))".nc era5_land_DP_WSW_range_enssum_chname_"$((common))".nc era5_land_DP_W_range_enssum_chname_"$((common))".nc era5_land_DP_WNW_range_enssum_chname_"$((common))".nc era5_land_DP_NW_range_enssum_chname_"$((common))".nc era5_land_DP_NNW_range_enssum_chname_"$((common))".nc era5_land_DP_Azimuthal_"$((common))".nc 

#Σ component of RDP in the due-north direction, calculating process is ΣN=N-S+(NE+NW-SE-SW)*0.7071068+(NNE+NNW-SSW-SSE)*0.9238795+(WNW+ENE-WSW-ESE)*0.3826834
cdo expr,'RDP_N=DP_N-DP_S+(DP_NE+DP_NW-DP_SE-DP_SW)*0.7071068+(DP_NNE+DP_NNW-DP_SSW-DP_SSE)*0.9238795+(DP_WNW+DP_ENE-DP_WSW-DP_ESE)*0.3826834;' era5_land_DP_Azimuthal_"$((common))".nc era5_land_RDP_N_"$((common))".nc 

#Σ component of RDP in the due-east direction, calculating process is ΣE=E-W+(NE+SE-NW-SW)*0.7071068+(ESE+ENE-WNW-WSW)*0.9238795+(NNE+SSE-SSW-NNW)*0.3826834
cdo expr,'RDP_E=DP_E-DP_W+(DP_NE+DP_SE-DP_NW-DP_SW)*0.7071068+(DP_ESE+DP_ENE-DP_WNW-DP_WSW)*0.9238795+(DP_NNE+DP_SSE-DP_SSW-DP_NNW)*0.3826834;' era5_land_DP_Azimuthal_"$((common))".nc era5_land_RDP_E_"$((common))".nc

#calculate RDP, Resultant Drift Potential
cdo -chname,RDP_E,RDP -sqrt -add -sqr -selname,RDP_E era5_land_RDP_E_"$((common))".nc -sqr -selname,RDP_N  era5_land_RDP_N_"$((common))".nc era5_land_RDP_"$((common))".nc

#calculate RDD, Resultant Drift Direction
cdo -chname,RDP_E,RDD -addc,180 -mulc,57.2957805 -atan2 era5_land_RDP_E_"$((common))".nc era5_land_RDP_N_"$((common))".nc era5_land_RDD_"$((common))".nc

#calculate RDP/DP，WDV, Wind Direction Variablity
cdo div era5_land_RDP_"$((common))".nc era5_land_DP_"$((common))".nc era5_land_WDV_"$((common))".nc

#finally, delete intermediate results, retain needed results
rm -f era5_land_DP_N_range_enssum_"$((common))".nc
rm -f era5_land_DP_NNE_range_enssum_"$((common))".nc
rm -f era5_land_DP_NE_range_enssum_"$((common))".nc
rm -f era5_land_DP_ENE_range_enssum_"$((common))".nc
rm -f era5_land_DP_E_range_enssum_"$((common))".nc
rm -f era5_land_DP_ESE_range_enssum_"$((common))".nc
rm -f era5_land_DP_SE_range_enssum_"$((common))".nc
rm -f era5_land_DP_SSE_range_enssum_"$((common))".nc
rm -f era5_land_DP_S_range_enssum_"$((common))".nc
rm -f era5_land_DP_SSW_range_enssum_"$((common))".nc
rm -f era5_land_DP_SW_range_enssum_"$((common))".nc
rm -f era5_land_DP_WSW_range_enssum_"$((common))".nc
rm -f era5_land_DP_W_range_enssum_"$((common))".nc
rm -f era5_land_DP_WNW_range_enssum_"$((common))".nc
rm -f era5_land_DP_NW_range_enssum_"$((common))".nc
rm -f era5_land_DP_NNW_range_enssum_"$((common))".nc
rm -f era5_land_DP_range_enssum_"$((common))".nc
rm -f era5_land_DP_N_range_enssum_chname_"$((common))".nc
rm -f era5_land_DP_NNE_range_enssum_chname_"$((common))".nc
rm -f era5_land_DP_NE_range_enssum_chname_"$((common))".nc
rm -f era5_land_DP_ENE_range_enssum_chname_"$((common))".nc
rm -f era5_land_DP_E_range_enssum_chname_"$((common))".nc
rm -f era5_land_DP_ESE_range_enssum_chname_"$((common))".nc
rm -f era5_land_DP_SE_range_enssum_chname_"$((common))".nc
rm -f era5_land_DP_SSE_range_enssum_chname_"$((common))".nc
rm -f era5_land_DP_S_range_enssum_chname_"$((common))".nc
rm -f era5_land_DP_SSW_range_enssum_chname_"$((common))".nc
rm -f era5_land_DP_SW_range_enssum_chname_"$((common))".nc
rm -f era5_land_DP_WSW_range_enssum_chname_"$((common))".nc
rm -f era5_land_DP_W_range_enssum_chname_"$((common))".nc
rm -f era5_land_DP_WNW_range_enssum_chname_"$((common))".nc
rm -f era5_land_DP_NW_range_enssum_chname_"$((common))".nc
rm -f era5_land_DP_NNW_range_enssum_chname_"$((common))".nc

#delete
rm -f era5_land_WD_ifthen_"$((common))".nc
rm -f era5_land_WS_setrtomiss_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_E_histcount_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_E_histcount_divc_setmisstoc_mulc_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_ENE_histcount_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_setmisstoc_mulc_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_ESE_histcount_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_setmisstoc_mulc_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_N_histcount_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_N_histcount_divc_setmisstoc_mulc_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NE_histcount_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_setmisstoc_mulc_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NNE_histcount_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_setmisstoc_mulc_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NNW_histcount_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_setmisstoc_mulc_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NW_histcount_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_setmisstoc_mulc_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_S_histcount_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_S_histcount_divc_setmisstoc_mulc_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SE_histcount_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_setmisstoc_mulc_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SSE_histcount_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_setmisstoc_mulc_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SSW_histcount_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_setmisstoc_mulc_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SW_histcount_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_setmisstoc_mulc_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_W_histcount_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_W_histcount_divc_setmisstoc_mulc_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_WNW_histcount_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_setmisstoc_mulc_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_WSW_histcount_"$((common))".nc
rm -f era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_setmisstoc_mulc_"$((common))".nc


done



#leap_year
for ((leap=1950; leap<=2023;++leap))
do
   echo $leap
   

#M"$((leap))"
cd /home/ligs/Storage/era5_land_hourly/leap_year/M"$((leap))"

#"$((leap))"01
#calculate wind speed
cdo -b 32 -chname,u10,WS -sqrt -add -sqr -selname,u10 era5_land_hourly_10m_u_component_of_wind_"$((leap))"01.nc -sqr -selname,v10 era5_land_hourly_10m_v_component_of_wind_"$((leap))"01.nc era5_land_WS_"$((leap))"01.nc
#calculate wind direction
cdo -b 32 -chname,u10,WD -mulc,57.2957805 -atan2 -mulc,-1 era5_land_hourly_10m_u_component_of_wind_"$((leap))"01.nc -mulc,-1 era5_land_hourly_10m_v_component_of_wind_"$((leap))"01.nc era5_land_WD_"$((leap))"01.nc
#mask sand-moving wind speeds, ≥5.8m/s
cdo setrtomiss,0,5.7999999 era5_land_WS_"$((leap))"01.nc era5_land_WS_setrtomiss_"$((leap))"01.nc
#mask all the wind directions of corresponding sand-moving wind speeds, the sand-moving wind direction
cdo ifthen era5_land_WS_setrtomiss_"$((leap))"01.nc era5_land_WD_"$((leap))"01.nc era5_land_WD_ifthen_"$((leap))"01.nc
#delete intermediate results
rm -f era5_land_WS_"$((leap))"01.nc
rm -f era5_land_WD_"$((leap))"01.nc

#"$((leap))"02
#calculate wind speed
cdo -b 32 -chname,u10,WS -sqrt -add -sqr -selname,u10 era5_land_hourly_10m_u_component_of_wind_"$((leap))"02.nc -sqr -selname,v10 era5_land_hourly_10m_v_component_of_wind_"$((leap))"02.nc era5_land_WS_"$((leap))"02.nc
#calculate wind direction
cdo -b 32 -chname,u10,WD -mulc,57.2957805 -atan2 -mulc,-1 era5_land_hourly_10m_u_component_of_wind_"$((leap))"02.nc -mulc,-1 era5_land_hourly_10m_v_component_of_wind_"$((leap))"02.nc era5_land_WD_"$((leap))"02.nc
#mask sand-moving wind speeds, ≥5.8m/s
cdo setrtomiss,0,5.7999999 era5_land_WS_"$((leap))"02.nc era5_land_WS_setrtomiss_"$((leap))"02.nc
#mask all the wind directions of corresponding sand-moving wind speeds, the sand-moving wind direction
cdo ifthen era5_land_WS_setrtomiss_"$((leap))"02.nc era5_land_WD_"$((leap))"02.nc era5_land_WD_ifthen_"$((leap))"02.nc
#delete intermediate results
rm -f era5_land_WS_"$((leap))"02.nc
rm -f era5_land_WD_"$((leap))"02.nc

#"$((leap))"03
#calculate wind speed
cdo -b 32 -chname,u10,WS -sqrt -add -sqr -selname,u10 era5_land_hourly_10m_u_component_of_wind_"$((leap))"03.nc -sqr -selname,v10 era5_land_hourly_10m_v_component_of_wind_"$((leap))"03.nc era5_land_WS_"$((leap))"03.nc
#calculate wind direction
cdo -b 32 -chname,u10,WD -mulc,57.2957805 -atan2 -mulc,-1 era5_land_hourly_10m_u_component_of_wind_"$((leap))"03.nc -mulc,-1 era5_land_hourly_10m_v_component_of_wind_"$((leap))"03.nc era5_land_WD_"$((leap))"03.nc
#mask sand-moving wind speeds, ≥5.8m/s
cdo setrtomiss,0,5.7999999 era5_land_WS_"$((leap))"03.nc era5_land_WS_setrtomiss_"$((leap))"03.nc
#mask all the wind directions of corresponding sand-moving wind speeds, the sand-moving wind direction
cdo ifthen era5_land_WS_setrtomiss_"$((leap))"03.nc era5_land_WD_"$((leap))"03.nc era5_land_WD_ifthen_"$((leap))"03.nc
#delete intermediate results
rm -f era5_land_WS_"$((leap))"03.nc
rm -f era5_land_WD_"$((leap))"03.nc

#"$((leap))"04
#calculate wind speed
cdo -b 32 -chname,u10,WS -sqrt -add -sqr -selname,u10 era5_land_hourly_10m_u_component_of_wind_"$((leap))"04.nc -sqr -selname,v10 era5_land_hourly_10m_v_component_of_wind_"$((leap))"04.nc era5_land_WS_"$((leap))"04.nc
#calculate wind direction
cdo -b 32 -chname,u10,WD -mulc,57.2957805 -atan2 -mulc,-1 era5_land_hourly_10m_u_component_of_wind_"$((leap))"04.nc -mulc,-1 era5_land_hourly_10m_v_component_of_wind_"$((leap))"04.nc era5_land_WD_"$((leap))"04.nc
#mask sand-moving wind speeds, ≥5.8m/s
cdo setrtomiss,0,5.7999999 era5_land_WS_"$((leap))"04.nc era5_land_WS_setrtomiss_"$((leap))"04.nc
#mask all the wind directions of corresponding sand-moving wind speeds, the sand-moving wind direction
cdo ifthen era5_land_WS_setrtomiss_"$((leap))"04.nc era5_land_WD_"$((leap))"04.nc era5_land_WD_ifthen_"$((leap))"04.nc
#delete intermediate results
rm -f era5_land_WS_"$((leap))"04.nc
rm -f era5_land_WD_"$((leap))"04.nc

#"$((leap))"05
#calculate wind speed
cdo -b 32 -chname,u10,WS -sqrt -add -sqr -selname,u10 era5_land_hourly_10m_u_component_of_wind_"$((leap))"05.nc -sqr -selname,v10 era5_land_hourly_10m_v_component_of_wind_"$((leap))"05.nc era5_land_WS_"$((leap))"05.nc
#calculate wind direction
cdo -b 32 -chname,u10,WD -mulc,57.2957805 -atan2 -mulc,-1 era5_land_hourly_10m_u_component_of_wind_"$((leap))"05.nc -mulc,-1 era5_land_hourly_10m_v_component_of_wind_"$((leap))"05.nc era5_land_WD_"$((leap))"05.nc
#mask sand-moving wind speeds, ≥5.8m/s
cdo setrtomiss,0,5.7999999 era5_land_WS_"$((leap))"05.nc era5_land_WS_setrtomiss_"$((leap))"05.nc
#mask all the wind directions of corresponding sand-moving wind speeds, the sand-moving wind direction
cdo ifthen era5_land_WS_setrtomiss_"$((leap))"05.nc era5_land_WD_"$((leap))"05.nc era5_land_WD_ifthen_"$((leap))"05.nc
#delete intermediate results
rm -f era5_land_WS_"$((leap))"05.nc
rm -f era5_land_WD_"$((leap))"05.nc

#"$((leap))"06
#calculate wind speed
cdo -b 32 -chname,u10,WS -sqrt -add -sqr -selname,u10 era5_land_hourly_10m_u_component_of_wind_"$((leap))"06.nc -sqr -selname,v10 era5_land_hourly_10m_v_component_of_wind_"$((leap))"06.nc era5_land_WS_"$((leap))"06.nc
#calculate wind direction
cdo -b 32 -chname,u10,WD -mulc,57.2957805 -atan2 -mulc,-1 era5_land_hourly_10m_u_component_of_wind_"$((leap))"06.nc -mulc,-1 era5_land_hourly_10m_v_component_of_wind_"$((leap))"06.nc era5_land_WD_"$((leap))"06.nc
#mask sand-moving wind speeds, ≥5.8m/s
cdo setrtomiss,0,5.7999999 era5_land_WS_"$((leap))"06.nc era5_land_WS_setrtomiss_"$((leap))"06.nc
#mask all the wind directions of corresponding sand-moving wind speeds, the sand-moving wind direction
cdo ifthen era5_land_WS_setrtomiss_"$((leap))"06.nc era5_land_WD_"$((leap))"06.nc era5_land_WD_ifthen_"$((leap))"06.nc
#delete intermediate results
rm -f era5_land_WS_"$((leap))"06.nc
rm -f era5_land_WD_"$((leap))"06.nc

#"$((leap))"07
#calculate wind speed
cdo -b 32 -chname,u10,WS -sqrt -add -sqr -selname,u10 era5_land_hourly_10m_u_component_of_wind_"$((leap))"07.nc -sqr -selname,v10 era5_land_hourly_10m_v_component_of_wind_"$((leap))"07.nc era5_land_WS_"$((leap))"07.nc
#calculate wind direction
cdo -b 32 -chname,u10,WD -mulc,57.2957805 -atan2 -mulc,-1 era5_land_hourly_10m_u_component_of_wind_"$((leap))"07.nc -mulc,-1 era5_land_hourly_10m_v_component_of_wind_"$((leap))"07.nc era5_land_WD_"$((leap))"07.nc
#mask sand-moving wind speeds, ≥5.8m/s
cdo setrtomiss,0,5.7999999 era5_land_WS_"$((leap))"07.nc era5_land_WS_setrtomiss_"$((leap))"07.nc
#mask all the wind directions of corresponding sand-moving wind speeds, the sand-moving wind direction
cdo ifthen era5_land_WS_setrtomiss_"$((leap))"07.nc era5_land_WD_"$((leap))"07.nc era5_land_WD_ifthen_"$((leap))"07.nc
#delete intermediate results
rm -f era5_land_WS_"$((leap))"07.nc
rm -f era5_land_WD_"$((leap))"07.nc

#"$((leap))"08
#calculate wind speed
cdo -b 32 -chname,u10,WS -sqrt -add -sqr -selname,u10 era5_land_hourly_10m_u_component_of_wind_"$((leap))"08.nc -sqr -selname,v10 era5_land_hourly_10m_v_component_of_wind_"$((leap))"08.nc era5_land_WS_"$((leap))"08.nc
#calculate wind direction
cdo -b 32 -chname,u10,WD -mulc,57.2957805 -atan2 -mulc,-1 era5_land_hourly_10m_u_component_of_wind_"$((leap))"08.nc -mulc,-1 era5_land_hourly_10m_v_component_of_wind_"$((leap))"08.nc era5_land_WD_"$((leap))"08.nc
#mask sand-moving wind speeds, ≥5.8m/s
cdo setrtomiss,0,5.7999999 era5_land_WS_"$((leap))"08.nc era5_land_WS_setrtomiss_"$((leap))"08.nc
#mask all the wind directions of corresponding sand-moving wind speeds, the sand-moving wind direction
cdo ifthen era5_land_WS_setrtomiss_"$((leap))"08.nc era5_land_WD_"$((leap))"08.nc era5_land_WD_ifthen_"$((leap))"08.nc
#delete intermediate results
rm -f era5_land_WS_"$((leap))"08.nc
rm -f era5_land_WD_"$((leap))"08.nc

#"$((leap))"09
#calculate wind speed
cdo -b 32 -chname,u10,WS -sqrt -add -sqr -selname,u10 era5_land_hourly_10m_u_component_of_wind_"$((leap))"09.nc -sqr -selname,v10 era5_land_hourly_10m_v_component_of_wind_"$((leap))"09.nc era5_land_WS_"$((leap))"09.nc
#calculate wind direction
cdo -b 32 -chname,u10,WD -mulc,57.2957805 -atan2 -mulc,-1 era5_land_hourly_10m_u_component_of_wind_"$((leap))"09.nc -mulc,-1 era5_land_hourly_10m_v_component_of_wind_"$((leap))"09.nc era5_land_WD_"$((leap))"09.nc
#mask sand-moving wind speeds, ≥5.8m/s
cdo setrtomiss,0,5.7999999 era5_land_WS_"$((leap))"09.nc era5_land_WS_setrtomiss_"$((leap))"09.nc
#mask all the wind directions of corresponding sand-moving wind speeds, the sand-moving wind direction
cdo ifthen era5_land_WS_setrtomiss_"$((leap))"09.nc era5_land_WD_"$((leap))"09.nc era5_land_WD_ifthen_"$((leap))"09.nc
#delete intermediate results
rm -f era5_land_WS_"$((leap))"09.nc
rm -f era5_land_WD_"$((leap))"09.nc

#"$((leap))"10
#calculate wind speed
cdo -b 32 -chname,u10,WS -sqrt -add -sqr -selname,u10 era5_land_hourly_10m_u_component_of_wind_"$((leap))"10.nc -sqr -selname,v10 era5_land_hourly_10m_v_component_of_wind_"$((leap))"10.nc era5_land_WS_"$((leap))"10.nc
#calculate wind direction
cdo -b 32 -chname,u10,WD -mulc,57.2957805 -atan2 -mulc,-1 era5_land_hourly_10m_u_component_of_wind_"$((leap))"10.nc -mulc,-1 era5_land_hourly_10m_v_component_of_wind_"$((leap))"10.nc era5_land_WD_"$((leap))"10.nc
#mask sand-moving wind speeds, ≥5.8m/s
cdo setrtomiss,0,5.7999999 era5_land_WS_"$((leap))"10.nc era5_land_WS_setrtomiss_"$((leap))"10.nc
#mask all the wind directions of corresponding sand-moving wind speeds, the sand-moving wind direction
cdo ifthen era5_land_WS_setrtomiss_"$((leap))"10.nc era5_land_WD_"$((leap))"10.nc era5_land_WD_ifthen_"$((leap))"10.nc
#delete intermediate results
rm -f era5_land_WS_"$((leap))"10.nc
rm -f era5_land_WD_"$((leap))"10.nc

#"$((leap))"11
#calculate wind speed
cdo -b 32 -chname,u10,WS -sqrt -add -sqr -selname,u10 era5_land_hourly_10m_u_component_of_wind_"$((leap))"11.nc -sqr -selname,v10 era5_land_hourly_10m_v_component_of_wind_"$((leap))"11.nc era5_land_WS_"$((leap))"11.nc
#calculate wind direction
cdo -b 32 -chname,u10,WD -mulc,57.2957805 -atan2 -mulc,-1 era5_land_hourly_10m_u_component_of_wind_"$((leap))"11.nc -mulc,-1 era5_land_hourly_10m_v_component_of_wind_"$((leap))"11.nc era5_land_WD_"$((leap))"11.nc
#mask sand-moving wind speeds, ≥5.8m/s
cdo setrtomiss,0,5.7999999 era5_land_WS_"$((leap))"11.nc era5_land_WS_setrtomiss_"$((leap))"11.nc
#mask all the wind directions of corresponding sand-moving wind speeds, the sand-moving wind direction
cdo ifthen era5_land_WS_setrtomiss_"$((leap))"11.nc era5_land_WD_"$((leap))"11.nc era5_land_WD_ifthen_"$((leap))"11.nc
#delete intermediate results
rm -f era5_land_WS_"$((leap))"11.nc
rm -f era5_land_WD_"$((leap))"11.nc

#"$((leap))"12
#calculate wind speed
cdo -b 32 -chname,u10,WS -sqrt -add -sqr -selname,u10 era5_land_hourly_10m_u_component_of_wind_"$((leap))"12.nc -sqr -selname,v10 era5_land_hourly_10m_v_component_of_wind_"$((leap))"12.nc era5_land_WS_"$((leap))"12.nc
#calculate wind direction
cdo -b 32 -chname,u10,WD -mulc,57.2957805 -atan2 -mulc,-1 era5_land_hourly_10m_u_component_of_wind_"$((leap))"12.nc -mulc,-1 era5_land_hourly_10m_v_component_of_wind_"$((leap))"12.nc era5_land_WD_"$((leap))"12.nc
#mask sand-moving wind speeds, ≥5.8m/s
cdo setrtomiss,0,5.7999999 era5_land_WS_"$((leap))"12.nc era5_land_WS_setrtomiss_"$((leap))"12.nc
#mask all the wind directions of corresponding sand-moving wind speeds, the sand-moving wind direction
cdo ifthen era5_land_WS_setrtomiss_"$((leap))"12.nc era5_land_WD_"$((leap))"12.nc era5_land_WD_ifthen_"$((leap))"12.nc
#delete intermediate results
rm -f era5_land_WS_"$((leap))"12.nc
rm -f era5_land_WD_"$((leap))"12.nc

#concatenate the monthly sand-moving wind speeds
cdo cat era5_land_WS_setrtomiss_"$((leap))"01.nc era5_land_WS_setrtomiss_"$((leap))"02.nc era5_land_WS_setrtomiss_"$((leap))"03.nc era5_land_WS_setrtomiss_"$((leap))"04.nc era5_land_WS_setrtomiss_"$((leap))"05.nc era5_land_WS_setrtomiss_"$((leap))"06.nc era5_land_WS_setrtomiss_"$((leap))"07.nc era5_land_WS_setrtomiss_"$((leap))"08.nc era5_land_WS_setrtomiss_"$((leap))"09.nc era5_land_WS_setrtomiss_"$((leap))"10.nc era5_land_WS_setrtomiss_"$((leap))"11.nc era5_land_WS_setrtomiss_"$((leap))"12.nc era5_land_WS_setrtomiss_"$((leap))".nc
#delete intermediate results
rm -f era5_land_WS_setrtomiss_"$((leap))"01.nc
rm -f era5_land_WS_setrtomiss_"$((leap))"02.nc
rm -f era5_land_WS_setrtomiss_"$((leap))"03.nc
rm -f era5_land_WS_setrtomiss_"$((leap))"04.nc
rm -f era5_land_WS_setrtomiss_"$((leap))"05.nc
rm -f era5_land_WS_setrtomiss_"$((leap))"06.nc
rm -f era5_land_WS_setrtomiss_"$((leap))"07.nc
rm -f era5_land_WS_setrtomiss_"$((leap))"08.nc
rm -f era5_land_WS_setrtomiss_"$((leap))"09.nc
rm -f era5_land_WS_setrtomiss_"$((leap))"10.nc
rm -f era5_land_WS_setrtomiss_"$((leap))"11.nc
rm -f era5_land_WS_setrtomiss_"$((leap))"12.nc

#concatenate the monthly sand-moving wind directions
cdo cat era5_land_WD_ifthen_"$((leap))"01.nc era5_land_WD_ifthen_"$((leap))"02.nc era5_land_WD_ifthen_"$((leap))"03.nc era5_land_WD_ifthen_"$((leap))"04.nc era5_land_WD_ifthen_"$((leap))"05.nc era5_land_WD_ifthen_"$((leap))"06.nc era5_land_WD_ifthen_"$((leap))"07.nc era5_land_WD_ifthen_"$((leap))"08.nc era5_land_WD_ifthen_"$((leap))"09.nc era5_land_WD_ifthen_"$((leap))"10.nc era5_land_WD_ifthen_"$((leap))"11.nc era5_land_WD_ifthen_"$((leap))"12.nc era5_land_WD_ifthen_"$((leap))".nc
#delete intermediate results
rm -f era5_land_WD_ifthen_"$((leap))"01.nc
rm -f era5_land_WD_ifthen_"$((leap))"02.nc
rm -f era5_land_WD_ifthen_"$((leap))"03.nc
rm -f era5_land_WD_ifthen_"$((leap))"04.nc
rm -f era5_land_WD_ifthen_"$((leap))"05.nc
rm -f era5_land_WD_ifthen_"$((leap))"06.nc
rm -f era5_land_WD_ifthen_"$((leap))"07.nc
rm -f era5_land_WD_ifthen_"$((leap))"08.nc
rm -f era5_land_WD_ifthen_"$((leap))"09.nc
rm -f era5_land_WD_ifthen_"$((leap))"10.nc
rm -f era5_land_WD_ifthen_"$((leap))"11.nc
rm -f era5_land_WD_ifthen_"$((leap))"12.nc

#distinguish the azimuth of sand-moving wind directions
#N, -11.25≤N＜11.25
cdo setvrange,-11.25,11.2499999 era5_land_WD_ifthen_"$((leap))".nc era5_land_WD_ifthen_setvrange_N_"$((leap))".nc
#mask sand-moving wind speeds in the N azimuth
cdo ifthen era5_land_WD_ifthen_setvrange_N_"$((leap))".nc era5_land_WS_setrtomiss_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_N_"$((leap))".nc
#2 m/s bins of sand-moving wind speeds in the N azimuth, 5.8m/s≤WS＜8m/s, 8m/s≤WS＜10m/s, 10m/s≤WS＜12m/s, 12m/s≤WS＜14m/s, 14m/s≤WS＜16m/s, 16m/s≤WS＜18m/s, 18m/s≤WS＜20m/s, 20m/s≤WS＜22m/s, 22m/s≤WS＜24m/s, 24m/s≤WS＜26m/s, 26m/s≤WS＜28m/s, 28m/s≤WS＜30m/s, 30m/s≤WS＜32m/s, 32m/s≤WS
cdo histcount,5.8,7.9999999,9.9999999,11.9999999,13.9999999,15.9999999,17.9999999,19.9999999,21.9999999,23.9999999,25.9999999,27.9999999,29.9999999,31.9999999,inf era5_land_WS_setrtomiss_ifthen_N_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_N_histcount_"$((leap))".nc
#the sand-moving wind frequency in the N azimuth, 8784 is the total hours for the “$leap_year”
cdo divc,8784 era5_land_WS_setrtomiss_ifthen_N_histcount_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_N_histcount_divc_"$((leap))".nc
#setmisstoc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_N_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_N_histcount_divc_setmisstoc_"$((leap))".nc
#mulc
cdo mulc,100 era5_land_WS_setrtomiss_ifthen_N_histcount_divc_setmisstoc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_N_histcount_divc_setmisstoc_mulc_"$((leap))".nc
#weighting factor U^2(U-Ut), U is the mean wind speed，and they are 7, 9, 11, 13, 15, 17, 19, 21, 23, 25, 27, 29, 31, 32m/s, respectively; and m/s needs to be conversed into knot. Notably, the value of U^2(U-Ut) is not divided by 100, as its subsquent multiplication represents a demensionless sand-moving wind frequency, rather than a percentage-based sand-moving wind frequency.
#level,5.8 U^2(U-Ut)=(7*3600/1852)*(7*3600/1852)*(7*3600/1852-5.8*3600/1852)=431.878795
#level,8 U^2(U-Ut)=(9*3600/1852)*(9*3600/1852)*(9*3600/1852-5.8*3600/1852)=1903.792241
#level,10 U^2(U-Ut)=(11*3600/1852)*(11*3600/1852)*(11*3600/1852-5.8*3600/1852)=4621.396906
#level,12 U^2(U-Ut)=(13*3600/1852)*(13*3600/1852)*(13*3600/1852-5.8*3600/1852)=8937.246908
#level,14 U^2(U-Ut)=(15*3600/1852)*(15*3600/1852)*(15*3600/1852-5.8*3600/1852)=15203.896368
#level,16 U^2(U-Ut)=(17*3600/1852)*(17*3600/1852)*(17*3600/1852-5.8*3600/1852)=23773.899403
#level,18 U^2(U-Ut)=(19*3600/1852)*(19*3600/1852)*(19*3600/1852-5.8*3600/1852)=34999.810131
#level,20 U^2(U-Ut)=(21*3600/1852)*(21*3600/1852)*(21*3600/1852-5.8*3600/1852)=49234.182673
#level,22 U^2(U-Ut)=(23*3600/1852)*(23*3600/1852)*(23*3600/1852-5.8*3600/1852)=66829.571146
#level,24 U^2(U-Ut)=(25*3600/1852)*(25*3600/1852)*(25*3600/1852-5.8*3600/1852)=88138.529669
#level,26 U^2(U-Ut)=(27*3600/1852)*(27*3600/1852)*(27*3600/1852-5.8*3600/1852)=113513.612360
#level,28 U^2(U-Ut)=(29*3600/1852)*(29*3600/1852)*(29*3600/1852-5.8*3600/1852)=143307.373339
#level,30 U^2(U-Ut)=(31*3600/1852)*(31*3600/1852)*(31*3600/1852-5.8*3600/1852)=177872.366724
#level,32 U^2(U-Ut)=(32*3600/1852)*(32*3600/1852)*(32*3600/1852-5.8*3600/1852)=197054.248731
#1 knot = 1 nautical mile/hour =1852m/hour=1852/3600m/s=0.5144m/s
#sellevel5.8
cdo -mulc,431.878795 -sellevel,5.8 era5_land_WS_setrtomiss_ifthen_N_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel5.8_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel5.8_"$((leap))".nc era5_land_DP_N_range5.8_8_"$((leap))".nc
#sellevel8
cdo -mulc,1903.792241 -sellevel,8 era5_land_WS_setrtomiss_ifthen_N_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel8_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel8_"$((leap))".nc era5_land_DP_N_range8_10_"$((leap))".nc
#sellevel10
cdo -mulc,4621.396906 -sellevel,10 era5_land_WS_setrtomiss_ifthen_N_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel10_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel10_"$((leap))".nc era5_land_DP_N_range10_12_"$((leap))".nc
#sellevel12
cdo -mulc,8937.246908 -sellevel,12 era5_land_WS_setrtomiss_ifthen_N_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel12_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel12_"$((leap))".nc era5_land_DP_N_range12_14_"$((leap))".nc
#sellevel14
cdo -mulc,15203.896368 -sellevel,14 era5_land_WS_setrtomiss_ifthen_N_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel14_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel14_"$((leap))".nc era5_land_DP_N_range14_16_"$((leap))".nc
#sellevel16
cdo -mulc,23773.899403 -sellevel,16 era5_land_WS_setrtomiss_ifthen_N_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel16_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel16_"$((leap))".nc era5_land_DP_N_range16_18_"$((leap))".nc
#sellevel18
cdo -mulc,34999.810131 -sellevel,18 era5_land_WS_setrtomiss_ifthen_N_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel18_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel18_"$((leap))".nc era5_land_DP_N_range18_20_"$((leap))".nc
#sellevel20
cdo -mulc,49234.182673 -sellevel,20 era5_land_WS_setrtomiss_ifthen_N_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel20_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel20_"$((leap))".nc era5_land_DP_N_range20_22_"$((leap))".nc
#sellevel22
cdo -mulc,66829.571146 -sellevel,22 era5_land_WS_setrtomiss_ifthen_N_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel22_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel22_"$((leap))".nc era5_land_DP_N_range22_24_"$((leap))".nc
#sellevel24
cdo -mulc,88138.529669 -sellevel,24 era5_land_WS_setrtomiss_ifthen_N_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel24_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel24_"$((leap))".nc era5_land_DP_N_range24_26_"$((leap))".nc
#sellevel26
cdo -mulc,113513.612360 -sellevel,26 era5_land_WS_setrtomiss_ifthen_N_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel26_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel26_"$((leap))".nc era5_land_DP_N_range26_28_"$((leap))".nc
#sellevel28
cdo -mulc,143307.373339 -sellevel,28 era5_land_WS_setrtomiss_ifthen_N_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel28_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel28_"$((leap))".nc era5_land_DP_N_range28_30_"$((leap))".nc
#sellevel30
cdo -mulc,177872.366724 -sellevel,30 era5_land_WS_setrtomiss_ifthen_N_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel30_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel30_"$((leap))".nc era5_land_DP_N_range30_32_"$((leap))".nc
#sellevel32
cdo -mulc,197054.248731 -sellevel,32 era5_land_WS_setrtomiss_ifthen_N_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel32_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel32_"$((leap))".nc era5_land_DP_N_range32_inf_"$((leap))".nc
#enssum
cdo enssum era5_land_DP_N_range5.8_8_"$((leap))".nc era5_land_DP_N_range8_10_"$((leap))".nc era5_land_DP_N_range10_12_"$((leap))".nc era5_land_DP_N_range12_14_"$((leap))".nc era5_land_DP_N_range14_16_"$((leap))".nc era5_land_DP_N_range16_18_"$((leap))".nc era5_land_DP_N_range18_20_"$((leap))".nc era5_land_DP_N_range20_22_"$((leap))".nc era5_land_DP_N_range22_24_"$((leap))".nc era5_land_DP_N_range24_26_"$((leap))".nc era5_land_DP_N_range26_28_"$((leap))".nc era5_land_DP_N_range28_30_"$((leap))".nc era5_land_DP_N_range30_32_"$((leap))".nc era5_land_DP_N_range32_inf_"$((leap))".nc era5_land_DP_N_range_enssum_"$((leap))".nc
#change variable name into DP_N, in order to be used in the resultanting
cdo chname,WS,DP_N era5_land_DP_N_range_enssum_"$((leap))".nc era5_land_DP_N_range_enssum_chname_"$((leap))".nc
#delete intermediate results
rm -f era5_land_WD_ifthen_setvrange_N_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_N_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_N_histcount_divc_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_N_histcount_divc_setmisstoc_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel5.8_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel8_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel10_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel12_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel14_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel16_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel18_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel20_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel22_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel24_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel26_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel28_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel30_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel32_"$((leap))".nc
rm -f era5_land_DP_N_range5.8_8_"$((leap))".nc
rm -f era5_land_DP_N_range8_10_"$((leap))".nc
rm -f era5_land_DP_N_range10_12_"$((leap))".nc
rm -f era5_land_DP_N_range12_14_"$((leap))".nc
rm -f era5_land_DP_N_range14_16_"$((leap))".nc
rm -f era5_land_DP_N_range16_18_"$((leap))".nc
rm -f era5_land_DP_N_range18_20_"$((leap))".nc
rm -f era5_land_DP_N_range20_22_"$((leap))".nc
rm -f era5_land_DP_N_range22_24_"$((leap))".nc
rm -f era5_land_DP_N_range24_26_"$((leap))".nc
rm -f era5_land_DP_N_range26_28_"$((leap))".nc
rm -f era5_land_DP_N_range28_30_"$((leap))".nc
rm -f era5_land_DP_N_range30_32_"$((leap))".nc
rm -f era5_land_DP_N_range32_inf_"$((leap))".nc

#NNE, 11.25≤NNE＜33.75
cdo setvrange,11.25,33.7499999 era5_land_WD_ifthen_"$((leap))".nc era5_land_WD_ifthen_setvrange_NNE_"$((leap))".nc
#mask sand-moving wind speeds in the NNE azimuth
cdo ifthen era5_land_WD_ifthen_setvrange_NNE_"$((leap))".nc era5_land_WS_setrtomiss_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_NNE_"$((leap))".nc
#2 m/s bins of sand-moving wind speeds in the NNE azimuth, 5.8m/s≤WS＜8m/s, 8m/s≤WS＜10m/s, 10m/s≤WS＜12m/s, 12m/s≤WS＜14m/s, 14m/s≤WS＜16m/s, 16m/s≤WS＜18m/s, 18m/s≤WS＜20m/s, 20m/s≤WS＜22m/s, 22m/s≤WS＜24m/s, 24m/s≤WS＜26m/s, 26m/s≤WS＜28m/s, 28m/s≤WS＜30m/s, 30m/s≤WS＜32m/s, 32m/s≤WS
cdo histcount,5.8,7.9999999,9.9999999,11.9999999,13.9999999,15.9999999,17.9999999,19.9999999,21.9999999,23.9999999,25.9999999,27.9999999,29.9999999,31.9999999,inf era5_land_WS_setrtomiss_ifthen_NNE_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_NNE_histcount_"$((leap))".nc
#the sand-moving wind frequency in the NNE azimuth, 8784 is the total hours for the “$leap_year”
cdo divc,8784 era5_land_WS_setrtomiss_ifthen_NNE_histcount_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_"$((leap))".nc
#setmisstoc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_setmisstoc_"$((leap))".nc
#mulc
cdo mulc,100 era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_setmisstoc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_setmisstoc_mulc_"$((leap))".nc
#weighting factor U^2(U-Ut), U is the mean wind speed，and they are 7, 9, 11, 13, 15, 17, 19, 21, 23, 25, 27, 29, 31, 32m/s, respectively; and m/s needs to be conversed into knot. Notably, the value of U^2(U-Ut) is not divided by 100, as its subsquent multiplication represents a demensionless sand-moving wind frequency, rather than a percentage-based sand-moving wind frequency.
#level,5.8 U^2(U-Ut)=(7*3600/1852)*(7*3600/1852)*(7*3600/1852-5.8*3600/1852)=431.878795
#level,8 U^2(U-Ut)=(9*3600/1852)*(9*3600/1852)*(9*3600/1852-5.8*3600/1852)=1903.792241
#level,10 U^2(U-Ut)=(11*3600/1852)*(11*3600/1852)*(11*3600/1852-5.8*3600/1852)=4621.396906
#level,12 U^2(U-Ut)=(13*3600/1852)*(13*3600/1852)*(13*3600/1852-5.8*3600/1852)=8937.246908
#level,14 U^2(U-Ut)=(15*3600/1852)*(15*3600/1852)*(15*3600/1852-5.8*3600/1852)=15203.896368
#level,16 U^2(U-Ut)=(17*3600/1852)*(17*3600/1852)*(17*3600/1852-5.8*3600/1852)=23773.899403
#level,18 U^2(U-Ut)=(19*3600/1852)*(19*3600/1852)*(19*3600/1852-5.8*3600/1852)=34999.810131
#level,20 U^2(U-Ut)=(21*3600/1852)*(21*3600/1852)*(21*3600/1852-5.8*3600/1852)=49234.182673
#level,22 U^2(U-Ut)=(23*3600/1852)*(23*3600/1852)*(23*3600/1852-5.8*3600/1852)=66829.571146
#level,24 U^2(U-Ut)=(25*3600/1852)*(25*3600/1852)*(25*3600/1852-5.8*3600/1852)=88138.529669
#level,26 U^2(U-Ut)=(27*3600/1852)*(27*3600/1852)*(27*3600/1852-5.8*3600/1852)=113513.612360
#level,28 U^2(U-Ut)=(29*3600/1852)*(29*3600/1852)*(29*3600/1852-5.8*3600/1852)=143307.373339
#level,30 U^2(U-Ut)=(31*3600/1852)*(31*3600/1852)*(31*3600/1852-5.8*3600/1852)=177872.366724
#level,32 U^2(U-Ut)=(32*3600/1852)*(32*3600/1852)*(32*3600/1852-5.8*3600/1852)=197054.248731
#1 knot = 1 nautical mile/hour =1852m/hour=1852/3600m/s=0.5144m/s
#sellevel5.8
cdo -mulc,431.878795 -sellevel,5.8 era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel5.8_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel5.8_"$((leap))".nc era5_land_DP_NNE_range5.8_8_"$((leap))".nc
#sellevel8
cdo -mulc,1903.792241 -sellevel,8 era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel8_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel8_"$((leap))".nc era5_land_DP_NNE_range8_10_"$((leap))".nc
#sellevel10
cdo -mulc,4621.396906 -sellevel,10 era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel10_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel10_"$((leap))".nc era5_land_DP_NNE_range10_12_"$((leap))".nc
#sellevel12
cdo -mulc,8937.246908 -sellevel,12 era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel12_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel12_"$((leap))".nc era5_land_DP_NNE_range12_14_"$((leap))".nc
#sellevel14
cdo -mulc,15203.896368 -sellevel,14 era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel14_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel14_"$((leap))".nc era5_land_DP_NNE_range14_16_"$((leap))".nc
#sellevel16
cdo -mulc,23773.899403 -sellevel,16 era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel16_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel16_"$((leap))".nc era5_land_DP_NNE_range16_18_"$((leap))".nc
#sellevel18
cdo -mulc,34999.810131 -sellevel,18 era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel18_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel18_"$((leap))".nc era5_land_DP_NNE_range18_20_"$((leap))".nc
#sellevel20
cdo -mulc,49234.182673 -sellevel,20 era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel20_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel20_"$((leap))".nc era5_land_DP_NNE_range20_22_"$((leap))".nc
#sellevel22
cdo -mulc,66829.571146 -sellevel,22 era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel22_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel22_"$((leap))".nc era5_land_DP_NNE_range22_24_"$((leap))".nc
#sellevel24
cdo -mulc,88138.529669 -sellevel,24 era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel24_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel24_"$((leap))".nc era5_land_DP_NNE_range24_26_"$((leap))".nc
#sellevel26
cdo -mulc,113513.612360 -sellevel,26 era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel26_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel26_"$((leap))".nc era5_land_DP_NNE_range26_28_"$((leap))".nc
#sellevel28
cdo -mulc,143307.373339 -sellevel,28 era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel28_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel28_"$((leap))".nc era5_land_DP_NNE_range28_30_"$((leap))".nc
#sellevel30
cdo -mulc,177872.366724 -sellevel,30 era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel30_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel30_"$((leap))".nc era5_land_DP_NNE_range30_32_"$((leap))".nc
#sellevel32
cdo -mulc,197054.248731 -sellevel,32 era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel32_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel32_"$((leap))".nc era5_land_DP_NNE_range32_inf_"$((leap))".nc
#enssum
cdo enssum era5_land_DP_NNE_range5.8_8_"$((leap))".nc era5_land_DP_NNE_range8_10_"$((leap))".nc era5_land_DP_NNE_range10_12_"$((leap))".nc era5_land_DP_NNE_range12_14_"$((leap))".nc era5_land_DP_NNE_range14_16_"$((leap))".nc era5_land_DP_NNE_range16_18_"$((leap))".nc era5_land_DP_NNE_range18_20_"$((leap))".nc era5_land_DP_NNE_range20_22_"$((leap))".nc era5_land_DP_NNE_range22_24_"$((leap))".nc era5_land_DP_NNE_range24_26_"$((leap))".nc era5_land_DP_NNE_range26_28_"$((leap))".nc era5_land_DP_NNE_range28_30_"$((leap))".nc era5_land_DP_NNE_range30_32_"$((leap))".nc era5_land_DP_NNE_range32_inf_"$((leap))".nc era5_land_DP_NNE_range_enssum_"$((leap))".nc
#change variable name into DP_NNE, in order to be used in the resultanting
cdo chname,WS,DP_NNE era5_land_DP_NNE_range_enssum_"$((leap))".nc era5_land_DP_NNE_range_enssum_chname_"$((leap))".nc
#delete intermediate results
rm -f era5_land_WD_ifthen_setvrange_NNE_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NNE_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_setmisstoc_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel5.8_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel8_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel10_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel12_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel14_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel16_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel18_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel20_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel22_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel24_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel26_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel28_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel30_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel32_"$((leap))".nc
rm -f era5_land_DP_NNE_range5.8_8_"$((leap))".nc
rm -f era5_land_DP_NNE_range8_10_"$((leap))".nc
rm -f era5_land_DP_NNE_range10_12_"$((leap))".nc
rm -f era5_land_DP_NNE_range12_14_"$((leap))".nc
rm -f era5_land_DP_NNE_range14_16_"$((leap))".nc
rm -f era5_land_DP_NNE_range16_18_"$((leap))".nc
rm -f era5_land_DP_NNE_range18_20_"$((leap))".nc
rm -f era5_land_DP_NNE_range20_22_"$((leap))".nc
rm -f era5_land_DP_NNE_range22_24_"$((leap))".nc
rm -f era5_land_DP_NNE_range24_26_"$((leap))".nc
rm -f era5_land_DP_NNE_range26_28_"$((leap))".nc
rm -f era5_land_DP_NNE_range28_30_"$((leap))".nc
rm -f era5_land_DP_NNE_range30_32_"$((leap))".nc
rm -f era5_land_DP_NNE_range32_inf_"$((leap))".nc

#NE, 33.75≤NE＜56.25
cdo setvrange,33.75,56.2499999 era5_land_WD_ifthen_"$((leap))".nc era5_land_WD_ifthen_setvrange_NE_"$((leap))".nc
#mask sand-moving wind speeds in the NE azimuth
cdo ifthen era5_land_WD_ifthen_setvrange_NE_"$((leap))".nc era5_land_WS_setrtomiss_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_NE_"$((leap))".nc
#2 m/s bins of sand-moving wind speeds in the NE azimuth, 5.8m/s≤WS＜8m/s, 8m/s≤WS＜10m/s, 10m/s≤WS＜12m/s, 12m/s≤WS＜14m/s, 14m/s≤WS＜16m/s, 16m/s≤WS＜18m/s, 18m/s≤WS＜20m/s, 20m/s≤WS＜22m/s, 22m/s≤WS＜24m/s, 24m/s≤WS＜26m/s, 26m/s≤WS＜28m/s, 28m/s≤WS＜30m/s, 30m/s≤WS＜32m/s, 32m/s≤WS
cdo histcount,5.8,7.9999999,9.9999999,11.9999999,13.9999999,15.9999999,17.9999999,19.9999999,21.9999999,23.9999999,25.9999999,27.9999999,29.9999999,31.9999999,inf era5_land_WS_setrtomiss_ifthen_NE_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_NE_histcount_"$((leap))".nc
#the sand-moving wind frequency in the NE azimuth, 8784 is the total hours for the “$leap_year”
cdo divc,8784 era5_land_WS_setrtomiss_ifthen_NE_histcount_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_"$((leap))".nc
#setmisstoc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_setmisstoc_"$((leap))".nc
#mulc
cdo mulc,100 era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_setmisstoc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_setmisstoc_mulc_"$((leap))".nc
#weighting factor U^2(U-Ut), U is the mean wind speed，and they are 7, 9, 11, 13, 15, 17, 19, 21, 23, 25, 27, 29, 31, 32m/s, respectively; and m/s needs to be conversed into knot. Notably, the value of U^2(U-Ut) is not divided by 100, as its subsquent multiplication represents a demensionless sand-moving wind frequency, rather than a percentage-based sand-moving wind frequency.
#level,5.8 U^2(U-Ut)=(7*3600/1852)*(7*3600/1852)*(7*3600/1852-5.8*3600/1852)=431.878795
#level,8 U^2(U-Ut)=(9*3600/1852)*(9*3600/1852)*(9*3600/1852-5.8*3600/1852)=1903.792241
#level,10 U^2(U-Ut)=(11*3600/1852)*(11*3600/1852)*(11*3600/1852-5.8*3600/1852)=4621.396906
#level,12 U^2(U-Ut)=(13*3600/1852)*(13*3600/1852)*(13*3600/1852-5.8*3600/1852)=8937.246908
#level,14 U^2(U-Ut)=(15*3600/1852)*(15*3600/1852)*(15*3600/1852-5.8*3600/1852)=15203.896368
#level,16 U^2(U-Ut)=(17*3600/1852)*(17*3600/1852)*(17*3600/1852-5.8*3600/1852)=23773.899403
#level,18 U^2(U-Ut)=(19*3600/1852)*(19*3600/1852)*(19*3600/1852-5.8*3600/1852)=34999.810131
#level,20 U^2(U-Ut)=(21*3600/1852)*(21*3600/1852)*(21*3600/1852-5.8*3600/1852)=49234.182673
#level,22 U^2(U-Ut)=(23*3600/1852)*(23*3600/1852)*(23*3600/1852-5.8*3600/1852)=66829.571146
#level,24 U^2(U-Ut)=(25*3600/1852)*(25*3600/1852)*(25*3600/1852-5.8*3600/1852)=88138.529669
#level,26 U^2(U-Ut)=(27*3600/1852)*(27*3600/1852)*(27*3600/1852-5.8*3600/1852)=113513.612360
#level,28 U^2(U-Ut)=(29*3600/1852)*(29*3600/1852)*(29*3600/1852-5.8*3600/1852)=143307.373339
#level,30 U^2(U-Ut)=(31*3600/1852)*(31*3600/1852)*(31*3600/1852-5.8*3600/1852)=177872.366724
#level,32 U^2(U-Ut)=(32*3600/1852)*(32*3600/1852)*(32*3600/1852-5.8*3600/1852)=197054.248731
#1 knot = 1 nautical mile/hour =1852m/hour=1852/3600m/s=0.5144m/s
#sellevel5.8
cdo -mulc,431.878795 -sellevel,5.8 era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel5.8_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel5.8_"$((leap))".nc era5_land_DP_NE_range5.8_8_"$((leap))".nc
#sellevel8
cdo -mulc,1903.792241 -sellevel,8 era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel8_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel8_"$((leap))".nc era5_land_DP_NE_range8_10_"$((leap))".nc
#sellevel10
cdo -mulc,4621.396906 -sellevel,10 era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel10_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel10_"$((leap))".nc era5_land_DP_NE_range10_12_"$((leap))".nc
#sellevel12
cdo -mulc,8937.246908 -sellevel,12 era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel12_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel12_"$((leap))".nc era5_land_DP_NE_range12_14_"$((leap))".nc
#sellevel14
cdo -mulc,15203.896368 -sellevel,14 era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel14_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel14_"$((leap))".nc era5_land_DP_NE_range14_16_"$((leap))".nc
#sellevel16
cdo -mulc,23773.899403 -sellevel,16 era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel16_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel16_"$((leap))".nc era5_land_DP_NE_range16_18_"$((leap))".nc
#sellevel18
cdo -mulc,34999.810131 -sellevel,18 era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel18_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel18_"$((leap))".nc era5_land_DP_NE_range18_20_"$((leap))".nc
#sellevel20
cdo -mulc,49234.182673 -sellevel,20 era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel20_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel20_"$((leap))".nc era5_land_DP_NE_range20_22_"$((leap))".nc
#sellevel22
cdo -mulc,66829.571146 -sellevel,22 era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel22_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel22_"$((leap))".nc era5_land_DP_NE_range22_24_"$((leap))".nc
#sellevel24
cdo -mulc,88138.529669 -sellevel,24 era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel24_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel24_"$((leap))".nc era5_land_DP_NE_range24_26_"$((leap))".nc
#sellevel26
cdo -mulc,113513.612360 -sellevel,26 era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel26_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel26_"$((leap))".nc era5_land_DP_NE_range26_28_"$((leap))".nc
#sellevel28
cdo -mulc,143307.373339 -sellevel,28 era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel28_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel28_"$((leap))".nc era5_land_DP_NE_range28_30_"$((leap))".nc
#sellevel30
cdo -mulc,177872.366724 -sellevel,30 era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel30_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel30_"$((leap))".nc era5_land_DP_NE_range30_32_"$((leap))".nc
#sellevel32
cdo -mulc,197054.248731 -sellevel,32 era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel32_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel32_"$((leap))".nc era5_land_DP_NE_range32_inf_"$((leap))".nc
#enssum
cdo enssum era5_land_DP_NE_range5.8_8_"$((leap))".nc era5_land_DP_NE_range8_10_"$((leap))".nc era5_land_DP_NE_range10_12_"$((leap))".nc era5_land_DP_NE_range12_14_"$((leap))".nc era5_land_DP_NE_range14_16_"$((leap))".nc era5_land_DP_NE_range16_18_"$((leap))".nc era5_land_DP_NE_range18_20_"$((leap))".nc era5_land_DP_NE_range20_22_"$((leap))".nc era5_land_DP_NE_range22_24_"$((leap))".nc era5_land_DP_NE_range24_26_"$((leap))".nc era5_land_DP_NE_range26_28_"$((leap))".nc era5_land_DP_NE_range28_30_"$((leap))".nc era5_land_DP_NE_range30_32_"$((leap))".nc era5_land_DP_NE_range32_inf_"$((leap))".nc era5_land_DP_NE_range_enssum_"$((leap))".nc
#change variable name into DP_NE, in order to be used in the resultanting
cdo chname,WS,DP_NE era5_land_DP_NE_range_enssum_"$((leap))".nc era5_land_DP_NE_range_enssum_chname_"$((leap))".nc
#delete intermediate results
rm -f era5_land_WD_ifthen_setvrange_NE_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NE_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_setmisstoc_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel5.8_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel8_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel10_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel12_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel14_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel16_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel18_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel20_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel22_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel24_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel26_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel28_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel30_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel32_"$((leap))".nc
rm -f era5_land_DP_NE_range5.8_8_"$((leap))".nc
rm -f era5_land_DP_NE_range8_10_"$((leap))".nc
rm -f era5_land_DP_NE_range10_12_"$((leap))".nc
rm -f era5_land_DP_NE_range12_14_"$((leap))".nc
rm -f era5_land_DP_NE_range14_16_"$((leap))".nc
rm -f era5_land_DP_NE_range16_18_"$((leap))".nc
rm -f era5_land_DP_NE_range18_20_"$((leap))".nc
rm -f era5_land_DP_NE_range20_22_"$((leap))".nc
rm -f era5_land_DP_NE_range22_24_"$((leap))".nc
rm -f era5_land_DP_NE_range24_26_"$((leap))".nc
rm -f era5_land_DP_NE_range26_28_"$((leap))".nc
rm -f era5_land_DP_NE_range28_30_"$((leap))".nc
rm -f era5_land_DP_NE_range30_32_"$((leap))".nc
rm -f era5_land_DP_NE_range32_inf_"$((leap))".nc

#ENE, 56.25≤ENE＜78.75
cdo setvrange,56.25,78.7499999 era5_land_WD_ifthen_"$((leap))".nc era5_land_WD_ifthen_setvrange_ENE_"$((leap))".nc
#mask sand-moving wind speeds in the ENE azimuth
cdo ifthen era5_land_WD_ifthen_setvrange_ENE_"$((leap))".nc era5_land_WS_setrtomiss_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_ENE_"$((leap))".nc
#2 m/s bins of sand-moving wind speeds in the ENE azimuth, 5.8m/s≤WS＜8m/s, 8m/s≤WS＜10m/s, 10m/s≤WS＜12m/s, 12m/s≤WS＜14m/s, 14m/s≤WS＜16m/s, 16m/s≤WS＜18m/s, 18m/s≤WS＜20m/s, 20m/s≤WS＜22m/s, 22m/s≤WS＜24m/s, 24m/s≤WS＜26m/s, 26m/s≤WS＜28m/s, 28m/s≤WS＜30m/s, 30m/s≤WS＜32m/s, 32m/s≤WS
cdo histcount,5.8,7.9999999,9.9999999,11.9999999,13.9999999,15.9999999,17.9999999,19.9999999,21.9999999,23.9999999,25.9999999,27.9999999,29.9999999,31.9999999,inf era5_land_WS_setrtomiss_ifthen_ENE_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_ENE_histcount_"$((leap))".nc
#the sand-moving wind frequency in the ENE azimuth, 8784 is the total hours for the “$leap_year”
cdo divc,8784 era5_land_WS_setrtomiss_ifthen_ENE_histcount_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_"$((leap))".nc
#setmisstoc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_setmisstoc_"$((leap))".nc
#mulc
cdo mulc,100 era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_setmisstoc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_setmisstoc_mulc_"$((leap))".nc
#weighting factor U^2(U-Ut), U is the mean wind speed，and they are 7, 9, 11, 13, 15, 17, 19, 21, 23, 25, 27, 29, 31, 32m/s, respectively; and m/s needs to be conversed into knot. Notably, the value of U^2(U-Ut) is not divided by 100, as its subsquent multiplication represents a demensionless sand-moving wind frequency, rather than a percentage-based sand-moving wind frequency.
#level,5.8 U^2(U-Ut)=(7*3600/1852)*(7*3600/1852)*(7*3600/1852-5.8*3600/1852)=431.878795
#level,8 U^2(U-Ut)=(9*3600/1852)*(9*3600/1852)*(9*3600/1852-5.8*3600/1852)=1903.792241
#level,10 U^2(U-Ut)=(11*3600/1852)*(11*3600/1852)*(11*3600/1852-5.8*3600/1852)=4621.396906
#level,12 U^2(U-Ut)=(13*3600/1852)*(13*3600/1852)*(13*3600/1852-5.8*3600/1852)=8937.246908
#level,14 U^2(U-Ut)=(15*3600/1852)*(15*3600/1852)*(15*3600/1852-5.8*3600/1852)=15203.896368
#level,16 U^2(U-Ut)=(17*3600/1852)*(17*3600/1852)*(17*3600/1852-5.8*3600/1852)=23773.899403
#level,18 U^2(U-Ut)=(19*3600/1852)*(19*3600/1852)*(19*3600/1852-5.8*3600/1852)=34999.810131
#level,20 U^2(U-Ut)=(21*3600/1852)*(21*3600/1852)*(21*3600/1852-5.8*3600/1852)=49234.182673
#level,22 U^2(U-Ut)=(23*3600/1852)*(23*3600/1852)*(23*3600/1852-5.8*3600/1852)=66829.571146
#level,24 U^2(U-Ut)=(25*3600/1852)*(25*3600/1852)*(25*3600/1852-5.8*3600/1852)=88138.529669
#level,26 U^2(U-Ut)=(27*3600/1852)*(27*3600/1852)*(27*3600/1852-5.8*3600/1852)=113513.612360
#level,28 U^2(U-Ut)=(29*3600/1852)*(29*3600/1852)*(29*3600/1852-5.8*3600/1852)=143307.373339
#level,30 U^2(U-Ut)=(31*3600/1852)*(31*3600/1852)*(31*3600/1852-5.8*3600/1852)=177872.366724
#level,32 U^2(U-Ut)=(32*3600/1852)*(32*3600/1852)*(32*3600/1852-5.8*3600/1852)=197054.248731
#1 knot = 1 nautical mile/hour =1852m/hour=1852/3600m/s=0.5144m/s
#sellevel5.8
cdo -mulc,431.878795 -sellevel,5.8 era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel5.8_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel5.8_"$((leap))".nc era5_land_DP_ENE_range5.8_8_"$((leap))".nc
#sellevel8
cdo -mulc,1903.792241 -sellevel,8 era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel8_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel8_"$((leap))".nc era5_land_DP_ENE_range8_10_"$((leap))".nc
#sellevel10
cdo -mulc,4621.396906 -sellevel,10 era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel10_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel10_"$((leap))".nc era5_land_DP_ENE_range10_12_"$((leap))".nc
#sellevel12
cdo -mulc,8937.246908 -sellevel,12 era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel12_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel12_"$((leap))".nc era5_land_DP_ENE_range12_14_"$((leap))".nc
#sellevel14
cdo -mulc,15203.896368 -sellevel,14 era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel14_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel14_"$((leap))".nc era5_land_DP_ENE_range14_16_"$((leap))".nc
#sellevel16
cdo -mulc,23773.899403 -sellevel,16 era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel16_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel16_"$((leap))".nc era5_land_DP_ENE_range16_18_"$((leap))".nc
#sellevel18
cdo -mulc,34999.810131 -sellevel,18 era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel18_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel18_"$((leap))".nc era5_land_DP_ENE_range18_20_"$((leap))".nc
#sellevel20
cdo -mulc,49234.182673 -sellevel,20 era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel20_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel20_"$((leap))".nc era5_land_DP_ENE_range20_22_"$((leap))".nc
#sellevel22
cdo -mulc,66829.571146 -sellevel,22 era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel22_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel22_"$((leap))".nc era5_land_DP_ENE_range22_24_"$((leap))".nc
#sellevel24
cdo -mulc,88138.529669 -sellevel,24 era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel24_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel24_"$((leap))".nc era5_land_DP_ENE_range24_26_"$((leap))".nc
#sellevel26
cdo -mulc,113513.612360 -sellevel,26 era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel26_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel26_"$((leap))".nc era5_land_DP_ENE_range26_28_"$((leap))".nc
#sellevel28
cdo -mulc,143307.373339 -sellevel,28 era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel28_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel28_"$((leap))".nc era5_land_DP_ENE_range28_30_"$((leap))".nc
#sellevel30
cdo -mulc,177872.366724 -sellevel,30 era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel30_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel30_"$((leap))".nc era5_land_DP_ENE_range30_32_"$((leap))".nc
#sellevel32
cdo -mulc,197054.248731 -sellevel,32 era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel32_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel32_"$((leap))".nc era5_land_DP_ENE_range32_inf_"$((leap))".nc
#enssum
cdo enssum era5_land_DP_ENE_range5.8_8_"$((leap))".nc era5_land_DP_ENE_range8_10_"$((leap))".nc era5_land_DP_ENE_range10_12_"$((leap))".nc era5_land_DP_ENE_range12_14_"$((leap))".nc era5_land_DP_ENE_range14_16_"$((leap))".nc era5_land_DP_ENE_range16_18_"$((leap))".nc era5_land_DP_ENE_range18_20_"$((leap))".nc era5_land_DP_ENE_range20_22_"$((leap))".nc era5_land_DP_ENE_range22_24_"$((leap))".nc era5_land_DP_ENE_range24_26_"$((leap))".nc era5_land_DP_ENE_range26_28_"$((leap))".nc era5_land_DP_ENE_range28_30_"$((leap))".nc era5_land_DP_ENE_range30_32_"$((leap))".nc era5_land_DP_ENE_range32_inf_"$((leap))".nc era5_land_DP_ENE_range_enssum_"$((leap))".nc
#change variable name into DP_ENE, in order to be used in the resultanting 
cdo chname,WS,DP_ENE era5_land_DP_ENE_range_enssum_"$((leap))".nc era5_land_DP_ENE_range_enssum_chname_"$((leap))".nc
#delete intermediate results
rm -f era5_land_WD_ifthen_setvrange_ENE_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_ENE_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_setmisstoc_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel5.8_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel8_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel10_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel12_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel14_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel16_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel18_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel20_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel22_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel24_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel26_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel28_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel30_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel32_"$((leap))".nc
rm -f era5_land_DP_ENE_range5.8_8_"$((leap))".nc
rm -f era5_land_DP_ENE_range8_10_"$((leap))".nc
rm -f era5_land_DP_ENE_range10_12_"$((leap))".nc
rm -f era5_land_DP_ENE_range12_14_"$((leap))".nc
rm -f era5_land_DP_ENE_range14_16_"$((leap))".nc
rm -f era5_land_DP_ENE_range16_18_"$((leap))".nc
rm -f era5_land_DP_ENE_range18_20_"$((leap))".nc
rm -f era5_land_DP_ENE_range20_22_"$((leap))".nc
rm -f era5_land_DP_ENE_range22_24_"$((leap))".nc
rm -f era5_land_DP_ENE_range24_26_"$((leap))".nc
rm -f era5_land_DP_ENE_range26_28_"$((leap))".nc
rm -f era5_land_DP_ENE_range28_30_"$((leap))".nc
rm -f era5_land_DP_ENE_range30_32_"$((leap))".nc
rm -f era5_land_DP_ENE_range32_inf_"$((leap))".nc

#E, 78.75≤E＜101.25
cdo setvrange,78.75,101.2499999 era5_land_WD_ifthen_"$((leap))".nc era5_land_WD_ifthen_setvrange_E_"$((leap))".nc
#mask sand-moving wind speeds in the E azimuth
cdo ifthen era5_land_WD_ifthen_setvrange_E_"$((leap))".nc era5_land_WS_setrtomiss_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_E_"$((leap))".nc
#2 m/s bins of sand-moving wind speeds in the E azimuth, 5.8m/s≤WS＜8m/s, 8m/s≤WS＜10m/s, 10m/s≤WS＜12m/s, 12m/s≤WS＜14m/s, 14m/s≤WS＜16m/s, 16m/s≤WS＜18m/s, 18m/s≤WS＜20m/s, 20m/s≤WS＜22m/s, 22m/s≤WS＜24m/s, 24m/s≤WS＜26m/s, 26m/s≤WS＜28m/s, 28m/s≤WS＜30m/s, 30m/s≤WS＜32m/s, 32m/s≤WS
cdo histcount,5.8,7.9999999,9.9999999,11.9999999,13.9999999,15.9999999,17.9999999,19.9999999,21.9999999,23.9999999,25.9999999,27.9999999,29.9999999,31.9999999,inf era5_land_WS_setrtomiss_ifthen_E_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_E_histcount_"$((leap))".nc
#the sand-moving wind frequency in the E azimuth, 8784 is the total hours for the “$leap_year”
cdo divc,8784 era5_land_WS_setrtomiss_ifthen_E_histcount_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_E_histcount_divc_"$((leap))".nc
#setmisstoc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_E_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_E_histcount_divc_setmisstoc_"$((leap))".nc
#mulc
cdo mulc,100 era5_land_WS_setrtomiss_ifthen_E_histcount_divc_setmisstoc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_E_histcount_divc_setmisstoc_mulc_"$((leap))".nc
#weighting factor U^2(U-Ut), U is the mean wind speed，and they are 7, 9, 11, 13, 15, 17, 19, 21, 23, 25, 27, 29, 31, 32m/s, respectively; and m/s needs to be conversed into knot. Notably, the value of U^2(U-Ut) is not divided by 100, as its subsquent multiplication represents a demensionless sand-moving wind frequency, rather than a percentage-based sand-moving wind frequency.
#level,5.8 U^2(U-Ut)=(7*3600/1852)*(7*3600/1852)*(7*3600/1852-5.8*3600/1852)=431.878795
#level,8 U^2(U-Ut)=(9*3600/1852)*(9*3600/1852)*(9*3600/1852-5.8*3600/1852)=1903.792241
#level,10 U^2(U-Ut)=(11*3600/1852)*(11*3600/1852)*(11*3600/1852-5.8*3600/1852)=4621.396906
#level,12 U^2(U-Ut)=(13*3600/1852)*(13*3600/1852)*(13*3600/1852-5.8*3600/1852)=8937.246908
#level,14 U^2(U-Ut)=(15*3600/1852)*(15*3600/1852)*(15*3600/1852-5.8*3600/1852)=15203.896368
#level,16 U^2(U-Ut)=(17*3600/1852)*(17*3600/1852)*(17*3600/1852-5.8*3600/1852)=23773.899403
#level,18 U^2(U-Ut)=(19*3600/1852)*(19*3600/1852)*(19*3600/1852-5.8*3600/1852)=34999.810131
#level,20 U^2(U-Ut)=(21*3600/1852)*(21*3600/1852)*(21*3600/1852-5.8*3600/1852)=49234.182673
#level,22 U^2(U-Ut)=(23*3600/1852)*(23*3600/1852)*(23*3600/1852-5.8*3600/1852)=66829.571146
#level,24 U^2(U-Ut)=(25*3600/1852)*(25*3600/1852)*(25*3600/1852-5.8*3600/1852)=88138.529669
#level,26 U^2(U-Ut)=(27*3600/1852)*(27*3600/1852)*(27*3600/1852-5.8*3600/1852)=113513.612360
#level,28 U^2(U-Ut)=(29*3600/1852)*(29*3600/1852)*(29*3600/1852-5.8*3600/1852)=143307.373339
#level,30 U^2(U-Ut)=(31*3600/1852)*(31*3600/1852)*(31*3600/1852-5.8*3600/1852)=177872.366724
#level,32 U^2(U-Ut)=(32*3600/1852)*(32*3600/1852)*(32*3600/1852-5.8*3600/1852)=197054.248731
#1 knot = 1 nautical mile/hour =1852m/hour=1852/3600m/s=0.5144m/s
#sellevel5.8
cdo -mulc,431.878795 -sellevel,5.8 era5_land_WS_setrtomiss_ifthen_E_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel5.8_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel5.8_"$((leap))".nc era5_land_DP_E_range5.8_8_"$((leap))".nc
#sellevel8
cdo -mulc,1903.792241 -sellevel,8 era5_land_WS_setrtomiss_ifthen_E_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel8_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel8_"$((leap))".nc era5_land_DP_E_range8_10_"$((leap))".nc
#sellevel10
cdo -mulc,4621.396906 -sellevel,10 era5_land_WS_setrtomiss_ifthen_E_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel10_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel10_"$((leap))".nc era5_land_DP_E_range10_12_"$((leap))".nc
#sellevel12
cdo -mulc,8937.246908 -sellevel,12 era5_land_WS_setrtomiss_ifthen_E_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel12_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel12_"$((leap))".nc era5_land_DP_E_range12_14_"$((leap))".nc
#sellevel14
cdo -mulc,15203.896368 -sellevel,14 era5_land_WS_setrtomiss_ifthen_E_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel14_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel14_"$((leap))".nc era5_land_DP_E_range14_16_"$((leap))".nc
#sellevel16
cdo -mulc,23773.899403 -sellevel,16 era5_land_WS_setrtomiss_ifthen_E_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel16_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel16_"$((leap))".nc era5_land_DP_E_range16_18_"$((leap))".nc
#sellevel18
cdo -mulc,34999.810131 -sellevel,18 era5_land_WS_setrtomiss_ifthen_E_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel18_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel18_"$((leap))".nc era5_land_DP_E_range18_20_"$((leap))".nc
#sellevel20
cdo -mulc,49234.182673 -sellevel,20 era5_land_WS_setrtomiss_ifthen_E_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel20_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel20_"$((leap))".nc era5_land_DP_E_range20_22_"$((leap))".nc
#sellevel22
cdo -mulc,66829.571146 -sellevel,22 era5_land_WS_setrtomiss_ifthen_E_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel22_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel22_"$((leap))".nc era5_land_DP_E_range22_24_"$((leap))".nc
#sellevel24
cdo -mulc,88138.529669 -sellevel,24 era5_land_WS_setrtomiss_ifthen_E_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel24_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel24_"$((leap))".nc era5_land_DP_E_range24_26_"$((leap))".nc
#sellevel26
cdo -mulc,113513.612360 -sellevel,26 era5_land_WS_setrtomiss_ifthen_E_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel26_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel26_"$((leap))".nc era5_land_DP_E_range26_28_"$((leap))".nc
#sellevel28
cdo -mulc,143307.373339 -sellevel,28 era5_land_WS_setrtomiss_ifthen_E_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel28_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel28_"$((leap))".nc era5_land_DP_E_range28_30_"$((leap))".nc
#sellevel30
cdo -mulc,177872.366724 -sellevel,30 era5_land_WS_setrtomiss_ifthen_E_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel30_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel30_"$((leap))".nc era5_land_DP_E_range30_32_"$((leap))".nc
#sellevel32
cdo -mulc,197054.248731 -sellevel,32 era5_land_WS_setrtomiss_ifthen_E_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel32_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel32_"$((leap))".nc era5_land_DP_E_range32_inf_"$((leap))".nc
#enssum
cdo enssum era5_land_DP_E_range5.8_8_"$((leap))".nc era5_land_DP_E_range8_10_"$((leap))".nc era5_land_DP_E_range10_12_"$((leap))".nc era5_land_DP_E_range12_14_"$((leap))".nc era5_land_DP_E_range14_16_"$((leap))".nc era5_land_DP_E_range16_18_"$((leap))".nc era5_land_DP_E_range18_20_"$((leap))".nc era5_land_DP_E_range20_22_"$((leap))".nc era5_land_DP_E_range22_24_"$((leap))".nc era5_land_DP_E_range24_26_"$((leap))".nc era5_land_DP_E_range26_28_"$((leap))".nc era5_land_DP_E_range28_30_"$((leap))".nc era5_land_DP_E_range30_32_"$((leap))".nc era5_land_DP_E_range32_inf_"$((leap))".nc era5_land_DP_E_range_enssum_"$((leap))".nc
#change variable name into DP_E, in order to be used in the resultanting
cdo chname,WS,DP_E era5_land_DP_E_range_enssum_"$((leap))".nc era5_land_DP_E_range_enssum_chname_"$((leap))".nc
#delete intermediate results
rm -f era5_land_WD_ifthen_setvrange_E_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_E_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_E_histcount_divc_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_E_histcount_divc_setmisstoc_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel5.8_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel8_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel10_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel12_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel14_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel16_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel18_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel20_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel22_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel24_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel26_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel28_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel30_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel32_"$((leap))".nc
rm -f era5_land_DP_E_range5.8_8_"$((leap))".nc
rm -f era5_land_DP_E_range8_10_"$((leap))".nc
rm -f era5_land_DP_E_range10_12_"$((leap))".nc
rm -f era5_land_DP_E_range12_14_"$((leap))".nc
rm -f era5_land_DP_E_range14_16_"$((leap))".nc
rm -f era5_land_DP_E_range16_18_"$((leap))".nc
rm -f era5_land_DP_E_range18_20_"$((leap))".nc
rm -f era5_land_DP_E_range20_22_"$((leap))".nc
rm -f era5_land_DP_E_range22_24_"$((leap))".nc
rm -f era5_land_DP_E_range24_26_"$((leap))".nc
rm -f era5_land_DP_E_range26_28_"$((leap))".nc
rm -f era5_land_DP_E_range28_30_"$((leap))".nc
rm -f era5_land_DP_E_range30_32_"$((leap))".nc
rm -f era5_land_DP_E_range32_inf_"$((leap))".nc

#ESE, 101.25≤ESE＜123.75
cdo setvrange,101.25,123.7499999 era5_land_WD_ifthen_"$((leap))".nc era5_land_WD_ifthen_setvrange_ESE_"$((leap))".nc
#mask sand-moving wind speeds in the ESE azimuth
cdo ifthen era5_land_WD_ifthen_setvrange_ESE_"$((leap))".nc era5_land_WS_setrtomiss_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_ESE_"$((leap))".nc
#2 m/s bins of sand-moving wind speeds in the ESE azimuth, 5.8m/s≤WS＜8m/s, 8m/s≤WS＜10m/s, 10m/s≤WS＜12m/s, 12m/s≤WS＜14m/s, 14m/s≤WS＜16m/s, 16m/s≤WS＜18m/s, 18m/s≤WS＜20m/s, 20m/s≤WS＜22m/s, 22m/s≤WS＜24m/s, 24m/s≤WS＜26m/s, 26m/s≤WS＜28m/s, 28m/s≤WS＜30m/s, 30m/s≤WS＜32m/s, 32m/s≤WS
cdo histcount,5.8,7.9999999,9.9999999,11.9999999,13.9999999,15.9999999,17.9999999,19.9999999,21.9999999,23.9999999,25.9999999,27.9999999,29.9999999,31.9999999,inf era5_land_WS_setrtomiss_ifthen_ESE_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_ESE_histcount_"$((leap))".nc
#the sand-moving wind frequency in the ESE azimuth, 8784 is the total hours for the “$leap_year”
cdo divc,8784 era5_land_WS_setrtomiss_ifthen_ESE_histcount_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_"$((leap))".nc
#setmisstoc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_setmisstoc_"$((leap))".nc
#mulc
cdo mulc,100 era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_setmisstoc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_setmisstoc_mulc_"$((leap))".nc
#weighting factor U^2(U-Ut), U is the mean wind speed，and they are 7, 9, 11, 13, 15, 17, 19, 21, 23, 25, 27, 29, 31, 32m/s, respectively; and m/s needs to be conversed into knot. Notably, the value of U^2(U-Ut) is not divided by 100, as its subsquent multiplication represents a demensionless sand-moving wind frequency, rather than a percentage-based sand-moving wind frequency.
#level,5.8 U^2(U-Ut)=(7*3600/1852)*(7*3600/1852)*(7*3600/1852-5.8*3600/1852)=431.878795
#level,8 U^2(U-Ut)=(9*3600/1852)*(9*3600/1852)*(9*3600/1852-5.8*3600/1852)=1903.792241
#level,10 U^2(U-Ut)=(11*3600/1852)*(11*3600/1852)*(11*3600/1852-5.8*3600/1852)=4621.396906
#level,12 U^2(U-Ut)=(13*3600/1852)*(13*3600/1852)*(13*3600/1852-5.8*3600/1852)=8937.246908
#level,14 U^2(U-Ut)=(15*3600/1852)*(15*3600/1852)*(15*3600/1852-5.8*3600/1852)=15203.896368
#level,16 U^2(U-Ut)=(17*3600/1852)*(17*3600/1852)*(17*3600/1852-5.8*3600/1852)=23773.899403
#level,18 U^2(U-Ut)=(19*3600/1852)*(19*3600/1852)*(19*3600/1852-5.8*3600/1852)=34999.810131
#level,20 U^2(U-Ut)=(21*3600/1852)*(21*3600/1852)*(21*3600/1852-5.8*3600/1852)=49234.182673
#level,22 U^2(U-Ut)=(23*3600/1852)*(23*3600/1852)*(23*3600/1852-5.8*3600/1852)=66829.571146
#level,24 U^2(U-Ut)=(25*3600/1852)*(25*3600/1852)*(25*3600/1852-5.8*3600/1852)=88138.529669
#level,26 U^2(U-Ut)=(27*3600/1852)*(27*3600/1852)*(27*3600/1852-5.8*3600/1852)=113513.612360
#level,28 U^2(U-Ut)=(29*3600/1852)*(29*3600/1852)*(29*3600/1852-5.8*3600/1852)=143307.373339
#level,30 U^2(U-Ut)=(31*3600/1852)*(31*3600/1852)*(31*3600/1852-5.8*3600/1852)=177872.366724
#level,32 U^2(U-Ut)=(32*3600/1852)*(32*3600/1852)*(32*3600/1852-5.8*3600/1852)=197054.248731
#1 knot = 1 nautical mile/hour =1852m/hour=1852/3600m/s=0.5144m/s
#sellevel5.8
cdo -mulc,431.878795 -sellevel,5.8 era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel5.8_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel5.8_"$((leap))".nc era5_land_DP_ESE_range5.8_8_"$((leap))".nc
#sellevel8
cdo -mulc,1903.792241 -sellevel,8 era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel8_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel8_"$((leap))".nc era5_land_DP_ESE_range8_10_"$((leap))".nc
#sellevel10
cdo -mulc,4621.396906 -sellevel,10 era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel10_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel10_"$((leap))".nc era5_land_DP_ESE_range10_12_"$((leap))".nc
#sellevel12
cdo -mulc,8937.246908 -sellevel,12 era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel12_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel12_"$((leap))".nc era5_land_DP_ESE_range12_14_"$((leap))".nc
#sellevel14
cdo -mulc,15203.896368 -sellevel,14 era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel14_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel14_"$((leap))".nc era5_land_DP_ESE_range14_16_"$((leap))".nc
#sellevel16
cdo -mulc,23773.899403 -sellevel,16 era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel16_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel16_"$((leap))".nc era5_land_DP_ESE_range16_18_"$((leap))".nc
#sellevel18
cdo -mulc,34999.810131 -sellevel,18 era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel18_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel18_"$((leap))".nc era5_land_DP_ESE_range18_20_"$((leap))".nc
#sellevel20
cdo -mulc,49234.182673 -sellevel,20 era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel20_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel20_"$((leap))".nc era5_land_DP_ESE_range20_22_"$((leap))".nc
#sellevel22
cdo -mulc,66829.571146 -sellevel,22 era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel22_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel22_"$((leap))".nc era5_land_DP_ESE_range22_24_"$((leap))".nc
#sellevel24
cdo -mulc,88138.529669 -sellevel,24 era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel24_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel24_"$((leap))".nc era5_land_DP_ESE_range24_26_"$((leap))".nc
#sellevel26
cdo -mulc,113513.612360 -sellevel,26 era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel26_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel26_"$((leap))".nc era5_land_DP_ESE_range26_28_"$((leap))".nc
#sellevel28
cdo -mulc,143307.373339 -sellevel,28 era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel28_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel28_"$((leap))".nc era5_land_DP_ESE_range28_30_"$((leap))".nc
#sellevel30
cdo -mulc,177872.366724 -sellevel,30 era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel30_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel30_"$((leap))".nc era5_land_DP_ESE_range30_32_"$((leap))".nc
#sellevel32
cdo -mulc,197054.248731 -sellevel,32 era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel32_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel32_"$((leap))".nc era5_land_DP_ESE_range32_inf_"$((leap))".nc
#enssum
cdo enssum era5_land_DP_ESE_range5.8_8_"$((leap))".nc era5_land_DP_ESE_range8_10_"$((leap))".nc era5_land_DP_ESE_range10_12_"$((leap))".nc era5_land_DP_ESE_range12_14_"$((leap))".nc era5_land_DP_ESE_range14_16_"$((leap))".nc era5_land_DP_ESE_range16_18_"$((leap))".nc era5_land_DP_ESE_range18_20_"$((leap))".nc era5_land_DP_ESE_range20_22_"$((leap))".nc era5_land_DP_ESE_range22_24_"$((leap))".nc era5_land_DP_ESE_range24_26_"$((leap))".nc era5_land_DP_ESE_range26_28_"$((leap))".nc era5_land_DP_ESE_range28_30_"$((leap))".nc era5_land_DP_ESE_range30_32_"$((leap))".nc era5_land_DP_ESE_range32_inf_"$((leap))".nc era5_land_DP_ESE_range_enssum_"$((leap))".nc
#change variable name into DP_ESE, in order to be used in the resultanting
cdo chname,WS,DP_ESE era5_land_DP_ESE_range_enssum_"$((leap))".nc era5_land_DP_ESE_range_enssum_chname_"$((leap))".nc
#delete intermediate results
rm -f era5_land_WD_ifthen_setvrange_ESE_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_ESE_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_setmisstoc_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel5.8_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel8_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel10_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel12_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel14_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel16_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel18_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel20_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel22_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel24_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel26_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel28_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel30_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel32_"$((leap))".nc
rm -f era5_land_DP_ESE_range5.8_8_"$((leap))".nc
rm -f era5_land_DP_ESE_range8_10_"$((leap))".nc
rm -f era5_land_DP_ESE_range10_12_"$((leap))".nc
rm -f era5_land_DP_ESE_range12_14_"$((leap))".nc
rm -f era5_land_DP_ESE_range14_16_"$((leap))".nc
rm -f era5_land_DP_ESE_range16_18_"$((leap))".nc
rm -f era5_land_DP_ESE_range18_20_"$((leap))".nc
rm -f era5_land_DP_ESE_range20_22_"$((leap))".nc
rm -f era5_land_DP_ESE_range22_24_"$((leap))".nc
rm -f era5_land_DP_ESE_range24_26_"$((leap))".nc
rm -f era5_land_DP_ESE_range26_28_"$((leap))".nc
rm -f era5_land_DP_ESE_range28_30_"$((leap))".nc
rm -f era5_land_DP_ESE_range30_32_"$((leap))".nc
rm -f era5_land_DP_ESE_range32_inf_"$((leap))".nc

#SE, 123.75≤SE＜146.25
cdo setvrange,123.75,146.2499999 era5_land_WD_ifthen_"$((leap))".nc era5_land_WD_ifthen_setvrange_SE_"$((leap))".nc
#mask sand-moving wind speeds in the SE azimuth
cdo ifthen era5_land_WD_ifthen_setvrange_SE_"$((leap))".nc era5_land_WS_setrtomiss_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_SE_"$((leap))".nc
#2 m/s bins of sand-moving wind speeds in the SE azimuth, 5.8m/s≤WS＜8m/s, 8m/s≤WS＜10m/s, 10m/s≤WS＜12m/s, 12m/s≤WS＜14m/s, 14m/s≤WS＜16m/s, 16m/s≤WS＜18m/s, 18m/s≤WS＜20m/s, 20m/s≤WS＜22m/s, 22m/s≤WS＜24m/s, 24m/s≤WS＜26m/s, 26m/s≤WS＜28m/s, 28m/s≤WS＜30m/s, 30m/s≤WS＜32m/s, 32m/s≤WS
cdo histcount,5.8,7.9999999,9.9999999,11.9999999,13.9999999,15.9999999,17.9999999,19.9999999,21.9999999,23.9999999,25.9999999,27.9999999,29.9999999,31.9999999,inf era5_land_WS_setrtomiss_ifthen_SE_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_SE_histcount_"$((leap))".nc
#the sand-moving wind frequency in the SE azimuth, 8784 is the total hours for the “$leap_year”
cdo divc,8784 era5_land_WS_setrtomiss_ifthen_SE_histcount_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_"$((leap))".nc
#setmisstoc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_setmisstoc_"$((leap))".nc
#mulc
cdo mulc,100 era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_setmisstoc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_setmisstoc_mulc_"$((leap))".nc
#weighting factor U^2(U-Ut), U is the mean wind speed，and they are 7, 9, 11, 13, 15, 17, 19, 21, 23, 25, 27, 29, 31, 32m/s, respectively; and m/s needs to be conversed into knot. Notably, the value of U^2(U-Ut) is not divided by 100, as its subsquent multiplication represents a demensionless sand-moving wind frequency, rather than a percentage-based sand-moving wind frequency.
#level,5.8 U^2(U-Ut)=(7*3600/1852)*(7*3600/1852)*(7*3600/1852-5.8*3600/1852)=431.878795
#level,8 U^2(U-Ut)=(9*3600/1852)*(9*3600/1852)*(9*3600/1852-5.8*3600/1852)=1903.792241
#level,10 U^2(U-Ut)=(11*3600/1852)*(11*3600/1852)*(11*3600/1852-5.8*3600/1852)=4621.396906
#level,12 U^2(U-Ut)=(13*3600/1852)*(13*3600/1852)*(13*3600/1852-5.8*3600/1852)=8937.246908
#level,14 U^2(U-Ut)=(15*3600/1852)*(15*3600/1852)*(15*3600/1852-5.8*3600/1852)=15203.896368
#level,16 U^2(U-Ut)=(17*3600/1852)*(17*3600/1852)*(17*3600/1852-5.8*3600/1852)=23773.899403
#level,18 U^2(U-Ut)=(19*3600/1852)*(19*3600/1852)*(19*3600/1852-5.8*3600/1852)=34999.810131
#level,20 U^2(U-Ut)=(21*3600/1852)*(21*3600/1852)*(21*3600/1852-5.8*3600/1852)=49234.182673
#level,22 U^2(U-Ut)=(23*3600/1852)*(23*3600/1852)*(23*3600/1852-5.8*3600/1852)=66829.571146
#level,24 U^2(U-Ut)=(25*3600/1852)*(25*3600/1852)*(25*3600/1852-5.8*3600/1852)=88138.529669
#level,26 U^2(U-Ut)=(27*3600/1852)*(27*3600/1852)*(27*3600/1852-5.8*3600/1852)=113513.612360
#level,28 U^2(U-Ut)=(29*3600/1852)*(29*3600/1852)*(29*3600/1852-5.8*3600/1852)=143307.373339
#level,30 U^2(U-Ut)=(31*3600/1852)*(31*3600/1852)*(31*3600/1852-5.8*3600/1852)=177872.366724
#level,32 U^2(U-Ut)=(32*3600/1852)*(32*3600/1852)*(32*3600/1852-5.8*3600/1852)=197054.248731
#1 knot = 1 nautical mile/hour =1852m/hour=1852/3600m/s=0.5144m/s
#sellevel5.8
cdo -mulc,431.878795 -sellevel,5.8 era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel5.8_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel5.8_"$((leap))".nc era5_land_DP_SE_range5.8_8_"$((leap))".nc
#sellevel8
cdo -mulc,1903.792241 -sellevel,8 era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel8_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel8_"$((leap))".nc era5_land_DP_SE_range8_10_"$((leap))".nc
#sellevel10
cdo -mulc,4621.396906 -sellevel,10 era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel10_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel10_"$((leap))".nc era5_land_DP_SE_range10_12_"$((leap))".nc
#sellevel12
cdo -mulc,8937.246908 -sellevel,12 era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel12_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel12_"$((leap))".nc era5_land_DP_SE_range12_14_"$((leap))".nc
#sellevel14
cdo -mulc,15203.896368 -sellevel,14 era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel14_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel14_"$((leap))".nc era5_land_DP_SE_range14_16_"$((leap))".nc
#sellevel16
cdo -mulc,23773.899403 -sellevel,16 era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel16_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel16_"$((leap))".nc era5_land_DP_SE_range16_18_"$((leap))".nc
#sellevel18
cdo -mulc,34999.810131 -sellevel,18 era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel18_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel18_"$((leap))".nc era5_land_DP_SE_range18_20_"$((leap))".nc
#sellevel20
cdo -mulc,49234.182673 -sellevel,20 era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel20_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel20_"$((leap))".nc era5_land_DP_SE_range20_22_"$((leap))".nc
#sellevel22
cdo -mulc,66829.571146 -sellevel,22 era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel22_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel22_"$((leap))".nc era5_land_DP_SE_range22_24_"$((leap))".nc
#sellevel24
cdo -mulc,88138.529669 -sellevel,24 era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel24_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel24_"$((leap))".nc era5_land_DP_SE_range24_26_"$((leap))".nc
#sellevel26
cdo -mulc,113513.612360 -sellevel,26 era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel26_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel26_"$((leap))".nc era5_land_DP_SE_range26_28_"$((leap))".nc
#sellevel28
cdo -mulc,143307.373339 -sellevel,28 era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel28_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel28_"$((leap))".nc era5_land_DP_SE_range28_30_"$((leap))".nc
#sellevel30
cdo -mulc,177872.366724 -sellevel,30 era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel30_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel30_"$((leap))".nc era5_land_DP_SE_range30_32_"$((leap))".nc
#sellevel32
cdo -mulc,197054.248731 -sellevel,32 era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel32_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel32_"$((leap))".nc era5_land_DP_SE_range32_inf_"$((leap))".nc
#enssum
cdo enssum era5_land_DP_SE_range5.8_8_"$((leap))".nc era5_land_DP_SE_range8_10_"$((leap))".nc era5_land_DP_SE_range10_12_"$((leap))".nc era5_land_DP_SE_range12_14_"$((leap))".nc era5_land_DP_SE_range14_16_"$((leap))".nc era5_land_DP_SE_range16_18_"$((leap))".nc era5_land_DP_SE_range18_20_"$((leap))".nc era5_land_DP_SE_range20_22_"$((leap))".nc era5_land_DP_SE_range22_24_"$((leap))".nc era5_land_DP_SE_range24_26_"$((leap))".nc era5_land_DP_SE_range26_28_"$((leap))".nc era5_land_DP_SE_range28_30_"$((leap))".nc era5_land_DP_SE_range30_32_"$((leap))".nc era5_land_DP_SE_range32_inf_"$((leap))".nc era5_land_DP_SE_range_enssum_"$((leap))".nc
#change variable name into DP_SE, in order to be used in the resultanting
cdo chname,WS,DP_SE era5_land_DP_SE_range_enssum_"$((leap))".nc era5_land_DP_SE_range_enssum_chname_"$((leap))".nc
#delete intermediate results
rm -f era5_land_WD_ifthen_setvrange_SE_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SE_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_setmisstoc_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel5.8_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel8_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel10_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel12_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel14_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel16_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel18_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel20_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel22_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel24_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel26_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel28_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel30_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel32_"$((leap))".nc
rm -f era5_land_DP_SE_range5.8_8_"$((leap))".nc
rm -f era5_land_DP_SE_range8_10_"$((leap))".nc
rm -f era5_land_DP_SE_range10_12_"$((leap))".nc
rm -f era5_land_DP_SE_range12_14_"$((leap))".nc
rm -f era5_land_DP_SE_range14_16_"$((leap))".nc
rm -f era5_land_DP_SE_range16_18_"$((leap))".nc
rm -f era5_land_DP_SE_range18_20_"$((leap))".nc
rm -f era5_land_DP_SE_range20_22_"$((leap))".nc
rm -f era5_land_DP_SE_range22_24_"$((leap))".nc
rm -f era5_land_DP_SE_range24_26_"$((leap))".nc
rm -f era5_land_DP_SE_range26_28_"$((leap))".nc
rm -f era5_land_DP_SE_range28_30_"$((leap))".nc
rm -f era5_land_DP_SE_range30_32_"$((leap))".nc
rm -f era5_land_DP_SE_range32_inf_"$((leap))".nc

#SSE, 146.25≤SSE＜168.75
cdo setvrange,146.25,168.7499999 era5_land_WD_ifthen_"$((leap))".nc era5_land_WD_ifthen_setvrange_SSE_"$((leap))".nc
#mask sand-moving wind speeds in the SSE azimuth
cdo ifthen era5_land_WD_ifthen_setvrange_SSE_"$((leap))".nc era5_land_WS_setrtomiss_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_SSE_"$((leap))".nc
#2 m/s bins of sand-moving wind speeds in the SSE azimuth, 5.8m/s≤WS＜8m/s, 8m/s≤WS＜10m/s, 10m/s≤WS＜12m/s, 12m/s≤WS＜14m/s, 14m/s≤WS＜16m/s, 16m/s≤WS＜18m/s, 18m/s≤WS＜20m/s, 20m/s≤WS＜22m/s, 22m/s≤WS＜24m/s, 24m/s≤WS＜26m/s, 26m/s≤WS＜28m/s, 28m/s≤WS＜30m/s, 30m/s≤WS＜32m/s, 32m/s≤WS
cdo histcount,5.8,7.9999999,9.9999999,11.9999999,13.9999999,15.9999999,17.9999999,19.9999999,21.9999999,23.9999999,25.9999999,27.9999999,29.9999999,31.9999999,inf era5_land_WS_setrtomiss_ifthen_SSE_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_SSE_histcount_"$((leap))".nc
#the sand-moving wind frequency in the SSE azimuth, 8784 is the total hours for the “$leap_year”
cdo divc,8784 era5_land_WS_setrtomiss_ifthen_SSE_histcount_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_"$((leap))".nc
#setmisstoc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_setmisstoc_"$((leap))".nc
#mulc
cdo mulc,100 era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_setmisstoc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_setmisstoc_mulc_"$((leap))".nc
#weighting factor U^2(U-Ut), U is the mean wind speed，and they are 7, 9, 11, 13, 15, 17, 19, 21, 23, 25, 27, 29, 31, 32m/s, respectively; and m/s needs to be conversed into knot. Notably, the value of U^2(U-Ut) is not divided by 100, as its subsquent multiplication represents a demensionless sand-moving wind frequency, rather than a percentage-based sand-moving wind frequency.
#level,5.8 U^2(U-Ut)=(7*3600/1852)*(7*3600/1852)*(7*3600/1852-5.8*3600/1852)=431.878795
#level,8 U^2(U-Ut)=(9*3600/1852)*(9*3600/1852)*(9*3600/1852-5.8*3600/1852)=1903.792241
#level,10 U^2(U-Ut)=(11*3600/1852)*(11*3600/1852)*(11*3600/1852-5.8*3600/1852)=4621.396906
#level,12 U^2(U-Ut)=(13*3600/1852)*(13*3600/1852)*(13*3600/1852-5.8*3600/1852)=8937.246908
#level,14 U^2(U-Ut)=(15*3600/1852)*(15*3600/1852)*(15*3600/1852-5.8*3600/1852)=15203.896368
#level,16 U^2(U-Ut)=(17*3600/1852)*(17*3600/1852)*(17*3600/1852-5.8*3600/1852)=23773.899403
#level,18 U^2(U-Ut)=(19*3600/1852)*(19*3600/1852)*(19*3600/1852-5.8*3600/1852)=34999.810131
#level,20 U^2(U-Ut)=(21*3600/1852)*(21*3600/1852)*(21*3600/1852-5.8*3600/1852)=49234.182673
#level,22 U^2(U-Ut)=(23*3600/1852)*(23*3600/1852)*(23*3600/1852-5.8*3600/1852)=66829.571146
#level,24 U^2(U-Ut)=(25*3600/1852)*(25*3600/1852)*(25*3600/1852-5.8*3600/1852)=88138.529669
#level,26 U^2(U-Ut)=(27*3600/1852)*(27*3600/1852)*(27*3600/1852-5.8*3600/1852)=113513.612360
#level,28 U^2(U-Ut)=(29*3600/1852)*(29*3600/1852)*(29*3600/1852-5.8*3600/1852)=143307.373339
#level,30 U^2(U-Ut)=(31*3600/1852)*(31*3600/1852)*(31*3600/1852-5.8*3600/1852)=177872.366724
#level,32 U^2(U-Ut)=(32*3600/1852)*(32*3600/1852)*(32*3600/1852-5.8*3600/1852)=197054.248731
#1 knot = 1 nautical mile/hour =1852m/hour=1852/3600m/s=0.5144m/s
#sellevel5.8
cdo -mulc,431.878795 -sellevel,5.8 era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel5.8_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel5.8_"$((leap))".nc era5_land_DP_SSE_range5.8_8_"$((leap))".nc
#sellevel8
cdo -mulc,1903.792241 -sellevel,8 era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel8_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel8_"$((leap))".nc era5_land_DP_SSE_range8_10_"$((leap))".nc
#sellevel10
cdo -mulc,4621.396906 -sellevel,10 era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel10_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel10_"$((leap))".nc era5_land_DP_SSE_range10_12_"$((leap))".nc
#sellevel12
cdo -mulc,8937.246908 -sellevel,12 era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel12_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel12_"$((leap))".nc era5_land_DP_SSE_range12_14_"$((leap))".nc
#sellevel14
cdo -mulc,15203.896368 -sellevel,14 era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel14_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel14_"$((leap))".nc era5_land_DP_SSE_range14_16_"$((leap))".nc
#sellevel16
cdo -mulc,23773.899403 -sellevel,16 era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel16_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel16_"$((leap))".nc era5_land_DP_SSE_range16_18_"$((leap))".nc
#sellevel18
cdo -mulc,34999.810131 -sellevel,18 era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel18_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel18_"$((leap))".nc era5_land_DP_SSE_range18_20_"$((leap))".nc
#sellevel20
cdo -mulc,49234.182673 -sellevel,20 era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel20_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel20_"$((leap))".nc era5_land_DP_SSE_range20_22_"$((leap))".nc
#sellevel22
cdo -mulc,66829.571146 -sellevel,22 era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel22_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel22_"$((leap))".nc era5_land_DP_SSE_range22_24_"$((leap))".nc
#sellevel24
cdo -mulc,88138.529669 -sellevel,24 era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel24_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel24_"$((leap))".nc era5_land_DP_SSE_range24_26_"$((leap))".nc
#sellevel26
cdo -mulc,113513.612360 -sellevel,26 era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel26_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel26_"$((leap))".nc era5_land_DP_SSE_range26_28_"$((leap))".nc
#sellevel28
cdo -mulc,143307.373339 -sellevel,28 era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel28_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel28_"$((leap))".nc era5_land_DP_SSE_range28_30_"$((leap))".nc
#sellevel30
cdo -mulc,177872.366724 -sellevel,30 era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel30_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel30_"$((leap))".nc era5_land_DP_SSE_range30_32_"$((leap))".nc
#sellevel32
cdo -mulc,197054.248731 -sellevel,32 era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel32_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel32_"$((leap))".nc era5_land_DP_SSE_range32_inf_"$((leap))".nc
#enssum
cdo enssum era5_land_DP_SSE_range5.8_8_"$((leap))".nc era5_land_DP_SSE_range8_10_"$((leap))".nc era5_land_DP_SSE_range10_12_"$((leap))".nc era5_land_DP_SSE_range12_14_"$((leap))".nc era5_land_DP_SSE_range14_16_"$((leap))".nc era5_land_DP_SSE_range16_18_"$((leap))".nc era5_land_DP_SSE_range18_20_"$((leap))".nc era5_land_DP_SSE_range20_22_"$((leap))".nc era5_land_DP_SSE_range22_24_"$((leap))".nc era5_land_DP_SSE_range24_26_"$((leap))".nc era5_land_DP_SSE_range26_28_"$((leap))".nc era5_land_DP_SSE_range28_30_"$((leap))".nc era5_land_DP_SSE_range30_32_"$((leap))".nc era5_land_DP_SSE_range32_inf_"$((leap))".nc era5_land_DP_SSE_range_enssum_"$((leap))".nc
#change variable name into DP_SSE, in order to be used in the resultanting
cdo chname,WS,DP_SSE era5_land_DP_SSE_range_enssum_"$((leap))".nc era5_land_DP_SSE_range_enssum_chname_"$((leap))".nc
#delete intermediate results
rm -f era5_land_WD_ifthen_setvrange_SSE_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SSE_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_setmisstoc_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel5.8_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel8_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel10_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel12_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel14_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel16_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel18_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel20_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel22_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel24_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel26_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel28_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel30_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel32_"$((leap))".nc
rm -f era5_land_DP_SSE_range5.8_8_"$((leap))".nc
rm -f era5_land_DP_SSE_range8_10_"$((leap))".nc
rm -f era5_land_DP_SSE_range10_12_"$((leap))".nc
rm -f era5_land_DP_SSE_range12_14_"$((leap))".nc
rm -f era5_land_DP_SSE_range14_16_"$((leap))".nc
rm -f era5_land_DP_SSE_range16_18_"$((leap))".nc
rm -f era5_land_DP_SSE_range18_20_"$((leap))".nc
rm -f era5_land_DP_SSE_range20_22_"$((leap))".nc
rm -f era5_land_DP_SSE_range22_24_"$((leap))".nc
rm -f era5_land_DP_SSE_range24_26_"$((leap))".nc
rm -f era5_land_DP_SSE_range26_28_"$((leap))".nc
rm -f era5_land_DP_SSE_range28_30_"$((leap))".nc
rm -f era5_land_DP_SSE_range30_32_"$((leap))".nc
rm -f era5_land_DP_SSE_range32_inf_"$((leap))".nc

#S, -180＜S＜-168.75, 168.75≤S≤180, note that here uses setrtomiss
cdo setrtomiss,-168.75,168.7499999 era5_land_WD_ifthen_"$((leap))".nc era5_land_WD_ifthen_setrtomiss_S_"$((leap))".nc
#mask sand-moving wind speeds in the S azimuth
cdo ifthen era5_land_WD_ifthen_setrtomiss_S_"$((leap))".nc era5_land_WS_setrtomiss_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_S_"$((leap))".nc
#2 m/s bins of sand-moving wind speeds in the S azimuth, 5.8m/s≤WS＜8m/s, 8m/s≤WS＜10m/s, 10m/s≤WS＜12m/s, 12m/s≤WS＜14m/s, 14m/s≤WS＜16m/s, 16m/s≤WS＜18m/s, 18m/s≤WS＜20m/s, 20m/s≤WS＜22m/s, 22m/s≤WS＜24m/s, 24m/s≤WS＜26m/s, 26m/s≤WS＜28m/s, 28m/s≤WS＜30m/s, 30m/s≤WS＜32m/s, 32m/s≤WS
cdo histcount,5.8,7.9999999,9.9999999,11.9999999,13.9999999,15.9999999,17.9999999,19.9999999,21.9999999,23.9999999,25.9999999,27.9999999,29.9999999,31.9999999,inf era5_land_WS_setrtomiss_ifthen_S_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_S_histcount_"$((leap))".nc
#the sand-moving wind frequency in the S azimuth, 8784 is the total hours for the “$leap_year”
cdo divc,8784 era5_land_WS_setrtomiss_ifthen_S_histcount_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_S_histcount_divc_"$((leap))".nc
#setmisstoc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_S_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_S_histcount_divc_setmisstoc_"$((leap))".nc
#mulc
cdo mulc,100 era5_land_WS_setrtomiss_ifthen_S_histcount_divc_setmisstoc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_S_histcount_divc_setmisstoc_mulc_"$((leap))".nc
#weighting factor U^2(U-Ut), U is the mean wind speed，and they are 7, 9, 11, 13, 15, 17, 19, 21, 23, 25, 27, 29, 31, 32m/s, respectively; and m/s needs to be conversed into knot. Notably, the value of U^2(U-Ut) is not divided by 100, as its subsquent multiplication represents a demensionless sand-moving wind frequency, rather than a percentage-based sand-moving wind frequency.
#level,5.8 U^2(U-Ut)=(7*3600/1852)*(7*3600/1852)*(7*3600/1852-5.8*3600/1852)=431.878795
#level,8 U^2(U-Ut)=(9*3600/1852)*(9*3600/1852)*(9*3600/1852-5.8*3600/1852)=1903.792241
#level,10 U^2(U-Ut)=(11*3600/1852)*(11*3600/1852)*(11*3600/1852-5.8*3600/1852)=4621.396906
#level,12 U^2(U-Ut)=(13*3600/1852)*(13*3600/1852)*(13*3600/1852-5.8*3600/1852)=8937.246908
#level,14 U^2(U-Ut)=(15*3600/1852)*(15*3600/1852)*(15*3600/1852-5.8*3600/1852)=15203.896368
#level,16 U^2(U-Ut)=(17*3600/1852)*(17*3600/1852)*(17*3600/1852-5.8*3600/1852)=23773.899403
#level,18 U^2(U-Ut)=(19*3600/1852)*(19*3600/1852)*(19*3600/1852-5.8*3600/1852)=34999.810131
#level,20 U^2(U-Ut)=(21*3600/1852)*(21*3600/1852)*(21*3600/1852-5.8*3600/1852)=49234.182673
#level,22 U^2(U-Ut)=(23*3600/1852)*(23*3600/1852)*(23*3600/1852-5.8*3600/1852)=66829.571146
#level,24 U^2(U-Ut)=(25*3600/1852)*(25*3600/1852)*(25*3600/1852-5.8*3600/1852)=88138.529669
#level,26 U^2(U-Ut)=(27*3600/1852)*(27*3600/1852)*(27*3600/1852-5.8*3600/1852)=113513.612360
#level,28 U^2(U-Ut)=(29*3600/1852)*(29*3600/1852)*(29*3600/1852-5.8*3600/1852)=143307.373339
#level,30 U^2(U-Ut)=(31*3600/1852)*(31*3600/1852)*(31*3600/1852-5.8*3600/1852)=177872.366724
#level,32 U^2(U-Ut)=(32*3600/1852)*(32*3600/1852)*(32*3600/1852-5.8*3600/1852)=197054.248731
#1 knot = 1 nautical mile/hour =1852m/hour=1852/3600m/s=0.5144m/s
#sellevel5.8
cdo -mulc,431.878795 -sellevel,5.8 era5_land_WS_setrtomiss_ifthen_S_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel5.8_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel5.8_"$((leap))".nc era5_land_DP_S_range5.8_8_"$((leap))".nc
#sellevel8
cdo -mulc,1903.792241 -sellevel,8 era5_land_WS_setrtomiss_ifthen_S_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel8_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel8_"$((leap))".nc era5_land_DP_S_range8_10_"$((leap))".nc
#sellevel10
cdo -mulc,4621.396906 -sellevel,10 era5_land_WS_setrtomiss_ifthen_S_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel10_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel10_"$((leap))".nc era5_land_DP_S_range10_12_"$((leap))".nc
#sellevel12
cdo -mulc,8937.246908 -sellevel,12 era5_land_WS_setrtomiss_ifthen_S_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel12_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel12_"$((leap))".nc era5_land_DP_S_range12_14_"$((leap))".nc
#sellevel14
cdo -mulc,15203.896368 -sellevel,14 era5_land_WS_setrtomiss_ifthen_S_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel14_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel14_"$((leap))".nc era5_land_DP_S_range14_16_"$((leap))".nc
#sellevel16
cdo -mulc,23773.899403 -sellevel,16 era5_land_WS_setrtomiss_ifthen_S_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel16_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel16_"$((leap))".nc era5_land_DP_S_range16_18_"$((leap))".nc
#sellevel18
cdo -mulc,34999.810131 -sellevel,18 era5_land_WS_setrtomiss_ifthen_S_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel18_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel18_"$((leap))".nc era5_land_DP_S_range18_20_"$((leap))".nc
#sellevel20
cdo -mulc,49234.182673 -sellevel,20 era5_land_WS_setrtomiss_ifthen_S_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel20_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel20_"$((leap))".nc era5_land_DP_S_range20_22_"$((leap))".nc
#sellevel22
cdo -mulc,66829.571146 -sellevel,22 era5_land_WS_setrtomiss_ifthen_S_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel22_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel22_"$((leap))".nc era5_land_DP_S_range22_24_"$((leap))".nc
#sellevel24
cdo -mulc,88138.529669 -sellevel,24 era5_land_WS_setrtomiss_ifthen_S_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel24_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel24_"$((leap))".nc era5_land_DP_S_range24_26_"$((leap))".nc
#sellevel26
cdo -mulc,113513.612360 -sellevel,26 era5_land_WS_setrtomiss_ifthen_S_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel26_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel26_"$((leap))".nc era5_land_DP_S_range26_28_"$((leap))".nc
#sellevel28
cdo -mulc,143307.373339 -sellevel,28 era5_land_WS_setrtomiss_ifthen_S_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel28_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel28_"$((leap))".nc era5_land_DP_S_range28_30_"$((leap))".nc
#sellevel30
cdo -mulc,177872.366724 -sellevel,30 era5_land_WS_setrtomiss_ifthen_S_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel30_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel30_"$((leap))".nc era5_land_DP_S_range30_32_"$((leap))".nc
#sellevel32
cdo -mulc,197054.248731 -sellevel,32 era5_land_WS_setrtomiss_ifthen_S_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel32_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel32_"$((leap))".nc era5_land_DP_S_range32_inf_"$((leap))".nc
#enssum
cdo enssum era5_land_DP_S_range5.8_8_"$((leap))".nc era5_land_DP_S_range8_10_"$((leap))".nc era5_land_DP_S_range10_12_"$((leap))".nc era5_land_DP_S_range12_14_"$((leap))".nc era5_land_DP_S_range14_16_"$((leap))".nc era5_land_DP_S_range16_18_"$((leap))".nc era5_land_DP_S_range18_20_"$((leap))".nc era5_land_DP_S_range20_22_"$((leap))".nc era5_land_DP_S_range22_24_"$((leap))".nc era5_land_DP_S_range24_26_"$((leap))".nc era5_land_DP_S_range26_28_"$((leap))".nc era5_land_DP_S_range28_30_"$((leap))".nc era5_land_DP_S_range30_32_"$((leap))".nc era5_land_DP_S_range32_inf_"$((leap))".nc era5_land_DP_S_range_enssum_"$((leap))".nc
#change variable name into DP_S, in order to be used in the resultanting
cdo chname,WS,DP_S era5_land_DP_S_range_enssum_"$((leap))".nc era5_land_DP_S_range_enssum_chname_"$((leap))".nc
#delete intermediate results
rm -f era5_land_WD_ifthen_setrtomiss_S_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_S_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_S_histcount_divc_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_S_histcount_divc_setmisstoc_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel5.8_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel8_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel10_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel12_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel14_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel16_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel18_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel20_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel22_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel24_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel26_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel28_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel30_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel32_"$((leap))".nc
rm -f era5_land_DP_S_range5.8_8_"$((leap))".nc
rm -f era5_land_DP_S_range8_10_"$((leap))".nc
rm -f era5_land_DP_S_range10_12_"$((leap))".nc
rm -f era5_land_DP_S_range12_14_"$((leap))".nc
rm -f era5_land_DP_S_range14_16_"$((leap))".nc
rm -f era5_land_DP_S_range16_18_"$((leap))".nc
rm -f era5_land_DP_S_range18_20_"$((leap))".nc
rm -f era5_land_DP_S_range20_22_"$((leap))".nc
rm -f era5_land_DP_S_range22_24_"$((leap))".nc
rm -f era5_land_DP_S_range24_26_"$((leap))".nc
rm -f era5_land_DP_S_range26_28_"$((leap))".nc
rm -f era5_land_DP_S_range28_30_"$((leap))".nc
rm -f era5_land_DP_S_range30_32_"$((leap))".nc
rm -f era5_land_DP_S_range32_inf_"$((leap))".nc

#SSW, -168.75≤SSW＜-146.25
cdo setvrange,-168.75,-146.2500001 era5_land_WD_ifthen_"$((leap))".nc era5_land_WD_ifthen_setvrange_SSW_"$((leap))".nc
#mask sand-moving wind speeds in the SSW azimuth
cdo ifthen era5_land_WD_ifthen_setvrange_SSW_"$((leap))".nc era5_land_WS_setrtomiss_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_SSW_"$((leap))".nc
#2 m/s bins of sand-moving wind speeds in the SSW azimuth, 5.8m/s≤WS＜8m/s, 8m/s≤WS＜10m/s, 10m/s≤WS＜12m/s, 12m/s≤WS＜14m/s, 14m/s≤WS＜16m/s, 16m/s≤WS＜18m/s, 18m/s≤WS＜20m/s, 20m/s≤WS＜22m/s, 22m/s≤WS＜24m/s, 24m/s≤WS＜26m/s, 26m/s≤WS＜28m/s, 28m/s≤WS＜30m/s, 30m/s≤WS＜32m/s, 32m/s≤WS
cdo histcount,5.8,7.9999999,9.9999999,11.9999999,13.9999999,15.9999999,17.9999999,19.9999999,21.9999999,23.9999999,25.9999999,27.9999999,29.9999999,31.9999999,inf era5_land_WS_setrtomiss_ifthen_SSW_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_SSW_histcount_"$((leap))".nc
#the sand-moving wind frequency in the SSW azimuth, 8784 is the total hours for the “$leap_year”
cdo divc,8784 era5_land_WS_setrtomiss_ifthen_SSW_histcount_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_"$((leap))".nc
#setmisstoc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_setmisstoc_"$((leap))".nc
#mulc
cdo mulc,100 era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_setmisstoc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_setmisstoc_mulc_"$((leap))".nc
#weighting factor U^2(U-Ut), U is the mean wind speed，and they are 7, 9, 11, 13, 15, 17, 19, 21, 23, 25, 27, 29, 31, 32m/s, respectively; and m/s needs to be conversed into knot. Notably, the value of U^2(U-Ut) is not divided by 100, as its subsquent multiplication represents a demensionless sand-moving wind frequency, rather than a percentage-based sand-moving wind frequency.
#level,5.8 U^2(U-Ut)=(7*3600/1852)*(7*3600/1852)*(7*3600/1852-5.8*3600/1852)=431.878795
#level,8 U^2(U-Ut)=(9*3600/1852)*(9*3600/1852)*(9*3600/1852-5.8*3600/1852)=1903.792241
#level,10 U^2(U-Ut)=(11*3600/1852)*(11*3600/1852)*(11*3600/1852-5.8*3600/1852)=4621.396906
#level,12 U^2(U-Ut)=(13*3600/1852)*(13*3600/1852)*(13*3600/1852-5.8*3600/1852)=8937.246908
#level,14 U^2(U-Ut)=(15*3600/1852)*(15*3600/1852)*(15*3600/1852-5.8*3600/1852)=15203.896368
#level,16 U^2(U-Ut)=(17*3600/1852)*(17*3600/1852)*(17*3600/1852-5.8*3600/1852)=23773.899403
#level,18 U^2(U-Ut)=(19*3600/1852)*(19*3600/1852)*(19*3600/1852-5.8*3600/1852)=34999.810131
#level,20 U^2(U-Ut)=(21*3600/1852)*(21*3600/1852)*(21*3600/1852-5.8*3600/1852)=49234.182673
#level,22 U^2(U-Ut)=(23*3600/1852)*(23*3600/1852)*(23*3600/1852-5.8*3600/1852)=66829.571146
#level,24 U^2(U-Ut)=(25*3600/1852)*(25*3600/1852)*(25*3600/1852-5.8*3600/1852)=88138.529669
#level,26 U^2(U-Ut)=(27*3600/1852)*(27*3600/1852)*(27*3600/1852-5.8*3600/1852)=113513.612360
#level,28 U^2(U-Ut)=(29*3600/1852)*(29*3600/1852)*(29*3600/1852-5.8*3600/1852)=143307.373339
#level,30 U^2(U-Ut)=(31*3600/1852)*(31*3600/1852)*(31*3600/1852-5.8*3600/1852)=177872.366724
#level,32 U^2(U-Ut)=(32*3600/1852)*(32*3600/1852)*(32*3600/1852-5.8*3600/1852)=197054.248731
#1 knot = 1 nautical mile/hour =1852m/hour=1852/3600m/s=0.5144m/s
#sellevel5.8
cdo -mulc,431.878795 -sellevel,5.8 era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel5.8_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel5.8_"$((leap))".nc era5_land_DP_SSW_range5.8_8_"$((leap))".nc
#sellevel8
cdo -mulc,1903.792241 -sellevel,8 era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel8_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel8_"$((leap))".nc era5_land_DP_SSW_range8_10_"$((leap))".nc
#sellevel10
cdo -mulc,4621.396906 -sellevel,10 era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel10_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel10_"$((leap))".nc era5_land_DP_SSW_range10_12_"$((leap))".nc
#sellevel12
cdo -mulc,8937.246908 -sellevel,12 era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel12_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel12_"$((leap))".nc era5_land_DP_SSW_range12_14_"$((leap))".nc
#sellevel14
cdo -mulc,15203.896368 -sellevel,14 era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel14_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel14_"$((leap))".nc era5_land_DP_SSW_range14_16_"$((leap))".nc
#sellevel16
cdo -mulc,23773.899403 -sellevel,16 era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel16_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel16_"$((leap))".nc era5_land_DP_SSW_range16_18_"$((leap))".nc
#sellevel18
cdo -mulc,34999.810131 -sellevel,18 era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel18_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel18_"$((leap))".nc era5_land_DP_SSW_range18_20_"$((leap))".nc
#sellevel20
cdo -mulc,49234.182673 -sellevel,20 era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel20_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel20_"$((leap))".nc era5_land_DP_SSW_range20_22_"$((leap))".nc
#sellevel22
cdo -mulc,66829.571146 -sellevel,22 era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel22_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel22_"$((leap))".nc era5_land_DP_SSW_range22_24_"$((leap))".nc
#sellevel24
cdo -mulc,88138.529669 -sellevel,24 era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel24_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel24_"$((leap))".nc era5_land_DP_SSW_range24_26_"$((leap))".nc
#sellevel26
cdo -mulc,113513.612360 -sellevel,26 era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel26_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel26_"$((leap))".nc era5_land_DP_SSW_range26_28_"$((leap))".nc
#sellevel28
cdo -mulc,143307.373339 -sellevel,28 era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel28_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel28_"$((leap))".nc era5_land_DP_SSW_range28_30_"$((leap))".nc
#sellevel30
cdo -mulc,177872.366724 -sellevel,30 era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel30_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel30_"$((leap))".nc era5_land_DP_SSW_range30_32_"$((leap))".nc
#sellevel32
cdo -mulc,197054.248731 -sellevel,32 era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel32_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel32_"$((leap))".nc era5_land_DP_SSW_range32_inf_"$((leap))".nc
#enssum
cdo enssum era5_land_DP_SSW_range5.8_8_"$((leap))".nc era5_land_DP_SSW_range8_10_"$((leap))".nc era5_land_DP_SSW_range10_12_"$((leap))".nc era5_land_DP_SSW_range12_14_"$((leap))".nc era5_land_DP_SSW_range14_16_"$((leap))".nc era5_land_DP_SSW_range16_18_"$((leap))".nc era5_land_DP_SSW_range18_20_"$((leap))".nc era5_land_DP_SSW_range20_22_"$((leap))".nc era5_land_DP_SSW_range22_24_"$((leap))".nc era5_land_DP_SSW_range24_26_"$((leap))".nc era5_land_DP_SSW_range26_28_"$((leap))".nc era5_land_DP_SSW_range28_30_"$((leap))".nc era5_land_DP_SSW_range30_32_"$((leap))".nc era5_land_DP_SSW_range32_inf_"$((leap))".nc era5_land_DP_SSW_range_enssum_"$((leap))".nc
#change variable name into DP_SSW, in order to be used in the resultanting
cdo chname,WS,DP_SSW era5_land_DP_SSW_range_enssum_"$((leap))".nc era5_land_DP_SSW_range_enssum_chname_"$((leap))".nc
#delete intermediate results
rm -f era5_land_WD_ifthen_setvrange_SSW_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SSW_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_setmisstoc_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel5.8_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel8_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel10_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel12_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel14_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel16_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel18_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel20_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel22_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel24_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel26_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel28_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel30_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel32_"$((leap))".nc
rm -f era5_land_DP_SSW_range5.8_8_"$((leap))".nc
rm -f era5_land_DP_SSW_range8_10_"$((leap))".nc
rm -f era5_land_DP_SSW_range10_12_"$((leap))".nc
rm -f era5_land_DP_SSW_range12_14_"$((leap))".nc
rm -f era5_land_DP_SSW_range14_16_"$((leap))".nc
rm -f era5_land_DP_SSW_range16_18_"$((leap))".nc
rm -f era5_land_DP_SSW_range18_20_"$((leap))".nc
rm -f era5_land_DP_SSW_range20_22_"$((leap))".nc
rm -f era5_land_DP_SSW_range22_24_"$((leap))".nc
rm -f era5_land_DP_SSW_range24_26_"$((leap))".nc
rm -f era5_land_DP_SSW_range26_28_"$((leap))".nc
rm -f era5_land_DP_SSW_range28_30_"$((leap))".nc
rm -f era5_land_DP_SSW_range30_32_"$((leap))".nc
rm -f era5_land_DP_SSW_range32_inf_"$((leap))".nc

#SW, -146.25≤SW＜-123.75
cdo setvrange,-146.25,-123.7500001 era5_land_WD_ifthen_"$((leap))".nc era5_land_WD_ifthen_setvrange_SW_"$((leap))".nc
#mask sand-moving wind speeds in the SW azimuth
cdo ifthen era5_land_WD_ifthen_setvrange_SW_"$((leap))".nc era5_land_WS_setrtomiss_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_SW_"$((leap))".nc
#2 m/s bins of sand-moving wind speeds in the SW azimuth, 5.8m/s≤WS＜8m/s, 8m/s≤WS＜10m/s, 10m/s≤WS＜12m/s, 12m/s≤WS＜14m/s, 14m/s≤WS＜16m/s, 16m/s≤WS＜18m/s, 18m/s≤WS＜20m/s, 20m/s≤WS＜22m/s, 22m/s≤WS＜24m/s, 24m/s≤WS＜26m/s, 26m/s≤WS＜28m/s, 28m/s≤WS＜30m/s, 30m/s≤WS＜32m/s, 32m/s≤WS
cdo histcount,5.8,7.9999999,9.9999999,11.9999999,13.9999999,15.9999999,17.9999999,19.9999999,21.9999999,23.9999999,25.9999999,27.9999999,29.9999999,31.9999999,inf era5_land_WS_setrtomiss_ifthen_SW_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_SW_histcount_"$((leap))".nc
#the sand-moving wind frequency in the SW azimuth, 8784 is the total hours for the “$leap_year”
cdo divc,8784 era5_land_WS_setrtomiss_ifthen_SW_histcount_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_"$((leap))".nc
#setmisstoc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_setmisstoc_"$((leap))".nc
#mulc
cdo mulc,100 era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_setmisstoc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_setmisstoc_mulc_"$((leap))".nc
#weighting factor U^2(U-Ut), U is the mean wind speed，and they are 7, 9, 11, 13, 15, 17, 19, 21, 23, 25, 27, 29, 31, 32m/s, respectively; and m/s needs to be conversed into knot. Notably, the value of U^2(U-Ut) is not divided by 100, as its subsquent multiplication represents a demensionless sand-moving wind frequency, rather than a percentage-based sand-moving wind frequency.
#level,5.8 U^2(U-Ut)=(7*3600/1852)*(7*3600/1852)*(7*3600/1852-5.8*3600/1852)=431.878795
#level,8 U^2(U-Ut)=(9*3600/1852)*(9*3600/1852)*(9*3600/1852-5.8*3600/1852)=1903.792241
#level,10 U^2(U-Ut)=(11*3600/1852)*(11*3600/1852)*(11*3600/1852-5.8*3600/1852)=4621.396906
#level,12 U^2(U-Ut)=(13*3600/1852)*(13*3600/1852)*(13*3600/1852-5.8*3600/1852)=8937.246908
#level,14 U^2(U-Ut)=(15*3600/1852)*(15*3600/1852)*(15*3600/1852-5.8*3600/1852)=15203.896368
#level,16 U^2(U-Ut)=(17*3600/1852)*(17*3600/1852)*(17*3600/1852-5.8*3600/1852)=23773.899403
#level,18 U^2(U-Ut)=(19*3600/1852)*(19*3600/1852)*(19*3600/1852-5.8*3600/1852)=34999.810131
#level,20 U^2(U-Ut)=(21*3600/1852)*(21*3600/1852)*(21*3600/1852-5.8*3600/1852)=49234.182673
#level,22 U^2(U-Ut)=(23*3600/1852)*(23*3600/1852)*(23*3600/1852-5.8*3600/1852)=66829.571146
#level,24 U^2(U-Ut)=(25*3600/1852)*(25*3600/1852)*(25*3600/1852-5.8*3600/1852)=88138.529669
#level,26 U^2(U-Ut)=(27*3600/1852)*(27*3600/1852)*(27*3600/1852-5.8*3600/1852)=113513.612360
#level,28 U^2(U-Ut)=(29*3600/1852)*(29*3600/1852)*(29*3600/1852-5.8*3600/1852)=143307.373339
#level,30 U^2(U-Ut)=(31*3600/1852)*(31*3600/1852)*(31*3600/1852-5.8*3600/1852)=177872.366724
#level,32 U^2(U-Ut)=(32*3600/1852)*(32*3600/1852)*(32*3600/1852-5.8*3600/1852)=197054.248731
#1 knot = 1 nautical mile/hour =1852m/hour=1852/3600m/s=0.5144m/s
#sellevel5.8
cdo -mulc,431.878795 -sellevel,5.8 era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel5.8_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel5.8_"$((leap))".nc era5_land_DP_SW_range5.8_8_"$((leap))".nc
#sellevel8
cdo -mulc,1903.792241 -sellevel,8 era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel8_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel8_"$((leap))".nc era5_land_DP_SW_range8_10_"$((leap))".nc
#sellevel10
cdo -mulc,4621.396906 -sellevel,10 era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel10_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel10_"$((leap))".nc era5_land_DP_SW_range10_12_"$((leap))".nc
#sellevel12
cdo -mulc,8937.246908 -sellevel,12 era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel12_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel12_"$((leap))".nc era5_land_DP_SW_range12_14_"$((leap))".nc
#sellevel14
cdo -mulc,15203.896368 -sellevel,14 era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel14_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel14_"$((leap))".nc era5_land_DP_SW_range14_16_"$((leap))".nc
#sellevel16
cdo -mulc,23773.899403 -sellevel,16 era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel16_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel16_"$((leap))".nc era5_land_DP_SW_range16_18_"$((leap))".nc
#sellevel18
cdo -mulc,34999.810131 -sellevel,18 era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel18_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel18_"$((leap))".nc era5_land_DP_SW_range18_20_"$((leap))".nc
#sellevel20
cdo -mulc,49234.182673 -sellevel,20 era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel20_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel20_"$((leap))".nc era5_land_DP_SW_range20_22_"$((leap))".nc
#sellevel22
cdo -mulc,66829.571146 -sellevel,22 era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel22_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel22_"$((leap))".nc era5_land_DP_SW_range22_24_"$((leap))".nc
#sellevel24
cdo -mulc,88138.529669 -sellevel,24 era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel24_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel24_"$((leap))".nc era5_land_DP_SW_range24_26_"$((leap))".nc
#sellevel26
cdo -mulc,113513.612360 -sellevel,26 era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel26_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel26_"$((leap))".nc era5_land_DP_SW_range26_28_"$((leap))".nc
#sellevel28
cdo -mulc,143307.373339 -sellevel,28 era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel28_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel28_"$((leap))".nc era5_land_DP_SW_range28_30_"$((leap))".nc
#sellevel30
cdo -mulc,177872.366724 -sellevel,30 era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel30_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel30_"$((leap))".nc era5_land_DP_SW_range30_32_"$((leap))".nc
#sellevel32
cdo -mulc,197054.248731 -sellevel,32 era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel32_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel32_"$((leap))".nc era5_land_DP_SW_range32_inf_"$((leap))".nc
#enssum
cdo enssum era5_land_DP_SW_range5.8_8_"$((leap))".nc era5_land_DP_SW_range8_10_"$((leap))".nc era5_land_DP_SW_range10_12_"$((leap))".nc era5_land_DP_SW_range12_14_"$((leap))".nc era5_land_DP_SW_range14_16_"$((leap))".nc era5_land_DP_SW_range16_18_"$((leap))".nc era5_land_DP_SW_range18_20_"$((leap))".nc era5_land_DP_SW_range20_22_"$((leap))".nc era5_land_DP_SW_range22_24_"$((leap))".nc era5_land_DP_SW_range24_26_"$((leap))".nc era5_land_DP_SW_range26_28_"$((leap))".nc era5_land_DP_SW_range28_30_"$((leap))".nc era5_land_DP_SW_range30_32_"$((leap))".nc era5_land_DP_SW_range32_inf_"$((leap))".nc era5_land_DP_SW_range_enssum_"$((leap))".nc
#change variable name into DP_SW, in order to be used in the resultanting
cdo chname,WS,DP_SW era5_land_DP_SW_range_enssum_"$((leap))".nc era5_land_DP_SW_range_enssum_chname_"$((leap))".nc
#delete intermediate results
rm -f era5_land_WD_ifthen_setvrange_SW_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SW_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_setmisstoc_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel5.8_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel8_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel10_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel12_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel14_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel16_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel18_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel20_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel22_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel24_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel26_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel28_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel30_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel32_"$((leap))".nc
rm -f era5_land_DP_SW_range5.8_8_"$((leap))".nc
rm -f era5_land_DP_SW_range8_10_"$((leap))".nc
rm -f era5_land_DP_SW_range10_12_"$((leap))".nc
rm -f era5_land_DP_SW_range12_14_"$((leap))".nc
rm -f era5_land_DP_SW_range14_16_"$((leap))".nc
rm -f era5_land_DP_SW_range16_18_"$((leap))".nc
rm -f era5_land_DP_SW_range18_20_"$((leap))".nc
rm -f era5_land_DP_SW_range20_22_"$((leap))".nc
rm -f era5_land_DP_SW_range22_24_"$((leap))".nc
rm -f era5_land_DP_SW_range24_26_"$((leap))".nc
rm -f era5_land_DP_SW_range26_28_"$((leap))".nc
rm -f era5_land_DP_SW_range28_30_"$((leap))".nc
rm -f era5_land_DP_SW_range30_32_"$((leap))".nc
rm -f era5_land_DP_SW_range32_inf_"$((leap))".nc

#WSW, -123.75≤WSW＜-101.25
cdo setvrange,-123.75,-101.2500001 era5_land_WD_ifthen_"$((leap))".nc era5_land_WD_ifthen_setvrange_WSW_"$((leap))".nc
#mask sand-moving wind speeds in the WSW azimuth
cdo ifthen era5_land_WD_ifthen_setvrange_WSW_"$((leap))".nc era5_land_WS_setrtomiss_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_WSW_"$((leap))".nc
#2 m/s bins of sand-moving wind speeds in the WSW azimuth, 5.8m/s≤WS＜8m/s, 8m/s≤WS＜10m/s, 10m/s≤WS＜12m/s, 12m/s≤WS＜14m/s, 14m/s≤WS＜16m/s, 16m/s≤WS＜18m/s, 18m/s≤WS＜20m/s, 20m/s≤WS＜22m/s, 22m/s≤WS＜24m/s, 24m/s≤WS＜26m/s, 26m/s≤WS＜28m/s, 28m/s≤WS＜30m/s, 30m/s≤WS＜32m/s, 32m/s≤WS
cdo histcount,5.8,7.9999999,9.9999999,11.9999999,13.9999999,15.9999999,17.9999999,19.9999999,21.9999999,23.9999999,25.9999999,27.9999999,29.9999999,31.9999999,inf era5_land_WS_setrtomiss_ifthen_WSW_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_WSW_histcount_"$((leap))".nc
#the sand-moving wind frequency in the WSW azimuth, 8784 is the total hours for the “$leap_year”
cdo divc,8784 era5_land_WS_setrtomiss_ifthen_WSW_histcount_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_"$((leap))".nc
#setmisstoc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_setmisstoc_"$((leap))".nc
#mulc
cdo mulc,100 era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_setmisstoc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_setmisstoc_mulc_"$((leap))".nc
#weighting factor U^2(U-Ut), U is the mean wind speed，and they are 7, 9, 11, 13, 15, 17, 19, 21, 23, 25, 27, 29, 31, 32m/s, respectively; and m/s needs to be conversed into knot. Notably, the value of U^2(U-Ut) is not divided by 100, as its subsquent multiplication represents a demensionless sand-moving wind frequency, rather than a percentage-based sand-moving wind frequency.
#level,5.8 U^2(U-Ut)=(7*3600/1852)*(7*3600/1852)*(7*3600/1852-5.8*3600/1852)=431.878795
#level,8 U^2(U-Ut)=(9*3600/1852)*(9*3600/1852)*(9*3600/1852-5.8*3600/1852)=1903.792241
#level,10 U^2(U-Ut)=(11*3600/1852)*(11*3600/1852)*(11*3600/1852-5.8*3600/1852)=4621.396906
#level,12 U^2(U-Ut)=(13*3600/1852)*(13*3600/1852)*(13*3600/1852-5.8*3600/1852)=8937.246908
#level,14 U^2(U-Ut)=(15*3600/1852)*(15*3600/1852)*(15*3600/1852-5.8*3600/1852)=15203.896368
#level,16 U^2(U-Ut)=(17*3600/1852)*(17*3600/1852)*(17*3600/1852-5.8*3600/1852)=23773.899403
#level,18 U^2(U-Ut)=(19*3600/1852)*(19*3600/1852)*(19*3600/1852-5.8*3600/1852)=34999.810131
#level,20 U^2(U-Ut)=(21*3600/1852)*(21*3600/1852)*(21*3600/1852-5.8*3600/1852)=49234.182673
#level,22 U^2(U-Ut)=(23*3600/1852)*(23*3600/1852)*(23*3600/1852-5.8*3600/1852)=66829.571146
#level,24 U^2(U-Ut)=(25*3600/1852)*(25*3600/1852)*(25*3600/1852-5.8*3600/1852)=88138.529669
#level,26 U^2(U-Ut)=(27*3600/1852)*(27*3600/1852)*(27*3600/1852-5.8*3600/1852)=113513.612360
#level,28 U^2(U-Ut)=(29*3600/1852)*(29*3600/1852)*(29*3600/1852-5.8*3600/1852)=143307.373339
#level,30 U^2(U-Ut)=(31*3600/1852)*(31*3600/1852)*(31*3600/1852-5.8*3600/1852)=177872.366724
#level,32 U^2(U-Ut)=(32*3600/1852)*(32*3600/1852)*(32*3600/1852-5.8*3600/1852)=197054.248731
#1 knot = 1 nautical mile/hour =1852m/hour=1852/3600m/s=0.5144m/s
#sellevel5.8
cdo -mulc,431.878795 -sellevel,5.8 era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel5.8_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel5.8_"$((leap))".nc era5_land_DP_WSW_range5.8_8_"$((leap))".nc
#sellevel8
cdo -mulc,1903.792241 -sellevel,8 era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel8_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel8_"$((leap))".nc era5_land_DP_WSW_range8_10_"$((leap))".nc
#sellevel10
cdo -mulc,4621.396906 -sellevel,10 era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel10_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel10_"$((leap))".nc era5_land_DP_WSW_range10_12_"$((leap))".nc
#sellevel12
cdo -mulc,8937.246908 -sellevel,12 era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel12_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel12_"$((leap))".nc era5_land_DP_WSW_range12_14_"$((leap))".nc
#sellevel14
cdo -mulc,15203.896368 -sellevel,14 era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel14_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel14_"$((leap))".nc era5_land_DP_WSW_range14_16_"$((leap))".nc
#sellevel16
cdo -mulc,23773.899403 -sellevel,16 era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel16_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel16_"$((leap))".nc era5_land_DP_WSW_range16_18_"$((leap))".nc
#sellevel18
cdo -mulc,34999.810131 -sellevel,18 era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel18_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel18_"$((leap))".nc era5_land_DP_WSW_range18_20_"$((leap))".nc
#sellevel20
cdo -mulc,49234.182673 -sellevel,20 era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel20_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel20_"$((leap))".nc era5_land_DP_WSW_range20_22_"$((leap))".nc
#sellevel22
cdo -mulc,66829.571146 -sellevel,22 era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel22_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel22_"$((leap))".nc era5_land_DP_WSW_range22_24_"$((leap))".nc
#sellevel24
cdo -mulc,88138.529669 -sellevel,24 era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel24_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel24_"$((leap))".nc era5_land_DP_WSW_range24_26_"$((leap))".nc
#sellevel26
cdo -mulc,113513.612360 -sellevel,26 era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel26_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel26_"$((leap))".nc era5_land_DP_WSW_range26_28_"$((leap))".nc
#sellevel28
cdo -mulc,143307.373339 -sellevel,28 era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel28_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel28_"$((leap))".nc era5_land_DP_WSW_range28_30_"$((leap))".nc
#sellevel30
cdo -mulc,177872.366724 -sellevel,30 era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel30_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel30_"$((leap))".nc era5_land_DP_WSW_range30_32_"$((leap))".nc
#sellevel32
cdo -mulc,197054.248731 -sellevel,32 era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel32_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel32_"$((leap))".nc era5_land_DP_WSW_range32_inf_"$((leap))".nc
#enssum
cdo enssum era5_land_DP_WSW_range5.8_8_"$((leap))".nc era5_land_DP_WSW_range8_10_"$((leap))".nc era5_land_DP_WSW_range10_12_"$((leap))".nc era5_land_DP_WSW_range12_14_"$((leap))".nc era5_land_DP_WSW_range14_16_"$((leap))".nc era5_land_DP_WSW_range16_18_"$((leap))".nc era5_land_DP_WSW_range18_20_"$((leap))".nc era5_land_DP_WSW_range20_22_"$((leap))".nc era5_land_DP_WSW_range22_24_"$((leap))".nc era5_land_DP_WSW_range24_26_"$((leap))".nc era5_land_DP_WSW_range26_28_"$((leap))".nc era5_land_DP_WSW_range28_30_"$((leap))".nc era5_land_DP_WSW_range30_32_"$((leap))".nc era5_land_DP_WSW_range32_inf_"$((leap))".nc era5_land_DP_WSW_range_enssum_"$((leap))".nc
#change variable name into DP_WSW, in order to be used in the resultanting
cdo chname,WS,DP_WSW era5_land_DP_WSW_range_enssum_"$((leap))".nc era5_land_DP_WSW_range_enssum_chname_"$((leap))".nc
#delete intermediate results
rm -f era5_land_WD_ifthen_setvrange_WSW_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_WSW_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_setmisstoc_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel5.8_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel8_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel10_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel12_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel14_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel16_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel18_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel20_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel22_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel24_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel26_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel28_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel30_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel32_"$((leap))".nc
rm -f era5_land_DP_WSW_range5.8_8_"$((leap))".nc
rm -f era5_land_DP_WSW_range8_10_"$((leap))".nc
rm -f era5_land_DP_WSW_range10_12_"$((leap))".nc
rm -f era5_land_DP_WSW_range12_14_"$((leap))".nc
rm -f era5_land_DP_WSW_range14_16_"$((leap))".nc
rm -f era5_land_DP_WSW_range16_18_"$((leap))".nc
rm -f era5_land_DP_WSW_range18_20_"$((leap))".nc
rm -f era5_land_DP_WSW_range20_22_"$((leap))".nc
rm -f era5_land_DP_WSW_range22_24_"$((leap))".nc
rm -f era5_land_DP_WSW_range24_26_"$((leap))".nc
rm -f era5_land_DP_WSW_range26_28_"$((leap))".nc
rm -f era5_land_DP_WSW_range28_30_"$((leap))".nc
rm -f era5_land_DP_WSW_range30_32_"$((leap))".nc
rm -f era5_land_DP_WSW_range32_inf_"$((leap))".nc

#W, -101.25≤W＜-78.75
cdo setvrange,-101.25,-78.7500001 era5_land_WD_ifthen_"$((leap))".nc era5_land_WD_ifthen_setvrange_W_"$((leap))".nc
#mask sand-moving wind speeds in the W azimuth
cdo ifthen era5_land_WD_ifthen_setvrange_W_"$((leap))".nc era5_land_WS_setrtomiss_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_W_"$((leap))".nc
#2 m/s bins of sand-moving wind speeds in the W azimuth, 5.8m/s≤WS＜8m/s, 8m/s≤WS＜10m/s, 10m/s≤WS＜12m/s, 12m/s≤WS＜14m/s, 14m/s≤WS＜16m/s, 16m/s≤WS＜18m/s, 18m/s≤WS＜20m/s, 20m/s≤WS＜22m/s, 22m/s≤WS＜24m/s, 24m/s≤WS＜26m/s, 26m/s≤WS＜28m/s, 28m/s≤WS＜30m/s, 30m/s≤WS＜32m/s, 32m/s≤WS
cdo histcount,5.8,7.9999999,9.9999999,11.9999999,13.9999999,15.9999999,17.9999999,19.9999999,21.9999999,23.9999999,25.9999999,27.9999999,29.9999999,31.9999999,inf era5_land_WS_setrtomiss_ifthen_W_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_W_histcount_"$((leap))".nc
#the sand-moving wind frequency in the W azimuth, 8784 is the total hours for the “$leap_year”
cdo divc,8784 era5_land_WS_setrtomiss_ifthen_W_histcount_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_W_histcount_divc_"$((leap))".nc
#setmisstoc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_W_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_W_histcount_divc_setmisstoc_"$((leap))".nc
#mulc
cdo mulc,100 era5_land_WS_setrtomiss_ifthen_W_histcount_divc_setmisstoc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_W_histcount_divc_setmisstoc_mulc_"$((leap))".nc
#weighting factor U^2(U-Ut), U is the mean wind speed，and they are 7, 9, 11, 13, 15, 17, 19, 21, 23, 25, 27, 29, 31, 32m/s, respectively; and m/s needs to be conversed into knot. Notably, the value of U^2(U-Ut) is not divided by 100, as its subsquent multiplication represents a demensionless sand-moving wind frequency, rather than a percentage-based sand-moving wind frequency.
#level,5.8 U^2(U-Ut)=(7*3600/1852)*(7*3600/1852)*(7*3600/1852-5.8*3600/1852)=431.878795
#level,8 U^2(U-Ut)=(9*3600/1852)*(9*3600/1852)*(9*3600/1852-5.8*3600/1852)=1903.792241
#level,10 U^2(U-Ut)=(11*3600/1852)*(11*3600/1852)*(11*3600/1852-5.8*3600/1852)=4621.396906
#level,12 U^2(U-Ut)=(13*3600/1852)*(13*3600/1852)*(13*3600/1852-5.8*3600/1852)=8937.246908
#level,14 U^2(U-Ut)=(15*3600/1852)*(15*3600/1852)*(15*3600/1852-5.8*3600/1852)=15203.896368
#level,16 U^2(U-Ut)=(17*3600/1852)*(17*3600/1852)*(17*3600/1852-5.8*3600/1852)=23773.899403
#level,18 U^2(U-Ut)=(19*3600/1852)*(19*3600/1852)*(19*3600/1852-5.8*3600/1852)=34999.810131
#level,20 U^2(U-Ut)=(21*3600/1852)*(21*3600/1852)*(21*3600/1852-5.8*3600/1852)=49234.182673
#level,22 U^2(U-Ut)=(23*3600/1852)*(23*3600/1852)*(23*3600/1852-5.8*3600/1852)=66829.571146
#level,24 U^2(U-Ut)=(25*3600/1852)*(25*3600/1852)*(25*3600/1852-5.8*3600/1852)=88138.529669
#level,26 U^2(U-Ut)=(27*3600/1852)*(27*3600/1852)*(27*3600/1852-5.8*3600/1852)=113513.612360
#level,28 U^2(U-Ut)=(29*3600/1852)*(29*3600/1852)*(29*3600/1852-5.8*3600/1852)=143307.373339
#level,30 U^2(U-Ut)=(31*3600/1852)*(31*3600/1852)*(31*3600/1852-5.8*3600/1852)=177872.366724
#level,32 U^2(U-Ut)=(32*3600/1852)*(32*3600/1852)*(32*3600/1852-5.8*3600/1852)=197054.248731
#1 knot = 1 nautical mile/hour =1852m/hour=1852/3600m/s=0.5144m/s
#sellevel5.8
cdo -mulc,431.878795 -sellevel,5.8 era5_land_WS_setrtomiss_ifthen_W_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel5.8_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel5.8_"$((leap))".nc era5_land_DP_W_range5.8_8_"$((leap))".nc
#sellevel8
cdo -mulc,1903.792241 -sellevel,8 era5_land_WS_setrtomiss_ifthen_W_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel8_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel8_"$((leap))".nc era5_land_DP_W_range8_10_"$((leap))".nc
#sellevel10
cdo -mulc,4621.396906 -sellevel,10 era5_land_WS_setrtomiss_ifthen_W_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel10_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel10_"$((leap))".nc era5_land_DP_W_range10_12_"$((leap))".nc
#sellevel12
cdo -mulc,8937.246908 -sellevel,12 era5_land_WS_setrtomiss_ifthen_W_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel12_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel12_"$((leap))".nc era5_land_DP_W_range12_14_"$((leap))".nc
#sellevel14
cdo -mulc,15203.896368 -sellevel,14 era5_land_WS_setrtomiss_ifthen_W_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel14_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel14_"$((leap))".nc era5_land_DP_W_range14_16_"$((leap))".nc
#sellevel16
cdo -mulc,23773.899403 -sellevel,16 era5_land_WS_setrtomiss_ifthen_W_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel16_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel16_"$((leap))".nc era5_land_DP_W_range16_18_"$((leap))".nc
#sellevel18
cdo -mulc,34999.810131 -sellevel,18 era5_land_WS_setrtomiss_ifthen_W_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel18_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel18_"$((leap))".nc era5_land_DP_W_range18_20_"$((leap))".nc
#sellevel20
cdo -mulc,49234.182673 -sellevel,20 era5_land_WS_setrtomiss_ifthen_W_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel20_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel20_"$((leap))".nc era5_land_DP_W_range20_22_"$((leap))".nc
#sellevel22
cdo -mulc,66829.571146 -sellevel,22 era5_land_WS_setrtomiss_ifthen_W_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel22_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel22_"$((leap))".nc era5_land_DP_W_range22_24_"$((leap))".nc
#sellevel24
cdo -mulc,88138.529669 -sellevel,24 era5_land_WS_setrtomiss_ifthen_W_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel24_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel24_"$((leap))".nc era5_land_DP_W_range24_26_"$((leap))".nc
#sellevel26
cdo -mulc,113513.612360 -sellevel,26 era5_land_WS_setrtomiss_ifthen_W_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel26_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel26_"$((leap))".nc era5_land_DP_W_range26_28_"$((leap))".nc
#sellevel28
cdo -mulc,143307.373339 -sellevel,28 era5_land_WS_setrtomiss_ifthen_W_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel28_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel28_"$((leap))".nc era5_land_DP_W_range28_30_"$((leap))".nc
#sellevel30
cdo -mulc,177872.366724 -sellevel,30 era5_land_WS_setrtomiss_ifthen_W_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel30_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel30_"$((leap))".nc era5_land_DP_W_range30_32_"$((leap))".nc
#sellevel32
cdo -mulc,197054.248731 -sellevel,32 era5_land_WS_setrtomiss_ifthen_W_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel32_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel32_"$((leap))".nc era5_land_DP_W_range32_inf_"$((leap))".nc
#enssum
cdo enssum era5_land_DP_W_range5.8_8_"$((leap))".nc era5_land_DP_W_range8_10_"$((leap))".nc era5_land_DP_W_range10_12_"$((leap))".nc era5_land_DP_W_range12_14_"$((leap))".nc era5_land_DP_W_range14_16_"$((leap))".nc era5_land_DP_W_range16_18_"$((leap))".nc era5_land_DP_W_range18_20_"$((leap))".nc era5_land_DP_W_range20_22_"$((leap))".nc era5_land_DP_W_range22_24_"$((leap))".nc era5_land_DP_W_range24_26_"$((leap))".nc era5_land_DP_W_range26_28_"$((leap))".nc era5_land_DP_W_range28_30_"$((leap))".nc era5_land_DP_W_range30_32_"$((leap))".nc era5_land_DP_W_range32_inf_"$((leap))".nc era5_land_DP_W_range_enssum_"$((leap))".nc
#change variable name into DP_W, in order to be used in the resultanting
cdo chname,WS,DP_W era5_land_DP_W_range_enssum_"$((leap))".nc era5_land_DP_W_range_enssum_chname_"$((leap))".nc
#delete intermediate results
rm -f era5_land_WD_ifthen_setvrange_W_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_W_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_W_histcount_divc_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_W_histcount_divc_setmisstoc_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel5.8_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel8_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel10_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel12_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel14_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel16_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel18_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel20_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel22_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel24_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel26_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel28_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel30_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel32_"$((leap))".nc
rm -f era5_land_DP_W_range5.8_8_"$((leap))".nc
rm -f era5_land_DP_W_range8_10_"$((leap))".nc
rm -f era5_land_DP_W_range10_12_"$((leap))".nc
rm -f era5_land_DP_W_range12_14_"$((leap))".nc
rm -f era5_land_DP_W_range14_16_"$((leap))".nc
rm -f era5_land_DP_W_range16_18_"$((leap))".nc
rm -f era5_land_DP_W_range18_20_"$((leap))".nc
rm -f era5_land_DP_W_range20_22_"$((leap))".nc
rm -f era5_land_DP_W_range22_24_"$((leap))".nc
rm -f era5_land_DP_W_range24_26_"$((leap))".nc
rm -f era5_land_DP_W_range26_28_"$((leap))".nc
rm -f era5_land_DP_W_range28_30_"$((leap))".nc
rm -f era5_land_DP_W_range30_32_"$((leap))".nc
rm -f era5_land_DP_W_range32_inf_"$((leap))".nc

#WNW, -78.75≤WNW＜-56.25
cdo setvrange,-78.75,-56.2500001 era5_land_WD_ifthen_"$((leap))".nc era5_land_WD_ifthen_setvrange_WNW_"$((leap))".nc
#mask sand-moving wind speeds in the WNW azimuth
cdo ifthen era5_land_WD_ifthen_setvrange_WNW_"$((leap))".nc era5_land_WS_setrtomiss_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_WNW_"$((leap))".nc
#2 m/s bins of sand-moving wind speeds in the WNW azimuth, 5.8m/s≤WS＜8m/s, 8m/s≤WS＜10m/s, 10m/s≤WS＜12m/s, 12m/s≤WS＜14m/s, 14m/s≤WS＜16m/s, 16m/s≤WS＜18m/s, 18m/s≤WS＜20m/s, 20m/s≤WS＜22m/s, 22m/s≤WS＜24m/s, 24m/s≤WS＜26m/s, 26m/s≤WS＜28m/s, 28m/s≤WS＜30m/s, 30m/s≤WS＜32m/s, 32m/s≤WS
cdo histcount,5.8,7.9999999,9.9999999,11.9999999,13.9999999,15.9999999,17.9999999,19.9999999,21.9999999,23.9999999,25.9999999,27.9999999,29.9999999,31.9999999,inf era5_land_WS_setrtomiss_ifthen_WNW_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_WNW_histcount_"$((leap))".nc
#the sand-moving wind frequency in the WNW azimuth, 8784 is the total hours for the “$leap_year”
cdo divc,8784 era5_land_WS_setrtomiss_ifthen_WNW_histcount_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_"$((leap))".nc
#setmisstoc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_setmisstoc_"$((leap))".nc
#mulc
cdo mulc,100 era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_setmisstoc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_setmisstoc_mulc_"$((leap))".nc
#weighting factor U^2(U-Ut), U is the mean wind speed，and they are 7, 9, 11, 13, 15, 17, 19, 21, 23, 25, 27, 29, 31, 32m/s, respectively; and m/s needs to be conversed into knot. Notably, the value of U^2(U-Ut) is not divided by 100, as its subsquent multiplication represents a demensionless sand-moving wind frequency, rather than a percentage-based sand-moving wind frequency.
#level,5.8 U^2(U-Ut)=(7*3600/1852)*(7*3600/1852)*(7*3600/1852-5.8*3600/1852)=431.878795
#level,8 U^2(U-Ut)=(9*3600/1852)*(9*3600/1852)*(9*3600/1852-5.8*3600/1852)=1903.792241
#level,10 U^2(U-Ut)=(11*3600/1852)*(11*3600/1852)*(11*3600/1852-5.8*3600/1852)=4621.396906
#level,12 U^2(U-Ut)=(13*3600/1852)*(13*3600/1852)*(13*3600/1852-5.8*3600/1852)=8937.246908
#level,14 U^2(U-Ut)=(15*3600/1852)*(15*3600/1852)*(15*3600/1852-5.8*3600/1852)=15203.896368
#level,16 U^2(U-Ut)=(17*3600/1852)*(17*3600/1852)*(17*3600/1852-5.8*3600/1852)=23773.899403
#level,18 U^2(U-Ut)=(19*3600/1852)*(19*3600/1852)*(19*3600/1852-5.8*3600/1852)=34999.810131
#level,20 U^2(U-Ut)=(21*3600/1852)*(21*3600/1852)*(21*3600/1852-5.8*3600/1852)=49234.182673
#level,22 U^2(U-Ut)=(23*3600/1852)*(23*3600/1852)*(23*3600/1852-5.8*3600/1852)=66829.571146
#level,24 U^2(U-Ut)=(25*3600/1852)*(25*3600/1852)*(25*3600/1852-5.8*3600/1852)=88138.529669
#level,26 U^2(U-Ut)=(27*3600/1852)*(27*3600/1852)*(27*3600/1852-5.8*3600/1852)=113513.612360
#level,28 U^2(U-Ut)=(29*3600/1852)*(29*3600/1852)*(29*3600/1852-5.8*3600/1852)=143307.373339
#level,30 U^2(U-Ut)=(31*3600/1852)*(31*3600/1852)*(31*3600/1852-5.8*3600/1852)=177872.366724
#level,32 U^2(U-Ut)=(32*3600/1852)*(32*3600/1852)*(32*3600/1852-5.8*3600/1852)=197054.248731
#1 knot = 1 nautical mile/hour =1852m/hour=1852/3600m/s=0.5144m/s
#sellevel5.8
cdo -mulc,431.878795 -sellevel,5.8 era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel5.8_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel5.8_"$((leap))".nc era5_land_DP_WNW_range5.8_8_"$((leap))".nc
#sellevel8
cdo -mulc,1903.792241 -sellevel,8 era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel8_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel8_"$((leap))".nc era5_land_DP_WNW_range8_10_"$((leap))".nc
#sellevel10
cdo -mulc,4621.396906 -sellevel,10 era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel10_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel10_"$((leap))".nc era5_land_DP_WNW_range10_12_"$((leap))".nc
#sellevel12
cdo -mulc,8937.246908 -sellevel,12 era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel12_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel12_"$((leap))".nc era5_land_DP_WNW_range12_14_"$((leap))".nc
#sellevel14
cdo -mulc,15203.896368 -sellevel,14 era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel14_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel14_"$((leap))".nc era5_land_DP_WNW_range14_16_"$((leap))".nc
#sellevel16
cdo -mulc,23773.899403 -sellevel,16 era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel16_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel16_"$((leap))".nc era5_land_DP_WNW_range16_18_"$((leap))".nc
#sellevel18
cdo -mulc,34999.810131 -sellevel,18 era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel18_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel18_"$((leap))".nc era5_land_DP_WNW_range18_20_"$((leap))".nc
#sellevel20
cdo -mulc,49234.182673 -sellevel,20 era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel20_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel20_"$((leap))".nc era5_land_DP_WNW_range20_22_"$((leap))".nc
#sellevel22
cdo -mulc,66829.571146 -sellevel,22 era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel22_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel22_"$((leap))".nc era5_land_DP_WNW_range22_24_"$((leap))".nc
#sellevel24
cdo -mulc,88138.529669 -sellevel,24 era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel24_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel24_"$((leap))".nc era5_land_DP_WNW_range24_26_"$((leap))".nc
#sellevel26
cdo -mulc,113513.612360 -sellevel,26 era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel26_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel26_"$((leap))".nc era5_land_DP_WNW_range26_28_"$((leap))".nc
#sellevel28
cdo -mulc,143307.373339 -sellevel,28 era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel28_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel28_"$((leap))".nc era5_land_DP_WNW_range28_30_"$((leap))".nc
#sellevel30
cdo -mulc,177872.366724 -sellevel,30 era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel30_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel30_"$((leap))".nc era5_land_DP_WNW_range30_32_"$((leap))".nc
#sellevel32
cdo -mulc,197054.248731 -sellevel,32 era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel32_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel32_"$((leap))".nc era5_land_DP_WNW_range32_inf_"$((leap))".nc
#enssum
cdo enssum era5_land_DP_WNW_range5.8_8_"$((leap))".nc era5_land_DP_WNW_range8_10_"$((leap))".nc era5_land_DP_WNW_range10_12_"$((leap))".nc era5_land_DP_WNW_range12_14_"$((leap))".nc era5_land_DP_WNW_range14_16_"$((leap))".nc era5_land_DP_WNW_range16_18_"$((leap))".nc era5_land_DP_WNW_range18_20_"$((leap))".nc era5_land_DP_WNW_range20_22_"$((leap))".nc era5_land_DP_WNW_range22_24_"$((leap))".nc era5_land_DP_WNW_range24_26_"$((leap))".nc era5_land_DP_WNW_range26_28_"$((leap))".nc era5_land_DP_WNW_range28_30_"$((leap))".nc era5_land_DP_WNW_range30_32_"$((leap))".nc era5_land_DP_WNW_range32_inf_"$((leap))".nc era5_land_DP_WNW_range_enssum_"$((leap))".nc
#change variable name into DP_WNW, in order to be used in the resultanting
cdo chname,WS,DP_WNW era5_land_DP_WNW_range_enssum_"$((leap))".nc era5_land_DP_WNW_range_enssum_chname_"$((leap))".nc
#delete intermediate results
rm -f era5_land_WD_ifthen_setvrange_WNW_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_WNW_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_setmisstoc_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel5.8_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel8_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel10_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel12_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel14_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel16_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel18_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel20_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel22_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel24_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel26_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel28_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel30_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel32_"$((leap))".nc
rm -f era5_land_DP_WNW_range5.8_8_"$((leap))".nc
rm -f era5_land_DP_WNW_range8_10_"$((leap))".nc
rm -f era5_land_DP_WNW_range10_12_"$((leap))".nc
rm -f era5_land_DP_WNW_range12_14_"$((leap))".nc
rm -f era5_land_DP_WNW_range14_16_"$((leap))".nc
rm -f era5_land_DP_WNW_range16_18_"$((leap))".nc
rm -f era5_land_DP_WNW_range18_20_"$((leap))".nc
rm -f era5_land_DP_WNW_range20_22_"$((leap))".nc
rm -f era5_land_DP_WNW_range22_24_"$((leap))".nc
rm -f era5_land_DP_WNW_range24_26_"$((leap))".nc
rm -f era5_land_DP_WNW_range26_28_"$((leap))".nc
rm -f era5_land_DP_WNW_range28_30_"$((leap))".nc
rm -f era5_land_DP_WNW_range30_32_"$((leap))".nc
rm -f era5_land_DP_WNW_range32_inf_"$((leap))".nc

#NW, -56.25≤NW＜-33.75
cdo setvrange,-56.25,-33.7500001 era5_land_WD_ifthen_"$((leap))".nc era5_land_WD_ifthen_setvrange_NW_"$((leap))".nc
#mask sand-moving wind speeds in the NW azimuth
cdo ifthen era5_land_WD_ifthen_setvrange_NW_"$((leap))".nc era5_land_WS_setrtomiss_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_NW_"$((leap))".nc
#2 m/s bins of sand-moving wind speeds in the NW azimuth, 5.8m/s≤WS＜8m/s, 8m/s≤WS＜10m/s, 10m/s≤WS＜12m/s, 12m/s≤WS＜14m/s, 14m/s≤WS＜16m/s, 16m/s≤WS＜18m/s, 18m/s≤WS＜20m/s, 20m/s≤WS＜22m/s, 22m/s≤WS＜24m/s, 24m/s≤WS＜26m/s, 26m/s≤WS＜28m/s, 28m/s≤WS＜30m/s, 30m/s≤WS＜32m/s, 32m/s≤WS
cdo histcount,5.8,7.9999999,9.9999999,11.9999999,13.9999999,15.9999999,17.9999999,19.9999999,21.9999999,23.9999999,25.9999999,27.9999999,29.9999999,31.9999999,inf era5_land_WS_setrtomiss_ifthen_NW_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_NW_histcount_"$((leap))".nc
#the sand-moving wind frequency in the NW azimuth, 8784 is the total hours for the “$leap_year”
cdo divc,8784 era5_land_WS_setrtomiss_ifthen_NW_histcount_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_"$((leap))".nc
#setmisstoc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_setmisstoc_"$((leap))".nc
#mulc
cdo mulc,100 era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_setmisstoc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_setmisstoc_mulc_"$((leap))".nc
#weighting factor U^2(U-Ut), U is the mean wind speed，and they are 7, 9, 11, 13, 15, 17, 19, 21, 23, 25, 27, 29, 31, 32m/s, respectively; and m/s needs to be conversed into knot. Notably, the value of U^2(U-Ut) is not divided by 100, as its subsquent multiplication represents a demensionless sand-moving wind frequency, rather than a percentage-based sand-moving wind frequency.
#level,5.8 U^2(U-Ut)=(7*3600/1852)*(7*3600/1852)*(7*3600/1852-5.8*3600/1852)=431.878795
#level,8 U^2(U-Ut)=(9*3600/1852)*(9*3600/1852)*(9*3600/1852-5.8*3600/1852)=1903.792241
#level,10 U^2(U-Ut)=(11*3600/1852)*(11*3600/1852)*(11*3600/1852-5.8*3600/1852)=4621.396906
#level,12 U^2(U-Ut)=(13*3600/1852)*(13*3600/1852)*(13*3600/1852-5.8*3600/1852)=8937.246908
#level,14 U^2(U-Ut)=(15*3600/1852)*(15*3600/1852)*(15*3600/1852-5.8*3600/1852)=15203.896368
#level,16 U^2(U-Ut)=(17*3600/1852)*(17*3600/1852)*(17*3600/1852-5.8*3600/1852)=23773.899403
#level,18 U^2(U-Ut)=(19*3600/1852)*(19*3600/1852)*(19*3600/1852-5.8*3600/1852)=34999.810131
#level,20 U^2(U-Ut)=(21*3600/1852)*(21*3600/1852)*(21*3600/1852-5.8*3600/1852)=49234.182673
#level,22 U^2(U-Ut)=(23*3600/1852)*(23*3600/1852)*(23*3600/1852-5.8*3600/1852)=66829.571146
#level,24 U^2(U-Ut)=(25*3600/1852)*(25*3600/1852)*(25*3600/1852-5.8*3600/1852)=88138.529669
#level,26 U^2(U-Ut)=(27*3600/1852)*(27*3600/1852)*(27*3600/1852-5.8*3600/1852)=113513.612360
#level,28 U^2(U-Ut)=(29*3600/1852)*(29*3600/1852)*(29*3600/1852-5.8*3600/1852)=143307.373339
#level,30 U^2(U-Ut)=(31*3600/1852)*(31*3600/1852)*(31*3600/1852-5.8*3600/1852)=177872.366724
#level,32 U^2(U-Ut)=(32*3600/1852)*(32*3600/1852)*(32*3600/1852-5.8*3600/1852)=197054.248731
#1 knot = 1 nautical mile/hour =1852m/hour=1852/3600m/s=0.5144m/s
#sellevel5.8
cdo -mulc,431.878795 -sellevel,5.8 era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel5.8_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel5.8_"$((leap))".nc era5_land_DP_NW_range5.8_8_"$((leap))".nc
#sellevel8
cdo -mulc,1903.792241 -sellevel,8 era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel8_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel8_"$((leap))".nc era5_land_DP_NW_range8_10_"$((leap))".nc
#sellevel10
cdo -mulc,4621.396906 -sellevel,10 era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel10_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel10_"$((leap))".nc era5_land_DP_NW_range10_12_"$((leap))".nc
#sellevel12
cdo -mulc,8937.246908 -sellevel,12 era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel12_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel12_"$((leap))".nc era5_land_DP_NW_range12_14_"$((leap))".nc
#sellevel14
cdo -mulc,15203.896368 -sellevel,14 era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel14_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel14_"$((leap))".nc era5_land_DP_NW_range14_16_"$((leap))".nc
#sellevel16
cdo -mulc,23773.899403 -sellevel,16 era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel16_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel16_"$((leap))".nc era5_land_DP_NW_range16_18_"$((leap))".nc
#sellevel18
cdo -mulc,34999.810131 -sellevel,18 era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel18_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel18_"$((leap))".nc era5_land_DP_NW_range18_20_"$((leap))".nc
#sellevel20
cdo -mulc,49234.182673 -sellevel,20 era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel20_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel20_"$((leap))".nc era5_land_DP_NW_range20_22_"$((leap))".nc
#sellevel22
cdo -mulc,66829.571146 -sellevel,22 era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel22_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel22_"$((leap))".nc era5_land_DP_NW_range22_24_"$((leap))".nc
#sellevel24
cdo -mulc,88138.529669 -sellevel,24 era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel24_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel24_"$((leap))".nc era5_land_DP_NW_range24_26_"$((leap))".nc
#sellevel26
cdo -mulc,113513.612360 -sellevel,26 era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel26_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel26_"$((leap))".nc era5_land_DP_NW_range26_28_"$((leap))".nc
#sellevel28
cdo -mulc,143307.373339 -sellevel,28 era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel28_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel28_"$((leap))".nc era5_land_DP_NW_range28_30_"$((leap))".nc
#sellevel30
cdo -mulc,177872.366724 -sellevel,30 era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel30_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel30_"$((leap))".nc era5_land_DP_NW_range30_32_"$((leap))".nc
#sellevel32
cdo -mulc,197054.248731 -sellevel,32 era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel32_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel32_"$((leap))".nc era5_land_DP_NW_range32_inf_"$((leap))".nc
#enssum
cdo enssum era5_land_DP_NW_range5.8_8_"$((leap))".nc era5_land_DP_NW_range8_10_"$((leap))".nc era5_land_DP_NW_range10_12_"$((leap))".nc era5_land_DP_NW_range12_14_"$((leap))".nc era5_land_DP_NW_range14_16_"$((leap))".nc era5_land_DP_NW_range16_18_"$((leap))".nc era5_land_DP_NW_range18_20_"$((leap))".nc era5_land_DP_NW_range20_22_"$((leap))".nc era5_land_DP_NW_range22_24_"$((leap))".nc era5_land_DP_NW_range24_26_"$((leap))".nc era5_land_DP_NW_range26_28_"$((leap))".nc era5_land_DP_NW_range28_30_"$((leap))".nc era5_land_DP_NW_range30_32_"$((leap))".nc era5_land_DP_NW_range32_inf_"$((leap))".nc era5_land_DP_NW_range_enssum_"$((leap))".nc
#change variable name into DP_NW, in order to be used in the resultanting
cdo chname,WS,DP_NW era5_land_DP_NW_range_enssum_"$((leap))".nc era5_land_DP_NW_range_enssum_chname_"$((leap))".nc
#delete intermediate results
rm -f era5_land_WD_ifthen_setvrange_NW_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NW_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_setmisstoc_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel5.8_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel8_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel10_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel12_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel14_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel16_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel18_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel20_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel22_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel24_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel26_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel28_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel30_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel32_"$((leap))".nc
rm -f era5_land_DP_NW_range5.8_8_"$((leap))".nc
rm -f era5_land_DP_NW_range8_10_"$((leap))".nc
rm -f era5_land_DP_NW_range10_12_"$((leap))".nc
rm -f era5_land_DP_NW_range12_14_"$((leap))".nc
rm -f era5_land_DP_NW_range14_16_"$((leap))".nc
rm -f era5_land_DP_NW_range16_18_"$((leap))".nc
rm -f era5_land_DP_NW_range18_20_"$((leap))".nc
rm -f era5_land_DP_NW_range20_22_"$((leap))".nc
rm -f era5_land_DP_NW_range22_24_"$((leap))".nc
rm -f era5_land_DP_NW_range24_26_"$((leap))".nc
rm -f era5_land_DP_NW_range26_28_"$((leap))".nc
rm -f era5_land_DP_NW_range28_30_"$((leap))".nc
rm -f era5_land_DP_NW_range30_32_"$((leap))".nc
rm -f era5_land_DP_NW_range32_inf_"$((leap))".nc

#NNW, -33.75≤NNW＜-11.25
cdo setvrange,-33.75,-11.2500001 era5_land_WD_ifthen_"$((leap))".nc era5_land_WD_ifthen_setvrange_NNW_"$((leap))".nc
#mask sand-moving wind speeds in the NNW azimuth
cdo ifthen era5_land_WD_ifthen_setvrange_NNW_"$((leap))".nc era5_land_WS_setrtomiss_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_NNW_"$((leap))".nc
#2 m/s bins of sand-moving wind speeds in the NNW azimuth, 5.8m/s≤WS＜8m/s, 8m/s≤WS＜10m/s, 10m/s≤WS＜12m/s, 12m/s≤WS＜14m/s, 14m/s≤WS＜16m/s, 16m/s≤WS＜18m/s, 18m/s≤WS＜20m/s, 20m/s≤WS＜22m/s, 22m/s≤WS＜24m/s, 24m/s≤WS＜26m/s, 26m/s≤WS＜28m/s, 28m/s≤WS＜30m/s, 30m/s≤WS＜32m/s, 32m/s≤WS
cdo histcount,5.8,7.9999999,9.9999999,11.9999999,13.9999999,15.9999999,17.9999999,19.9999999,21.9999999,23.9999999,25.9999999,27.9999999,29.9999999,31.9999999,inf era5_land_WS_setrtomiss_ifthen_NNW_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_NNW_histcount_"$((leap))".nc
#the sand-moving wind frequency in the NNW azimuth, 8784 is the total hours for the “$leap_year”
cdo divc,8784 era5_land_WS_setrtomiss_ifthen_NNW_histcount_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_"$((leap))".nc
#setmisstoc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_setmisstoc_"$((leap))".nc
#mulc
cdo mulc,100 era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_setmisstoc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_setmisstoc_mulc_"$((leap))".nc
#weighting factor U^2(U-Ut), U is the mean wind speed，and they are 7, 9, 11, 13, 15, 17, 19, 21, 23, 25, 27, 29, 31, 32m/s, respectively; and m/s needs to be conversed into knot. Notably, the value of U^2(U-Ut) is not divided by 100, as its subsquent multiplication represents a demensionless sand-moving wind frequency, rather than a percentage-based sand-moving wind frequency.
#level,5.8 U^2(U-Ut)=(7*3600/1852)*(7*3600/1852)*(7*3600/1852-5.8*3600/1852)=431.878795
#level,8 U^2(U-Ut)=(9*3600/1852)*(9*3600/1852)*(9*3600/1852-5.8*3600/1852)=1903.792241
#level,10 U^2(U-Ut)=(11*3600/1852)*(11*3600/1852)*(11*3600/1852-5.8*3600/1852)=4621.396906
#level,12 U^2(U-Ut)=(13*3600/1852)*(13*3600/1852)*(13*3600/1852-5.8*3600/1852)=8937.246908
#level,14 U^2(U-Ut)=(15*3600/1852)*(15*3600/1852)*(15*3600/1852-5.8*3600/1852)=15203.896368
#level,16 U^2(U-Ut)=(17*3600/1852)*(17*3600/1852)*(17*3600/1852-5.8*3600/1852)=23773.899403
#level,18 U^2(U-Ut)=(19*3600/1852)*(19*3600/1852)*(19*3600/1852-5.8*3600/1852)=34999.810131
#level,20 U^2(U-Ut)=(21*3600/1852)*(21*3600/1852)*(21*3600/1852-5.8*3600/1852)=49234.182673
#level,22 U^2(U-Ut)=(23*3600/1852)*(23*3600/1852)*(23*3600/1852-5.8*3600/1852)=66829.571146
#level,24 U^2(U-Ut)=(25*3600/1852)*(25*3600/1852)*(25*3600/1852-5.8*3600/1852)=88138.529669
#level,26 U^2(U-Ut)=(27*3600/1852)*(27*3600/1852)*(27*3600/1852-5.8*3600/1852)=113513.612360
#level,28 U^2(U-Ut)=(29*3600/1852)*(29*3600/1852)*(29*3600/1852-5.8*3600/1852)=143307.373339
#level,30 U^2(U-Ut)=(31*3600/1852)*(31*3600/1852)*(31*3600/1852-5.8*3600/1852)=177872.366724
#level,32 U^2(U-Ut)=(32*3600/1852)*(32*3600/1852)*(32*3600/1852-5.8*3600/1852)=197054.248731
#1 knot = 1 nautical mile/hour =1852m/hour=1852/3600m/s=0.5144m/s
#sellevel5.8
cdo -mulc,431.878795 -sellevel,5.8 era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel5.8_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel5.8_"$((leap))".nc era5_land_DP_NNW_range5.8_8_"$((leap))".nc
#sellevel8
cdo -mulc,1903.792241 -sellevel,8 era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel8_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel8_"$((leap))".nc era5_land_DP_NNW_range8_10_"$((leap))".nc
#sellevel10
cdo -mulc,4621.396906 -sellevel,10 era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel10_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel10_"$((leap))".nc era5_land_DP_NNW_range10_12_"$((leap))".nc
#sellevel12
cdo -mulc,8937.246908 -sellevel,12 era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel12_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel12_"$((leap))".nc era5_land_DP_NNW_range12_14_"$((leap))".nc
#sellevel14
cdo -mulc,15203.896368 -sellevel,14 era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel14_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel14_"$((leap))".nc era5_land_DP_NNW_range14_16_"$((leap))".nc
#sellevel16
cdo -mulc,23773.899403 -sellevel,16 era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel16_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel16_"$((leap))".nc era5_land_DP_NNW_range16_18_"$((leap))".nc
#sellevel18
cdo -mulc,34999.810131 -sellevel,18 era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel18_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel18_"$((leap))".nc era5_land_DP_NNW_range18_20_"$((leap))".nc
#sellevel20
cdo -mulc,49234.182673 -sellevel,20 era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel20_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel20_"$((leap))".nc era5_land_DP_NNW_range20_22_"$((leap))".nc
#sellevel22
cdo -mulc,66829.571146 -sellevel,22 era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel22_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel22_"$((leap))".nc era5_land_DP_NNW_range22_24_"$((leap))".nc
#sellevel24
cdo -mulc,88138.529669 -sellevel,24 era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel24_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel24_"$((leap))".nc era5_land_DP_NNW_range24_26_"$((leap))".nc
#sellevel26
cdo -mulc,113513.612360 -sellevel,26 era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel26_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel26_"$((leap))".nc era5_land_DP_NNW_range26_28_"$((leap))".nc
#sellevel28
cdo -mulc,143307.373339 -sellevel,28 era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel28_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel28_"$((leap))".nc era5_land_DP_NNW_range28_30_"$((leap))".nc
#sellevel30
cdo -mulc,177872.366724 -sellevel,30 era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel30_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel30_"$((leap))".nc era5_land_DP_NNW_range30_32_"$((leap))".nc
#sellevel32
cdo -mulc,197054.248731 -sellevel,32 era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_"$((leap))".nc era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel32_"$((leap))".nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel32_"$((leap))".nc era5_land_DP_NNW_range32_inf_"$((leap))".nc
#enssum
cdo enssum era5_land_DP_NNW_range5.8_8_"$((leap))".nc era5_land_DP_NNW_range8_10_"$((leap))".nc era5_land_DP_NNW_range10_12_"$((leap))".nc era5_land_DP_NNW_range12_14_"$((leap))".nc era5_land_DP_NNW_range14_16_"$((leap))".nc era5_land_DP_NNW_range16_18_"$((leap))".nc era5_land_DP_NNW_range18_20_"$((leap))".nc era5_land_DP_NNW_range20_22_"$((leap))".nc era5_land_DP_NNW_range22_24_"$((leap))".nc era5_land_DP_NNW_range24_26_"$((leap))".nc era5_land_DP_NNW_range26_28_"$((leap))".nc era5_land_DP_NNW_range28_30_"$((leap))".nc era5_land_DP_NNW_range30_32_"$((leap))".nc era5_land_DP_NNW_range32_inf_"$((leap))".nc era5_land_DP_NNW_range_enssum_"$((leap))".nc
#change variable name into DP_NNW, in order to be used in the resultanting
cdo chname,WS,DP_NNW era5_land_DP_NNW_range_enssum_"$((leap))".nc era5_land_DP_NNW_range_enssum_chname_"$((leap))".nc
#delete intermediate results
rm -f era5_land_WD_ifthen_setvrange_NNW_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NNW_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_setmisstoc_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel5.8_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel8_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel10_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel12_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel14_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel16_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel18_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel20_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel22_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel24_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel26_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel28_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel30_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel32_"$((leap))".nc
rm -f era5_land_DP_NNW_range5.8_8_"$((leap))".nc
rm -f era5_land_DP_NNW_range8_10_"$((leap))".nc
rm -f era5_land_DP_NNW_range10_12_"$((leap))".nc
rm -f era5_land_DP_NNW_range12_14_"$((leap))".nc
rm -f era5_land_DP_NNW_range14_16_"$((leap))".nc
rm -f era5_land_DP_NNW_range16_18_"$((leap))".nc
rm -f era5_land_DP_NNW_range18_20_"$((leap))".nc
rm -f era5_land_DP_NNW_range20_22_"$((leap))".nc
rm -f era5_land_DP_NNW_range22_24_"$((leap))".nc
rm -f era5_land_DP_NNW_range24_26_"$((leap))".nc
rm -f era5_land_DP_NNW_range26_28_"$((leap))".nc
rm -f era5_land_DP_NNW_range28_30_"$((leap))".nc
rm -f era5_land_DP_NNW_range30_32_"$((leap))".nc
rm -f era5_land_DP_NNW_range32_inf_"$((leap))".nc

#calculate DP，add up the DPs in the N, NNE, NE, ENE, E, ESE, SE, SSE, S, SSW, SW, WSW, W, WNW, NW, NNW azimuth
cdo enssum era5_land_DP_N_range_enssum_"$((leap))".nc era5_land_DP_NNE_range_enssum_"$((leap))".nc era5_land_DP_NE_range_enssum_"$((leap))".nc era5_land_DP_ENE_range_enssum_"$((leap))".nc era5_land_DP_E_range_enssum_"$((leap))".nc era5_land_DP_ESE_range_enssum_"$((leap))".nc era5_land_DP_SE_range_enssum_"$((leap))".nc era5_land_DP_SSE_range_enssum_"$((leap))".nc era5_land_DP_S_range_enssum_"$((leap))".nc era5_land_DP_SSW_range_enssum_"$((leap))".nc era5_land_DP_SW_range_enssum_"$((leap))".nc era5_land_DP_WSW_range_enssum_"$((leap))".nc era5_land_DP_W_range_enssum_"$((leap))".nc era5_land_DP_WNW_range_enssum_"$((leap))".nc era5_land_DP_NW_range_enssum_"$((leap))".nc era5_land_DP_NNW_range_enssum_"$((leap))".nc era5_land_DP_range_enssum_"$((leap))".nc
#change variable name into DP, in order to be used in the resultanting
cdo chname,WS,DP era5_land_DP_range_enssum_"$((leap))".nc era5_land_DP_"$((leap))".nc

#merge the nc files with new variable names from 16 azimuth, and form the new nc file
cdo merge era5_land_DP_N_range_enssum_chname_"$((leap))".nc era5_land_DP_NNE_range_enssum_chname_"$((leap))".nc era5_land_DP_NE_range_enssum_chname_"$((leap))".nc era5_land_DP_ENE_range_enssum_chname_"$((leap))".nc era5_land_DP_E_range_enssum_chname_"$((leap))".nc era5_land_DP_ESE_range_enssum_chname_"$((leap))".nc era5_land_DP_SE_range_enssum_chname_"$((leap))".nc era5_land_DP_SSE_range_enssum_chname_"$((leap))".nc era5_land_DP_S_range_enssum_chname_"$((leap))".nc era5_land_DP_SSW_range_enssum_chname_"$((leap))".nc era5_land_DP_SW_range_enssum_chname_"$((leap))".nc era5_land_DP_WSW_range_enssum_chname_"$((leap))".nc era5_land_DP_W_range_enssum_chname_"$((leap))".nc era5_land_DP_WNW_range_enssum_chname_"$((leap))".nc era5_land_DP_NW_range_enssum_chname_"$((leap))".nc era5_land_DP_NNW_range_enssum_chname_"$((leap))".nc era5_land_DP_Azimuthal_"$((leap))".nc 

#Σ component of RDP in the due-north direction, calculating process is ΣN=N-S+(NE+NW-SE-SW)*0.7071068+(NNE+NNW-SSW-SSE)*0.9238795+(WNW+ENE-WSW-ESE)*0.3826834
cdo expr,'RDP_N=DP_N-DP_S+(DP_NE+DP_NW-DP_SE-DP_SW)*0.7071068+(DP_NNE+DP_NNW-DP_SSW-DP_SSE)*0.9238795+(DP_WNW+DP_ENE-DP_WSW-DP_ESE)*0.3826834;' era5_land_DP_Azimuthal_"$((leap))".nc era5_land_RDP_N_"$((leap))".nc 

#Σ component of RDP in the due-east direction, calculating process is ΣE=E-W+(NE+SE-NW-SW)*0.7071068+(ESE+ENE-WNW-WSW)*0.9238795+(NNE+SSE-SSW-NNW)*0.3826834
cdo expr,'RDP_E=DP_E-DP_W+(DP_NE+DP_SE-DP_NW-DP_SW)*0.7071068+(DP_ESE+DP_ENE-DP_WNW-DP_WSW)*0.9238795+(DP_NNE+DP_SSE-DP_SSW-DP_NNW)*0.3826834;' era5_land_DP_Azimuthal_"$((leap))".nc era5_land_RDP_E_"$((leap))".nc

#calculate RDP, Resultant Drift Potential
cdo -chname,RDP_E,RDP -sqrt -add -sqr -selname,RDP_E era5_land_RDP_E_"$((leap))".nc -sqr -selname,RDP_N  era5_land_RDP_N_"$((leap))".nc era5_land_RDP_"$((leap))".nc

#calculate RDD, Resultant Drift Direction
cdo -chname,RDP_E,RDD -addc,180 -mulc,57.2957805 -atan2 era5_land_RDP_E_"$((leap))".nc era5_land_RDP_N_"$((leap))".nc era5_land_RDD_"$((leap))".nc

#calculate RDP/DP，WDV, Wind Direction Variablity
cdo div era5_land_RDP_"$((leap))".nc era5_land_DP_"$((leap))".nc era5_land_WDV_"$((leap))".nc

#finally, delete intermediate results, retain needed results
rm -f era5_land_DP_N_range_enssum_"$((leap))".nc
rm -f era5_land_DP_NNE_range_enssum_"$((leap))".nc
rm -f era5_land_DP_NE_range_enssum_"$((leap))".nc
rm -f era5_land_DP_ENE_range_enssum_"$((leap))".nc
rm -f era5_land_DP_E_range_enssum_"$((leap))".nc
rm -f era5_land_DP_ESE_range_enssum_"$((leap))".nc
rm -f era5_land_DP_SE_range_enssum_"$((leap))".nc
rm -f era5_land_DP_SSE_range_enssum_"$((leap))".nc
rm -f era5_land_DP_S_range_enssum_"$((leap))".nc
rm -f era5_land_DP_SSW_range_enssum_"$((leap))".nc
rm -f era5_land_DP_SW_range_enssum_"$((leap))".nc
rm -f era5_land_DP_WSW_range_enssum_"$((leap))".nc
rm -f era5_land_DP_W_range_enssum_"$((leap))".nc
rm -f era5_land_DP_WNW_range_enssum_"$((leap))".nc
rm -f era5_land_DP_NW_range_enssum_"$((leap))".nc
rm -f era5_land_DP_NNW_range_enssum_"$((leap))".nc
rm -f era5_land_DP_range_enssum_"$((leap))".nc
rm -f era5_land_DP_N_range_enssum_chname_"$((leap))".nc
rm -f era5_land_DP_NNE_range_enssum_chname_"$((leap))".nc
rm -f era5_land_DP_NE_range_enssum_chname_"$((leap))".nc
rm -f era5_land_DP_ENE_range_enssum_chname_"$((leap))".nc
rm -f era5_land_DP_E_range_enssum_chname_"$((leap))".nc
rm -f era5_land_DP_ESE_range_enssum_chname_"$((leap))".nc
rm -f era5_land_DP_SE_range_enssum_chname_"$((leap))".nc
rm -f era5_land_DP_SSE_range_enssum_chname_"$((leap))".nc
rm -f era5_land_DP_S_range_enssum_chname_"$((leap))".nc
rm -f era5_land_DP_SSW_range_enssum_chname_"$((leap))".nc
rm -f era5_land_DP_SW_range_enssum_chname_"$((leap))".nc
rm -f era5_land_DP_WSW_range_enssum_chname_"$((leap))".nc
rm -f era5_land_DP_W_range_enssum_chname_"$((leap))".nc
rm -f era5_land_DP_WNW_range_enssum_chname_"$((leap))".nc
rm -f era5_land_DP_NW_range_enssum_chname_"$((leap))".nc
rm -f era5_land_DP_NNW_range_enssum_chname_"$((leap))".nc

#delete
rm -f era5_land_WD_ifthen_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_E_histcount_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_E_histcount_divc_setmisstoc_mulc_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_ENE_histcount_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_setmisstoc_mulc_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_ESE_histcount_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_setmisstoc_mulc_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_N_histcount_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_N_histcount_divc_setmisstoc_mulc_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NE_histcount_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_setmisstoc_mulc_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NNE_histcount_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_setmisstoc_mulc_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NNW_histcount_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_setmisstoc_mulc_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NW_histcount_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_setmisstoc_mulc_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_S_histcount_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_S_histcount_divc_setmisstoc_mulc_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SE_histcount_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_setmisstoc_mulc_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SSE_histcount_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_setmisstoc_mulc_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SSW_histcount_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_setmisstoc_mulc_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SW_histcount_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_setmisstoc_mulc_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_W_histcount_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_W_histcount_divc_setmisstoc_mulc_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_WNW_histcount_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_setmisstoc_mulc_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_WSW_histcount_"$((leap))".nc
rm -f era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_setmisstoc_mulc_"$((leap))".nc


done
