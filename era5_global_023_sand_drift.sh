#!/bin/bash

# Author : Guoshuai Li
# Contact: GUOSHUAI Li  <liguoshuai@outlook.com> <liguoshuai@lzb.ac.cn>
# Copyright (C) 2025

#common_year
for ((common=1940; common<=2023;++common))
do
   echo $common
   

#M"$((common))"
cd /home/ligs/Storage/era5_hourly/common_year/M"$((common))"

#"$((common))"01
#calculate wind speed
cdo -b 32 -chname,u10,WS -sqrt -add -sqr -selname,u10 era5_hourly_10m_u_component_of_wind_"$((common))"01.nc -sqr -selname,v10 era5_hourly_10m_v_component_of_wind_"$((common))"01.nc era5_WS_"$((common))"01.nc
#calculate wind direction
cdo -b 32 -chname,u10,WD -mulc,57.2957805 -atan2 -mulc,-1 era5_hourly_10m_u_component_of_wind_"$((common))"01.nc -mulc,-1 era5_hourly_10m_v_component_of_wind_"$((common))"01.nc era5_WD_"$((common))"01.nc
#mask sand-moving wind speeds, ≥5.1m/s
cdo setrtomiss,0,5.0999999 era5_WS_"$((common))"01.nc era5_WS_setrtomiss_"$((common))"01.nc
#mask all the wind directions of corresponding sand-moving wind speeds, the sand-moving wind direction
cdo ifthen era5_WS_setrtomiss_"$((common))"01.nc era5_WD_"$((common))"01.nc era5_WD_ifthen_"$((common))"01.nc
#delete intermediate results
rm -f era5_WS_"$((common))"01.nc
rm -f era5_WD_"$((common))"01.nc

#"$((common))"02
#calculate wind speed
cdo -b 32 -chname,u10,WS -sqrt -add -sqr -selname,u10 era5_hourly_10m_u_component_of_wind_"$((common))"02.nc -sqr -selname,v10 era5_hourly_10m_v_component_of_wind_"$((common))"02.nc era5_WS_"$((common))"02.nc
#calculate wind direction
cdo -b 32 -chname,u10,WD -mulc,57.2957805 -atan2 -mulc,-1 era5_hourly_10m_u_component_of_wind_"$((common))"02.nc -mulc,-1 era5_hourly_10m_v_component_of_wind_"$((common))"02.nc era5_WD_"$((common))"02.nc
#mask sand-moving wind speeds, ≥5.1m/s
cdo setrtomiss,0,5.0999999 era5_WS_"$((common))"02.nc era5_WS_setrtomiss_"$((common))"02.nc
#mask all the wind directions of corresponding sand-moving wind speeds, the sand-moving wind direction
cdo ifthen era5_WS_setrtomiss_"$((common))"02.nc era5_WD_"$((common))"02.nc era5_WD_ifthen_"$((common))"02.nc
#delete intermediate results
rm -f era5_WS_"$((common))"02.nc
rm -f era5_WD_"$((common))"02.nc

#"$((common))"03
#calculate wind speed
cdo -b 32 -chname,u10,WS -sqrt -add -sqr -selname,u10 era5_hourly_10m_u_component_of_wind_"$((common))"03.nc -sqr -selname,v10 era5_hourly_10m_v_component_of_wind_"$((common))"03.nc era5_WS_"$((common))"03.nc
#calculate wind direction
cdo -b 32 -chname,u10,WD -mulc,57.2957805 -atan2 -mulc,-1 era5_hourly_10m_u_component_of_wind_"$((common))"03.nc -mulc,-1 era5_hourly_10m_v_component_of_wind_"$((common))"03.nc era5_WD_"$((common))"03.nc
#mask sand-moving wind speeds, ≥5.1m/s
cdo setrtomiss,0,5.0999999 era5_WS_"$((common))"03.nc era5_WS_setrtomiss_"$((common))"03.nc
#mask all the wind directions of corresponding sand-moving wind speeds, the sand-moving wind direction
cdo ifthen era5_WS_setrtomiss_"$((common))"03.nc era5_WD_"$((common))"03.nc era5_WD_ifthen_"$((common))"03.nc
#delete intermediate results
rm -f era5_WS_"$((common))"03.nc
rm -f era5_WD_"$((common))"03.nc

#"$((common))"04
#calculate wind speed
cdo -b 32 -chname,u10,WS -sqrt -add -sqr -selname,u10 era5_hourly_10m_u_component_of_wind_"$((common))"04.nc -sqr -selname,v10 era5_hourly_10m_v_component_of_wind_"$((common))"04.nc era5_WS_"$((common))"04.nc
#calculate wind direction
cdo -b 32 -chname,u10,WD -mulc,57.2957805 -atan2 -mulc,-1 era5_hourly_10m_u_component_of_wind_"$((common))"04.nc -mulc,-1 era5_hourly_10m_v_component_of_wind_"$((common))"04.nc era5_WD_"$((common))"04.nc
#mask sand-moving wind speeds, ≥5.1m/s
cdo setrtomiss,0,5.0999999 era5_WS_"$((common))"04.nc era5_WS_setrtomiss_"$((common))"04.nc
#mask all the wind directions of corresponding sand-moving wind speeds, the sand-moving wind direction
cdo ifthen era5_WS_setrtomiss_"$((common))"04.nc era5_WD_"$((common))"04.nc era5_WD_ifthen_"$((common))"04.nc
#delete intermediate results
rm -f era5_WS_"$((common))"04.nc
rm -f era5_WD_"$((common))"04.nc

#"$((common))"05
#calculate wind speed
cdo -b 32 -chname,u10,WS -sqrt -add -sqr -selname,u10 era5_hourly_10m_u_component_of_wind_"$((common))"05.nc -sqr -selname,v10 era5_hourly_10m_v_component_of_wind_"$((common))"05.nc era5_WS_"$((common))"05.nc
#calculate wind direction
cdo -b 32 -chname,u10,WD -mulc,57.2957805 -atan2 -mulc,-1 era5_hourly_10m_u_component_of_wind_"$((common))"05.nc -mulc,-1 era5_hourly_10m_v_component_of_wind_"$((common))"05.nc era5_WD_"$((common))"05.nc

cdo setrtomiss,0,5.0999999 era5_WS_"$((common))"05.nc era5_WS_setrtomiss_"$((common))"05.nc
#mask all the wind directions of corresponding sand-moving wind speeds, the sand-moving wind direction
cdo ifthen era5_WS_setrtomiss_"$((common))"05.nc era5_WD_"$((common))"05.nc era5_WD_ifthen_"$((common))"05.nc
#delete intermediate results
rm -f era5_WS_"$((common))"05.nc
rm -f era5_WD_"$((common))"05.nc

#"$((common))"06
#calculate wind speed
cdo -b 32 -chname,u10,WS -sqrt -add -sqr -selname,u10 era5_hourly_10m_u_component_of_wind_"$((common))"06.nc -sqr -selname,v10 era5_hourly_10m_v_component_of_wind_"$((common))"06.nc era5_WS_"$((common))"06.nc
#calculate wind direction
cdo -b 32 -chname,u10,WD -mulc,57.2957805 -atan2 -mulc,-1 era5_hourly_10m_u_component_of_wind_"$((common))"06.nc -mulc,-1 era5_hourly_10m_v_component_of_wind_"$((common))"06.nc era5_WD_"$((common))"06.nc
#mask sand-moving wind speeds, ≥5.1m/s
cdo setrtomiss,0,5.0999999 era5_WS_"$((common))"06.nc era5_WS_setrtomiss_"$((common))"06.nc
#mask all the wind directions of corresponding sand-moving wind speeds, the sand-moving wind direction
cdo ifthen era5_WS_setrtomiss_"$((common))"06.nc era5_WD_"$((common))"06.nc era5_WD_ifthen_"$((common))"06.nc
#delete intermediate results
rm -f era5_WS_"$((common))"06.nc
rm -f era5_WD_"$((common))"06.nc

#"$((common))"07
#calculate wind speed
cdo -b 32 -chname,u10,WS -sqrt -add -sqr -selname,u10 era5_hourly_10m_u_component_of_wind_"$((common))"07.nc -sqr -selname,v10 era5_hourly_10m_v_component_of_wind_"$((common))"07.nc era5_WS_"$((common))"07.nc
#calculate wind direction
cdo -b 32 -chname,u10,WD -mulc,57.2957805 -atan2 -mulc,-1 era5_hourly_10m_u_component_of_wind_"$((common))"07.nc -mulc,-1 era5_hourly_10m_v_component_of_wind_"$((common))"07.nc era5_WD_"$((common))"07.nc
#mask sand-moving wind speeds, ≥5.1m/s
cdo setrtomiss,0,5.0999999 era5_WS_"$((common))"07.nc era5_WS_setrtomiss_"$((common))"07.nc
#mask all the wind directions of corresponding sand-moving wind speeds, the sand-moving wind direction
cdo ifthen era5_WS_setrtomiss_"$((common))"07.nc era5_WD_"$((common))"07.nc era5_WD_ifthen_"$((common))"07.nc
#delete intermediate results
rm -f era5_WS_"$((common))"07.nc
rm -f era5_WD_"$((common))"07.nc

#"$((common))"08
#calculate wind speed
cdo -b 32 -chname,u10,WS -sqrt -add -sqr -selname,u10 era5_hourly_10m_u_component_of_wind_"$((common))"08.nc -sqr -selname,v10 era5_hourly_10m_v_component_of_wind_"$((common))"08.nc era5_WS_"$((common))"08.nc
#calculate wind direction
cdo -b 32 -chname,u10,WD -mulc,57.2957805 -atan2 -mulc,-1 era5_hourly_10m_u_component_of_wind_"$((common))"08.nc -mulc,-1 era5_hourly_10m_v_component_of_wind_"$((common))"08.nc era5_WD_"$((common))"08.nc
#mask sand-moving wind speeds, ≥5.1m/s
cdo setrtomiss,0,5.0999999 era5_WS_"$((common))"08.nc era5_WS_setrtomiss_"$((common))"08.nc
#mask all the wind directions of corresponding sand-moving wind speeds, the sand-moving wind direction
cdo ifthen era5_WS_setrtomiss_"$((common))"08.nc era5_WD_"$((common))"08.nc era5_WD_ifthen_"$((common))"08.nc
#delete intermediate results
rm -f era5_WS_"$((common))"08.nc
rm -f era5_WD_"$((common))"08.nc

#"$((common))"09
#calculate wind speed
cdo -b 32 -chname,u10,WS -sqrt -add -sqr -selname,u10 era5_hourly_10m_u_component_of_wind_"$((common))"09.nc -sqr -selname,v10 era5_hourly_10m_v_component_of_wind_"$((common))"09.nc era5_WS_"$((common))"09.nc
#calculate wind direction
cdo -b 32 -chname,u10,WD -mulc,57.2957805 -atan2 -mulc,-1 era5_hourly_10m_u_component_of_wind_"$((common))"09.nc -mulc,-1 era5_hourly_10m_v_component_of_wind_"$((common))"09.nc era5_WD_"$((common))"09.nc
#mask sand-moving wind speeds, ≥5.1m/s
cdo setrtomiss,0,5.0999999 era5_WS_"$((common))"09.nc era5_WS_setrtomiss_"$((common))"09.nc
#mask all the wind directions of corresponding sand-moving wind speeds, the sand-moving wind direction
cdo ifthen era5_WS_setrtomiss_"$((common))"09.nc era5_WD_"$((common))"09.nc era5_WD_ifthen_"$((common))"09.nc
#delete intermediate results
rm -f era5_WS_"$((common))"09.nc
rm -f era5_WD_"$((common))"09.nc

#"$((common))"10
#calculate wind speed
cdo -b 32 -chname,u10,WS -sqrt -add -sqr -selname,u10 era5_hourly_10m_u_component_of_wind_"$((common))"10.nc -sqr -selname,v10 era5_hourly_10m_v_component_of_wind_"$((common))"10.nc era5_WS_"$((common))"10.nc
#calculate wind direction
cdo -b 32 -chname,u10,WD -mulc,57.2957805 -atan2 -mulc,-1 era5_hourly_10m_u_component_of_wind_"$((common))"10.nc -mulc,-1 era5_hourly_10m_v_component_of_wind_"$((common))"10.nc era5_WD_"$((common))"10.nc
#mask sand-moving wind speeds, ≥5.1m/s
cdo setrtomiss,0,5.0999999 era5_WS_"$((common))"10.nc era5_WS_setrtomiss_"$((common))"10.nc
#mask all the wind directions of corresponding sand-moving wind speeds, the sand-moving wind direction
cdo ifthen era5_WS_setrtomiss_"$((common))"10.nc era5_WD_"$((common))"10.nc era5_WD_ifthen_"$((common))"10.nc
#delete intermediate results
rm -f era5_WS_"$((common))"10.nc
rm -f era5_WD_"$((common))"10.nc

#"$((common))"11
#calculate wind speed
cdo -b 32 -chname,u10,WS -sqrt -add -sqr -selname,u10 era5_hourly_10m_u_component_of_wind_"$((common))"11.nc -sqr -selname,v10 era5_hourly_10m_v_component_of_wind_"$((common))"11.nc era5_WS_"$((common))"11.nc
#calculate wind direction
cdo -b 32 -chname,u10,WD -mulc,57.2957805 -atan2 -mulc,-1 era5_hourly_10m_u_component_of_wind_"$((common))"11.nc -mulc,-1 era5_hourly_10m_v_component_of_wind_"$((common))"11.nc era5_WD_"$((common))"11.nc
#mask sand-moving wind speeds, ≥5.1m/s
cdo setrtomiss,0,5.0999999 era5_WS_"$((common))"11.nc era5_WS_setrtomiss_"$((common))"11.nc
#mask all the wind directions of corresponding sand-moving wind speeds, the sand-moving wind direction
cdo ifthen era5_WS_setrtomiss_"$((common))"11.nc era5_WD_"$((common))"11.nc era5_WD_ifthen_"$((common))"11.nc
#delete intermediate results
rm -f era5_WS_"$((common))"11.nc
rm -f era5_WD_"$((common))"11.nc

#"$((common))"12
#calculate wind speed
cdo -b 32 -chname,u10,WS -sqrt -add -sqr -selname,u10 era5_hourly_10m_u_component_of_wind_"$((common))"12.nc -sqr -selname,v10 era5_hourly_10m_v_component_of_wind_"$((common))"12.nc era5_WS_"$((common))"12.nc
#calculate wind direction
cdo -b 32 -chname,u10,WD -mulc,57.2957805 -atan2 -mulc,-1 era5_hourly_10m_u_component_of_wind_"$((common))"12.nc -mulc,-1 era5_hourly_10m_v_component_of_wind_"$((common))"12.nc era5_WD_"$((common))"12.nc
#mask sand-moving wind speeds, ≥5.1m/s
cdo setrtomiss,0,5.0999999 era5_WS_"$((common))"12.nc era5_WS_setrtomiss_"$((common))"12.nc
#mask all the wind directions of corresponding sand-moving wind speeds, the sand-moving wind direction
cdo ifthen era5_WS_setrtomiss_"$((common))"12.nc era5_WD_"$((common))"12.nc era5_WD_ifthen_"$((common))"12.nc
#delete intermediate results
rm -f era5_WS_"$((common))"12.nc
rm -f era5_WD_"$((common))"12.nc

#concatenate the monthly sand-moving wind speeds
cdo cat era5_WS_setrtomiss_"$((common))"01.nc era5_WS_setrtomiss_"$((common))"02.nc era5_WS_setrtomiss_"$((common))"03.nc era5_WS_setrtomiss_"$((common))"04.nc era5_WS_setrtomiss_"$((common))"05.nc era5_WS_setrtomiss_"$((common))"06.nc era5_WS_setrtomiss_"$((common))"07.nc era5_WS_setrtomiss_"$((common))"08.nc era5_WS_setrtomiss_"$((common))"09.nc era5_WS_setrtomiss_"$((common))"10.nc era5_WS_setrtomiss_"$((common))"11.nc era5_WS_setrtomiss_"$((common))"12.nc era5_WS_setrtomiss_"$((common))".nc
#delete intermediate results
rm -f era5_WS_setrtomiss_"$((common))"01.nc
rm -f era5_WS_setrtomiss_"$((common))"02.nc
rm -f era5_WS_setrtomiss_"$((common))"03.nc
rm -f era5_WS_setrtomiss_"$((common))"04.nc
rm -f era5_WS_setrtomiss_"$((common))"05.nc
rm -f era5_WS_setrtomiss_"$((common))"06.nc
rm -f era5_WS_setrtomiss_"$((common))"07.nc
rm -f era5_WS_setrtomiss_"$((common))"08.nc
rm -f era5_WS_setrtomiss_"$((common))"09.nc
rm -f era5_WS_setrtomiss_"$((common))"10.nc
rm -f era5_WS_setrtomiss_"$((common))"11.nc
rm -f era5_WS_setrtomiss_"$((common))"12.nc

#concatenate the monthly sand-moving wind directions
cdo cat era5_WD_ifthen_"$((common))"01.nc era5_WD_ifthen_"$((common))"02.nc era5_WD_ifthen_"$((common))"03.nc era5_WD_ifthen_"$((common))"04.nc era5_WD_ifthen_"$((common))"05.nc era5_WD_ifthen_"$((common))"06.nc era5_WD_ifthen_"$((common))"07.nc era5_WD_ifthen_"$((common))"08.nc era5_WD_ifthen_"$((common))"09.nc era5_WD_ifthen_"$((common))"10.nc era5_WD_ifthen_"$((common))"11.nc era5_WD_ifthen_"$((common))"12.nc era5_WD_ifthen_"$((common))".nc
#delete intermediate results
rm -f era5_WD_ifthen_"$((common))"01.nc
rm -f era5_WD_ifthen_"$((common))"02.nc
rm -f era5_WD_ifthen_"$((common))"03.nc
rm -f era5_WD_ifthen_"$((common))"04.nc
rm -f era5_WD_ifthen_"$((common))"05.nc
rm -f era5_WD_ifthen_"$((common))"06.nc
rm -f era5_WD_ifthen_"$((common))"07.nc
rm -f era5_WD_ifthen_"$((common))"08.nc
rm -f era5_WD_ifthen_"$((common))"09.nc
rm -f era5_WD_ifthen_"$((common))"10.nc
rm -f era5_WD_ifthen_"$((common))"11.nc
rm -f era5_WD_ifthen_"$((common))"12.nc

#distinguish the azimuth of sand-moving wind directions
#N, -11.25≤N＜11.25
cdo setvrange,-11.25,11.2499999 era5_WD_ifthen_"$((common))".nc era5_WD_ifthen_setvrange_N_"$((common))".nc
#mask sand-moving wind speeds in the N azimuth
cdo ifthen era5_WD_ifthen_setvrange_N_"$((common))".nc era5_WS_setrtomiss_"$((common))".nc era5_WS_setrtomiss_ifthen_N_"$((common))".nc
#2 m/s bins of sand-moving wind speeds in the N azimuth, 5.1m/s≤WS＜7m/s, 7m/s≤WS＜9m/s, 9m/s≤WS＜11m/s, 11m/s≤WS＜13m/s, 13m/s≤WS＜15m/s, 15m/s≤WS＜17m/s, 17m/s≤WS＜19m/s, 19m/s≤WS＜21m/s, 21m/s≤WS＜23m/s, 23m/s≤WS＜25m/s, 25m/s≤WS＜27m/s, 27m/s≤WS＜29m/s, 29m/s≤WS＜31m/s, 31m/s≤WS<33m/s, 33m/s≤WS
cdo histcount,5.1,6.9999999,8.9999999,10.9999999,12.9999999,14.9999999,16.9999999,18.9999999,20.9999999,22.9999999,24.9999999,26.9999999,28.9999999,30.9999999,32.9999999,inf era5_WS_setrtomiss_ifthen_N_"$((common))".nc era5_WS_setrtomiss_ifthen_N_histcount_"$((common))".nc
#the sand-moving wind frequency in the N azimuth, 8760 is the total hours for the “$common_year”
cdo divc,8760 era5_WS_setrtomiss_ifthen_N_histcount_"$((common))".nc era5_WS_setrtomiss_ifthen_N_histcount_divc_"$((common))".nc
#setmisstoc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_N_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_N_histcount_divc_setmisstoc_"$((common))".nc
#mulc
cdo mulc,100 era5_WS_setrtomiss_ifthen_N_histcount_divc_setmisstoc_"$((common))".nc era5_WS_setrtomiss_ifthen_N_histcount_divc_setmisstoc_mulc_"$((common))".nc
#weighting factor U^2(U-Ut), U is the mean wind speed，and they are 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 33m/s, respectively; and m/s needs to be conversed into knot. Notably, the value of U^2(U-Ut) is not divided by 100, as its subsquent multiplication represents a demensionless sand-moving wind frequency, rather than a percentage-based sand-moving wind frequency.
#level,5.1 U^2(U-Ut)=(6*3600/1852)*(6*3600/1852)*(6*3600/1852-5.1*3600/1852)=237.974030
#level,7 U^2(U-Ut)=(8*3600/1852)*(8*3600/1852)*(8*3600/1852-5.1*3600/1852)=1363.209259
#level,9 U^2(U-Ut)=(10*3600/1852)*(10*3600/1852)*(10*3600/1852-5.1*3600/1852)=3598.989961
#level,11 U^2(U-Ut)=(12*3600/1852)*(12*3600/1852)*(12*3600/1852-5.1*3600/1852)=7297.870257
#level,13 U^2(U-Ut)=(14*3600/1852)*(14*3600/1852)*(14*3600/1852-5.1*3600/1852)=12812.404263
#level,15 U^2(U-Ut)=(16*3600/1852)*(16*3600/1852)*(16*3600/1852-5.1*3600/1852)=20495.146099
#level,17 U^2(U-Ut)=(18*3600/1852)*(18*3600/1852)*(18*3600/1852-5.1*3600/1852)=30698.649884
#level,19 U^2(U-Ut)=(20*3600/1852)*(20*3600/1852)*(20*3600/1852-5.1*3600/1852)=43775.469735
#level,21 U^2(U-Ut)=(22*3600/1852)*(22*3600/1852)*(22*3600/1852-5.1*3600/1852)=60078.159773
#level,23 U^2(U-Ut)=(24*3600/1852)*(24*3600/1852)*(24*3600/1852-5.1*3600/1852)=79959.274115
#level,25 U^2(U-Ut)=(26*3600/1852)*(26*3600/1852)*(26*3600/1852-5.1*3600/1852)=103771.366881
#level,27 U^2(U-Ut)=(28*3600/1852)*(28*3600/1852)*(28*3600/1852-5.1*3600/1852)=131866.992188
#level,29 U^2(U-Ut)=(30*3600/1852)*(30*3600/1852)*(30*3600/1852-5.1*3600/1852)=164598.704156
#level,31 U^2(U-Ut)=(32*3600/1852)*(32*3600/1852)*(32*3600/1852-5.1*3600/1852)=202319.056903
#level,33 U^2(U-Ut)=(33*3600/1852)*(33*3600/1852)*(33*3600/1852-5.1*3600/1852)=223160.146731
#1 knot = 1 nautical mile/hour =1852m/hour=1852/3600m/s=0.5144m/s
#sellevel5.1
cdo -mulc,237.974030 -sellevel,5.1 era5_WS_setrtomiss_ifthen_N_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_N_histcount_divc_sellevel5.1_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_N_histcount_divc_sellevel5.1_"$((common))".nc era5_DP_N_range5.1_7_"$((common))".nc
#sellevel7
cdo -mulc,1363.209259 -sellevel,7 era5_WS_setrtomiss_ifthen_N_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_N_histcount_divc_sellevel7_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_N_histcount_divc_sellevel7_"$((common))".nc era5_DP_N_range7_9_"$((common))".nc
#sellevel9
cdo -mulc,3598.989961 -sellevel,9 era5_WS_setrtomiss_ifthen_N_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_N_histcount_divc_sellevel9_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_N_histcount_divc_sellevel9_"$((common))".nc era5_DP_N_range9_11_"$((common))".nc
#sellevel11
cdo -mulc,7297.870257 -sellevel,11 era5_WS_setrtomiss_ifthen_N_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_N_histcount_divc_sellevel11_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_N_histcount_divc_sellevel11_"$((common))".nc era5_DP_N_range11_13_"$((common))".nc
#sellevel13
cdo -mulc,12812.404263 -sellevel,13 era5_WS_setrtomiss_ifthen_N_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_N_histcount_divc_sellevel13_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_N_histcount_divc_sellevel13_"$((common))".nc era5_DP_N_range13_15_"$((common))".nc
#sellevel15
cdo -mulc,20495.146099 -sellevel,15 era5_WS_setrtomiss_ifthen_N_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_N_histcount_divc_sellevel15_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_N_histcount_divc_sellevel15_"$((common))".nc era5_DP_N_range15_17_"$((common))".nc
#sellevel17
cdo -mulc,30698.649884 -sellevel,17 era5_WS_setrtomiss_ifthen_N_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_N_histcount_divc_sellevel17_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_N_histcount_divc_sellevel17_"$((common))".nc era5_DP_N_range17_19_"$((common))".nc
#sellevel19
cdo -mulc,43775.469735 -sellevel,19 era5_WS_setrtomiss_ifthen_N_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_N_histcount_divc_sellevel19_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_N_histcount_divc_sellevel19_"$((common))".nc era5_DP_N_range19_21_"$((common))".nc
#sellevel21
cdo -mulc,60078.159773 -sellevel,21 era5_WS_setrtomiss_ifthen_N_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_N_histcount_divc_sellevel21_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_N_histcount_divc_sellevel21_"$((common))".nc era5_DP_N_range21_23_"$((common))".nc
#sellevel23
cdo -mulc,79959.274115 -sellevel,23 era5_WS_setrtomiss_ifthen_N_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_N_histcount_divc_sellevel23_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_N_histcount_divc_sellevel23_"$((common))".nc era5_DP_N_range23_25_"$((common))".nc
#sellevel25
cdo -mulc,103771.366881 -sellevel,25 era5_WS_setrtomiss_ifthen_N_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_N_histcount_divc_sellevel25_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_N_histcount_divc_sellevel25_"$((common))".nc era5_DP_N_range25_27_"$((common))".nc
#sellevel27
cdo -mulc,131866.992188 -sellevel,27 era5_WS_setrtomiss_ifthen_N_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_N_histcount_divc_sellevel27_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_N_histcount_divc_sellevel27_"$((common))".nc era5_DP_N_range27_29_"$((common))".nc
#sellevel29
cdo -mulc,164598.704156 -sellevel,29 era5_WS_setrtomiss_ifthen_N_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_N_histcount_divc_sellevel29_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_N_histcount_divc_sellevel29_"$((common))".nc era5_DP_N_range29_31_"$((common))".nc
#sellevel31
cdo -mulc,202319.056903 -sellevel,31 era5_WS_setrtomiss_ifthen_N_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_N_histcount_divc_sellevel31_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_N_histcount_divc_sellevel31_"$((common))".nc era5_DP_N_range31_33_"$((common))".nc
#sellevel33
cdo -mulc,223160.146731 -sellevel,33 era5_WS_setrtomiss_ifthen_N_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_N_histcount_divc_sellevel33_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_N_histcount_divc_sellevel33_"$((common))".nc era5_DP_N_range33_inf_"$((common))".nc
#enssum
cdo enssum era5_DP_N_range5.1_7_"$((common))".nc era5_DP_N_range7_9_"$((common))".nc era5_DP_N_range9_11_"$((common))".nc era5_DP_N_range11_13_"$((common))".nc era5_DP_N_range13_15_"$((common))".nc era5_DP_N_range15_17_"$((common))".nc era5_DP_N_range17_19_"$((common))".nc era5_DP_N_range19_21_"$((common))".nc era5_DP_N_range21_23_"$((common))".nc era5_DP_N_range23_25_"$((common))".nc era5_DP_N_range25_27_"$((common))".nc era5_DP_N_range27_29_"$((common))".nc era5_DP_N_range29_31_"$((common))".nc era5_DP_N_range31_33_"$((common))".nc era5_DP_N_range33_inf_"$((common))".nc era5_DP_N_range_enssum_"$((common))".nc
#change variable name into DP_N, in order to be used in the resultanting
cdo chname,WS,DP_N era5_DP_N_range_enssum_"$((common))".nc era5_DP_N_range_enssum_chname_"$((common))".nc
#delete intermediate results
rm -f era5_WD_ifthen_setvrange_N_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_N_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_N_histcount_divc_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_N_histcount_divc_setmisstoc_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_N_histcount_divc_sellevel5.1_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_N_histcount_divc_sellevel7_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_N_histcount_divc_sellevel9_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_N_histcount_divc_sellevel11_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_N_histcount_divc_sellevel13_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_N_histcount_divc_sellevel15_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_N_histcount_divc_sellevel17_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_N_histcount_divc_sellevel19_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_N_histcount_divc_sellevel21_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_N_histcount_divc_sellevel23_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_N_histcount_divc_sellevel25_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_N_histcount_divc_sellevel27_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_N_histcount_divc_sellevel29_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_N_histcount_divc_sellevel31_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_N_histcount_divc_sellevel33_"$((common))".nc
rm -f era5_DP_N_range5.1_7_"$((common))".nc
rm -f era5_DP_N_range7_9_"$((common))".nc
rm -f era5_DP_N_range9_11_"$((common))".nc
rm -f era5_DP_N_range11_13_"$((common))".nc
rm -f era5_DP_N_range13_15_"$((common))".nc
rm -f era5_DP_N_range15_17_"$((common))".nc
rm -f era5_DP_N_range17_19_"$((common))".nc
rm -f era5_DP_N_range19_21_"$((common))".nc
rm -f era5_DP_N_range21_23_"$((common))".nc
rm -f era5_DP_N_range23_25_"$((common))".nc
rm -f era5_DP_N_range25_27_"$((common))".nc
rm -f era5_DP_N_range27_29_"$((common))".nc
rm -f era5_DP_N_range29_31_"$((common))".nc
rm -f era5_DP_N_range31_33_"$((common))".nc
rm -f era5_DP_N_range33_inf_"$((common))".nc

#NNE, 11.25≤NNE＜33.75
cdo setvrange,11.25,33.7499999 era5_WD_ifthen_"$((common))".nc era5_WD_ifthen_setvrange_NNE_"$((common))".nc
#mask sand-moving wind speeds in the NNE azimuth
cdo ifthen era5_WD_ifthen_setvrange_NNE_"$((common))".nc era5_WS_setrtomiss_"$((common))".nc era5_WS_setrtomiss_ifthen_NNE_"$((common))".nc
#2 m/s bins of sand-moving wind speeds in the NNE azimuth, 5.1m/s≤WS＜7m/s, 7m/s≤WS＜9m/s, 9m/s≤WS＜11m/s, 11m/s≤WS＜13m/s, 13m/s≤WS＜15m/s, 15m/s≤WS＜17m/s, 17m/s≤WS＜19m/s, 19m/s≤WS＜21m/s, 21m/s≤WS＜23m/s, 23m/s≤WS＜25m/s, 25m/s≤WS＜27m/s, 27m/s≤WS＜29m/s, 29m/s≤WS＜31m/s, 31m/s≤WS<33m/s, 33m/s≤WS
cdo histcount,5.1,6.9999999,8.9999999,10.9999999,12.9999999,14.9999999,16.9999999,18.9999999,20.9999999,22.9999999,24.9999999,26.9999999,28.9999999,30.9999999,32.9999999,inf era5_WS_setrtomiss_ifthen_NNE_"$((common))".nc era5_WS_setrtomiss_ifthen_NNE_histcount_"$((common))".nc
#the sand-moving wind frequency in the NNE azimuth, 8760 is the total hours for the “$common_year”
cdo divc,8760 era5_WS_setrtomiss_ifthen_NNE_histcount_"$((common))".nc era5_WS_setrtomiss_ifthen_NNE_histcount_divc_"$((common))".nc
#setmisstoc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NNE_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_NNE_histcount_divc_setmisstoc_"$((common))".nc
#mulc
cdo mulc,100 era5_WS_setrtomiss_ifthen_NNE_histcount_divc_setmisstoc_"$((common))".nc era5_WS_setrtomiss_ifthen_NNE_histcount_divc_setmisstoc_mulc_"$((common))".nc
#weighting factor U^2(U-Ut), U is the mean wind speed，and they are 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 33m/s, respectively; and m/s needs to be conversed into knot. Notably, the value of U^2(U-Ut) is not divided by 100, as its subsquent multiplication represents a demensionless sand-moving wind frequency, rather than a percentage-based sand-moving wind frequency.
#level,5.1 U^2(U-Ut)=(6*3600/1852)*(6*3600/1852)*(6*3600/1852-5.1*3600/1852)=237.974030
#level,7 U^2(U-Ut)=(8*3600/1852)*(8*3600/1852)*(8*3600/1852-5.1*3600/1852)=1363.209259
#level,9 U^2(U-Ut)=(10*3600/1852)*(10*3600/1852)*(10*3600/1852-5.1*3600/1852)=3598.989961
#level,11 U^2(U-Ut)=(12*3600/1852)*(12*3600/1852)*(12*3600/1852-5.1*3600/1852)=7297.870257
#level,13 U^2(U-Ut)=(14*3600/1852)*(14*3600/1852)*(14*3600/1852-5.1*3600/1852)=12812.404263
#level,15 U^2(U-Ut)=(16*3600/1852)*(16*3600/1852)*(16*3600/1852-5.1*3600/1852)=20495.146099
#level,17 U^2(U-Ut)=(18*3600/1852)*(18*3600/1852)*(18*3600/1852-5.1*3600/1852)=30698.649884
#level,19 U^2(U-Ut)=(20*3600/1852)*(20*3600/1852)*(20*3600/1852-5.1*3600/1852)=43775.469735
#level,21 U^2(U-Ut)=(22*3600/1852)*(22*3600/1852)*(22*3600/1852-5.1*3600/1852)=60078.159773
#level,23 U^2(U-Ut)=(24*3600/1852)*(24*3600/1852)*(24*3600/1852-5.1*3600/1852)=79959.274115
#level,25 U^2(U-Ut)=(26*3600/1852)*(26*3600/1852)*(26*3600/1852-5.1*3600/1852)=103771.366881
#level,27 U^2(U-Ut)=(28*3600/1852)*(28*3600/1852)*(28*3600/1852-5.1*3600/1852)=131866.992188
#level,29 U^2(U-Ut)=(30*3600/1852)*(30*3600/1852)*(30*3600/1852-5.1*3600/1852)=164598.704156
#level,31 U^2(U-Ut)=(32*3600/1852)*(32*3600/1852)*(32*3600/1852-5.1*3600/1852)=202319.056903
#level,33 U^2(U-Ut)=(33*3600/1852)*(33*3600/1852)*(33*3600/1852-5.1*3600/1852)=223160.146731
#1 knot = 1 nautical mile/hour =1852m/hour=1852/3600m/s=0.5144m/s
#sellevel5.1
cdo -mulc,237.974030 -sellevel,5.1 era5_WS_setrtomiss_ifthen_NNE_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel5.1_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel5.1_"$((common))".nc era5_DP_NNE_range5.1_7_"$((common))".nc
#sellevel7
cdo -mulc,1363.209259 -sellevel,7 era5_WS_setrtomiss_ifthen_NNE_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel7_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel7_"$((common))".nc era5_DP_NNE_range7_9_"$((common))".nc
#sellevel9
cdo -mulc,3598.989961 -sellevel,9 era5_WS_setrtomiss_ifthen_NNE_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel9_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel9_"$((common))".nc era5_DP_NNE_range9_11_"$((common))".nc
#sellevel11
cdo -mulc,7297.870257 -sellevel,11 era5_WS_setrtomiss_ifthen_NNE_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel11_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel11_"$((common))".nc era5_DP_NNE_range11_13_"$((common))".nc
#sellevel13
cdo -mulc,12812.404263 -sellevel,13 era5_WS_setrtomiss_ifthen_NNE_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel13_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel13_"$((common))".nc era5_DP_NNE_range13_15_"$((common))".nc
#sellevel15
cdo -mulc,20495.146099 -sellevel,15 era5_WS_setrtomiss_ifthen_NNE_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel15_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel15_"$((common))".nc era5_DP_NNE_range15_17_"$((common))".nc
#sellevel17
cdo -mulc,30698.649884 -sellevel,17 era5_WS_setrtomiss_ifthen_NNE_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel17_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel17_"$((common))".nc era5_DP_NNE_range17_19_"$((common))".nc
#sellevel19
cdo -mulc,43775.469735 -sellevel,19 era5_WS_setrtomiss_ifthen_NNE_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel19_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel19_"$((common))".nc era5_DP_NNE_range19_21_"$((common))".nc
#sellevel21
cdo -mulc,60078.159773 -sellevel,21 era5_WS_setrtomiss_ifthen_NNE_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel21_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel21_"$((common))".nc era5_DP_NNE_range21_23_"$((common))".nc
#sellevel23
cdo -mulc,79959.274115 -sellevel,23 era5_WS_setrtomiss_ifthen_NNE_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel23_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel23_"$((common))".nc era5_DP_NNE_range23_25_"$((common))".nc
#sellevel25
cdo -mulc,103771.366881 -sellevel,25 era5_WS_setrtomiss_ifthen_NNE_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel25_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel25_"$((common))".nc era5_DP_NNE_range25_27_"$((common))".nc
#sellevel27
cdo -mulc,131866.992188 -sellevel,27 era5_WS_setrtomiss_ifthen_NNE_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel27_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel27_"$((common))".nc era5_DP_NNE_range27_29_"$((common))".nc
#sellevel29
cdo -mulc,164598.704156 -sellevel,29 era5_WS_setrtomiss_ifthen_NNE_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel29_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel29_"$((common))".nc era5_DP_NNE_range29_31_"$((common))".nc
#sellevel31
cdo -mulc,202319.056903 -sellevel,31 era5_WS_setrtomiss_ifthen_NNE_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel31_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel31_"$((common))".nc era5_DP_NNE_range31_33_"$((common))".nc
#sellevel33
cdo -mulc,223160.146731 -sellevel,33 era5_WS_setrtomiss_ifthen_NNE_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel33_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel33_"$((common))".nc era5_DP_NNE_range33_inf_"$((common))".nc
#enssum
cdo enssum era5_DP_NNE_range5.1_7_"$((common))".nc era5_DP_NNE_range7_9_"$((common))".nc era5_DP_NNE_range9_11_"$((common))".nc era5_DP_NNE_range11_13_"$((common))".nc era5_DP_NNE_range13_15_"$((common))".nc era5_DP_NNE_range15_17_"$((common))".nc era5_DP_NNE_range17_19_"$((common))".nc era5_DP_NNE_range19_21_"$((common))".nc era5_DP_NNE_range21_23_"$((common))".nc era5_DP_NNE_range23_25_"$((common))".nc era5_DP_NNE_range25_27_"$((common))".nc era5_DP_NNE_range27_29_"$((common))".nc era5_DP_NNE_range29_31_"$((common))".nc era5_DP_NNE_range31_33_"$((common))".nc era5_DP_NNE_range33_inf_"$((common))".nc era5_DP_NNE_range_enssum_"$((common))".nc
#change variable name into DP_NNE, in order to be used in the resultanting
cdo chname,WS,DP_NNE era5_DP_NNE_range_enssum_"$((common))".nc era5_DP_NNE_range_enssum_chname_"$((common))".nc
#delete intermediate results
rm -f era5_WD_ifthen_setvrange_NNE_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_NNE_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_NNE_histcount_divc_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_NNE_histcount_divc_setmisstoc_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel5.1_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel7_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel9_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel11_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel13_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel15_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel17_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel19_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel21_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel23_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel25_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel27_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel29_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel31_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel33_"$((common))".nc
rm -f era5_DP_NNE_range5.1_7_"$((common))".nc
rm -f era5_DP_NNE_range7_9_"$((common))".nc
rm -f era5_DP_NNE_range9_11_"$((common))".nc
rm -f era5_DP_NNE_range11_13_"$((common))".nc
rm -f era5_DP_NNE_range13_15_"$((common))".nc
rm -f era5_DP_NNE_range15_17_"$((common))".nc
rm -f era5_DP_NNE_range17_19_"$((common))".nc
rm -f era5_DP_NNE_range19_21_"$((common))".nc
rm -f era5_DP_NNE_range21_23_"$((common))".nc
rm -f era5_DP_NNE_range23_25_"$((common))".nc
rm -f era5_DP_NNE_range25_27_"$((common))".nc
rm -f era5_DP_NNE_range27_29_"$((common))".nc
rm -f era5_DP_NNE_range29_31_"$((common))".nc
rm -f era5_DP_NNE_range31_33_"$((common))".nc
rm -f era5_DP_NNE_range33_inf_"$((common))".nc

#NE, 33.75≤NE＜56.25
cdo setvrange,33.75,56.2499999 era5_WD_ifthen_"$((common))".nc era5_WD_ifthen_setvrange_NE_"$((common))".nc
#mask sand-moving wind speeds in the NE azimuth
cdo ifthen era5_WD_ifthen_setvrange_NE_"$((common))".nc era5_WS_setrtomiss_"$((common))".nc era5_WS_setrtomiss_ifthen_NE_"$((common))".nc
#2 m/s bins of sand-moving wind speeds in the NE azimuth, 5.1m/s≤WS＜7m/s, 7m/s≤WS＜9m/s, 9m/s≤WS＜11m/s, 11m/s≤WS＜13m/s, 13m/s≤WS＜15m/s, 15m/s≤WS＜17m/s, 17m/s≤WS＜19m/s, 19m/s≤WS＜21m/s, 21m/s≤WS＜23m/s, 23m/s≤WS＜25m/s, 25m/s≤WS＜27m/s, 27m/s≤WS＜29m/s, 29m/s≤WS＜31m/s, 31m/s≤WS<33m/s, 33m/s≤WS
cdo histcount,5.1,6.9999999,8.9999999,10.9999999,12.9999999,14.9999999,16.9999999,18.9999999,20.9999999,22.9999999,24.9999999,26.9999999,28.9999999,30.9999999,32.9999999,inf era5_WS_setrtomiss_ifthen_NE_"$((common))".nc era5_WS_setrtomiss_ifthen_NE_histcount_"$((common))".nc
#the sand-moving wind frequency in the NE azimuth, 8760 is the total hours for the “$common_year”
cdo divc,8760 era5_WS_setrtomiss_ifthen_NE_histcount_"$((common))".nc era5_WS_setrtomiss_ifthen_NE_histcount_divc_"$((common))".nc
#setmisstoc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NE_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_NE_histcount_divc_setmisstoc_"$((common))".nc
#mulc
cdo mulc,100 era5_WS_setrtomiss_ifthen_NE_histcount_divc_setmisstoc_"$((common))".nc era5_WS_setrtomiss_ifthen_NE_histcount_divc_setmisstoc_mulc_"$((common))".nc
#weighting factor U^2(U-Ut), U is the mean wind speed，and they are 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 33m/s, respectively; and m/s needs to be conversed into knot. Notably, the value of U^2(U-Ut) is not divided by 100, as its subsquent multiplication represents a demensionless sand-moving wind frequency, rather than a percentage-based sand-moving wind frequency.
#level,5.1 U^2(U-Ut)=(6*3600/1852)*(6*3600/1852)*(6*3600/1852-5.1*3600/1852)=237.974030
#level,7 U^2(U-Ut)=(8*3600/1852)*(8*3600/1852)*(8*3600/1852-5.1*3600/1852)=1363.209259
#level,9 U^2(U-Ut)=(10*3600/1852)*(10*3600/1852)*(10*3600/1852-5.1*3600/1852)=3598.989961
#level,11 U^2(U-Ut)=(12*3600/1852)*(12*3600/1852)*(12*3600/1852-5.1*3600/1852)=7297.870257
#level,13 U^2(U-Ut)=(14*3600/1852)*(14*3600/1852)*(14*3600/1852-5.1*3600/1852)=12812.404263
#level,15 U^2(U-Ut)=(16*3600/1852)*(16*3600/1852)*(16*3600/1852-5.1*3600/1852)=20495.146099
#level,17 U^2(U-Ut)=(18*3600/1852)*(18*3600/1852)*(18*3600/1852-5.1*3600/1852)=30698.649884
#level,19 U^2(U-Ut)=(20*3600/1852)*(20*3600/1852)*(20*3600/1852-5.1*3600/1852)=43775.469735
#level,21 U^2(U-Ut)=(22*3600/1852)*(22*3600/1852)*(22*3600/1852-5.1*3600/1852)=60078.159773
#level,23 U^2(U-Ut)=(24*3600/1852)*(24*3600/1852)*(24*3600/1852-5.1*3600/1852)=79959.274115
#level,25 U^2(U-Ut)=(26*3600/1852)*(26*3600/1852)*(26*3600/1852-5.1*3600/1852)=103771.366881
#level,27 U^2(U-Ut)=(28*3600/1852)*(28*3600/1852)*(28*3600/1852-5.1*3600/1852)=131866.992188
#level,29 U^2(U-Ut)=(30*3600/1852)*(30*3600/1852)*(30*3600/1852-5.1*3600/1852)=164598.704156
#level,31 U^2(U-Ut)=(32*3600/1852)*(32*3600/1852)*(32*3600/1852-5.1*3600/1852)=202319.056903
#level,33 U^2(U-Ut)=(33*3600/1852)*(33*3600/1852)*(33*3600/1852-5.1*3600/1852)=223160.146731
#1 knot = 1 nautical mile/hour =1852m/hour=1852/3600m/s=0.5144m/s
#sellevel5.1
cdo -mulc,237.974030 -sellevel,5.1 era5_WS_setrtomiss_ifthen_NE_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel5.1_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel5.1_"$((common))".nc era5_DP_NE_range5.1_7_"$((common))".nc
#sellevel7
cdo -mulc,1363.209259 -sellevel,7 era5_WS_setrtomiss_ifthen_NE_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel7_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel7_"$((common))".nc era5_DP_NE_range7_9_"$((common))".nc
#sellevel9
cdo -mulc,3598.989961 -sellevel,9 era5_WS_setrtomiss_ifthen_NE_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel9_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel9_"$((common))".nc era5_DP_NE_range9_11_"$((common))".nc
#sellevel11
cdo -mulc,7297.870257 -sellevel,11 era5_WS_setrtomiss_ifthen_NE_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel11_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel11_"$((common))".nc era5_DP_NE_range11_13_"$((common))".nc
#sellevel13
cdo -mulc,12812.404263 -sellevel,13 era5_WS_setrtomiss_ifthen_NE_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel13_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel13_"$((common))".nc era5_DP_NE_range13_15_"$((common))".nc
#sellevel15
cdo -mulc,20495.146099 -sellevel,15 era5_WS_setrtomiss_ifthen_NE_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel15_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel15_"$((common))".nc era5_DP_NE_range15_17_"$((common))".nc
#sellevel17
cdo -mulc,30698.649884 -sellevel,17 era5_WS_setrtomiss_ifthen_NE_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel17_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel17_"$((common))".nc era5_DP_NE_range17_19_"$((common))".nc
#sellevel19
cdo -mulc,43775.469735 -sellevel,19 era5_WS_setrtomiss_ifthen_NE_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel19_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel19_"$((common))".nc era5_DP_NE_range19_21_"$((common))".nc
#sellevel21
cdo -mulc,60078.159773 -sellevel,21 era5_WS_setrtomiss_ifthen_NE_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel21_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel21_"$((common))".nc era5_DP_NE_range21_23_"$((common))".nc
#sellevel23
cdo -mulc,79959.274115 -sellevel,23 era5_WS_setrtomiss_ifthen_NE_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel23_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel23_"$((common))".nc era5_DP_NE_range23_25_"$((common))".nc
#sellevel25
cdo -mulc,103771.366881 -sellevel,25 era5_WS_setrtomiss_ifthen_NE_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel25_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel25_"$((common))".nc era5_DP_NE_range25_27_"$((common))".nc
#sellevel27
cdo -mulc,131866.992188 -sellevel,27 era5_WS_setrtomiss_ifthen_NE_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel27_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel27_"$((common))".nc era5_DP_NE_range27_29_"$((common))".nc
#sellevel29
cdo -mulc,164598.704156 -sellevel,29 era5_WS_setrtomiss_ifthen_NE_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel29_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel29_"$((common))".nc era5_DP_NE_range29_31_"$((common))".nc
#sellevel31
cdo -mulc,202319.056903 -sellevel,31 era5_WS_setrtomiss_ifthen_NE_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel31_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel31_"$((common))".nc era5_DP_NE_range31_33_"$((common))".nc
#sellevel33
cdo -mulc,223160.146731 -sellevel,33 era5_WS_setrtomiss_ifthen_NE_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel33_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel33_"$((common))".nc era5_DP_NE_range33_inf_"$((common))".nc
#enssum
cdo enssum era5_DP_NE_range5.1_7_"$((common))".nc era5_DP_NE_range7_9_"$((common))".nc era5_DP_NE_range9_11_"$((common))".nc era5_DP_NE_range11_13_"$((common))".nc era5_DP_NE_range13_15_"$((common))".nc era5_DP_NE_range15_17_"$((common))".nc era5_DP_NE_range17_19_"$((common))".nc era5_DP_NE_range19_21_"$((common))".nc era5_DP_NE_range21_23_"$((common))".nc era5_DP_NE_range23_25_"$((common))".nc era5_DP_NE_range25_27_"$((common))".nc era5_DP_NE_range27_29_"$((common))".nc era5_DP_NE_range29_31_"$((common))".nc era5_DP_NE_range31_33_"$((common))".nc era5_DP_NE_range33_inf_"$((common))".nc era5_DP_NE_range_enssum_"$((common))".nc
#change variable name into DP_NE, in order to be used in the resultanting
cdo chname,WS,DP_NE era5_DP_NE_range_enssum_"$((common))".nc era5_DP_NE_range_enssum_chname_"$((common))".nc
#delete intermediate results
rm -f era5_WD_ifthen_setvrange_NE_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_NE_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_NE_histcount_divc_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_NE_histcount_divc_setmisstoc_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel5.1_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel7_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel9_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel11_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel13_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel15_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel17_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel19_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel21_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel23_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel25_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel27_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel29_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel31_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel33_"$((common))".nc
rm -f era5_DP_NE_range5.1_7_"$((common))".nc
rm -f era5_DP_NE_range7_9_"$((common))".nc
rm -f era5_DP_NE_range9_11_"$((common))".nc
rm -f era5_DP_NE_range11_13_"$((common))".nc
rm -f era5_DP_NE_range13_15_"$((common))".nc
rm -f era5_DP_NE_range15_17_"$((common))".nc
rm -f era5_DP_NE_range17_19_"$((common))".nc
rm -f era5_DP_NE_range19_21_"$((common))".nc
rm -f era5_DP_NE_range21_23_"$((common))".nc
rm -f era5_DP_NE_range23_25_"$((common))".nc
rm -f era5_DP_NE_range25_27_"$((common))".nc
rm -f era5_DP_NE_range27_29_"$((common))".nc
rm -f era5_DP_NE_range29_31_"$((common))".nc
rm -f era5_DP_NE_range31_33_"$((common))".nc
rm -f era5_DP_NE_range33_inf_"$((common))".nc

#ENE, 56.25≤ENE＜78.75
cdo setvrange,56.25,78.7499999 era5_WD_ifthen_"$((common))".nc era5_WD_ifthen_setvrange_ENE_"$((common))".nc
#mask sand-moving wind speeds in the ENE azimuth
cdo ifthen era5_WD_ifthen_setvrange_ENE_"$((common))".nc era5_WS_setrtomiss_"$((common))".nc era5_WS_setrtomiss_ifthen_ENE_"$((common))".nc
#2 m/s bins of sand-moving wind speeds in the ENE azimuth, 5.1m/s≤WS＜7m/s, 7m/s≤WS＜9m/s, 9m/s≤WS＜11m/s, 11m/s≤WS＜13m/s, 13m/s≤WS＜15m/s, 15m/s≤WS＜17m/s, 17m/s≤WS＜19m/s, 19m/s≤WS＜21m/s, 21m/s≤WS＜23m/s, 23m/s≤WS＜25m/s, 25m/s≤WS＜27m/s, 27m/s≤WS＜29m/s, 29m/s≤WS＜31m/s, 31m/s≤WS<33m/s, 33m/s≤WS
cdo histcount,5.1,6.9999999,8.9999999,10.9999999,12.9999999,14.9999999,16.9999999,18.9999999,20.9999999,22.9999999,24.9999999,26.9999999,28.9999999,30.9999999,32.9999999,inf era5_WS_setrtomiss_ifthen_ENE_"$((common))".nc era5_WS_setrtomiss_ifthen_ENE_histcount_"$((common))".nc
#the sand-moving wind frequency in the ENE azimuth, 8760 is the total hours for the “$common_year”
cdo divc,8760 era5_WS_setrtomiss_ifthen_ENE_histcount_"$((common))".nc era5_WS_setrtomiss_ifthen_ENE_histcount_divc_"$((common))".nc
#setmisstoc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_ENE_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_ENE_histcount_divc_setmisstoc_"$((common))".nc
#mulc
cdo mulc,100 era5_WS_setrtomiss_ifthen_ENE_histcount_divc_setmisstoc_"$((common))".nc era5_WS_setrtomiss_ifthen_ENE_histcount_divc_setmisstoc_mulc_"$((common))".nc
#weighting factor U^2(U-Ut), U is the mean wind speed，and they are 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 33m/s, respectively; and m/s needs to be conversed into knot. Notably, the value of U^2(U-Ut) is not divided by 100, as its subsquent multiplication represents a demensionless sand-moving wind frequency, rather than a percentage-based sand-moving wind frequency.
#level,5.1 U^2(U-Ut)=(6*3600/1852)*(6*3600/1852)*(6*3600/1852-5.1*3600/1852)=237.974030
#level,7 U^2(U-Ut)=(8*3600/1852)*(8*3600/1852)*(8*3600/1852-5.1*3600/1852)=1363.209259
#level,9 U^2(U-Ut)=(10*3600/1852)*(10*3600/1852)*(10*3600/1852-5.1*3600/1852)=3598.989961
#level,11 U^2(U-Ut)=(12*3600/1852)*(12*3600/1852)*(12*3600/1852-5.1*3600/1852)=7297.870257
#level,13 U^2(U-Ut)=(14*3600/1852)*(14*3600/1852)*(14*3600/1852-5.1*3600/1852)=12812.404263
#level,15 U^2(U-Ut)=(16*3600/1852)*(16*3600/1852)*(16*3600/1852-5.1*3600/1852)=20495.146099
#level,17 U^2(U-Ut)=(18*3600/1852)*(18*3600/1852)*(18*3600/1852-5.1*3600/1852)=30698.649884
#level,19 U^2(U-Ut)=(20*3600/1852)*(20*3600/1852)*(20*3600/1852-5.1*3600/1852)=43775.469735
#level,21 U^2(U-Ut)=(22*3600/1852)*(22*3600/1852)*(22*3600/1852-5.1*3600/1852)=60078.159773
#level,23 U^2(U-Ut)=(24*3600/1852)*(24*3600/1852)*(24*3600/1852-5.1*3600/1852)=79959.274115
#level,25 U^2(U-Ut)=(26*3600/1852)*(26*3600/1852)*(26*3600/1852-5.1*3600/1852)=103771.366881
#level,27 U^2(U-Ut)=(28*3600/1852)*(28*3600/1852)*(28*3600/1852-5.1*3600/1852)=131866.992188
#level,29 U^2(U-Ut)=(30*3600/1852)*(30*3600/1852)*(30*3600/1852-5.1*3600/1852)=164598.704156
#level,31 U^2(U-Ut)=(32*3600/1852)*(32*3600/1852)*(32*3600/1852-5.1*3600/1852)=202319.056903
#level,33 U^2(U-Ut)=(33*3600/1852)*(33*3600/1852)*(33*3600/1852-5.1*3600/1852)=223160.146731
#1 knot = 1 nautical mile/hour =1852m/hour=1852/3600m/s=0.5144m/s
#sellevel5.1
cdo -mulc,237.974030 -sellevel,5.1 era5_WS_setrtomiss_ifthen_ENE_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel5.1_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel5.1_"$((common))".nc era5_DP_ENE_range5.1_7_"$((common))".nc
#sellevel7
cdo -mulc,1363.209259 -sellevel,7 era5_WS_setrtomiss_ifthen_ENE_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel7_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel7_"$((common))".nc era5_DP_ENE_range7_9_"$((common))".nc
#sellevel9
cdo -mulc,3598.989961 -sellevel,9 era5_WS_setrtomiss_ifthen_ENE_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel9_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel9_"$((common))".nc era5_DP_ENE_range9_11_"$((common))".nc
#sellevel11
cdo -mulc,7297.870257 -sellevel,11 era5_WS_setrtomiss_ifthen_ENE_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel11_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel11_"$((common))".nc era5_DP_ENE_range11_13_"$((common))".nc
#sellevel13
cdo -mulc,12812.404263 -sellevel,13 era5_WS_setrtomiss_ifthen_ENE_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel13_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel13_"$((common))".nc era5_DP_ENE_range13_15_"$((common))".nc
#sellevel15
cdo -mulc,20495.146099 -sellevel,15 era5_WS_setrtomiss_ifthen_ENE_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel15_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel15_"$((common))".nc era5_DP_ENE_range15_17_"$((common))".nc
#sellevel17
cdo -mulc,30698.649884 -sellevel,17 era5_WS_setrtomiss_ifthen_ENE_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel17_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel17_"$((common))".nc era5_DP_ENE_range17_19_"$((common))".nc
#sellevel19
cdo -mulc,43775.469735 -sellevel,19 era5_WS_setrtomiss_ifthen_ENE_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel19_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel19_"$((common))".nc era5_DP_ENE_range19_21_"$((common))".nc
#sellevel21
cdo -mulc,60078.159773 -sellevel,21 era5_WS_setrtomiss_ifthen_ENE_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel21_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel21_"$((common))".nc era5_DP_ENE_range21_23_"$((common))".nc
#sellevel23
cdo -mulc,79959.274115 -sellevel,23 era5_WS_setrtomiss_ifthen_ENE_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel23_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel23_"$((common))".nc era5_DP_ENE_range23_25_"$((common))".nc
#sellevel25
cdo -mulc,103771.366881 -sellevel,25 era5_WS_setrtomiss_ifthen_ENE_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel25_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel25_"$((common))".nc era5_DP_ENE_range25_27_"$((common))".nc
#sellevel27
cdo -mulc,131866.992188 -sellevel,27 era5_WS_setrtomiss_ifthen_ENE_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel27_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel27_"$((common))".nc era5_DP_ENE_range27_29_"$((common))".nc
#sellevel29
cdo -mulc,164598.704156 -sellevel,29 era5_WS_setrtomiss_ifthen_ENE_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel29_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel29_"$((common))".nc era5_DP_ENE_range29_31_"$((common))".nc
#sellevel31
cdo -mulc,202319.056903 -sellevel,31 era5_WS_setrtomiss_ifthen_ENE_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel31_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel31_"$((common))".nc era5_DP_ENE_range31_33_"$((common))".nc
#sellevel33
cdo -mulc,223160.146731 -sellevel,33 era5_WS_setrtomiss_ifthen_ENE_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel33_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel33_"$((common))".nc era5_DP_ENE_range33_inf_"$((common))".nc
#enssum
cdo enssum era5_DP_ENE_range5.1_7_"$((common))".nc era5_DP_ENE_range7_9_"$((common))".nc era5_DP_ENE_range9_11_"$((common))".nc era5_DP_ENE_range11_13_"$((common))".nc era5_DP_ENE_range13_15_"$((common))".nc era5_DP_ENE_range15_17_"$((common))".nc era5_DP_ENE_range17_19_"$((common))".nc era5_DP_ENE_range19_21_"$((common))".nc era5_DP_ENE_range21_23_"$((common))".nc era5_DP_ENE_range23_25_"$((common))".nc era5_DP_ENE_range25_27_"$((common))".nc era5_DP_ENE_range27_29_"$((common))".nc era5_DP_ENE_range29_31_"$((common))".nc era5_DP_ENE_range31_33_"$((common))".nc era5_DP_ENE_range33_inf_"$((common))".nc era5_DP_ENE_range_enssum_"$((common))".nc
#change variable name into DP_ENE, in order to be used in the resultanting 
cdo chname,WS,DP_ENE era5_DP_ENE_range_enssum_"$((common))".nc era5_DP_ENE_range_enssum_chname_"$((common))".nc
#delete intermediate results
rm -f era5_WD_ifthen_setvrange_ENE_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_ENE_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_ENE_histcount_divc_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_ENE_histcount_divc_setmisstoc_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel5.1_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel7_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel9_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel11_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel13_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel15_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel17_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel19_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel21_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel23_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel25_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel27_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel29_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel31_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel33_"$((common))".nc
rm -f era5_DP_ENE_range5.1_7_"$((common))".nc
rm -f era5_DP_ENE_range7_9_"$((common))".nc
rm -f era5_DP_ENE_range9_11_"$((common))".nc
rm -f era5_DP_ENE_range11_13_"$((common))".nc
rm -f era5_DP_ENE_range13_15_"$((common))".nc
rm -f era5_DP_ENE_range15_17_"$((common))".nc
rm -f era5_DP_ENE_range17_19_"$((common))".nc
rm -f era5_DP_ENE_range19_21_"$((common))".nc
rm -f era5_DP_ENE_range21_23_"$((common))".nc
rm -f era5_DP_ENE_range23_25_"$((common))".nc
rm -f era5_DP_ENE_range25_27_"$((common))".nc
rm -f era5_DP_ENE_range27_29_"$((common))".nc
rm -f era5_DP_ENE_range29_31_"$((common))".nc
rm -f era5_DP_ENE_range31_33_"$((common))".nc
rm -f era5_DP_ENE_range33_inf_"$((common))".nc

#E, 78.75≤E＜101.25
cdo setvrange,78.75,101.2499999 era5_WD_ifthen_"$((common))".nc era5_WD_ifthen_setvrange_E_"$((common))".nc
#mask sand-moving wind speeds in the E azimuth
cdo ifthen era5_WD_ifthen_setvrange_E_"$((common))".nc era5_WS_setrtomiss_"$((common))".nc era5_WS_setrtomiss_ifthen_E_"$((common))".nc
#2 m/s bins of sand-moving wind speeds in the E azimuth, 5.1m/s≤WS＜7m/s, 7m/s≤WS＜9m/s, 9m/s≤WS＜11m/s, 11m/s≤WS＜13m/s, 13m/s≤WS＜15m/s, 15m/s≤WS＜17m/s, 17m/s≤WS＜19m/s, 19m/s≤WS＜21m/s, 21m/s≤WS＜23m/s, 23m/s≤WS＜25m/s, 25m/s≤WS＜27m/s, 27m/s≤WS＜29m/s, 29m/s≤WS＜31m/s, 31m/s≤WS<33m/s, 33m/s≤WS
cdo histcount,5.1,6.9999999,8.9999999,10.9999999,12.9999999,14.9999999,16.9999999,18.9999999,20.9999999,22.9999999,24.9999999,26.9999999,28.9999999,30.9999999,32.9999999,inf era5_WS_setrtomiss_ifthen_E_"$((common))".nc era5_WS_setrtomiss_ifthen_E_histcount_"$((common))".nc
#the sand-moving wind frequency in the E azimuth, 8760 is the total hours for the “$common_year”
cdo divc,8760 era5_WS_setrtomiss_ifthen_E_histcount_"$((common))".nc era5_WS_setrtomiss_ifthen_E_histcount_divc_"$((common))".nc
#setmisstoc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_E_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_E_histcount_divc_setmisstoc_"$((common))".nc
#mulc
cdo mulc,100 era5_WS_setrtomiss_ifthen_E_histcount_divc_setmisstoc_"$((common))".nc era5_WS_setrtomiss_ifthen_E_histcount_divc_setmisstoc_mulc_"$((common))".nc
#weighting factor U^2(U-Ut), U is the mean wind speed，and they are 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 33m/s, respectively; and m/s needs to be conversed into knot. Notably, the value of U^2(U-Ut) is not divided by 100, as its subsquent multiplication represents a demensionless sand-moving wind frequency, rather than a percentage-based sand-moving wind frequency.
#level,5.1 U^2(U-Ut)=(6*3600/1852)*(6*3600/1852)*(6*3600/1852-5.1*3600/1852)=237.974030
#level,7 U^2(U-Ut)=(8*3600/1852)*(8*3600/1852)*(8*3600/1852-5.1*3600/1852)=1363.209259
#level,9 U^2(U-Ut)=(10*3600/1852)*(10*3600/1852)*(10*3600/1852-5.1*3600/1852)=3598.989961
#level,11 U^2(U-Ut)=(12*3600/1852)*(12*3600/1852)*(12*3600/1852-5.1*3600/1852)=7297.870257
#level,13 U^2(U-Ut)=(14*3600/1852)*(14*3600/1852)*(14*3600/1852-5.1*3600/1852)=12812.404263
#level,15 U^2(U-Ut)=(16*3600/1852)*(16*3600/1852)*(16*3600/1852-5.1*3600/1852)=20495.146099
#level,17 U^2(U-Ut)=(18*3600/1852)*(18*3600/1852)*(18*3600/1852-5.1*3600/1852)=30698.649884
#level,19 U^2(U-Ut)=(20*3600/1852)*(20*3600/1852)*(20*3600/1852-5.1*3600/1852)=43775.469735
#level,21 U^2(U-Ut)=(22*3600/1852)*(22*3600/1852)*(22*3600/1852-5.1*3600/1852)=60078.159773
#level,23 U^2(U-Ut)=(24*3600/1852)*(24*3600/1852)*(24*3600/1852-5.1*3600/1852)=79959.274115
#level,25 U^2(U-Ut)=(26*3600/1852)*(26*3600/1852)*(26*3600/1852-5.1*3600/1852)=103771.366881
#level,27 U^2(U-Ut)=(28*3600/1852)*(28*3600/1852)*(28*3600/1852-5.1*3600/1852)=131866.992188
#level,29 U^2(U-Ut)=(30*3600/1852)*(30*3600/1852)*(30*3600/1852-5.1*3600/1852)=164598.704156
#level,31 U^2(U-Ut)=(32*3600/1852)*(32*3600/1852)*(32*3600/1852-5.1*3600/1852)=202319.056903
#level,33 U^2(U-Ut)=(33*3600/1852)*(33*3600/1852)*(33*3600/1852-5.1*3600/1852)=223160.146731
#1 knot = 1 nautical mile/hour =1852m/hour=1852/3600m/s=0.5144m/s
#sellevel5.1
cdo -mulc,237.974030 -sellevel,5.1 era5_WS_setrtomiss_ifthen_E_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_E_histcount_divc_sellevel5.1_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_E_histcount_divc_sellevel5.1_"$((common))".nc era5_DP_E_range5.1_7_"$((common))".nc
#sellevel7
cdo -mulc,1363.209259 -sellevel,7 era5_WS_setrtomiss_ifthen_E_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_E_histcount_divc_sellevel7_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_E_histcount_divc_sellevel7_"$((common))".nc era5_DP_E_range7_9_"$((common))".nc
#sellevel9
cdo -mulc,3598.989961 -sellevel,9 era5_WS_setrtomiss_ifthen_E_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_E_histcount_divc_sellevel9_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_E_histcount_divc_sellevel9_"$((common))".nc era5_DP_E_range9_11_"$((common))".nc
#sellevel11
cdo -mulc,7297.870257 -sellevel,11 era5_WS_setrtomiss_ifthen_E_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_E_histcount_divc_sellevel11_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_E_histcount_divc_sellevel11_"$((common))".nc era5_DP_E_range11_13_"$((common))".nc
#sellevel13
cdo -mulc,12812.404263 -sellevel,13 era5_WS_setrtomiss_ifthen_E_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_E_histcount_divc_sellevel13_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_E_histcount_divc_sellevel13_"$((common))".nc era5_DP_E_range13_15_"$((common))".nc
#sellevel15
cdo -mulc,20495.146099 -sellevel,15 era5_WS_setrtomiss_ifthen_E_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_E_histcount_divc_sellevel15_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_E_histcount_divc_sellevel15_"$((common))".nc era5_DP_E_range15_17_"$((common))".nc
#sellevel17
cdo -mulc,30698.649884 -sellevel,17 era5_WS_setrtomiss_ifthen_E_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_E_histcount_divc_sellevel17_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_E_histcount_divc_sellevel17_"$((common))".nc era5_DP_E_range17_19_"$((common))".nc
#sellevel19
cdo -mulc,43775.469735 -sellevel,19 era5_WS_setrtomiss_ifthen_E_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_E_histcount_divc_sellevel19_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_E_histcount_divc_sellevel19_"$((common))".nc era5_DP_E_range19_21_"$((common))".nc
#sellevel21
cdo -mulc,60078.159773 -sellevel,21 era5_WS_setrtomiss_ifthen_E_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_E_histcount_divc_sellevel21_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_E_histcount_divc_sellevel21_"$((common))".nc era5_DP_E_range21_23_"$((common))".nc
#sellevel23
cdo -mulc,79959.274115 -sellevel,23 era5_WS_setrtomiss_ifthen_E_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_E_histcount_divc_sellevel23_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_E_histcount_divc_sellevel23_"$((common))".nc era5_DP_E_range23_25_"$((common))".nc
#sellevel25
cdo -mulc,103771.366881 -sellevel,25 era5_WS_setrtomiss_ifthen_E_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_E_histcount_divc_sellevel25_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_E_histcount_divc_sellevel25_"$((common))".nc era5_DP_E_range25_27_"$((common))".nc
#sellevel27
cdo -mulc,131866.992188 -sellevel,27 era5_WS_setrtomiss_ifthen_E_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_E_histcount_divc_sellevel27_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_E_histcount_divc_sellevel27_"$((common))".nc era5_DP_E_range27_29_"$((common))".nc
#sellevel29
cdo -mulc,164598.704156 -sellevel,29 era5_WS_setrtomiss_ifthen_E_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_E_histcount_divc_sellevel29_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_E_histcount_divc_sellevel29_"$((common))".nc era5_DP_E_range29_31_"$((common))".nc
#sellevel31
cdo -mulc,202319.056903 -sellevel,31 era5_WS_setrtomiss_ifthen_E_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_E_histcount_divc_sellevel31_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_E_histcount_divc_sellevel31_"$((common))".nc era5_DP_E_range31_33_"$((common))".nc
#sellevel33
cdo -mulc,223160.146731 -sellevel,33 era5_WS_setrtomiss_ifthen_E_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_E_histcount_divc_sellevel33_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_E_histcount_divc_sellevel33_"$((common))".nc era5_DP_E_range33_inf_"$((common))".nc
#enssum
cdo enssum era5_DP_E_range5.1_7_"$((common))".nc era5_DP_E_range7_9_"$((common))".nc era5_DP_E_range9_11_"$((common))".nc era5_DP_E_range11_13_"$((common))".nc era5_DP_E_range13_15_"$((common))".nc era5_DP_E_range15_17_"$((common))".nc era5_DP_E_range17_19_"$((common))".nc era5_DP_E_range19_21_"$((common))".nc era5_DP_E_range21_23_"$((common))".nc era5_DP_E_range23_25_"$((common))".nc era5_DP_E_range25_27_"$((common))".nc era5_DP_E_range27_29_"$((common))".nc era5_DP_E_range29_31_"$((common))".nc era5_DP_E_range31_33_"$((common))".nc era5_DP_E_range33_inf_"$((common))".nc era5_DP_E_range_enssum_"$((common))".nc
#change variable name into DP_E, in order to be used in the resultanting
cdo chname,WS,DP_E era5_DP_E_range_enssum_"$((common))".nc era5_DP_E_range_enssum_chname_"$((common))".nc
#delete intermediate results
rm -f era5_WD_ifthen_setvrange_E_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_E_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_E_histcount_divc_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_E_histcount_divc_setmisstoc_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_E_histcount_divc_sellevel5.1_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_E_histcount_divc_sellevel7_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_E_histcount_divc_sellevel9_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_E_histcount_divc_sellevel11_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_E_histcount_divc_sellevel13_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_E_histcount_divc_sellevel15_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_E_histcount_divc_sellevel17_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_E_histcount_divc_sellevel19_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_E_histcount_divc_sellevel21_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_E_histcount_divc_sellevel23_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_E_histcount_divc_sellevel25_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_E_histcount_divc_sellevel27_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_E_histcount_divc_sellevel29_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_E_histcount_divc_sellevel31_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_E_histcount_divc_sellevel33_"$((common))".nc
rm -f era5_DP_E_range5.1_7_"$((common))".nc
rm -f era5_DP_E_range7_9_"$((common))".nc
rm -f era5_DP_E_range9_11_"$((common))".nc
rm -f era5_DP_E_range11_13_"$((common))".nc
rm -f era5_DP_E_range13_15_"$((common))".nc
rm -f era5_DP_E_range15_17_"$((common))".nc
rm -f era5_DP_E_range17_19_"$((common))".nc
rm -f era5_DP_E_range19_21_"$((common))".nc
rm -f era5_DP_E_range21_23_"$((common))".nc
rm -f era5_DP_E_range23_25_"$((common))".nc
rm -f era5_DP_E_range25_27_"$((common))".nc
rm -f era5_DP_E_range27_29_"$((common))".nc
rm -f era5_DP_E_range29_31_"$((common))".nc
rm -f era5_DP_E_range31_33_"$((common))".nc
rm -f era5_DP_E_range33_inf_"$((common))".nc

#ESE, 101.25≤ESE＜123.75
cdo setvrange,101.25,123.7499999 era5_WD_ifthen_"$((common))".nc era5_WD_ifthen_setvrange_ESE_"$((common))".nc
#mask sand-moving wind speeds in the ESE azimuth
cdo ifthen era5_WD_ifthen_setvrange_ESE_"$((common))".nc era5_WS_setrtomiss_"$((common))".nc era5_WS_setrtomiss_ifthen_ESE_"$((common))".nc
#2 m/s bins of sand-moving wind speeds in the ESE azimuth, 5.1m/s≤WS＜7m/s, 7m/s≤WS＜9m/s, 9m/s≤WS＜11m/s, 11m/s≤WS＜13m/s, 13m/s≤WS＜15m/s, 15m/s≤WS＜17m/s, 17m/s≤WS＜19m/s, 19m/s≤WS＜21m/s, 21m/s≤WS＜23m/s, 23m/s≤WS＜25m/s, 25m/s≤WS＜27m/s, 27m/s≤WS＜29m/s, 29m/s≤WS＜31m/s, 31m/s≤WS<33m/s, 33m/s≤WS
cdo histcount,5.1,6.9999999,8.9999999,10.9999999,12.9999999,14.9999999,16.9999999,18.9999999,20.9999999,22.9999999,24.9999999,26.9999999,28.9999999,30.9999999,32.9999999,inf era5_WS_setrtomiss_ifthen_ESE_"$((common))".nc era5_WS_setrtomiss_ifthen_ESE_histcount_"$((common))".nc
#the sand-moving wind frequency in the ESE azimuth, 8760 is the total hours for the “$common_year”
cdo divc,8760 era5_WS_setrtomiss_ifthen_ESE_histcount_"$((common))".nc era5_WS_setrtomiss_ifthen_ESE_histcount_divc_"$((common))".nc
#setmisstoc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_ESE_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_ESE_histcount_divc_setmisstoc_"$((common))".nc
#mulc
cdo mulc,100 era5_WS_setrtomiss_ifthen_ESE_histcount_divc_setmisstoc_"$((common))".nc era5_WS_setrtomiss_ifthen_ESE_histcount_divc_setmisstoc_mulc_"$((common))".nc
#weighting factor U^2(U-Ut), U is the mean wind speed，and they are 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 33m/s, respectively; and m/s needs to be conversed into knot. Notably, the value of U^2(U-Ut) is not divided by 100, as its subsquent multiplication represents a demensionless sand-moving wind frequency, rather than a percentage-based sand-moving wind frequency.
#level,5.1 U^2(U-Ut)=(6*3600/1852)*(6*3600/1852)*(6*3600/1852-5.1*3600/1852)=237.974030
#level,7 U^2(U-Ut)=(8*3600/1852)*(8*3600/1852)*(8*3600/1852-5.1*3600/1852)=1363.209259
#level,9 U^2(U-Ut)=(10*3600/1852)*(10*3600/1852)*(10*3600/1852-5.1*3600/1852)=3598.989961
#level,11 U^2(U-Ut)=(12*3600/1852)*(12*3600/1852)*(12*3600/1852-5.1*3600/1852)=7297.870257
#level,13 U^2(U-Ut)=(14*3600/1852)*(14*3600/1852)*(14*3600/1852-5.1*3600/1852)=12812.404263
#level,15 U^2(U-Ut)=(16*3600/1852)*(16*3600/1852)*(16*3600/1852-5.1*3600/1852)=20495.146099
#level,17 U^2(U-Ut)=(18*3600/1852)*(18*3600/1852)*(18*3600/1852-5.1*3600/1852)=30698.649884
#level,19 U^2(U-Ut)=(20*3600/1852)*(20*3600/1852)*(20*3600/1852-5.1*3600/1852)=43775.469735
#level,21 U^2(U-Ut)=(22*3600/1852)*(22*3600/1852)*(22*3600/1852-5.1*3600/1852)=60078.159773
#level,23 U^2(U-Ut)=(24*3600/1852)*(24*3600/1852)*(24*3600/1852-5.1*3600/1852)=79959.274115
#level,25 U^2(U-Ut)=(26*3600/1852)*(26*3600/1852)*(26*3600/1852-5.1*3600/1852)=103771.366881
#level,27 U^2(U-Ut)=(28*3600/1852)*(28*3600/1852)*(28*3600/1852-5.1*3600/1852)=131866.992188
#level,29 U^2(U-Ut)=(30*3600/1852)*(30*3600/1852)*(30*3600/1852-5.1*3600/1852)=164598.704156
#level,31 U^2(U-Ut)=(32*3600/1852)*(32*3600/1852)*(32*3600/1852-5.1*3600/1852)=202319.056903
#level,33 U^2(U-Ut)=(33*3600/1852)*(33*3600/1852)*(33*3600/1852-5.1*3600/1852)=223160.146731
#1 knot = 1 nautical mile/hour =1852m/hour=1852/3600m/s=0.5144m/s
#sellevel5.1
cdo -mulc,237.974030 -sellevel,5.1 era5_WS_setrtomiss_ifthen_ESE_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel5.1_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel5.1_"$((common))".nc era5_DP_ESE_range5.1_7_"$((common))".nc
#sellevel7
cdo -mulc,1363.209259 -sellevel,7 era5_WS_setrtomiss_ifthen_ESE_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel7_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel7_"$((common))".nc era5_DP_ESE_range7_9_"$((common))".nc
#sellevel9
cdo -mulc,3598.989961 -sellevel,9 era5_WS_setrtomiss_ifthen_ESE_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel9_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel9_"$((common))".nc era5_DP_ESE_range9_11_"$((common))".nc
#sellevel11
cdo -mulc,7297.870257 -sellevel,11 era5_WS_setrtomiss_ifthen_ESE_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel11_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel11_"$((common))".nc era5_DP_ESE_range11_13_"$((common))".nc
#sellevel13
cdo -mulc,12812.404263 -sellevel,13 era5_WS_setrtomiss_ifthen_ESE_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel13_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel13_"$((common))".nc era5_DP_ESE_range13_15_"$((common))".nc
#sellevel15
cdo -mulc,20495.146099 -sellevel,15 era5_WS_setrtomiss_ifthen_ESE_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel15_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel15_"$((common))".nc era5_DP_ESE_range15_17_"$((common))".nc
#sellevel17
cdo -mulc,30698.649884 -sellevel,17 era5_WS_setrtomiss_ifthen_ESE_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel17_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel17_"$((common))".nc era5_DP_ESE_range17_19_"$((common))".nc
#sellevel19
cdo -mulc,43775.469735 -sellevel,19 era5_WS_setrtomiss_ifthen_ESE_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel19_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel19_"$((common))".nc era5_DP_ESE_range19_21_"$((common))".nc
#sellevel21
cdo -mulc,60078.159773 -sellevel,21 era5_WS_setrtomiss_ifthen_ESE_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel21_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel21_"$((common))".nc era5_DP_ESE_range21_23_"$((common))".nc
#sellevel23
cdo -mulc,79959.274115 -sellevel,23 era5_WS_setrtomiss_ifthen_ESE_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel23_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel23_"$((common))".nc era5_DP_ESE_range23_25_"$((common))".nc
#sellevel25
cdo -mulc,103771.366881 -sellevel,25 era5_WS_setrtomiss_ifthen_ESE_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel25_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel25_"$((common))".nc era5_DP_ESE_range25_27_"$((common))".nc
#sellevel27
cdo -mulc,131866.992188 -sellevel,27 era5_WS_setrtomiss_ifthen_ESE_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel27_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel27_"$((common))".nc era5_DP_ESE_range27_29_"$((common))".nc
#sellevel29
cdo -mulc,164598.704156 -sellevel,29 era5_WS_setrtomiss_ifthen_ESE_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel29_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel29_"$((common))".nc era5_DP_ESE_range29_31_"$((common))".nc
#sellevel31
cdo -mulc,202319.056903 -sellevel,31 era5_WS_setrtomiss_ifthen_ESE_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel31_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel31_"$((common))".nc era5_DP_ESE_range31_33_"$((common))".nc
#sellevel33
cdo -mulc,223160.146731 -sellevel,33 era5_WS_setrtomiss_ifthen_ESE_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel33_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel33_"$((common))".nc era5_DP_ESE_range33_inf_"$((common))".nc
#enssum
cdo enssum era5_DP_ESE_range5.1_7_"$((common))".nc era5_DP_ESE_range7_9_"$((common))".nc era5_DP_ESE_range9_11_"$((common))".nc era5_DP_ESE_range11_13_"$((common))".nc era5_DP_ESE_range13_15_"$((common))".nc era5_DP_ESE_range15_17_"$((common))".nc era5_DP_ESE_range17_19_"$((common))".nc era5_DP_ESE_range19_21_"$((common))".nc era5_DP_ESE_range21_23_"$((common))".nc era5_DP_ESE_range23_25_"$((common))".nc era5_DP_ESE_range25_27_"$((common))".nc era5_DP_ESE_range27_29_"$((common))".nc era5_DP_ESE_range29_31_"$((common))".nc era5_DP_ESE_range31_33_"$((common))".nc era5_DP_ESE_range33_inf_"$((common))".nc era5_DP_ESE_range_enssum_"$((common))".nc
#change variable name into DP_ESE, in order to be used in the resultanting
cdo chname,WS,DP_ESE era5_DP_ESE_range_enssum_"$((common))".nc era5_DP_ESE_range_enssum_chname_"$((common))".nc
#delete intermediate results
rm -f era5_WD_ifthen_setvrange_ESE_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_ESE_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_ESE_histcount_divc_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_ESE_histcount_divc_setmisstoc_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel5.1_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel7_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel9_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel11_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel13_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel15_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel17_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel19_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel21_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel23_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel25_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel27_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel29_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel31_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel33_"$((common))".nc
rm -f era5_DP_ESE_range5.1_7_"$((common))".nc
rm -f era5_DP_ESE_range7_9_"$((common))".nc
rm -f era5_DP_ESE_range9_11_"$((common))".nc
rm -f era5_DP_ESE_range11_13_"$((common))".nc
rm -f era5_DP_ESE_range13_15_"$((common))".nc
rm -f era5_DP_ESE_range15_17_"$((common))".nc
rm -f era5_DP_ESE_range17_19_"$((common))".nc
rm -f era5_DP_ESE_range19_21_"$((common))".nc
rm -f era5_DP_ESE_range21_23_"$((common))".nc
rm -f era5_DP_ESE_range23_25_"$((common))".nc
rm -f era5_DP_ESE_range25_27_"$((common))".nc
rm -f era5_DP_ESE_range27_29_"$((common))".nc
rm -f era5_DP_ESE_range29_31_"$((common))".nc
rm -f era5_DP_ESE_range31_33_"$((common))".nc
rm -f era5_DP_ESE_range33_inf_"$((common))".nc

#SE, 123.75≤SE＜146.25
cdo setvrange,123.75,146.2499999 era5_WD_ifthen_"$((common))".nc era5_WD_ifthen_setvrange_SE_"$((common))".nc
#mask sand-moving wind speeds in the SE azimuth
cdo ifthen era5_WD_ifthen_setvrange_SE_"$((common))".nc era5_WS_setrtomiss_"$((common))".nc era5_WS_setrtomiss_ifthen_SE_"$((common))".nc
#2 m/s bins of sand-moving wind speeds in the SE azimuth, 5.1m/s≤WS＜7m/s, 7m/s≤WS＜9m/s, 9m/s≤WS＜11m/s, 11m/s≤WS＜13m/s, 13m/s≤WS＜15m/s, 15m/s≤WS＜17m/s, 17m/s≤WS＜19m/s, 19m/s≤WS＜21m/s, 21m/s≤WS＜23m/s, 23m/s≤WS＜25m/s, 25m/s≤WS＜27m/s, 27m/s≤WS＜29m/s, 29m/s≤WS＜31m/s, 31m/s≤WS<33m/s, 33m/s≤WS
cdo histcount,5.1,6.9999999,8.9999999,10.9999999,12.9999999,14.9999999,16.9999999,18.9999999,20.9999999,22.9999999,24.9999999,26.9999999,28.9999999,30.9999999,32.9999999,inf era5_WS_setrtomiss_ifthen_SE_"$((common))".nc era5_WS_setrtomiss_ifthen_SE_histcount_"$((common))".nc
#the sand-moving wind frequency in the SE azimuth, 8760 is the total hours for the “$common_year”
cdo divc,8760 era5_WS_setrtomiss_ifthen_SE_histcount_"$((common))".nc era5_WS_setrtomiss_ifthen_SE_histcount_divc_"$((common))".nc
#setmisstoc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SE_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_SE_histcount_divc_setmisstoc_"$((common))".nc
#mulc
cdo mulc,100 era5_WS_setrtomiss_ifthen_SE_histcount_divc_setmisstoc_"$((common))".nc era5_WS_setrtomiss_ifthen_SE_histcount_divc_setmisstoc_mulc_"$((common))".nc
#weighting factor U^2(U-Ut), U is the mean wind speed，and they are 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 33m/s, respectively; and m/s needs to be conversed into knot. Notably, the value of U^2(U-Ut) is not divided by 100, as its subsquent multiplication represents a demensionless sand-moving wind frequency, rather than a percentage-based sand-moving wind frequency.
#level,5.1 U^2(U-Ut)=(6*3600/1852)*(6*3600/1852)*(6*3600/1852-5.1*3600/1852)=237.974030
#level,7 U^2(U-Ut)=(8*3600/1852)*(8*3600/1852)*(8*3600/1852-5.1*3600/1852)=1363.209259
#level,9 U^2(U-Ut)=(10*3600/1852)*(10*3600/1852)*(10*3600/1852-5.1*3600/1852)=3598.989961
#level,11 U^2(U-Ut)=(12*3600/1852)*(12*3600/1852)*(12*3600/1852-5.1*3600/1852)=7297.870257
#level,13 U^2(U-Ut)=(14*3600/1852)*(14*3600/1852)*(14*3600/1852-5.1*3600/1852)=12812.404263
#level,15 U^2(U-Ut)=(16*3600/1852)*(16*3600/1852)*(16*3600/1852-5.1*3600/1852)=20495.146099
#level,17 U^2(U-Ut)=(18*3600/1852)*(18*3600/1852)*(18*3600/1852-5.1*3600/1852)=30698.649884
#level,19 U^2(U-Ut)=(20*3600/1852)*(20*3600/1852)*(20*3600/1852-5.1*3600/1852)=43775.469735
#level,21 U^2(U-Ut)=(22*3600/1852)*(22*3600/1852)*(22*3600/1852-5.1*3600/1852)=60078.159773
#level,23 U^2(U-Ut)=(24*3600/1852)*(24*3600/1852)*(24*3600/1852-5.1*3600/1852)=79959.274115
#level,25 U^2(U-Ut)=(26*3600/1852)*(26*3600/1852)*(26*3600/1852-5.1*3600/1852)=103771.366881
#level,27 U^2(U-Ut)=(28*3600/1852)*(28*3600/1852)*(28*3600/1852-5.1*3600/1852)=131866.992188
#level,29 U^2(U-Ut)=(30*3600/1852)*(30*3600/1852)*(30*3600/1852-5.1*3600/1852)=164598.704156
#level,31 U^2(U-Ut)=(32*3600/1852)*(32*3600/1852)*(32*3600/1852-5.1*3600/1852)=202319.056903
#level,33 U^2(U-Ut)=(33*3600/1852)*(33*3600/1852)*(33*3600/1852-5.1*3600/1852)=223160.146731
#1 knot = 1 nautical mile/hour =1852m/hour=1852/3600m/s=0.5144m/s
#sellevel5.1
cdo -mulc,237.974030 -sellevel,5.1 era5_WS_setrtomiss_ifthen_SE_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel5.1_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel5.1_"$((common))".nc era5_DP_SE_range5.1_7_"$((common))".nc
#sellevel7
cdo -mulc,1363.209259 -sellevel,7 era5_WS_setrtomiss_ifthen_SE_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel7_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel7_"$((common))".nc era5_DP_SE_range7_9_"$((common))".nc
#sellevel9
cdo -mulc,3598.989961 -sellevel,9 era5_WS_setrtomiss_ifthen_SE_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel9_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel9_"$((common))".nc era5_DP_SE_range9_11_"$((common))".nc
#sellevel11
cdo -mulc,7297.870257 -sellevel,11 era5_WS_setrtomiss_ifthen_SE_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel11_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel11_"$((common))".nc era5_DP_SE_range11_13_"$((common))".nc
#sellevel13
cdo -mulc,12812.404263 -sellevel,13 era5_WS_setrtomiss_ifthen_SE_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel13_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel13_"$((common))".nc era5_DP_SE_range13_15_"$((common))".nc
#sellevel15
cdo -mulc,20495.146099 -sellevel,15 era5_WS_setrtomiss_ifthen_SE_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel15_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel15_"$((common))".nc era5_DP_SE_range15_17_"$((common))".nc
#sellevel17
cdo -mulc,30698.649884 -sellevel,17 era5_WS_setrtomiss_ifthen_SE_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel17_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel17_"$((common))".nc era5_DP_SE_range17_19_"$((common))".nc
#sellevel19
cdo -mulc,43775.469735 -sellevel,19 era5_WS_setrtomiss_ifthen_SE_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel19_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel19_"$((common))".nc era5_DP_SE_range19_21_"$((common))".nc
#sellevel21
cdo -mulc,60078.159773 -sellevel,21 era5_WS_setrtomiss_ifthen_SE_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel21_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel21_"$((common))".nc era5_DP_SE_range21_23_"$((common))".nc
#sellevel23
cdo -mulc,79959.274115 -sellevel,23 era5_WS_setrtomiss_ifthen_SE_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel23_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel23_"$((common))".nc era5_DP_SE_range23_25_"$((common))".nc
#sellevel25
cdo -mulc,103771.366881 -sellevel,25 era5_WS_setrtomiss_ifthen_SE_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel25_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel25_"$((common))".nc era5_DP_SE_range25_27_"$((common))".nc
#sellevel27
cdo -mulc,131866.992188 -sellevel,27 era5_WS_setrtomiss_ifthen_SE_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel27_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel27_"$((common))".nc era5_DP_SE_range27_29_"$((common))".nc
#sellevel29
cdo -mulc,164598.704156 -sellevel,29 era5_WS_setrtomiss_ifthen_SE_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel29_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel29_"$((common))".nc era5_DP_SE_range29_31_"$((common))".nc
#sellevel31
cdo -mulc,202319.056903 -sellevel,31 era5_WS_setrtomiss_ifthen_SE_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel31_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel31_"$((common))".nc era5_DP_SE_range31_33_"$((common))".nc
#sellevel33
cdo -mulc,223160.146731 -sellevel,33 era5_WS_setrtomiss_ifthen_SE_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel33_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel33_"$((common))".nc era5_DP_SE_range33_inf_"$((common))".nc
#enssum
cdo enssum era5_DP_SE_range5.1_7_"$((common))".nc era5_DP_SE_range7_9_"$((common))".nc era5_DP_SE_range9_11_"$((common))".nc era5_DP_SE_range11_13_"$((common))".nc era5_DP_SE_range13_15_"$((common))".nc era5_DP_SE_range15_17_"$((common))".nc era5_DP_SE_range17_19_"$((common))".nc era5_DP_SE_range19_21_"$((common))".nc era5_DP_SE_range21_23_"$((common))".nc era5_DP_SE_range23_25_"$((common))".nc era5_DP_SE_range25_27_"$((common))".nc era5_DP_SE_range27_29_"$((common))".nc era5_DP_SE_range29_31_"$((common))".nc era5_DP_SE_range31_33_"$((common))".nc era5_DP_SE_range33_inf_"$((common))".nc era5_DP_SE_range_enssum_"$((common))".nc
#change variable name into DP_SE, in order to be used in the resultanting
cdo chname,WS,DP_SE era5_DP_SE_range_enssum_"$((common))".nc era5_DP_SE_range_enssum_chname_"$((common))".nc
#delete intermediate results
rm -f era5_WD_ifthen_setvrange_SE_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_SE_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_SE_histcount_divc_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_SE_histcount_divc_setmisstoc_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel5.1_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel7_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel9_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel11_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel13_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel15_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel17_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel19_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel21_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel23_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel25_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel27_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel29_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel31_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel33_"$((common))".nc
rm -f era5_DP_SE_range5.1_7_"$((common))".nc
rm -f era5_DP_SE_range7_9_"$((common))".nc
rm -f era5_DP_SE_range9_11_"$((common))".nc
rm -f era5_DP_SE_range11_13_"$((common))".nc
rm -f era5_DP_SE_range13_15_"$((common))".nc
rm -f era5_DP_SE_range15_17_"$((common))".nc
rm -f era5_DP_SE_range17_19_"$((common))".nc
rm -f era5_DP_SE_range19_21_"$((common))".nc
rm -f era5_DP_SE_range21_23_"$((common))".nc
rm -f era5_DP_SE_range23_25_"$((common))".nc
rm -f era5_DP_SE_range25_27_"$((common))".nc
rm -f era5_DP_SE_range27_29_"$((common))".nc
rm -f era5_DP_SE_range29_31_"$((common))".nc
rm -f era5_DP_SE_range31_33_"$((common))".nc
rm -f era5_DP_SE_range33_inf_"$((common))".nc

#SSE, 146.25≤SSE＜168.75
cdo setvrange,146.25,168.7499999 era5_WD_ifthen_"$((common))".nc era5_WD_ifthen_setvrange_SSE_"$((common))".nc
#mask sand-moving wind speeds in the SSE azimuth
cdo ifthen era5_WD_ifthen_setvrange_SSE_"$((common))".nc era5_WS_setrtomiss_"$((common))".nc era5_WS_setrtomiss_ifthen_SSE_"$((common))".nc
#2 m/s bins of sand-moving wind speeds in the SSE azimuth, 5.1m/s≤WS＜7m/s, 7m/s≤WS＜9m/s, 9m/s≤WS＜11m/s, 11m/s≤WS＜13m/s, 13m/s≤WS＜15m/s, 15m/s≤WS＜17m/s, 17m/s≤WS＜19m/s, 19m/s≤WS＜21m/s, 21m/s≤WS＜23m/s, 23m/s≤WS＜25m/s, 25m/s≤WS＜27m/s, 27m/s≤WS＜29m/s, 29m/s≤WS＜31m/s, 31m/s≤WS<33m/s, 33m/s≤WS
cdo histcount,5.1,6.9999999,8.9999999,10.9999999,12.9999999,14.9999999,16.9999999,18.9999999,20.9999999,22.9999999,24.9999999,26.9999999,28.9999999,30.9999999,32.9999999,inf era5_WS_setrtomiss_ifthen_SSE_"$((common))".nc era5_WS_setrtomiss_ifthen_SSE_histcount_"$((common))".nc
#the sand-moving wind frequency in the SSE azimuth, 8760 is the total hours for the “$common_year”
cdo divc,8760 era5_WS_setrtomiss_ifthen_SSE_histcount_"$((common))".nc era5_WS_setrtomiss_ifthen_SSE_histcount_divc_"$((common))".nc
#setmisstoc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SSE_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_SSE_histcount_divc_setmisstoc_"$((common))".nc
#mulc
cdo mulc,100 era5_WS_setrtomiss_ifthen_SSE_histcount_divc_setmisstoc_"$((common))".nc era5_WS_setrtomiss_ifthen_SSE_histcount_divc_setmisstoc_mulc_"$((common))".nc
#weighting factor U^2(U-Ut), U is the mean wind speed，and they are 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 33m/s, respectively; and m/s needs to be conversed into knot. Notably, the value of U^2(U-Ut) is not divided by 100, as its subsquent multiplication represents a demensionless sand-moving wind frequency, rather than a percentage-based sand-moving wind frequency.
#level,5.1 U^2(U-Ut)=(6*3600/1852)*(6*3600/1852)*(6*3600/1852-5.1*3600/1852)=237.974030
#level,7 U^2(U-Ut)=(8*3600/1852)*(8*3600/1852)*(8*3600/1852-5.1*3600/1852)=1363.209259
#level,9 U^2(U-Ut)=(10*3600/1852)*(10*3600/1852)*(10*3600/1852-5.1*3600/1852)=3598.989961
#level,11 U^2(U-Ut)=(12*3600/1852)*(12*3600/1852)*(12*3600/1852-5.1*3600/1852)=7297.870257
#level,13 U^2(U-Ut)=(14*3600/1852)*(14*3600/1852)*(14*3600/1852-5.1*3600/1852)=12812.404263
#level,15 U^2(U-Ut)=(16*3600/1852)*(16*3600/1852)*(16*3600/1852-5.1*3600/1852)=20495.146099
#level,17 U^2(U-Ut)=(18*3600/1852)*(18*3600/1852)*(18*3600/1852-5.1*3600/1852)=30698.649884
#level,19 U^2(U-Ut)=(20*3600/1852)*(20*3600/1852)*(20*3600/1852-5.1*3600/1852)=43775.469735
#level,21 U^2(U-Ut)=(22*3600/1852)*(22*3600/1852)*(22*3600/1852-5.1*3600/1852)=60078.159773
#level,23 U^2(U-Ut)=(24*3600/1852)*(24*3600/1852)*(24*3600/1852-5.1*3600/1852)=79959.274115
#level,25 U^2(U-Ut)=(26*3600/1852)*(26*3600/1852)*(26*3600/1852-5.1*3600/1852)=103771.366881
#level,27 U^2(U-Ut)=(28*3600/1852)*(28*3600/1852)*(28*3600/1852-5.1*3600/1852)=131866.992188
#level,29 U^2(U-Ut)=(30*3600/1852)*(30*3600/1852)*(30*3600/1852-5.1*3600/1852)=164598.704156
#level,31 U^2(U-Ut)=(32*3600/1852)*(32*3600/1852)*(32*3600/1852-5.1*3600/1852)=202319.056903
#level,33 U^2(U-Ut)=(33*3600/1852)*(33*3600/1852)*(33*3600/1852-5.1*3600/1852)=223160.146731
#1 knot = 1 nautical mile/hour =1852m/hour=1852/3600m/s=0.5144m/s
#sellevel5.1
cdo -mulc,237.974030 -sellevel,5.1 era5_WS_setrtomiss_ifthen_SSE_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel5.1_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel5.1_"$((common))".nc era5_DP_SSE_range5.1_7_"$((common))".nc
#sellevel7
cdo -mulc,1363.209259 -sellevel,7 era5_WS_setrtomiss_ifthen_SSE_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel7_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel7_"$((common))".nc era5_DP_SSE_range7_9_"$((common))".nc
#sellevel9
cdo -mulc,3598.989961 -sellevel,9 era5_WS_setrtomiss_ifthen_SSE_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel9_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel9_"$((common))".nc era5_DP_SSE_range9_11_"$((common))".nc
#sellevel11
cdo -mulc,7297.870257 -sellevel,11 era5_WS_setrtomiss_ifthen_SSE_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel11_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel11_"$((common))".nc era5_DP_SSE_range11_13_"$((common))".nc
#sellevel13
cdo -mulc,12812.404263 -sellevel,13 era5_WS_setrtomiss_ifthen_SSE_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel13_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel13_"$((common))".nc era5_DP_SSE_range13_15_"$((common))".nc
#sellevel15
cdo -mulc,20495.146099 -sellevel,15 era5_WS_setrtomiss_ifthen_SSE_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel15_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel15_"$((common))".nc era5_DP_SSE_range15_17_"$((common))".nc
#sellevel17
cdo -mulc,30698.649884 -sellevel,17 era5_WS_setrtomiss_ifthen_SSE_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel17_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel17_"$((common))".nc era5_DP_SSE_range17_19_"$((common))".nc
#sellevel19
cdo -mulc,43775.469735 -sellevel,19 era5_WS_setrtomiss_ifthen_SSE_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel19_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel19_"$((common))".nc era5_DP_SSE_range19_21_"$((common))".nc
#sellevel21
cdo -mulc,60078.159773 -sellevel,21 era5_WS_setrtomiss_ifthen_SSE_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel21_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel21_"$((common))".nc era5_DP_SSE_range21_23_"$((common))".nc
#sellevel23
cdo -mulc,79959.274115 -sellevel,23 era5_WS_setrtomiss_ifthen_SSE_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel23_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel23_"$((common))".nc era5_DP_SSE_range23_25_"$((common))".nc
#sellevel25
cdo -mulc,103771.366881 -sellevel,25 era5_WS_setrtomiss_ifthen_SSE_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel25_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel25_"$((common))".nc era5_DP_SSE_range25_27_"$((common))".nc
#sellevel27
cdo -mulc,131866.992188 -sellevel,27 era5_WS_setrtomiss_ifthen_SSE_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel27_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel27_"$((common))".nc era5_DP_SSE_range27_29_"$((common))".nc
#sellevel29
cdo -mulc,164598.704156 -sellevel,29 era5_WS_setrtomiss_ifthen_SSE_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel29_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel29_"$((common))".nc era5_DP_SSE_range29_31_"$((common))".nc
#sellevel31
cdo -mulc,202319.056903 -sellevel,31 era5_WS_setrtomiss_ifthen_SSE_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel31_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel31_"$((common))".nc era5_DP_SSE_range31_33_"$((common))".nc
#sellevel33
cdo -mulc,223160.146731 -sellevel,33 era5_WS_setrtomiss_ifthen_SSE_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel33_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel33_"$((common))".nc era5_DP_SSE_range33_inf_"$((common))".nc
#enssum
cdo enssum era5_DP_SSE_range5.1_7_"$((common))".nc era5_DP_SSE_range7_9_"$((common))".nc era5_DP_SSE_range9_11_"$((common))".nc era5_DP_SSE_range11_13_"$((common))".nc era5_DP_SSE_range13_15_"$((common))".nc era5_DP_SSE_range15_17_"$((common))".nc era5_DP_SSE_range17_19_"$((common))".nc era5_DP_SSE_range19_21_"$((common))".nc era5_DP_SSE_range21_23_"$((common))".nc era5_DP_SSE_range23_25_"$((common))".nc era5_DP_SSE_range25_27_"$((common))".nc era5_DP_SSE_range27_29_"$((common))".nc era5_DP_SSE_range29_31_"$((common))".nc era5_DP_SSE_range31_33_"$((common))".nc era5_DP_SSE_range33_inf_"$((common))".nc era5_DP_SSE_range_enssum_"$((common))".nc
#change variable name into DP_SSE, in order to be used in the resultanting
cdo chname,WS,DP_SSE era5_DP_SSE_range_enssum_"$((common))".nc era5_DP_SSE_range_enssum_chname_"$((common))".nc
#delete intermediate results
rm -f era5_WD_ifthen_setvrange_SSE_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_SSE_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_SSE_histcount_divc_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_SSE_histcount_divc_setmisstoc_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel5.1_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel7_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel9_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel11_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel13_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel15_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel17_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel19_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel21_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel23_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel25_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel27_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel29_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel31_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel33_"$((common))".nc
rm -f era5_DP_SSE_range5.1_7_"$((common))".nc
rm -f era5_DP_SSE_range7_9_"$((common))".nc
rm -f era5_DP_SSE_range9_11_"$((common))".nc
rm -f era5_DP_SSE_range11_13_"$((common))".nc
rm -f era5_DP_SSE_range13_15_"$((common))".nc
rm -f era5_DP_SSE_range15_17_"$((common))".nc
rm -f era5_DP_SSE_range17_19_"$((common))".nc
rm -f era5_DP_SSE_range19_21_"$((common))".nc
rm -f era5_DP_SSE_range21_23_"$((common))".nc
rm -f era5_DP_SSE_range23_25_"$((common))".nc
rm -f era5_DP_SSE_range25_27_"$((common))".nc
rm -f era5_DP_SSE_range27_29_"$((common))".nc
rm -f era5_DP_SSE_range29_31_"$((common))".nc
rm -f era5_DP_SSE_range31_33_"$((common))".nc
rm -f era5_DP_SSE_range33_inf_"$((common))".nc

#S, -180＜S＜-168.75, 168.75≤S≤180, note that here uses setrtomiss
cdo setrtomiss,-168.75,168.7499999 era5_WD_ifthen_"$((common))".nc era5_WD_ifthen_setrtomiss_S_"$((common))".nc
#mask sand-moving wind speeds in the S azimuth
cdo ifthen era5_WD_ifthen_setrtomiss_S_"$((common))".nc era5_WS_setrtomiss_"$((common))".nc era5_WS_setrtomiss_ifthen_S_"$((common))".nc
#2 m/s bins of sand-moving wind speeds in the S azimuth, 5.1m/s≤WS＜7m/s, 7m/s≤WS＜9m/s, 9m/s≤WS＜11m/s, 11m/s≤WS＜13m/s, 13m/s≤WS＜15m/s, 15m/s≤WS＜17m/s, 17m/s≤WS＜19m/s, 19m/s≤WS＜21m/s, 21m/s≤WS＜23m/s, 23m/s≤WS＜25m/s, 25m/s≤WS＜27m/s, 27m/s≤WS＜29m/s, 29m/s≤WS＜31m/s, 31m/s≤WS<33m/s, 33m/s≤WS
cdo histcount,5.1,6.9999999,8.9999999,10.9999999,12.9999999,14.9999999,16.9999999,18.9999999,20.9999999,22.9999999,24.9999999,26.9999999,28.9999999,30.9999999,32.9999999,inf era5_WS_setrtomiss_ifthen_S_"$((common))".nc era5_WS_setrtomiss_ifthen_S_histcount_"$((common))".nc
#the sand-moving wind frequency in the S azimuth, 8760 is the total hours for the “$common_year”
cdo divc,8760 era5_WS_setrtomiss_ifthen_S_histcount_"$((common))".nc era5_WS_setrtomiss_ifthen_S_histcount_divc_"$((common))".nc
#setmisstoc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_S_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_S_histcount_divc_setmisstoc_"$((common))".nc
#mulc
cdo mulc,100 era5_WS_setrtomiss_ifthen_S_histcount_divc_setmisstoc_"$((common))".nc era5_WS_setrtomiss_ifthen_S_histcount_divc_setmisstoc_mulc_"$((common))".nc
#weighting factor U^2(U-Ut), U is the mean wind speed，and they are 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 33m/s, respectively; and m/s needs to be conversed into knot. Notably, the value of U^2(U-Ut) is not divided by 100, as its subsquent multiplication represents a demensionless sand-moving wind frequency, rather than a percentage-based sand-moving wind frequency.
#level,5.1 U^2(U-Ut)=(6*3600/1852)*(6*3600/1852)*(6*3600/1852-5.1*3600/1852)=237.974030
#level,7 U^2(U-Ut)=(8*3600/1852)*(8*3600/1852)*(8*3600/1852-5.1*3600/1852)=1363.209259
#level,9 U^2(U-Ut)=(10*3600/1852)*(10*3600/1852)*(10*3600/1852-5.1*3600/1852)=3598.989961
#level,11 U^2(U-Ut)=(12*3600/1852)*(12*3600/1852)*(12*3600/1852-5.1*3600/1852)=7297.870257
#level,13 U^2(U-Ut)=(14*3600/1852)*(14*3600/1852)*(14*3600/1852-5.1*3600/1852)=12812.404263
#level,15 U^2(U-Ut)=(16*3600/1852)*(16*3600/1852)*(16*3600/1852-5.1*3600/1852)=20495.146099
#level,17 U^2(U-Ut)=(18*3600/1852)*(18*3600/1852)*(18*3600/1852-5.1*3600/1852)=30698.649884
#level,19 U^2(U-Ut)=(20*3600/1852)*(20*3600/1852)*(20*3600/1852-5.1*3600/1852)=43775.469735
#level,21 U^2(U-Ut)=(22*3600/1852)*(22*3600/1852)*(22*3600/1852-5.1*3600/1852)=60078.159773
#level,23 U^2(U-Ut)=(24*3600/1852)*(24*3600/1852)*(24*3600/1852-5.1*3600/1852)=79959.274115
#level,25 U^2(U-Ut)=(26*3600/1852)*(26*3600/1852)*(26*3600/1852-5.1*3600/1852)=103771.366881
#level,27 U^2(U-Ut)=(28*3600/1852)*(28*3600/1852)*(28*3600/1852-5.1*3600/1852)=131866.992188
#level,29 U^2(U-Ut)=(30*3600/1852)*(30*3600/1852)*(30*3600/1852-5.1*3600/1852)=164598.704156
#level,31 U^2(U-Ut)=(32*3600/1852)*(32*3600/1852)*(32*3600/1852-5.1*3600/1852)=202319.056903
#level,33 U^2(U-Ut)=(33*3600/1852)*(33*3600/1852)*(33*3600/1852-5.1*3600/1852)=223160.146731
#1 knot = 1 nautical mile/hour =1852m/hour=1852/3600m/s=0.5144m/s
#sellevel5.1
cdo -mulc,237.974030 -sellevel,5.1 era5_WS_setrtomiss_ifthen_S_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_S_histcount_divc_sellevel5.1_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_S_histcount_divc_sellevel5.1_"$((common))".nc era5_DP_S_range5.1_7_"$((common))".nc
#sellevel7
cdo -mulc,1363.209259 -sellevel,7 era5_WS_setrtomiss_ifthen_S_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_S_histcount_divc_sellevel7_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_S_histcount_divc_sellevel7_"$((common))".nc era5_DP_S_range7_9_"$((common))".nc
#sellevel9
cdo -mulc,3598.989961 -sellevel,9 era5_WS_setrtomiss_ifthen_S_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_S_histcount_divc_sellevel9_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_S_histcount_divc_sellevel9_"$((common))".nc era5_DP_S_range9_11_"$((common))".nc
#sellevel11
cdo -mulc,7297.870257 -sellevel,11 era5_WS_setrtomiss_ifthen_S_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_S_histcount_divc_sellevel11_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_S_histcount_divc_sellevel11_"$((common))".nc era5_DP_S_range11_13_"$((common))".nc
#sellevel13
cdo -mulc,12812.404263 -sellevel,13 era5_WS_setrtomiss_ifthen_S_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_S_histcount_divc_sellevel13_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_S_histcount_divc_sellevel13_"$((common))".nc era5_DP_S_range13_15_"$((common))".nc
#sellevel15
cdo -mulc,20495.146099 -sellevel,15 era5_WS_setrtomiss_ifthen_S_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_S_histcount_divc_sellevel15_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_S_histcount_divc_sellevel15_"$((common))".nc era5_DP_S_range15_17_"$((common))".nc
#sellevel17
cdo -mulc,30698.649884 -sellevel,17 era5_WS_setrtomiss_ifthen_S_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_S_histcount_divc_sellevel17_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_S_histcount_divc_sellevel17_"$((common))".nc era5_DP_S_range17_19_"$((common))".nc
#sellevel19
cdo -mulc,43775.469735 -sellevel,19 era5_WS_setrtomiss_ifthen_S_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_S_histcount_divc_sellevel19_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_S_histcount_divc_sellevel19_"$((common))".nc era5_DP_S_range19_21_"$((common))".nc
#sellevel21
cdo -mulc,60078.159773 -sellevel,21 era5_WS_setrtomiss_ifthen_S_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_S_histcount_divc_sellevel21_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_S_histcount_divc_sellevel21_"$((common))".nc era5_DP_S_range21_23_"$((common))".nc
#sellevel23
cdo -mulc,79959.274115 -sellevel,23 era5_WS_setrtomiss_ifthen_S_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_S_histcount_divc_sellevel23_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_S_histcount_divc_sellevel23_"$((common))".nc era5_DP_S_range23_25_"$((common))".nc
#sellevel25
cdo -mulc,103771.366881 -sellevel,25 era5_WS_setrtomiss_ifthen_S_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_S_histcount_divc_sellevel25_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_S_histcount_divc_sellevel25_"$((common))".nc era5_DP_S_range25_27_"$((common))".nc
#sellevel27
cdo -mulc,131866.992188 -sellevel,27 era5_WS_setrtomiss_ifthen_S_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_S_histcount_divc_sellevel27_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_S_histcount_divc_sellevel27_"$((common))".nc era5_DP_S_range27_29_"$((common))".nc
#sellevel29
cdo -mulc,164598.704156 -sellevel,29 era5_WS_setrtomiss_ifthen_S_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_S_histcount_divc_sellevel29_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_S_histcount_divc_sellevel29_"$((common))".nc era5_DP_S_range29_31_"$((common))".nc
#sellevel31
cdo -mulc,202319.056903 -sellevel,31 era5_WS_setrtomiss_ifthen_S_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_S_histcount_divc_sellevel31_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_S_histcount_divc_sellevel31_"$((common))".nc era5_DP_S_range31_33_"$((common))".nc
#sellevel33
cdo -mulc,223160.146731 -sellevel,33 era5_WS_setrtomiss_ifthen_S_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_S_histcount_divc_sellevel33_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_S_histcount_divc_sellevel33_"$((common))".nc era5_DP_S_range33_inf_"$((common))".nc
#enssum
cdo enssum era5_DP_S_range5.1_7_"$((common))".nc era5_DP_S_range7_9_"$((common))".nc era5_DP_S_range9_11_"$((common))".nc era5_DP_S_range11_13_"$((common))".nc era5_DP_S_range13_15_"$((common))".nc era5_DP_S_range15_17_"$((common))".nc era5_DP_S_range17_19_"$((common))".nc era5_DP_S_range19_21_"$((common))".nc era5_DP_S_range21_23_"$((common))".nc era5_DP_S_range23_25_"$((common))".nc era5_DP_S_range25_27_"$((common))".nc era5_DP_S_range27_29_"$((common))".nc era5_DP_S_range29_31_"$((common))".nc era5_DP_S_range31_33_"$((common))".nc era5_DP_S_range33_inf_"$((common))".nc era5_DP_S_range_enssum_"$((common))".nc
#change variable name into DP_S, in order to be used in the resultanting
cdo chname,WS,DP_S era5_DP_S_range_enssum_"$((common))".nc era5_DP_S_range_enssum_chname_"$((common))".nc
#delete intermediate results
rm -f era5_WD_ifthen_setrtomiss_S_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_S_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_S_histcount_divc_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_S_histcount_divc_setmisstoc_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_S_histcount_divc_sellevel5.1_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_S_histcount_divc_sellevel7_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_S_histcount_divc_sellevel9_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_S_histcount_divc_sellevel11_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_S_histcount_divc_sellevel13_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_S_histcount_divc_sellevel15_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_S_histcount_divc_sellevel17_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_S_histcount_divc_sellevel19_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_S_histcount_divc_sellevel21_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_S_histcount_divc_sellevel23_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_S_histcount_divc_sellevel25_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_S_histcount_divc_sellevel27_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_S_histcount_divc_sellevel29_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_S_histcount_divc_sellevel31_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_S_histcount_divc_sellevel33_"$((common))".nc
rm -f era5_DP_S_range5.1_7_"$((common))".nc
rm -f era5_DP_S_range7_9_"$((common))".nc
rm -f era5_DP_S_range9_11_"$((common))".nc
rm -f era5_DP_S_range11_13_"$((common))".nc
rm -f era5_DP_S_range13_15_"$((common))".nc
rm -f era5_DP_S_range15_17_"$((common))".nc
rm -f era5_DP_S_range17_19_"$((common))".nc
rm -f era5_DP_S_range19_21_"$((common))".nc
rm -f era5_DP_S_range21_23_"$((common))".nc
rm -f era5_DP_S_range23_25_"$((common))".nc
rm -f era5_DP_S_range25_27_"$((common))".nc
rm -f era5_DP_S_range27_29_"$((common))".nc
rm -f era5_DP_S_range29_31_"$((common))".nc
rm -f era5_DP_S_range31_33_"$((common))".nc
rm -f era5_DP_S_range33_inf_"$((common))".nc

#SSW, -168.75≤SSW＜-146.25
cdo setvrange,-168.75,-146.2500001 era5_WD_ifthen_"$((common))".nc era5_WD_ifthen_setvrange_SSW_"$((common))".nc
#mask sand-moving wind speeds in the SSW azimuth
cdo ifthen era5_WD_ifthen_setvrange_SSW_"$((common))".nc era5_WS_setrtomiss_"$((common))".nc era5_WS_setrtomiss_ifthen_SSW_"$((common))".nc
#2 m/s bins of sand-moving wind speeds in the SSW azimuth, 5.1m/s≤WS＜7m/s, 7m/s≤WS＜9m/s, 9m/s≤WS＜11m/s, 11m/s≤WS＜13m/s, 13m/s≤WS＜15m/s, 15m/s≤WS＜17m/s, 17m/s≤WS＜19m/s, 19m/s≤WS＜21m/s, 21m/s≤WS＜23m/s, 23m/s≤WS＜25m/s, 25m/s≤WS＜27m/s, 27m/s≤WS＜29m/s, 29m/s≤WS＜31m/s, 31m/s≤WS<33m/s, 33m/s≤WS
cdo histcount,5.1,6.9999999,8.9999999,10.9999999,12.9999999,14.9999999,16.9999999,18.9999999,20.9999999,22.9999999,24.9999999,26.9999999,28.9999999,30.9999999,32.9999999,inf era5_WS_setrtomiss_ifthen_SSW_"$((common))".nc era5_WS_setrtomiss_ifthen_SSW_histcount_"$((common))".nc
#the sand-moving wind frequency in the SSW azimuth, 8760 is the total hours for the “$common_year”
cdo divc,8760 era5_WS_setrtomiss_ifthen_SSW_histcount_"$((common))".nc era5_WS_setrtomiss_ifthen_SSW_histcount_divc_"$((common))".nc
#setmisstoc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SSW_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_SSW_histcount_divc_setmisstoc_"$((common))".nc
#mulc
cdo mulc,100 era5_WS_setrtomiss_ifthen_SSW_histcount_divc_setmisstoc_"$((common))".nc era5_WS_setrtomiss_ifthen_SSW_histcount_divc_setmisstoc_mulc_"$((common))".nc
#weighting factor U^2(U-Ut), U is the mean wind speed，and they are 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 33m/s, respectively; and m/s needs to be conversed into knot. Notably, the value of U^2(U-Ut) is not divided by 100, as its subsquent multiplication represents a demensionless sand-moving wind frequency, rather than a percentage-based sand-moving wind frequency.
#level,5.1 U^2(U-Ut)=(6*3600/1852)*(6*3600/1852)*(6*3600/1852-5.1*3600/1852)=237.974030
#level,7 U^2(U-Ut)=(8*3600/1852)*(8*3600/1852)*(8*3600/1852-5.1*3600/1852)=1363.209259
#level,9 U^2(U-Ut)=(10*3600/1852)*(10*3600/1852)*(10*3600/1852-5.1*3600/1852)=3598.989961
#level,11 U^2(U-Ut)=(12*3600/1852)*(12*3600/1852)*(12*3600/1852-5.1*3600/1852)=7297.870257
#level,13 U^2(U-Ut)=(14*3600/1852)*(14*3600/1852)*(14*3600/1852-5.1*3600/1852)=12812.404263
#level,15 U^2(U-Ut)=(16*3600/1852)*(16*3600/1852)*(16*3600/1852-5.1*3600/1852)=20495.146099
#level,17 U^2(U-Ut)=(18*3600/1852)*(18*3600/1852)*(18*3600/1852-5.1*3600/1852)=30698.649884
#level,19 U^2(U-Ut)=(20*3600/1852)*(20*3600/1852)*(20*3600/1852-5.1*3600/1852)=43775.469735
#level,21 U^2(U-Ut)=(22*3600/1852)*(22*3600/1852)*(22*3600/1852-5.1*3600/1852)=60078.159773
#level,23 U^2(U-Ut)=(24*3600/1852)*(24*3600/1852)*(24*3600/1852-5.1*3600/1852)=79959.274115
#level,25 U^2(U-Ut)=(26*3600/1852)*(26*3600/1852)*(26*3600/1852-5.1*3600/1852)=103771.366881
#level,27 U^2(U-Ut)=(28*3600/1852)*(28*3600/1852)*(28*3600/1852-5.1*3600/1852)=131866.992188
#level,29 U^2(U-Ut)=(30*3600/1852)*(30*3600/1852)*(30*3600/1852-5.1*3600/1852)=164598.704156
#level,31 U^2(U-Ut)=(32*3600/1852)*(32*3600/1852)*(32*3600/1852-5.1*3600/1852)=202319.056903
#level,33 U^2(U-Ut)=(33*3600/1852)*(33*3600/1852)*(33*3600/1852-5.1*3600/1852)=223160.146731
#1 knot = 1 nautical mile/hour =1852m/hour=1852/3600m/s=0.5144m/s
#sellevel5.1
cdo -mulc,237.974030 -sellevel,5.1 era5_WS_setrtomiss_ifthen_SSW_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel5.1_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel5.1_"$((common))".nc era5_DP_SSW_range5.1_7_"$((common))".nc
#sellevel7
cdo -mulc,1363.209259 -sellevel,7 era5_WS_setrtomiss_ifthen_SSW_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel7_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel7_"$((common))".nc era5_DP_SSW_range7_9_"$((common))".nc
#sellevel9
cdo -mulc,3598.989961 -sellevel,9 era5_WS_setrtomiss_ifthen_SSW_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel9_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel9_"$((common))".nc era5_DP_SSW_range9_11_"$((common))".nc
#sellevel11
cdo -mulc,7297.870257 -sellevel,11 era5_WS_setrtomiss_ifthen_SSW_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel11_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel11_"$((common))".nc era5_DP_SSW_range11_13_"$((common))".nc
#sellevel13
cdo -mulc,12812.404263 -sellevel,13 era5_WS_setrtomiss_ifthen_SSW_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel13_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel13_"$((common))".nc era5_DP_SSW_range13_15_"$((common))".nc
#sellevel15
cdo -mulc,20495.146099 -sellevel,15 era5_WS_setrtomiss_ifthen_SSW_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel15_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel15_"$((common))".nc era5_DP_SSW_range15_17_"$((common))".nc
#sellevel17
cdo -mulc,30698.649884 -sellevel,17 era5_WS_setrtomiss_ifthen_SSW_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel17_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel17_"$((common))".nc era5_DP_SSW_range17_19_"$((common))".nc
#sellevel19
cdo -mulc,43775.469735 -sellevel,19 era5_WS_setrtomiss_ifthen_SSW_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel19_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel19_"$((common))".nc era5_DP_SSW_range19_21_"$((common))".nc
#sellevel21
cdo -mulc,60078.159773 -sellevel,21 era5_WS_setrtomiss_ifthen_SSW_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel21_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel21_"$((common))".nc era5_DP_SSW_range21_23_"$((common))".nc
#sellevel23
cdo -mulc,79959.274115 -sellevel,23 era5_WS_setrtomiss_ifthen_SSW_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel23_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel23_"$((common))".nc era5_DP_SSW_range23_25_"$((common))".nc
#sellevel25
cdo -mulc,103771.366881 -sellevel,25 era5_WS_setrtomiss_ifthen_SSW_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel25_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel25_"$((common))".nc era5_DP_SSW_range25_27_"$((common))".nc
#sellevel27
cdo -mulc,131866.992188 -sellevel,27 era5_WS_setrtomiss_ifthen_SSW_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel27_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel27_"$((common))".nc era5_DP_SSW_range27_29_"$((common))".nc
#sellevel29
cdo -mulc,164598.704156 -sellevel,29 era5_WS_setrtomiss_ifthen_SSW_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel29_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel29_"$((common))".nc era5_DP_SSW_range29_31_"$((common))".nc
#sellevel31
cdo -mulc,202319.056903 -sellevel,31 era5_WS_setrtomiss_ifthen_SSW_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel31_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel31_"$((common))".nc era5_DP_SSW_range31_33_"$((common))".nc
#sellevel33
cdo -mulc,223160.146731 -sellevel,33 era5_WS_setrtomiss_ifthen_SSW_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel33_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel33_"$((common))".nc era5_DP_SSW_range33_inf_"$((common))".nc
#enssum
cdo enssum era5_DP_SSW_range5.1_7_"$((common))".nc era5_DP_SSW_range7_9_"$((common))".nc era5_DP_SSW_range9_11_"$((common))".nc era5_DP_SSW_range11_13_"$((common))".nc era5_DP_SSW_range13_15_"$((common))".nc era5_DP_SSW_range15_17_"$((common))".nc era5_DP_SSW_range17_19_"$((common))".nc era5_DP_SSW_range19_21_"$((common))".nc era5_DP_SSW_range21_23_"$((common))".nc era5_DP_SSW_range23_25_"$((common))".nc era5_DP_SSW_range25_27_"$((common))".nc era5_DP_SSW_range27_29_"$((common))".nc era5_DP_SSW_range29_31_"$((common))".nc era5_DP_SSW_range31_33_"$((common))".nc era5_DP_SSW_range33_inf_"$((common))".nc era5_DP_SSW_range_enssum_"$((common))".nc
#change variable name into DP_SSW, in order to be used in the resultanting
cdo chname,WS,DP_SSW era5_DP_SSW_range_enssum_"$((common))".nc era5_DP_SSW_range_enssum_chname_"$((common))".nc
#delete intermediate results
rm -f era5_WD_ifthen_setvrange_SSW_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_SSW_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_SSW_histcount_divc_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_SSW_histcount_divc_setmisstoc_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel5.1_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel7_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel9_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel11_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel13_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel15_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel17_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel19_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel21_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel23_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel25_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel27_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel29_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel31_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel33_"$((common))".nc
rm -f era5_DP_SSW_range5.1_7_"$((common))".nc
rm -f era5_DP_SSW_range7_9_"$((common))".nc
rm -f era5_DP_SSW_range9_11_"$((common))".nc
rm -f era5_DP_SSW_range11_13_"$((common))".nc
rm -f era5_DP_SSW_range13_15_"$((common))".nc
rm -f era5_DP_SSW_range15_17_"$((common))".nc
rm -f era5_DP_SSW_range17_19_"$((common))".nc
rm -f era5_DP_SSW_range19_21_"$((common))".nc
rm -f era5_DP_SSW_range21_23_"$((common))".nc
rm -f era5_DP_SSW_range23_25_"$((common))".nc
rm -f era5_DP_SSW_range25_27_"$((common))".nc
rm -f era5_DP_SSW_range27_29_"$((common))".nc
rm -f era5_DP_SSW_range29_31_"$((common))".nc
rm -f era5_DP_SSW_range31_33_"$((common))".nc
rm -f era5_DP_SSW_range33_inf_"$((common))".nc

#SW, -146.25≤SW＜-123.75
cdo setvrange,-146.25,-123.7500001 era5_WD_ifthen_"$((common))".nc era5_WD_ifthen_setvrange_SW_"$((common))".nc
#mask sand-moving wind speeds in the SW azimuth
cdo ifthen era5_WD_ifthen_setvrange_SW_"$((common))".nc era5_WS_setrtomiss_"$((common))".nc era5_WS_setrtomiss_ifthen_SW_"$((common))".nc
#2 m/s bins of sand-moving wind speeds in the SW azimuth, 5.1m/s≤WS＜7m/s, 7m/s≤WS＜9m/s, 9m/s≤WS＜11m/s, 11m/s≤WS＜13m/s, 13m/s≤WS＜15m/s, 15m/s≤WS＜17m/s, 17m/s≤WS＜19m/s, 19m/s≤WS＜21m/s, 21m/s≤WS＜23m/s, 23m/s≤WS＜25m/s, 25m/s≤WS＜27m/s, 27m/s≤WS＜29m/s, 29m/s≤WS＜31m/s, 31m/s≤WS<33m/s, 33m/s≤WS
cdo histcount,5.1,6.9999999,8.9999999,10.9999999,12.9999999,14.9999999,16.9999999,18.9999999,20.9999999,22.9999999,24.9999999,26.9999999,28.9999999,30.9999999,32.9999999,inf era5_WS_setrtomiss_ifthen_SW_"$((common))".nc era5_WS_setrtomiss_ifthen_SW_histcount_"$((common))".nc
#the sand-moving wind frequency in the SW azimuth, 8760 is the total hours for the “$common_year”
cdo divc,8760 era5_WS_setrtomiss_ifthen_SW_histcount_"$((common))".nc era5_WS_setrtomiss_ifthen_SW_histcount_divc_"$((common))".nc
#setmisstoc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SW_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_SW_histcount_divc_setmisstoc_"$((common))".nc
#mulc
cdo mulc,100 era5_WS_setrtomiss_ifthen_SW_histcount_divc_setmisstoc_"$((common))".nc era5_WS_setrtomiss_ifthen_SW_histcount_divc_setmisstoc_mulc_"$((common))".nc
#weighting factor U^2(U-Ut), U is the mean wind speed，and they are 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 33m/s, respectively; and m/s needs to be conversed into knot. Notably, the value of U^2(U-Ut) is not divided by 100, as its subsquent multiplication represents a demensionless sand-moving wind frequency, rather than a percentage-based sand-moving wind frequency.
#level,5.1 U^2(U-Ut)=(6*3600/1852)*(6*3600/1852)*(6*3600/1852-5.1*3600/1852)=237.974030
#level,7 U^2(U-Ut)=(8*3600/1852)*(8*3600/1852)*(8*3600/1852-5.1*3600/1852)=1363.209259
#level,9 U^2(U-Ut)=(10*3600/1852)*(10*3600/1852)*(10*3600/1852-5.1*3600/1852)=3598.989961
#level,11 U^2(U-Ut)=(12*3600/1852)*(12*3600/1852)*(12*3600/1852-5.1*3600/1852)=7297.870257
#level,13 U^2(U-Ut)=(14*3600/1852)*(14*3600/1852)*(14*3600/1852-5.1*3600/1852)=12812.404263
#level,15 U^2(U-Ut)=(16*3600/1852)*(16*3600/1852)*(16*3600/1852-5.1*3600/1852)=20495.146099
#level,17 U^2(U-Ut)=(18*3600/1852)*(18*3600/1852)*(18*3600/1852-5.1*3600/1852)=30698.649884
#level,19 U^2(U-Ut)=(20*3600/1852)*(20*3600/1852)*(20*3600/1852-5.1*3600/1852)=43775.469735
#level,21 U^2(U-Ut)=(22*3600/1852)*(22*3600/1852)*(22*3600/1852-5.1*3600/1852)=60078.159773
#level,23 U^2(U-Ut)=(24*3600/1852)*(24*3600/1852)*(24*3600/1852-5.1*3600/1852)=79959.274115
#level,25 U^2(U-Ut)=(26*3600/1852)*(26*3600/1852)*(26*3600/1852-5.1*3600/1852)=103771.366881
#level,27 U^2(U-Ut)=(28*3600/1852)*(28*3600/1852)*(28*3600/1852-5.1*3600/1852)=131866.992188
#level,29 U^2(U-Ut)=(30*3600/1852)*(30*3600/1852)*(30*3600/1852-5.1*3600/1852)=164598.704156
#level,31 U^2(U-Ut)=(32*3600/1852)*(32*3600/1852)*(32*3600/1852-5.1*3600/1852)=202319.056903
#level,33 U^2(U-Ut)=(33*3600/1852)*(33*3600/1852)*(33*3600/1852-5.1*3600/1852)=223160.146731
#1 knot = 1 nautical mile/hour =1852m/hour=1852/3600m/s=0.5144m/s
#sellevel5.1
cdo -mulc,237.974030 -sellevel,5.1 era5_WS_setrtomiss_ifthen_SW_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel5.1_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel5.1_"$((common))".nc era5_DP_SW_range5.1_7_"$((common))".nc
#sellevel7
cdo -mulc,1363.209259 -sellevel,7 era5_WS_setrtomiss_ifthen_SW_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel7_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel7_"$((common))".nc era5_DP_SW_range7_9_"$((common))".nc
#sellevel9
cdo -mulc,3598.989961 -sellevel,9 era5_WS_setrtomiss_ifthen_SW_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel9_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel9_"$((common))".nc era5_DP_SW_range9_11_"$((common))".nc
#sellevel11
cdo -mulc,7297.870257 -sellevel,11 era5_WS_setrtomiss_ifthen_SW_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel11_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel11_"$((common))".nc era5_DP_SW_range11_13_"$((common))".nc
#sellevel13
cdo -mulc,12812.404263 -sellevel,13 era5_WS_setrtomiss_ifthen_SW_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel13_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel13_"$((common))".nc era5_DP_SW_range13_15_"$((common))".nc
#sellevel15
cdo -mulc,20495.146099 -sellevel,15 era5_WS_setrtomiss_ifthen_SW_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel15_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel15_"$((common))".nc era5_DP_SW_range15_17_"$((common))".nc
#sellevel17
cdo -mulc,30698.649884 -sellevel,17 era5_WS_setrtomiss_ifthen_SW_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel17_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel17_"$((common))".nc era5_DP_SW_range17_19_"$((common))".nc
#sellevel19
cdo -mulc,43775.469735 -sellevel,19 era5_WS_setrtomiss_ifthen_SW_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel19_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel19_"$((common))".nc era5_DP_SW_range19_21_"$((common))".nc
#sellevel21
cdo -mulc,60078.159773 -sellevel,21 era5_WS_setrtomiss_ifthen_SW_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel21_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel21_"$((common))".nc era5_DP_SW_range21_23_"$((common))".nc
#sellevel23
cdo -mulc,79959.274115 -sellevel,23 era5_WS_setrtomiss_ifthen_SW_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel23_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel23_"$((common))".nc era5_DP_SW_range23_25_"$((common))".nc
#sellevel25
cdo -mulc,103771.366881 -sellevel,25 era5_WS_setrtomiss_ifthen_SW_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel25_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel25_"$((common))".nc era5_DP_SW_range25_27_"$((common))".nc
#sellevel27
cdo -mulc,131866.992188 -sellevel,27 era5_WS_setrtomiss_ifthen_SW_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel27_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel27_"$((common))".nc era5_DP_SW_range27_29_"$((common))".nc
#sellevel29
cdo -mulc,164598.704156 -sellevel,29 era5_WS_setrtomiss_ifthen_SW_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel29_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel29_"$((common))".nc era5_DP_SW_range29_31_"$((common))".nc
#sellevel31
cdo -mulc,202319.056903 -sellevel,31 era5_WS_setrtomiss_ifthen_SW_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel31_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel31_"$((common))".nc era5_DP_SW_range31_33_"$((common))".nc
#sellevel33
cdo -mulc,223160.146731 -sellevel,33 era5_WS_setrtomiss_ifthen_SW_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel33_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel33_"$((common))".nc era5_DP_SW_range33_inf_"$((common))".nc
#enssum
cdo enssum era5_DP_SW_range5.1_7_"$((common))".nc era5_DP_SW_range7_9_"$((common))".nc era5_DP_SW_range9_11_"$((common))".nc era5_DP_SW_range11_13_"$((common))".nc era5_DP_SW_range13_15_"$((common))".nc era5_DP_SW_range15_17_"$((common))".nc era5_DP_SW_range17_19_"$((common))".nc era5_DP_SW_range19_21_"$((common))".nc era5_DP_SW_range21_23_"$((common))".nc era5_DP_SW_range23_25_"$((common))".nc era5_DP_SW_range25_27_"$((common))".nc era5_DP_SW_range27_29_"$((common))".nc era5_DP_SW_range29_31_"$((common))".nc era5_DP_SW_range31_33_"$((common))".nc era5_DP_SW_range33_inf_"$((common))".nc era5_DP_SW_range_enssum_"$((common))".nc
#change variable name into DP_SW, in order to be used in the resultanting
cdo chname,WS,DP_SW era5_DP_SW_range_enssum_"$((common))".nc era5_DP_SW_range_enssum_chname_"$((common))".nc
#delete intermediate results
rm -f era5_WD_ifthen_setvrange_SW_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_SW_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_SW_histcount_divc_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_SW_histcount_divc_setmisstoc_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel5.1_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel7_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel9_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel11_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel13_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel15_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel17_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel19_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel21_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel23_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel25_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel27_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel29_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel31_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel33_"$((common))".nc
rm -f era5_DP_SW_range5.1_7_"$((common))".nc
rm -f era5_DP_SW_range7_9_"$((common))".nc
rm -f era5_DP_SW_range9_11_"$((common))".nc
rm -f era5_DP_SW_range11_13_"$((common))".nc
rm -f era5_DP_SW_range13_15_"$((common))".nc
rm -f era5_DP_SW_range15_17_"$((common))".nc
rm -f era5_DP_SW_range17_19_"$((common))".nc
rm -f era5_DP_SW_range19_21_"$((common))".nc
rm -f era5_DP_SW_range21_23_"$((common))".nc
rm -f era5_DP_SW_range23_25_"$((common))".nc
rm -f era5_DP_SW_range25_27_"$((common))".nc
rm -f era5_DP_SW_range27_29_"$((common))".nc
rm -f era5_DP_SW_range29_31_"$((common))".nc
rm -f era5_DP_SW_range31_33_"$((common))".nc
rm -f era5_DP_SW_range33_inf_"$((common))".nc

#WSW, -123.75≤WSW＜-101.25
cdo setvrange,-123.75,-101.2500001 era5_WD_ifthen_"$((common))".nc era5_WD_ifthen_setvrange_WSW_"$((common))".nc
#mask sand-moving wind speeds in the WSW azimuth
cdo ifthen era5_WD_ifthen_setvrange_WSW_"$((common))".nc era5_WS_setrtomiss_"$((common))".nc era5_WS_setrtomiss_ifthen_WSW_"$((common))".nc
#2 m/s bins of sand-moving wind speeds in the WSW azimuth, 5.1m/s≤WS＜7m/s, 7m/s≤WS＜9m/s, 9m/s≤WS＜11m/s, 11m/s≤WS＜13m/s, 13m/s≤WS＜15m/s, 15m/s≤WS＜17m/s, 17m/s≤WS＜19m/s, 19m/s≤WS＜21m/s, 21m/s≤WS＜23m/s, 23m/s≤WS＜25m/s, 25m/s≤WS＜27m/s, 27m/s≤WS＜29m/s, 29m/s≤WS＜31m/s, 31m/s≤WS<33m/s, 33m/s≤WS
cdo histcount,5.1,6.9999999,8.9999999,10.9999999,12.9999999,14.9999999,16.9999999,18.9999999,20.9999999,22.9999999,24.9999999,26.9999999,28.9999999,30.9999999,32.9999999,inf era5_WS_setrtomiss_ifthen_WSW_"$((common))".nc era5_WS_setrtomiss_ifthen_WSW_histcount_"$((common))".nc
#the sand-moving wind frequency in the WSW azimuth, 8760 is the total hours for the “$common_year”
cdo divc,8760 era5_WS_setrtomiss_ifthen_WSW_histcount_"$((common))".nc era5_WS_setrtomiss_ifthen_WSW_histcount_divc_"$((common))".nc
#setmisstoc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_WSW_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_WSW_histcount_divc_setmisstoc_"$((common))".nc
#mulc
cdo mulc,100 era5_WS_setrtomiss_ifthen_WSW_histcount_divc_setmisstoc_"$((common))".nc era5_WS_setrtomiss_ifthen_WSW_histcount_divc_setmisstoc_mulc_"$((common))".nc
#weighting factor U^2(U-Ut), U is the mean wind speed，and they are 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 33m/s, respectively; and m/s needs to be conversed into knot. Notably, the value of U^2(U-Ut) is not divided by 100, as its subsquent multiplication represents a demensionless sand-moving wind frequency, rather than a percentage-based sand-moving wind frequency.
#level,5.1 U^2(U-Ut)=(6*3600/1852)*(6*3600/1852)*(6*3600/1852-5.1*3600/1852)=237.974030
#level,7 U^2(U-Ut)=(8*3600/1852)*(8*3600/1852)*(8*3600/1852-5.1*3600/1852)=1363.209259
#level,9 U^2(U-Ut)=(10*3600/1852)*(10*3600/1852)*(10*3600/1852-5.1*3600/1852)=3598.989961
#level,11 U^2(U-Ut)=(12*3600/1852)*(12*3600/1852)*(12*3600/1852-5.1*3600/1852)=7297.870257
#level,13 U^2(U-Ut)=(14*3600/1852)*(14*3600/1852)*(14*3600/1852-5.1*3600/1852)=12812.404263
#level,15 U^2(U-Ut)=(16*3600/1852)*(16*3600/1852)*(16*3600/1852-5.1*3600/1852)=20495.146099
#level,17 U^2(U-Ut)=(18*3600/1852)*(18*3600/1852)*(18*3600/1852-5.1*3600/1852)=30698.649884
#level,19 U^2(U-Ut)=(20*3600/1852)*(20*3600/1852)*(20*3600/1852-5.1*3600/1852)=43775.469735
#level,21 U^2(U-Ut)=(22*3600/1852)*(22*3600/1852)*(22*3600/1852-5.1*3600/1852)=60078.159773
#level,23 U^2(U-Ut)=(24*3600/1852)*(24*3600/1852)*(24*3600/1852-5.1*3600/1852)=79959.274115
#level,25 U^2(U-Ut)=(26*3600/1852)*(26*3600/1852)*(26*3600/1852-5.1*3600/1852)=103771.366881
#level,27 U^2(U-Ut)=(28*3600/1852)*(28*3600/1852)*(28*3600/1852-5.1*3600/1852)=131866.992188
#level,29 U^2(U-Ut)=(30*3600/1852)*(30*3600/1852)*(30*3600/1852-5.1*3600/1852)=164598.704156
#level,31 U^2(U-Ut)=(32*3600/1852)*(32*3600/1852)*(32*3600/1852-5.1*3600/1852)=202319.056903
#level,33 U^2(U-Ut)=(33*3600/1852)*(33*3600/1852)*(33*3600/1852-5.1*3600/1852)=223160.146731
#1 knot = 1 nautical mile/hour =1852m/hour=1852/3600m/s=0.5144m/s
#sellevel5.1
cdo -mulc,237.974030 -sellevel,5.1 era5_WS_setrtomiss_ifthen_WSW_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel5.1_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel5.1_"$((common))".nc era5_DP_WSW_range5.1_7_"$((common))".nc
#sellevel7
cdo -mulc,1363.209259 -sellevel,7 era5_WS_setrtomiss_ifthen_WSW_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel7_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel7_"$((common))".nc era5_DP_WSW_range7_9_"$((common))".nc
#sellevel9
cdo -mulc,3598.989961 -sellevel,9 era5_WS_setrtomiss_ifthen_WSW_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel9_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel9_"$((common))".nc era5_DP_WSW_range9_11_"$((common))".nc
#sellevel11
cdo -mulc,7297.870257 -sellevel,11 era5_WS_setrtomiss_ifthen_WSW_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel11_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel11_"$((common))".nc era5_DP_WSW_range11_13_"$((common))".nc
#sellevel13
cdo -mulc,12812.404263 -sellevel,13 era5_WS_setrtomiss_ifthen_WSW_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel13_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel13_"$((common))".nc era5_DP_WSW_range13_15_"$((common))".nc
#sellevel15
cdo -mulc,20495.146099 -sellevel,15 era5_WS_setrtomiss_ifthen_WSW_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel15_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel15_"$((common))".nc era5_DP_WSW_range15_17_"$((common))".nc
#sellevel17
cdo -mulc,30698.649884 -sellevel,17 era5_WS_setrtomiss_ifthen_WSW_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel17_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel17_"$((common))".nc era5_DP_WSW_range17_19_"$((common))".nc
#sellevel19
cdo -mulc,43775.469735 -sellevel,19 era5_WS_setrtomiss_ifthen_WSW_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel19_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel19_"$((common))".nc era5_DP_WSW_range19_21_"$((common))".nc
#sellevel21
cdo -mulc,60078.159773 -sellevel,21 era5_WS_setrtomiss_ifthen_WSW_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel21_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel21_"$((common))".nc era5_DP_WSW_range21_23_"$((common))".nc
#sellevel23
cdo -mulc,79959.274115 -sellevel,23 era5_WS_setrtomiss_ifthen_WSW_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel23_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel23_"$((common))".nc era5_DP_WSW_range23_25_"$((common))".nc
#sellevel25
cdo -mulc,103771.366881 -sellevel,25 era5_WS_setrtomiss_ifthen_WSW_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel25_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel25_"$((common))".nc era5_DP_WSW_range25_27_"$((common))".nc
#sellevel27
cdo -mulc,131866.992188 -sellevel,27 era5_WS_setrtomiss_ifthen_WSW_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel27_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel27_"$((common))".nc era5_DP_WSW_range27_29_"$((common))".nc
#sellevel29
cdo -mulc,164598.704156 -sellevel,29 era5_WS_setrtomiss_ifthen_WSW_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel29_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel29_"$((common))".nc era5_DP_WSW_range29_31_"$((common))".nc
#sellevel31
cdo -mulc,202319.056903 -sellevel,31 era5_WS_setrtomiss_ifthen_WSW_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel31_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel31_"$((common))".nc era5_DP_WSW_range31_33_"$((common))".nc
#sellevel33
cdo -mulc,223160.146731 -sellevel,33 era5_WS_setrtomiss_ifthen_WSW_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel33_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel33_"$((common))".nc era5_DP_WSW_range33_inf_"$((common))".nc
#enssum
cdo enssum era5_DP_WSW_range5.1_7_"$((common))".nc era5_DP_WSW_range7_9_"$((common))".nc era5_DP_WSW_range9_11_"$((common))".nc era5_DP_WSW_range11_13_"$((common))".nc era5_DP_WSW_range13_15_"$((common))".nc era5_DP_WSW_range15_17_"$((common))".nc era5_DP_WSW_range17_19_"$((common))".nc era5_DP_WSW_range19_21_"$((common))".nc era5_DP_WSW_range21_23_"$((common))".nc era5_DP_WSW_range23_25_"$((common))".nc era5_DP_WSW_range25_27_"$((common))".nc era5_DP_WSW_range27_29_"$((common))".nc era5_DP_WSW_range29_31_"$((common))".nc era5_DP_WSW_range31_33_"$((common))".nc era5_DP_WSW_range33_inf_"$((common))".nc era5_DP_WSW_range_enssum_"$((common))".nc
#change variable name into DP_WSW, in order to be used in the resultanting
cdo chname,WS,DP_WSW era5_DP_WSW_range_enssum_"$((common))".nc era5_DP_WSW_range_enssum_chname_"$((common))".nc
#delete intermediate results
rm -f era5_WD_ifthen_setvrange_WSW_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_WSW_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_WSW_histcount_divc_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_WSW_histcount_divc_setmisstoc_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel5.1_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel7_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel9_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel11_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel13_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel15_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel17_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel19_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel21_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel23_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel25_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel27_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel29_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel31_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel33_"$((common))".nc
rm -f era5_DP_WSW_range5.1_7_"$((common))".nc
rm -f era5_DP_WSW_range7_9_"$((common))".nc
rm -f era5_DP_WSW_range9_11_"$((common))".nc
rm -f era5_DP_WSW_range11_13_"$((common))".nc
rm -f era5_DP_WSW_range13_15_"$((common))".nc
rm -f era5_DP_WSW_range15_17_"$((common))".nc
rm -f era5_DP_WSW_range17_19_"$((common))".nc
rm -f era5_DP_WSW_range19_21_"$((common))".nc
rm -f era5_DP_WSW_range21_23_"$((common))".nc
rm -f era5_DP_WSW_range23_25_"$((common))".nc
rm -f era5_DP_WSW_range25_27_"$((common))".nc
rm -f era5_DP_WSW_range27_29_"$((common))".nc
rm -f era5_DP_WSW_range29_31_"$((common))".nc
rm -f era5_DP_WSW_range31_33_"$((common))".nc
rm -f era5_DP_WSW_range33_inf_"$((common))".nc

#W, -101.25≤W＜-78.75
cdo setvrange,-101.25,-78.7500001 era5_WD_ifthen_"$((common))".nc era5_WD_ifthen_setvrange_W_"$((common))".nc
#mask sand-moving wind speeds in the W azimuth
cdo ifthen era5_WD_ifthen_setvrange_W_"$((common))".nc era5_WS_setrtomiss_"$((common))".nc era5_WS_setrtomiss_ifthen_W_"$((common))".nc
#2 m/s bins of sand-moving wind speeds in the W azimuth, 5.1m/s≤WS＜7m/s, 7m/s≤WS＜9m/s, 9m/s≤WS＜11m/s, 11m/s≤WS＜13m/s, 13m/s≤WS＜15m/s, 15m/s≤WS＜17m/s, 17m/s≤WS＜19m/s, 19m/s≤WS＜21m/s, 21m/s≤WS＜23m/s, 23m/s≤WS＜25m/s, 25m/s≤WS＜27m/s, 27m/s≤WS＜29m/s, 29m/s≤WS＜31m/s, 31m/s≤WS<33m/s, 33m/s≤WS
cdo histcount,5.1,6.9999999,8.9999999,10.9999999,12.9999999,14.9999999,16.9999999,18.9999999,20.9999999,22.9999999,24.9999999,26.9999999,28.9999999,30.9999999,32.9999999,inf era5_WS_setrtomiss_ifthen_W_"$((common))".nc era5_WS_setrtomiss_ifthen_W_histcount_"$((common))".nc
#the sand-moving wind frequency in the W azimuth, 8760 is the total hours for the “$common_year”
cdo divc,8760 era5_WS_setrtomiss_ifthen_W_histcount_"$((common))".nc era5_WS_setrtomiss_ifthen_W_histcount_divc_"$((common))".nc
#setmisstoc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_W_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_W_histcount_divc_setmisstoc_"$((common))".nc
#mulc
cdo mulc,100 era5_WS_setrtomiss_ifthen_W_histcount_divc_setmisstoc_"$((common))".nc era5_WS_setrtomiss_ifthen_W_histcount_divc_setmisstoc_mulc_"$((common))".nc
#weighting factor U^2(U-Ut), U is the mean wind speed，and they are 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 33m/s, respectively; and m/s needs to be conversed into knot. Notably, the value of U^2(U-Ut) is not divided by 100, as its subsquent multiplication represents a demensionless sand-moving wind frequency, rather than a percentage-based sand-moving wind frequency.
#level,5.1 U^2(U-Ut)=(6*3600/1852)*(6*3600/1852)*(6*3600/1852-5.1*3600/1852)=237.974030
#level,7 U^2(U-Ut)=(8*3600/1852)*(8*3600/1852)*(8*3600/1852-5.1*3600/1852)=1363.209259
#level,9 U^2(U-Ut)=(10*3600/1852)*(10*3600/1852)*(10*3600/1852-5.1*3600/1852)=3598.989961
#level,11 U^2(U-Ut)=(12*3600/1852)*(12*3600/1852)*(12*3600/1852-5.1*3600/1852)=7297.870257
#level,13 U^2(U-Ut)=(14*3600/1852)*(14*3600/1852)*(14*3600/1852-5.1*3600/1852)=12812.404263
#level,15 U^2(U-Ut)=(16*3600/1852)*(16*3600/1852)*(16*3600/1852-5.1*3600/1852)=20495.146099
#level,17 U^2(U-Ut)=(18*3600/1852)*(18*3600/1852)*(18*3600/1852-5.1*3600/1852)=30698.649884
#level,19 U^2(U-Ut)=(20*3600/1852)*(20*3600/1852)*(20*3600/1852-5.1*3600/1852)=43775.469735
#level,21 U^2(U-Ut)=(22*3600/1852)*(22*3600/1852)*(22*3600/1852-5.1*3600/1852)=60078.159773
#level,23 U^2(U-Ut)=(24*3600/1852)*(24*3600/1852)*(24*3600/1852-5.1*3600/1852)=79959.274115
#level,25 U^2(U-Ut)=(26*3600/1852)*(26*3600/1852)*(26*3600/1852-5.1*3600/1852)=103771.366881
#level,27 U^2(U-Ut)=(28*3600/1852)*(28*3600/1852)*(28*3600/1852-5.1*3600/1852)=131866.992188
#level,29 U^2(U-Ut)=(30*3600/1852)*(30*3600/1852)*(30*3600/1852-5.1*3600/1852)=164598.704156
#level,31 U^2(U-Ut)=(32*3600/1852)*(32*3600/1852)*(32*3600/1852-5.1*3600/1852)=202319.056903
#level,33 U^2(U-Ut)=(33*3600/1852)*(33*3600/1852)*(33*3600/1852-5.1*3600/1852)=223160.146731
#1 knot = 1 nautical mile/hour =1852m/hour=1852/3600m/s=0.5144m/s
#sellevel5.1
cdo -mulc,237.974030 -sellevel,5.1 era5_WS_setrtomiss_ifthen_W_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_W_histcount_divc_sellevel5.1_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_W_histcount_divc_sellevel5.1_"$((common))".nc era5_DP_W_range5.1_7_"$((common))".nc
#sellevel7
cdo -mulc,1363.209259 -sellevel,7 era5_WS_setrtomiss_ifthen_W_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_W_histcount_divc_sellevel7_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_W_histcount_divc_sellevel7_"$((common))".nc era5_DP_W_range7_9_"$((common))".nc
#sellevel9
cdo -mulc,3598.989961 -sellevel,9 era5_WS_setrtomiss_ifthen_W_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_W_histcount_divc_sellevel9_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_W_histcount_divc_sellevel9_"$((common))".nc era5_DP_W_range9_11_"$((common))".nc
#sellevel11
cdo -mulc,7297.870257 -sellevel,11 era5_WS_setrtomiss_ifthen_W_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_W_histcount_divc_sellevel11_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_W_histcount_divc_sellevel11_"$((common))".nc era5_DP_W_range11_13_"$((common))".nc
#sellevel13
cdo -mulc,12812.404263 -sellevel,13 era5_WS_setrtomiss_ifthen_W_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_W_histcount_divc_sellevel13_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_W_histcount_divc_sellevel13_"$((common))".nc era5_DP_W_range13_15_"$((common))".nc
#sellevel15
cdo -mulc,20495.146099 -sellevel,15 era5_WS_setrtomiss_ifthen_W_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_W_histcount_divc_sellevel15_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_W_histcount_divc_sellevel15_"$((common))".nc era5_DP_W_range15_17_"$((common))".nc
#sellevel17
cdo -mulc,30698.649884 -sellevel,17 era5_WS_setrtomiss_ifthen_W_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_W_histcount_divc_sellevel17_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_W_histcount_divc_sellevel17_"$((common))".nc era5_DP_W_range17_19_"$((common))".nc
#sellevel19
cdo -mulc,43775.469735 -sellevel,19 era5_WS_setrtomiss_ifthen_W_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_W_histcount_divc_sellevel19_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_W_histcount_divc_sellevel19_"$((common))".nc era5_DP_W_range19_21_"$((common))".nc
#sellevel21
cdo -mulc,60078.159773 -sellevel,21 era5_WS_setrtomiss_ifthen_W_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_W_histcount_divc_sellevel21_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_W_histcount_divc_sellevel21_"$((common))".nc era5_DP_W_range21_23_"$((common))".nc
#sellevel23
cdo -mulc,79959.274115 -sellevel,23 era5_WS_setrtomiss_ifthen_W_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_W_histcount_divc_sellevel23_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_W_histcount_divc_sellevel23_"$((common))".nc era5_DP_W_range23_25_"$((common))".nc
#sellevel25
cdo -mulc,103771.366881 -sellevel,25 era5_WS_setrtomiss_ifthen_W_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_W_histcount_divc_sellevel25_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_W_histcount_divc_sellevel25_"$((common))".nc era5_DP_W_range25_27_"$((common))".nc
#sellevel27
cdo -mulc,131866.992188 -sellevel,27 era5_WS_setrtomiss_ifthen_W_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_W_histcount_divc_sellevel27_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_W_histcount_divc_sellevel27_"$((common))".nc era5_DP_W_range27_29_"$((common))".nc
#sellevel29
cdo -mulc,164598.704156 -sellevel,29 era5_WS_setrtomiss_ifthen_W_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_W_histcount_divc_sellevel29_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_W_histcount_divc_sellevel29_"$((common))".nc era5_DP_W_range29_31_"$((common))".nc
#sellevel31
cdo -mulc,202319.056903 -sellevel,31 era5_WS_setrtomiss_ifthen_W_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_W_histcount_divc_sellevel31_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_W_histcount_divc_sellevel31_"$((common))".nc era5_DP_W_range31_33_"$((common))".nc
#sellevel33
cdo -mulc,223160.146731 -sellevel,33 era5_WS_setrtomiss_ifthen_W_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_W_histcount_divc_sellevel33_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_W_histcount_divc_sellevel33_"$((common))".nc era5_DP_W_range33_inf_"$((common))".nc
#enssum
cdo enssum era5_DP_W_range5.1_7_"$((common))".nc era5_DP_W_range7_9_"$((common))".nc era5_DP_W_range9_11_"$((common))".nc era5_DP_W_range11_13_"$((common))".nc era5_DP_W_range13_15_"$((common))".nc era5_DP_W_range15_17_"$((common))".nc era5_DP_W_range17_19_"$((common))".nc era5_DP_W_range19_21_"$((common))".nc era5_DP_W_range21_23_"$((common))".nc era5_DP_W_range23_25_"$((common))".nc era5_DP_W_range25_27_"$((common))".nc era5_DP_W_range27_29_"$((common))".nc era5_DP_W_range29_31_"$((common))".nc era5_DP_W_range31_33_"$((common))".nc era5_DP_W_range33_inf_"$((common))".nc era5_DP_W_range_enssum_"$((common))".nc
#change variable name into DP_W, in order to be used in the resultanting
cdo chname,WS,DP_W era5_DP_W_range_enssum_"$((common))".nc era5_DP_W_range_enssum_chname_"$((common))".nc
#delete intermediate results
rm -f era5_WD_ifthen_setvrange_W_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_W_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_W_histcount_divc_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_W_histcount_divc_setmisstoc_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_W_histcount_divc_sellevel5.1_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_W_histcount_divc_sellevel7_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_W_histcount_divc_sellevel9_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_W_histcount_divc_sellevel11_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_W_histcount_divc_sellevel13_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_W_histcount_divc_sellevel15_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_W_histcount_divc_sellevel17_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_W_histcount_divc_sellevel19_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_W_histcount_divc_sellevel21_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_W_histcount_divc_sellevel23_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_W_histcount_divc_sellevel25_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_W_histcount_divc_sellevel27_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_W_histcount_divc_sellevel29_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_W_histcount_divc_sellevel31_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_W_histcount_divc_sellevel33_"$((common))".nc
rm -f era5_DP_W_range5.1_7_"$((common))".nc
rm -f era5_DP_W_range7_9_"$((common))".nc
rm -f era5_DP_W_range9_11_"$((common))".nc
rm -f era5_DP_W_range11_13_"$((common))".nc
rm -f era5_DP_W_range13_15_"$((common))".nc
rm -f era5_DP_W_range15_17_"$((common))".nc
rm -f era5_DP_W_range17_19_"$((common))".nc
rm -f era5_DP_W_range19_21_"$((common))".nc
rm -f era5_DP_W_range21_23_"$((common))".nc
rm -f era5_DP_W_range23_25_"$((common))".nc
rm -f era5_DP_W_range25_27_"$((common))".nc
rm -f era5_DP_W_range27_29_"$((common))".nc
rm -f era5_DP_W_range29_31_"$((common))".nc
rm -f era5_DP_W_range31_33_"$((common))".nc
rm -f era5_DP_W_range33_inf_"$((common))".nc

#WNW, -78.75≤WNW＜-56.25
cdo setvrange,-78.75,-56.2500001 era5_WD_ifthen_"$((common))".nc era5_WD_ifthen_setvrange_WNW_"$((common))".nc
#mask sand-moving wind speeds in the WNW azimuth
cdo ifthen era5_WD_ifthen_setvrange_WNW_"$((common))".nc era5_WS_setrtomiss_"$((common))".nc era5_WS_setrtomiss_ifthen_WNW_"$((common))".nc
#2 m/s bins of sand-moving wind speeds in the WNW azimuth, 5.1m/s≤WS＜7m/s, 7m/s≤WS＜9m/s, 9m/s≤WS＜11m/s, 11m/s≤WS＜13m/s, 13m/s≤WS＜15m/s, 15m/s≤WS＜17m/s, 17m/s≤WS＜19m/s, 19m/s≤WS＜21m/s, 21m/s≤WS＜23m/s, 23m/s≤WS＜25m/s, 25m/s≤WS＜27m/s, 27m/s≤WS＜29m/s, 29m/s≤WS＜31m/s, 31m/s≤WS<33m/s, 33m/s≤WS
cdo histcount,5.1,6.9999999,8.9999999,10.9999999,12.9999999,14.9999999,16.9999999,18.9999999,20.9999999,22.9999999,24.9999999,26.9999999,28.9999999,30.9999999,32.9999999,inf era5_WS_setrtomiss_ifthen_WNW_"$((common))".nc era5_WS_setrtomiss_ifthen_WNW_histcount_"$((common))".nc
#the sand-moving wind frequency in the WNW azimuth, 8760 is the total hours for the “$common_year”
cdo divc,8760 era5_WS_setrtomiss_ifthen_WNW_histcount_"$((common))".nc era5_WS_setrtomiss_ifthen_WNW_histcount_divc_"$((common))".nc
#setmisstoc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_WNW_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_WNW_histcount_divc_setmisstoc_"$((common))".nc
#mulc
cdo mulc,100 era5_WS_setrtomiss_ifthen_WNW_histcount_divc_setmisstoc_"$((common))".nc era5_WS_setrtomiss_ifthen_WNW_histcount_divc_setmisstoc_mulc_"$((common))".nc
#weighting factor U^2(U-Ut), U is the mean wind speed，and they are 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 33m/s, respectively; and m/s needs to be conversed into knot. Notably, the value of U^2(U-Ut) is not divided by 100, as its subsquent multiplication represents a demensionless sand-moving wind frequency, rather than a percentage-based sand-moving wind frequency.
#level,5.1 U^2(U-Ut)=(6*3600/1852)*(6*3600/1852)*(6*3600/1852-5.1*3600/1852)=237.974030
#level,7 U^2(U-Ut)=(8*3600/1852)*(8*3600/1852)*(8*3600/1852-5.1*3600/1852)=1363.209259
#level,9 U^2(U-Ut)=(10*3600/1852)*(10*3600/1852)*(10*3600/1852-5.1*3600/1852)=3598.989961
#level,11 U^2(U-Ut)=(12*3600/1852)*(12*3600/1852)*(12*3600/1852-5.1*3600/1852)=7297.870257
#level,13 U^2(U-Ut)=(14*3600/1852)*(14*3600/1852)*(14*3600/1852-5.1*3600/1852)=12812.404263
#level,15 U^2(U-Ut)=(16*3600/1852)*(16*3600/1852)*(16*3600/1852-5.1*3600/1852)=20495.146099
#level,17 U^2(U-Ut)=(18*3600/1852)*(18*3600/1852)*(18*3600/1852-5.1*3600/1852)=30698.649884
#level,19 U^2(U-Ut)=(20*3600/1852)*(20*3600/1852)*(20*3600/1852-5.1*3600/1852)=43775.469735
#level,21 U^2(U-Ut)=(22*3600/1852)*(22*3600/1852)*(22*3600/1852-5.1*3600/1852)=60078.159773
#level,23 U^2(U-Ut)=(24*3600/1852)*(24*3600/1852)*(24*3600/1852-5.1*3600/1852)=79959.274115
#level,25 U^2(U-Ut)=(26*3600/1852)*(26*3600/1852)*(26*3600/1852-5.1*3600/1852)=103771.366881
#level,27 U^2(U-Ut)=(28*3600/1852)*(28*3600/1852)*(28*3600/1852-5.1*3600/1852)=131866.992188
#level,29 U^2(U-Ut)=(30*3600/1852)*(30*3600/1852)*(30*3600/1852-5.1*3600/1852)=164598.704156
#level,31 U^2(U-Ut)=(32*3600/1852)*(32*3600/1852)*(32*3600/1852-5.1*3600/1852)=202319.056903
#level,33 U^2(U-Ut)=(33*3600/1852)*(33*3600/1852)*(33*3600/1852-5.1*3600/1852)=223160.146731
#1 knot = 1 nautical mile/hour =1852m/hour=1852/3600m/s=0.5144m/s
#sellevel5.1
cdo -mulc,237.974030 -sellevel,5.1 era5_WS_setrtomiss_ifthen_WNW_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel5.1_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel5.1_"$((common))".nc era5_DP_WNW_range5.1_7_"$((common))".nc
#sellevel7
cdo -mulc,1363.209259 -sellevel,7 era5_WS_setrtomiss_ifthen_WNW_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel7_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel7_"$((common))".nc era5_DP_WNW_range7_9_"$((common))".nc
#sellevel9
cdo -mulc,3598.989961 -sellevel,9 era5_WS_setrtomiss_ifthen_WNW_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel9_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel9_"$((common))".nc era5_DP_WNW_range9_11_"$((common))".nc
#sellevel11
cdo -mulc,7297.870257 -sellevel,11 era5_WS_setrtomiss_ifthen_WNW_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel11_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel11_"$((common))".nc era5_DP_WNW_range11_13_"$((common))".nc
#sellevel13
cdo -mulc,12812.404263 -sellevel,13 era5_WS_setrtomiss_ifthen_WNW_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel13_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel13_"$((common))".nc era5_DP_WNW_range13_15_"$((common))".nc
#sellevel15
cdo -mulc,20495.146099 -sellevel,15 era5_WS_setrtomiss_ifthen_WNW_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel15_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel15_"$((common))".nc era5_DP_WNW_range15_17_"$((common))".nc
#sellevel17
cdo -mulc,30698.649884 -sellevel,17 era5_WS_setrtomiss_ifthen_WNW_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel17_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel17_"$((common))".nc era5_DP_WNW_range17_19_"$((common))".nc
#sellevel19
cdo -mulc,43775.469735 -sellevel,19 era5_WS_setrtomiss_ifthen_WNW_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel19_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel19_"$((common))".nc era5_DP_WNW_range19_21_"$((common))".nc
#sellevel21
cdo -mulc,60078.159773 -sellevel,21 era5_WS_setrtomiss_ifthen_WNW_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel21_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel21_"$((common))".nc era5_DP_WNW_range21_23_"$((common))".nc
#sellevel23
cdo -mulc,79959.274115 -sellevel,23 era5_WS_setrtomiss_ifthen_WNW_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel23_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel23_"$((common))".nc era5_DP_WNW_range23_25_"$((common))".nc
#sellevel25
cdo -mulc,103771.366881 -sellevel,25 era5_WS_setrtomiss_ifthen_WNW_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel25_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel25_"$((common))".nc era5_DP_WNW_range25_27_"$((common))".nc
#sellevel27
cdo -mulc,131866.992188 -sellevel,27 era5_WS_setrtomiss_ifthen_WNW_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel27_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel27_"$((common))".nc era5_DP_WNW_range27_29_"$((common))".nc
#sellevel29
cdo -mulc,164598.704156 -sellevel,29 era5_WS_setrtomiss_ifthen_WNW_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel29_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel29_"$((common))".nc era5_DP_WNW_range29_31_"$((common))".nc
#sellevel31
cdo -mulc,202319.056903 -sellevel,31 era5_WS_setrtomiss_ifthen_WNW_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel31_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel31_"$((common))".nc era5_DP_WNW_range31_33_"$((common))".nc
#sellevel33
cdo -mulc,223160.146731 -sellevel,33 era5_WS_setrtomiss_ifthen_WNW_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel33_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel33_"$((common))".nc era5_DP_WNW_range33_inf_"$((common))".nc
#enssum
cdo enssum era5_DP_WNW_range5.1_7_"$((common))".nc era5_DP_WNW_range7_9_"$((common))".nc era5_DP_WNW_range9_11_"$((common))".nc era5_DP_WNW_range11_13_"$((common))".nc era5_DP_WNW_range13_15_"$((common))".nc era5_DP_WNW_range15_17_"$((common))".nc era5_DP_WNW_range17_19_"$((common))".nc era5_DP_WNW_range19_21_"$((common))".nc era5_DP_WNW_range21_23_"$((common))".nc era5_DP_WNW_range23_25_"$((common))".nc era5_DP_WNW_range25_27_"$((common))".nc era5_DP_WNW_range27_29_"$((common))".nc era5_DP_WNW_range29_31_"$((common))".nc era5_DP_WNW_range31_33_"$((common))".nc era5_DP_WNW_range33_inf_"$((common))".nc era5_DP_WNW_range_enssum_"$((common))".nc
#change variable name into DP_WNW, in order to be used in the resultanting
cdo chname,WS,DP_WNW era5_DP_WNW_range_enssum_"$((common))".nc era5_DP_WNW_range_enssum_chname_"$((common))".nc
#delete intermediate results
rm -f era5_WD_ifthen_setvrange_WNW_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_WNW_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_WNW_histcount_divc_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_WNW_histcount_divc_setmisstoc_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel5.1_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel7_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel9_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel11_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel13_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel15_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel17_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel19_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel21_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel23_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel25_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel27_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel29_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel31_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel33_"$((common))".nc
rm -f era5_DP_WNW_range5.1_7_"$((common))".nc
rm -f era5_DP_WNW_range7_9_"$((common))".nc
rm -f era5_DP_WNW_range9_11_"$((common))".nc
rm -f era5_DP_WNW_range11_13_"$((common))".nc
rm -f era5_DP_WNW_range13_15_"$((common))".nc
rm -f era5_DP_WNW_range15_17_"$((common))".nc
rm -f era5_DP_WNW_range17_19_"$((common))".nc
rm -f era5_DP_WNW_range19_21_"$((common))".nc
rm -f era5_DP_WNW_range21_23_"$((common))".nc
rm -f era5_DP_WNW_range23_25_"$((common))".nc
rm -f era5_DP_WNW_range25_27_"$((common))".nc
rm -f era5_DP_WNW_range27_29_"$((common))".nc
rm -f era5_DP_WNW_range29_31_"$((common))".nc
rm -f era5_DP_WNW_range31_33_"$((common))".nc
rm -f era5_DP_WNW_range33_inf_"$((common))".nc

#NW, -56.25≤NW＜-33.75
cdo setvrange,-56.25,-33.7500001 era5_WD_ifthen_"$((common))".nc era5_WD_ifthen_setvrange_NW_"$((common))".nc
#mask sand-moving wind speeds in the NW azimuth
cdo ifthen era5_WD_ifthen_setvrange_NW_"$((common))".nc era5_WS_setrtomiss_"$((common))".nc era5_WS_setrtomiss_ifthen_NW_"$((common))".nc
#2 m/s bins of sand-moving wind speeds in the NW azimuth, 5.1m/s≤WS＜7m/s, 7m/s≤WS＜9m/s, 9m/s≤WS＜11m/s, 11m/s≤WS＜13m/s, 13m/s≤WS＜15m/s, 15m/s≤WS＜17m/s, 17m/s≤WS＜19m/s, 19m/s≤WS＜21m/s, 21m/s≤WS＜23m/s, 23m/s≤WS＜25m/s, 25m/s≤WS＜27m/s, 27m/s≤WS＜29m/s, 29m/s≤WS＜31m/s, 31m/s≤WS<33m/s, 33m/s≤WS
cdo histcount,5.1,6.9999999,8.9999999,10.9999999,12.9999999,14.9999999,16.9999999,18.9999999,20.9999999,22.9999999,24.9999999,26.9999999,28.9999999,30.9999999,32.9999999,inf era5_WS_setrtomiss_ifthen_NW_"$((common))".nc era5_WS_setrtomiss_ifthen_NW_histcount_"$((common))".nc
#the sand-moving wind frequency in the NW azimuth, 8760 is the total hours for the “$common_year”
cdo divc,8760 era5_WS_setrtomiss_ifthen_NW_histcount_"$((common))".nc era5_WS_setrtomiss_ifthen_NW_histcount_divc_"$((common))".nc
#setmisstoc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NW_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_NW_histcount_divc_setmisstoc_"$((common))".nc
#mulc
cdo mulc,100 era5_WS_setrtomiss_ifthen_NW_histcount_divc_setmisstoc_"$((common))".nc era5_WS_setrtomiss_ifthen_NW_histcount_divc_setmisstoc_mulc_"$((common))".nc
#weighting factor U^2(U-Ut), U is the mean wind speed，and they are 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 33m/s, respectively; and m/s needs to be conversed into knot. Notably, the value of U^2(U-Ut) is not divided by 100, as its subsquent multiplication represents a demensionless sand-moving wind frequency, rather than a percentage-based sand-moving wind frequency.
#level,5.1 U^2(U-Ut)=(6*3600/1852)*(6*3600/1852)*(6*3600/1852-5.1*3600/1852)=237.974030
#level,7 U^2(U-Ut)=(8*3600/1852)*(8*3600/1852)*(8*3600/1852-5.1*3600/1852)=1363.209259
#level,9 U^2(U-Ut)=(10*3600/1852)*(10*3600/1852)*(10*3600/1852-5.1*3600/1852)=3598.989961
#level,11 U^2(U-Ut)=(12*3600/1852)*(12*3600/1852)*(12*3600/1852-5.1*3600/1852)=7297.870257
#level,13 U^2(U-Ut)=(14*3600/1852)*(14*3600/1852)*(14*3600/1852-5.1*3600/1852)=12812.404263
#level,15 U^2(U-Ut)=(16*3600/1852)*(16*3600/1852)*(16*3600/1852-5.1*3600/1852)=20495.146099
#level,17 U^2(U-Ut)=(18*3600/1852)*(18*3600/1852)*(18*3600/1852-5.1*3600/1852)=30698.649884
#level,19 U^2(U-Ut)=(20*3600/1852)*(20*3600/1852)*(20*3600/1852-5.1*3600/1852)=43775.469735
#level,21 U^2(U-Ut)=(22*3600/1852)*(22*3600/1852)*(22*3600/1852-5.1*3600/1852)=60078.159773
#level,23 U^2(U-Ut)=(24*3600/1852)*(24*3600/1852)*(24*3600/1852-5.1*3600/1852)=79959.274115
#level,25 U^2(U-Ut)=(26*3600/1852)*(26*3600/1852)*(26*3600/1852-5.1*3600/1852)=103771.366881
#level,27 U^2(U-Ut)=(28*3600/1852)*(28*3600/1852)*(28*3600/1852-5.1*3600/1852)=131866.992188
#level,29 U^2(U-Ut)=(30*3600/1852)*(30*3600/1852)*(30*3600/1852-5.1*3600/1852)=164598.704156
#level,31 U^2(U-Ut)=(32*3600/1852)*(32*3600/1852)*(32*3600/1852-5.1*3600/1852)=202319.056903
#level,33 U^2(U-Ut)=(33*3600/1852)*(33*3600/1852)*(33*3600/1852-5.1*3600/1852)=223160.146731
#1 knot = 1 nautical mile/hour =1852m/hour=1852/3600m/s=0.5144m/s
#sellevel5.1
cdo -mulc,237.974030 -sellevel,5.1 era5_WS_setrtomiss_ifthen_NW_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel5.1_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel5.1_"$((common))".nc era5_DP_NW_range5.1_7_"$((common))".nc
#sellevel7
cdo -mulc,1363.209259 -sellevel,7 era5_WS_setrtomiss_ifthen_NW_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel7_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel7_"$((common))".nc era5_DP_NW_range7_9_"$((common))".nc
#sellevel9
cdo -mulc,3598.989961 -sellevel,9 era5_WS_setrtomiss_ifthen_NW_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel9_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel9_"$((common))".nc era5_DP_NW_range9_11_"$((common))".nc
#sellevel11
cdo -mulc,7297.870257 -sellevel,11 era5_WS_setrtomiss_ifthen_NW_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel11_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel11_"$((common))".nc era5_DP_NW_range11_13_"$((common))".nc
#sellevel13
cdo -mulc,12812.404263 -sellevel,13 era5_WS_setrtomiss_ifthen_NW_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel13_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel13_"$((common))".nc era5_DP_NW_range13_15_"$((common))".nc
#sellevel15
cdo -mulc,20495.146099 -sellevel,15 era5_WS_setrtomiss_ifthen_NW_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel15_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel15_"$((common))".nc era5_DP_NW_range15_17_"$((common))".nc
#sellevel17
cdo -mulc,30698.649884 -sellevel,17 era5_WS_setrtomiss_ifthen_NW_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel17_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel17_"$((common))".nc era5_DP_NW_range17_19_"$((common))".nc
#sellevel19
cdo -mulc,43775.469735 -sellevel,19 era5_WS_setrtomiss_ifthen_NW_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel19_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel19_"$((common))".nc era5_DP_NW_range19_21_"$((common))".nc
#sellevel21
cdo -mulc,60078.159773 -sellevel,21 era5_WS_setrtomiss_ifthen_NW_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel21_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel21_"$((common))".nc era5_DP_NW_range21_23_"$((common))".nc
#sellevel23
cdo -mulc,79959.274115 -sellevel,23 era5_WS_setrtomiss_ifthen_NW_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel23_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel23_"$((common))".nc era5_DP_NW_range23_25_"$((common))".nc
#sellevel25
cdo -mulc,103771.366881 -sellevel,25 era5_WS_setrtomiss_ifthen_NW_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel25_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel25_"$((common))".nc era5_DP_NW_range25_27_"$((common))".nc
#sellevel27
cdo -mulc,131866.992188 -sellevel,27 era5_WS_setrtomiss_ifthen_NW_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel27_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel27_"$((common))".nc era5_DP_NW_range27_29_"$((common))".nc
#sellevel29
cdo -mulc,164598.704156 -sellevel,29 era5_WS_setrtomiss_ifthen_NW_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel29_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel29_"$((common))".nc era5_DP_NW_range29_31_"$((common))".nc
#sellevel31
cdo -mulc,202319.056903 -sellevel,31 era5_WS_setrtomiss_ifthen_NW_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel31_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel31_"$((common))".nc era5_DP_NW_range31_33_"$((common))".nc
#sellevel33
cdo -mulc,223160.146731 -sellevel,33 era5_WS_setrtomiss_ifthen_NW_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel33_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel33_"$((common))".nc era5_DP_NW_range33_inf_"$((common))".nc
#enssum
cdo enssum era5_DP_NW_range5.1_7_"$((common))".nc era5_DP_NW_range7_9_"$((common))".nc era5_DP_NW_range9_11_"$((common))".nc era5_DP_NW_range11_13_"$((common))".nc era5_DP_NW_range13_15_"$((common))".nc era5_DP_NW_range15_17_"$((common))".nc era5_DP_NW_range17_19_"$((common))".nc era5_DP_NW_range19_21_"$((common))".nc era5_DP_NW_range21_23_"$((common))".nc era5_DP_NW_range23_25_"$((common))".nc era5_DP_NW_range25_27_"$((common))".nc era5_DP_NW_range27_29_"$((common))".nc era5_DP_NW_range29_31_"$((common))".nc era5_DP_NW_range31_33_"$((common))".nc era5_DP_NW_range33_inf_"$((common))".nc era5_DP_NW_range_enssum_"$((common))".nc
#change variable name into DP_NW, in order to be used in the resultanting
cdo chname,WS,DP_NW era5_DP_NW_range_enssum_"$((common))".nc era5_DP_NW_range_enssum_chname_"$((common))".nc
#delete intermediate results
rm -f era5_WD_ifthen_setvrange_NW_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_NW_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_NW_histcount_divc_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_NW_histcount_divc_setmisstoc_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel5.1_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel7_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel9_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel11_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel13_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel15_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel17_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel19_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel21_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel23_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel25_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel27_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel29_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel31_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel33_"$((common))".nc
rm -f era5_DP_NW_range5.1_7_"$((common))".nc
rm -f era5_DP_NW_range7_9_"$((common))".nc
rm -f era5_DP_NW_range9_11_"$((common))".nc
rm -f era5_DP_NW_range11_13_"$((common))".nc
rm -f era5_DP_NW_range13_15_"$((common))".nc
rm -f era5_DP_NW_range15_17_"$((common))".nc
rm -f era5_DP_NW_range17_19_"$((common))".nc
rm -f era5_DP_NW_range19_21_"$((common))".nc
rm -f era5_DP_NW_range21_23_"$((common))".nc
rm -f era5_DP_NW_range23_25_"$((common))".nc
rm -f era5_DP_NW_range25_27_"$((common))".nc
rm -f era5_DP_NW_range27_29_"$((common))".nc
rm -f era5_DP_NW_range29_31_"$((common))".nc
rm -f era5_DP_NW_range31_33_"$((common))".nc
rm -f era5_DP_NW_range33_inf_"$((common))".nc

#NNW, -33.75≤NNW＜-11.25
cdo setvrange,-33.75,-11.2500001 era5_WD_ifthen_"$((common))".nc era5_WD_ifthen_setvrange_NNW_"$((common))".nc
#mask sand-moving wind speeds in the NNW azimuth
cdo ifthen era5_WD_ifthen_setvrange_NNW_"$((common))".nc era5_WS_setrtomiss_"$((common))".nc era5_WS_setrtomiss_ifthen_NNW_"$((common))".nc
#2 m/s bins of sand-moving wind speeds in the NNW azimuth, 5.1m/s≤WS＜7m/s, 7m/s≤WS＜9m/s, 9m/s≤WS＜11m/s, 11m/s≤WS＜13m/s, 13m/s≤WS＜15m/s, 15m/s≤WS＜17m/s, 17m/s≤WS＜19m/s, 19m/s≤WS＜21m/s, 21m/s≤WS＜23m/s, 23m/s≤WS＜25m/s, 25m/s≤WS＜27m/s, 27m/s≤WS＜29m/s, 29m/s≤WS＜31m/s, 31m/s≤WS<33m/s, 33m/s≤WS
cdo histcount,5.1,6.9999999,8.9999999,10.9999999,12.9999999,14.9999999,16.9999999,18.9999999,20.9999999,22.9999999,24.9999999,26.9999999,28.9999999,30.9999999,32.9999999,inf era5_WS_setrtomiss_ifthen_NNW_"$((common))".nc era5_WS_setrtomiss_ifthen_NNW_histcount_"$((common))".nc
#the sand-moving wind frequency in the NNW azimuth, 8760 is the total hours for the “$common_year”
cdo divc,8760 era5_WS_setrtomiss_ifthen_NNW_histcount_"$((common))".nc era5_WS_setrtomiss_ifthen_NNW_histcount_divc_"$((common))".nc
#setmisstoc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NNW_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_NNW_histcount_divc_setmisstoc_"$((common))".nc
#mulc
cdo mulc,100 era5_WS_setrtomiss_ifthen_NNW_histcount_divc_setmisstoc_"$((common))".nc era5_WS_setrtomiss_ifthen_NNW_histcount_divc_setmisstoc_mulc_"$((common))".nc
#weighting factor U^2(U-Ut), U is the mean wind speed，and they are 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 33m/s, respectively; and m/s needs to be conversed into knot. Notably, the value of U^2(U-Ut) is not divided by 100, as its subsquent multiplication represents a demensionless sand-moving wind frequency, rather than a percentage-based sand-moving wind frequency.
#level,5.1 U^2(U-Ut)=(6*3600/1852)*(6*3600/1852)*(6*3600/1852-5.1*3600/1852)=237.974030
#level,7 U^2(U-Ut)=(8*3600/1852)*(8*3600/1852)*(8*3600/1852-5.1*3600/1852)=1363.209259
#level,9 U^2(U-Ut)=(10*3600/1852)*(10*3600/1852)*(10*3600/1852-5.1*3600/1852)=3598.989961
#level,11 U^2(U-Ut)=(12*3600/1852)*(12*3600/1852)*(12*3600/1852-5.1*3600/1852)=7297.870257
#level,13 U^2(U-Ut)=(14*3600/1852)*(14*3600/1852)*(14*3600/1852-5.1*3600/1852)=12812.404263
#level,15 U^2(U-Ut)=(16*3600/1852)*(16*3600/1852)*(16*3600/1852-5.1*3600/1852)=20495.146099
#level,17 U^2(U-Ut)=(18*3600/1852)*(18*3600/1852)*(18*3600/1852-5.1*3600/1852)=30698.649884
#level,19 U^2(U-Ut)=(20*3600/1852)*(20*3600/1852)*(20*3600/1852-5.1*3600/1852)=43775.469735
#level,21 U^2(U-Ut)=(22*3600/1852)*(22*3600/1852)*(22*3600/1852-5.1*3600/1852)=60078.159773
#level,23 U^2(U-Ut)=(24*3600/1852)*(24*3600/1852)*(24*3600/1852-5.1*3600/1852)=79959.274115
#level,25 U^2(U-Ut)=(26*3600/1852)*(26*3600/1852)*(26*3600/1852-5.1*3600/1852)=103771.366881
#level,27 U^2(U-Ut)=(28*3600/1852)*(28*3600/1852)*(28*3600/1852-5.1*3600/1852)=131866.992188
#level,29 U^2(U-Ut)=(30*3600/1852)*(30*3600/1852)*(30*3600/1852-5.1*3600/1852)=164598.704156
#level,31 U^2(U-Ut)=(32*3600/1852)*(32*3600/1852)*(32*3600/1852-5.1*3600/1852)=202319.056903
#level,33 U^2(U-Ut)=(33*3600/1852)*(33*3600/1852)*(33*3600/1852-5.1*3600/1852)=223160.146731
#1 knot = 1 nautical mile/hour =1852m/hour=1852/3600m/s=0.5144m/s
#sellevel5.1
cdo -mulc,237.974030 -sellevel,5.1 era5_WS_setrtomiss_ifthen_NNW_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel5.1_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel5.1_"$((common))".nc era5_DP_NNW_range5.1_7_"$((common))".nc
#sellevel7
cdo -mulc,1363.209259 -sellevel,7 era5_WS_setrtomiss_ifthen_NNW_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel7_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel7_"$((common))".nc era5_DP_NNW_range7_9_"$((common))".nc
#sellevel9
cdo -mulc,3598.989961 -sellevel,9 era5_WS_setrtomiss_ifthen_NNW_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel9_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel9_"$((common))".nc era5_DP_NNW_range9_11_"$((common))".nc
#sellevel11
cdo -mulc,7297.870257 -sellevel,11 era5_WS_setrtomiss_ifthen_NNW_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel11_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel11_"$((common))".nc era5_DP_NNW_range11_13_"$((common))".nc
#sellevel13
cdo -mulc,12812.404263 -sellevel,13 era5_WS_setrtomiss_ifthen_NNW_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel13_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel13_"$((common))".nc era5_DP_NNW_range13_15_"$((common))".nc
#sellevel15
cdo -mulc,20495.146099 -sellevel,15 era5_WS_setrtomiss_ifthen_NNW_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel15_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel15_"$((common))".nc era5_DP_NNW_range15_17_"$((common))".nc
#sellevel17
cdo -mulc,30698.649884 -sellevel,17 era5_WS_setrtomiss_ifthen_NNW_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel17_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel17_"$((common))".nc era5_DP_NNW_range17_19_"$((common))".nc
#sellevel19
cdo -mulc,43775.469735 -sellevel,19 era5_WS_setrtomiss_ifthen_NNW_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel19_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel19_"$((common))".nc era5_DP_NNW_range19_21_"$((common))".nc
#sellevel21
cdo -mulc,60078.159773 -sellevel,21 era5_WS_setrtomiss_ifthen_NNW_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel21_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel21_"$((common))".nc era5_DP_NNW_range21_23_"$((common))".nc
#sellevel23
cdo -mulc,79959.274115 -sellevel,23 era5_WS_setrtomiss_ifthen_NNW_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel23_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel23_"$((common))".nc era5_DP_NNW_range23_25_"$((common))".nc
#sellevel25
cdo -mulc,103771.366881 -sellevel,25 era5_WS_setrtomiss_ifthen_NNW_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel25_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel25_"$((common))".nc era5_DP_NNW_range25_27_"$((common))".nc
#sellevel27
cdo -mulc,131866.992188 -sellevel,27 era5_WS_setrtomiss_ifthen_NNW_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel27_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel27_"$((common))".nc era5_DP_NNW_range27_29_"$((common))".nc
#sellevel29
cdo -mulc,164598.704156 -sellevel,29 era5_WS_setrtomiss_ifthen_NNW_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel29_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel29_"$((common))".nc era5_DP_NNW_range29_31_"$((common))".nc
#sellevel31
cdo -mulc,202319.056903 -sellevel,31 era5_WS_setrtomiss_ifthen_NNW_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel31_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel31_"$((common))".nc era5_DP_NNW_range31_33_"$((common))".nc
#sellevel33
cdo -mulc,223160.146731 -sellevel,33 era5_WS_setrtomiss_ifthen_NNW_histcount_divc_"$((common))".nc era5_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel33_"$((common))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel33_"$((common))".nc era5_DP_NNW_range33_inf_"$((common))".nc
#enssum
cdo enssum era5_DP_NNW_range5.1_7_"$((common))".nc era5_DP_NNW_range7_9_"$((common))".nc era5_DP_NNW_range9_11_"$((common))".nc era5_DP_NNW_range11_13_"$((common))".nc era5_DP_NNW_range13_15_"$((common))".nc era5_DP_NNW_range15_17_"$((common))".nc era5_DP_NNW_range17_19_"$((common))".nc era5_DP_NNW_range19_21_"$((common))".nc era5_DP_NNW_range21_23_"$((common))".nc era5_DP_NNW_range23_25_"$((common))".nc era5_DP_NNW_range25_27_"$((common))".nc era5_DP_NNW_range27_29_"$((common))".nc era5_DP_NNW_range29_31_"$((common))".nc era5_DP_NNW_range31_33_"$((common))".nc era5_DP_NNW_range33_inf_"$((common))".nc era5_DP_NNW_range_enssum_"$((common))".nc
#change variable name into DP_NNW, in order to be used in the resultanting
cdo chname,WS,DP_NNW era5_DP_NNW_range_enssum_"$((common))".nc era5_DP_NNW_range_enssum_chname_"$((common))".nc
#delete intermediate results
rm -f era5_WD_ifthen_setvrange_NNW_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_NNW_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_NNW_histcount_divc_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_NNW_histcount_divc_setmisstoc_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel5.1_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel7_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel9_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel11_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel13_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel15_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel17_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel19_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel21_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel23_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel25_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel27_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel29_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel31_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel33_"$((common))".nc
rm -f era5_DP_NNW_range5.1_7_"$((common))".nc
rm -f era5_DP_NNW_range7_9_"$((common))".nc
rm -f era5_DP_NNW_range9_11_"$((common))".nc
rm -f era5_DP_NNW_range11_13_"$((common))".nc
rm -f era5_DP_NNW_range13_15_"$((common))".nc
rm -f era5_DP_NNW_range15_17_"$((common))".nc
rm -f era5_DP_NNW_range17_19_"$((common))".nc
rm -f era5_DP_NNW_range19_21_"$((common))".nc
rm -f era5_DP_NNW_range21_23_"$((common))".nc
rm -f era5_DP_NNW_range23_25_"$((common))".nc
rm -f era5_DP_NNW_range25_27_"$((common))".nc
rm -f era5_DP_NNW_range27_29_"$((common))".nc
rm -f era5_DP_NNW_range29_31_"$((common))".nc
rm -f era5_DP_NNW_range31_33_"$((common))".nc
rm -f era5_DP_NNW_range33_inf_"$((common))".nc

#calculate DP，add up the DPs in the N, NNE, NE, ENE, E, ESE, SE, SSE, S, SSW, SW, WSW, W, WNW, NW, NNW azimuth
cdo enssum era5_DP_N_range_enssum_"$((common))".nc era5_DP_NNE_range_enssum_"$((common))".nc era5_DP_NE_range_enssum_"$((common))".nc era5_DP_ENE_range_enssum_"$((common))".nc era5_DP_E_range_enssum_"$((common))".nc era5_DP_ESE_range_enssum_"$((common))".nc era5_DP_SE_range_enssum_"$((common))".nc era5_DP_SSE_range_enssum_"$((common))".nc era5_DP_S_range_enssum_"$((common))".nc era5_DP_SSW_range_enssum_"$((common))".nc era5_DP_SW_range_enssum_"$((common))".nc era5_DP_WSW_range_enssum_"$((common))".nc era5_DP_W_range_enssum_"$((common))".nc era5_DP_WNW_range_enssum_"$((common))".nc era5_DP_NW_range_enssum_"$((common))".nc era5_DP_NNW_range_enssum_"$((common))".nc era5_DP_range_enssum_"$((common))".nc
#change variable name into DP, in order to be used in the resultanting
cdo chname,WS,DP era5_DP_range_enssum_"$((common))".nc era5_DP_"$((common))".nc

#merge the nc files with new variable names from 16 azimuth, and form the new nc file
cdo merge era5_DP_N_range_enssum_chname_"$((common))".nc era5_DP_NNE_range_enssum_chname_"$((common))".nc era5_DP_NE_range_enssum_chname_"$((common))".nc era5_DP_ENE_range_enssum_chname_"$((common))".nc era5_DP_E_range_enssum_chname_"$((common))".nc era5_DP_ESE_range_enssum_chname_"$((common))".nc era5_DP_SE_range_enssum_chname_"$((common))".nc era5_DP_SSE_range_enssum_chname_"$((common))".nc era5_DP_S_range_enssum_chname_"$((common))".nc era5_DP_SSW_range_enssum_chname_"$((common))".nc era5_DP_SW_range_enssum_chname_"$((common))".nc era5_DP_WSW_range_enssum_chname_"$((common))".nc era5_DP_W_range_enssum_chname_"$((common))".nc era5_DP_WNW_range_enssum_chname_"$((common))".nc era5_DP_NW_range_enssum_chname_"$((common))".nc era5_DP_NNW_range_enssum_chname_"$((common))".nc era5_DP_Azimuthal_"$((common))".nc 

#Σ component of RDP in the due-north direction, calculating process is ΣN=N-S+(NE+NW-SE-SW)*0.7071068+(NNE+NNW-SSW-SSE)*0.9238795+(WNW+ENE-WSW-ESE)*0.3826834
cdo expr,'RDP_N=DP_N-DP_S+(DP_NE+DP_NW-DP_SE-DP_SW)*0.7071068+(DP_NNE+DP_NNW-DP_SSW-DP_SSE)*0.9238795+(DP_WNW+DP_ENE-DP_WSW-DP_ESE)*0.3826834;' era5_DP_Azimuthal_"$((common))".nc era5_RDP_N_"$((common))".nc 

#Σ component of RDP in the due-east direction, calculating process is ΣE=E-W+(NE+SE-NW-SW)*0.7071068+(ESE+ENE-WNW-WSW)*0.9238795+(NNE+SSE-SSW-NNW)*0.3826834
cdo expr,'RDP_E=DP_E-DP_W+(DP_NE+DP_SE-DP_NW-DP_SW)*0.7071068+(DP_ESE+DP_ENE-DP_WNW-DP_WSW)*0.9238795+(DP_NNE+DP_SSE-DP_SSW-DP_NNW)*0.3826834;' era5_DP_Azimuthal_"$((common))".nc era5_RDP_E_"$((common))".nc

#calculate RDP, Resultant Drift Potential
cdo -chname,RDP_E,RDP -sqrt -add -sqr -selname,RDP_E era5_RDP_E_"$((common))".nc -sqr -selname,RDP_N  era5_RDP_N_"$((common))".nc era5_RDP_"$((common))".nc

#calculate RDD, Resultant Drift Direction
cdo -chname,RDP_E,RDD -addc,180 -mulc,57.2957805 -atan2 era5_RDP_E_"$((common))".nc era5_RDP_N_"$((common))".nc era5_RDD_"$((common))".nc

#calculate RDP/DP，WDV, Wind Direction Variablity
cdo div era5_RDP_"$((common))".nc era5_DP_"$((common))".nc era5_WDV_"$((common))".nc

#finally, delete intermediate results, retain needed results
rm -f era5_DP_N_range_enssum_"$((common))".nc
rm -f era5_DP_NNE_range_enssum_"$((common))".nc
rm -f era5_DP_NE_range_enssum_"$((common))".nc
rm -f era5_DP_ENE_range_enssum_"$((common))".nc
rm -f era5_DP_E_range_enssum_"$((common))".nc
rm -f era5_DP_ESE_range_enssum_"$((common))".nc
rm -f era5_DP_SE_range_enssum_"$((common))".nc
rm -f era5_DP_SSE_range_enssum_"$((common))".nc
rm -f era5_DP_S_range_enssum_"$((common))".nc
rm -f era5_DP_SSW_range_enssum_"$((common))".nc
rm -f era5_DP_SW_range_enssum_"$((common))".nc
rm -f era5_DP_WSW_range_enssum_"$((common))".nc
rm -f era5_DP_W_range_enssum_"$((common))".nc
rm -f era5_DP_WNW_range_enssum_"$((common))".nc
rm -f era5_DP_NW_range_enssum_"$((common))".nc
rm -f era5_DP_NNW_range_enssum_"$((common))".nc
rm -f era5_DP_range_enssum_"$((common))".nc
rm -f era5_DP_N_range_enssum_chname_"$((common))".nc
rm -f era5_DP_NNE_range_enssum_chname_"$((common))".nc
rm -f era5_DP_NE_range_enssum_chname_"$((common))".nc
rm -f era5_DP_ENE_range_enssum_chname_"$((common))".nc
rm -f era5_DP_E_range_enssum_chname_"$((common))".nc
rm -f era5_DP_ESE_range_enssum_chname_"$((common))".nc
rm -f era5_DP_SE_range_enssum_chname_"$((common))".nc
rm -f era5_DP_SSE_range_enssum_chname_"$((common))".nc
rm -f era5_DP_S_range_enssum_chname_"$((common))".nc
rm -f era5_DP_SSW_range_enssum_chname_"$((common))".nc
rm -f era5_DP_SW_range_enssum_chname_"$((common))".nc
rm -f era5_DP_WSW_range_enssum_chname_"$((common))".nc
rm -f era5_DP_W_range_enssum_chname_"$((common))".nc
rm -f era5_DP_WNW_range_enssum_chname_"$((common))".nc
rm -f era5_DP_NW_range_enssum_chname_"$((common))".nc
rm -f era5_DP_NNW_range_enssum_chname_"$((common))".nc

#delete
rm -f era5_WD_ifthen_"$((common))".nc
rm -f era5_WS_setrtomiss_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_E_histcount_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_E_histcount_divc_setmisstoc_mulc_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_ENE_histcount_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_ENE_histcount_divc_setmisstoc_mulc_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_ESE_histcount_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_ESE_histcount_divc_setmisstoc_mulc_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_N_histcount_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_N_histcount_divc_setmisstoc_mulc_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_NE_histcount_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_NE_histcount_divc_setmisstoc_mulc_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_NNE_histcount_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_NNE_histcount_divc_setmisstoc_mulc_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_NNW_histcount_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_NNW_histcount_divc_setmisstoc_mulc_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_NW_histcount_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_NW_histcount_divc_setmisstoc_mulc_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_S_histcount_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_S_histcount_divc_setmisstoc_mulc_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_SE_histcount_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_SE_histcount_divc_setmisstoc_mulc_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_SSE_histcount_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_SSE_histcount_divc_setmisstoc_mulc_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_SSW_histcount_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_SSW_histcount_divc_setmisstoc_mulc_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_SW_histcount_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_SW_histcount_divc_setmisstoc_mulc_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_W_histcount_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_W_histcount_divc_setmisstoc_mulc_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_WNW_histcount_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_WNW_histcount_divc_setmisstoc_mulc_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_WSW_histcount_"$((common))".nc
rm -f era5_WS_setrtomiss_ifthen_WSW_histcount_divc_setmisstoc_mulc_"$((common))".nc


done


#leap_year
for ((leap=1940; leap<=2023;++leap))
do
   echo $leap
   

#M"$((leap))"
cd /home/ligs/Storage/era5_hourly/leap_year/M"$((leap))"

#"$((leap))"01
#calculate wind speed
cdo -b 32 -chname,u10,WS -sqrt -add -sqr -selname,u10 era5_hourly_10m_u_component_of_wind_"$((leap))"01.nc -sqr -selname,v10 era5_hourly_10m_v_component_of_wind_"$((leap))"01.nc era5_WS_"$((leap))"01.nc
#calculate wind direction
cdo -b 32 -chname,u10,WD -mulc,57.2957805 -atan2 -mulc,-1 era5_hourly_10m_u_component_of_wind_"$((leap))"01.nc -mulc,-1 era5_hourly_10m_v_component_of_wind_"$((leap))"01.nc era5_WD_"$((leap))"01.nc
#mask sand-moving wind speeds, ≥5.1m/s
cdo setrtomiss,0,5.0999999 era5_WS_"$((leap))"01.nc era5_WS_setrtomiss_"$((leap))"01.nc
#mask all the wind directions of corresponding sand-moving wind speeds, the sand-moving wind direction
cdo ifthen era5_WS_setrtomiss_"$((leap))"01.nc era5_WD_"$((leap))"01.nc era5_WD_ifthen_"$((leap))"01.nc
#delete intermediate results
rm -f era5_WS_"$((leap))"01.nc
rm -f era5_WD_"$((leap))"01.nc

#"$((leap))"02
#calculate wind speed
cdo -b 32 -chname,u10,WS -sqrt -add -sqr -selname,u10 era5_hourly_10m_u_component_of_wind_"$((leap))"02.nc -sqr -selname,v10 era5_hourly_10m_v_component_of_wind_"$((leap))"02.nc era5_WS_"$((leap))"02.nc
#calculate wind direction
cdo -b 32 -chname,u10,WD -mulc,57.2957805 -atan2 -mulc,-1 era5_hourly_10m_u_component_of_wind_"$((leap))"02.nc -mulc,-1 era5_hourly_10m_v_component_of_wind_"$((leap))"02.nc era5_WD_"$((leap))"02.nc
#mask sand-moving wind speeds, ≥5.1m/s
cdo setrtomiss,0,5.0999999 era5_WS_"$((leap))"02.nc era5_WS_setrtomiss_"$((leap))"02.nc
#mask all the wind directions of corresponding sand-moving wind speeds, the sand-moving wind direction
cdo ifthen era5_WS_setrtomiss_"$((leap))"02.nc era5_WD_"$((leap))"02.nc era5_WD_ifthen_"$((leap))"02.nc
#delete intermediate results
rm -f era5_WS_"$((leap))"02.nc
rm -f era5_WD_"$((leap))"02.nc

#"$((leap))"03
#calculate wind speed
cdo -b 32 -chname,u10,WS -sqrt -add -sqr -selname,u10 era5_hourly_10m_u_component_of_wind_"$((leap))"03.nc -sqr -selname,v10 era5_hourly_10m_v_component_of_wind_"$((leap))"03.nc era5_WS_"$((leap))"03.nc
#calculate wind direction
cdo -b 32 -chname,u10,WD -mulc,57.2957805 -atan2 -mulc,-1 era5_hourly_10m_u_component_of_wind_"$((leap))"03.nc -mulc,-1 era5_hourly_10m_v_component_of_wind_"$((leap))"03.nc era5_WD_"$((leap))"03.nc
#mask sand-moving wind speeds, ≥5.1m/s
cdo setrtomiss,0,5.0999999 era5_WS_"$((leap))"03.nc era5_WS_setrtomiss_"$((leap))"03.nc
#mask all the wind directions of corresponding sand-moving wind speeds, the sand-moving wind direction
cdo ifthen era5_WS_setrtomiss_"$((leap))"03.nc era5_WD_"$((leap))"03.nc era5_WD_ifthen_"$((leap))"03.nc
#delete intermediate results
rm -f era5_WS_"$((leap))"03.nc
rm -f era5_WD_"$((leap))"03.nc

#"$((leap))"04
#calculate wind speed
cdo -b 32 -chname,u10,WS -sqrt -add -sqr -selname,u10 era5_hourly_10m_u_component_of_wind_"$((leap))"04.nc -sqr -selname,v10 era5_hourly_10m_v_component_of_wind_"$((leap))"04.nc era5_WS_"$((leap))"04.nc
#calculate wind direction
cdo -b 32 -chname,u10,WD -mulc,57.2957805 -atan2 -mulc,-1 era5_hourly_10m_u_component_of_wind_"$((leap))"04.nc -mulc,-1 era5_hourly_10m_v_component_of_wind_"$((leap))"04.nc era5_WD_"$((leap))"04.nc
#mask sand-moving wind speeds, ≥5.1m/s
cdo setrtomiss,0,5.0999999 era5_WS_"$((leap))"04.nc era5_WS_setrtomiss_"$((leap))"04.nc
#mask all the wind directions of corresponding sand-moving wind speeds, the sand-moving wind direction
cdo ifthen era5_WS_setrtomiss_"$((leap))"04.nc era5_WD_"$((leap))"04.nc era5_WD_ifthen_"$((leap))"04.nc
#delete intermediate results
rm -f era5_WS_"$((leap))"04.nc
rm -f era5_WD_"$((leap))"04.nc

#"$((leap))"05
#calculate wind speed
cdo -b 32 -chname,u10,WS -sqrt -add -sqr -selname,u10 era5_hourly_10m_u_component_of_wind_"$((leap))"05.nc -sqr -selname,v10 era5_hourly_10m_v_component_of_wind_"$((leap))"05.nc era5_WS_"$((leap))"05.nc
#calculate wind direction
cdo -b 32 -chname,u10,WD -mulc,57.2957805 -atan2 -mulc,-1 era5_hourly_10m_u_component_of_wind_"$((leap))"05.nc -mulc,-1 era5_hourly_10m_v_component_of_wind_"$((leap))"05.nc era5_WD_"$((leap))"05.nc

cdo setrtomiss,0,5.0999999 era5_WS_"$((leap))"05.nc era5_WS_setrtomiss_"$((leap))"05.nc
#mask all the wind directions of corresponding sand-moving wind speeds, the sand-moving wind direction
cdo ifthen era5_WS_setrtomiss_"$((leap))"05.nc era5_WD_"$((leap))"05.nc era5_WD_ifthen_"$((leap))"05.nc
#delete intermediate results
rm -f era5_WS_"$((leap))"05.nc
rm -f era5_WD_"$((leap))"05.nc

#"$((leap))"06
#calculate wind speed
cdo -b 32 -chname,u10,WS -sqrt -add -sqr -selname,u10 era5_hourly_10m_u_component_of_wind_"$((leap))"06.nc -sqr -selname,v10 era5_hourly_10m_v_component_of_wind_"$((leap))"06.nc era5_WS_"$((leap))"06.nc
#calculate wind direction
cdo -b 32 -chname,u10,WD -mulc,57.2957805 -atan2 -mulc,-1 era5_hourly_10m_u_component_of_wind_"$((leap))"06.nc -mulc,-1 era5_hourly_10m_v_component_of_wind_"$((leap))"06.nc era5_WD_"$((leap))"06.nc
#mask sand-moving wind speeds, ≥5.1m/s
cdo setrtomiss,0,5.0999999 era5_WS_"$((leap))"06.nc era5_WS_setrtomiss_"$((leap))"06.nc
#mask all the wind directions of corresponding sand-moving wind speeds, the sand-moving wind direction
cdo ifthen era5_WS_setrtomiss_"$((leap))"06.nc era5_WD_"$((leap))"06.nc era5_WD_ifthen_"$((leap))"06.nc
#delete intermediate results
rm -f era5_WS_"$((leap))"06.nc
rm -f era5_WD_"$((leap))"06.nc

#"$((leap))"07
#calculate wind speed
cdo -b 32 -chname,u10,WS -sqrt -add -sqr -selname,u10 era5_hourly_10m_u_component_of_wind_"$((leap))"07.nc -sqr -selname,v10 era5_hourly_10m_v_component_of_wind_"$((leap))"07.nc era5_WS_"$((leap))"07.nc
#calculate wind direction
cdo -b 32 -chname,u10,WD -mulc,57.2957805 -atan2 -mulc,-1 era5_hourly_10m_u_component_of_wind_"$((leap))"07.nc -mulc,-1 era5_hourly_10m_v_component_of_wind_"$((leap))"07.nc era5_WD_"$((leap))"07.nc
#mask sand-moving wind speeds, ≥5.1m/s
cdo setrtomiss,0,5.0999999 era5_WS_"$((leap))"07.nc era5_WS_setrtomiss_"$((leap))"07.nc
#mask all the wind directions of corresponding sand-moving wind speeds, the sand-moving wind direction
cdo ifthen era5_WS_setrtomiss_"$((leap))"07.nc era5_WD_"$((leap))"07.nc era5_WD_ifthen_"$((leap))"07.nc
#delete intermediate results
rm -f era5_WS_"$((leap))"07.nc
rm -f era5_WD_"$((leap))"07.nc

#"$((leap))"08
#calculate wind speed
cdo -b 32 -chname,u10,WS -sqrt -add -sqr -selname,u10 era5_hourly_10m_u_component_of_wind_"$((leap))"08.nc -sqr -selname,v10 era5_hourly_10m_v_component_of_wind_"$((leap))"08.nc era5_WS_"$((leap))"08.nc
#calculate wind direction
cdo -b 32 -chname,u10,WD -mulc,57.2957805 -atan2 -mulc,-1 era5_hourly_10m_u_component_of_wind_"$((leap))"08.nc -mulc,-1 era5_hourly_10m_v_component_of_wind_"$((leap))"08.nc era5_WD_"$((leap))"08.nc
#mask sand-moving wind speeds, ≥5.1m/s
cdo setrtomiss,0,5.0999999 era5_WS_"$((leap))"08.nc era5_WS_setrtomiss_"$((leap))"08.nc
#mask all the wind directions of corresponding sand-moving wind speeds, the sand-moving wind direction
cdo ifthen era5_WS_setrtomiss_"$((leap))"08.nc era5_WD_"$((leap))"08.nc era5_WD_ifthen_"$((leap))"08.nc
#delete intermediate results
rm -f era5_WS_"$((leap))"08.nc
rm -f era5_WD_"$((leap))"08.nc

#"$((leap))"09
#calculate wind speed
cdo -b 32 -chname,u10,WS -sqrt -add -sqr -selname,u10 era5_hourly_10m_u_component_of_wind_"$((leap))"09.nc -sqr -selname,v10 era5_hourly_10m_v_component_of_wind_"$((leap))"09.nc era5_WS_"$((leap))"09.nc
#calculate wind direction
cdo -b 32 -chname,u10,WD -mulc,57.2957805 -atan2 -mulc,-1 era5_hourly_10m_u_component_of_wind_"$((leap))"09.nc -mulc,-1 era5_hourly_10m_v_component_of_wind_"$((leap))"09.nc era5_WD_"$((leap))"09.nc
#mask sand-moving wind speeds, ≥5.1m/s
cdo setrtomiss,0,5.0999999 era5_WS_"$((leap))"09.nc era5_WS_setrtomiss_"$((leap))"09.nc
#mask all the wind directions of corresponding sand-moving wind speeds, the sand-moving wind direction
cdo ifthen era5_WS_setrtomiss_"$((leap))"09.nc era5_WD_"$((leap))"09.nc era5_WD_ifthen_"$((leap))"09.nc
#delete intermediate results
rm -f era5_WS_"$((leap))"09.nc
rm -f era5_WD_"$((leap))"09.nc

#"$((leap))"10
#calculate wind speed
cdo -b 32 -chname,u10,WS -sqrt -add -sqr -selname,u10 era5_hourly_10m_u_component_of_wind_"$((leap))"10.nc -sqr -selname,v10 era5_hourly_10m_v_component_of_wind_"$((leap))"10.nc era5_WS_"$((leap))"10.nc
#calculate wind direction
cdo -b 32 -chname,u10,WD -mulc,57.2957805 -atan2 -mulc,-1 era5_hourly_10m_u_component_of_wind_"$((leap))"10.nc -mulc,-1 era5_hourly_10m_v_component_of_wind_"$((leap))"10.nc era5_WD_"$((leap))"10.nc
#mask sand-moving wind speeds, ≥5.1m/s
cdo setrtomiss,0,5.0999999 era5_WS_"$((leap))"10.nc era5_WS_setrtomiss_"$((leap))"10.nc
#mask all the wind directions of corresponding sand-moving wind speeds, the sand-moving wind direction
cdo ifthen era5_WS_setrtomiss_"$((leap))"10.nc era5_WD_"$((leap))"10.nc era5_WD_ifthen_"$((leap))"10.nc
#delete intermediate results
rm -f era5_WS_"$((leap))"10.nc
rm -f era5_WD_"$((leap))"10.nc

#"$((leap))"11
#calculate wind speed
cdo -b 32 -chname,u10,WS -sqrt -add -sqr -selname,u10 era5_hourly_10m_u_component_of_wind_"$((leap))"11.nc -sqr -selname,v10 era5_hourly_10m_v_component_of_wind_"$((leap))"11.nc era5_WS_"$((leap))"11.nc
#calculate wind direction
cdo -b 32 -chname,u10,WD -mulc,57.2957805 -atan2 -mulc,-1 era5_hourly_10m_u_component_of_wind_"$((leap))"11.nc -mulc,-1 era5_hourly_10m_v_component_of_wind_"$((leap))"11.nc era5_WD_"$((leap))"11.nc
#mask sand-moving wind speeds, ≥5.1m/s
cdo setrtomiss,0,5.0999999 era5_WS_"$((leap))"11.nc era5_WS_setrtomiss_"$((leap))"11.nc
#mask all the wind directions of corresponding sand-moving wind speeds, the sand-moving wind direction
cdo ifthen era5_WS_setrtomiss_"$((leap))"11.nc era5_WD_"$((leap))"11.nc era5_WD_ifthen_"$((leap))"11.nc
#delete intermediate results
rm -f era5_WS_"$((leap))"11.nc
rm -f era5_WD_"$((leap))"11.nc

#"$((leap))"12
#calculate wind speed
cdo -b 32 -chname,u10,WS -sqrt -add -sqr -selname,u10 era5_hourly_10m_u_component_of_wind_"$((leap))"12.nc -sqr -selname,v10 era5_hourly_10m_v_component_of_wind_"$((leap))"12.nc era5_WS_"$((leap))"12.nc
#calculate wind direction
cdo -b 32 -chname,u10,WD -mulc,57.2957805 -atan2 -mulc,-1 era5_hourly_10m_u_component_of_wind_"$((leap))"12.nc -mulc,-1 era5_hourly_10m_v_component_of_wind_"$((leap))"12.nc era5_WD_"$((leap))"12.nc
#mask sand-moving wind speeds, ≥5.1m/s
cdo setrtomiss,0,5.0999999 era5_WS_"$((leap))"12.nc era5_WS_setrtomiss_"$((leap))"12.nc
#mask all the wind directions of corresponding sand-moving wind speeds, the sand-moving wind direction
cdo ifthen era5_WS_setrtomiss_"$((leap))"12.nc era5_WD_"$((leap))"12.nc era5_WD_ifthen_"$((leap))"12.nc
#delete intermediate results
rm -f era5_WS_"$((leap))"12.nc
rm -f era5_WD_"$((leap))"12.nc

#concatenate the monthly sand-moving wind speeds
cdo cat era5_WS_setrtomiss_"$((leap))"01.nc era5_WS_setrtomiss_"$((leap))"02.nc era5_WS_setrtomiss_"$((leap))"03.nc era5_WS_setrtomiss_"$((leap))"04.nc era5_WS_setrtomiss_"$((leap))"05.nc era5_WS_setrtomiss_"$((leap))"06.nc era5_WS_setrtomiss_"$((leap))"07.nc era5_WS_setrtomiss_"$((leap))"08.nc era5_WS_setrtomiss_"$((leap))"09.nc era5_WS_setrtomiss_"$((leap))"10.nc era5_WS_setrtomiss_"$((leap))"11.nc era5_WS_setrtomiss_"$((leap))"12.nc era5_WS_setrtomiss_"$((leap))".nc
#delete intermediate results
rm -f era5_WS_setrtomiss_"$((leap))"01.nc
rm -f era5_WS_setrtomiss_"$((leap))"02.nc
rm -f era5_WS_setrtomiss_"$((leap))"03.nc
rm -f era5_WS_setrtomiss_"$((leap))"04.nc
rm -f era5_WS_setrtomiss_"$((leap))"05.nc
rm -f era5_WS_setrtomiss_"$((leap))"06.nc
rm -f era5_WS_setrtomiss_"$((leap))"07.nc
rm -f era5_WS_setrtomiss_"$((leap))"08.nc
rm -f era5_WS_setrtomiss_"$((leap))"09.nc
rm -f era5_WS_setrtomiss_"$((leap))"10.nc
rm -f era5_WS_setrtomiss_"$((leap))"11.nc
rm -f era5_WS_setrtomiss_"$((leap))"12.nc

#concatenate the monthly sand-moving wind directions
cdo cat era5_WD_ifthen_"$((leap))"01.nc era5_WD_ifthen_"$((leap))"02.nc era5_WD_ifthen_"$((leap))"03.nc era5_WD_ifthen_"$((leap))"04.nc era5_WD_ifthen_"$((leap))"05.nc era5_WD_ifthen_"$((leap))"06.nc era5_WD_ifthen_"$((leap))"07.nc era5_WD_ifthen_"$((leap))"08.nc era5_WD_ifthen_"$((leap))"09.nc era5_WD_ifthen_"$((leap))"10.nc era5_WD_ifthen_"$((leap))"11.nc era5_WD_ifthen_"$((leap))"12.nc era5_WD_ifthen_"$((leap))".nc
#delete intermediate results
rm -f era5_WD_ifthen_"$((leap))"01.nc
rm -f era5_WD_ifthen_"$((leap))"02.nc
rm -f era5_WD_ifthen_"$((leap))"03.nc
rm -f era5_WD_ifthen_"$((leap))"04.nc
rm -f era5_WD_ifthen_"$((leap))"05.nc
rm -f era5_WD_ifthen_"$((leap))"06.nc
rm -f era5_WD_ifthen_"$((leap))"07.nc
rm -f era5_WD_ifthen_"$((leap))"08.nc
rm -f era5_WD_ifthen_"$((leap))"09.nc
rm -f era5_WD_ifthen_"$((leap))"10.nc
rm -f era5_WD_ifthen_"$((leap))"11.nc
rm -f era5_WD_ifthen_"$((leap))"12.nc

#distinguish the azimuth of sand-moving wind directions
#N, -11.25≤N＜11.25
cdo setvrange,-11.25,11.2499999 era5_WD_ifthen_"$((leap))".nc era5_WD_ifthen_setvrange_N_"$((leap))".nc
#mask sand-moving wind speeds in the N azimuth
cdo ifthen era5_WD_ifthen_setvrange_N_"$((leap))".nc era5_WS_setrtomiss_"$((leap))".nc era5_WS_setrtomiss_ifthen_N_"$((leap))".nc
#2 m/s bins of sand-moving wind speeds in the N azimuth, 5.1m/s≤WS＜7m/s, 7m/s≤WS＜9m/s, 9m/s≤WS＜11m/s, 11m/s≤WS＜13m/s, 13m/s≤WS＜15m/s, 15m/s≤WS＜17m/s, 17m/s≤WS＜19m/s, 19m/s≤WS＜21m/s, 21m/s≤WS＜23m/s, 23m/s≤WS＜25m/s, 25m/s≤WS＜27m/s, 27m/s≤WS＜29m/s, 29m/s≤WS＜31m/s, 31m/s≤WS<33m/s, 33m/s≤WS
cdo histcount,5.1,6.9999999,8.9999999,10.9999999,12.9999999,14.9999999,16.9999999,18.9999999,20.9999999,22.9999999,24.9999999,26.9999999,28.9999999,30.9999999,32.9999999,inf era5_WS_setrtomiss_ifthen_N_"$((leap))".nc era5_WS_setrtomiss_ifthen_N_histcount_"$((leap))".nc
#the sand-moving wind frequency in the N azimuth, 8784 is the total hours for the “$leap_year”
cdo divc,8784 era5_WS_setrtomiss_ifthen_N_histcount_"$((leap))".nc era5_WS_setrtomiss_ifthen_N_histcount_divc_"$((leap))".nc
#setmisstoc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_N_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_N_histcount_divc_setmisstoc_"$((leap))".nc
#mulc
cdo mulc,100 era5_WS_setrtomiss_ifthen_N_histcount_divc_setmisstoc_"$((leap))".nc era5_WS_setrtomiss_ifthen_N_histcount_divc_setmisstoc_mulc_"$((leap))".nc
#weighting factor U^2(U-Ut), U is the mean wind speed，and they are 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 33m/s, respectively; and m/s needs to be conversed into knot. Notably, the value of U^2(U-Ut) is not divided by 100, as its subsquent multiplication represents a demensionless sand-moving wind frequency, rather than a percentage-based sand-moving wind frequency.
#level,5.1 U^2(U-Ut)=(6*3600/1852)*(6*3600/1852)*(6*3600/1852-5.1*3600/1852)=237.974030
#level,7 U^2(U-Ut)=(8*3600/1852)*(8*3600/1852)*(8*3600/1852-5.1*3600/1852)=1363.209259
#level,9 U^2(U-Ut)=(10*3600/1852)*(10*3600/1852)*(10*3600/1852-5.1*3600/1852)=3598.989961
#level,11 U^2(U-Ut)=(12*3600/1852)*(12*3600/1852)*(12*3600/1852-5.1*3600/1852)=7297.870257
#level,13 U^2(U-Ut)=(14*3600/1852)*(14*3600/1852)*(14*3600/1852-5.1*3600/1852)=12812.404263
#level,15 U^2(U-Ut)=(16*3600/1852)*(16*3600/1852)*(16*3600/1852-5.1*3600/1852)=20495.146099
#level,17 U^2(U-Ut)=(18*3600/1852)*(18*3600/1852)*(18*3600/1852-5.1*3600/1852)=30698.649884
#level,19 U^2(U-Ut)=(20*3600/1852)*(20*3600/1852)*(20*3600/1852-5.1*3600/1852)=43775.469735
#level,21 U^2(U-Ut)=(22*3600/1852)*(22*3600/1852)*(22*3600/1852-5.1*3600/1852)=60078.159773
#level,23 U^2(U-Ut)=(24*3600/1852)*(24*3600/1852)*(24*3600/1852-5.1*3600/1852)=79959.274115
#level,25 U^2(U-Ut)=(26*3600/1852)*(26*3600/1852)*(26*3600/1852-5.1*3600/1852)=103771.366881
#level,27 U^2(U-Ut)=(28*3600/1852)*(28*3600/1852)*(28*3600/1852-5.1*3600/1852)=131866.992188
#level,29 U^2(U-Ut)=(30*3600/1852)*(30*3600/1852)*(30*3600/1852-5.1*3600/1852)=164598.704156
#level,31 U^2(U-Ut)=(32*3600/1852)*(32*3600/1852)*(32*3600/1852-5.1*3600/1852)=202319.056903
#level,33 U^2(U-Ut)=(33*3600/1852)*(33*3600/1852)*(33*3600/1852-5.1*3600/1852)=223160.146731
#1 knot = 1 nautical mile/hour =1852m/hour=1852/3600m/s=0.5144m/s
#sellevel5.1
cdo -mulc,237.974030 -sellevel,5.1 era5_WS_setrtomiss_ifthen_N_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_N_histcount_divc_sellevel5.1_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_N_histcount_divc_sellevel5.1_"$((leap))".nc era5_DP_N_range5.1_7_"$((leap))".nc
#sellevel7
cdo -mulc,1363.209259 -sellevel,7 era5_WS_setrtomiss_ifthen_N_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_N_histcount_divc_sellevel7_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_N_histcount_divc_sellevel7_"$((leap))".nc era5_DP_N_range7_9_"$((leap))".nc
#sellevel9
cdo -mulc,3598.989961 -sellevel,9 era5_WS_setrtomiss_ifthen_N_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_N_histcount_divc_sellevel9_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_N_histcount_divc_sellevel9_"$((leap))".nc era5_DP_N_range9_11_"$((leap))".nc
#sellevel11
cdo -mulc,7297.870257 -sellevel,11 era5_WS_setrtomiss_ifthen_N_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_N_histcount_divc_sellevel11_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_N_histcount_divc_sellevel11_"$((leap))".nc era5_DP_N_range11_13_"$((leap))".nc
#sellevel13
cdo -mulc,12812.404263 -sellevel,13 era5_WS_setrtomiss_ifthen_N_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_N_histcount_divc_sellevel13_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_N_histcount_divc_sellevel13_"$((leap))".nc era5_DP_N_range13_15_"$((leap))".nc
#sellevel15
cdo -mulc,20495.146099 -sellevel,15 era5_WS_setrtomiss_ifthen_N_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_N_histcount_divc_sellevel15_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_N_histcount_divc_sellevel15_"$((leap))".nc era5_DP_N_range15_17_"$((leap))".nc
#sellevel17
cdo -mulc,30698.649884 -sellevel,17 era5_WS_setrtomiss_ifthen_N_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_N_histcount_divc_sellevel17_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_N_histcount_divc_sellevel17_"$((leap))".nc era5_DP_N_range17_19_"$((leap))".nc
#sellevel19
cdo -mulc,43775.469735 -sellevel,19 era5_WS_setrtomiss_ifthen_N_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_N_histcount_divc_sellevel19_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_N_histcount_divc_sellevel19_"$((leap))".nc era5_DP_N_range19_21_"$((leap))".nc
#sellevel21
cdo -mulc,60078.159773 -sellevel,21 era5_WS_setrtomiss_ifthen_N_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_N_histcount_divc_sellevel21_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_N_histcount_divc_sellevel21_"$((leap))".nc era5_DP_N_range21_23_"$((leap))".nc
#sellevel23
cdo -mulc,79959.274115 -sellevel,23 era5_WS_setrtomiss_ifthen_N_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_N_histcount_divc_sellevel23_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_N_histcount_divc_sellevel23_"$((leap))".nc era5_DP_N_range23_25_"$((leap))".nc
#sellevel25
cdo -mulc,103771.366881 -sellevel,25 era5_WS_setrtomiss_ifthen_N_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_N_histcount_divc_sellevel25_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_N_histcount_divc_sellevel25_"$((leap))".nc era5_DP_N_range25_27_"$((leap))".nc
#sellevel27
cdo -mulc,131866.992188 -sellevel,27 era5_WS_setrtomiss_ifthen_N_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_N_histcount_divc_sellevel27_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_N_histcount_divc_sellevel27_"$((leap))".nc era5_DP_N_range27_29_"$((leap))".nc
#sellevel29
cdo -mulc,164598.704156 -sellevel,29 era5_WS_setrtomiss_ifthen_N_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_N_histcount_divc_sellevel29_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_N_histcount_divc_sellevel29_"$((leap))".nc era5_DP_N_range29_31_"$((leap))".nc
#sellevel31
cdo -mulc,202319.056903 -sellevel,31 era5_WS_setrtomiss_ifthen_N_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_N_histcount_divc_sellevel31_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_N_histcount_divc_sellevel31_"$((leap))".nc era5_DP_N_range31_33_"$((leap))".nc
#sellevel33
cdo -mulc,223160.146731 -sellevel,33 era5_WS_setrtomiss_ifthen_N_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_N_histcount_divc_sellevel33_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_N_histcount_divc_sellevel33_"$((leap))".nc era5_DP_N_range33_inf_"$((leap))".nc
#enssum
cdo enssum era5_DP_N_range5.1_7_"$((leap))".nc era5_DP_N_range7_9_"$((leap))".nc era5_DP_N_range9_11_"$((leap))".nc era5_DP_N_range11_13_"$((leap))".nc era5_DP_N_range13_15_"$((leap))".nc era5_DP_N_range15_17_"$((leap))".nc era5_DP_N_range17_19_"$((leap))".nc era5_DP_N_range19_21_"$((leap))".nc era5_DP_N_range21_23_"$((leap))".nc era5_DP_N_range23_25_"$((leap))".nc era5_DP_N_range25_27_"$((leap))".nc era5_DP_N_range27_29_"$((leap))".nc era5_DP_N_range29_31_"$((leap))".nc era5_DP_N_range31_33_"$((leap))".nc era5_DP_N_range33_inf_"$((leap))".nc era5_DP_N_range_enssum_"$((leap))".nc
#change variable name into DP_N, in order to be used in the resultanting
cdo chname,WS,DP_N era5_DP_N_range_enssum_"$((leap))".nc era5_DP_N_range_enssum_chname_"$((leap))".nc
#delete intermediate results
rm -f era5_WD_ifthen_setvrange_N_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_N_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_N_histcount_divc_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_N_histcount_divc_setmisstoc_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_N_histcount_divc_sellevel5.1_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_N_histcount_divc_sellevel7_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_N_histcount_divc_sellevel9_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_N_histcount_divc_sellevel11_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_N_histcount_divc_sellevel13_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_N_histcount_divc_sellevel15_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_N_histcount_divc_sellevel17_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_N_histcount_divc_sellevel19_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_N_histcount_divc_sellevel21_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_N_histcount_divc_sellevel23_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_N_histcount_divc_sellevel25_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_N_histcount_divc_sellevel27_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_N_histcount_divc_sellevel29_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_N_histcount_divc_sellevel31_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_N_histcount_divc_sellevel33_"$((leap))".nc
rm -f era5_DP_N_range5.1_7_"$((leap))".nc
rm -f era5_DP_N_range7_9_"$((leap))".nc
rm -f era5_DP_N_range9_11_"$((leap))".nc
rm -f era5_DP_N_range11_13_"$((leap))".nc
rm -f era5_DP_N_range13_15_"$((leap))".nc
rm -f era5_DP_N_range15_17_"$((leap))".nc
rm -f era5_DP_N_range17_19_"$((leap))".nc
rm -f era5_DP_N_range19_21_"$((leap))".nc
rm -f era5_DP_N_range21_23_"$((leap))".nc
rm -f era5_DP_N_range23_25_"$((leap))".nc
rm -f era5_DP_N_range25_27_"$((leap))".nc
rm -f era5_DP_N_range27_29_"$((leap))".nc
rm -f era5_DP_N_range29_31_"$((leap))".nc
rm -f era5_DP_N_range31_33_"$((leap))".nc
rm -f era5_DP_N_range33_inf_"$((leap))".nc

#NNE, 11.25≤NNE＜33.75
cdo setvrange,11.25,33.7499999 era5_WD_ifthen_"$((leap))".nc era5_WD_ifthen_setvrange_NNE_"$((leap))".nc
#mask sand-moving wind speeds in the NNE azimuth
cdo ifthen era5_WD_ifthen_setvrange_NNE_"$((leap))".nc era5_WS_setrtomiss_"$((leap))".nc era5_WS_setrtomiss_ifthen_NNE_"$((leap))".nc
#2 m/s bins of sand-moving wind speeds in the NNE azimuth, 5.1m/s≤WS＜7m/s, 7m/s≤WS＜9m/s, 9m/s≤WS＜11m/s, 11m/s≤WS＜13m/s, 13m/s≤WS＜15m/s, 15m/s≤WS＜17m/s, 17m/s≤WS＜19m/s, 19m/s≤WS＜21m/s, 21m/s≤WS＜23m/s, 23m/s≤WS＜25m/s, 25m/s≤WS＜27m/s, 27m/s≤WS＜29m/s, 29m/s≤WS＜31m/s, 31m/s≤WS<33m/s, 33m/s≤WS
cdo histcount,5.1,6.9999999,8.9999999,10.9999999,12.9999999,14.9999999,16.9999999,18.9999999,20.9999999,22.9999999,24.9999999,26.9999999,28.9999999,30.9999999,32.9999999,inf era5_WS_setrtomiss_ifthen_NNE_"$((leap))".nc era5_WS_setrtomiss_ifthen_NNE_histcount_"$((leap))".nc
#the sand-moving wind frequency in the NNE azimuth, 8784 is the total hours for the “$leap_year”
cdo divc,8784 era5_WS_setrtomiss_ifthen_NNE_histcount_"$((leap))".nc era5_WS_setrtomiss_ifthen_NNE_histcount_divc_"$((leap))".nc
#setmisstoc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NNE_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_NNE_histcount_divc_setmisstoc_"$((leap))".nc
#mulc
cdo mulc,100 era5_WS_setrtomiss_ifthen_NNE_histcount_divc_setmisstoc_"$((leap))".nc era5_WS_setrtomiss_ifthen_NNE_histcount_divc_setmisstoc_mulc_"$((leap))".nc
#weighting factor U^2(U-Ut), U is the mean wind speed，and they are 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 33m/s, respectively; and m/s needs to be conversed into knot. Notably, the value of U^2(U-Ut) is not divided by 100, as its subsquent multiplication represents a demensionless sand-moving wind frequency, rather than a percentage-based sand-moving wind frequency.
#level,5.1 U^2(U-Ut)=(6*3600/1852)*(6*3600/1852)*(6*3600/1852-5.1*3600/1852)=237.974030
#level,7 U^2(U-Ut)=(8*3600/1852)*(8*3600/1852)*(8*3600/1852-5.1*3600/1852)=1363.209259
#level,9 U^2(U-Ut)=(10*3600/1852)*(10*3600/1852)*(10*3600/1852-5.1*3600/1852)=3598.989961
#level,11 U^2(U-Ut)=(12*3600/1852)*(12*3600/1852)*(12*3600/1852-5.1*3600/1852)=7297.870257
#level,13 U^2(U-Ut)=(14*3600/1852)*(14*3600/1852)*(14*3600/1852-5.1*3600/1852)=12812.404263
#level,15 U^2(U-Ut)=(16*3600/1852)*(16*3600/1852)*(16*3600/1852-5.1*3600/1852)=20495.146099
#level,17 U^2(U-Ut)=(18*3600/1852)*(18*3600/1852)*(18*3600/1852-5.1*3600/1852)=30698.649884
#level,19 U^2(U-Ut)=(20*3600/1852)*(20*3600/1852)*(20*3600/1852-5.1*3600/1852)=43775.469735
#level,21 U^2(U-Ut)=(22*3600/1852)*(22*3600/1852)*(22*3600/1852-5.1*3600/1852)=60078.159773
#level,23 U^2(U-Ut)=(24*3600/1852)*(24*3600/1852)*(24*3600/1852-5.1*3600/1852)=79959.274115
#level,25 U^2(U-Ut)=(26*3600/1852)*(26*3600/1852)*(26*3600/1852-5.1*3600/1852)=103771.366881
#level,27 U^2(U-Ut)=(28*3600/1852)*(28*3600/1852)*(28*3600/1852-5.1*3600/1852)=131866.992188
#level,29 U^2(U-Ut)=(30*3600/1852)*(30*3600/1852)*(30*3600/1852-5.1*3600/1852)=164598.704156
#level,31 U^2(U-Ut)=(32*3600/1852)*(32*3600/1852)*(32*3600/1852-5.1*3600/1852)=202319.056903
#level,33 U^2(U-Ut)=(33*3600/1852)*(33*3600/1852)*(33*3600/1852-5.1*3600/1852)=223160.146731
#1 knot = 1 nautical mile/hour =1852m/hour=1852/3600m/s=0.5144m/s
#sellevel5.1
cdo -mulc,237.974030 -sellevel,5.1 era5_WS_setrtomiss_ifthen_NNE_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel5.1_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel5.1_"$((leap))".nc era5_DP_NNE_range5.1_7_"$((leap))".nc
#sellevel7
cdo -mulc,1363.209259 -sellevel,7 era5_WS_setrtomiss_ifthen_NNE_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel7_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel7_"$((leap))".nc era5_DP_NNE_range7_9_"$((leap))".nc
#sellevel9
cdo -mulc,3598.989961 -sellevel,9 era5_WS_setrtomiss_ifthen_NNE_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel9_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel9_"$((leap))".nc era5_DP_NNE_range9_11_"$((leap))".nc
#sellevel11
cdo -mulc,7297.870257 -sellevel,11 era5_WS_setrtomiss_ifthen_NNE_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel11_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel11_"$((leap))".nc era5_DP_NNE_range11_13_"$((leap))".nc
#sellevel13
cdo -mulc,12812.404263 -sellevel,13 era5_WS_setrtomiss_ifthen_NNE_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel13_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel13_"$((leap))".nc era5_DP_NNE_range13_15_"$((leap))".nc
#sellevel15
cdo -mulc,20495.146099 -sellevel,15 era5_WS_setrtomiss_ifthen_NNE_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel15_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel15_"$((leap))".nc era5_DP_NNE_range15_17_"$((leap))".nc
#sellevel17
cdo -mulc,30698.649884 -sellevel,17 era5_WS_setrtomiss_ifthen_NNE_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel17_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel17_"$((leap))".nc era5_DP_NNE_range17_19_"$((leap))".nc
#sellevel19
cdo -mulc,43775.469735 -sellevel,19 era5_WS_setrtomiss_ifthen_NNE_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel19_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel19_"$((leap))".nc era5_DP_NNE_range19_21_"$((leap))".nc
#sellevel21
cdo -mulc,60078.159773 -sellevel,21 era5_WS_setrtomiss_ifthen_NNE_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel21_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel21_"$((leap))".nc era5_DP_NNE_range21_23_"$((leap))".nc
#sellevel23
cdo -mulc,79959.274115 -sellevel,23 era5_WS_setrtomiss_ifthen_NNE_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel23_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel23_"$((leap))".nc era5_DP_NNE_range23_25_"$((leap))".nc
#sellevel25
cdo -mulc,103771.366881 -sellevel,25 era5_WS_setrtomiss_ifthen_NNE_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel25_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel25_"$((leap))".nc era5_DP_NNE_range25_27_"$((leap))".nc
#sellevel27
cdo -mulc,131866.992188 -sellevel,27 era5_WS_setrtomiss_ifthen_NNE_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel27_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel27_"$((leap))".nc era5_DP_NNE_range27_29_"$((leap))".nc
#sellevel29
cdo -mulc,164598.704156 -sellevel,29 era5_WS_setrtomiss_ifthen_NNE_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel29_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel29_"$((leap))".nc era5_DP_NNE_range29_31_"$((leap))".nc
#sellevel31
cdo -mulc,202319.056903 -sellevel,31 era5_WS_setrtomiss_ifthen_NNE_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel31_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel31_"$((leap))".nc era5_DP_NNE_range31_33_"$((leap))".nc
#sellevel33
cdo -mulc,223160.146731 -sellevel,33 era5_WS_setrtomiss_ifthen_NNE_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel33_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel33_"$((leap))".nc era5_DP_NNE_range33_inf_"$((leap))".nc
#enssum
cdo enssum era5_DP_NNE_range5.1_7_"$((leap))".nc era5_DP_NNE_range7_9_"$((leap))".nc era5_DP_NNE_range9_11_"$((leap))".nc era5_DP_NNE_range11_13_"$((leap))".nc era5_DP_NNE_range13_15_"$((leap))".nc era5_DP_NNE_range15_17_"$((leap))".nc era5_DP_NNE_range17_19_"$((leap))".nc era5_DP_NNE_range19_21_"$((leap))".nc era5_DP_NNE_range21_23_"$((leap))".nc era5_DP_NNE_range23_25_"$((leap))".nc era5_DP_NNE_range25_27_"$((leap))".nc era5_DP_NNE_range27_29_"$((leap))".nc era5_DP_NNE_range29_31_"$((leap))".nc era5_DP_NNE_range31_33_"$((leap))".nc era5_DP_NNE_range33_inf_"$((leap))".nc era5_DP_NNE_range_enssum_"$((leap))".nc
#change variable name into DP_NNE, in order to be used in the resultanting
cdo chname,WS,DP_NNE era5_DP_NNE_range_enssum_"$((leap))".nc era5_DP_NNE_range_enssum_chname_"$((leap))".nc
#delete intermediate results
rm -f era5_WD_ifthen_setvrange_NNE_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_NNE_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_NNE_histcount_divc_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_NNE_histcount_divc_setmisstoc_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel5.1_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel7_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel9_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel11_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel13_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel15_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel17_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel19_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel21_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel23_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel25_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel27_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel29_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel31_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel33_"$((leap))".nc
rm -f era5_DP_NNE_range5.1_7_"$((leap))".nc
rm -f era5_DP_NNE_range7_9_"$((leap))".nc
rm -f era5_DP_NNE_range9_11_"$((leap))".nc
rm -f era5_DP_NNE_range11_13_"$((leap))".nc
rm -f era5_DP_NNE_range13_15_"$((leap))".nc
rm -f era5_DP_NNE_range15_17_"$((leap))".nc
rm -f era5_DP_NNE_range17_19_"$((leap))".nc
rm -f era5_DP_NNE_range19_21_"$((leap))".nc
rm -f era5_DP_NNE_range21_23_"$((leap))".nc
rm -f era5_DP_NNE_range23_25_"$((leap))".nc
rm -f era5_DP_NNE_range25_27_"$((leap))".nc
rm -f era5_DP_NNE_range27_29_"$((leap))".nc
rm -f era5_DP_NNE_range29_31_"$((leap))".nc
rm -f era5_DP_NNE_range31_33_"$((leap))".nc
rm -f era5_DP_NNE_range33_inf_"$((leap))".nc

#NE, 33.75≤NE＜56.25
cdo setvrange,33.75,56.2499999 era5_WD_ifthen_"$((leap))".nc era5_WD_ifthen_setvrange_NE_"$((leap))".nc
#mask sand-moving wind speeds in the NE azimuth
cdo ifthen era5_WD_ifthen_setvrange_NE_"$((leap))".nc era5_WS_setrtomiss_"$((leap))".nc era5_WS_setrtomiss_ifthen_NE_"$((leap))".nc
#2 m/s bins of sand-moving wind speeds in the NE azimuth, 5.1m/s≤WS＜7m/s, 7m/s≤WS＜9m/s, 9m/s≤WS＜11m/s, 11m/s≤WS＜13m/s, 13m/s≤WS＜15m/s, 15m/s≤WS＜17m/s, 17m/s≤WS＜19m/s, 19m/s≤WS＜21m/s, 21m/s≤WS＜23m/s, 23m/s≤WS＜25m/s, 25m/s≤WS＜27m/s, 27m/s≤WS＜29m/s, 29m/s≤WS＜31m/s, 31m/s≤WS<33m/s, 33m/s≤WS
cdo histcount,5.1,6.9999999,8.9999999,10.9999999,12.9999999,14.9999999,16.9999999,18.9999999,20.9999999,22.9999999,24.9999999,26.9999999,28.9999999,30.9999999,32.9999999,inf era5_WS_setrtomiss_ifthen_NE_"$((leap))".nc era5_WS_setrtomiss_ifthen_NE_histcount_"$((leap))".nc
#the sand-moving wind frequency in the NE azimuth, 8784 is the total hours for the “$leap_year”
cdo divc,8784 era5_WS_setrtomiss_ifthen_NE_histcount_"$((leap))".nc era5_WS_setrtomiss_ifthen_NE_histcount_divc_"$((leap))".nc
#setmisstoc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NE_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_NE_histcount_divc_setmisstoc_"$((leap))".nc
#mulc
cdo mulc,100 era5_WS_setrtomiss_ifthen_NE_histcount_divc_setmisstoc_"$((leap))".nc era5_WS_setrtomiss_ifthen_NE_histcount_divc_setmisstoc_mulc_"$((leap))".nc
#weighting factor U^2(U-Ut), U is the mean wind speed，and they are 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 33m/s, respectively; and m/s needs to be conversed into knot. Notably, the value of U^2(U-Ut) is not divided by 100, as its subsquent multiplication represents a demensionless sand-moving wind frequency, rather than a percentage-based sand-moving wind frequency.
#level,5.1 U^2(U-Ut)=(6*3600/1852)*(6*3600/1852)*(6*3600/1852-5.1*3600/1852)=237.974030
#level,7 U^2(U-Ut)=(8*3600/1852)*(8*3600/1852)*(8*3600/1852-5.1*3600/1852)=1363.209259
#level,9 U^2(U-Ut)=(10*3600/1852)*(10*3600/1852)*(10*3600/1852-5.1*3600/1852)=3598.989961
#level,11 U^2(U-Ut)=(12*3600/1852)*(12*3600/1852)*(12*3600/1852-5.1*3600/1852)=7297.870257
#level,13 U^2(U-Ut)=(14*3600/1852)*(14*3600/1852)*(14*3600/1852-5.1*3600/1852)=12812.404263
#level,15 U^2(U-Ut)=(16*3600/1852)*(16*3600/1852)*(16*3600/1852-5.1*3600/1852)=20495.146099
#level,17 U^2(U-Ut)=(18*3600/1852)*(18*3600/1852)*(18*3600/1852-5.1*3600/1852)=30698.649884
#level,19 U^2(U-Ut)=(20*3600/1852)*(20*3600/1852)*(20*3600/1852-5.1*3600/1852)=43775.469735
#level,21 U^2(U-Ut)=(22*3600/1852)*(22*3600/1852)*(22*3600/1852-5.1*3600/1852)=60078.159773
#level,23 U^2(U-Ut)=(24*3600/1852)*(24*3600/1852)*(24*3600/1852-5.1*3600/1852)=79959.274115
#level,25 U^2(U-Ut)=(26*3600/1852)*(26*3600/1852)*(26*3600/1852-5.1*3600/1852)=103771.366881
#level,27 U^2(U-Ut)=(28*3600/1852)*(28*3600/1852)*(28*3600/1852-5.1*3600/1852)=131866.992188
#level,29 U^2(U-Ut)=(30*3600/1852)*(30*3600/1852)*(30*3600/1852-5.1*3600/1852)=164598.704156
#level,31 U^2(U-Ut)=(32*3600/1852)*(32*3600/1852)*(32*3600/1852-5.1*3600/1852)=202319.056903
#level,33 U^2(U-Ut)=(33*3600/1852)*(33*3600/1852)*(33*3600/1852-5.1*3600/1852)=223160.146731
#1 knot = 1 nautical mile/hour =1852m/hour=1852/3600m/s=0.5144m/s
#sellevel5.1
cdo -mulc,237.974030 -sellevel,5.1 era5_WS_setrtomiss_ifthen_NE_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel5.1_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel5.1_"$((leap))".nc era5_DP_NE_range5.1_7_"$((leap))".nc
#sellevel7
cdo -mulc,1363.209259 -sellevel,7 era5_WS_setrtomiss_ifthen_NE_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel7_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel7_"$((leap))".nc era5_DP_NE_range7_9_"$((leap))".nc
#sellevel9
cdo -mulc,3598.989961 -sellevel,9 era5_WS_setrtomiss_ifthen_NE_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel9_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel9_"$((leap))".nc era5_DP_NE_range9_11_"$((leap))".nc
#sellevel11
cdo -mulc,7297.870257 -sellevel,11 era5_WS_setrtomiss_ifthen_NE_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel11_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel11_"$((leap))".nc era5_DP_NE_range11_13_"$((leap))".nc
#sellevel13
cdo -mulc,12812.404263 -sellevel,13 era5_WS_setrtomiss_ifthen_NE_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel13_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel13_"$((leap))".nc era5_DP_NE_range13_15_"$((leap))".nc
#sellevel15
cdo -mulc,20495.146099 -sellevel,15 era5_WS_setrtomiss_ifthen_NE_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel15_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel15_"$((leap))".nc era5_DP_NE_range15_17_"$((leap))".nc
#sellevel17
cdo -mulc,30698.649884 -sellevel,17 era5_WS_setrtomiss_ifthen_NE_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel17_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel17_"$((leap))".nc era5_DP_NE_range17_19_"$((leap))".nc
#sellevel19
cdo -mulc,43775.469735 -sellevel,19 era5_WS_setrtomiss_ifthen_NE_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel19_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel19_"$((leap))".nc era5_DP_NE_range19_21_"$((leap))".nc
#sellevel21
cdo -mulc,60078.159773 -sellevel,21 era5_WS_setrtomiss_ifthen_NE_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel21_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel21_"$((leap))".nc era5_DP_NE_range21_23_"$((leap))".nc
#sellevel23
cdo -mulc,79959.274115 -sellevel,23 era5_WS_setrtomiss_ifthen_NE_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel23_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel23_"$((leap))".nc era5_DP_NE_range23_25_"$((leap))".nc
#sellevel25
cdo -mulc,103771.366881 -sellevel,25 era5_WS_setrtomiss_ifthen_NE_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel25_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel25_"$((leap))".nc era5_DP_NE_range25_27_"$((leap))".nc
#sellevel27
cdo -mulc,131866.992188 -sellevel,27 era5_WS_setrtomiss_ifthen_NE_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel27_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel27_"$((leap))".nc era5_DP_NE_range27_29_"$((leap))".nc
#sellevel29
cdo -mulc,164598.704156 -sellevel,29 era5_WS_setrtomiss_ifthen_NE_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel29_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel29_"$((leap))".nc era5_DP_NE_range29_31_"$((leap))".nc
#sellevel31
cdo -mulc,202319.056903 -sellevel,31 era5_WS_setrtomiss_ifthen_NE_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel31_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel31_"$((leap))".nc era5_DP_NE_range31_33_"$((leap))".nc
#sellevel33
cdo -mulc,223160.146731 -sellevel,33 era5_WS_setrtomiss_ifthen_NE_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel33_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel33_"$((leap))".nc era5_DP_NE_range33_inf_"$((leap))".nc
#enssum
cdo enssum era5_DP_NE_range5.1_7_"$((leap))".nc era5_DP_NE_range7_9_"$((leap))".nc era5_DP_NE_range9_11_"$((leap))".nc era5_DP_NE_range11_13_"$((leap))".nc era5_DP_NE_range13_15_"$((leap))".nc era5_DP_NE_range15_17_"$((leap))".nc era5_DP_NE_range17_19_"$((leap))".nc era5_DP_NE_range19_21_"$((leap))".nc era5_DP_NE_range21_23_"$((leap))".nc era5_DP_NE_range23_25_"$((leap))".nc era5_DP_NE_range25_27_"$((leap))".nc era5_DP_NE_range27_29_"$((leap))".nc era5_DP_NE_range29_31_"$((leap))".nc era5_DP_NE_range31_33_"$((leap))".nc era5_DP_NE_range33_inf_"$((leap))".nc era5_DP_NE_range_enssum_"$((leap))".nc
#change variable name into DP_NE, in order to be used in the resultanting
cdo chname,WS,DP_NE era5_DP_NE_range_enssum_"$((leap))".nc era5_DP_NE_range_enssum_chname_"$((leap))".nc
#delete intermediate results
rm -f era5_WD_ifthen_setvrange_NE_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_NE_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_NE_histcount_divc_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_NE_histcount_divc_setmisstoc_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel5.1_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel7_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel9_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel11_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel13_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel15_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel17_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel19_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel21_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel23_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel25_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel27_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel29_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel31_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel33_"$((leap))".nc
rm -f era5_DP_NE_range5.1_7_"$((leap))".nc
rm -f era5_DP_NE_range7_9_"$((leap))".nc
rm -f era5_DP_NE_range9_11_"$((leap))".nc
rm -f era5_DP_NE_range11_13_"$((leap))".nc
rm -f era5_DP_NE_range13_15_"$((leap))".nc
rm -f era5_DP_NE_range15_17_"$((leap))".nc
rm -f era5_DP_NE_range17_19_"$((leap))".nc
rm -f era5_DP_NE_range19_21_"$((leap))".nc
rm -f era5_DP_NE_range21_23_"$((leap))".nc
rm -f era5_DP_NE_range23_25_"$((leap))".nc
rm -f era5_DP_NE_range25_27_"$((leap))".nc
rm -f era5_DP_NE_range27_29_"$((leap))".nc
rm -f era5_DP_NE_range29_31_"$((leap))".nc
rm -f era5_DP_NE_range31_33_"$((leap))".nc
rm -f era5_DP_NE_range33_inf_"$((leap))".nc

#ENE, 56.25≤ENE＜78.75
cdo setvrange,56.25,78.7499999 era5_WD_ifthen_"$((leap))".nc era5_WD_ifthen_setvrange_ENE_"$((leap))".nc
#mask sand-moving wind speeds in the ENE azimuth
cdo ifthen era5_WD_ifthen_setvrange_ENE_"$((leap))".nc era5_WS_setrtomiss_"$((leap))".nc era5_WS_setrtomiss_ifthen_ENE_"$((leap))".nc
#2 m/s bins of sand-moving wind speeds in the ENE azimuth, 5.1m/s≤WS＜7m/s, 7m/s≤WS＜9m/s, 9m/s≤WS＜11m/s, 11m/s≤WS＜13m/s, 13m/s≤WS＜15m/s, 15m/s≤WS＜17m/s, 17m/s≤WS＜19m/s, 19m/s≤WS＜21m/s, 21m/s≤WS＜23m/s, 23m/s≤WS＜25m/s, 25m/s≤WS＜27m/s, 27m/s≤WS＜29m/s, 29m/s≤WS＜31m/s, 31m/s≤WS<33m/s, 33m/s≤WS
cdo histcount,5.1,6.9999999,8.9999999,10.9999999,12.9999999,14.9999999,16.9999999,18.9999999,20.9999999,22.9999999,24.9999999,26.9999999,28.9999999,30.9999999,32.9999999,inf era5_WS_setrtomiss_ifthen_ENE_"$((leap))".nc era5_WS_setrtomiss_ifthen_ENE_histcount_"$((leap))".nc
#the sand-moving wind frequency in the ENE azimuth, 8784 is the total hours for the “$leap_year”
cdo divc,8784 era5_WS_setrtomiss_ifthen_ENE_histcount_"$((leap))".nc era5_WS_setrtomiss_ifthen_ENE_histcount_divc_"$((leap))".nc
#setmisstoc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_ENE_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_ENE_histcount_divc_setmisstoc_"$((leap))".nc
#mulc
cdo mulc,100 era5_WS_setrtomiss_ifthen_ENE_histcount_divc_setmisstoc_"$((leap))".nc era5_WS_setrtomiss_ifthen_ENE_histcount_divc_setmisstoc_mulc_"$((leap))".nc
#weighting factor U^2(U-Ut), U is the mean wind speed，and they are 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 33m/s, respectively; and m/s needs to be conversed into knot. Notably, the value of U^2(U-Ut) is not divided by 100, as its subsquent multiplication represents a demensionless sand-moving wind frequency, rather than a percentage-based sand-moving wind frequency.
#level,5.1 U^2(U-Ut)=(6*3600/1852)*(6*3600/1852)*(6*3600/1852-5.1*3600/1852)=237.974030
#level,7 U^2(U-Ut)=(8*3600/1852)*(8*3600/1852)*(8*3600/1852-5.1*3600/1852)=1363.209259
#level,9 U^2(U-Ut)=(10*3600/1852)*(10*3600/1852)*(10*3600/1852-5.1*3600/1852)=3598.989961
#level,11 U^2(U-Ut)=(12*3600/1852)*(12*3600/1852)*(12*3600/1852-5.1*3600/1852)=7297.870257
#level,13 U^2(U-Ut)=(14*3600/1852)*(14*3600/1852)*(14*3600/1852-5.1*3600/1852)=12812.404263
#level,15 U^2(U-Ut)=(16*3600/1852)*(16*3600/1852)*(16*3600/1852-5.1*3600/1852)=20495.146099
#level,17 U^2(U-Ut)=(18*3600/1852)*(18*3600/1852)*(18*3600/1852-5.1*3600/1852)=30698.649884
#level,19 U^2(U-Ut)=(20*3600/1852)*(20*3600/1852)*(20*3600/1852-5.1*3600/1852)=43775.469735
#level,21 U^2(U-Ut)=(22*3600/1852)*(22*3600/1852)*(22*3600/1852-5.1*3600/1852)=60078.159773
#level,23 U^2(U-Ut)=(24*3600/1852)*(24*3600/1852)*(24*3600/1852-5.1*3600/1852)=79959.274115
#level,25 U^2(U-Ut)=(26*3600/1852)*(26*3600/1852)*(26*3600/1852-5.1*3600/1852)=103771.366881
#level,27 U^2(U-Ut)=(28*3600/1852)*(28*3600/1852)*(28*3600/1852-5.1*3600/1852)=131866.992188
#level,29 U^2(U-Ut)=(30*3600/1852)*(30*3600/1852)*(30*3600/1852-5.1*3600/1852)=164598.704156
#level,31 U^2(U-Ut)=(32*3600/1852)*(32*3600/1852)*(32*3600/1852-5.1*3600/1852)=202319.056903
#level,33 U^2(U-Ut)=(33*3600/1852)*(33*3600/1852)*(33*3600/1852-5.1*3600/1852)=223160.146731
#1 knot = 1 nautical mile/hour =1852m/hour=1852/3600m/s=0.5144m/s
#sellevel5.1
cdo -mulc,237.974030 -sellevel,5.1 era5_WS_setrtomiss_ifthen_ENE_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel5.1_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel5.1_"$((leap))".nc era5_DP_ENE_range5.1_7_"$((leap))".nc
#sellevel7
cdo -mulc,1363.209259 -sellevel,7 era5_WS_setrtomiss_ifthen_ENE_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel7_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel7_"$((leap))".nc era5_DP_ENE_range7_9_"$((leap))".nc
#sellevel9
cdo -mulc,3598.989961 -sellevel,9 era5_WS_setrtomiss_ifthen_ENE_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel9_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel9_"$((leap))".nc era5_DP_ENE_range9_11_"$((leap))".nc
#sellevel11
cdo -mulc,7297.870257 -sellevel,11 era5_WS_setrtomiss_ifthen_ENE_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel11_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel11_"$((leap))".nc era5_DP_ENE_range11_13_"$((leap))".nc
#sellevel13
cdo -mulc,12812.404263 -sellevel,13 era5_WS_setrtomiss_ifthen_ENE_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel13_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel13_"$((leap))".nc era5_DP_ENE_range13_15_"$((leap))".nc
#sellevel15
cdo -mulc,20495.146099 -sellevel,15 era5_WS_setrtomiss_ifthen_ENE_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel15_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel15_"$((leap))".nc era5_DP_ENE_range15_17_"$((leap))".nc
#sellevel17
cdo -mulc,30698.649884 -sellevel,17 era5_WS_setrtomiss_ifthen_ENE_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel17_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel17_"$((leap))".nc era5_DP_ENE_range17_19_"$((leap))".nc
#sellevel19
cdo -mulc,43775.469735 -sellevel,19 era5_WS_setrtomiss_ifthen_ENE_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel19_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel19_"$((leap))".nc era5_DP_ENE_range19_21_"$((leap))".nc
#sellevel21
cdo -mulc,60078.159773 -sellevel,21 era5_WS_setrtomiss_ifthen_ENE_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel21_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel21_"$((leap))".nc era5_DP_ENE_range21_23_"$((leap))".nc
#sellevel23
cdo -mulc,79959.274115 -sellevel,23 era5_WS_setrtomiss_ifthen_ENE_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel23_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel23_"$((leap))".nc era5_DP_ENE_range23_25_"$((leap))".nc
#sellevel25
cdo -mulc,103771.366881 -sellevel,25 era5_WS_setrtomiss_ifthen_ENE_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel25_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel25_"$((leap))".nc era5_DP_ENE_range25_27_"$((leap))".nc
#sellevel27
cdo -mulc,131866.992188 -sellevel,27 era5_WS_setrtomiss_ifthen_ENE_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel27_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel27_"$((leap))".nc era5_DP_ENE_range27_29_"$((leap))".nc
#sellevel29
cdo -mulc,164598.704156 -sellevel,29 era5_WS_setrtomiss_ifthen_ENE_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel29_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel29_"$((leap))".nc era5_DP_ENE_range29_31_"$((leap))".nc
#sellevel31
cdo -mulc,202319.056903 -sellevel,31 era5_WS_setrtomiss_ifthen_ENE_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel31_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel31_"$((leap))".nc era5_DP_ENE_range31_33_"$((leap))".nc
#sellevel33
cdo -mulc,223160.146731 -sellevel,33 era5_WS_setrtomiss_ifthen_ENE_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel33_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel33_"$((leap))".nc era5_DP_ENE_range33_inf_"$((leap))".nc
#enssum
cdo enssum era5_DP_ENE_range5.1_7_"$((leap))".nc era5_DP_ENE_range7_9_"$((leap))".nc era5_DP_ENE_range9_11_"$((leap))".nc era5_DP_ENE_range11_13_"$((leap))".nc era5_DP_ENE_range13_15_"$((leap))".nc era5_DP_ENE_range15_17_"$((leap))".nc era5_DP_ENE_range17_19_"$((leap))".nc era5_DP_ENE_range19_21_"$((leap))".nc era5_DP_ENE_range21_23_"$((leap))".nc era5_DP_ENE_range23_25_"$((leap))".nc era5_DP_ENE_range25_27_"$((leap))".nc era5_DP_ENE_range27_29_"$((leap))".nc era5_DP_ENE_range29_31_"$((leap))".nc era5_DP_ENE_range31_33_"$((leap))".nc era5_DP_ENE_range33_inf_"$((leap))".nc era5_DP_ENE_range_enssum_"$((leap))".nc
#change variable name into DP_ENE, in order to be used in the resultanting 
cdo chname,WS,DP_ENE era5_DP_ENE_range_enssum_"$((leap))".nc era5_DP_ENE_range_enssum_chname_"$((leap))".nc
#delete intermediate results
rm -f era5_WD_ifthen_setvrange_ENE_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_ENE_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_ENE_histcount_divc_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_ENE_histcount_divc_setmisstoc_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel5.1_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel7_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel9_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel11_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel13_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel15_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel17_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel19_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel21_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel23_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel25_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel27_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel29_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel31_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel33_"$((leap))".nc
rm -f era5_DP_ENE_range5.1_7_"$((leap))".nc
rm -f era5_DP_ENE_range7_9_"$((leap))".nc
rm -f era5_DP_ENE_range9_11_"$((leap))".nc
rm -f era5_DP_ENE_range11_13_"$((leap))".nc
rm -f era5_DP_ENE_range13_15_"$((leap))".nc
rm -f era5_DP_ENE_range15_17_"$((leap))".nc
rm -f era5_DP_ENE_range17_19_"$((leap))".nc
rm -f era5_DP_ENE_range19_21_"$((leap))".nc
rm -f era5_DP_ENE_range21_23_"$((leap))".nc
rm -f era5_DP_ENE_range23_25_"$((leap))".nc
rm -f era5_DP_ENE_range25_27_"$((leap))".nc
rm -f era5_DP_ENE_range27_29_"$((leap))".nc
rm -f era5_DP_ENE_range29_31_"$((leap))".nc
rm -f era5_DP_ENE_range31_33_"$((leap))".nc
rm -f era5_DP_ENE_range33_inf_"$((leap))".nc

#E, 78.75≤E＜101.25
cdo setvrange,78.75,101.2499999 era5_WD_ifthen_"$((leap))".nc era5_WD_ifthen_setvrange_E_"$((leap))".nc
#mask sand-moving wind speeds in the E azimuth
cdo ifthen era5_WD_ifthen_setvrange_E_"$((leap))".nc era5_WS_setrtomiss_"$((leap))".nc era5_WS_setrtomiss_ifthen_E_"$((leap))".nc
#2 m/s bins of sand-moving wind speeds in the E azimuth, 5.1m/s≤WS＜7m/s, 7m/s≤WS＜9m/s, 9m/s≤WS＜11m/s, 11m/s≤WS＜13m/s, 13m/s≤WS＜15m/s, 15m/s≤WS＜17m/s, 17m/s≤WS＜19m/s, 19m/s≤WS＜21m/s, 21m/s≤WS＜23m/s, 23m/s≤WS＜25m/s, 25m/s≤WS＜27m/s, 27m/s≤WS＜29m/s, 29m/s≤WS＜31m/s, 31m/s≤WS<33m/s, 33m/s≤WS
cdo histcount,5.1,6.9999999,8.9999999,10.9999999,12.9999999,14.9999999,16.9999999,18.9999999,20.9999999,22.9999999,24.9999999,26.9999999,28.9999999,30.9999999,32.9999999,inf era5_WS_setrtomiss_ifthen_E_"$((leap))".nc era5_WS_setrtomiss_ifthen_E_histcount_"$((leap))".nc
#the sand-moving wind frequency in the E azimuth, 8784 is the total hours for the “$leap_year”
cdo divc,8784 era5_WS_setrtomiss_ifthen_E_histcount_"$((leap))".nc era5_WS_setrtomiss_ifthen_E_histcount_divc_"$((leap))".nc
#setmisstoc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_E_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_E_histcount_divc_setmisstoc_"$((leap))".nc
#mulc
cdo mulc,100 era5_WS_setrtomiss_ifthen_E_histcount_divc_setmisstoc_"$((leap))".nc era5_WS_setrtomiss_ifthen_E_histcount_divc_setmisstoc_mulc_"$((leap))".nc
#weighting factor U^2(U-Ut), U is the mean wind speed，and they are 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 33m/s, respectively; and m/s needs to be conversed into knot. Notably, the value of U^2(U-Ut) is not divided by 100, as its subsquent multiplication represents a demensionless sand-moving wind frequency, rather than a percentage-based sand-moving wind frequency.
#level,5.1 U^2(U-Ut)=(6*3600/1852)*(6*3600/1852)*(6*3600/1852-5.1*3600/1852)=237.974030
#level,7 U^2(U-Ut)=(8*3600/1852)*(8*3600/1852)*(8*3600/1852-5.1*3600/1852)=1363.209259
#level,9 U^2(U-Ut)=(10*3600/1852)*(10*3600/1852)*(10*3600/1852-5.1*3600/1852)=3598.989961
#level,11 U^2(U-Ut)=(12*3600/1852)*(12*3600/1852)*(12*3600/1852-5.1*3600/1852)=7297.870257
#level,13 U^2(U-Ut)=(14*3600/1852)*(14*3600/1852)*(14*3600/1852-5.1*3600/1852)=12812.404263
#level,15 U^2(U-Ut)=(16*3600/1852)*(16*3600/1852)*(16*3600/1852-5.1*3600/1852)=20495.146099
#level,17 U^2(U-Ut)=(18*3600/1852)*(18*3600/1852)*(18*3600/1852-5.1*3600/1852)=30698.649884
#level,19 U^2(U-Ut)=(20*3600/1852)*(20*3600/1852)*(20*3600/1852-5.1*3600/1852)=43775.469735
#level,21 U^2(U-Ut)=(22*3600/1852)*(22*3600/1852)*(22*3600/1852-5.1*3600/1852)=60078.159773
#level,23 U^2(U-Ut)=(24*3600/1852)*(24*3600/1852)*(24*3600/1852-5.1*3600/1852)=79959.274115
#level,25 U^2(U-Ut)=(26*3600/1852)*(26*3600/1852)*(26*3600/1852-5.1*3600/1852)=103771.366881
#level,27 U^2(U-Ut)=(28*3600/1852)*(28*3600/1852)*(28*3600/1852-5.1*3600/1852)=131866.992188
#level,29 U^2(U-Ut)=(30*3600/1852)*(30*3600/1852)*(30*3600/1852-5.1*3600/1852)=164598.704156
#level,31 U^2(U-Ut)=(32*3600/1852)*(32*3600/1852)*(32*3600/1852-5.1*3600/1852)=202319.056903
#level,33 U^2(U-Ut)=(33*3600/1852)*(33*3600/1852)*(33*3600/1852-5.1*3600/1852)=223160.146731
#1 knot = 1 nautical mile/hour =1852m/hour=1852/3600m/s=0.5144m/s
#sellevel5.1
cdo -mulc,237.974030 -sellevel,5.1 era5_WS_setrtomiss_ifthen_E_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_E_histcount_divc_sellevel5.1_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_E_histcount_divc_sellevel5.1_"$((leap))".nc era5_DP_E_range5.1_7_"$((leap))".nc
#sellevel7
cdo -mulc,1363.209259 -sellevel,7 era5_WS_setrtomiss_ifthen_E_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_E_histcount_divc_sellevel7_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_E_histcount_divc_sellevel7_"$((leap))".nc era5_DP_E_range7_9_"$((leap))".nc
#sellevel9
cdo -mulc,3598.989961 -sellevel,9 era5_WS_setrtomiss_ifthen_E_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_E_histcount_divc_sellevel9_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_E_histcount_divc_sellevel9_"$((leap))".nc era5_DP_E_range9_11_"$((leap))".nc
#sellevel11
cdo -mulc,7297.870257 -sellevel,11 era5_WS_setrtomiss_ifthen_E_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_E_histcount_divc_sellevel11_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_E_histcount_divc_sellevel11_"$((leap))".nc era5_DP_E_range11_13_"$((leap))".nc
#sellevel13
cdo -mulc,12812.404263 -sellevel,13 era5_WS_setrtomiss_ifthen_E_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_E_histcount_divc_sellevel13_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_E_histcount_divc_sellevel13_"$((leap))".nc era5_DP_E_range13_15_"$((leap))".nc
#sellevel15
cdo -mulc,20495.146099 -sellevel,15 era5_WS_setrtomiss_ifthen_E_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_E_histcount_divc_sellevel15_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_E_histcount_divc_sellevel15_"$((leap))".nc era5_DP_E_range15_17_"$((leap))".nc
#sellevel17
cdo -mulc,30698.649884 -sellevel,17 era5_WS_setrtomiss_ifthen_E_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_E_histcount_divc_sellevel17_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_E_histcount_divc_sellevel17_"$((leap))".nc era5_DP_E_range17_19_"$((leap))".nc
#sellevel19
cdo -mulc,43775.469735 -sellevel,19 era5_WS_setrtomiss_ifthen_E_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_E_histcount_divc_sellevel19_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_E_histcount_divc_sellevel19_"$((leap))".nc era5_DP_E_range19_21_"$((leap))".nc
#sellevel21
cdo -mulc,60078.159773 -sellevel,21 era5_WS_setrtomiss_ifthen_E_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_E_histcount_divc_sellevel21_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_E_histcount_divc_sellevel21_"$((leap))".nc era5_DP_E_range21_23_"$((leap))".nc
#sellevel23
cdo -mulc,79959.274115 -sellevel,23 era5_WS_setrtomiss_ifthen_E_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_E_histcount_divc_sellevel23_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_E_histcount_divc_sellevel23_"$((leap))".nc era5_DP_E_range23_25_"$((leap))".nc
#sellevel25
cdo -mulc,103771.366881 -sellevel,25 era5_WS_setrtomiss_ifthen_E_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_E_histcount_divc_sellevel25_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_E_histcount_divc_sellevel25_"$((leap))".nc era5_DP_E_range25_27_"$((leap))".nc
#sellevel27
cdo -mulc,131866.992188 -sellevel,27 era5_WS_setrtomiss_ifthen_E_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_E_histcount_divc_sellevel27_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_E_histcount_divc_sellevel27_"$((leap))".nc era5_DP_E_range27_29_"$((leap))".nc
#sellevel29
cdo -mulc,164598.704156 -sellevel,29 era5_WS_setrtomiss_ifthen_E_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_E_histcount_divc_sellevel29_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_E_histcount_divc_sellevel29_"$((leap))".nc era5_DP_E_range29_31_"$((leap))".nc
#sellevel31
cdo -mulc,202319.056903 -sellevel,31 era5_WS_setrtomiss_ifthen_E_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_E_histcount_divc_sellevel31_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_E_histcount_divc_sellevel31_"$((leap))".nc era5_DP_E_range31_33_"$((leap))".nc
#sellevel33
cdo -mulc,223160.146731 -sellevel,33 era5_WS_setrtomiss_ifthen_E_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_E_histcount_divc_sellevel33_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_E_histcount_divc_sellevel33_"$((leap))".nc era5_DP_E_range33_inf_"$((leap))".nc
#enssum
cdo enssum era5_DP_E_range5.1_7_"$((leap))".nc era5_DP_E_range7_9_"$((leap))".nc era5_DP_E_range9_11_"$((leap))".nc era5_DP_E_range11_13_"$((leap))".nc era5_DP_E_range13_15_"$((leap))".nc era5_DP_E_range15_17_"$((leap))".nc era5_DP_E_range17_19_"$((leap))".nc era5_DP_E_range19_21_"$((leap))".nc era5_DP_E_range21_23_"$((leap))".nc era5_DP_E_range23_25_"$((leap))".nc era5_DP_E_range25_27_"$((leap))".nc era5_DP_E_range27_29_"$((leap))".nc era5_DP_E_range29_31_"$((leap))".nc era5_DP_E_range31_33_"$((leap))".nc era5_DP_E_range33_inf_"$((leap))".nc era5_DP_E_range_enssum_"$((leap))".nc
#change variable name into DP_E, in order to be used in the resultanting
cdo chname,WS,DP_E era5_DP_E_range_enssum_"$((leap))".nc era5_DP_E_range_enssum_chname_"$((leap))".nc
#delete intermediate results
rm -f era5_WD_ifthen_setvrange_E_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_E_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_E_histcount_divc_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_E_histcount_divc_setmisstoc_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_E_histcount_divc_sellevel5.1_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_E_histcount_divc_sellevel7_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_E_histcount_divc_sellevel9_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_E_histcount_divc_sellevel11_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_E_histcount_divc_sellevel13_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_E_histcount_divc_sellevel15_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_E_histcount_divc_sellevel17_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_E_histcount_divc_sellevel19_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_E_histcount_divc_sellevel21_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_E_histcount_divc_sellevel23_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_E_histcount_divc_sellevel25_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_E_histcount_divc_sellevel27_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_E_histcount_divc_sellevel29_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_E_histcount_divc_sellevel31_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_E_histcount_divc_sellevel33_"$((leap))".nc
rm -f era5_DP_E_range5.1_7_"$((leap))".nc
rm -f era5_DP_E_range7_9_"$((leap))".nc
rm -f era5_DP_E_range9_11_"$((leap))".nc
rm -f era5_DP_E_range11_13_"$((leap))".nc
rm -f era5_DP_E_range13_15_"$((leap))".nc
rm -f era5_DP_E_range15_17_"$((leap))".nc
rm -f era5_DP_E_range17_19_"$((leap))".nc
rm -f era5_DP_E_range19_21_"$((leap))".nc
rm -f era5_DP_E_range21_23_"$((leap))".nc
rm -f era5_DP_E_range23_25_"$((leap))".nc
rm -f era5_DP_E_range25_27_"$((leap))".nc
rm -f era5_DP_E_range27_29_"$((leap))".nc
rm -f era5_DP_E_range29_31_"$((leap))".nc
rm -f era5_DP_E_range31_33_"$((leap))".nc
rm -f era5_DP_E_range33_inf_"$((leap))".nc

#ESE, 101.25≤ESE＜123.75
cdo setvrange,101.25,123.7499999 era5_WD_ifthen_"$((leap))".nc era5_WD_ifthen_setvrange_ESE_"$((leap))".nc
#mask sand-moving wind speeds in the ESE azimuth
cdo ifthen era5_WD_ifthen_setvrange_ESE_"$((leap))".nc era5_WS_setrtomiss_"$((leap))".nc era5_WS_setrtomiss_ifthen_ESE_"$((leap))".nc
#2 m/s bins of sand-moving wind speeds in the ESE azimuth, 5.1m/s≤WS＜7m/s, 7m/s≤WS＜9m/s, 9m/s≤WS＜11m/s, 11m/s≤WS＜13m/s, 13m/s≤WS＜15m/s, 15m/s≤WS＜17m/s, 17m/s≤WS＜19m/s, 19m/s≤WS＜21m/s, 21m/s≤WS＜23m/s, 23m/s≤WS＜25m/s, 25m/s≤WS＜27m/s, 27m/s≤WS＜29m/s, 29m/s≤WS＜31m/s, 31m/s≤WS<33m/s, 33m/s≤WS
cdo histcount,5.1,6.9999999,8.9999999,10.9999999,12.9999999,14.9999999,16.9999999,18.9999999,20.9999999,22.9999999,24.9999999,26.9999999,28.9999999,30.9999999,32.9999999,inf era5_WS_setrtomiss_ifthen_ESE_"$((leap))".nc era5_WS_setrtomiss_ifthen_ESE_histcount_"$((leap))".nc
#the sand-moving wind frequency in the ESE azimuth, 8784 is the total hours for the “$leap_year”
cdo divc,8784 era5_WS_setrtomiss_ifthen_ESE_histcount_"$((leap))".nc era5_WS_setrtomiss_ifthen_ESE_histcount_divc_"$((leap))".nc
#setmisstoc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_ESE_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_ESE_histcount_divc_setmisstoc_"$((leap))".nc
#mulc
cdo mulc,100 era5_WS_setrtomiss_ifthen_ESE_histcount_divc_setmisstoc_"$((leap))".nc era5_WS_setrtomiss_ifthen_ESE_histcount_divc_setmisstoc_mulc_"$((leap))".nc
#weighting factor U^2(U-Ut), U is the mean wind speed，and they are 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 33m/s, respectively; and m/s needs to be conversed into knot. Notably, the value of U^2(U-Ut) is not divided by 100, as its subsquent multiplication represents a demensionless sand-moving wind frequency, rather than a percentage-based sand-moving wind frequency.
#level,5.1 U^2(U-Ut)=(6*3600/1852)*(6*3600/1852)*(6*3600/1852-5.1*3600/1852)=237.974030
#level,7 U^2(U-Ut)=(8*3600/1852)*(8*3600/1852)*(8*3600/1852-5.1*3600/1852)=1363.209259
#level,9 U^2(U-Ut)=(10*3600/1852)*(10*3600/1852)*(10*3600/1852-5.1*3600/1852)=3598.989961
#level,11 U^2(U-Ut)=(12*3600/1852)*(12*3600/1852)*(12*3600/1852-5.1*3600/1852)=7297.870257
#level,13 U^2(U-Ut)=(14*3600/1852)*(14*3600/1852)*(14*3600/1852-5.1*3600/1852)=12812.404263
#level,15 U^2(U-Ut)=(16*3600/1852)*(16*3600/1852)*(16*3600/1852-5.1*3600/1852)=20495.146099
#level,17 U^2(U-Ut)=(18*3600/1852)*(18*3600/1852)*(18*3600/1852-5.1*3600/1852)=30698.649884
#level,19 U^2(U-Ut)=(20*3600/1852)*(20*3600/1852)*(20*3600/1852-5.1*3600/1852)=43775.469735
#level,21 U^2(U-Ut)=(22*3600/1852)*(22*3600/1852)*(22*3600/1852-5.1*3600/1852)=60078.159773
#level,23 U^2(U-Ut)=(24*3600/1852)*(24*3600/1852)*(24*3600/1852-5.1*3600/1852)=79959.274115
#level,25 U^2(U-Ut)=(26*3600/1852)*(26*3600/1852)*(26*3600/1852-5.1*3600/1852)=103771.366881
#level,27 U^2(U-Ut)=(28*3600/1852)*(28*3600/1852)*(28*3600/1852-5.1*3600/1852)=131866.992188
#level,29 U^2(U-Ut)=(30*3600/1852)*(30*3600/1852)*(30*3600/1852-5.1*3600/1852)=164598.704156
#level,31 U^2(U-Ut)=(32*3600/1852)*(32*3600/1852)*(32*3600/1852-5.1*3600/1852)=202319.056903
#level,33 U^2(U-Ut)=(33*3600/1852)*(33*3600/1852)*(33*3600/1852-5.1*3600/1852)=223160.146731
#1 knot = 1 nautical mile/hour =1852m/hour=1852/3600m/s=0.5144m/s
#sellevel5.1
cdo -mulc,237.974030 -sellevel,5.1 era5_WS_setrtomiss_ifthen_ESE_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel5.1_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel5.1_"$((leap))".nc era5_DP_ESE_range5.1_7_"$((leap))".nc
#sellevel7
cdo -mulc,1363.209259 -sellevel,7 era5_WS_setrtomiss_ifthen_ESE_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel7_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel7_"$((leap))".nc era5_DP_ESE_range7_9_"$((leap))".nc
#sellevel9
cdo -mulc,3598.989961 -sellevel,9 era5_WS_setrtomiss_ifthen_ESE_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel9_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel9_"$((leap))".nc era5_DP_ESE_range9_11_"$((leap))".nc
#sellevel11
cdo -mulc,7297.870257 -sellevel,11 era5_WS_setrtomiss_ifthen_ESE_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel11_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel11_"$((leap))".nc era5_DP_ESE_range11_13_"$((leap))".nc
#sellevel13
cdo -mulc,12812.404263 -sellevel,13 era5_WS_setrtomiss_ifthen_ESE_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel13_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel13_"$((leap))".nc era5_DP_ESE_range13_15_"$((leap))".nc
#sellevel15
cdo -mulc,20495.146099 -sellevel,15 era5_WS_setrtomiss_ifthen_ESE_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel15_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel15_"$((leap))".nc era5_DP_ESE_range15_17_"$((leap))".nc
#sellevel17
cdo -mulc,30698.649884 -sellevel,17 era5_WS_setrtomiss_ifthen_ESE_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel17_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel17_"$((leap))".nc era5_DP_ESE_range17_19_"$((leap))".nc
#sellevel19
cdo -mulc,43775.469735 -sellevel,19 era5_WS_setrtomiss_ifthen_ESE_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel19_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel19_"$((leap))".nc era5_DP_ESE_range19_21_"$((leap))".nc
#sellevel21
cdo -mulc,60078.159773 -sellevel,21 era5_WS_setrtomiss_ifthen_ESE_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel21_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel21_"$((leap))".nc era5_DP_ESE_range21_23_"$((leap))".nc
#sellevel23
cdo -mulc,79959.274115 -sellevel,23 era5_WS_setrtomiss_ifthen_ESE_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel23_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel23_"$((leap))".nc era5_DP_ESE_range23_25_"$((leap))".nc
#sellevel25
cdo -mulc,103771.366881 -sellevel,25 era5_WS_setrtomiss_ifthen_ESE_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel25_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel25_"$((leap))".nc era5_DP_ESE_range25_27_"$((leap))".nc
#sellevel27
cdo -mulc,131866.992188 -sellevel,27 era5_WS_setrtomiss_ifthen_ESE_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel27_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel27_"$((leap))".nc era5_DP_ESE_range27_29_"$((leap))".nc
#sellevel29
cdo -mulc,164598.704156 -sellevel,29 era5_WS_setrtomiss_ifthen_ESE_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel29_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel29_"$((leap))".nc era5_DP_ESE_range29_31_"$((leap))".nc
#sellevel31
cdo -mulc,202319.056903 -sellevel,31 era5_WS_setrtomiss_ifthen_ESE_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel31_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel31_"$((leap))".nc era5_DP_ESE_range31_33_"$((leap))".nc
#sellevel33
cdo -mulc,223160.146731 -sellevel,33 era5_WS_setrtomiss_ifthen_ESE_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel33_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel33_"$((leap))".nc era5_DP_ESE_range33_inf_"$((leap))".nc
#enssum
cdo enssum era5_DP_ESE_range5.1_7_"$((leap))".nc era5_DP_ESE_range7_9_"$((leap))".nc era5_DP_ESE_range9_11_"$((leap))".nc era5_DP_ESE_range11_13_"$((leap))".nc era5_DP_ESE_range13_15_"$((leap))".nc era5_DP_ESE_range15_17_"$((leap))".nc era5_DP_ESE_range17_19_"$((leap))".nc era5_DP_ESE_range19_21_"$((leap))".nc era5_DP_ESE_range21_23_"$((leap))".nc era5_DP_ESE_range23_25_"$((leap))".nc era5_DP_ESE_range25_27_"$((leap))".nc era5_DP_ESE_range27_29_"$((leap))".nc era5_DP_ESE_range29_31_"$((leap))".nc era5_DP_ESE_range31_33_"$((leap))".nc era5_DP_ESE_range33_inf_"$((leap))".nc era5_DP_ESE_range_enssum_"$((leap))".nc
#change variable name into DP_ESE, in order to be used in the resultanting
cdo chname,WS,DP_ESE era5_DP_ESE_range_enssum_"$((leap))".nc era5_DP_ESE_range_enssum_chname_"$((leap))".nc
#delete intermediate results
rm -f era5_WD_ifthen_setvrange_ESE_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_ESE_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_ESE_histcount_divc_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_ESE_histcount_divc_setmisstoc_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel5.1_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel7_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel9_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel11_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel13_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel15_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel17_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel19_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel21_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel23_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel25_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel27_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel29_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel31_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel33_"$((leap))".nc
rm -f era5_DP_ESE_range5.1_7_"$((leap))".nc
rm -f era5_DP_ESE_range7_9_"$((leap))".nc
rm -f era5_DP_ESE_range9_11_"$((leap))".nc
rm -f era5_DP_ESE_range11_13_"$((leap))".nc
rm -f era5_DP_ESE_range13_15_"$((leap))".nc
rm -f era5_DP_ESE_range15_17_"$((leap))".nc
rm -f era5_DP_ESE_range17_19_"$((leap))".nc
rm -f era5_DP_ESE_range19_21_"$((leap))".nc
rm -f era5_DP_ESE_range21_23_"$((leap))".nc
rm -f era5_DP_ESE_range23_25_"$((leap))".nc
rm -f era5_DP_ESE_range25_27_"$((leap))".nc
rm -f era5_DP_ESE_range27_29_"$((leap))".nc
rm -f era5_DP_ESE_range29_31_"$((leap))".nc
rm -f era5_DP_ESE_range31_33_"$((leap))".nc
rm -f era5_DP_ESE_range33_inf_"$((leap))".nc

#SE, 123.75≤SE＜146.25
cdo setvrange,123.75,146.2499999 era5_WD_ifthen_"$((leap))".nc era5_WD_ifthen_setvrange_SE_"$((leap))".nc
#mask sand-moving wind speeds in the SE azimuth
cdo ifthen era5_WD_ifthen_setvrange_SE_"$((leap))".nc era5_WS_setrtomiss_"$((leap))".nc era5_WS_setrtomiss_ifthen_SE_"$((leap))".nc
#2 m/s bins of sand-moving wind speeds in the SE azimuth, 5.1m/s≤WS＜7m/s, 7m/s≤WS＜9m/s, 9m/s≤WS＜11m/s, 11m/s≤WS＜13m/s, 13m/s≤WS＜15m/s, 15m/s≤WS＜17m/s, 17m/s≤WS＜19m/s, 19m/s≤WS＜21m/s, 21m/s≤WS＜23m/s, 23m/s≤WS＜25m/s, 25m/s≤WS＜27m/s, 27m/s≤WS＜29m/s, 29m/s≤WS＜31m/s, 31m/s≤WS<33m/s, 33m/s≤WS
cdo histcount,5.1,6.9999999,8.9999999,10.9999999,12.9999999,14.9999999,16.9999999,18.9999999,20.9999999,22.9999999,24.9999999,26.9999999,28.9999999,30.9999999,32.9999999,inf era5_WS_setrtomiss_ifthen_SE_"$((leap))".nc era5_WS_setrtomiss_ifthen_SE_histcount_"$((leap))".nc
#the sand-moving wind frequency in the SE azimuth, 8784 is the total hours for the “$leap_year”
cdo divc,8784 era5_WS_setrtomiss_ifthen_SE_histcount_"$((leap))".nc era5_WS_setrtomiss_ifthen_SE_histcount_divc_"$((leap))".nc
#setmisstoc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SE_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_SE_histcount_divc_setmisstoc_"$((leap))".nc
#mulc
cdo mulc,100 era5_WS_setrtomiss_ifthen_SE_histcount_divc_setmisstoc_"$((leap))".nc era5_WS_setrtomiss_ifthen_SE_histcount_divc_setmisstoc_mulc_"$((leap))".nc
#weighting factor U^2(U-Ut), U is the mean wind speed，and they are 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 33m/s, respectively; and m/s needs to be conversed into knot. Notably, the value of U^2(U-Ut) is not divided by 100, as its subsquent multiplication represents a demensionless sand-moving wind frequency, rather than a percentage-based sand-moving wind frequency.
#level,5.1 U^2(U-Ut)=(6*3600/1852)*(6*3600/1852)*(6*3600/1852-5.1*3600/1852)=237.974030
#level,7 U^2(U-Ut)=(8*3600/1852)*(8*3600/1852)*(8*3600/1852-5.1*3600/1852)=1363.209259
#level,9 U^2(U-Ut)=(10*3600/1852)*(10*3600/1852)*(10*3600/1852-5.1*3600/1852)=3598.989961
#level,11 U^2(U-Ut)=(12*3600/1852)*(12*3600/1852)*(12*3600/1852-5.1*3600/1852)=7297.870257
#level,13 U^2(U-Ut)=(14*3600/1852)*(14*3600/1852)*(14*3600/1852-5.1*3600/1852)=12812.404263
#level,15 U^2(U-Ut)=(16*3600/1852)*(16*3600/1852)*(16*3600/1852-5.1*3600/1852)=20495.146099
#level,17 U^2(U-Ut)=(18*3600/1852)*(18*3600/1852)*(18*3600/1852-5.1*3600/1852)=30698.649884
#level,19 U^2(U-Ut)=(20*3600/1852)*(20*3600/1852)*(20*3600/1852-5.1*3600/1852)=43775.469735
#level,21 U^2(U-Ut)=(22*3600/1852)*(22*3600/1852)*(22*3600/1852-5.1*3600/1852)=60078.159773
#level,23 U^2(U-Ut)=(24*3600/1852)*(24*3600/1852)*(24*3600/1852-5.1*3600/1852)=79959.274115
#level,25 U^2(U-Ut)=(26*3600/1852)*(26*3600/1852)*(26*3600/1852-5.1*3600/1852)=103771.366881
#level,27 U^2(U-Ut)=(28*3600/1852)*(28*3600/1852)*(28*3600/1852-5.1*3600/1852)=131866.992188
#level,29 U^2(U-Ut)=(30*3600/1852)*(30*3600/1852)*(30*3600/1852-5.1*3600/1852)=164598.704156
#level,31 U^2(U-Ut)=(32*3600/1852)*(32*3600/1852)*(32*3600/1852-5.1*3600/1852)=202319.056903
#level,33 U^2(U-Ut)=(33*3600/1852)*(33*3600/1852)*(33*3600/1852-5.1*3600/1852)=223160.146731
#1 knot = 1 nautical mile/hour =1852m/hour=1852/3600m/s=0.5144m/s
#sellevel5.1
cdo -mulc,237.974030 -sellevel,5.1 era5_WS_setrtomiss_ifthen_SE_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel5.1_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel5.1_"$((leap))".nc era5_DP_SE_range5.1_7_"$((leap))".nc
#sellevel7
cdo -mulc,1363.209259 -sellevel,7 era5_WS_setrtomiss_ifthen_SE_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel7_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel7_"$((leap))".nc era5_DP_SE_range7_9_"$((leap))".nc
#sellevel9
cdo -mulc,3598.989961 -sellevel,9 era5_WS_setrtomiss_ifthen_SE_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel9_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel9_"$((leap))".nc era5_DP_SE_range9_11_"$((leap))".nc
#sellevel11
cdo -mulc,7297.870257 -sellevel,11 era5_WS_setrtomiss_ifthen_SE_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel11_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel11_"$((leap))".nc era5_DP_SE_range11_13_"$((leap))".nc
#sellevel13
cdo -mulc,12812.404263 -sellevel,13 era5_WS_setrtomiss_ifthen_SE_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel13_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel13_"$((leap))".nc era5_DP_SE_range13_15_"$((leap))".nc
#sellevel15
cdo -mulc,20495.146099 -sellevel,15 era5_WS_setrtomiss_ifthen_SE_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel15_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel15_"$((leap))".nc era5_DP_SE_range15_17_"$((leap))".nc
#sellevel17
cdo -mulc,30698.649884 -sellevel,17 era5_WS_setrtomiss_ifthen_SE_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel17_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel17_"$((leap))".nc era5_DP_SE_range17_19_"$((leap))".nc
#sellevel19
cdo -mulc,43775.469735 -sellevel,19 era5_WS_setrtomiss_ifthen_SE_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel19_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel19_"$((leap))".nc era5_DP_SE_range19_21_"$((leap))".nc
#sellevel21
cdo -mulc,60078.159773 -sellevel,21 era5_WS_setrtomiss_ifthen_SE_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel21_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel21_"$((leap))".nc era5_DP_SE_range21_23_"$((leap))".nc
#sellevel23
cdo -mulc,79959.274115 -sellevel,23 era5_WS_setrtomiss_ifthen_SE_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel23_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel23_"$((leap))".nc era5_DP_SE_range23_25_"$((leap))".nc
#sellevel25
cdo -mulc,103771.366881 -sellevel,25 era5_WS_setrtomiss_ifthen_SE_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel25_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel25_"$((leap))".nc era5_DP_SE_range25_27_"$((leap))".nc
#sellevel27
cdo -mulc,131866.992188 -sellevel,27 era5_WS_setrtomiss_ifthen_SE_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel27_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel27_"$((leap))".nc era5_DP_SE_range27_29_"$((leap))".nc
#sellevel29
cdo -mulc,164598.704156 -sellevel,29 era5_WS_setrtomiss_ifthen_SE_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel29_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel29_"$((leap))".nc era5_DP_SE_range29_31_"$((leap))".nc
#sellevel31
cdo -mulc,202319.056903 -sellevel,31 era5_WS_setrtomiss_ifthen_SE_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel31_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel31_"$((leap))".nc era5_DP_SE_range31_33_"$((leap))".nc
#sellevel33
cdo -mulc,223160.146731 -sellevel,33 era5_WS_setrtomiss_ifthen_SE_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel33_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel33_"$((leap))".nc era5_DP_SE_range33_inf_"$((leap))".nc
#enssum
cdo enssum era5_DP_SE_range5.1_7_"$((leap))".nc era5_DP_SE_range7_9_"$((leap))".nc era5_DP_SE_range9_11_"$((leap))".nc era5_DP_SE_range11_13_"$((leap))".nc era5_DP_SE_range13_15_"$((leap))".nc era5_DP_SE_range15_17_"$((leap))".nc era5_DP_SE_range17_19_"$((leap))".nc era5_DP_SE_range19_21_"$((leap))".nc era5_DP_SE_range21_23_"$((leap))".nc era5_DP_SE_range23_25_"$((leap))".nc era5_DP_SE_range25_27_"$((leap))".nc era5_DP_SE_range27_29_"$((leap))".nc era5_DP_SE_range29_31_"$((leap))".nc era5_DP_SE_range31_33_"$((leap))".nc era5_DP_SE_range33_inf_"$((leap))".nc era5_DP_SE_range_enssum_"$((leap))".nc
#change variable name into DP_SE, in order to be used in the resultanting
cdo chname,WS,DP_SE era5_DP_SE_range_enssum_"$((leap))".nc era5_DP_SE_range_enssum_chname_"$((leap))".nc
#delete intermediate results
rm -f era5_WD_ifthen_setvrange_SE_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_SE_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_SE_histcount_divc_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_SE_histcount_divc_setmisstoc_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel5.1_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel7_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel9_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel11_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel13_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel15_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel17_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel19_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel21_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel23_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel25_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel27_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel29_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel31_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel33_"$((leap))".nc
rm -f era5_DP_SE_range5.1_7_"$((leap))".nc
rm -f era5_DP_SE_range7_9_"$((leap))".nc
rm -f era5_DP_SE_range9_11_"$((leap))".nc
rm -f era5_DP_SE_range11_13_"$((leap))".nc
rm -f era5_DP_SE_range13_15_"$((leap))".nc
rm -f era5_DP_SE_range15_17_"$((leap))".nc
rm -f era5_DP_SE_range17_19_"$((leap))".nc
rm -f era5_DP_SE_range19_21_"$((leap))".nc
rm -f era5_DP_SE_range21_23_"$((leap))".nc
rm -f era5_DP_SE_range23_25_"$((leap))".nc
rm -f era5_DP_SE_range25_27_"$((leap))".nc
rm -f era5_DP_SE_range27_29_"$((leap))".nc
rm -f era5_DP_SE_range29_31_"$((leap))".nc
rm -f era5_DP_SE_range31_33_"$((leap))".nc
rm -f era5_DP_SE_range33_inf_"$((leap))".nc

#SSE, 146.25≤SSE＜168.75
cdo setvrange,146.25,168.7499999 era5_WD_ifthen_"$((leap))".nc era5_WD_ifthen_setvrange_SSE_"$((leap))".nc
#mask sand-moving wind speeds in the SSE azimuth
cdo ifthen era5_WD_ifthen_setvrange_SSE_"$((leap))".nc era5_WS_setrtomiss_"$((leap))".nc era5_WS_setrtomiss_ifthen_SSE_"$((leap))".nc
#2 m/s bins of sand-moving wind speeds in the SSE azimuth, 5.1m/s≤WS＜7m/s, 7m/s≤WS＜9m/s, 9m/s≤WS＜11m/s, 11m/s≤WS＜13m/s, 13m/s≤WS＜15m/s, 15m/s≤WS＜17m/s, 17m/s≤WS＜19m/s, 19m/s≤WS＜21m/s, 21m/s≤WS＜23m/s, 23m/s≤WS＜25m/s, 25m/s≤WS＜27m/s, 27m/s≤WS＜29m/s, 29m/s≤WS＜31m/s, 31m/s≤WS<33m/s, 33m/s≤WS
cdo histcount,5.1,6.9999999,8.9999999,10.9999999,12.9999999,14.9999999,16.9999999,18.9999999,20.9999999,22.9999999,24.9999999,26.9999999,28.9999999,30.9999999,32.9999999,inf era5_WS_setrtomiss_ifthen_SSE_"$((leap))".nc era5_WS_setrtomiss_ifthen_SSE_histcount_"$((leap))".nc
#the sand-moving wind frequency in the SSE azimuth, 8784 is the total hours for the “$leap_year”
cdo divc,8784 era5_WS_setrtomiss_ifthen_SSE_histcount_"$((leap))".nc era5_WS_setrtomiss_ifthen_SSE_histcount_divc_"$((leap))".nc
#setmisstoc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SSE_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_SSE_histcount_divc_setmisstoc_"$((leap))".nc
#mulc
cdo mulc,100 era5_WS_setrtomiss_ifthen_SSE_histcount_divc_setmisstoc_"$((leap))".nc era5_WS_setrtomiss_ifthen_SSE_histcount_divc_setmisstoc_mulc_"$((leap))".nc
#weighting factor U^2(U-Ut), U is the mean wind speed，and they are 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 33m/s, respectively; and m/s needs to be conversed into knot. Notably, the value of U^2(U-Ut) is not divided by 100, as its subsquent multiplication represents a demensionless sand-moving wind frequency, rather than a percentage-based sand-moving wind frequency.
#level,5.1 U^2(U-Ut)=(6*3600/1852)*(6*3600/1852)*(6*3600/1852-5.1*3600/1852)=237.974030
#level,7 U^2(U-Ut)=(8*3600/1852)*(8*3600/1852)*(8*3600/1852-5.1*3600/1852)=1363.209259
#level,9 U^2(U-Ut)=(10*3600/1852)*(10*3600/1852)*(10*3600/1852-5.1*3600/1852)=3598.989961
#level,11 U^2(U-Ut)=(12*3600/1852)*(12*3600/1852)*(12*3600/1852-5.1*3600/1852)=7297.870257
#level,13 U^2(U-Ut)=(14*3600/1852)*(14*3600/1852)*(14*3600/1852-5.1*3600/1852)=12812.404263
#level,15 U^2(U-Ut)=(16*3600/1852)*(16*3600/1852)*(16*3600/1852-5.1*3600/1852)=20495.146099
#level,17 U^2(U-Ut)=(18*3600/1852)*(18*3600/1852)*(18*3600/1852-5.1*3600/1852)=30698.649884
#level,19 U^2(U-Ut)=(20*3600/1852)*(20*3600/1852)*(20*3600/1852-5.1*3600/1852)=43775.469735
#level,21 U^2(U-Ut)=(22*3600/1852)*(22*3600/1852)*(22*3600/1852-5.1*3600/1852)=60078.159773
#level,23 U^2(U-Ut)=(24*3600/1852)*(24*3600/1852)*(24*3600/1852-5.1*3600/1852)=79959.274115
#level,25 U^2(U-Ut)=(26*3600/1852)*(26*3600/1852)*(26*3600/1852-5.1*3600/1852)=103771.366881
#level,27 U^2(U-Ut)=(28*3600/1852)*(28*3600/1852)*(28*3600/1852-5.1*3600/1852)=131866.992188
#level,29 U^2(U-Ut)=(30*3600/1852)*(30*3600/1852)*(30*3600/1852-5.1*3600/1852)=164598.704156
#level,31 U^2(U-Ut)=(32*3600/1852)*(32*3600/1852)*(32*3600/1852-5.1*3600/1852)=202319.056903
#level,33 U^2(U-Ut)=(33*3600/1852)*(33*3600/1852)*(33*3600/1852-5.1*3600/1852)=223160.146731
#1 knot = 1 nautical mile/hour =1852m/hour=1852/3600m/s=0.5144m/s
#sellevel5.1
cdo -mulc,237.974030 -sellevel,5.1 era5_WS_setrtomiss_ifthen_SSE_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel5.1_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel5.1_"$((leap))".nc era5_DP_SSE_range5.1_7_"$((leap))".nc
#sellevel7
cdo -mulc,1363.209259 -sellevel,7 era5_WS_setrtomiss_ifthen_SSE_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel7_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel7_"$((leap))".nc era5_DP_SSE_range7_9_"$((leap))".nc
#sellevel9
cdo -mulc,3598.989961 -sellevel,9 era5_WS_setrtomiss_ifthen_SSE_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel9_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel9_"$((leap))".nc era5_DP_SSE_range9_11_"$((leap))".nc
#sellevel11
cdo -mulc,7297.870257 -sellevel,11 era5_WS_setrtomiss_ifthen_SSE_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel11_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel11_"$((leap))".nc era5_DP_SSE_range11_13_"$((leap))".nc
#sellevel13
cdo -mulc,12812.404263 -sellevel,13 era5_WS_setrtomiss_ifthen_SSE_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel13_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel13_"$((leap))".nc era5_DP_SSE_range13_15_"$((leap))".nc
#sellevel15
cdo -mulc,20495.146099 -sellevel,15 era5_WS_setrtomiss_ifthen_SSE_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel15_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel15_"$((leap))".nc era5_DP_SSE_range15_17_"$((leap))".nc
#sellevel17
cdo -mulc,30698.649884 -sellevel,17 era5_WS_setrtomiss_ifthen_SSE_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel17_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel17_"$((leap))".nc era5_DP_SSE_range17_19_"$((leap))".nc
#sellevel19
cdo -mulc,43775.469735 -sellevel,19 era5_WS_setrtomiss_ifthen_SSE_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel19_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel19_"$((leap))".nc era5_DP_SSE_range19_21_"$((leap))".nc
#sellevel21
cdo -mulc,60078.159773 -sellevel,21 era5_WS_setrtomiss_ifthen_SSE_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel21_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel21_"$((leap))".nc era5_DP_SSE_range21_23_"$((leap))".nc
#sellevel23
cdo -mulc,79959.274115 -sellevel,23 era5_WS_setrtomiss_ifthen_SSE_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel23_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel23_"$((leap))".nc era5_DP_SSE_range23_25_"$((leap))".nc
#sellevel25
cdo -mulc,103771.366881 -sellevel,25 era5_WS_setrtomiss_ifthen_SSE_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel25_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel25_"$((leap))".nc era5_DP_SSE_range25_27_"$((leap))".nc
#sellevel27
cdo -mulc,131866.992188 -sellevel,27 era5_WS_setrtomiss_ifthen_SSE_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel27_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel27_"$((leap))".nc era5_DP_SSE_range27_29_"$((leap))".nc
#sellevel29
cdo -mulc,164598.704156 -sellevel,29 era5_WS_setrtomiss_ifthen_SSE_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel29_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel29_"$((leap))".nc era5_DP_SSE_range29_31_"$((leap))".nc
#sellevel31
cdo -mulc,202319.056903 -sellevel,31 era5_WS_setrtomiss_ifthen_SSE_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel31_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel31_"$((leap))".nc era5_DP_SSE_range31_33_"$((leap))".nc
#sellevel33
cdo -mulc,223160.146731 -sellevel,33 era5_WS_setrtomiss_ifthen_SSE_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel33_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel33_"$((leap))".nc era5_DP_SSE_range33_inf_"$((leap))".nc
#enssum
cdo enssum era5_DP_SSE_range5.1_7_"$((leap))".nc era5_DP_SSE_range7_9_"$((leap))".nc era5_DP_SSE_range9_11_"$((leap))".nc era5_DP_SSE_range11_13_"$((leap))".nc era5_DP_SSE_range13_15_"$((leap))".nc era5_DP_SSE_range15_17_"$((leap))".nc era5_DP_SSE_range17_19_"$((leap))".nc era5_DP_SSE_range19_21_"$((leap))".nc era5_DP_SSE_range21_23_"$((leap))".nc era5_DP_SSE_range23_25_"$((leap))".nc era5_DP_SSE_range25_27_"$((leap))".nc era5_DP_SSE_range27_29_"$((leap))".nc era5_DP_SSE_range29_31_"$((leap))".nc era5_DP_SSE_range31_33_"$((leap))".nc era5_DP_SSE_range33_inf_"$((leap))".nc era5_DP_SSE_range_enssum_"$((leap))".nc
#change variable name into DP_SSE, in order to be used in the resultanting
cdo chname,WS,DP_SSE era5_DP_SSE_range_enssum_"$((leap))".nc era5_DP_SSE_range_enssum_chname_"$((leap))".nc
#delete intermediate results
rm -f era5_WD_ifthen_setvrange_SSE_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_SSE_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_SSE_histcount_divc_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_SSE_histcount_divc_setmisstoc_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel5.1_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel7_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel9_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel11_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel13_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel15_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel17_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel19_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel21_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel23_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel25_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel27_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel29_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel31_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel33_"$((leap))".nc
rm -f era5_DP_SSE_range5.1_7_"$((leap))".nc
rm -f era5_DP_SSE_range7_9_"$((leap))".nc
rm -f era5_DP_SSE_range9_11_"$((leap))".nc
rm -f era5_DP_SSE_range11_13_"$((leap))".nc
rm -f era5_DP_SSE_range13_15_"$((leap))".nc
rm -f era5_DP_SSE_range15_17_"$((leap))".nc
rm -f era5_DP_SSE_range17_19_"$((leap))".nc
rm -f era5_DP_SSE_range19_21_"$((leap))".nc
rm -f era5_DP_SSE_range21_23_"$((leap))".nc
rm -f era5_DP_SSE_range23_25_"$((leap))".nc
rm -f era5_DP_SSE_range25_27_"$((leap))".nc
rm -f era5_DP_SSE_range27_29_"$((leap))".nc
rm -f era5_DP_SSE_range29_31_"$((leap))".nc
rm -f era5_DP_SSE_range31_33_"$((leap))".nc
rm -f era5_DP_SSE_range33_inf_"$((leap))".nc

#S, -180＜S＜-168.75, 168.75≤S≤180, note that here uses setrtomiss
cdo setrtomiss,-168.75,168.7499999 era5_WD_ifthen_"$((leap))".nc era5_WD_ifthen_setrtomiss_S_"$((leap))".nc
#mask sand-moving wind speeds in the S azimuth
cdo ifthen era5_WD_ifthen_setrtomiss_S_"$((leap))".nc era5_WS_setrtomiss_"$((leap))".nc era5_WS_setrtomiss_ifthen_S_"$((leap))".nc
#2 m/s bins of sand-moving wind speeds in the S azimuth, 5.1m/s≤WS＜7m/s, 7m/s≤WS＜9m/s, 9m/s≤WS＜11m/s, 11m/s≤WS＜13m/s, 13m/s≤WS＜15m/s, 15m/s≤WS＜17m/s, 17m/s≤WS＜19m/s, 19m/s≤WS＜21m/s, 21m/s≤WS＜23m/s, 23m/s≤WS＜25m/s, 25m/s≤WS＜27m/s, 27m/s≤WS＜29m/s, 29m/s≤WS＜31m/s, 31m/s≤WS<33m/s, 33m/s≤WS
cdo histcount,5.1,6.9999999,8.9999999,10.9999999,12.9999999,14.9999999,16.9999999,18.9999999,20.9999999,22.9999999,24.9999999,26.9999999,28.9999999,30.9999999,32.9999999,inf era5_WS_setrtomiss_ifthen_S_"$((leap))".nc era5_WS_setrtomiss_ifthen_S_histcount_"$((leap))".nc
#the sand-moving wind frequency in the S azimuth, 8784 is the total hours for the “$leap_year”
cdo divc,8784 era5_WS_setrtomiss_ifthen_S_histcount_"$((leap))".nc era5_WS_setrtomiss_ifthen_S_histcount_divc_"$((leap))".nc
#setmisstoc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_S_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_S_histcount_divc_setmisstoc_"$((leap))".nc
#mulc
cdo mulc,100 era5_WS_setrtomiss_ifthen_S_histcount_divc_setmisstoc_"$((leap))".nc era5_WS_setrtomiss_ifthen_S_histcount_divc_setmisstoc_mulc_"$((leap))".nc
#weighting factor U^2(U-Ut), U is the mean wind speed，and they are 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 33m/s, respectively; and m/s needs to be conversed into knot. Notably, the value of U^2(U-Ut) is not divided by 100, as its subsquent multiplication represents a demensionless sand-moving wind frequency, rather than a percentage-based sand-moving wind frequency.
#level,5.1 U^2(U-Ut)=(6*3600/1852)*(6*3600/1852)*(6*3600/1852-5.1*3600/1852)=237.974030
#level,7 U^2(U-Ut)=(8*3600/1852)*(8*3600/1852)*(8*3600/1852-5.1*3600/1852)=1363.209259
#level,9 U^2(U-Ut)=(10*3600/1852)*(10*3600/1852)*(10*3600/1852-5.1*3600/1852)=3598.989961
#level,11 U^2(U-Ut)=(12*3600/1852)*(12*3600/1852)*(12*3600/1852-5.1*3600/1852)=7297.870257
#level,13 U^2(U-Ut)=(14*3600/1852)*(14*3600/1852)*(14*3600/1852-5.1*3600/1852)=12812.404263
#level,15 U^2(U-Ut)=(16*3600/1852)*(16*3600/1852)*(16*3600/1852-5.1*3600/1852)=20495.146099
#level,17 U^2(U-Ut)=(18*3600/1852)*(18*3600/1852)*(18*3600/1852-5.1*3600/1852)=30698.649884
#level,19 U^2(U-Ut)=(20*3600/1852)*(20*3600/1852)*(20*3600/1852-5.1*3600/1852)=43775.469735
#level,21 U^2(U-Ut)=(22*3600/1852)*(22*3600/1852)*(22*3600/1852-5.1*3600/1852)=60078.159773
#level,23 U^2(U-Ut)=(24*3600/1852)*(24*3600/1852)*(24*3600/1852-5.1*3600/1852)=79959.274115
#level,25 U^2(U-Ut)=(26*3600/1852)*(26*3600/1852)*(26*3600/1852-5.1*3600/1852)=103771.366881
#level,27 U^2(U-Ut)=(28*3600/1852)*(28*3600/1852)*(28*3600/1852-5.1*3600/1852)=131866.992188
#level,29 U^2(U-Ut)=(30*3600/1852)*(30*3600/1852)*(30*3600/1852-5.1*3600/1852)=164598.704156
#level,31 U^2(U-Ut)=(32*3600/1852)*(32*3600/1852)*(32*3600/1852-5.1*3600/1852)=202319.056903
#level,33 U^2(U-Ut)=(33*3600/1852)*(33*3600/1852)*(33*3600/1852-5.1*3600/1852)=223160.146731
#1 knot = 1 nautical mile/hour =1852m/hour=1852/3600m/s=0.5144m/s
#sellevel5.1
cdo -mulc,237.974030 -sellevel,5.1 era5_WS_setrtomiss_ifthen_S_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_S_histcount_divc_sellevel5.1_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_S_histcount_divc_sellevel5.1_"$((leap))".nc era5_DP_S_range5.1_7_"$((leap))".nc
#sellevel7
cdo -mulc,1363.209259 -sellevel,7 era5_WS_setrtomiss_ifthen_S_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_S_histcount_divc_sellevel7_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_S_histcount_divc_sellevel7_"$((leap))".nc era5_DP_S_range7_9_"$((leap))".nc
#sellevel9
cdo -mulc,3598.989961 -sellevel,9 era5_WS_setrtomiss_ifthen_S_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_S_histcount_divc_sellevel9_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_S_histcount_divc_sellevel9_"$((leap))".nc era5_DP_S_range9_11_"$((leap))".nc
#sellevel11
cdo -mulc,7297.870257 -sellevel,11 era5_WS_setrtomiss_ifthen_S_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_S_histcount_divc_sellevel11_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_S_histcount_divc_sellevel11_"$((leap))".nc era5_DP_S_range11_13_"$((leap))".nc
#sellevel13
cdo -mulc,12812.404263 -sellevel,13 era5_WS_setrtomiss_ifthen_S_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_S_histcount_divc_sellevel13_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_S_histcount_divc_sellevel13_"$((leap))".nc era5_DP_S_range13_15_"$((leap))".nc
#sellevel15
cdo -mulc,20495.146099 -sellevel,15 era5_WS_setrtomiss_ifthen_S_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_S_histcount_divc_sellevel15_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_S_histcount_divc_sellevel15_"$((leap))".nc era5_DP_S_range15_17_"$((leap))".nc
#sellevel17
cdo -mulc,30698.649884 -sellevel,17 era5_WS_setrtomiss_ifthen_S_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_S_histcount_divc_sellevel17_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_S_histcount_divc_sellevel17_"$((leap))".nc era5_DP_S_range17_19_"$((leap))".nc
#sellevel19
cdo -mulc,43775.469735 -sellevel,19 era5_WS_setrtomiss_ifthen_S_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_S_histcount_divc_sellevel19_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_S_histcount_divc_sellevel19_"$((leap))".nc era5_DP_S_range19_21_"$((leap))".nc
#sellevel21
cdo -mulc,60078.159773 -sellevel,21 era5_WS_setrtomiss_ifthen_S_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_S_histcount_divc_sellevel21_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_S_histcount_divc_sellevel21_"$((leap))".nc era5_DP_S_range21_23_"$((leap))".nc
#sellevel23
cdo -mulc,79959.274115 -sellevel,23 era5_WS_setrtomiss_ifthen_S_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_S_histcount_divc_sellevel23_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_S_histcount_divc_sellevel23_"$((leap))".nc era5_DP_S_range23_25_"$((leap))".nc
#sellevel25
cdo -mulc,103771.366881 -sellevel,25 era5_WS_setrtomiss_ifthen_S_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_S_histcount_divc_sellevel25_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_S_histcount_divc_sellevel25_"$((leap))".nc era5_DP_S_range25_27_"$((leap))".nc
#sellevel27
cdo -mulc,131866.992188 -sellevel,27 era5_WS_setrtomiss_ifthen_S_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_S_histcount_divc_sellevel27_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_S_histcount_divc_sellevel27_"$((leap))".nc era5_DP_S_range27_29_"$((leap))".nc
#sellevel29
cdo -mulc,164598.704156 -sellevel,29 era5_WS_setrtomiss_ifthen_S_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_S_histcount_divc_sellevel29_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_S_histcount_divc_sellevel29_"$((leap))".nc era5_DP_S_range29_31_"$((leap))".nc
#sellevel31
cdo -mulc,202319.056903 -sellevel,31 era5_WS_setrtomiss_ifthen_S_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_S_histcount_divc_sellevel31_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_S_histcount_divc_sellevel31_"$((leap))".nc era5_DP_S_range31_33_"$((leap))".nc
#sellevel33
cdo -mulc,223160.146731 -sellevel,33 era5_WS_setrtomiss_ifthen_S_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_S_histcount_divc_sellevel33_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_S_histcount_divc_sellevel33_"$((leap))".nc era5_DP_S_range33_inf_"$((leap))".nc
#enssum
cdo enssum era5_DP_S_range5.1_7_"$((leap))".nc era5_DP_S_range7_9_"$((leap))".nc era5_DP_S_range9_11_"$((leap))".nc era5_DP_S_range11_13_"$((leap))".nc era5_DP_S_range13_15_"$((leap))".nc era5_DP_S_range15_17_"$((leap))".nc era5_DP_S_range17_19_"$((leap))".nc era5_DP_S_range19_21_"$((leap))".nc era5_DP_S_range21_23_"$((leap))".nc era5_DP_S_range23_25_"$((leap))".nc era5_DP_S_range25_27_"$((leap))".nc era5_DP_S_range27_29_"$((leap))".nc era5_DP_S_range29_31_"$((leap))".nc era5_DP_S_range31_33_"$((leap))".nc era5_DP_S_range33_inf_"$((leap))".nc era5_DP_S_range_enssum_"$((leap))".nc
#change variable name into DP_S, in order to be used in the resultanting
cdo chname,WS,DP_S era5_DP_S_range_enssum_"$((leap))".nc era5_DP_S_range_enssum_chname_"$((leap))".nc
#delete intermediate results
rm -f era5_WD_ifthen_setrtomiss_S_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_S_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_S_histcount_divc_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_S_histcount_divc_setmisstoc_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_S_histcount_divc_sellevel5.1_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_S_histcount_divc_sellevel7_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_S_histcount_divc_sellevel9_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_S_histcount_divc_sellevel11_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_S_histcount_divc_sellevel13_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_S_histcount_divc_sellevel15_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_S_histcount_divc_sellevel17_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_S_histcount_divc_sellevel19_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_S_histcount_divc_sellevel21_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_S_histcount_divc_sellevel23_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_S_histcount_divc_sellevel25_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_S_histcount_divc_sellevel27_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_S_histcount_divc_sellevel29_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_S_histcount_divc_sellevel31_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_S_histcount_divc_sellevel33_"$((leap))".nc
rm -f era5_DP_S_range5.1_7_"$((leap))".nc
rm -f era5_DP_S_range7_9_"$((leap))".nc
rm -f era5_DP_S_range9_11_"$((leap))".nc
rm -f era5_DP_S_range11_13_"$((leap))".nc
rm -f era5_DP_S_range13_15_"$((leap))".nc
rm -f era5_DP_S_range15_17_"$((leap))".nc
rm -f era5_DP_S_range17_19_"$((leap))".nc
rm -f era5_DP_S_range19_21_"$((leap))".nc
rm -f era5_DP_S_range21_23_"$((leap))".nc
rm -f era5_DP_S_range23_25_"$((leap))".nc
rm -f era5_DP_S_range25_27_"$((leap))".nc
rm -f era5_DP_S_range27_29_"$((leap))".nc
rm -f era5_DP_S_range29_31_"$((leap))".nc
rm -f era5_DP_S_range31_33_"$((leap))".nc
rm -f era5_DP_S_range33_inf_"$((leap))".nc

#SSW, -168.75≤SSW＜-146.25
cdo setvrange,-168.75,-146.2500001 era5_WD_ifthen_"$((leap))".nc era5_WD_ifthen_setvrange_SSW_"$((leap))".nc
#mask sand-moving wind speeds in the SSW azimuth
cdo ifthen era5_WD_ifthen_setvrange_SSW_"$((leap))".nc era5_WS_setrtomiss_"$((leap))".nc era5_WS_setrtomiss_ifthen_SSW_"$((leap))".nc
#2 m/s bins of sand-moving wind speeds in the SSW azimuth, 5.1m/s≤WS＜7m/s, 7m/s≤WS＜9m/s, 9m/s≤WS＜11m/s, 11m/s≤WS＜13m/s, 13m/s≤WS＜15m/s, 15m/s≤WS＜17m/s, 17m/s≤WS＜19m/s, 19m/s≤WS＜21m/s, 21m/s≤WS＜23m/s, 23m/s≤WS＜25m/s, 25m/s≤WS＜27m/s, 27m/s≤WS＜29m/s, 29m/s≤WS＜31m/s, 31m/s≤WS<33m/s, 33m/s≤WS
cdo histcount,5.1,6.9999999,8.9999999,10.9999999,12.9999999,14.9999999,16.9999999,18.9999999,20.9999999,22.9999999,24.9999999,26.9999999,28.9999999,30.9999999,32.9999999,inf era5_WS_setrtomiss_ifthen_SSW_"$((leap))".nc era5_WS_setrtomiss_ifthen_SSW_histcount_"$((leap))".nc
#the sand-moving wind frequency in the SSW azimuth, 8784 is the total hours for the “$leap_year”
cdo divc,8784 era5_WS_setrtomiss_ifthen_SSW_histcount_"$((leap))".nc era5_WS_setrtomiss_ifthen_SSW_histcount_divc_"$((leap))".nc
#setmisstoc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SSW_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_SSW_histcount_divc_setmisstoc_"$((leap))".nc
#mulc
cdo mulc,100 era5_WS_setrtomiss_ifthen_SSW_histcount_divc_setmisstoc_"$((leap))".nc era5_WS_setrtomiss_ifthen_SSW_histcount_divc_setmisstoc_mulc_"$((leap))".nc
#weighting factor U^2(U-Ut), U is the mean wind speed，and they are 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 33m/s, respectively; and m/s needs to be conversed into knot. Notably, the value of U^2(U-Ut) is not divided by 100, as its subsquent multiplication represents a demensionless sand-moving wind frequency, rather than a percentage-based sand-moving wind frequency.
#level,5.1 U^2(U-Ut)=(6*3600/1852)*(6*3600/1852)*(6*3600/1852-5.1*3600/1852)=237.974030
#level,7 U^2(U-Ut)=(8*3600/1852)*(8*3600/1852)*(8*3600/1852-5.1*3600/1852)=1363.209259
#level,9 U^2(U-Ut)=(10*3600/1852)*(10*3600/1852)*(10*3600/1852-5.1*3600/1852)=3598.989961
#level,11 U^2(U-Ut)=(12*3600/1852)*(12*3600/1852)*(12*3600/1852-5.1*3600/1852)=7297.870257
#level,13 U^2(U-Ut)=(14*3600/1852)*(14*3600/1852)*(14*3600/1852-5.1*3600/1852)=12812.404263
#level,15 U^2(U-Ut)=(16*3600/1852)*(16*3600/1852)*(16*3600/1852-5.1*3600/1852)=20495.146099
#level,17 U^2(U-Ut)=(18*3600/1852)*(18*3600/1852)*(18*3600/1852-5.1*3600/1852)=30698.649884
#level,19 U^2(U-Ut)=(20*3600/1852)*(20*3600/1852)*(20*3600/1852-5.1*3600/1852)=43775.469735
#level,21 U^2(U-Ut)=(22*3600/1852)*(22*3600/1852)*(22*3600/1852-5.1*3600/1852)=60078.159773
#level,23 U^2(U-Ut)=(24*3600/1852)*(24*3600/1852)*(24*3600/1852-5.1*3600/1852)=79959.274115
#level,25 U^2(U-Ut)=(26*3600/1852)*(26*3600/1852)*(26*3600/1852-5.1*3600/1852)=103771.366881
#level,27 U^2(U-Ut)=(28*3600/1852)*(28*3600/1852)*(28*3600/1852-5.1*3600/1852)=131866.992188
#level,29 U^2(U-Ut)=(30*3600/1852)*(30*3600/1852)*(30*3600/1852-5.1*3600/1852)=164598.704156
#level,31 U^2(U-Ut)=(32*3600/1852)*(32*3600/1852)*(32*3600/1852-5.1*3600/1852)=202319.056903
#level,33 U^2(U-Ut)=(33*3600/1852)*(33*3600/1852)*(33*3600/1852-5.1*3600/1852)=223160.146731
#1 knot = 1 nautical mile/hour =1852m/hour=1852/3600m/s=0.5144m/s
#sellevel5.1
cdo -mulc,237.974030 -sellevel,5.1 era5_WS_setrtomiss_ifthen_SSW_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel5.1_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel5.1_"$((leap))".nc era5_DP_SSW_range5.1_7_"$((leap))".nc
#sellevel7
cdo -mulc,1363.209259 -sellevel,7 era5_WS_setrtomiss_ifthen_SSW_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel7_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel7_"$((leap))".nc era5_DP_SSW_range7_9_"$((leap))".nc
#sellevel9
cdo -mulc,3598.989961 -sellevel,9 era5_WS_setrtomiss_ifthen_SSW_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel9_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel9_"$((leap))".nc era5_DP_SSW_range9_11_"$((leap))".nc
#sellevel11
cdo -mulc,7297.870257 -sellevel,11 era5_WS_setrtomiss_ifthen_SSW_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel11_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel11_"$((leap))".nc era5_DP_SSW_range11_13_"$((leap))".nc
#sellevel13
cdo -mulc,12812.404263 -sellevel,13 era5_WS_setrtomiss_ifthen_SSW_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel13_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel13_"$((leap))".nc era5_DP_SSW_range13_15_"$((leap))".nc
#sellevel15
cdo -mulc,20495.146099 -sellevel,15 era5_WS_setrtomiss_ifthen_SSW_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel15_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel15_"$((leap))".nc era5_DP_SSW_range15_17_"$((leap))".nc
#sellevel17
cdo -mulc,30698.649884 -sellevel,17 era5_WS_setrtomiss_ifthen_SSW_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel17_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel17_"$((leap))".nc era5_DP_SSW_range17_19_"$((leap))".nc
#sellevel19
cdo -mulc,43775.469735 -sellevel,19 era5_WS_setrtomiss_ifthen_SSW_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel19_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel19_"$((leap))".nc era5_DP_SSW_range19_21_"$((leap))".nc
#sellevel21
cdo -mulc,60078.159773 -sellevel,21 era5_WS_setrtomiss_ifthen_SSW_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel21_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel21_"$((leap))".nc era5_DP_SSW_range21_23_"$((leap))".nc
#sellevel23
cdo -mulc,79959.274115 -sellevel,23 era5_WS_setrtomiss_ifthen_SSW_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel23_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel23_"$((leap))".nc era5_DP_SSW_range23_25_"$((leap))".nc
#sellevel25
cdo -mulc,103771.366881 -sellevel,25 era5_WS_setrtomiss_ifthen_SSW_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel25_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel25_"$((leap))".nc era5_DP_SSW_range25_27_"$((leap))".nc
#sellevel27
cdo -mulc,131866.992188 -sellevel,27 era5_WS_setrtomiss_ifthen_SSW_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel27_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel27_"$((leap))".nc era5_DP_SSW_range27_29_"$((leap))".nc
#sellevel29
cdo -mulc,164598.704156 -sellevel,29 era5_WS_setrtomiss_ifthen_SSW_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel29_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel29_"$((leap))".nc era5_DP_SSW_range29_31_"$((leap))".nc
#sellevel31
cdo -mulc,202319.056903 -sellevel,31 era5_WS_setrtomiss_ifthen_SSW_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel31_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel31_"$((leap))".nc era5_DP_SSW_range31_33_"$((leap))".nc
#sellevel33
cdo -mulc,223160.146731 -sellevel,33 era5_WS_setrtomiss_ifthen_SSW_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel33_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel33_"$((leap))".nc era5_DP_SSW_range33_inf_"$((leap))".nc
#enssum
cdo enssum era5_DP_SSW_range5.1_7_"$((leap))".nc era5_DP_SSW_range7_9_"$((leap))".nc era5_DP_SSW_range9_11_"$((leap))".nc era5_DP_SSW_range11_13_"$((leap))".nc era5_DP_SSW_range13_15_"$((leap))".nc era5_DP_SSW_range15_17_"$((leap))".nc era5_DP_SSW_range17_19_"$((leap))".nc era5_DP_SSW_range19_21_"$((leap))".nc era5_DP_SSW_range21_23_"$((leap))".nc era5_DP_SSW_range23_25_"$((leap))".nc era5_DP_SSW_range25_27_"$((leap))".nc era5_DP_SSW_range27_29_"$((leap))".nc era5_DP_SSW_range29_31_"$((leap))".nc era5_DP_SSW_range31_33_"$((leap))".nc era5_DP_SSW_range33_inf_"$((leap))".nc era5_DP_SSW_range_enssum_"$((leap))".nc
#change variable name into DP_SSW, in order to be used in the resultanting
cdo chname,WS,DP_SSW era5_DP_SSW_range_enssum_"$((leap))".nc era5_DP_SSW_range_enssum_chname_"$((leap))".nc
#delete intermediate results
rm -f era5_WD_ifthen_setvrange_SSW_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_SSW_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_SSW_histcount_divc_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_SSW_histcount_divc_setmisstoc_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel5.1_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel7_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel9_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel11_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel13_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel15_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel17_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel19_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel21_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel23_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel25_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel27_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel29_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel31_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel33_"$((leap))".nc
rm -f era5_DP_SSW_range5.1_7_"$((leap))".nc
rm -f era5_DP_SSW_range7_9_"$((leap))".nc
rm -f era5_DP_SSW_range9_11_"$((leap))".nc
rm -f era5_DP_SSW_range11_13_"$((leap))".nc
rm -f era5_DP_SSW_range13_15_"$((leap))".nc
rm -f era5_DP_SSW_range15_17_"$((leap))".nc
rm -f era5_DP_SSW_range17_19_"$((leap))".nc
rm -f era5_DP_SSW_range19_21_"$((leap))".nc
rm -f era5_DP_SSW_range21_23_"$((leap))".nc
rm -f era5_DP_SSW_range23_25_"$((leap))".nc
rm -f era5_DP_SSW_range25_27_"$((leap))".nc
rm -f era5_DP_SSW_range27_29_"$((leap))".nc
rm -f era5_DP_SSW_range29_31_"$((leap))".nc
rm -f era5_DP_SSW_range31_33_"$((leap))".nc
rm -f era5_DP_SSW_range33_inf_"$((leap))".nc

#SW, -146.25≤SW＜-123.75
cdo setvrange,-146.25,-123.7500001 era5_WD_ifthen_"$((leap))".nc era5_WD_ifthen_setvrange_SW_"$((leap))".nc
#mask sand-moving wind speeds in the SW azimuth
cdo ifthen era5_WD_ifthen_setvrange_SW_"$((leap))".nc era5_WS_setrtomiss_"$((leap))".nc era5_WS_setrtomiss_ifthen_SW_"$((leap))".nc
#2 m/s bins of sand-moving wind speeds in the SW azimuth, 5.1m/s≤WS＜7m/s, 7m/s≤WS＜9m/s, 9m/s≤WS＜11m/s, 11m/s≤WS＜13m/s, 13m/s≤WS＜15m/s, 15m/s≤WS＜17m/s, 17m/s≤WS＜19m/s, 19m/s≤WS＜21m/s, 21m/s≤WS＜23m/s, 23m/s≤WS＜25m/s, 25m/s≤WS＜27m/s, 27m/s≤WS＜29m/s, 29m/s≤WS＜31m/s, 31m/s≤WS<33m/s, 33m/s≤WS
cdo histcount,5.1,6.9999999,8.9999999,10.9999999,12.9999999,14.9999999,16.9999999,18.9999999,20.9999999,22.9999999,24.9999999,26.9999999,28.9999999,30.9999999,32.9999999,inf era5_WS_setrtomiss_ifthen_SW_"$((leap))".nc era5_WS_setrtomiss_ifthen_SW_histcount_"$((leap))".nc
#the sand-moving wind frequency in the SW azimuth, 8784 is the total hours for the “$leap_year”
cdo divc,8784 era5_WS_setrtomiss_ifthen_SW_histcount_"$((leap))".nc era5_WS_setrtomiss_ifthen_SW_histcount_divc_"$((leap))".nc
#setmisstoc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SW_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_SW_histcount_divc_setmisstoc_"$((leap))".nc
#mulc
cdo mulc,100 era5_WS_setrtomiss_ifthen_SW_histcount_divc_setmisstoc_"$((leap))".nc era5_WS_setrtomiss_ifthen_SW_histcount_divc_setmisstoc_mulc_"$((leap))".nc
#weighting factor U^2(U-Ut), U is the mean wind speed，and they are 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 33m/s, respectively; and m/s needs to be conversed into knot. Notably, the value of U^2(U-Ut) is not divided by 100, as its subsquent multiplication represents a demensionless sand-moving wind frequency, rather than a percentage-based sand-moving wind frequency.
#level,5.1 U^2(U-Ut)=(6*3600/1852)*(6*3600/1852)*(6*3600/1852-5.1*3600/1852)=237.974030
#level,7 U^2(U-Ut)=(8*3600/1852)*(8*3600/1852)*(8*3600/1852-5.1*3600/1852)=1363.209259
#level,9 U^2(U-Ut)=(10*3600/1852)*(10*3600/1852)*(10*3600/1852-5.1*3600/1852)=3598.989961
#level,11 U^2(U-Ut)=(12*3600/1852)*(12*3600/1852)*(12*3600/1852-5.1*3600/1852)=7297.870257
#level,13 U^2(U-Ut)=(14*3600/1852)*(14*3600/1852)*(14*3600/1852-5.1*3600/1852)=12812.404263
#level,15 U^2(U-Ut)=(16*3600/1852)*(16*3600/1852)*(16*3600/1852-5.1*3600/1852)=20495.146099
#level,17 U^2(U-Ut)=(18*3600/1852)*(18*3600/1852)*(18*3600/1852-5.1*3600/1852)=30698.649884
#level,19 U^2(U-Ut)=(20*3600/1852)*(20*3600/1852)*(20*3600/1852-5.1*3600/1852)=43775.469735
#level,21 U^2(U-Ut)=(22*3600/1852)*(22*3600/1852)*(22*3600/1852-5.1*3600/1852)=60078.159773
#level,23 U^2(U-Ut)=(24*3600/1852)*(24*3600/1852)*(24*3600/1852-5.1*3600/1852)=79959.274115
#level,25 U^2(U-Ut)=(26*3600/1852)*(26*3600/1852)*(26*3600/1852-5.1*3600/1852)=103771.366881
#level,27 U^2(U-Ut)=(28*3600/1852)*(28*3600/1852)*(28*3600/1852-5.1*3600/1852)=131866.992188
#level,29 U^2(U-Ut)=(30*3600/1852)*(30*3600/1852)*(30*3600/1852-5.1*3600/1852)=164598.704156
#level,31 U^2(U-Ut)=(32*3600/1852)*(32*3600/1852)*(32*3600/1852-5.1*3600/1852)=202319.056903
#level,33 U^2(U-Ut)=(33*3600/1852)*(33*3600/1852)*(33*3600/1852-5.1*3600/1852)=223160.146731
#1 knot = 1 nautical mile/hour =1852m/hour=1852/3600m/s=0.5144m/s
#sellevel5.1
cdo -mulc,237.974030 -sellevel,5.1 era5_WS_setrtomiss_ifthen_SW_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel5.1_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel5.1_"$((leap))".nc era5_DP_SW_range5.1_7_"$((leap))".nc
#sellevel7
cdo -mulc,1363.209259 -sellevel,7 era5_WS_setrtomiss_ifthen_SW_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel7_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel7_"$((leap))".nc era5_DP_SW_range7_9_"$((leap))".nc
#sellevel9
cdo -mulc,3598.989961 -sellevel,9 era5_WS_setrtomiss_ifthen_SW_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel9_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel9_"$((leap))".nc era5_DP_SW_range9_11_"$((leap))".nc
#sellevel11
cdo -mulc,7297.870257 -sellevel,11 era5_WS_setrtomiss_ifthen_SW_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel11_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel11_"$((leap))".nc era5_DP_SW_range11_13_"$((leap))".nc
#sellevel13
cdo -mulc,12812.404263 -sellevel,13 era5_WS_setrtomiss_ifthen_SW_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel13_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel13_"$((leap))".nc era5_DP_SW_range13_15_"$((leap))".nc
#sellevel15
cdo -mulc,20495.146099 -sellevel,15 era5_WS_setrtomiss_ifthen_SW_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel15_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel15_"$((leap))".nc era5_DP_SW_range15_17_"$((leap))".nc
#sellevel17
cdo -mulc,30698.649884 -sellevel,17 era5_WS_setrtomiss_ifthen_SW_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel17_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel17_"$((leap))".nc era5_DP_SW_range17_19_"$((leap))".nc
#sellevel19
cdo -mulc,43775.469735 -sellevel,19 era5_WS_setrtomiss_ifthen_SW_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel19_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel19_"$((leap))".nc era5_DP_SW_range19_21_"$((leap))".nc
#sellevel21
cdo -mulc,60078.159773 -sellevel,21 era5_WS_setrtomiss_ifthen_SW_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel21_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel21_"$((leap))".nc era5_DP_SW_range21_23_"$((leap))".nc
#sellevel23
cdo -mulc,79959.274115 -sellevel,23 era5_WS_setrtomiss_ifthen_SW_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel23_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel23_"$((leap))".nc era5_DP_SW_range23_25_"$((leap))".nc
#sellevel25
cdo -mulc,103771.366881 -sellevel,25 era5_WS_setrtomiss_ifthen_SW_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel25_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel25_"$((leap))".nc era5_DP_SW_range25_27_"$((leap))".nc
#sellevel27
cdo -mulc,131866.992188 -sellevel,27 era5_WS_setrtomiss_ifthen_SW_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel27_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel27_"$((leap))".nc era5_DP_SW_range27_29_"$((leap))".nc
#sellevel29
cdo -mulc,164598.704156 -sellevel,29 era5_WS_setrtomiss_ifthen_SW_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel29_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel29_"$((leap))".nc era5_DP_SW_range29_31_"$((leap))".nc
#sellevel31
cdo -mulc,202319.056903 -sellevel,31 era5_WS_setrtomiss_ifthen_SW_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel31_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel31_"$((leap))".nc era5_DP_SW_range31_33_"$((leap))".nc
#sellevel33
cdo -mulc,223160.146731 -sellevel,33 era5_WS_setrtomiss_ifthen_SW_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel33_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel33_"$((leap))".nc era5_DP_SW_range33_inf_"$((leap))".nc
#enssum
cdo enssum era5_DP_SW_range5.1_7_"$((leap))".nc era5_DP_SW_range7_9_"$((leap))".nc era5_DP_SW_range9_11_"$((leap))".nc era5_DP_SW_range11_13_"$((leap))".nc era5_DP_SW_range13_15_"$((leap))".nc era5_DP_SW_range15_17_"$((leap))".nc era5_DP_SW_range17_19_"$((leap))".nc era5_DP_SW_range19_21_"$((leap))".nc era5_DP_SW_range21_23_"$((leap))".nc era5_DP_SW_range23_25_"$((leap))".nc era5_DP_SW_range25_27_"$((leap))".nc era5_DP_SW_range27_29_"$((leap))".nc era5_DP_SW_range29_31_"$((leap))".nc era5_DP_SW_range31_33_"$((leap))".nc era5_DP_SW_range33_inf_"$((leap))".nc era5_DP_SW_range_enssum_"$((leap))".nc
#change variable name into DP_SW, in order to be used in the resultanting
cdo chname,WS,DP_SW era5_DP_SW_range_enssum_"$((leap))".nc era5_DP_SW_range_enssum_chname_"$((leap))".nc
#delete intermediate results
rm -f era5_WD_ifthen_setvrange_SW_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_SW_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_SW_histcount_divc_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_SW_histcount_divc_setmisstoc_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel5.1_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel7_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel9_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel11_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel13_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel15_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel17_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel19_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel21_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel23_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel25_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel27_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel29_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel31_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel33_"$((leap))".nc
rm -f era5_DP_SW_range5.1_7_"$((leap))".nc
rm -f era5_DP_SW_range7_9_"$((leap))".nc
rm -f era5_DP_SW_range9_11_"$((leap))".nc
rm -f era5_DP_SW_range11_13_"$((leap))".nc
rm -f era5_DP_SW_range13_15_"$((leap))".nc
rm -f era5_DP_SW_range15_17_"$((leap))".nc
rm -f era5_DP_SW_range17_19_"$((leap))".nc
rm -f era5_DP_SW_range19_21_"$((leap))".nc
rm -f era5_DP_SW_range21_23_"$((leap))".nc
rm -f era5_DP_SW_range23_25_"$((leap))".nc
rm -f era5_DP_SW_range25_27_"$((leap))".nc
rm -f era5_DP_SW_range27_29_"$((leap))".nc
rm -f era5_DP_SW_range29_31_"$((leap))".nc
rm -f era5_DP_SW_range31_33_"$((leap))".nc
rm -f era5_DP_SW_range33_inf_"$((leap))".nc

#WSW, -123.75≤WSW＜-101.25
cdo setvrange,-123.75,-101.2500001 era5_WD_ifthen_"$((leap))".nc era5_WD_ifthen_setvrange_WSW_"$((leap))".nc
#mask sand-moving wind speeds in the WSW azimuth
cdo ifthen era5_WD_ifthen_setvrange_WSW_"$((leap))".nc era5_WS_setrtomiss_"$((leap))".nc era5_WS_setrtomiss_ifthen_WSW_"$((leap))".nc
#2 m/s bins of sand-moving wind speeds in the WSW azimuth, 5.1m/s≤WS＜7m/s, 7m/s≤WS＜9m/s, 9m/s≤WS＜11m/s, 11m/s≤WS＜13m/s, 13m/s≤WS＜15m/s, 15m/s≤WS＜17m/s, 17m/s≤WS＜19m/s, 19m/s≤WS＜21m/s, 21m/s≤WS＜23m/s, 23m/s≤WS＜25m/s, 25m/s≤WS＜27m/s, 27m/s≤WS＜29m/s, 29m/s≤WS＜31m/s, 31m/s≤WS<33m/s, 33m/s≤WS
cdo histcount,5.1,6.9999999,8.9999999,10.9999999,12.9999999,14.9999999,16.9999999,18.9999999,20.9999999,22.9999999,24.9999999,26.9999999,28.9999999,30.9999999,32.9999999,inf era5_WS_setrtomiss_ifthen_WSW_"$((leap))".nc era5_WS_setrtomiss_ifthen_WSW_histcount_"$((leap))".nc
#the sand-moving wind frequency in the WSW azimuth, 8784 is the total hours for the “$leap_year”
cdo divc,8784 era5_WS_setrtomiss_ifthen_WSW_histcount_"$((leap))".nc era5_WS_setrtomiss_ifthen_WSW_histcount_divc_"$((leap))".nc
#setmisstoc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_WSW_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_WSW_histcount_divc_setmisstoc_"$((leap))".nc
#mulc
cdo mulc,100 era5_WS_setrtomiss_ifthen_WSW_histcount_divc_setmisstoc_"$((leap))".nc era5_WS_setrtomiss_ifthen_WSW_histcount_divc_setmisstoc_mulc_"$((leap))".nc
#weighting factor U^2(U-Ut), U is the mean wind speed，and they are 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 33m/s, respectively; and m/s needs to be conversed into knot. Notably, the value of U^2(U-Ut) is not divided by 100, as its subsquent multiplication represents a demensionless sand-moving wind frequency, rather than a percentage-based sand-moving wind frequency.
#level,5.1 U^2(U-Ut)=(6*3600/1852)*(6*3600/1852)*(6*3600/1852-5.1*3600/1852)=237.974030
#level,7 U^2(U-Ut)=(8*3600/1852)*(8*3600/1852)*(8*3600/1852-5.1*3600/1852)=1363.209259
#level,9 U^2(U-Ut)=(10*3600/1852)*(10*3600/1852)*(10*3600/1852-5.1*3600/1852)=3598.989961
#level,11 U^2(U-Ut)=(12*3600/1852)*(12*3600/1852)*(12*3600/1852-5.1*3600/1852)=7297.870257
#level,13 U^2(U-Ut)=(14*3600/1852)*(14*3600/1852)*(14*3600/1852-5.1*3600/1852)=12812.404263
#level,15 U^2(U-Ut)=(16*3600/1852)*(16*3600/1852)*(16*3600/1852-5.1*3600/1852)=20495.146099
#level,17 U^2(U-Ut)=(18*3600/1852)*(18*3600/1852)*(18*3600/1852-5.1*3600/1852)=30698.649884
#level,19 U^2(U-Ut)=(20*3600/1852)*(20*3600/1852)*(20*3600/1852-5.1*3600/1852)=43775.469735
#level,21 U^2(U-Ut)=(22*3600/1852)*(22*3600/1852)*(22*3600/1852-5.1*3600/1852)=60078.159773
#level,23 U^2(U-Ut)=(24*3600/1852)*(24*3600/1852)*(24*3600/1852-5.1*3600/1852)=79959.274115
#level,25 U^2(U-Ut)=(26*3600/1852)*(26*3600/1852)*(26*3600/1852-5.1*3600/1852)=103771.366881
#level,27 U^2(U-Ut)=(28*3600/1852)*(28*3600/1852)*(28*3600/1852-5.1*3600/1852)=131866.992188
#level,29 U^2(U-Ut)=(30*3600/1852)*(30*3600/1852)*(30*3600/1852-5.1*3600/1852)=164598.704156
#level,31 U^2(U-Ut)=(32*3600/1852)*(32*3600/1852)*(32*3600/1852-5.1*3600/1852)=202319.056903
#level,33 U^2(U-Ut)=(33*3600/1852)*(33*3600/1852)*(33*3600/1852-5.1*3600/1852)=223160.146731
#1 knot = 1 nautical mile/hour =1852m/hour=1852/3600m/s=0.5144m/s
#sellevel5.1
cdo -mulc,237.974030 -sellevel,5.1 era5_WS_setrtomiss_ifthen_WSW_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel5.1_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel5.1_"$((leap))".nc era5_DP_WSW_range5.1_7_"$((leap))".nc
#sellevel7
cdo -mulc,1363.209259 -sellevel,7 era5_WS_setrtomiss_ifthen_WSW_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel7_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel7_"$((leap))".nc era5_DP_WSW_range7_9_"$((leap))".nc
#sellevel9
cdo -mulc,3598.989961 -sellevel,9 era5_WS_setrtomiss_ifthen_WSW_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel9_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel9_"$((leap))".nc era5_DP_WSW_range9_11_"$((leap))".nc
#sellevel11
cdo -mulc,7297.870257 -sellevel,11 era5_WS_setrtomiss_ifthen_WSW_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel11_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel11_"$((leap))".nc era5_DP_WSW_range11_13_"$((leap))".nc
#sellevel13
cdo -mulc,12812.404263 -sellevel,13 era5_WS_setrtomiss_ifthen_WSW_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel13_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel13_"$((leap))".nc era5_DP_WSW_range13_15_"$((leap))".nc
#sellevel15
cdo -mulc,20495.146099 -sellevel,15 era5_WS_setrtomiss_ifthen_WSW_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel15_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel15_"$((leap))".nc era5_DP_WSW_range15_17_"$((leap))".nc
#sellevel17
cdo -mulc,30698.649884 -sellevel,17 era5_WS_setrtomiss_ifthen_WSW_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel17_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel17_"$((leap))".nc era5_DP_WSW_range17_19_"$((leap))".nc
#sellevel19
cdo -mulc,43775.469735 -sellevel,19 era5_WS_setrtomiss_ifthen_WSW_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel19_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel19_"$((leap))".nc era5_DP_WSW_range19_21_"$((leap))".nc
#sellevel21
cdo -mulc,60078.159773 -sellevel,21 era5_WS_setrtomiss_ifthen_WSW_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel21_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel21_"$((leap))".nc era5_DP_WSW_range21_23_"$((leap))".nc
#sellevel23
cdo -mulc,79959.274115 -sellevel,23 era5_WS_setrtomiss_ifthen_WSW_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel23_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel23_"$((leap))".nc era5_DP_WSW_range23_25_"$((leap))".nc
#sellevel25
cdo -mulc,103771.366881 -sellevel,25 era5_WS_setrtomiss_ifthen_WSW_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel25_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel25_"$((leap))".nc era5_DP_WSW_range25_27_"$((leap))".nc
#sellevel27
cdo -mulc,131866.992188 -sellevel,27 era5_WS_setrtomiss_ifthen_WSW_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel27_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel27_"$((leap))".nc era5_DP_WSW_range27_29_"$((leap))".nc
#sellevel29
cdo -mulc,164598.704156 -sellevel,29 era5_WS_setrtomiss_ifthen_WSW_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel29_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel29_"$((leap))".nc era5_DP_WSW_range29_31_"$((leap))".nc
#sellevel31
cdo -mulc,202319.056903 -sellevel,31 era5_WS_setrtomiss_ifthen_WSW_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel31_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel31_"$((leap))".nc era5_DP_WSW_range31_33_"$((leap))".nc
#sellevel33
cdo -mulc,223160.146731 -sellevel,33 era5_WS_setrtomiss_ifthen_WSW_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel33_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel33_"$((leap))".nc era5_DP_WSW_range33_inf_"$((leap))".nc
#enssum
cdo enssum era5_DP_WSW_range5.1_7_"$((leap))".nc era5_DP_WSW_range7_9_"$((leap))".nc era5_DP_WSW_range9_11_"$((leap))".nc era5_DP_WSW_range11_13_"$((leap))".nc era5_DP_WSW_range13_15_"$((leap))".nc era5_DP_WSW_range15_17_"$((leap))".nc era5_DP_WSW_range17_19_"$((leap))".nc era5_DP_WSW_range19_21_"$((leap))".nc era5_DP_WSW_range21_23_"$((leap))".nc era5_DP_WSW_range23_25_"$((leap))".nc era5_DP_WSW_range25_27_"$((leap))".nc era5_DP_WSW_range27_29_"$((leap))".nc era5_DP_WSW_range29_31_"$((leap))".nc era5_DP_WSW_range31_33_"$((leap))".nc era5_DP_WSW_range33_inf_"$((leap))".nc era5_DP_WSW_range_enssum_"$((leap))".nc
#change variable name into DP_WSW, in order to be used in the resultanting
cdo chname,WS,DP_WSW era5_DP_WSW_range_enssum_"$((leap))".nc era5_DP_WSW_range_enssum_chname_"$((leap))".nc
#delete intermediate results
rm -f era5_WD_ifthen_setvrange_WSW_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_WSW_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_WSW_histcount_divc_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_WSW_histcount_divc_setmisstoc_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel5.1_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel7_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel9_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel11_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel13_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel15_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel17_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel19_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel21_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel23_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel25_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel27_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel29_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel31_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel33_"$((leap))".nc
rm -f era5_DP_WSW_range5.1_7_"$((leap))".nc
rm -f era5_DP_WSW_range7_9_"$((leap))".nc
rm -f era5_DP_WSW_range9_11_"$((leap))".nc
rm -f era5_DP_WSW_range11_13_"$((leap))".nc
rm -f era5_DP_WSW_range13_15_"$((leap))".nc
rm -f era5_DP_WSW_range15_17_"$((leap))".nc
rm -f era5_DP_WSW_range17_19_"$((leap))".nc
rm -f era5_DP_WSW_range19_21_"$((leap))".nc
rm -f era5_DP_WSW_range21_23_"$((leap))".nc
rm -f era5_DP_WSW_range23_25_"$((leap))".nc
rm -f era5_DP_WSW_range25_27_"$((leap))".nc
rm -f era5_DP_WSW_range27_29_"$((leap))".nc
rm -f era5_DP_WSW_range29_31_"$((leap))".nc
rm -f era5_DP_WSW_range31_33_"$((leap))".nc
rm -f era5_DP_WSW_range33_inf_"$((leap))".nc

#W, -101.25≤W＜-78.75
cdo setvrange,-101.25,-78.7500001 era5_WD_ifthen_"$((leap))".nc era5_WD_ifthen_setvrange_W_"$((leap))".nc
#mask sand-moving wind speeds in the W azimuth
cdo ifthen era5_WD_ifthen_setvrange_W_"$((leap))".nc era5_WS_setrtomiss_"$((leap))".nc era5_WS_setrtomiss_ifthen_W_"$((leap))".nc
#2 m/s bins of sand-moving wind speeds in the W azimuth, 5.1m/s≤WS＜7m/s, 7m/s≤WS＜9m/s, 9m/s≤WS＜11m/s, 11m/s≤WS＜13m/s, 13m/s≤WS＜15m/s, 15m/s≤WS＜17m/s, 17m/s≤WS＜19m/s, 19m/s≤WS＜21m/s, 21m/s≤WS＜23m/s, 23m/s≤WS＜25m/s, 25m/s≤WS＜27m/s, 27m/s≤WS＜29m/s, 29m/s≤WS＜31m/s, 31m/s≤WS<33m/s, 33m/s≤WS
cdo histcount,5.1,6.9999999,8.9999999,10.9999999,12.9999999,14.9999999,16.9999999,18.9999999,20.9999999,22.9999999,24.9999999,26.9999999,28.9999999,30.9999999,32.9999999,inf era5_WS_setrtomiss_ifthen_W_"$((leap))".nc era5_WS_setrtomiss_ifthen_W_histcount_"$((leap))".nc
#the sand-moving wind frequency in the W azimuth, 8784 is the total hours for the “$leap_year”
cdo divc,8784 era5_WS_setrtomiss_ifthen_W_histcount_"$((leap))".nc era5_WS_setrtomiss_ifthen_W_histcount_divc_"$((leap))".nc
#setmisstoc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_W_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_W_histcount_divc_setmisstoc_"$((leap))".nc
#mulc
cdo mulc,100 era5_WS_setrtomiss_ifthen_W_histcount_divc_setmisstoc_"$((leap))".nc era5_WS_setrtomiss_ifthen_W_histcount_divc_setmisstoc_mulc_"$((leap))".nc
#weighting factor U^2(U-Ut), U is the mean wind speed，and they are 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 33m/s, respectively; and m/s needs to be conversed into knot. Notably, the value of U^2(U-Ut) is not divided by 100, as its subsquent multiplication represents a demensionless sand-moving wind frequency, rather than a percentage-based sand-moving wind frequency.
#level,5.1 U^2(U-Ut)=(6*3600/1852)*(6*3600/1852)*(6*3600/1852-5.1*3600/1852)=237.974030
#level,7 U^2(U-Ut)=(8*3600/1852)*(8*3600/1852)*(8*3600/1852-5.1*3600/1852)=1363.209259
#level,9 U^2(U-Ut)=(10*3600/1852)*(10*3600/1852)*(10*3600/1852-5.1*3600/1852)=3598.989961
#level,11 U^2(U-Ut)=(12*3600/1852)*(12*3600/1852)*(12*3600/1852-5.1*3600/1852)=7297.870257
#level,13 U^2(U-Ut)=(14*3600/1852)*(14*3600/1852)*(14*3600/1852-5.1*3600/1852)=12812.404263
#level,15 U^2(U-Ut)=(16*3600/1852)*(16*3600/1852)*(16*3600/1852-5.1*3600/1852)=20495.146099
#level,17 U^2(U-Ut)=(18*3600/1852)*(18*3600/1852)*(18*3600/1852-5.1*3600/1852)=30698.649884
#level,19 U^2(U-Ut)=(20*3600/1852)*(20*3600/1852)*(20*3600/1852-5.1*3600/1852)=43775.469735
#level,21 U^2(U-Ut)=(22*3600/1852)*(22*3600/1852)*(22*3600/1852-5.1*3600/1852)=60078.159773
#level,23 U^2(U-Ut)=(24*3600/1852)*(24*3600/1852)*(24*3600/1852-5.1*3600/1852)=79959.274115
#level,25 U^2(U-Ut)=(26*3600/1852)*(26*3600/1852)*(26*3600/1852-5.1*3600/1852)=103771.366881
#level,27 U^2(U-Ut)=(28*3600/1852)*(28*3600/1852)*(28*3600/1852-5.1*3600/1852)=131866.992188
#level,29 U^2(U-Ut)=(30*3600/1852)*(30*3600/1852)*(30*3600/1852-5.1*3600/1852)=164598.704156
#level,31 U^2(U-Ut)=(32*3600/1852)*(32*3600/1852)*(32*3600/1852-5.1*3600/1852)=202319.056903
#level,33 U^2(U-Ut)=(33*3600/1852)*(33*3600/1852)*(33*3600/1852-5.1*3600/1852)=223160.146731
#1 knot = 1 nautical mile/hour =1852m/hour=1852/3600m/s=0.5144m/s
#sellevel5.1
cdo -mulc,237.974030 -sellevel,5.1 era5_WS_setrtomiss_ifthen_W_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_W_histcount_divc_sellevel5.1_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_W_histcount_divc_sellevel5.1_"$((leap))".nc era5_DP_W_range5.1_7_"$((leap))".nc
#sellevel7
cdo -mulc,1363.209259 -sellevel,7 era5_WS_setrtomiss_ifthen_W_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_W_histcount_divc_sellevel7_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_W_histcount_divc_sellevel7_"$((leap))".nc era5_DP_W_range7_9_"$((leap))".nc
#sellevel9
cdo -mulc,3598.989961 -sellevel,9 era5_WS_setrtomiss_ifthen_W_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_W_histcount_divc_sellevel9_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_W_histcount_divc_sellevel9_"$((leap))".nc era5_DP_W_range9_11_"$((leap))".nc
#sellevel11
cdo -mulc,7297.870257 -sellevel,11 era5_WS_setrtomiss_ifthen_W_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_W_histcount_divc_sellevel11_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_W_histcount_divc_sellevel11_"$((leap))".nc era5_DP_W_range11_13_"$((leap))".nc
#sellevel13
cdo -mulc,12812.404263 -sellevel,13 era5_WS_setrtomiss_ifthen_W_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_W_histcount_divc_sellevel13_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_W_histcount_divc_sellevel13_"$((leap))".nc era5_DP_W_range13_15_"$((leap))".nc
#sellevel15
cdo -mulc,20495.146099 -sellevel,15 era5_WS_setrtomiss_ifthen_W_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_W_histcount_divc_sellevel15_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_W_histcount_divc_sellevel15_"$((leap))".nc era5_DP_W_range15_17_"$((leap))".nc
#sellevel17
cdo -mulc,30698.649884 -sellevel,17 era5_WS_setrtomiss_ifthen_W_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_W_histcount_divc_sellevel17_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_W_histcount_divc_sellevel17_"$((leap))".nc era5_DP_W_range17_19_"$((leap))".nc
#sellevel19
cdo -mulc,43775.469735 -sellevel,19 era5_WS_setrtomiss_ifthen_W_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_W_histcount_divc_sellevel19_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_W_histcount_divc_sellevel19_"$((leap))".nc era5_DP_W_range19_21_"$((leap))".nc
#sellevel21
cdo -mulc,60078.159773 -sellevel,21 era5_WS_setrtomiss_ifthen_W_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_W_histcount_divc_sellevel21_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_W_histcount_divc_sellevel21_"$((leap))".nc era5_DP_W_range21_23_"$((leap))".nc
#sellevel23
cdo -mulc,79959.274115 -sellevel,23 era5_WS_setrtomiss_ifthen_W_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_W_histcount_divc_sellevel23_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_W_histcount_divc_sellevel23_"$((leap))".nc era5_DP_W_range23_25_"$((leap))".nc
#sellevel25
cdo -mulc,103771.366881 -sellevel,25 era5_WS_setrtomiss_ifthen_W_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_W_histcount_divc_sellevel25_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_W_histcount_divc_sellevel25_"$((leap))".nc era5_DP_W_range25_27_"$((leap))".nc
#sellevel27
cdo -mulc,131866.992188 -sellevel,27 era5_WS_setrtomiss_ifthen_W_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_W_histcount_divc_sellevel27_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_W_histcount_divc_sellevel27_"$((leap))".nc era5_DP_W_range27_29_"$((leap))".nc
#sellevel29
cdo -mulc,164598.704156 -sellevel,29 era5_WS_setrtomiss_ifthen_W_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_W_histcount_divc_sellevel29_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_W_histcount_divc_sellevel29_"$((leap))".nc era5_DP_W_range29_31_"$((leap))".nc
#sellevel31
cdo -mulc,202319.056903 -sellevel,31 era5_WS_setrtomiss_ifthen_W_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_W_histcount_divc_sellevel31_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_W_histcount_divc_sellevel31_"$((leap))".nc era5_DP_W_range31_33_"$((leap))".nc
#sellevel33
cdo -mulc,223160.146731 -sellevel,33 era5_WS_setrtomiss_ifthen_W_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_W_histcount_divc_sellevel33_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_W_histcount_divc_sellevel33_"$((leap))".nc era5_DP_W_range33_inf_"$((leap))".nc
#enssum
cdo enssum era5_DP_W_range5.1_7_"$((leap))".nc era5_DP_W_range7_9_"$((leap))".nc era5_DP_W_range9_11_"$((leap))".nc era5_DP_W_range11_13_"$((leap))".nc era5_DP_W_range13_15_"$((leap))".nc era5_DP_W_range15_17_"$((leap))".nc era5_DP_W_range17_19_"$((leap))".nc era5_DP_W_range19_21_"$((leap))".nc era5_DP_W_range21_23_"$((leap))".nc era5_DP_W_range23_25_"$((leap))".nc era5_DP_W_range25_27_"$((leap))".nc era5_DP_W_range27_29_"$((leap))".nc era5_DP_W_range29_31_"$((leap))".nc era5_DP_W_range31_33_"$((leap))".nc era5_DP_W_range33_inf_"$((leap))".nc era5_DP_W_range_enssum_"$((leap))".nc
#change variable name into DP_W, in order to be used in the resultanting
cdo chname,WS,DP_W era5_DP_W_range_enssum_"$((leap))".nc era5_DP_W_range_enssum_chname_"$((leap))".nc
#delete intermediate results
rm -f era5_WD_ifthen_setvrange_W_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_W_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_W_histcount_divc_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_W_histcount_divc_setmisstoc_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_W_histcount_divc_sellevel5.1_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_W_histcount_divc_sellevel7_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_W_histcount_divc_sellevel9_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_W_histcount_divc_sellevel11_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_W_histcount_divc_sellevel13_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_W_histcount_divc_sellevel15_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_W_histcount_divc_sellevel17_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_W_histcount_divc_sellevel19_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_W_histcount_divc_sellevel21_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_W_histcount_divc_sellevel23_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_W_histcount_divc_sellevel25_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_W_histcount_divc_sellevel27_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_W_histcount_divc_sellevel29_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_W_histcount_divc_sellevel31_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_W_histcount_divc_sellevel33_"$((leap))".nc
rm -f era5_DP_W_range5.1_7_"$((leap))".nc
rm -f era5_DP_W_range7_9_"$((leap))".nc
rm -f era5_DP_W_range9_11_"$((leap))".nc
rm -f era5_DP_W_range11_13_"$((leap))".nc
rm -f era5_DP_W_range13_15_"$((leap))".nc
rm -f era5_DP_W_range15_17_"$((leap))".nc
rm -f era5_DP_W_range17_19_"$((leap))".nc
rm -f era5_DP_W_range19_21_"$((leap))".nc
rm -f era5_DP_W_range21_23_"$((leap))".nc
rm -f era5_DP_W_range23_25_"$((leap))".nc
rm -f era5_DP_W_range25_27_"$((leap))".nc
rm -f era5_DP_W_range27_29_"$((leap))".nc
rm -f era5_DP_W_range29_31_"$((leap))".nc
rm -f era5_DP_W_range31_33_"$((leap))".nc
rm -f era5_DP_W_range33_inf_"$((leap))".nc

#WNW, -78.75≤WNW＜-56.25
cdo setvrange,-78.75,-56.2500001 era5_WD_ifthen_"$((leap))".nc era5_WD_ifthen_setvrange_WNW_"$((leap))".nc
#mask sand-moving wind speeds in the WNW azimuth
cdo ifthen era5_WD_ifthen_setvrange_WNW_"$((leap))".nc era5_WS_setrtomiss_"$((leap))".nc era5_WS_setrtomiss_ifthen_WNW_"$((leap))".nc
#2 m/s bins of sand-moving wind speeds in the WNW azimuth, 5.1m/s≤WS＜7m/s, 7m/s≤WS＜9m/s, 9m/s≤WS＜11m/s, 11m/s≤WS＜13m/s, 13m/s≤WS＜15m/s, 15m/s≤WS＜17m/s, 17m/s≤WS＜19m/s, 19m/s≤WS＜21m/s, 21m/s≤WS＜23m/s, 23m/s≤WS＜25m/s, 25m/s≤WS＜27m/s, 27m/s≤WS＜29m/s, 29m/s≤WS＜31m/s, 31m/s≤WS<33m/s, 33m/s≤WS
cdo histcount,5.1,6.9999999,8.9999999,10.9999999,12.9999999,14.9999999,16.9999999,18.9999999,20.9999999,22.9999999,24.9999999,26.9999999,28.9999999,30.9999999,32.9999999,inf era5_WS_setrtomiss_ifthen_WNW_"$((leap))".nc era5_WS_setrtomiss_ifthen_WNW_histcount_"$((leap))".nc
#the sand-moving wind frequency in the WNW azimuth, 8784 is the total hours for the “$leap_year”
cdo divc,8784 era5_WS_setrtomiss_ifthen_WNW_histcount_"$((leap))".nc era5_WS_setrtomiss_ifthen_WNW_histcount_divc_"$((leap))".nc
#setmisstoc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_WNW_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_WNW_histcount_divc_setmisstoc_"$((leap))".nc
#mulc
cdo mulc,100 era5_WS_setrtomiss_ifthen_WNW_histcount_divc_setmisstoc_"$((leap))".nc era5_WS_setrtomiss_ifthen_WNW_histcount_divc_setmisstoc_mulc_"$((leap))".nc
#weighting factor U^2(U-Ut), U is the mean wind speed，and they are 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 33m/s, respectively; and m/s needs to be conversed into knot. Notably, the value of U^2(U-Ut) is not divided by 100, as its subsquent multiplication represents a demensionless sand-moving wind frequency, rather than a percentage-based sand-moving wind frequency.
#level,5.1 U^2(U-Ut)=(6*3600/1852)*(6*3600/1852)*(6*3600/1852-5.1*3600/1852)=237.974030
#level,7 U^2(U-Ut)=(8*3600/1852)*(8*3600/1852)*(8*3600/1852-5.1*3600/1852)=1363.209259
#level,9 U^2(U-Ut)=(10*3600/1852)*(10*3600/1852)*(10*3600/1852-5.1*3600/1852)=3598.989961
#level,11 U^2(U-Ut)=(12*3600/1852)*(12*3600/1852)*(12*3600/1852-5.1*3600/1852)=7297.870257
#level,13 U^2(U-Ut)=(14*3600/1852)*(14*3600/1852)*(14*3600/1852-5.1*3600/1852)=12812.404263
#level,15 U^2(U-Ut)=(16*3600/1852)*(16*3600/1852)*(16*3600/1852-5.1*3600/1852)=20495.146099
#level,17 U^2(U-Ut)=(18*3600/1852)*(18*3600/1852)*(18*3600/1852-5.1*3600/1852)=30698.649884
#level,19 U^2(U-Ut)=(20*3600/1852)*(20*3600/1852)*(20*3600/1852-5.1*3600/1852)=43775.469735
#level,21 U^2(U-Ut)=(22*3600/1852)*(22*3600/1852)*(22*3600/1852-5.1*3600/1852)=60078.159773
#level,23 U^2(U-Ut)=(24*3600/1852)*(24*3600/1852)*(24*3600/1852-5.1*3600/1852)=79959.274115
#level,25 U^2(U-Ut)=(26*3600/1852)*(26*3600/1852)*(26*3600/1852-5.1*3600/1852)=103771.366881
#level,27 U^2(U-Ut)=(28*3600/1852)*(28*3600/1852)*(28*3600/1852-5.1*3600/1852)=131866.992188
#level,29 U^2(U-Ut)=(30*3600/1852)*(30*3600/1852)*(30*3600/1852-5.1*3600/1852)=164598.704156
#level,31 U^2(U-Ut)=(32*3600/1852)*(32*3600/1852)*(32*3600/1852-5.1*3600/1852)=202319.056903
#level,33 U^2(U-Ut)=(33*3600/1852)*(33*3600/1852)*(33*3600/1852-5.1*3600/1852)=223160.146731
#1 knot = 1 nautical mile/hour =1852m/hour=1852/3600m/s=0.5144m/s
#sellevel5.1
cdo -mulc,237.974030 -sellevel,5.1 era5_WS_setrtomiss_ifthen_WNW_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel5.1_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel5.1_"$((leap))".nc era5_DP_WNW_range5.1_7_"$((leap))".nc
#sellevel7
cdo -mulc,1363.209259 -sellevel,7 era5_WS_setrtomiss_ifthen_WNW_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel7_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel7_"$((leap))".nc era5_DP_WNW_range7_9_"$((leap))".nc
#sellevel9
cdo -mulc,3598.989961 -sellevel,9 era5_WS_setrtomiss_ifthen_WNW_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel9_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel9_"$((leap))".nc era5_DP_WNW_range9_11_"$((leap))".nc
#sellevel11
cdo -mulc,7297.870257 -sellevel,11 era5_WS_setrtomiss_ifthen_WNW_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel11_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel11_"$((leap))".nc era5_DP_WNW_range11_13_"$((leap))".nc
#sellevel13
cdo -mulc,12812.404263 -sellevel,13 era5_WS_setrtomiss_ifthen_WNW_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel13_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel13_"$((leap))".nc era5_DP_WNW_range13_15_"$((leap))".nc
#sellevel15
cdo -mulc,20495.146099 -sellevel,15 era5_WS_setrtomiss_ifthen_WNW_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel15_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel15_"$((leap))".nc era5_DP_WNW_range15_17_"$((leap))".nc
#sellevel17
cdo -mulc,30698.649884 -sellevel,17 era5_WS_setrtomiss_ifthen_WNW_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel17_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel17_"$((leap))".nc era5_DP_WNW_range17_19_"$((leap))".nc
#sellevel19
cdo -mulc,43775.469735 -sellevel,19 era5_WS_setrtomiss_ifthen_WNW_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel19_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel19_"$((leap))".nc era5_DP_WNW_range19_21_"$((leap))".nc
#sellevel21
cdo -mulc,60078.159773 -sellevel,21 era5_WS_setrtomiss_ifthen_WNW_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel21_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel21_"$((leap))".nc era5_DP_WNW_range21_23_"$((leap))".nc
#sellevel23
cdo -mulc,79959.274115 -sellevel,23 era5_WS_setrtomiss_ifthen_WNW_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel23_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel23_"$((leap))".nc era5_DP_WNW_range23_25_"$((leap))".nc
#sellevel25
cdo -mulc,103771.366881 -sellevel,25 era5_WS_setrtomiss_ifthen_WNW_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel25_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel25_"$((leap))".nc era5_DP_WNW_range25_27_"$((leap))".nc
#sellevel27
cdo -mulc,131866.992188 -sellevel,27 era5_WS_setrtomiss_ifthen_WNW_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel27_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel27_"$((leap))".nc era5_DP_WNW_range27_29_"$((leap))".nc
#sellevel29
cdo -mulc,164598.704156 -sellevel,29 era5_WS_setrtomiss_ifthen_WNW_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel29_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel29_"$((leap))".nc era5_DP_WNW_range29_31_"$((leap))".nc
#sellevel31
cdo -mulc,202319.056903 -sellevel,31 era5_WS_setrtomiss_ifthen_WNW_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel31_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel31_"$((leap))".nc era5_DP_WNW_range31_33_"$((leap))".nc
#sellevel33
cdo -mulc,223160.146731 -sellevel,33 era5_WS_setrtomiss_ifthen_WNW_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel33_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel33_"$((leap))".nc era5_DP_WNW_range33_inf_"$((leap))".nc
#enssum
cdo enssum era5_DP_WNW_range5.1_7_"$((leap))".nc era5_DP_WNW_range7_9_"$((leap))".nc era5_DP_WNW_range9_11_"$((leap))".nc era5_DP_WNW_range11_13_"$((leap))".nc era5_DP_WNW_range13_15_"$((leap))".nc era5_DP_WNW_range15_17_"$((leap))".nc era5_DP_WNW_range17_19_"$((leap))".nc era5_DP_WNW_range19_21_"$((leap))".nc era5_DP_WNW_range21_23_"$((leap))".nc era5_DP_WNW_range23_25_"$((leap))".nc era5_DP_WNW_range25_27_"$((leap))".nc era5_DP_WNW_range27_29_"$((leap))".nc era5_DP_WNW_range29_31_"$((leap))".nc era5_DP_WNW_range31_33_"$((leap))".nc era5_DP_WNW_range33_inf_"$((leap))".nc era5_DP_WNW_range_enssum_"$((leap))".nc
#change variable name into DP_WNW, in order to be used in the resultanting
cdo chname,WS,DP_WNW era5_DP_WNW_range_enssum_"$((leap))".nc era5_DP_WNW_range_enssum_chname_"$((leap))".nc
#delete intermediate results
rm -f era5_WD_ifthen_setvrange_WNW_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_WNW_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_WNW_histcount_divc_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_WNW_histcount_divc_setmisstoc_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel5.1_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel7_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel9_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel11_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel13_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel15_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel17_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel19_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel21_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel23_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel25_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel27_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel29_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel31_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel33_"$((leap))".nc
rm -f era5_DP_WNW_range5.1_7_"$((leap))".nc
rm -f era5_DP_WNW_range7_9_"$((leap))".nc
rm -f era5_DP_WNW_range9_11_"$((leap))".nc
rm -f era5_DP_WNW_range11_13_"$((leap))".nc
rm -f era5_DP_WNW_range13_15_"$((leap))".nc
rm -f era5_DP_WNW_range15_17_"$((leap))".nc
rm -f era5_DP_WNW_range17_19_"$((leap))".nc
rm -f era5_DP_WNW_range19_21_"$((leap))".nc
rm -f era5_DP_WNW_range21_23_"$((leap))".nc
rm -f era5_DP_WNW_range23_25_"$((leap))".nc
rm -f era5_DP_WNW_range25_27_"$((leap))".nc
rm -f era5_DP_WNW_range27_29_"$((leap))".nc
rm -f era5_DP_WNW_range29_31_"$((leap))".nc
rm -f era5_DP_WNW_range31_33_"$((leap))".nc
rm -f era5_DP_WNW_range33_inf_"$((leap))".nc

#NW, -56.25≤NW＜-33.75
cdo setvrange,-56.25,-33.7500001 era5_WD_ifthen_"$((leap))".nc era5_WD_ifthen_setvrange_NW_"$((leap))".nc
#mask sand-moving wind speeds in the NW azimuth
cdo ifthen era5_WD_ifthen_setvrange_NW_"$((leap))".nc era5_WS_setrtomiss_"$((leap))".nc era5_WS_setrtomiss_ifthen_NW_"$((leap))".nc
#2 m/s bins of sand-moving wind speeds in the NW azimuth, 5.1m/s≤WS＜7m/s, 7m/s≤WS＜9m/s, 9m/s≤WS＜11m/s, 11m/s≤WS＜13m/s, 13m/s≤WS＜15m/s, 15m/s≤WS＜17m/s, 17m/s≤WS＜19m/s, 19m/s≤WS＜21m/s, 21m/s≤WS＜23m/s, 23m/s≤WS＜25m/s, 25m/s≤WS＜27m/s, 27m/s≤WS＜29m/s, 29m/s≤WS＜31m/s, 31m/s≤WS<33m/s, 33m/s≤WS
cdo histcount,5.1,6.9999999,8.9999999,10.9999999,12.9999999,14.9999999,16.9999999,18.9999999,20.9999999,22.9999999,24.9999999,26.9999999,28.9999999,30.9999999,32.9999999,inf era5_WS_setrtomiss_ifthen_NW_"$((leap))".nc era5_WS_setrtomiss_ifthen_NW_histcount_"$((leap))".nc
#the sand-moving wind frequency in the NW azimuth, 8784 is the total hours for the “$leap_year”
cdo divc,8784 era5_WS_setrtomiss_ifthen_NW_histcount_"$((leap))".nc era5_WS_setrtomiss_ifthen_NW_histcount_divc_"$((leap))".nc
#setmisstoc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NW_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_NW_histcount_divc_setmisstoc_"$((leap))".nc
#mulc
cdo mulc,100 era5_WS_setrtomiss_ifthen_NW_histcount_divc_setmisstoc_"$((leap))".nc era5_WS_setrtomiss_ifthen_NW_histcount_divc_setmisstoc_mulc_"$((leap))".nc
#weighting factor U^2(U-Ut), U is the mean wind speed，and they are 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 33m/s, respectively; and m/s needs to be conversed into knot. Notably, the value of U^2(U-Ut) is not divided by 100, as its subsquent multiplication represents a demensionless sand-moving wind frequency, rather than a percentage-based sand-moving wind frequency.
#level,5.1 U^2(U-Ut)=(6*3600/1852)*(6*3600/1852)*(6*3600/1852-5.1*3600/1852)=237.974030
#level,7 U^2(U-Ut)=(8*3600/1852)*(8*3600/1852)*(8*3600/1852-5.1*3600/1852)=1363.209259
#level,9 U^2(U-Ut)=(10*3600/1852)*(10*3600/1852)*(10*3600/1852-5.1*3600/1852)=3598.989961
#level,11 U^2(U-Ut)=(12*3600/1852)*(12*3600/1852)*(12*3600/1852-5.1*3600/1852)=7297.870257
#level,13 U^2(U-Ut)=(14*3600/1852)*(14*3600/1852)*(14*3600/1852-5.1*3600/1852)=12812.404263
#level,15 U^2(U-Ut)=(16*3600/1852)*(16*3600/1852)*(16*3600/1852-5.1*3600/1852)=20495.146099
#level,17 U^2(U-Ut)=(18*3600/1852)*(18*3600/1852)*(18*3600/1852-5.1*3600/1852)=30698.649884
#level,19 U^2(U-Ut)=(20*3600/1852)*(20*3600/1852)*(20*3600/1852-5.1*3600/1852)=43775.469735
#level,21 U^2(U-Ut)=(22*3600/1852)*(22*3600/1852)*(22*3600/1852-5.1*3600/1852)=60078.159773
#level,23 U^2(U-Ut)=(24*3600/1852)*(24*3600/1852)*(24*3600/1852-5.1*3600/1852)=79959.274115
#level,25 U^2(U-Ut)=(26*3600/1852)*(26*3600/1852)*(26*3600/1852-5.1*3600/1852)=103771.366881
#level,27 U^2(U-Ut)=(28*3600/1852)*(28*3600/1852)*(28*3600/1852-5.1*3600/1852)=131866.992188
#level,29 U^2(U-Ut)=(30*3600/1852)*(30*3600/1852)*(30*3600/1852-5.1*3600/1852)=164598.704156
#level,31 U^2(U-Ut)=(32*3600/1852)*(32*3600/1852)*(32*3600/1852-5.1*3600/1852)=202319.056903
#level,33 U^2(U-Ut)=(33*3600/1852)*(33*3600/1852)*(33*3600/1852-5.1*3600/1852)=223160.146731
#1 knot = 1 nautical mile/hour =1852m/hour=1852/3600m/s=0.5144m/s
#sellevel5.1
cdo -mulc,237.974030 -sellevel,5.1 era5_WS_setrtomiss_ifthen_NW_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel5.1_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel5.1_"$((leap))".nc era5_DP_NW_range5.1_7_"$((leap))".nc
#sellevel7
cdo -mulc,1363.209259 -sellevel,7 era5_WS_setrtomiss_ifthen_NW_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel7_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel7_"$((leap))".nc era5_DP_NW_range7_9_"$((leap))".nc
#sellevel9
cdo -mulc,3598.989961 -sellevel,9 era5_WS_setrtomiss_ifthen_NW_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel9_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel9_"$((leap))".nc era5_DP_NW_range9_11_"$((leap))".nc
#sellevel11
cdo -mulc,7297.870257 -sellevel,11 era5_WS_setrtomiss_ifthen_NW_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel11_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel11_"$((leap))".nc era5_DP_NW_range11_13_"$((leap))".nc
#sellevel13
cdo -mulc,12812.404263 -sellevel,13 era5_WS_setrtomiss_ifthen_NW_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel13_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel13_"$((leap))".nc era5_DP_NW_range13_15_"$((leap))".nc
#sellevel15
cdo -mulc,20495.146099 -sellevel,15 era5_WS_setrtomiss_ifthen_NW_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel15_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel15_"$((leap))".nc era5_DP_NW_range15_17_"$((leap))".nc
#sellevel17
cdo -mulc,30698.649884 -sellevel,17 era5_WS_setrtomiss_ifthen_NW_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel17_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel17_"$((leap))".nc era5_DP_NW_range17_19_"$((leap))".nc
#sellevel19
cdo -mulc,43775.469735 -sellevel,19 era5_WS_setrtomiss_ifthen_NW_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel19_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel19_"$((leap))".nc era5_DP_NW_range19_21_"$((leap))".nc
#sellevel21
cdo -mulc,60078.159773 -sellevel,21 era5_WS_setrtomiss_ifthen_NW_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel21_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel21_"$((leap))".nc era5_DP_NW_range21_23_"$((leap))".nc
#sellevel23
cdo -mulc,79959.274115 -sellevel,23 era5_WS_setrtomiss_ifthen_NW_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel23_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel23_"$((leap))".nc era5_DP_NW_range23_25_"$((leap))".nc
#sellevel25
cdo -mulc,103771.366881 -sellevel,25 era5_WS_setrtomiss_ifthen_NW_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel25_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel25_"$((leap))".nc era5_DP_NW_range25_27_"$((leap))".nc
#sellevel27
cdo -mulc,131866.992188 -sellevel,27 era5_WS_setrtomiss_ifthen_NW_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel27_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel27_"$((leap))".nc era5_DP_NW_range27_29_"$((leap))".nc
#sellevel29
cdo -mulc,164598.704156 -sellevel,29 era5_WS_setrtomiss_ifthen_NW_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel29_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel29_"$((leap))".nc era5_DP_NW_range29_31_"$((leap))".nc
#sellevel31
cdo -mulc,202319.056903 -sellevel,31 era5_WS_setrtomiss_ifthen_NW_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel31_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel31_"$((leap))".nc era5_DP_NW_range31_33_"$((leap))".nc
#sellevel33
cdo -mulc,223160.146731 -sellevel,33 era5_WS_setrtomiss_ifthen_NW_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel33_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel33_"$((leap))".nc era5_DP_NW_range33_inf_"$((leap))".nc
#enssum
cdo enssum era5_DP_NW_range5.1_7_"$((leap))".nc era5_DP_NW_range7_9_"$((leap))".nc era5_DP_NW_range9_11_"$((leap))".nc era5_DP_NW_range11_13_"$((leap))".nc era5_DP_NW_range13_15_"$((leap))".nc era5_DP_NW_range15_17_"$((leap))".nc era5_DP_NW_range17_19_"$((leap))".nc era5_DP_NW_range19_21_"$((leap))".nc era5_DP_NW_range21_23_"$((leap))".nc era5_DP_NW_range23_25_"$((leap))".nc era5_DP_NW_range25_27_"$((leap))".nc era5_DP_NW_range27_29_"$((leap))".nc era5_DP_NW_range29_31_"$((leap))".nc era5_DP_NW_range31_33_"$((leap))".nc era5_DP_NW_range33_inf_"$((leap))".nc era5_DP_NW_range_enssum_"$((leap))".nc
#change variable name into DP_NW, in order to be used in the resultanting
cdo chname,WS,DP_NW era5_DP_NW_range_enssum_"$((leap))".nc era5_DP_NW_range_enssum_chname_"$((leap))".nc
#delete intermediate results
rm -f era5_WD_ifthen_setvrange_NW_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_NW_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_NW_histcount_divc_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_NW_histcount_divc_setmisstoc_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel5.1_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel7_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel9_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel11_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel13_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel15_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel17_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel19_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel21_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel23_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel25_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel27_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel29_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel31_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel33_"$((leap))".nc
rm -f era5_DP_NW_range5.1_7_"$((leap))".nc
rm -f era5_DP_NW_range7_9_"$((leap))".nc
rm -f era5_DP_NW_range9_11_"$((leap))".nc
rm -f era5_DP_NW_range11_13_"$((leap))".nc
rm -f era5_DP_NW_range13_15_"$((leap))".nc
rm -f era5_DP_NW_range15_17_"$((leap))".nc
rm -f era5_DP_NW_range17_19_"$((leap))".nc
rm -f era5_DP_NW_range19_21_"$((leap))".nc
rm -f era5_DP_NW_range21_23_"$((leap))".nc
rm -f era5_DP_NW_range23_25_"$((leap))".nc
rm -f era5_DP_NW_range25_27_"$((leap))".nc
rm -f era5_DP_NW_range27_29_"$((leap))".nc
rm -f era5_DP_NW_range29_31_"$((leap))".nc
rm -f era5_DP_NW_range31_33_"$((leap))".nc
rm -f era5_DP_NW_range33_inf_"$((leap))".nc

#NNW, -33.75≤NNW＜-11.25
cdo setvrange,-33.75,-11.2500001 era5_WD_ifthen_"$((leap))".nc era5_WD_ifthen_setvrange_NNW_"$((leap))".nc
#mask sand-moving wind speeds in the NNW azimuth
cdo ifthen era5_WD_ifthen_setvrange_NNW_"$((leap))".nc era5_WS_setrtomiss_"$((leap))".nc era5_WS_setrtomiss_ifthen_NNW_"$((leap))".nc
#2 m/s bins of sand-moving wind speeds in the NNW azimuth, 5.1m/s≤WS＜7m/s, 7m/s≤WS＜9m/s, 9m/s≤WS＜11m/s, 11m/s≤WS＜13m/s, 13m/s≤WS＜15m/s, 15m/s≤WS＜17m/s, 17m/s≤WS＜19m/s, 19m/s≤WS＜21m/s, 21m/s≤WS＜23m/s, 23m/s≤WS＜25m/s, 25m/s≤WS＜27m/s, 27m/s≤WS＜29m/s, 29m/s≤WS＜31m/s, 31m/s≤WS<33m/s, 33m/s≤WS
cdo histcount,5.1,6.9999999,8.9999999,10.9999999,12.9999999,14.9999999,16.9999999,18.9999999,20.9999999,22.9999999,24.9999999,26.9999999,28.9999999,30.9999999,32.9999999,inf era5_WS_setrtomiss_ifthen_NNW_"$((leap))".nc era5_WS_setrtomiss_ifthen_NNW_histcount_"$((leap))".nc
#the sand-moving wind frequency in the NNW azimuth, 8784 is the total hours for the “$leap_year”
cdo divc,8784 era5_WS_setrtomiss_ifthen_NNW_histcount_"$((leap))".nc era5_WS_setrtomiss_ifthen_NNW_histcount_divc_"$((leap))".nc
#setmisstoc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NNW_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_NNW_histcount_divc_setmisstoc_"$((leap))".nc
#mulc
cdo mulc,100 era5_WS_setrtomiss_ifthen_NNW_histcount_divc_setmisstoc_"$((leap))".nc era5_WS_setrtomiss_ifthen_NNW_histcount_divc_setmisstoc_mulc_"$((leap))".nc
#weighting factor U^2(U-Ut), U is the mean wind speed，and they are 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 33m/s, respectively; and m/s needs to be conversed into knot. Notably, the value of U^2(U-Ut) is not divided by 100, as its subsquent multiplication represents a demensionless sand-moving wind frequency, rather than a percentage-based sand-moving wind frequency.
#level,5.1 U^2(U-Ut)=(6*3600/1852)*(6*3600/1852)*(6*3600/1852-5.1*3600/1852)=237.974030
#level,7 U^2(U-Ut)=(8*3600/1852)*(8*3600/1852)*(8*3600/1852-5.1*3600/1852)=1363.209259
#level,9 U^2(U-Ut)=(10*3600/1852)*(10*3600/1852)*(10*3600/1852-5.1*3600/1852)=3598.989961
#level,11 U^2(U-Ut)=(12*3600/1852)*(12*3600/1852)*(12*3600/1852-5.1*3600/1852)=7297.870257
#level,13 U^2(U-Ut)=(14*3600/1852)*(14*3600/1852)*(14*3600/1852-5.1*3600/1852)=12812.404263
#level,15 U^2(U-Ut)=(16*3600/1852)*(16*3600/1852)*(16*3600/1852-5.1*3600/1852)=20495.146099
#level,17 U^2(U-Ut)=(18*3600/1852)*(18*3600/1852)*(18*3600/1852-5.1*3600/1852)=30698.649884
#level,19 U^2(U-Ut)=(20*3600/1852)*(20*3600/1852)*(20*3600/1852-5.1*3600/1852)=43775.469735
#level,21 U^2(U-Ut)=(22*3600/1852)*(22*3600/1852)*(22*3600/1852-5.1*3600/1852)=60078.159773
#level,23 U^2(U-Ut)=(24*3600/1852)*(24*3600/1852)*(24*3600/1852-5.1*3600/1852)=79959.274115
#level,25 U^2(U-Ut)=(26*3600/1852)*(26*3600/1852)*(26*3600/1852-5.1*3600/1852)=103771.366881
#level,27 U^2(U-Ut)=(28*3600/1852)*(28*3600/1852)*(28*3600/1852-5.1*3600/1852)=131866.992188
#level,29 U^2(U-Ut)=(30*3600/1852)*(30*3600/1852)*(30*3600/1852-5.1*3600/1852)=164598.704156
#level,31 U^2(U-Ut)=(32*3600/1852)*(32*3600/1852)*(32*3600/1852-5.1*3600/1852)=202319.056903
#level,33 U^2(U-Ut)=(33*3600/1852)*(33*3600/1852)*(33*3600/1852-5.1*3600/1852)=223160.146731
#1 knot = 1 nautical mile/hour =1852m/hour=1852/3600m/s=0.5144m/s
#sellevel5.1
cdo -mulc,237.974030 -sellevel,5.1 era5_WS_setrtomiss_ifthen_NNW_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel5.1_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel5.1_"$((leap))".nc era5_DP_NNW_range5.1_7_"$((leap))".nc
#sellevel7
cdo -mulc,1363.209259 -sellevel,7 era5_WS_setrtomiss_ifthen_NNW_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel7_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel7_"$((leap))".nc era5_DP_NNW_range7_9_"$((leap))".nc
#sellevel9
cdo -mulc,3598.989961 -sellevel,9 era5_WS_setrtomiss_ifthen_NNW_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel9_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel9_"$((leap))".nc era5_DP_NNW_range9_11_"$((leap))".nc
#sellevel11
cdo -mulc,7297.870257 -sellevel,11 era5_WS_setrtomiss_ifthen_NNW_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel11_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel11_"$((leap))".nc era5_DP_NNW_range11_13_"$((leap))".nc
#sellevel13
cdo -mulc,12812.404263 -sellevel,13 era5_WS_setrtomiss_ifthen_NNW_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel13_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel13_"$((leap))".nc era5_DP_NNW_range13_15_"$((leap))".nc
#sellevel15
cdo -mulc,20495.146099 -sellevel,15 era5_WS_setrtomiss_ifthen_NNW_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel15_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel15_"$((leap))".nc era5_DP_NNW_range15_17_"$((leap))".nc
#sellevel17
cdo -mulc,30698.649884 -sellevel,17 era5_WS_setrtomiss_ifthen_NNW_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel17_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel17_"$((leap))".nc era5_DP_NNW_range17_19_"$((leap))".nc
#sellevel19
cdo -mulc,43775.469735 -sellevel,19 era5_WS_setrtomiss_ifthen_NNW_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel19_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel19_"$((leap))".nc era5_DP_NNW_range19_21_"$((leap))".nc
#sellevel21
cdo -mulc,60078.159773 -sellevel,21 era5_WS_setrtomiss_ifthen_NNW_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel21_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel21_"$((leap))".nc era5_DP_NNW_range21_23_"$((leap))".nc
#sellevel23
cdo -mulc,79959.274115 -sellevel,23 era5_WS_setrtomiss_ifthen_NNW_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel23_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel23_"$((leap))".nc era5_DP_NNW_range23_25_"$((leap))".nc
#sellevel25
cdo -mulc,103771.366881 -sellevel,25 era5_WS_setrtomiss_ifthen_NNW_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel25_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel25_"$((leap))".nc era5_DP_NNW_range25_27_"$((leap))".nc
#sellevel27
cdo -mulc,131866.992188 -sellevel,27 era5_WS_setrtomiss_ifthen_NNW_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel27_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel27_"$((leap))".nc era5_DP_NNW_range27_29_"$((leap))".nc
#sellevel29
cdo -mulc,164598.704156 -sellevel,29 era5_WS_setrtomiss_ifthen_NNW_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel29_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel29_"$((leap))".nc era5_DP_NNW_range29_31_"$((leap))".nc
#sellevel31
cdo -mulc,202319.056903 -sellevel,31 era5_WS_setrtomiss_ifthen_NNW_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel31_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel31_"$((leap))".nc era5_DP_NNW_range31_33_"$((leap))".nc
#sellevel33
cdo -mulc,223160.146731 -sellevel,33 era5_WS_setrtomiss_ifthen_NNW_histcount_divc_"$((leap))".nc era5_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel33_"$((leap))".nc
cdo setmisstoc,0 era5_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel33_"$((leap))".nc era5_DP_NNW_range33_inf_"$((leap))".nc
#enssum
cdo enssum era5_DP_NNW_range5.1_7_"$((leap))".nc era5_DP_NNW_range7_9_"$((leap))".nc era5_DP_NNW_range9_11_"$((leap))".nc era5_DP_NNW_range11_13_"$((leap))".nc era5_DP_NNW_range13_15_"$((leap))".nc era5_DP_NNW_range15_17_"$((leap))".nc era5_DP_NNW_range17_19_"$((leap))".nc era5_DP_NNW_range19_21_"$((leap))".nc era5_DP_NNW_range21_23_"$((leap))".nc era5_DP_NNW_range23_25_"$((leap))".nc era5_DP_NNW_range25_27_"$((leap))".nc era5_DP_NNW_range27_29_"$((leap))".nc era5_DP_NNW_range29_31_"$((leap))".nc era5_DP_NNW_range31_33_"$((leap))".nc era5_DP_NNW_range33_inf_"$((leap))".nc era5_DP_NNW_range_enssum_"$((leap))".nc
#change variable name into DP_NNW, in order to be used in the resultanting
cdo chname,WS,DP_NNW era5_DP_NNW_range_enssum_"$((leap))".nc era5_DP_NNW_range_enssum_chname_"$((leap))".nc
#delete intermediate results
rm -f era5_WD_ifthen_setvrange_NNW_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_NNW_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_NNW_histcount_divc_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_NNW_histcount_divc_setmisstoc_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel5.1_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel7_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel9_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel11_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel13_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel15_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel17_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel19_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel21_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel23_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel25_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel27_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel29_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel31_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel33_"$((leap))".nc
rm -f era5_DP_NNW_range5.1_7_"$((leap))".nc
rm -f era5_DP_NNW_range7_9_"$((leap))".nc
rm -f era5_DP_NNW_range9_11_"$((leap))".nc
rm -f era5_DP_NNW_range11_13_"$((leap))".nc
rm -f era5_DP_NNW_range13_15_"$((leap))".nc
rm -f era5_DP_NNW_range15_17_"$((leap))".nc
rm -f era5_DP_NNW_range17_19_"$((leap))".nc
rm -f era5_DP_NNW_range19_21_"$((leap))".nc
rm -f era5_DP_NNW_range21_23_"$((leap))".nc
rm -f era5_DP_NNW_range23_25_"$((leap))".nc
rm -f era5_DP_NNW_range25_27_"$((leap))".nc
rm -f era5_DP_NNW_range27_29_"$((leap))".nc
rm -f era5_DP_NNW_range29_31_"$((leap))".nc
rm -f era5_DP_NNW_range31_33_"$((leap))".nc
rm -f era5_DP_NNW_range33_inf_"$((leap))".nc

#calculate DP，add up the DPs in the N, NNE, NE, ENE, E, ESE, SE, SSE, S, SSW, SW, WSW, W, WNW, NW, NNW azimuth
cdo enssum era5_DP_N_range_enssum_"$((leap))".nc era5_DP_NNE_range_enssum_"$((leap))".nc era5_DP_NE_range_enssum_"$((leap))".nc era5_DP_ENE_range_enssum_"$((leap))".nc era5_DP_E_range_enssum_"$((leap))".nc era5_DP_ESE_range_enssum_"$((leap))".nc era5_DP_SE_range_enssum_"$((leap))".nc era5_DP_SSE_range_enssum_"$((leap))".nc era5_DP_S_range_enssum_"$((leap))".nc era5_DP_SSW_range_enssum_"$((leap))".nc era5_DP_SW_range_enssum_"$((leap))".nc era5_DP_WSW_range_enssum_"$((leap))".nc era5_DP_W_range_enssum_"$((leap))".nc era5_DP_WNW_range_enssum_"$((leap))".nc era5_DP_NW_range_enssum_"$((leap))".nc era5_DP_NNW_range_enssum_"$((leap))".nc era5_DP_range_enssum_"$((leap))".nc
#change variable name into DP, in order to be used in the resultanting
cdo chname,WS,DP era5_DP_range_enssum_"$((leap))".nc era5_DP_"$((leap))".nc

#merge the nc files with new variable names from 16 azimuth, and form the new nc file
cdo merge era5_DP_N_range_enssum_chname_"$((leap))".nc era5_DP_NNE_range_enssum_chname_"$((leap))".nc era5_DP_NE_range_enssum_chname_"$((leap))".nc era5_DP_ENE_range_enssum_chname_"$((leap))".nc era5_DP_E_range_enssum_chname_"$((leap))".nc era5_DP_ESE_range_enssum_chname_"$((leap))".nc era5_DP_SE_range_enssum_chname_"$((leap))".nc era5_DP_SSE_range_enssum_chname_"$((leap))".nc era5_DP_S_range_enssum_chname_"$((leap))".nc era5_DP_SSW_range_enssum_chname_"$((leap))".nc era5_DP_SW_range_enssum_chname_"$((leap))".nc era5_DP_WSW_range_enssum_chname_"$((leap))".nc era5_DP_W_range_enssum_chname_"$((leap))".nc era5_DP_WNW_range_enssum_chname_"$((leap))".nc era5_DP_NW_range_enssum_chname_"$((leap))".nc era5_DP_NNW_range_enssum_chname_"$((leap))".nc era5_DP_Azimuthal_"$((leap))".nc 

#Σ component of RDP in the due-north direction, calculating process is ΣN=N-S+(NE+NW-SE-SW)*0.7071068+(NNE+NNW-SSW-SSE)*0.9238795+(WNW+ENE-WSW-ESE)*0.3826834
cdo expr,'RDP_N=DP_N-DP_S+(DP_NE+DP_NW-DP_SE-DP_SW)*0.7071068+(DP_NNE+DP_NNW-DP_SSW-DP_SSE)*0.9238795+(DP_WNW+DP_ENE-DP_WSW-DP_ESE)*0.3826834;' era5_DP_Azimuthal_"$((leap))".nc era5_RDP_N_"$((leap))".nc 

#Σ component of RDP in the due-east direction, calculating process is ΣE=E-W+(NE+SE-NW-SW)*0.7071068+(ESE+ENE-WNW-WSW)*0.9238795+(NNE+SSE-SSW-NNW)*0.3826834
cdo expr,'RDP_E=DP_E-DP_W+(DP_NE+DP_SE-DP_NW-DP_SW)*0.7071068+(DP_ESE+DP_ENE-DP_WNW-DP_WSW)*0.9238795+(DP_NNE+DP_SSE-DP_SSW-DP_NNW)*0.3826834;' era5_DP_Azimuthal_"$((leap))".nc era5_RDP_E_"$((leap))".nc

#calculate RDP, Resultant Drift Potential
cdo -chname,RDP_E,RDP -sqrt -add -sqr -selname,RDP_E era5_RDP_E_"$((leap))".nc -sqr -selname,RDP_N  era5_RDP_N_"$((leap))".nc era5_RDP_"$((leap))".nc

#calculate RDD, Resultant Drift Direction
cdo -chname,RDP_E,RDD -addc,180 -mulc,57.2957805 -atan2 era5_RDP_E_"$((leap))".nc era5_RDP_N_"$((leap))".nc era5_RDD_"$((leap))".nc

#calculate RDP/DP，WDV, Wind Direction Variablity
cdo div era5_RDP_"$((leap))".nc era5_DP_"$((leap))".nc era5_WDV_"$((leap))".nc

#finally, delete intermediate results, retain needed results
rm -f era5_DP_N_range_enssum_"$((leap))".nc
rm -f era5_DP_NNE_range_enssum_"$((leap))".nc
rm -f era5_DP_NE_range_enssum_"$((leap))".nc
rm -f era5_DP_ENE_range_enssum_"$((leap))".nc
rm -f era5_DP_E_range_enssum_"$((leap))".nc
rm -f era5_DP_ESE_range_enssum_"$((leap))".nc
rm -f era5_DP_SE_range_enssum_"$((leap))".nc
rm -f era5_DP_SSE_range_enssum_"$((leap))".nc
rm -f era5_DP_S_range_enssum_"$((leap))".nc
rm -f era5_DP_SSW_range_enssum_"$((leap))".nc
rm -f era5_DP_SW_range_enssum_"$((leap))".nc
rm -f era5_DP_WSW_range_enssum_"$((leap))".nc
rm -f era5_DP_W_range_enssum_"$((leap))".nc
rm -f era5_DP_WNW_range_enssum_"$((leap))".nc
rm -f era5_DP_NW_range_enssum_"$((leap))".nc
rm -f era5_DP_NNW_range_enssum_"$((leap))".nc
rm -f era5_DP_range_enssum_"$((leap))".nc
rm -f era5_DP_N_range_enssum_chname_"$((leap))".nc
rm -f era5_DP_NNE_range_enssum_chname_"$((leap))".nc
rm -f era5_DP_NE_range_enssum_chname_"$((leap))".nc
rm -f era5_DP_ENE_range_enssum_chname_"$((leap))".nc
rm -f era5_DP_E_range_enssum_chname_"$((leap))".nc
rm -f era5_DP_ESE_range_enssum_chname_"$((leap))".nc
rm -f era5_DP_SE_range_enssum_chname_"$((leap))".nc
rm -f era5_DP_SSE_range_enssum_chname_"$((leap))".nc
rm -f era5_DP_S_range_enssum_chname_"$((leap))".nc
rm -f era5_DP_SSW_range_enssum_chname_"$((leap))".nc
rm -f era5_DP_SW_range_enssum_chname_"$((leap))".nc
rm -f era5_DP_WSW_range_enssum_chname_"$((leap))".nc
rm -f era5_DP_W_range_enssum_chname_"$((leap))".nc
rm -f era5_DP_WNW_range_enssum_chname_"$((leap))".nc
rm -f era5_DP_NW_range_enssum_chname_"$((leap))".nc
rm -f era5_DP_NNW_range_enssum_chname_"$((leap))".nc

#delete
rm -f era5_WD_ifthen_"$((leap))".nc
rm -f era5_WS_setrtomiss_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_E_histcount_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_E_histcount_divc_setmisstoc_mulc_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_ENE_histcount_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_ENE_histcount_divc_setmisstoc_mulc_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_ESE_histcount_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_ESE_histcount_divc_setmisstoc_mulc_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_N_histcount_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_N_histcount_divc_setmisstoc_mulc_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_NE_histcount_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_NE_histcount_divc_setmisstoc_mulc_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_NNE_histcount_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_NNE_histcount_divc_setmisstoc_mulc_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_NNW_histcount_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_NNW_histcount_divc_setmisstoc_mulc_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_NW_histcount_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_NW_histcount_divc_setmisstoc_mulc_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_S_histcount_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_S_histcount_divc_setmisstoc_mulc_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_SE_histcount_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_SE_histcount_divc_setmisstoc_mulc_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_SSE_histcount_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_SSE_histcount_divc_setmisstoc_mulc_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_SSW_histcount_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_SSW_histcount_divc_setmisstoc_mulc_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_SW_histcount_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_SW_histcount_divc_setmisstoc_mulc_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_W_histcount_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_W_histcount_divc_setmisstoc_mulc_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_WNW_histcount_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_WNW_histcount_divc_setmisstoc_mulc_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_WSW_histcount_"$((leap))".nc
rm -f era5_WS_setrtomiss_ifthen_WSW_histcount_divc_setmisstoc_mulc_"$((leap))".nc


done




