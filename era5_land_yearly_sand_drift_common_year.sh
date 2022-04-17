#!/bin/bash
#author: Guoshuai Li
#create date: 2021-07-04
#sand drift
#calculate wind speed
cdo -b 32 -chname,u10,WS -sqrt -add -sqr -selname,u10 era5_land_hourly_10m_u_component_of_wind_“$common_year”.nc -sqr -selname,v10 era5_land_hourly_10m_v_component_of_wind_“$common_year”.nc era5_land_WS_“$common_year”.nc

#calculate wind direction
cdo -b 32 -chname,u10,WD -mulc,57.2957805 -atan2 -mulc,-1 era5_land_hourly_10m_u_component_of_wind_“$common_year”.nc -mulc,-1 era5_land_hourly_10m_v_component_of_wind_“$common_year”.nc era5_land_WD_“$common_year”.nc

#mask sand-moving wind speeds, ≥6m/s
cdo setrtomiss,0,5.9999999 era5_land_WS_“$common_year”.nc era5_land_WS_setrtomiss_“$common_year”.nc

#mask all the wind directions of corresponding sand-moving wind speeds, the sand-moving wind direction
cdo ifthen era5_land_WS_setrtomiss_“$common_year”.nc era5_land_WD_“$common_year”.nc era5_land_WD_ifthen_“$common_year”.nc

#distinguish the azimuth of sand-moving wind directions
#N, 78.75≤N＜101.25
cdo setvrange,78.75,101.2499999 era5_land_WD_ifthen_“$common_year”.nc era5_land_WD_ifthen_setvrange_N_“$common_year”.nc
#mask sand-moving wind speeds in the N azimuth
cdo ifthen era5_land_WD_ifthen_setvrange_N_“$common_year”.nc era5_land_WS_setrtomiss_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_N_“$common_year”.nc
#2 m/s bins of sand-moving wind speeds in the N azimuth, 6m/s≤WS＜8m/s, 8m/s≤WS＜10m/s, 10m/s≤WS＜12m/s, 12m/s≤WS＜14m/s, 14m/s≤WS＜16m/s, 16m/s≤WS＜18m/s, 18m/s≤WS＜20m/s, 20m/s≤WS＜22m/s, 22m/s≤WS＜24m/s, 24m/s≤WS＜26m/s, 26m/s≤WS＜28m/s, 28m/s≤WS＜30m/s, 30m/s≤WS＜32m/s, 32m/s≤WS<34m/s, 34m/s≤WS
cdo histcount,6,7.9999999,9.9999999,11.9999999,13.9999999,15.9999999,17.9999999,19.9999999,21.9999999,23.9999999,25.9999999,27.9999999,29.9999999,31.9999999,33.9999999,inf era5_land_WS_setrtomiss_ifthen_N_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_N_histcount_“$common_year”.nc
#the sand-moving wind frequency in the N azimuth, 8760 is the total hours for the “$common_year”
cdo divc,8760 era5_land_WS_setrtomiss_ifthen_N_histcount_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_N_histcount_divc_“$common_year”.nc
#setmisstoc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_N_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_N_histcount_divc_setmisstoc_“$common_year”.nc
#mulc
cdo mulc,100 era5_land_WS_setrtomiss_ifthen_N_histcount_divc_setmisstoc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_N_histcount_divc_setmisstoc_mulc_“$common_year”.nc
#weighting factor v^2(v-vt), v is the mean wind speed，and they are 7, 9, 11, 13, 15, 17, 19, 21, 23, 25, 27, 29, 31, 33, 34m/s, respectively; and m/s needs to be conversed into knot
#level,6 v^2(v-vt)=(7*3600/1852)*(7*3600/1852)*(7*3600/1852-6*3600/1852)=359.8989961
#level,8 v^2(v-vt)=(9*3600/1852)*(9*3600/1852)*(9*3600/1852-6*3600/1852)=1784.8052258
#level,10 v^2(v-vt)=(11*3600/1852)*(11*3600/1852)*(11*3600/1852-6*3600/1852)=4443.6508708
#level,12 v^2(v-vt)=(13*3600/1852)*(13*3600/1852)*(13*3600/1852-6*3600/1852)=8688.9900498
#level,14 v^2(v-vt)=(15*3600/1852)*(15*3600/1852)*(15*3600/1852-6*3600/1852)=14873.3768816
#level,16 v^2(v-vt)=(17*3600/1852)*(17*3600/1852)*(17*3600/1852-6*3600/1852)=23349.3654847
#level,18 v^2(v-vt)=(19*3600/1852)*(19*3600/1852)*(19*3600/1852-6*3600/1852)=34469.5099779
#level,20 v^2(v-vt)=(21*3600/1852)*(21*3600/1852)*(21*3600/1852-6*3600/1852)=48586.3644798
#level,22 v^2(v-vt)=(23*3600/1852)*(23*3600/1852)*(23*3600/1852-6*3600/1852)=66052.4831091
#level,24 v^2(v-vt)=(24*3600/1852)*(24*3600/1852)*(24*3600/1852-6*3600/1852)=87220.4199845
#level,26 v^2(v-vt)=(27*3600/1852)*(27*3600/1852)*(27*3600/1852-6*3600/1852)=112442.7292247
#level,28 v^2(v-vt)=(29*3600/1852)*(29*3600/1852)*(29*3600/1852-6*3600/1852)=142071.9649483
#level,30 v^2(v-vt)=(31*3600/1852)*(31*3600/1852)*(31*3600/1852-6*3600/1852)=176460.6812740
#level,32 v^2(v-vt)=(33*3600/1852)*(33*3600/1852)*(33*3600/1852-6*3600/1852)=215961.4323204
#level,34 v^2(v-vt)=(34*3600/1852)*(34*3600/1852)*(34*3600/1852-6*3600/1852)=237738.9940260
#1 knot = 1 nautical mile/hour =1852m/hour=1852/3600m/s=0.5144m/s
#sellevel6
cdo -mulc,359.8989961 -sellevel,6 era5_land_WS_setrtomiss_ifthen_N_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel6_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel6_“$common_year”.nc era5_land_DP_N_range6_8_“$common_year”.nc
#sellevel8
cdo -mulc,1784.8052258 -sellevel,8 era5_land_WS_setrtomiss_ifthen_N_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel8_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel8_“$common_year”.nc era5_land_DP_N_range8_10_“$common_year”.nc
#sellevel10
cdo -mulc,4443.6508708 -sellevel,10 era5_land_WS_setrtomiss_ifthen_N_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel10_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel10_“$common_year”.nc era5_land_DP_N_range10_12_“$common_year”.nc
#sellevel12
cdo -mulc,8688.9900498 -sellevel,12 era5_land_WS_setrtomiss_ifthen_N_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel12_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel12_“$common_year”.nc era5_land_DP_N_range12_14_“$common_year”.nc
#sellevel14
cdo -mulc,14873.3768816 -sellevel,14 era5_land_WS_setrtomiss_ifthen_N_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel14_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel14_“$common_year”.nc era5_land_DP_N_range14_16_“$common_year”.nc
#sellevel16
cdo -mulc,23349.3654847 -sellevel,16 era5_land_WS_setrtomiss_ifthen_N_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel16_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel16_“$common_year”.nc era5_land_DP_N_range16_18_“$common_year”.nc
#sellevel18
cdo -mulc,34469.5099779 -sellevel,18 era5_land_WS_setrtomiss_ifthen_N_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel18_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel18_“$common_year”.nc era5_land_DP_N_range18_20_“$common_year”.nc
#sellevel20
cdo -mulc,48586.3644798 -sellevel,20 era5_land_WS_setrtomiss_ifthen_N_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel20_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel20_“$common_year”.nc era5_land_DP_N_range20_22_“$common_year”.nc
#sellevel22
cdo -mulc,66052.4831091 -sellevel,22 era5_land_WS_setrtomiss_ifthen_N_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel22_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel22_“$common_year”.nc era5_land_DP_N_range22_24_“$common_year”.nc
#sellevel24
cdo -mulc,87220.4199845 -sellevel,24 era5_land_WS_setrtomiss_ifthen_N_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel24_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel24_“$common_year”.nc era5_land_DP_N_range24_26_“$common_year”.nc
#sellevel26
cdo -mulc,112442.7292247 -sellevel,26 era5_land_WS_setrtomiss_ifthen_N_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel26_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel26_“$common_year”.nc era5_land_DP_N_range26_28_“$common_year”.nc
#sellevel28
cdo -mulc,142071.9649483 -sellevel,28 era5_land_WS_setrtomiss_ifthen_N_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel28_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel28_“$common_year”.nc era5_land_DP_N_range28_30_“$common_year”.nc
#sellevel30
cdo -mulc,176460.6812740 -sellevel,30 era5_land_WS_setrtomiss_ifthen_N_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel30_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel30_“$common_year”.nc era5_land_DP_N_range30_32_“$common_year”.nc
#sellevel32
cdo -mulc,215961.4323204 -sellevel,32 era5_land_WS_setrtomiss_ifthen_N_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel32_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel32_“$common_year”.nc era5_land_DP_N_range32_34_“$common_year”.nc
#sellevel34
cdo -mulc,237738.9940260 -sellevel,34 era5_land_WS_setrtomiss_ifthen_N_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel34_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_N_histcount_divc_sellevel34_“$common_year”.nc era5_land_DP_N_range34_inf_“$common_year”.nc
#enssum
cdo enssum era5_land_DP_N_range6_8_“$common_year”.nc era5_land_DP_N_range8_10_“$common_year”.nc era5_land_DP_N_range10_12_“$common_year”.nc era5_land_DP_N_range12_14_“$common_year”.nc era5_land_DP_N_range14_16_“$common_year”.nc era5_land_DP_N_range16_18_“$common_year”.nc era5_land_DP_N_range18_20_“$common_year”.nc era5_land_DP_N_range20_22_“$common_year”.nc era5_land_DP_N_range22_24_“$common_year”.nc era5_land_DP_N_range24_26_“$common_year”.nc era5_land_DP_N_range26_28_“$common_year”.nc era5_land_DP_N_range28_30_“$common_year”.nc era5_land_DP_N_range30_32_“$common_year”.nc era5_land_DP_N_range32_34_“$common_year”.nc era5_land_DP_N_range34_inf_“$common_year”.nc era5_land_DP_N_range_enssum_“$common_year”.nc
#change variable name into DP_N, in order to be used in the resultanting 
cdo chname,WS,DP_N era5_land_DP_N_range_enssum_“$common_year”.nc era5_land_DP_N_range_enssum_chname_“$common_year”.nc

#NNE, 56.25≤NNE＜78.75
cdo setvrange,56.25,78.7499999 era5_land_WD_ifthen_“$common_year”.nc era5_land_WD_ifthen_setvrange_NNE_“$common_year”.nc
#mask sand-moving wind speeds in the NNE azimuth
cdo ifthen era5_land_WD_ifthen_setvrange_NNE_“$common_year”.nc era5_land_WS_setrtomiss_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_NNE_“$common_year”.nc
#2 m/s bins of sand-moving wind speeds in the NNE azimuth, 6m/s≤WS＜8m/s, 8m/s≤WS＜10m/s, 10m/s≤WS＜12m/s, 12m/s≤WS＜14m/s, 14m/s≤WS＜16m/s, 16m/s≤WS＜18m/s, 18m/s≤WS＜20m/s, 20m/s≤WS＜22m/s, 22m/s≤WS＜24m/s, 24m/s≤WS＜26m/s, 26m/s≤WS＜28m/s, 28m/s≤WS＜30m/s, 30m/s≤WS＜32m/s, 32m/s≤WS<34m/s, 34m/s≤WS
cdo histcount,6,7.9999999,9.9999999,11.9999999,13.9999999,15.9999999,17.9999999,19.9999999,21.9999999,23.9999999,25.9999999,27.9999999,29.9999999,31.9999999,33.9999999,inf era5_land_WS_setrtomiss_ifthen_NNE_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_NNE_histcount_“$common_year”.nc
#the sand-moving wind frequency in the N azimuth, 8760 is the total hours for the “$common_year”
cdo divc,8760 era5_land_WS_setrtomiss_ifthen_NNE_histcount_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_“$common_year”.nc
#setmisstoc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_setmisstoc_“$common_year”.nc
#mulc
cdo mulc,100 era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_setmisstoc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_setmisstoc_mulc_“$common_year”.nc
#weighting factor v^2(v-vt), v is the mean wind speed，and they are 7, 9, 11, 13, 15, 17, 19, 21, 23, 25, 27, 29, 31, 33, 34m/s, respectively; and m/s needs to be conversed into knot
#level,6 v^2(v-vt)=(7*3600/1852)*(7*3600/1852)*(7*3600/1852-6*3600/1852)=359.8989961
#level,8 v^2(v-vt)=(9*3600/1852)*(9*3600/1852)*(9*3600/1852-6*3600/1852)=1784.8052258
#level,10 v^2(v-vt)=(11*3600/1852)*(11*3600/1852)*(11*3600/1852-6*3600/1852)=4443.6508708
#level,12 v^2(v-vt)=(13*3600/1852)*(13*3600/1852)*(13*3600/1852-6*3600/1852)=8688.9900498
#level,14 v^2(v-vt)=(15*3600/1852)*(15*3600/1852)*(15*3600/1852-6*3600/1852)=14873.3768816
#level,16 v^2(v-vt)=(17*3600/1852)*(17*3600/1852)*(17*3600/1852-6*3600/1852)=23349.3654847
#level,18 v^2(v-vt)=(19*3600/1852)*(19*3600/1852)*(19*3600/1852-6*3600/1852)=34469.5099779
#level,20 v^2(v-vt)=(21*3600/1852)*(21*3600/1852)*(21*3600/1852-6*3600/1852)=48586.3644798
#level,22 v^2(v-vt)=(23*3600/1852)*(23*3600/1852)*(23*3600/1852-6*3600/1852)=66052.4831091
#level,24 v^2(v-vt)=(24*3600/1852)*(24*3600/1852)*(24*3600/1852-6*3600/1852)=87220.4199845
#level,26 v^2(v-vt)=(27*3600/1852)*(27*3600/1852)*(27*3600/1852-6*3600/1852)=112442.7292247
#level,28 v^2(v-vt)=(29*3600/1852)*(29*3600/1852)*(29*3600/1852-6*3600/1852)=142071.9649483
#level,30 v^2(v-vt)=(31*3600/1852)*(31*3600/1852)*(31*3600/1852-6*3600/1852)=176460.6812740
#level,32 v^2(v-vt)=(33*3600/1852)*(33*3600/1852)*(33*3600/1852-6*3600/1852)=215961.4323204
#level,34 v^2(v-vt)=(34*3600/1852)*(34*3600/1852)*(34*3600/1852-6*3600/1852)=237738.9940260
#1 knot = 1 nautical mile/hour =1852m/hour=1852/3600m/s=0.5144m/s
#sellevel6
cdo -mulc,359.8989961 -sellevel,6 era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel6_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel6_“$common_year”.nc era5_land_DP_NNE_range6_8_“$common_year”.nc
#sellevel8
cdo -mulc,1784.8052258 -sellevel,8 era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel8_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel8_“$common_year”.nc era5_land_DP_NNE_range8_10_“$common_year”.nc
#sellevel10
cdo -mulc,4443.6508708 -sellevel,10 era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel10_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel10_“$common_year”.nc era5_land_DP_NNE_range10_12_“$common_year”.nc
#sellevel12
cdo -mulc,8688.9900498 -sellevel,12 era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel12_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel12_“$common_year”.nc era5_land_DP_NNE_range12_14_“$common_year”.nc
#sellevel14
cdo -mulc,14873.3768816 -sellevel,14 era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel14_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel14_“$common_year”.nc era5_land_DP_NNE_range14_16_“$common_year”.nc
#sellevel16
cdo -mulc,23349.3654847 -sellevel,16 era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel16_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel16_“$common_year”.nc era5_land_DP_NNE_range16_18_“$common_year”.nc
#sellevel18
cdo -mulc,34469.5099779 -sellevel,18 era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel18_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel18_“$common_year”.nc era5_land_DP_NNE_range18_20_“$common_year”.nc
#sellevel20
cdo -mulc,48586.3644798 -sellevel,20 era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel20_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel20_“$common_year”.nc era5_land_DP_NNE_range20_22_“$common_year”.nc
#sellevel22
cdo -mulc,66052.4831091 -sellevel,22 era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel22_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel22_“$common_year”.nc era5_land_DP_NNE_range22_24_“$common_year”.nc
#sellevel24
cdo -mulc,87220.4199845 -sellevel,24 era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel24_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel24_“$common_year”.nc era5_land_DP_NNE_range24_26_“$common_year”.nc
#sellevel26
cdo -mulc,112442.7292247 -sellevel,26 era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel26_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel26_“$common_year”.nc era5_land_DP_NNE_range26_28_“$common_year”.nc
#sellevel28
cdo -mulc,142071.9649483 -sellevel,28 era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel28_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel28_“$common_year”.nc era5_land_DP_NNE_range28_30_“$common_year”.nc
#sellevel30
cdo -mulc,176460.6812740 -sellevel,30 era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel30_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel30_“$common_year”.nc era5_land_DP_NNE_range30_32_“$common_year”.nc
#sellevel32
cdo -mulc,215961.4323204 -sellevel,32 era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel32_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel32_“$common_year”.nc era5_land_DP_NNE_range32_34_“$common_year”.nc
#sellevel34
cdo -mulc,237738.9940260 -sellevel,34 era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel34_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NNE_histcount_divc_sellevel34_“$common_year”.nc era5_land_DP_NNE_range34_inf_“$common_year”.nc
#enssum
cdo enssum era5_land_DP_NNE_range6_8_“$common_year”.nc era5_land_DP_NNE_range8_10_“$common_year”.nc era5_land_DP_NNE_range10_12_“$common_year”.nc era5_land_DP_NNE_range12_14_“$common_year”.nc era5_land_DP_NNE_range14_16_“$common_year”.nc era5_land_DP_NNE_range16_18_“$common_year”.nc era5_land_DP_NNE_range18_20_“$common_year”.nc era5_land_DP_NNE_range20_22_“$common_year”.nc era5_land_DP_NNE_range22_24_“$common_year”.nc era5_land_DP_NNE_range24_26_“$common_year”.nc era5_land_DP_NNE_range26_28_“$common_year”.nc era5_land_DP_NNE_range28_30_“$common_year”.nc era5_land_DP_NNE_range30_32_“$common_year”.nc era5_land_DP_NNE_range32_34_“$common_year”.nc era5_land_DP_NNE_range34_inf_“$common_year”.nc era5_land_DP_NNE_range_enssum_“$common_year”.nc
#change variable name into DP_NNE, in order to be used in the resultanting 
cdo chname,WS,DP_NNE era5_land_DP_NNE_range_enssum_“$common_year”.nc era5_land_DP_NNE_range_enssum_chname_“$common_year”.nc

#NE, 33.75≤NE＜56.25
cdo setvrange,33.75,56.2499999 era5_land_WD_ifthen_“$common_year”.nc era5_land_WD_ifthen_setvrange_NE_“$common_year”.nc
#mask sand-moving wind speeds in the NE azimuth
cdo ifthen era5_land_WD_ifthen_setvrange_NE_“$common_year”.nc era5_land_WS_setrtomiss_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_NE_“$common_year”.nc
#2 m/s bins of sand-moving wind speeds in the NE azimuth, 6m/s≤WS＜8m/s, 8m/s≤WS＜10m/s, 10m/s≤WS＜12m/s, 12m/s≤WS＜14m/s, 14m/s≤WS＜16m/s, 16m/s≤WS＜18m/s, 18m/s≤WS＜20m/s, 20m/s≤WS＜22m/s, 22m/s≤WS＜24m/s, 24m/s≤WS＜26m/s, 26m/s≤WS＜28m/s, 28m/s≤WS＜30m/s, 30m/s≤WS＜32m/s, 32m/s≤WS<34m/s, 34m/s≤WS
cdo histcount,6,7.9999999,9.9999999,11.9999999,13.9999999,15.9999999,17.9999999,19.9999999,21.9999999,23.9999999,25.9999999,27.9999999,29.9999999,31.9999999,33.9999999,inf era5_land_WS_setrtomiss_ifthen_NE_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_NE_histcount_“$common_year”.nc
#the sand-moving wind frequency in the NE azimuth, 8760 is the total hours for the “$common_year”
cdo divc,8760 era5_land_WS_setrtomiss_ifthen_NE_histcount_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_“$common_year”.nc
#setmisstoc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_setmisstoc_“$common_year”.nc
#mulc
cdo mulc,100 era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_setmisstoc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_setmisstoc_mulc_“$common_year”.nc
#weighting factor v^2(v-vt), v is the mean wind speed，and they are 7, 9, 11, 13, 15, 17, 19, 21, 23, 25, 27, 29, 31, 33, 34m/s, respectively; and m/s needs to be conversed into knot
#level,6 v^2(v-vt)=(7*3600/1852)*(7*3600/1852)*(7*3600/1852-6*3600/1852)=359.8989961
#level,8 v^2(v-vt)=(9*3600/1852)*(9*3600/1852)*(9*3600/1852-6*3600/1852)=1784.8052258
#level,10 v^2(v-vt)=(11*3600/1852)*(11*3600/1852)*(11*3600/1852-6*3600/1852)=4443.6508708
#level,12 v^2(v-vt)=(13*3600/1852)*(13*3600/1852)*(13*3600/1852-6*3600/1852)=8688.9900498
#level,14 v^2(v-vt)=(15*3600/1852)*(15*3600/1852)*(15*3600/1852-6*3600/1852)=14873.3768816
#level,16 v^2(v-vt)=(17*3600/1852)*(17*3600/1852)*(17*3600/1852-6*3600/1852)=23349.3654847
#level,18 v^2(v-vt)=(19*3600/1852)*(19*3600/1852)*(19*3600/1852-6*3600/1852)=34469.5099779
#level,20 v^2(v-vt)=(21*3600/1852)*(21*3600/1852)*(21*3600/1852-6*3600/1852)=48586.3644798
#level,22 v^2(v-vt)=(23*3600/1852)*(23*3600/1852)*(23*3600/1852-6*3600/1852)=66052.4831091
#level,24 v^2(v-vt)=(24*3600/1852)*(24*3600/1852)*(24*3600/1852-6*3600/1852)=87220.4199845
#level,26 v^2(v-vt)=(27*3600/1852)*(27*3600/1852)*(27*3600/1852-6*3600/1852)=112442.7292247
#level,28 v^2(v-vt)=(29*3600/1852)*(29*3600/1852)*(29*3600/1852-6*3600/1852)=142071.9649483
#level,30 v^2(v-vt)=(31*3600/1852)*(31*3600/1852)*(31*3600/1852-6*3600/1852)=176460.6812740
#level,32 v^2(v-vt)=(33*3600/1852)*(33*3600/1852)*(33*3600/1852-6*3600/1852)=215961.4323204
#level,34 v^2(v-vt)=(34*3600/1852)*(34*3600/1852)*(34*3600/1852-6*3600/1852)=237738.9940260
#1 knot = 1 nautical mile/hour =1852m/hour=1852/3600m/s=0.5144m/s
#sellevel6
cdo -mulc,359.8989961 -sellevel,6 era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel6_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel6_“$common_year”.nc era5_land_DP_NE_range6_8_“$common_year”.nc
#sellevel8
cdo -mulc,1784.8052258 -sellevel,8 era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel8_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel8_“$common_year”.nc era5_land_DP_NE_range8_10_“$common_year”.nc
#sellevel10
cdo -mulc,4443.6508708 -sellevel,10 era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel10_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel10_“$common_year”.nc era5_land_DP_NE_range10_12_“$common_year”.nc
#sellevel12
cdo -mulc,8688.9900498 -sellevel,12 era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel12_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel12_“$common_year”.nc era5_land_DP_NE_range12_14_“$common_year”.nc
#sellevel14
cdo -mulc,14873.3768816 -sellevel,14 era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel14_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel14_“$common_year”.nc era5_land_DP_NE_range14_16_“$common_year”.nc
#sellevel16
cdo -mulc,23349.3654847 -sellevel,16 era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel16_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel16_“$common_year”.nc era5_land_DP_NE_range16_18_“$common_year”.nc
#sellevel18
cdo -mulc,34469.5099779 -sellevel,18 era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel18_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel18_“$common_year”.nc era5_land_DP_NE_range18_20_“$common_year”.nc
#sellevel20
cdo -mulc,48586.3644798 -sellevel,20 era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel20_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel20_“$common_year”.nc era5_land_DP_NE_range20_22_“$common_year”.nc
#sellevel22
cdo -mulc,66052.4831091 -sellevel,22 era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel22_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel22_“$common_year”.nc era5_land_DP_NE_range22_24_“$common_year”.nc
#sellevel24
cdo -mulc,87220.4199845 -sellevel,24 era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel24_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel24_“$common_year”.nc era5_land_DP_NE_range24_26_“$common_year”.nc
#sellevel26
cdo -mulc,112442.7292247 -sellevel,26 era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel26_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel26_“$common_year”.nc era5_land_DP_NE_range26_28_“$common_year”.nc
#sellevel28
cdo -mulc,142071.9649483 -sellevel,28 era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel28_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel28_“$common_year”.nc era5_land_DP_NE_range28_30_“$common_year”.nc
#sellevel30
cdo -mulc,176460.6812740 -sellevel,30 era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel30_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel30_“$common_year”.nc era5_land_DP_NE_range30_32_“$common_year”.nc
#sellevel32
cdo -mulc,215961.4323204 -sellevel,32 era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel32_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel32_“$common_year”.nc era5_land_DP_NE_range32_34_“$common_year”.nc
#sellevel34
cdo -mulc,237738.9940260 -sellevel,34 era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel34_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NE_histcount_divc_sellevel34_“$common_year”.nc era5_land_DP_NE_range34_inf_“$common_year”.nc
#enssum
cdo enssum era5_land_DP_NE_range6_8_“$common_year”.nc era5_land_DP_NE_range8_10_“$common_year”.nc era5_land_DP_NE_range10_12_“$common_year”.nc era5_land_DP_NE_range12_14_“$common_year”.nc era5_land_DP_NE_range14_16_“$common_year”.nc era5_land_DP_NE_range16_18_“$common_year”.nc era5_land_DP_NE_range18_20_“$common_year”.nc era5_land_DP_NE_range20_22_“$common_year”.nc era5_land_DP_NE_range22_24_“$common_year”.nc era5_land_DP_NE_range24_26_“$common_year”.nc era5_land_DP_NE_range26_28_“$common_year”.nc era5_land_DP_NE_range28_30_“$common_year”.nc era5_land_DP_NE_range30_32_“$common_year”.nc era5_land_DP_NE_range32_34_“$common_year”.nc era5_land_DP_NE_range34_inf_“$common_year”.nc era5_land_DP_NE_range_enssum_“$common_year”.nc
#change variable name into DP_NE, in order to be used in the resultanting 
cdo chname,WS,DP_NE era5_land_DP_NE_range_enssum_“$common_year”.nc era5_land_DP_NE_range_enssum_chname_“$common_year”.nc

#ENE, 11.25≤ENE＜33.75
cdo setvrange,11.25,33.7499999 era5_land_WD_ifthen_“$common_year”.nc era5_land_WD_ifthen_setvrange_ENE_“$common_year”.nc
#mask sand-moving wind speeds in the ENE azimuth
cdo ifthen era5_land_WD_ifthen_setvrange_ENE_“$common_year”.nc era5_land_WS_setrtomiss_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_ENE_“$common_year”.nc
#2 m/s bins of sand-moving wind speeds in the ENE azimuth, 6m/s≤WS＜8m/s, 8m/s≤WS＜10m/s, 10m/s≤WS＜12m/s, 12m/s≤WS＜14m/s, 14m/s≤WS＜16m/s, 16m/s≤WS＜18m/s, 18m/s≤WS＜20m/s, 20m/s≤WS＜22m/s, 22m/s≤WS＜24m/s, 24m/s≤WS＜26m/s, 26m/s≤WS＜28m/s, 28m/s≤WS＜30m/s, 30m/s≤WS＜32m/s, 32m/s≤WS<34m/s, 34m/s≤WS
cdo histcount,6,7.9999999,9.9999999,11.9999999,13.9999999,15.9999999,17.9999999,19.9999999,21.9999999,23.9999999,25.9999999,27.9999999,29.9999999,31.9999999,33.9999999,inf era5_land_WS_setrtomiss_ifthen_ENE_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_ENE_histcount_“$common_year”.nc
#the sand-moving wind frequency in the ENE azimuth, 8760 is the total hours for the “$common_year”
cdo divc,8760 era5_land_WS_setrtomiss_ifthen_ENE_histcount_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_“$common_year”.nc
#setmisstoc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_setmisstoc_“$common_year”.nc
#mulc
cdo mulc,100 era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_setmisstoc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_setmisstoc_mulc_“$common_year”.nc
#weighting factor v^2(v-vt), v is the mean wind speed，and they are 7, 9, 11, 13, 15, 17, 19, 21, 23, 25, 27, 29, 31, 33, 34m/s, respectively; and m/s needs to be conversed into knot
#level,6 v^2(v-vt)=(7*3600/1852)*(7*3600/1852)*(7*3600/1852-6*3600/1852)=359.8989961
#level,8 v^2(v-vt)=(9*3600/1852)*(9*3600/1852)*(9*3600/1852-6*3600/1852)=1784.8052258
#level,10 v^2(v-vt)=(11*3600/1852)*(11*3600/1852)*(11*3600/1852-6*3600/1852)=4443.6508708
#level,12 v^2(v-vt)=(13*3600/1852)*(13*3600/1852)*(13*3600/1852-6*3600/1852)=8688.9900498
#level,14 v^2(v-vt)=(15*3600/1852)*(15*3600/1852)*(15*3600/1852-6*3600/1852)=14873.3768816
#level,16 v^2(v-vt)=(17*3600/1852)*(17*3600/1852)*(17*3600/1852-6*3600/1852)=23349.3654847
#level,18 v^2(v-vt)=(19*3600/1852)*(19*3600/1852)*(19*3600/1852-6*3600/1852)=34469.5099779
#level,20 v^2(v-vt)=(21*3600/1852)*(21*3600/1852)*(21*3600/1852-6*3600/1852)=48586.3644798
#level,22 v^2(v-vt)=(23*3600/1852)*(23*3600/1852)*(23*3600/1852-6*3600/1852)=66052.4831091
#level,24 v^2(v-vt)=(24*3600/1852)*(24*3600/1852)*(24*3600/1852-6*3600/1852)=87220.4199845
#level,26 v^2(v-vt)=(27*3600/1852)*(27*3600/1852)*(27*3600/1852-6*3600/1852)=112442.7292247
#level,28 v^2(v-vt)=(29*3600/1852)*(29*3600/1852)*(29*3600/1852-6*3600/1852)=142071.9649483
#level,30 v^2(v-vt)=(31*3600/1852)*(31*3600/1852)*(31*3600/1852-6*3600/1852)=176460.6812740
#level,32 v^2(v-vt)=(33*3600/1852)*(33*3600/1852)*(33*3600/1852-6*3600/1852)=215961.4323204
#level,34 v^2(v-vt)=(34*3600/1852)*(34*3600/1852)*(34*3600/1852-6*3600/1852)=237738.9940260
#1节(knot)=1海里/小时=1852m/小时=1852/3600m/s=0.5144m/s
#1 knot = 1 nautical mile/hour =1852m/hour=1852/3600m/s=0.5144m/s
#sellevel6
cdo -mulc,359.8989961 -sellevel,6 era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel6_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel6_“$common_year”.nc era5_land_DP_ENE_range6_8_“$common_year”.nc
#sellevel8
cdo -mulc,1784.8052258 -sellevel,8 era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel8_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel8_“$common_year”.nc era5_land_DP_ENE_range8_10_“$common_year”.nc
#sellevel10
cdo -mulc,4443.6508708 -sellevel,10 era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel10_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel10_“$common_year”.nc era5_land_DP_ENE_range10_12_“$common_year”.nc
#sellevel12
cdo -mulc,8688.9900498 -sellevel,12 era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel12_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel12_“$common_year”.nc era5_land_DP_ENE_range12_14_“$common_year”.nc
#sellevel14
cdo -mulc,14873.3768816 -sellevel,14 era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel14_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel14_“$common_year”.nc era5_land_DP_ENE_range14_16_“$common_year”.nc
#sellevel16
cdo -mulc,23349.3654847 -sellevel,16 era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel16_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel16_“$common_year”.nc era5_land_DP_ENE_range16_18_“$common_year”.nc
#sellevel18
cdo -mulc,34469.5099779 -sellevel,18 era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel18_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel18_“$common_year”.nc era5_land_DP_ENE_range18_20_“$common_year”.nc
#sellevel20
cdo -mulc,48586.3644798 -sellevel,20 era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel20_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel20_“$common_year”.nc era5_land_DP_ENE_range20_22_“$common_year”.nc
#sellevel22
cdo -mulc,66052.4831091 -sellevel,22 era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel22_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel22_“$common_year”.nc era5_land_DP_ENE_range22_24_“$common_year”.nc
#sellevel24
cdo -mulc,87220.4199845 -sellevel,24 era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel24_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel24_“$common_year”.nc era5_land_DP_ENE_range24_26_“$common_year”.nc
#sellevel26
cdo -mulc,112442.7292247 -sellevel,26 era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel26_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel26_“$common_year”.nc era5_land_DP_ENE_range26_28_“$common_year”.nc
#sellevel28
cdo -mulc,142071.9649483 -sellevel,28 era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel28_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel28_“$common_year”.nc era5_land_DP_ENE_range28_30_“$common_year”.nc
#sellevel30
cdo -mulc,176460.6812740 -sellevel,30 era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel30_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel30_“$common_year”.nc era5_land_DP_ENE_range30_32_“$common_year”.nc
#sellevel32
cdo -mulc,215961.4323204 -sellevel,32 era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel32_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel32_“$common_year”.nc era5_land_DP_ENE_range32_34_“$common_year”.nc
#sellevel34
cdo -mulc,237738.9940260 -sellevel,34 era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel34_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_ENE_histcount_divc_sellevel34_“$common_year”.nc era5_land_DP_ENE_range34_inf_“$common_year”.nc
#enssum
cdo enssum era5_land_DP_ENE_range6_8_“$common_year”.nc era5_land_DP_ENE_range8_10_“$common_year”.nc era5_land_DP_ENE_range10_12_“$common_year”.nc era5_land_DP_ENE_range12_14_“$common_year”.nc era5_land_DP_ENE_range14_16_“$common_year”.nc era5_land_DP_ENE_range16_18_“$common_year”.nc era5_land_DP_ENE_range18_20_“$common_year”.nc era5_land_DP_ENE_range20_22_“$common_year”.nc era5_land_DP_ENE_range22_24_“$common_year”.nc era5_land_DP_ENE_range24_26_“$common_year”.nc era5_land_DP_ENE_range26_28_“$common_year”.nc era5_land_DP_ENE_range28_30_“$common_year”.nc era5_land_DP_ENE_range30_32_“$common_year”.nc era5_land_DP_ENE_range32_34_“$common_year”.nc era5_land_DP_ENE_range34_inf_“$common_year”.nc era5_land_DP_ENE_range_enssum_“$common_year”.nc
#change variable name into DP_ENE, in order to be used in the resultanting 
cdo chname,WS,DP_ENE era5_land_DP_ENE_range_enssum_“$common_year”.nc era5_land_DP_ENE_range_enssum_chname_“$common_year”.nc

#E, -11.25≤E<11.25
cdo setvrange,-11.25,11.2499999 era5_land_WD_ifthen_“$common_year”.nc era5_land_WD_ifthen_setvrange_E_“$common_year”.nc
#mask sand-moving wind speeds in the E azimuth
cdo ifthen era5_land_WD_ifthen_setvrange_E_“$common_year”.nc era5_land_WS_setrtomiss_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_E_“$common_year”.nc
#2 m/s bins of sand-moving wind speeds in the E azimuth, 6m/s≤WS＜8m/s, 8m/s≤WS＜10m/s, 10m/s≤WS＜12m/s, 12m/s≤WS＜14m/s, 14m/s≤WS＜16m/s, 16m/s≤WS＜18m/s, 18m/s≤WS＜20m/s, 20m/s≤WS＜22m/s, 22m/s≤WS＜24m/s, 24m/s≤WS＜26m/s, 26m/s≤WS＜28m/s, 28m/s≤WS＜30m/s, 30m/s≤WS＜32m/s, 32m/s≤WS<34m/s, 34m/s≤WS
cdo histcount,6,7.9999999,9.9999999,11.9999999,13.9999999,15.9999999,17.9999999,19.9999999,21.9999999,23.9999999,25.9999999,27.9999999,29.9999999,31.9999999,33.9999999,inf era5_land_WS_setrtomiss_ifthen_E_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_E_histcount_“$common_year”.nc
#the sand-moving wind frequency in the E azimuth, 8760 is the total hours for the “$common_year”
cdo divc,8760 era5_land_WS_setrtomiss_ifthen_E_histcount_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_E_histcount_divc_“$common_year”.nc
#setmisstoc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_E_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_E_histcount_divc_setmisstoc_“$common_year”.nc
#mulc
cdo mulc,100 era5_land_WS_setrtomiss_ifthen_E_histcount_divc_setmisstoc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_E_histcount_divc_setmisstoc_mulc_“$common_year”.nc
#weighting factor v^2(v-vt), v is the mean wind speed，and they are 7, 9, 11, 13, 15, 17, 19, 21, 23, 25, 27, 29, 31, 33, 34m/s, respectively; and m/s needs to be conversed into knot
#level,6 v^2(v-vt)=(7*3600/1852)*(7*3600/1852)*(7*3600/1852-6*3600/1852)=359.8989961
#level,8 v^2(v-vt)=(9*3600/1852)*(9*3600/1852)*(9*3600/1852-6*3600/1852)=1784.8052258
#level,10 v^2(v-vt)=(11*3600/1852)*(11*3600/1852)*(11*3600/1852-6*3600/1852)=4443.6508708
#level,12 v^2(v-vt)=(13*3600/1852)*(13*3600/1852)*(13*3600/1852-6*3600/1852)=8688.9900498
#level,14 v^2(v-vt)=(15*3600/1852)*(15*3600/1852)*(15*3600/1852-6*3600/1852)=14873.3768816
#level,16 v^2(v-vt)=(17*3600/1852)*(17*3600/1852)*(17*3600/1852-6*3600/1852)=23349.3654847
#level,18 v^2(v-vt)=(19*3600/1852)*(19*3600/1852)*(19*3600/1852-6*3600/1852)=34469.5099779
#level,20 v^2(v-vt)=(21*3600/1852)*(21*3600/1852)*(21*3600/1852-6*3600/1852)=48586.3644798
#level,22 v^2(v-vt)=(23*3600/1852)*(23*3600/1852)*(23*3600/1852-6*3600/1852)=66052.4831091
#level,24 v^2(v-vt)=(24*3600/1852)*(24*3600/1852)*(24*3600/1852-6*3600/1852)=87220.4199845
#level,26 v^2(v-vt)=(27*3600/1852)*(27*3600/1852)*(27*3600/1852-6*3600/1852)=112442.7292247
#level,28 v^2(v-vt)=(29*3600/1852)*(29*3600/1852)*(29*3600/1852-6*3600/1852)=142071.9649483
#level,30 v^2(v-vt)=(31*3600/1852)*(31*3600/1852)*(31*3600/1852-6*3600/1852)=176460.6812740
#level,32 v^2(v-vt)=(33*3600/1852)*(33*3600/1852)*(33*3600/1852-6*3600/1852)=215961.4323204
#level,34 v^2(v-vt)=(34*3600/1852)*(34*3600/1852)*(34*3600/1852-6*3600/1852)=237738.9940260
#1 knot = 1 nautical mile/hour =1852m/hour=1852/3600m/s=0.5144m/s
#sellevel6
cdo -mulc,359.8989961 -sellevel,6 era5_land_WS_setrtomiss_ifthen_E_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel6_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel6_“$common_year”.nc era5_land_DP_E_range6_8_“$common_year”.nc
#sellevel8
cdo -mulc,1784.8052258 -sellevel,8 era5_land_WS_setrtomiss_ifthen_E_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel8_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel8_“$common_year”.nc era5_land_DP_E_range8_10_“$common_year”.nc
#sellevel10
cdo -mulc,4443.6508708 -sellevel,10 era5_land_WS_setrtomiss_ifthen_E_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel10_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel10_“$common_year”.nc era5_land_DP_E_range10_12_“$common_year”.nc
#sellevel12
cdo -mulc,8688.9900498 -sellevel,12 era5_land_WS_setrtomiss_ifthen_E_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel12_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel12_“$common_year”.nc era5_land_DP_E_range12_14_“$common_year”.nc
#sellevel14
cdo -mulc,14873.3768816 -sellevel,14 era5_land_WS_setrtomiss_ifthen_E_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel14_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel14_“$common_year”.nc era5_land_DP_E_range14_16_“$common_year”.nc
#sellevel16
cdo -mulc,23349.3654847 -sellevel,16 era5_land_WS_setrtomiss_ifthen_E_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel16_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel16_“$common_year”.nc era5_land_DP_E_range16_18_“$common_year”.nc
#sellevel18
cdo -mulc,34469.5099779 -sellevel,18 era5_land_WS_setrtomiss_ifthen_E_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel18_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel18_“$common_year”.nc era5_land_DP_E_range18_20_“$common_year”.nc
#sellevel20
cdo -mulc,48586.3644798 -sellevel,20 era5_land_WS_setrtomiss_ifthen_E_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel20_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel20_“$common_year”.nc era5_land_DP_E_range20_22_“$common_year”.nc
#sellevel22
cdo -mulc,66052.4831091 -sellevel,22 era5_land_WS_setrtomiss_ifthen_E_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel22_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel22_“$common_year”.nc era5_land_DP_E_range22_24_“$common_year”.nc
#sellevel24
cdo -mulc,87220.4199845 -sellevel,24 era5_land_WS_setrtomiss_ifthen_E_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel24_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel24_“$common_year”.nc era5_land_DP_E_range24_26_“$common_year”.nc
#sellevel26
cdo -mulc,112442.7292247 -sellevel,26 era5_land_WS_setrtomiss_ifthen_E_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel26_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel26_“$common_year”.nc era5_land_DP_E_range26_28_“$common_year”.nc
#sellevel28
cdo -mulc,142071.9649483 -sellevel,28 era5_land_WS_setrtomiss_ifthen_E_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel28_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel28_“$common_year”.nc era5_land_DP_E_range28_30_“$common_year”.nc
#sellevel30
cdo -mulc,176460.6812740 -sellevel,30 era5_land_WS_setrtomiss_ifthen_E_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel30_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel30_“$common_year”.nc era5_land_DP_E_range30_32_“$common_year”.nc
#sellevel32
cdo -mulc,215961.4323204 -sellevel,32 era5_land_WS_setrtomiss_ifthen_E_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel32_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel32_“$common_year”.nc era5_land_DP_E_range32_34_“$common_year”.nc
#sellevel34
cdo -mulc,237738.9940260 -sellevel,34 era5_land_WS_setrtomiss_ifthen_E_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel34_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_E_histcount_divc_sellevel34_“$common_year”.nc era5_land_DP_E_range34_inf_“$common_year”.nc
#enssum
cdo enssum era5_land_DP_E_range6_8_“$common_year”.nc era5_land_DP_E_range8_10_“$common_year”.nc era5_land_DP_E_range10_12_“$common_year”.nc era5_land_DP_E_range12_14_“$common_year”.nc era5_land_DP_E_range14_16_“$common_year”.nc era5_land_DP_E_range16_18_“$common_year”.nc era5_land_DP_E_range18_20_“$common_year”.nc era5_land_DP_E_range20_22_“$common_year”.nc era5_land_DP_E_range22_24_“$common_year”.nc era5_land_DP_E_range24_26_“$common_year”.nc era5_land_DP_E_range26_28_“$common_year”.nc era5_land_DP_E_range28_30_“$common_year”.nc era5_land_DP_E_range30_32_“$common_year”.nc era5_land_DP_E_range32_34_“$common_year”.nc era5_land_DP_E_range34_inf_“$common_year”.nc era5_land_DP_E_range_enssum_“$common_year”.nc
#change variable name into DP_E, in order to be used in the resultanting 
cdo chname,WS,DP_E era5_land_DP_E_range_enssum_“$common_year”.nc era5_land_DP_E_range_enssum_chname_“$common_year”.nc


#ESE, -33.75≤ESE＜-11.25
cdo setvrange,-33.75,-11.2500001 era5_land_WD_ifthen_“$common_year”.nc era5_land_WD_ifthen_setvrange_ESE_“$common_year”.nc
#mask sand-moving wind speeds in the ESE azimuth
cdo ifthen era5_land_WD_ifthen_setvrange_ESE_“$common_year”.nc era5_land_WS_setrtomiss_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_ESE_“$common_year”.nc
#2 m/s bins of sand-moving wind speeds in the ESE azimuth, 6m/s≤WS＜8m/s, 8m/s≤WS＜10m/s, 10m/s≤WS＜12m/s, 12m/s≤WS＜14m/s, 14m/s≤WS＜16m/s, 16m/s≤WS＜18m/s, 18m/s≤WS＜20m/s, 20m/s≤WS＜22m/s, 22m/s≤WS＜24m/s, 24m/s≤WS＜26m/s, 26m/s≤WS＜28m/s, 28m/s≤WS＜30m/s, 30m/s≤WS＜32m/s, 32m/s≤WS<34m/s, 34m/s≤WS
cdo histcount,6,7.9999999,9.9999999,11.9999999,13.9999999,15.9999999,17.9999999,19.9999999,21.9999999,23.9999999,25.9999999,27.9999999,29.9999999,31.9999999,33.9999999,inf era5_land_WS_setrtomiss_ifthen_ESE_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_ESE_histcount_“$common_year”.nc
#the sand-moving wind frequency in the ESE azimuth, 8760 is the total hours for the “$common_year”
cdo divc,8760 era5_land_WS_setrtomiss_ifthen_ESE_histcount_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_“$common_year”.nc
#setmisstoc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_setmisstoc_“$common_year”.nc
#mulc
cdo mulc,100 era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_setmisstoc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_setmisstoc_mulc_“$common_year”.nc
#weighting factor v^2(v-vt), v is the mean wind speed，and they are 7, 9, 11, 13, 15, 17, 19, 21, 23, 25, 27, 29, 31, 33, 34m/s, respectively; and m/s needs to be conversed into knot
#level,6 v^2(v-vt)=(7*3600/1852)*(7*3600/1852)*(7*3600/1852-6*3600/1852)=359.8989961
#level,8 v^2(v-vt)=(9*3600/1852)*(9*3600/1852)*(9*3600/1852-6*3600/1852)=1784.8052258
#level,10 v^2(v-vt)=(11*3600/1852)*(11*3600/1852)*(11*3600/1852-6*3600/1852)=4443.6508708
#level,12 v^2(v-vt)=(13*3600/1852)*(13*3600/1852)*(13*3600/1852-6*3600/1852)=8688.9900498
#level,14 v^2(v-vt)=(15*3600/1852)*(15*3600/1852)*(15*3600/1852-6*3600/1852)=14873.3768816
#level,16 v^2(v-vt)=(17*3600/1852)*(17*3600/1852)*(17*3600/1852-6*3600/1852)=23349.3654847
#level,18 v^2(v-vt)=(19*3600/1852)*(19*3600/1852)*(19*3600/1852-6*3600/1852)=34469.5099779
#level,20 v^2(v-vt)=(21*3600/1852)*(21*3600/1852)*(21*3600/1852-6*3600/1852)=48586.3644798
#level,22 v^2(v-vt)=(23*3600/1852)*(23*3600/1852)*(23*3600/1852-6*3600/1852)=66052.4831091
#level,24 v^2(v-vt)=(24*3600/1852)*(24*3600/1852)*(24*3600/1852-6*3600/1852)=87220.4199845
#level,26 v^2(v-vt)=(27*3600/1852)*(27*3600/1852)*(27*3600/1852-6*3600/1852)=112442.7292247
#level,28 v^2(v-vt)=(29*3600/1852)*(29*3600/1852)*(29*3600/1852-6*3600/1852)=142071.9649483
#level,30 v^2(v-vt)=(31*3600/1852)*(31*3600/1852)*(31*3600/1852-6*3600/1852)=176460.6812740
#level,32 v^2(v-vt)=(33*3600/1852)*(33*3600/1852)*(33*3600/1852-6*3600/1852)=215961.4323204
#level,34 v^2(v-vt)=(34*3600/1852)*(34*3600/1852)*(34*3600/1852-6*3600/1852)=237738.9940260
#1 knot = 1 nautical mile/hour =1852m/hour=1852/3600m/s=0.5144m/s
#sellevel6
cdo -mulc,359.8989961 -sellevel,6 era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel6_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel6_“$common_year”.nc era5_land_DP_ESE_range6_8_“$common_year”.nc
#sellevel8
cdo -mulc,1784.8052258 -sellevel,8 era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel8_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel8_“$common_year”.nc era5_land_DP_ESE_range8_10_“$common_year”.nc
#sellevel10
cdo -mulc,4443.6508708 -sellevel,10 era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel10_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel10_“$common_year”.nc era5_land_DP_ESE_range10_12_“$common_year”.nc
#sellevel12
cdo -mulc,8688.9900498 -sellevel,12 era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel12_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel12_“$common_year”.nc era5_land_DP_ESE_range12_14_“$common_year”.nc
#sellevel14
cdo -mulc,14873.3768816 -sellevel,14 era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel14_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel14_“$common_year”.nc era5_land_DP_ESE_range14_16_“$common_year”.nc
#sellevel16
cdo -mulc,23349.3654847 -sellevel,16 era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel16_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel16_“$common_year”.nc era5_land_DP_ESE_range16_18_“$common_year”.nc
#sellevel18
cdo -mulc,34469.5099779 -sellevel,18 era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel18_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel18_“$common_year”.nc era5_land_DP_ESE_range18_20_“$common_year”.nc
#sellevel20
cdo -mulc,48586.3644798 -sellevel,20 era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel20_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel20_“$common_year”.nc era5_land_DP_ESE_range20_22_“$common_year”.nc
#sellevel22
cdo -mulc,66052.4831091 -sellevel,22 era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel22_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel22_“$common_year”.nc era5_land_DP_ESE_range22_24_“$common_year”.nc
#sellevel24
cdo -mulc,87220.4199845 -sellevel,24 era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel24_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel24_“$common_year”.nc era5_land_DP_ESE_range24_26_“$common_year”.nc
#sellevel26
cdo -mulc,112442.7292247 -sellevel,26 era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel26_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel26_“$common_year”.nc era5_land_DP_ESE_range26_28_“$common_year”.nc
#sellevel28
cdo -mulc,142071.9649483 -sellevel,28 era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel28_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel28_“$common_year”.nc era5_land_DP_ESE_range28_30_“$common_year”.nc
#sellevel30
cdo -mulc,176460.6812740 -sellevel,30 era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel30_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel30_“$common_year”.nc era5_land_DP_ESE_range30_32_“$common_year”.nc
#sellevel32
cdo -mulc,215961.4323204 -sellevel,32 era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel32_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel32_“$common_year”.nc era5_land_DP_ESE_range32_34_“$common_year”.nc
#sellevel34
cdo -mulc,237738.9940260 -sellevel,34 era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel34_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_ESE_histcount_divc_sellevel34_“$common_year”.nc era5_land_DP_ESE_range34_inf_“$common_year”.nc
#enssum
cdo enssum era5_land_DP_ESE_range6_8_“$common_year”.nc era5_land_DP_ESE_range8_10_“$common_year”.nc era5_land_DP_ESE_range10_12_“$common_year”.nc era5_land_DP_ESE_range12_14_“$common_year”.nc era5_land_DP_ESE_range14_16_“$common_year”.nc era5_land_DP_ESE_range16_18_“$common_year”.nc era5_land_DP_ESE_range18_20_“$common_year”.nc era5_land_DP_ESE_range20_22_“$common_year”.nc era5_land_DP_ESE_range22_24_“$common_year”.nc era5_land_DP_ESE_range24_26_“$common_year”.nc era5_land_DP_ESE_range26_28_“$common_year”.nc era5_land_DP_ESE_range28_30_“$common_year”.nc era5_land_DP_ESE_range30_32_“$common_year”.nc era5_land_DP_ESE_range32_34_“$common_year”.nc era5_land_DP_ESE_range34_inf_“$common_year”.nc era5_land_DP_ESE_range_enssum_“$common_year”.nc
#change variable name into DP_ESE, in order to be used in the resultanting 
cdo chname,WS,DP_ESE era5_land_DP_ESE_range_enssum_“$common_year”.nc era5_land_DP_ESE_range_enssum_chname_“$common_year”.nc


#SE, -56.25≤SE＜-33.75
cdo setvrange,-56.25,-33.7500001 era5_land_WD_ifthen_“$common_year”.nc era5_land_WD_ifthen_setvrange_SE_“$common_year”.nc
#mask sand-moving wind speeds in the SE azimuth
cdo ifthen era5_land_WD_ifthen_setvrange_SE_“$common_year”.nc era5_land_WS_setrtomiss_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_SE_“$common_year”.nc
#2 m/s bins of sand-moving wind speeds in the SE azimuth, 6m/s≤WS＜8m/s, 8m/s≤WS＜10m/s, 10m/s≤WS＜12m/s, 12m/s≤WS＜14m/s, 14m/s≤WS＜16m/s, 16m/s≤WS＜18m/s, 18m/s≤WS＜20m/s, 20m/s≤WS＜22m/s, 22m/s≤WS＜24m/s, 24m/s≤WS＜26m/s, 26m/s≤WS＜28m/s, 28m/s≤WS＜30m/s, 30m/s≤WS＜32m/s, 32m/s≤WS<34m/s, 34m/s≤WS
cdo histcount,6,7.9999999,9.9999999,11.9999999,13.9999999,15.9999999,17.9999999,19.9999999,21.9999999,23.9999999,25.9999999,27.9999999,29.9999999,31.9999999,33.9999999,inf era5_land_WS_setrtomiss_ifthen_SE_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_SE_histcount_“$common_year”.nc
#the sand-moving wind frequency in the SE azimuth, 8760 is the total hours for the “$common_year”
cdo divc,8760 era5_land_WS_setrtomiss_ifthen_SE_histcount_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_“$common_year”.nc
#setmisstoc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_setmisstoc_“$common_year”.nc
#mulc
cdo mulc,100 era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_setmisstoc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_setmisstoc_mulc_“$common_year”.nc
#weighting factor v^2(v-vt), v is the mean wind speed，and they are 7, 9, 11, 13, 15, 17, 19, 21, 23, 25, 27, 29, 31, 33, 34m/s, respectively; and m/s needs to be conversed into knot
#level,6 v^2(v-vt)=(7*3600/1852)*(7*3600/1852)*(7*3600/1852-6*3600/1852)=359.8989961
#level,8 v^2(v-vt)=(9*3600/1852)*(9*3600/1852)*(9*3600/1852-6*3600/1852)=1784.8052258
#level,10 v^2(v-vt)=(11*3600/1852)*(11*3600/1852)*(11*3600/1852-6*3600/1852)=4443.6508708
#level,12 v^2(v-vt)=(13*3600/1852)*(13*3600/1852)*(13*3600/1852-6*3600/1852)=8688.9900498
#level,14 v^2(v-vt)=(15*3600/1852)*(15*3600/1852)*(15*3600/1852-6*3600/1852)=14873.3768816
#level,16 v^2(v-vt)=(17*3600/1852)*(17*3600/1852)*(17*3600/1852-6*3600/1852)=23349.3654847
#level,18 v^2(v-vt)=(19*3600/1852)*(19*3600/1852)*(19*3600/1852-6*3600/1852)=34469.5099779
#level,20 v^2(v-vt)=(21*3600/1852)*(21*3600/1852)*(21*3600/1852-6*3600/1852)=48586.3644798
#level,22 v^2(v-vt)=(23*3600/1852)*(23*3600/1852)*(23*3600/1852-6*3600/1852)=66052.4831091
#level,24 v^2(v-vt)=(24*3600/1852)*(24*3600/1852)*(24*3600/1852-6*3600/1852)=87220.4199845
#level,26 v^2(v-vt)=(27*3600/1852)*(27*3600/1852)*(27*3600/1852-6*3600/1852)=112442.7292247
#level,28 v^2(v-vt)=(29*3600/1852)*(29*3600/1852)*(29*3600/1852-6*3600/1852)=142071.9649483
#level,30 v^2(v-vt)=(31*3600/1852)*(31*3600/1852)*(31*3600/1852-6*3600/1852)=176460.6812740
#level,32 v^2(v-vt)=(33*3600/1852)*(33*3600/1852)*(33*3600/1852-6*3600/1852)=215961.4323204
#level,34 v^2(v-vt)=(34*3600/1852)*(34*3600/1852)*(34*3600/1852-6*3600/1852)=237738.9940260
#1 knot = 1 nautical mile/hour =1852m/hour=1852/3600m/s=0.5144m/s
#sellevel6
cdo -mulc,359.8989961 -sellevel,6 era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel6_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel6_“$common_year”.nc era5_land_DP_SE_range6_8_“$common_year”.nc
#sellevel8
cdo -mulc,1784.8052258 -sellevel,8 era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel8_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel8_“$common_year”.nc era5_land_DP_SE_range8_10_“$common_year”.nc
#sellevel10
cdo -mulc,4443.6508708 -sellevel,10 era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel10_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel10_“$common_year”.nc era5_land_DP_SE_range10_12_“$common_year”.nc
#sellevel12
cdo -mulc,8688.9900498 -sellevel,12 era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel12_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel12_“$common_year”.nc era5_land_DP_SE_range12_14_“$common_year”.nc
#sellevel14
cdo -mulc,14873.3768816 -sellevel,14 era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel14_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel14_“$common_year”.nc era5_land_DP_SE_range14_16_“$common_year”.nc
#sellevel16
cdo -mulc,23349.3654847 -sellevel,16 era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel16_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel16_“$common_year”.nc era5_land_DP_SE_range16_18_“$common_year”.nc
#sellevel18
cdo -mulc,34469.5099779 -sellevel,18 era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel18_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel18_“$common_year”.nc era5_land_DP_SE_range18_20_“$common_year”.nc
#sellevel20
cdo -mulc,48586.3644798 -sellevel,20 era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel20_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel20_“$common_year”.nc era5_land_DP_SE_range20_22_“$common_year”.nc
#sellevel22
cdo -mulc,66052.4831091 -sellevel,22 era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel22_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel22_“$common_year”.nc era5_land_DP_SE_range22_24_“$common_year”.nc
#sellevel24
cdo -mulc,87220.4199845 -sellevel,24 era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel24_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel24_“$common_year”.nc era5_land_DP_SE_range24_26_“$common_year”.nc
#sellevel26
cdo -mulc,112442.7292247 -sellevel,26 era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel26_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel26_“$common_year”.nc era5_land_DP_SE_range26_28_“$common_year”.nc
#sellevel28
cdo -mulc,142071.9649483 -sellevel,28 era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel28_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel28_“$common_year”.nc era5_land_DP_SE_range28_30_“$common_year”.nc
#sellevel30
cdo -mulc,176460.6812740 -sellevel,30 era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel30_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel30_“$common_year”.nc era5_land_DP_SE_range30_32_“$common_year”.nc
#sellevel32
cdo -mulc,215961.4323204 -sellevel,32 era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel32_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel32_“$common_year”.nc era5_land_DP_SE_range32_34_“$common_year”.nc
#sellevel34
cdo -mulc,237738.9940260 -sellevel,34 era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel34_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SE_histcount_divc_sellevel34_“$common_year”.nc era5_land_DP_SE_range34_inf_“$common_year”.nc
#enssum
cdo enssum era5_land_DP_SE_range6_8_“$common_year”.nc era5_land_DP_SE_range8_10_“$common_year”.nc era5_land_DP_SE_range10_12_“$common_year”.nc era5_land_DP_SE_range12_14_“$common_year”.nc era5_land_DP_SE_range14_16_“$common_year”.nc era5_land_DP_SE_range16_18_“$common_year”.nc era5_land_DP_SE_range18_20_“$common_year”.nc era5_land_DP_SE_range20_22_“$common_year”.nc era5_land_DP_SE_range22_24_“$common_year”.nc era5_land_DP_SE_range24_26_“$common_year”.nc era5_land_DP_SE_range26_28_“$common_year”.nc era5_land_DP_SE_range28_30_“$common_year”.nc era5_land_DP_SE_range30_32_“$common_year”.nc era5_land_DP_SE_range32_34_“$common_year”.nc era5_land_DP_SE_range34_inf_“$common_year”.nc era5_land_DP_SE_range_enssum_“$common_year”.nc
#change variable name into DP_SE, in order to be used in the resultanting 
cdo chname,WS,DP_SE era5_land_DP_SE_range_enssum_“$common_year”.nc era5_land_DP_SE_range_enssum_chname_“$common_year”.nc


#SSE, -78.75≤SSE＜-56.25
cdo setvrange,-78.75,-56.2500001 era5_land_WD_ifthen_“$common_year”.nc era5_land_WD_ifthen_setvrange_SSE_“$common_year”.nc
#mask sand-moving wind speeds in the SSE azimuth
cdo ifthen era5_land_WD_ifthen_setvrange_SSE_“$common_year”.nc era5_land_WS_setrtomiss_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_SSE_“$common_year”.nc
#2 m/s bins of sand-moving wind speeds in the SSE azimuth, 6m/s≤WS＜8m/s, 8m/s≤WS＜10m/s, 10m/s≤WS＜12m/s, 12m/s≤WS＜14m/s, 14m/s≤WS＜16m/s, 16m/s≤WS＜18m/s, 18m/s≤WS＜20m/s, 20m/s≤WS＜22m/s, 22m/s≤WS＜24m/s, 24m/s≤WS＜26m/s, 26m/s≤WS＜28m/s, 28m/s≤WS＜30m/s, 30m/s≤WS＜32m/s, 32m/s≤WS<34m/s, 34m/s≤WS
cdo histcount,6,7.9999999,9.9999999,11.9999999,13.9999999,15.9999999,17.9999999,19.9999999,21.9999999,23.9999999,25.9999999,27.9999999,29.9999999,31.9999999,33.9999999,inf era5_land_WS_setrtomiss_ifthen_SSE_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_SSE_histcount_“$common_year”.nc
#the sand-moving wind frequency in the SSE azimuth, 8760 is the total hours for the “$common_year”
cdo divc,8760 era5_land_WS_setrtomiss_ifthen_SSE_histcount_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_“$common_year”.nc
#setmisstoc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_setmisstoc_“$common_year”.nc
#mulc
cdo mulc,100 era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_setmisstoc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_setmisstoc_mulc_“$common_year”.nc
#weighting factor v^2(v-vt), v is the mean wind speed，and they are 7, 9, 11, 13, 15, 17, 19, 21, 23, 25, 27, 29, 31, 33, 34m/s, respectively; and m/s needs to be conversed into knot
#level,6 v^2(v-vt)=(7*3600/1852)*(7*3600/1852)*(7*3600/1852-6*3600/1852)=359.8989961
#level,8 v^2(v-vt)=(9*3600/1852)*(9*3600/1852)*(9*3600/1852-6*3600/1852)=1784.8052258
#level,10 v^2(v-vt)=(11*3600/1852)*(11*3600/1852)*(11*3600/1852-6*3600/1852)=4443.6508708
#level,12 v^2(v-vt)=(13*3600/1852)*(13*3600/1852)*(13*3600/1852-6*3600/1852)=8688.9900498
#level,14 v^2(v-vt)=(15*3600/1852)*(15*3600/1852)*(15*3600/1852-6*3600/1852)=14873.3768816
#level,16 v^2(v-vt)=(17*3600/1852)*(17*3600/1852)*(17*3600/1852-6*3600/1852)=23349.3654847
#level,18 v^2(v-vt)=(19*3600/1852)*(19*3600/1852)*(19*3600/1852-6*3600/1852)=34469.5099779
#level,20 v^2(v-vt)=(21*3600/1852)*(21*3600/1852)*(21*3600/1852-6*3600/1852)=48586.3644798
#level,22 v^2(v-vt)=(23*3600/1852)*(23*3600/1852)*(23*3600/1852-6*3600/1852)=66052.4831091
#level,24 v^2(v-vt)=(24*3600/1852)*(24*3600/1852)*(24*3600/1852-6*3600/1852)=87220.4199845
#level,26 v^2(v-vt)=(27*3600/1852)*(27*3600/1852)*(27*3600/1852-6*3600/1852)=112442.7292247
#level,28 v^2(v-vt)=(29*3600/1852)*(29*3600/1852)*(29*3600/1852-6*3600/1852)=142071.9649483
#level,30 v^2(v-vt)=(31*3600/1852)*(31*3600/1852)*(31*3600/1852-6*3600/1852)=176460.6812740
#level,32 v^2(v-vt)=(33*3600/1852)*(33*3600/1852)*(33*3600/1852-6*3600/1852)=215961.4323204
#level,34 v^2(v-vt)=(34*3600/1852)*(34*3600/1852)*(34*3600/1852-6*3600/1852)=237738.9940260
#1 knot = 1 nautical mile/hour =1852m/hour=1852/3600m/s=0.5144m/s
#sellevel6
cdo -mulc,359.8989961 -sellevel,6 era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel6_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel6_“$common_year”.nc era5_land_DP_SSE_range6_8_“$common_year”.nc
#sellevel8
cdo -mulc,1784.8052258 -sellevel,8 era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel8_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel8_“$common_year”.nc era5_land_DP_SSE_range8_10_“$common_year”.nc
#sellevel10
cdo -mulc,4443.6508708 -sellevel,10 era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel10_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel10_“$common_year”.nc era5_land_DP_SSE_range10_12_“$common_year”.nc
#sellevel12
cdo -mulc,8688.9900498 -sellevel,12 era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel12_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel12_“$common_year”.nc era5_land_DP_SSE_range12_14_“$common_year”.nc
#sellevel14
cdo -mulc,14873.3768816 -sellevel,14 era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel14_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel14_“$common_year”.nc era5_land_DP_SSE_range14_16_“$common_year”.nc
#sellevel16
cdo -mulc,23349.3654847 -sellevel,16 era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel16_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel16_“$common_year”.nc era5_land_DP_SSE_range16_18_“$common_year”.nc
#sellevel18
cdo -mulc,34469.5099779 -sellevel,18 era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel18_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel18_“$common_year”.nc era5_land_DP_SSE_range18_20_“$common_year”.nc
#sellevel20
cdo -mulc,48586.3644798 -sellevel,20 era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel20_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel20_“$common_year”.nc era5_land_DP_SSE_range20_22_“$common_year”.nc
#sellevel22
cdo -mulc,66052.4831091 -sellevel,22 era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel22_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel22_“$common_year”.nc era5_land_DP_SSE_range22_24_“$common_year”.nc
#sellevel24
cdo -mulc,87220.4199845 -sellevel,24 era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel24_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel24_“$common_year”.nc era5_land_DP_SSE_range24_26_“$common_year”.nc
#sellevel26
cdo -mulc,112442.7292247 -sellevel,26 era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel26_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel26_“$common_year”.nc era5_land_DP_SSE_range26_28_“$common_year”.nc
#sellevel28
cdo -mulc,142071.9649483 -sellevel,28 era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel28_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel28_“$common_year”.nc era5_land_DP_SSE_range28_30_“$common_year”.nc
#sellevel30
cdo -mulc,176460.6812740 -sellevel,30 era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel30_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel30_“$common_year”.nc era5_land_DP_SSE_range30_32_“$common_year”.nc
#sellevel32
cdo -mulc,215961.4323204 -sellevel,32 era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel32_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel32_“$common_year”.nc era5_land_DP_SSE_range32_34_“$common_year”.nc
#sellevel34
cdo -mulc,237738.9940260 -sellevel,34 era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel34_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SSE_histcount_divc_sellevel34_“$common_year”.nc era5_land_DP_SSE_range34_inf_“$common_year”.nc
#enssum
cdo enssum era5_land_DP_SSE_range6_8_“$common_year”.nc era5_land_DP_SSE_range8_10_“$common_year”.nc era5_land_DP_SSE_range10_12_“$common_year”.nc era5_land_DP_SSE_range12_14_“$common_year”.nc era5_land_DP_SSE_range14_16_“$common_year”.nc era5_land_DP_SSE_range16_18_“$common_year”.nc era5_land_DP_SSE_range18_20_“$common_year”.nc era5_land_DP_SSE_range20_22_“$common_year”.nc era5_land_DP_SSE_range22_24_“$common_year”.nc era5_land_DP_SSE_range24_26_“$common_year”.nc era5_land_DP_SSE_range26_28_“$common_year”.nc era5_land_DP_SSE_range28_30_“$common_year”.nc era5_land_DP_SSE_range30_32_“$common_year”.nc era5_land_DP_SSE_range32_34_“$common_year”.nc era5_land_DP_SSE_range34_inf_“$common_year”.nc era5_land_DP_SSE_range_enssum_“$common_year”.nc
#change variable name into DP_SSE, in order to be used in the resultanting 
cdo chname,WS,DP_SSE era5_land_DP_SSE_range_enssum_“$common_year”.nc era5_land_DP_SSE_range_enssum_chname_“$common_year”.nc


#S, -101.25≤S＜-78.75
cdo setvrange,-101.25,-78.7500001 era5_land_WD_ifthen_“$common_year”.nc era5_land_WD_ifthen_setvrange_S_“$common_year”.nc
#mask sand-moving wind speeds in the S azimuth
cdo ifthen era5_land_WD_ifthen_setvrange_S_“$common_year”.nc era5_land_WS_setrtomiss_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_S_“$common_year”.nc
#2 m/s bins of sand-moving wind speeds in the S azimuth, 6m/s≤WS＜8m/s, 8m/s≤WS＜10m/s, 10m/s≤WS＜12m/s, 12m/s≤WS＜14m/s, 14m/s≤WS＜16m/s, 16m/s≤WS＜18m/s, 18m/s≤WS＜20m/s, 20m/s≤WS＜22m/s, 22m/s≤WS＜24m/s, 24m/s≤WS＜26m/s, 26m/s≤WS＜28m/s, 28m/s≤WS＜30m/s, 30m/s≤WS＜32m/s, 32m/s≤WS<34m/s, 34m/s≤WS
cdo histcount,6,7.9999999,9.9999999,11.9999999,13.9999999,15.9999999,17.9999999,19.9999999,21.9999999,23.9999999,25.9999999,27.9999999,29.9999999,31.9999999,33.9999999,inf era5_land_WS_setrtomiss_ifthen_S_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_S_histcount_“$common_year”.nc
#the sand-moving wind frequency in the S azimuth, 8760 is the total hours for the “$common_year”
cdo divc,8760 era5_land_WS_setrtomiss_ifthen_S_histcount_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_S_histcount_divc_“$common_year”.nc
#setmisstoc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_S_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_S_histcount_divc_setmisstoc_“$common_year”.nc
#mulc
cdo mulc,100 era5_land_WS_setrtomiss_ifthen_S_histcount_divc_setmisstoc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_S_histcount_divc_setmisstoc_mulc_“$common_year”.nc
#weighting factor v^2(v-vt), v is the mean wind speed，and they are 7, 9, 11, 13, 15, 17, 19, 21, 23, 25, 27, 29, 31, 33, 34m/s, respectively; and m/s needs to be conversed into knot
#level,6 v^2(v-vt)=(7*3600/1852)*(7*3600/1852)*(7*3600/1852-6*3600/1852)=359.8989961
#level,8 v^2(v-vt)=(9*3600/1852)*(9*3600/1852)*(9*3600/1852-6*3600/1852)=1784.8052258
#level,10 v^2(v-vt)=(11*3600/1852)*(11*3600/1852)*(11*3600/1852-6*3600/1852)=4443.6508708
#level,12 v^2(v-vt)=(13*3600/1852)*(13*3600/1852)*(13*3600/1852-6*3600/1852)=8688.9900498
#level,14 v^2(v-vt)=(15*3600/1852)*(15*3600/1852)*(15*3600/1852-6*3600/1852)=14873.3768816
#level,16 v^2(v-vt)=(17*3600/1852)*(17*3600/1852)*(17*3600/1852-6*3600/1852)=23349.3654847
#level,18 v^2(v-vt)=(19*3600/1852)*(19*3600/1852)*(19*3600/1852-6*3600/1852)=34469.5099779
#level,20 v^2(v-vt)=(21*3600/1852)*(21*3600/1852)*(21*3600/1852-6*3600/1852)=48586.3644798
#level,22 v^2(v-vt)=(23*3600/1852)*(23*3600/1852)*(23*3600/1852-6*3600/1852)=66052.4831091
#level,24 v^2(v-vt)=(24*3600/1852)*(24*3600/1852)*(24*3600/1852-6*3600/1852)=87220.4199845
#level,26 v^2(v-vt)=(27*3600/1852)*(27*3600/1852)*(27*3600/1852-6*3600/1852)=112442.7292247
#level,28 v^2(v-vt)=(29*3600/1852)*(29*3600/1852)*(29*3600/1852-6*3600/1852)=142071.9649483
#level,30 v^2(v-vt)=(31*3600/1852)*(31*3600/1852)*(31*3600/1852-6*3600/1852)=176460.6812740
#level,32 v^2(v-vt)=(33*3600/1852)*(33*3600/1852)*(33*3600/1852-6*3600/1852)=215961.4323204
#level,34 v^2(v-vt)=(34*3600/1852)*(34*3600/1852)*(34*3600/1852-6*3600/1852)=237738.9940260
#1 knot = 1 nautical mile/hour =1852m/hour=1852/3600m/s=0.5144m/s
#sellevel6
cdo -mulc,359.8989961 -sellevel,6 era5_land_WS_setrtomiss_ifthen_S_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel6_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel6_“$common_year”.nc era5_land_DP_S_range6_8_“$common_year”.nc
#sellevel8
cdo -mulc,1784.8052258 -sellevel,8 era5_land_WS_setrtomiss_ifthen_S_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel8_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel8_“$common_year”.nc era5_land_DP_S_range8_10_“$common_year”.nc
#sellevel10
cdo -mulc,4443.6508708 -sellevel,10 era5_land_WS_setrtomiss_ifthen_S_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel10_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel10_“$common_year”.nc era5_land_DP_S_range10_12_“$common_year”.nc
#sellevel12
cdo -mulc,8688.9900498 -sellevel,12 era5_land_WS_setrtomiss_ifthen_S_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel12_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel12_“$common_year”.nc era5_land_DP_S_range12_14_“$common_year”.nc
#sellevel14
cdo -mulc,14873.3768816 -sellevel,14 era5_land_WS_setrtomiss_ifthen_S_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel14_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel14_“$common_year”.nc era5_land_DP_S_range14_16_“$common_year”.nc
#sellevel16
cdo -mulc,23349.3654847 -sellevel,16 era5_land_WS_setrtomiss_ifthen_S_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel16_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel16_“$common_year”.nc era5_land_DP_S_range16_18_“$common_year”.nc
#sellevel18
cdo -mulc,34469.5099779 -sellevel,18 era5_land_WS_setrtomiss_ifthen_S_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel18_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel18_“$common_year”.nc era5_land_DP_S_range18_20_“$common_year”.nc
#sellevel20
cdo -mulc,48586.3644798 -sellevel,20 era5_land_WS_setrtomiss_ifthen_S_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel20_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel20_“$common_year”.nc era5_land_DP_S_range20_22_“$common_year”.nc
#sellevel22
cdo -mulc,66052.4831091 -sellevel,22 era5_land_WS_setrtomiss_ifthen_S_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel22_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel22_“$common_year”.nc era5_land_DP_S_range22_24_“$common_year”.nc
#sellevel24
cdo -mulc,87220.4199845 -sellevel,24 era5_land_WS_setrtomiss_ifthen_S_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel24_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel24_“$common_year”.nc era5_land_DP_S_range24_26_“$common_year”.nc
#sellevel26
cdo -mulc,112442.7292247 -sellevel,26 era5_land_WS_setrtomiss_ifthen_S_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel26_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel26_“$common_year”.nc era5_land_DP_S_range26_28_“$common_year”.nc
#sellevel28
cdo -mulc,142071.9649483 -sellevel,28 era5_land_WS_setrtomiss_ifthen_S_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel28_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel28_“$common_year”.nc era5_land_DP_S_range28_30_“$common_year”.nc
#sellevel30
cdo -mulc,176460.6812740 -sellevel,30 era5_land_WS_setrtomiss_ifthen_S_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel30_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel30_“$common_year”.nc era5_land_DP_S_range30_32_“$common_year”.nc
#sellevel32
cdo -mulc,215961.4323204 -sellevel,32 era5_land_WS_setrtomiss_ifthen_S_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel32_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel32_“$common_year”.nc era5_land_DP_S_range32_34_“$common_year”.nc
#sellevel34
cdo -mulc,237738.9940260 -sellevel,34 era5_land_WS_setrtomiss_ifthen_S_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel34_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_S_histcount_divc_sellevel34_“$common_year”.nc era5_land_DP_S_range34_inf_“$common_year”.nc
#enssum
cdo enssum era5_land_DP_S_range6_8_“$common_year”.nc era5_land_DP_S_range8_10_“$common_year”.nc era5_land_DP_S_range10_12_“$common_year”.nc era5_land_DP_S_range12_14_“$common_year”.nc era5_land_DP_S_range14_16_“$common_year”.nc era5_land_DP_S_range16_18_“$common_year”.nc era5_land_DP_S_range18_20_“$common_year”.nc era5_land_DP_S_range20_22_“$common_year”.nc era5_land_DP_S_range22_24_“$common_year”.nc era5_land_DP_S_range24_26_“$common_year”.nc era5_land_DP_S_range26_28_“$common_year”.nc era5_land_DP_S_range28_30_“$common_year”.nc era5_land_DP_S_range30_32_“$common_year”.nc era5_land_DP_S_range32_34_“$common_year”.nc era5_land_DP_S_range34_inf_“$common_year”.nc era5_land_DP_S_range_enssum_“$common_year”.nc
#change variable name into DP_S, in order to be used in the resultanting 
cdo chname,WS,DP_S era5_land_DP_S_range_enssum_“$common_year”.nc era5_land_DP_S_range_enssum_chname_“$common_year”.nc


#SSW, -123.75≤SSW＜-101.25
cdo setvrange,-123.75,-101.2500001 era5_land_WD_ifthen_“$common_year”.nc era5_land_WD_ifthen_setvrange_SSW_“$common_year”.nc
#mask sand-moving wind speeds in the SSW azimuth
cdo ifthen era5_land_WD_ifthen_setvrange_SSW_“$common_year”.nc era5_land_WS_setrtomiss_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_SSW_“$common_year”.nc
#2 m/s bins of sand-moving wind speeds in the SSW azimuth, 6m/s≤WS＜8m/s, 8m/s≤WS＜10m/s, 10m/s≤WS＜12m/s, 12m/s≤WS＜14m/s, 14m/s≤WS＜16m/s, 16m/s≤WS＜18m/s, 18m/s≤WS＜20m/s, 20m/s≤WS＜22m/s, 22m/s≤WS＜24m/s, 24m/s≤WS＜26m/s, 26m/s≤WS＜28m/s, 28m/s≤WS＜30m/s, 30m/s≤WS＜32m/s, 32m/s≤WS<34m/s, 34m/s≤WS
cdo histcount,6,7.9999999,9.9999999,11.9999999,13.9999999,15.9999999,17.9999999,19.9999999,21.9999999,23.9999999,25.9999999,27.9999999,29.9999999,31.9999999,33.9999999,inf era5_land_WS_setrtomiss_ifthen_SSW_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_SSW_histcount_“$common_year”.nc
#the sand-moving wind frequency in the SSW azimuth, 8760 is the total hours for the “$common_year”
cdo divc,8760 era5_land_WS_setrtomiss_ifthen_SSW_histcount_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_“$common_year”.nc
#setmisstoc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_setmisstoc_“$common_year”.nc
#mulc
cdo mulc,100 era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_setmisstoc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_setmisstoc_mulc_“$common_year”.nc
#weighting factor v^2(v-vt), v is the mean wind speed，and they are 7, 9, 11, 13, 15, 17, 19, 21, 23, 25, 27, 29, 31, 33, 34m/s, respectively; and m/s needs to be conversed into knot
#level,6 v^2(v-vt)=(7*3600/1852)*(7*3600/1852)*(7*3600/1852-6*3600/1852)=359.8989961
#level,8 v^2(v-vt)=(9*3600/1852)*(9*3600/1852)*(9*3600/1852-6*3600/1852)=1784.8052258
#level,10 v^2(v-vt)=(11*3600/1852)*(11*3600/1852)*(11*3600/1852-6*3600/1852)=4443.6508708
#level,12 v^2(v-vt)=(13*3600/1852)*(13*3600/1852)*(13*3600/1852-6*3600/1852)=8688.9900498
#level,14 v^2(v-vt)=(15*3600/1852)*(15*3600/1852)*(15*3600/1852-6*3600/1852)=14873.3768816
#level,16 v^2(v-vt)=(17*3600/1852)*(17*3600/1852)*(17*3600/1852-6*3600/1852)=23349.3654847
#level,18 v^2(v-vt)=(19*3600/1852)*(19*3600/1852)*(19*3600/1852-6*3600/1852)=34469.5099779
#level,20 v^2(v-vt)=(21*3600/1852)*(21*3600/1852)*(21*3600/1852-6*3600/1852)=48586.3644798
#level,22 v^2(v-vt)=(23*3600/1852)*(23*3600/1852)*(23*3600/1852-6*3600/1852)=66052.4831091
#level,24 v^2(v-vt)=(24*3600/1852)*(24*3600/1852)*(24*3600/1852-6*3600/1852)=87220.4199845
#level,26 v^2(v-vt)=(27*3600/1852)*(27*3600/1852)*(27*3600/1852-6*3600/1852)=112442.7292247
#level,28 v^2(v-vt)=(29*3600/1852)*(29*3600/1852)*(29*3600/1852-6*3600/1852)=142071.9649483
#level,30 v^2(v-vt)=(31*3600/1852)*(31*3600/1852)*(31*3600/1852-6*3600/1852)=176460.6812740
#level,32 v^2(v-vt)=(33*3600/1852)*(33*3600/1852)*(33*3600/1852-6*3600/1852)=215961.4323204
#level,34 v^2(v-vt)=(34*3600/1852)*(34*3600/1852)*(34*3600/1852-6*3600/1852)=237738.9940260
#1 knot = 1 nautical mile/hour =1852m/hour=1852/3600m/s=0.5144m/s
#sellevel6
cdo -mulc,359.8989961 -sellevel,6 era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel6_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel6_“$common_year”.nc era5_land_DP_SSW_range6_8_“$common_year”.nc
#sellevel8
cdo -mulc,1784.8052258 -sellevel,8 era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel8_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel8_“$common_year”.nc era5_land_DP_SSW_range8_10_“$common_year”.nc
#sellevel10
cdo -mulc,4443.6508708 -sellevel,10 era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel10_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel10_“$common_year”.nc era5_land_DP_SSW_range10_12_“$common_year”.nc
#sellevel12
cdo -mulc,8688.9900498 -sellevel,12 era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel12_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel12_“$common_year”.nc era5_land_DP_SSW_range12_14_“$common_year”.nc
#sellevel14
cdo -mulc,14873.3768816 -sellevel,14 era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel14_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel14_“$common_year”.nc era5_land_DP_SSW_range14_16_“$common_year”.nc
#sellevel16
cdo -mulc,23349.3654847 -sellevel,16 era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel16_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel16_“$common_year”.nc era5_land_DP_SSW_range16_18_“$common_year”.nc
#sellevel18
cdo -mulc,34469.5099779 -sellevel,18 era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel18_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel18_“$common_year”.nc era5_land_DP_SSW_range18_20_“$common_year”.nc
#sellevel20
cdo -mulc,48586.3644798 -sellevel,20 era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel20_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel20_“$common_year”.nc era5_land_DP_SSW_range20_22_“$common_year”.nc
#sellevel22
cdo -mulc,66052.4831091 -sellevel,22 era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel22_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel22_“$common_year”.nc era5_land_DP_SSW_range22_24_“$common_year”.nc
#sellevel24
cdo -mulc,87220.4199845 -sellevel,24 era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel24_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel24_“$common_year”.nc era5_land_DP_SSW_range24_26_“$common_year”.nc
#sellevel26
cdo -mulc,112442.7292247 -sellevel,26 era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel26_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel26_“$common_year”.nc era5_land_DP_SSW_range26_28_“$common_year”.nc
#sellevel28
cdo -mulc,142071.9649483 -sellevel,28 era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel28_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel28_“$common_year”.nc era5_land_DP_SSW_range28_30_“$common_year”.nc
#sellevel30
cdo -mulc,176460.6812740 -sellevel,30 era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel30_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel30_“$common_year”.nc era5_land_DP_SSW_range30_32_“$common_year”.nc
#sellevel32
cdo -mulc,215961.4323204 -sellevel,32 era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel32_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel32_“$common_year”.nc era5_land_DP_SSW_range32_34_“$common_year”.nc
#sellevel34
cdo -mulc,237738.9940260 -sellevel,34 era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel34_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SSW_histcount_divc_sellevel34_“$common_year”.nc era5_land_DP_SSW_range34_inf_“$common_year”.nc
#enssum
cdo enssum era5_land_DP_SSW_range6_8_“$common_year”.nc era5_land_DP_SSW_range8_10_“$common_year”.nc era5_land_DP_SSW_range10_12_“$common_year”.nc era5_land_DP_SSW_range12_14_“$common_year”.nc era5_land_DP_SSW_range14_16_“$common_year”.nc era5_land_DP_SSW_range16_18_“$common_year”.nc era5_land_DP_SSW_range18_20_“$common_year”.nc era5_land_DP_SSW_range20_22_“$common_year”.nc era5_land_DP_SSW_range22_24_“$common_year”.nc era5_land_DP_SSW_range24_26_“$common_year”.nc era5_land_DP_SSW_range26_28_“$common_year”.nc era5_land_DP_SSW_range28_30_“$common_year”.nc era5_land_DP_SSW_range30_32_“$common_year”.nc era5_land_DP_SSW_range32_34_“$common_year”.nc era5_land_DP_SSW_range34_inf_“$common_year”.nc era5_land_DP_SSW_range_enssum_“$common_year”.nc
#change variable name into DP_SSW, in order to be used in the resultanting 
cdo chname,WS,DP_SSW era5_land_DP_SSW_range_enssum_“$common_year”.nc era5_land_DP_SSW_range_enssum_chname_“$common_year”.nc


#SW, -146.25≤SW＜-123.75
cdo setvrange,-146.25,-123.7500001 era5_land_WD_ifthen_“$common_year”.nc era5_land_WD_ifthen_setvrange_SW_“$common_year”.nc
#mask sand-moving wind speeds in the SW azimuth
cdo ifthen era5_land_WD_ifthen_setvrange_SW_“$common_year”.nc era5_land_WS_setrtomiss_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_SW_“$common_year”.nc
#2 m/s bins of sand-moving wind speeds in the SW azimuth, 6m/s≤WS＜8m/s, 8m/s≤WS＜10m/s, 10m/s≤WS＜12m/s, 12m/s≤WS＜14m/s, 14m/s≤WS＜16m/s, 16m/s≤WS＜18m/s, 18m/s≤WS＜20m/s, 20m/s≤WS＜22m/s, 22m/s≤WS＜24m/s, 24m/s≤WS＜26m/s, 26m/s≤WS＜28m/s, 28m/s≤WS＜30m/s, 30m/s≤WS＜32m/s, 32m/s≤WS<34m/s, 34m/s≤WS
cdo histcount,6,7.9999999,9.9999999,11.9999999,13.9999999,15.9999999,17.9999999,19.9999999,21.9999999,23.9999999,25.9999999,27.9999999,29.9999999,31.9999999,33.9999999,inf era5_land_WS_setrtomiss_ifthen_SW_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_SW_histcount_“$common_year”.nc
#the sand-moving wind frequency in the SW azimuth, 8760 is the total hours for the “$common_year”
cdo divc,8760 era5_land_WS_setrtomiss_ifthen_SW_histcount_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_“$common_year”.nc
#setmisstoc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_setmisstoc_“$common_year”.nc
#mulc
cdo mulc,100 era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_setmisstoc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_setmisstoc_mulc_“$common_year”.nc
#weighting factor v^2(v-vt), v is the mean wind speed，and they are 7, 9, 11, 13, 15, 17, 19, 21, 23, 25, 27, 29, 31, 33, 34m/s, respectively; and m/s needs to be conversed into knot
#1 knot = 1 nautical mile/hour =1852m/hour=1852/3600m/s=0.5144m/s
#level,6 v^2(v-vt)=(7*3600/1852)*(7*3600/1852)*(7*3600/1852-6*3600/1852)=359.8989961
#level,8 v^2(v-vt)=(9*3600/1852)*(9*3600/1852)*(9*3600/1852-6*3600/1852)=1784.8052258
#level,10 v^2(v-vt)=(11*3600/1852)*(11*3600/1852)*(11*3600/1852-6*3600/1852)=4443.6508708
#level,12 v^2(v-vt)=(13*3600/1852)*(13*3600/1852)*(13*3600/1852-6*3600/1852)=8688.9900498
#level,14 v^2(v-vt)=(15*3600/1852)*(15*3600/1852)*(15*3600/1852-6*3600/1852)=14873.3768816
#level,16 v^2(v-vt)=(17*3600/1852)*(17*3600/1852)*(17*3600/1852-6*3600/1852)=23349.3654847
#level,18 v^2(v-vt)=(19*3600/1852)*(19*3600/1852)*(19*3600/1852-6*3600/1852)=34469.5099779
#level,20 v^2(v-vt)=(21*3600/1852)*(21*3600/1852)*(21*3600/1852-6*3600/1852)=48586.3644798
#level,22 v^2(v-vt)=(23*3600/1852)*(23*3600/1852)*(23*3600/1852-6*3600/1852)=66052.4831091
#level,24 v^2(v-vt)=(24*3600/1852)*(24*3600/1852)*(24*3600/1852-6*3600/1852)=87220.4199845
#level,26 v^2(v-vt)=(27*3600/1852)*(27*3600/1852)*(27*3600/1852-6*3600/1852)=112442.7292247
#level,28 v^2(v-vt)=(29*3600/1852)*(29*3600/1852)*(29*3600/1852-6*3600/1852)=142071.9649483
#level,30 v^2(v-vt)=(31*3600/1852)*(31*3600/1852)*(31*3600/1852-6*3600/1852)=176460.6812740
#level,32 v^2(v-vt)=(33*3600/1852)*(33*3600/1852)*(33*3600/1852-6*3600/1852)=215961.4323204
#level,34 v^2(v-vt)=(34*3600/1852)*(34*3600/1852)*(34*3600/1852-6*3600/1852)=237738.9940260
#1 knot = 1 nautical mile/hour =1852m/hour=1852/3600m/s=0.5144m/s
#sellevel6
cdo -mulc,359.8989961 -sellevel,6 era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel6_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel6_“$common_year”.nc era5_land_DP_SW_range6_8_“$common_year”.nc
#sellevel8
cdo -mulc,1784.8052258 -sellevel,8 era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel8_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel8_“$common_year”.nc era5_land_DP_SW_range8_10_“$common_year”.nc
#sellevel10
cdo -mulc,4443.6508708 -sellevel,10 era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel10_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel10_“$common_year”.nc era5_land_DP_SW_range10_12_“$common_year”.nc
#sellevel12
cdo -mulc,8688.9900498 -sellevel,12 era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel12_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel12_“$common_year”.nc era5_land_DP_SW_range12_14_“$common_year”.nc
#sellevel14
cdo -mulc,14873.3768816 -sellevel,14 era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel14_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel14_“$common_year”.nc era5_land_DP_SW_range14_16_“$common_year”.nc
#sellevel16
cdo -mulc,23349.3654847 -sellevel,16 era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel16_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel16_“$common_year”.nc era5_land_DP_SW_range16_18_“$common_year”.nc
#sellevel18
cdo -mulc,34469.5099779 -sellevel,18 era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel18_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel18_“$common_year”.nc era5_land_DP_SW_range18_20_“$common_year”.nc
#sellevel20
cdo -mulc,48586.3644798 -sellevel,20 era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel20_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel20_“$common_year”.nc era5_land_DP_SW_range20_22_“$common_year”.nc
#sellevel22
cdo -mulc,66052.4831091 -sellevel,22 era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel22_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel22_“$common_year”.nc era5_land_DP_SW_range22_24_“$common_year”.nc
#sellevel24
cdo -mulc,87220.4199845 -sellevel,24 era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel24_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel24_“$common_year”.nc era5_land_DP_SW_range24_26_“$common_year”.nc
#sellevel26
cdo -mulc,112442.7292247 -sellevel,26 era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel26_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel26_“$common_year”.nc era5_land_DP_SW_range26_28_“$common_year”.nc
#sellevel28
cdo -mulc,142071.9649483 -sellevel,28 era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel28_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel28_“$common_year”.nc era5_land_DP_SW_range28_30_“$common_year”.nc
#sellevel30
cdo -mulc,176460.6812740 -sellevel,30 era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel30_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel30_“$common_year”.nc era5_land_DP_SW_range30_32_“$common_year”.nc
#sellevel32
cdo -mulc,215961.4323204 -sellevel,32 era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel32_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel32_“$common_year”.nc era5_land_DP_SW_range32_34_“$common_year”.nc
#sellevel34
cdo -mulc,237738.9940260 -sellevel,34 era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel34_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_SW_histcount_divc_sellevel34_“$common_year”.nc era5_land_DP_SW_range34_inf_“$common_year”.nc
#enssum
cdo enssum era5_land_DP_SW_range6_8_“$common_year”.nc era5_land_DP_SW_range8_10_“$common_year”.nc era5_land_DP_SW_range10_12_“$common_year”.nc era5_land_DP_SW_range12_14_“$common_year”.nc era5_land_DP_SW_range14_16_“$common_year”.nc era5_land_DP_SW_range16_18_“$common_year”.nc era5_land_DP_SW_range18_20_“$common_year”.nc era5_land_DP_SW_range20_22_“$common_year”.nc era5_land_DP_SW_range22_24_“$common_year”.nc era5_land_DP_SW_range24_26_“$common_year”.nc era5_land_DP_SW_range26_28_“$common_year”.nc era5_land_DP_SW_range28_30_“$common_year”.nc era5_land_DP_SW_range30_32_“$common_year”.nc era5_land_DP_SW_range32_34_“$common_year”.nc era5_land_DP_SW_range34_inf_“$common_year”.nc era5_land_DP_SW_range_enssum_“$common_year”.nc
#change variable name into DP_SW, in order to be used in the resultanting 
cdo chname,WS,DP_SW era5_land_DP_SW_range_enssum_“$common_year”.nc era5_land_DP_SW_range_enssum_chname_“$common_year”.nc


#WSW, -168.75≤WSW＜-146.25
cdo setvrange,-168.75,-146.2500001 era5_land_WD_ifthen_“$common_year”.nc era5_land_WD_ifthen_setvrange_WSW_“$common_year”.nc
#mask sand-moving wind speeds in the WSW azimuth
cdo ifthen era5_land_WD_ifthen_setvrange_WSW_“$common_year”.nc era5_land_WS_setrtomiss_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_WSW_“$common_year”.nc
#2 m/s bins of sand-moving wind speeds in the WSW azimuth, 6m/s≤WS＜8m/s, 8m/s≤WS＜10m/s, 10m/s≤WS＜12m/s, 12m/s≤WS＜14m/s, 14m/s≤WS＜16m/s, 16m/s≤WS＜18m/s, 18m/s≤WS＜20m/s, 20m/s≤WS＜22m/s, 22m/s≤WS＜24m/s, 24m/s≤WS＜26m/s, 26m/s≤WS＜28m/s, 28m/s≤WS＜30m/s, 30m/s≤WS＜32m/s, 32m/s≤WS<34m/s, 34m/s≤WS
cdo histcount,6,7.9999999,9.9999999,11.9999999,13.9999999,15.9999999,17.9999999,19.9999999,21.9999999,23.9999999,25.9999999,27.9999999,29.9999999,31.9999999,33.9999999,inf era5_land_WS_setrtomiss_ifthen_WSW_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_WSW_histcount_“$common_year”.nc
#the sand-moving wind frequency in the WSW azimuth, 8760 is the total hours for the “$common_year”
cdo divc,8760 era5_land_WS_setrtomiss_ifthen_WSW_histcount_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_“$common_year”.nc
#setmisstoc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_setmisstoc_“$common_year”.nc
#mulc
cdo mulc,100 era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_setmisstoc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_setmisstoc_mulc_“$common_year”.nc
#weighting factor v^2(v-vt), v is the mean wind speed，and they are 7, 9, 11, 13, 15, 17, 19, 21, 23, 25, 27, 29, 31, 33, 34m/s, respectively; and m/s needs to be conversed into knot
#level,6 v^2(v-vt)=(7*3600/1852)*(7*3600/1852)*(7*3600/1852-6*3600/1852)=359.8989961
#level,8 v^2(v-vt)=(9*3600/1852)*(9*3600/1852)*(9*3600/1852-6*3600/1852)=1784.8052258
#level,10 v^2(v-vt)=(11*3600/1852)*(11*3600/1852)*(11*3600/1852-6*3600/1852)=4443.6508708
#level,12 v^2(v-vt)=(13*3600/1852)*(13*3600/1852)*(13*3600/1852-6*3600/1852)=8688.9900498
#level,14 v^2(v-vt)=(15*3600/1852)*(15*3600/1852)*(15*3600/1852-6*3600/1852)=14873.3768816
#level,16 v^2(v-vt)=(17*3600/1852)*(17*3600/1852)*(17*3600/1852-6*3600/1852)=23349.3654847
#level,18 v^2(v-vt)=(19*3600/1852)*(19*3600/1852)*(19*3600/1852-6*3600/1852)=34469.5099779
#level,20 v^2(v-vt)=(21*3600/1852)*(21*3600/1852)*(21*3600/1852-6*3600/1852)=48586.3644798
#level,22 v^2(v-vt)=(23*3600/1852)*(23*3600/1852)*(23*3600/1852-6*3600/1852)=66052.4831091
#level,24 v^2(v-vt)=(24*3600/1852)*(24*3600/1852)*(24*3600/1852-6*3600/1852)=87220.4199845
#level,26 v^2(v-vt)=(27*3600/1852)*(27*3600/1852)*(27*3600/1852-6*3600/1852)=112442.7292247
#level,28 v^2(v-vt)=(29*3600/1852)*(29*3600/1852)*(29*3600/1852-6*3600/1852)=142071.9649483
#level,30 v^2(v-vt)=(31*3600/1852)*(31*3600/1852)*(31*3600/1852-6*3600/1852)=176460.6812740
#level,32 v^2(v-vt)=(33*3600/1852)*(33*3600/1852)*(33*3600/1852-6*3600/1852)=215961.4323204
#level,34 v^2(v-vt)=(34*3600/1852)*(34*3600/1852)*(34*3600/1852-6*3600/1852)=237738.9940260
#1 knot = 1 nautical mile/hour =1852m/hour=1852/3600m/s=0.5144m/s
#sellevel6
cdo -mulc,359.8989961 -sellevel,6 era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel6_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel6_“$common_year”.nc era5_land_DP_WSW_range6_8_“$common_year”.nc
#sellevel8
cdo -mulc,1784.8052258 -sellevel,8 era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel8_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel8_“$common_year”.nc era5_land_DP_WSW_range8_10_“$common_year”.nc
#sellevel10
cdo -mulc,4443.6508708 -sellevel,10 era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel10_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel10_“$common_year”.nc era5_land_DP_WSW_range10_12_“$common_year”.nc
#sellevel12
cdo -mulc,8688.9900498 -sellevel,12 era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel12_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel12_“$common_year”.nc era5_land_DP_WSW_range12_14_“$common_year”.nc
#sellevel14
cdo -mulc,14873.3768816 -sellevel,14 era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel14_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel14_“$common_year”.nc era5_land_DP_WSW_range14_16_“$common_year”.nc
#sellevel16
cdo -mulc,23349.3654847 -sellevel,16 era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel16_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel16_“$common_year”.nc era5_land_DP_WSW_range16_18_“$common_year”.nc
#sellevel18
cdo -mulc,34469.5099779 -sellevel,18 era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel18_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel18_“$common_year”.nc era5_land_DP_WSW_range18_20_“$common_year”.nc
#sellevel20
cdo -mulc,48586.3644798 -sellevel,20 era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel20_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel20_“$common_year”.nc era5_land_DP_WSW_range20_22_“$common_year”.nc
#sellevel22
cdo -mulc,66052.4831091 -sellevel,22 era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel22_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel22_“$common_year”.nc era5_land_DP_WSW_range22_24_“$common_year”.nc
#sellevel24
cdo -mulc,87220.4199845 -sellevel,24 era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel24_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel24_“$common_year”.nc era5_land_DP_WSW_range24_26_“$common_year”.nc
#sellevel26
cdo -mulc,112442.7292247 -sellevel,26 era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel26_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel26_“$common_year”.nc era5_land_DP_WSW_range26_28_“$common_year”.nc
#sellevel28
cdo -mulc,142071.9649483 -sellevel,28 era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel28_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel28_“$common_year”.nc era5_land_DP_WSW_range28_30_“$common_year”.nc
#sellevel30
cdo -mulc,176460.6812740 -sellevel,30 era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel30_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel30_“$common_year”.nc era5_land_DP_WSW_range30_32_“$common_year”.nc
#sellevel32
cdo -mulc,215961.4323204 -sellevel,32 era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel32_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel32_“$common_year”.nc era5_land_DP_WSW_range32_34_“$common_year”.nc
#sellevel34
cdo -mulc,237738.9940260 -sellevel,34 era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel34_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_WSW_histcount_divc_sellevel34_“$common_year”.nc era5_land_DP_WSW_range34_inf_“$common_year”.nc
#enssum
cdo enssum era5_land_DP_WSW_range6_8_“$common_year”.nc era5_land_DP_WSW_range8_10_“$common_year”.nc era5_land_DP_WSW_range10_12_“$common_year”.nc era5_land_DP_WSW_range12_14_“$common_year”.nc era5_land_DP_WSW_range14_16_“$common_year”.nc era5_land_DP_WSW_range16_18_“$common_year”.nc era5_land_DP_WSW_range18_20_“$common_year”.nc era5_land_DP_WSW_range20_22_“$common_year”.nc era5_land_DP_WSW_range22_24_“$common_year”.nc era5_land_DP_WSW_range24_26_“$common_year”.nc era5_land_DP_WSW_range26_28_“$common_year”.nc era5_land_DP_WSW_range28_30_“$common_year”.nc era5_land_DP_WSW_range30_32_“$common_year”.nc era5_land_DP_WSW_range32_34_“$common_year”.nc era5_land_DP_WSW_range34_inf_“$common_year”.nc era5_land_DP_WSW_range_enssum_“$common_year”.nc
#change variable name into DP_WSW, in order to be used in the resultanting 
cdo chname,WS,DP_WSW era5_land_DP_WSW_range_enssum_“$common_year”.nc era5_land_DP_WSW_range_enssum_chname_“$common_year”.nc


#W, -180≤W＜-168.75, 168.75≤W＜180, note that here uses setrtomiss
cdo setrtomiss,-168.75,168.7499999 era5_land_WD_ifthen_“$common_year”.nc era5_land_WD_ifthen_setrtomiss_W_“$common_year”.nc
#mask sand-moving wind speeds in the W azimuth
cdo ifthen era5_land_WD_ifthen_setrtomiss_W_“$common_year”.nc era5_land_WS_setrtomiss_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_W_“$common_year”.nc
#2 m/s bins of sand-moving wind speeds in the W azimuth, 6m/s≤WS＜8m/s, 8m/s≤WS＜10m/s, 10m/s≤WS＜12m/s, 12m/s≤WS＜14m/s, 14m/s≤WS＜16m/s, 16m/s≤WS＜18m/s, 18m/s≤WS＜20m/s, 20m/s≤WS＜22m/s, 22m/s≤WS＜24m/s, 24m/s≤WS＜26m/s, 26m/s≤WS＜28m/s, 28m/s≤WS＜30m/s, 30m/s≤WS＜32m/s, 32m/s≤WS<34m/s, 34m/s≤WS
cdo histcount,6,7.9999999,9.9999999,11.9999999,13.9999999,15.9999999,17.9999999,19.9999999,21.9999999,23.9999999,25.9999999,27.9999999,29.9999999,31.9999999,33.9999999,inf era5_land_WS_setrtomiss_ifthen_W_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_W_histcount_“$common_year”.nc
#the sand-moving wind frequency in the W azimuth, 8760 is the total hours for the “$common_year”
cdo divc,8760 era5_land_WS_setrtomiss_ifthen_W_histcount_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_W_histcount_divc_“$common_year”.nc
#setmisstoc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_W_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_W_histcount_divc_setmisstoc_“$common_year”.nc
#mulc
cdo mulc,100 era5_land_WS_setrtomiss_ifthen_W_histcount_divc_setmisstoc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_W_histcount_divc_setmisstoc_mulc_“$common_year”.nc
#weighting factor v^2(v-vt), v is the mean wind speed，and they are 7, 9, 11, 13, 15, 17, 19, 21, 23, 25, 27, 29, 31, 33, 34m/s, respectively; and m/s needs to be conversed into knot
#level,6 v^2(v-vt)=(7*3600/1852)*(7*3600/1852)*(7*3600/1852-6*3600/1852)=359.8989961
#level,8 v^2(v-vt)=(9*3600/1852)*(9*3600/1852)*(9*3600/1852-6*3600/1852)=1784.8052258
#level,10 v^2(v-vt)=(11*3600/1852)*(11*3600/1852)*(11*3600/1852-6*3600/1852)=4443.6508708
#level,12 v^2(v-vt)=(13*3600/1852)*(13*3600/1852)*(13*3600/1852-6*3600/1852)=8688.9900498
#level,14 v^2(v-vt)=(15*3600/1852)*(15*3600/1852)*(15*3600/1852-6*3600/1852)=14873.3768816
#level,16 v^2(v-vt)=(17*3600/1852)*(17*3600/1852)*(17*3600/1852-6*3600/1852)=23349.3654847
#level,18 v^2(v-vt)=(19*3600/1852)*(19*3600/1852)*(19*3600/1852-6*3600/1852)=34469.5099779
#level,20 v^2(v-vt)=(21*3600/1852)*(21*3600/1852)*(21*3600/1852-6*3600/1852)=48586.3644798
#level,22 v^2(v-vt)=(23*3600/1852)*(23*3600/1852)*(23*3600/1852-6*3600/1852)=66052.4831091
#level,24 v^2(v-vt)=(24*3600/1852)*(24*3600/1852)*(24*3600/1852-6*3600/1852)=87220.4199845
#level,26 v^2(v-vt)=(27*3600/1852)*(27*3600/1852)*(27*3600/1852-6*3600/1852)=112442.7292247
#level,28 v^2(v-vt)=(29*3600/1852)*(29*3600/1852)*(29*3600/1852-6*3600/1852)=142071.9649483
#level,30 v^2(v-vt)=(31*3600/1852)*(31*3600/1852)*(31*3600/1852-6*3600/1852)=176460.6812740
#level,32 v^2(v-vt)=(33*3600/1852)*(33*3600/1852)*(33*3600/1852-6*3600/1852)=215961.4323204
#level,34 v^2(v-vt)=(34*3600/1852)*(34*3600/1852)*(34*3600/1852-6*3600/1852)=237738.9940260
#1 knot = 1 nautical mile/hour =1852m/hour=1852/3600m/s=0.5144m/s
#sellevel6
cdo -mulc,359.8989961 -sellevel,6 era5_land_WS_setrtomiss_ifthen_W_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel6_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel6_“$common_year”.nc era5_land_DP_W_range6_8_“$common_year”.nc
#sellevel8
cdo -mulc,1784.8052258 -sellevel,8 era5_land_WS_setrtomiss_ifthen_W_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel8_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel8_“$common_year”.nc era5_land_DP_W_range8_10_“$common_year”.nc
#sellevel10
cdo -mulc,4443.6508708 -sellevel,10 era5_land_WS_setrtomiss_ifthen_W_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel10_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel10_“$common_year”.nc era5_land_DP_W_range10_12_“$common_year”.nc
#sellevel12
cdo -mulc,8688.9900498 -sellevel,12 era5_land_WS_setrtomiss_ifthen_W_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel12_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel12_“$common_year”.nc era5_land_DP_W_range12_14_“$common_year”.nc
#sellevel14
cdo -mulc,14873.3768816 -sellevel,14 era5_land_WS_setrtomiss_ifthen_W_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel14_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel14_“$common_year”.nc era5_land_DP_W_range14_16_“$common_year”.nc
#sellevel16
cdo -mulc,23349.3654847 -sellevel,16 era5_land_WS_setrtomiss_ifthen_W_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel16_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel16_“$common_year”.nc era5_land_DP_W_range16_18_“$common_year”.nc
#sellevel18
cdo -mulc,34469.5099779 -sellevel,18 era5_land_WS_setrtomiss_ifthen_W_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel18_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel18_“$common_year”.nc era5_land_DP_W_range18_20_“$common_year”.nc
#sellevel20
cdo -mulc,48586.3644798 -sellevel,20 era5_land_WS_setrtomiss_ifthen_W_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel20_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel20_“$common_year”.nc era5_land_DP_W_range20_22_“$common_year”.nc
#sellevel22
cdo -mulc,66052.4831091 -sellevel,22 era5_land_WS_setrtomiss_ifthen_W_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel22_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel22_“$common_year”.nc era5_land_DP_W_range22_24_“$common_year”.nc
#sellevel24
cdo -mulc,87220.4199845 -sellevel,24 era5_land_WS_setrtomiss_ifthen_W_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel24_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel24_“$common_year”.nc era5_land_DP_W_range24_26_“$common_year”.nc
#sellevel26
cdo -mulc,112442.7292247 -sellevel,26 era5_land_WS_setrtomiss_ifthen_W_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel26_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel26_“$common_year”.nc era5_land_DP_W_range26_28_“$common_year”.nc
#sellevel28
cdo -mulc,142071.9649483 -sellevel,28 era5_land_WS_setrtomiss_ifthen_W_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel28_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel28_“$common_year”.nc era5_land_DP_W_range28_30_“$common_year”.nc
#sellevel30
cdo -mulc,176460.6812740 -sellevel,30 era5_land_WS_setrtomiss_ifthen_W_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel30_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel30_“$common_year”.nc era5_land_DP_W_range30_32_“$common_year”.nc
#sellevel32
cdo -mulc,215961.4323204 -sellevel,32 era5_land_WS_setrtomiss_ifthen_W_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel32_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel32_“$common_year”.nc era5_land_DP_W_range32_34_“$common_year”.nc
#sellevel34
cdo -mulc,237738.9940260 -sellevel,34 era5_land_WS_setrtomiss_ifthen_W_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel34_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_W_histcount_divc_sellevel34_“$common_year”.nc era5_land_DP_W_range34_inf_“$common_year”.nc
#enssum
cdo enssum era5_land_DP_W_range6_8_“$common_year”.nc era5_land_DP_W_range8_10_“$common_year”.nc era5_land_DP_W_range10_12_“$common_year”.nc era5_land_DP_W_range12_14_“$common_year”.nc era5_land_DP_W_range14_16_“$common_year”.nc era5_land_DP_W_range16_18_“$common_year”.nc era5_land_DP_W_range18_20_“$common_year”.nc era5_land_DP_W_range20_22_“$common_year”.nc era5_land_DP_W_range22_24_“$common_year”.nc era5_land_DP_W_range24_26_“$common_year”.nc era5_land_DP_W_range26_28_“$common_year”.nc era5_land_DP_W_range28_30_“$common_year”.nc era5_land_DP_W_range30_32_“$common_year”.nc era5_land_DP_W_range32_34_“$common_year”.nc era5_land_DP_W_range34_inf_“$common_year”.nc era5_land_DP_W_range_enssum_“$common_year”.nc
#change variable name into DP_W, in order to be used in the resultanting 
cdo chname,WS,DP_W era5_land_DP_W_range_enssum_“$common_year”.nc era5_land_DP_W_range_enssum_chname_“$common_year”.nc


#WNW, 146.25≤WNW＜168.75
cdo setvrange,146.25,168.7499999 era5_land_WD_ifthen_“$common_year”.nc era5_land_WD_ifthen_setvrange_WNW_“$common_year”.nc
#mask sand-moving wind speeds in the WNW azimuth
cdo ifthen era5_land_WD_ifthen_setvrange_WNW_“$common_year”.nc era5_land_WS_setrtomiss_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_WNW_“$common_year”.nc
#2 m/s bins of sand-moving wind speeds in the WNW azimuth, 6m/s≤WS＜8m/s, 8m/s≤WS＜10m/s, 10m/s≤WS＜12m/s, 12m/s≤WS＜14m/s, 14m/s≤WS＜16m/s, 16m/s≤WS＜18m/s, 18m/s≤WS＜20m/s, 20m/s≤WS＜22m/s, 22m/s≤WS＜24m/s, 24m/s≤WS＜26m/s, 26m/s≤WS＜28m/s, 28m/s≤WS＜30m/s, 30m/s≤WS＜32m/s, 32m/s≤WS<34m/s, 34m/s≤WS
cdo histcount,6,7.9999999,9.9999999,11.9999999,13.9999999,15.9999999,17.9999999,19.9999999,21.9999999,23.9999999,25.9999999,27.9999999,29.9999999,31.9999999,33.9999999,inf era5_land_WS_setrtomiss_ifthen_WNW_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_WNW_histcount_“$common_year”.nc
#the sand-moving wind frequency in the WNW azimuth, 8760 is the total hours for the “$common_year”
cdo divc,8760 era5_land_WS_setrtomiss_ifthen_WNW_histcount_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_“$common_year”.nc
#setmisstoc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_setmisstoc_“$common_year”.nc
#mulc
cdo mulc,100 era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_setmisstoc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_setmisstoc_mulc_“$common_year”.nc
#weighting factor v^2(v-vt), v is the mean wind speed，and they are 7, 9, 11, 13, 15, 17, 19, 21, 23, 25, 27, 29, 31, 33, 34m/s, respectively; and m/s needs to be conversed into knot
#level,6 v^2(v-vt)=(7*3600/1852)*(7*3600/1852)*(7*3600/1852-6*3600/1852)=359.8989961
#level,8 v^2(v-vt)=(9*3600/1852)*(9*3600/1852)*(9*3600/1852-6*3600/1852)=1784.8052258
#level,10 v^2(v-vt)=(11*3600/1852)*(11*3600/1852)*(11*3600/1852-6*3600/1852)=4443.6508708
#level,12 v^2(v-vt)=(13*3600/1852)*(13*3600/1852)*(13*3600/1852-6*3600/1852)=8688.9900498
#level,14 v^2(v-vt)=(15*3600/1852)*(15*3600/1852)*(15*3600/1852-6*3600/1852)=14873.3768816
#level,16 v^2(v-vt)=(17*3600/1852)*(17*3600/1852)*(17*3600/1852-6*3600/1852)=23349.3654847
#level,18 v^2(v-vt)=(19*3600/1852)*(19*3600/1852)*(19*3600/1852-6*3600/1852)=34469.5099779
#level,20 v^2(v-vt)=(21*3600/1852)*(21*3600/1852)*(21*3600/1852-6*3600/1852)=48586.3644798
#level,22 v^2(v-vt)=(23*3600/1852)*(23*3600/1852)*(23*3600/1852-6*3600/1852)=66052.4831091
#level,24 v^2(v-vt)=(24*3600/1852)*(24*3600/1852)*(24*3600/1852-6*3600/1852)=87220.4199845
#level,26 v^2(v-vt)=(27*3600/1852)*(27*3600/1852)*(27*3600/1852-6*3600/1852)=112442.7292247
#level,28 v^2(v-vt)=(29*3600/1852)*(29*3600/1852)*(29*3600/1852-6*3600/1852)=142071.9649483
#level,30 v^2(v-vt)=(31*3600/1852)*(31*3600/1852)*(31*3600/1852-6*3600/1852)=176460.6812740
#level,32 v^2(v-vt)=(33*3600/1852)*(33*3600/1852)*(33*3600/1852-6*3600/1852)=215961.4323204
#level,34 v^2(v-vt)=(34*3600/1852)*(34*3600/1852)*(34*3600/1852-6*3600/1852)=237738.9940260
#1 knot = 1 nautical mile/hour =1852m/hour=1852/3600m/s=0.5144m/s
#sellevel6
cdo -mulc,359.8989961 -sellevel,6 era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel6_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel6_“$common_year”.nc era5_land_DP_WNW_range6_8_“$common_year”.nc
#sellevel8
cdo -mulc,1784.8052258 -sellevel,8 era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel8_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel8_“$common_year”.nc era5_land_DP_WNW_range8_10_“$common_year”.nc
#sellevel10
cdo -mulc,4443.6508708 -sellevel,10 era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel10_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel10_“$common_year”.nc era5_land_DP_WNW_range10_12_“$common_year”.nc
#sellevel12
cdo -mulc,8688.9900498 -sellevel,12 era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel12_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel12_“$common_year”.nc era5_land_DP_WNW_range12_14_“$common_year”.nc
#sellevel14
cdo -mulc,14873.3768816 -sellevel,14 era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel14_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel14_“$common_year”.nc era5_land_DP_WNW_range14_16_“$common_year”.nc
#sellevel16
cdo -mulc,23349.3654847 -sellevel,16 era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel16_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel16_“$common_year”.nc era5_land_DP_WNW_range16_18_“$common_year”.nc
#sellevel18
cdo -mulc,34469.5099779 -sellevel,18 era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel18_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel18_“$common_year”.nc era5_land_DP_WNW_range18_20_“$common_year”.nc
#sellevel20
cdo -mulc,48586.3644798 -sellevel,20 era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel20_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel20_“$common_year”.nc era5_land_DP_WNW_range20_22_“$common_year”.nc
#sellevel22
cdo -mulc,66052.4831091 -sellevel,22 era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel22_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel22_“$common_year”.nc era5_land_DP_WNW_range22_24_“$common_year”.nc
#sellevel24
cdo -mulc,87220.4199845 -sellevel,24 era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel24_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel24_“$common_year”.nc era5_land_DP_WNW_range24_26_“$common_year”.nc
#sellevel26
cdo -mulc,112442.7292247 -sellevel,26 era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel26_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel26_“$common_year”.nc era5_land_DP_WNW_range26_28_“$common_year”.nc
#sellevel28
cdo -mulc,142071.9649483 -sellevel,28 era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel28_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel28_“$common_year”.nc era5_land_DP_WNW_range28_30_“$common_year”.nc
#sellevel30
cdo -mulc,176460.6812740 -sellevel,30 era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel30_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel30_“$common_year”.nc era5_land_DP_WNW_range30_32_“$common_year”.nc
#sellevel32
cdo -mulc,215961.4323204 -sellevel,32 era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel32_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel32_“$common_year”.nc era5_land_DP_WNW_range32_34_“$common_year”.nc
#sellevel34
cdo -mulc,237738.9940260 -sellevel,34 era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel34_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_WNW_histcount_divc_sellevel34_“$common_year”.nc era5_land_DP_WNW_range34_inf_“$common_year”.nc
#enssum
cdo enssum era5_land_DP_WNW_range6_8_“$common_year”.nc era5_land_DP_WNW_range8_10_“$common_year”.nc era5_land_DP_WNW_range10_12_“$common_year”.nc era5_land_DP_WNW_range12_14_“$common_year”.nc era5_land_DP_WNW_range14_16_“$common_year”.nc era5_land_DP_WNW_range16_18_“$common_year”.nc era5_land_DP_WNW_range18_20_“$common_year”.nc era5_land_DP_WNW_range20_22_“$common_year”.nc era5_land_DP_WNW_range22_24_“$common_year”.nc era5_land_DP_WNW_range24_26_“$common_year”.nc era5_land_DP_WNW_range26_28_“$common_year”.nc era5_land_DP_WNW_range28_30_“$common_year”.nc era5_land_DP_WNW_range30_32_“$common_year”.nc era5_land_DP_WNW_range32_34_“$common_year”.nc era5_land_DP_WNW_range34_inf_“$common_year”.nc era5_land_DP_WNW_range_enssum_“$common_year”.nc
#change variable name into DP_WNW, in order to be used in the resultanting 
cdo chname,WS,DP_WNW era5_land_DP_WNW_range_enssum_“$common_year”.nc era5_land_DP_WNW_range_enssum_chname_“$common_year”.nc


#NW, 123.75≤NW＜146.25
cdo setvrange,123.75,146.2499999 era5_land_WD_ifthen_“$common_year”.nc era5_land_WD_ifthen_setvrange_NW_“$common_year”.nc
#mask sand-moving wind speeds in the NW azimuth
cdo ifthen era5_land_WD_ifthen_setvrange_NW_“$common_year”.nc era5_land_WS_setrtomiss_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_NW_“$common_year”.nc
#2 m/s bins of sand-moving wind speeds in the NW azimuth, 6m/s≤WS＜8m/s, 8m/s≤WS＜10m/s, 10m/s≤WS＜12m/s, 12m/s≤WS＜14m/s, 14m/s≤WS＜16m/s, 16m/s≤WS＜18m/s, 18m/s≤WS＜20m/s, 20m/s≤WS＜22m/s, 22m/s≤WS＜24m/s, 24m/s≤WS＜26m/s, 26m/s≤WS＜28m/s, 28m/s≤WS＜30m/s, 30m/s≤WS＜32m/s, 32m/s≤WS<34m/s, 34m/s≤WS
cdo histcount,6,7.9999999,9.9999999,11.9999999,13.9999999,15.9999999,17.9999999,19.9999999,21.9999999,23.9999999,25.9999999,27.9999999,29.9999999,31.9999999,33.9999999,inf era5_land_WS_setrtomiss_ifthen_NW_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_NW_histcount_“$common_year”.nc
#the sand-moving wind frequency in the NW azimuth, 8760 is the total hours for the “$common_year”
cdo divc,8760 era5_land_WS_setrtomiss_ifthen_NW_histcount_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_“$common_year”.nc
#setmisstoc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_setmisstoc_“$common_year”.nc
#mulc
cdo mulc,100 era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_setmisstoc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_setmisstoc_mulc_“$common_year”.nc
#weighting factor v^2(v-vt), v is the mean wind speed，and they are 7, 9, 11, 13, 15, 17, 19, 21, 23, 25, 27, 29, 31, 33, 34m/s, respectively; and m/s needs to be conversed into knot
#level,6 v^2(v-vt)=(7*3600/1852)*(7*3600/1852)*(7*3600/1852-6*3600/1852)=359.8989961
#level,8 v^2(v-vt)=(9*3600/1852)*(9*3600/1852)*(9*3600/1852-6*3600/1852)=1784.8052258
#level,10 v^2(v-vt)=(11*3600/1852)*(11*3600/1852)*(11*3600/1852-6*3600/1852)=4443.6508708
#level,12 v^2(v-vt)=(13*3600/1852)*(13*3600/1852)*(13*3600/1852-6*3600/1852)=8688.9900498
#level,14 v^2(v-vt)=(15*3600/1852)*(15*3600/1852)*(15*3600/1852-6*3600/1852)=14873.3768816
#level,16 v^2(v-vt)=(17*3600/1852)*(17*3600/1852)*(17*3600/1852-6*3600/1852)=23349.3654847
#level,18 v^2(v-vt)=(19*3600/1852)*(19*3600/1852)*(19*3600/1852-6*3600/1852)=34469.5099779
#level,20 v^2(v-vt)=(21*3600/1852)*(21*3600/1852)*(21*3600/1852-6*3600/1852)=48586.3644798
#level,22 v^2(v-vt)=(23*3600/1852)*(23*3600/1852)*(23*3600/1852-6*3600/1852)=66052.4831091
#level,24 v^2(v-vt)=(24*3600/1852)*(24*3600/1852)*(24*3600/1852-6*3600/1852)=87220.4199845
#level,26 v^2(v-vt)=(27*3600/1852)*(27*3600/1852)*(27*3600/1852-6*3600/1852)=112442.7292247
#level,28 v^2(v-vt)=(29*3600/1852)*(29*3600/1852)*(29*3600/1852-6*3600/1852)=142071.9649483
#level,30 v^2(v-vt)=(31*3600/1852)*(31*3600/1852)*(31*3600/1852-6*3600/1852)=176460.6812740
#level,32 v^2(v-vt)=(33*3600/1852)*(33*3600/1852)*(33*3600/1852-6*3600/1852)=215961.4323204
#level,34 v^2(v-vt)=(34*3600/1852)*(34*3600/1852)*(34*3600/1852-6*3600/1852)=237738.9940260
#1 knot = 1 nautical mile/hour =1852m/hour=1852/3600m/s=0.5144m/s
#sellevel6
cdo -mulc,359.8989961 -sellevel,6 era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel6_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel6_“$common_year”.nc era5_land_DP_NW_range6_8_“$common_year”.nc
#sellevel8
cdo -mulc,1784.8052258 -sellevel,8 era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel8_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel8_“$common_year”.nc era5_land_DP_NW_range8_10_“$common_year”.nc
#sellevel10
cdo -mulc,4443.6508708 -sellevel,10 era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel10_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel10_“$common_year”.nc era5_land_DP_NW_range10_12_“$common_year”.nc
#sellevel12
cdo -mulc,8688.9900498 -sellevel,12 era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel12_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel12_“$common_year”.nc era5_land_DP_NW_range12_14_“$common_year”.nc
#sellevel14
cdo -mulc,14873.3768816 -sellevel,14 era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel14_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel14_“$common_year”.nc era5_land_DP_NW_range14_16_“$common_year”.nc
#sellevel16
cdo -mulc,23349.3654847 -sellevel,16 era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel16_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel16_“$common_year”.nc era5_land_DP_NW_range16_18_“$common_year”.nc
#sellevel18
cdo -mulc,34469.5099779 -sellevel,18 era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel18_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel18_“$common_year”.nc era5_land_DP_NW_range18_20_“$common_year”.nc
#sellevel20
cdo -mulc,48586.3644798 -sellevel,20 era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel20_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel20_“$common_year”.nc era5_land_DP_NW_range20_22_“$common_year”.nc
#sellevel22
cdo -mulc,66052.4831091 -sellevel,22 era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel22_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel22_“$common_year”.nc era5_land_DP_NW_range22_24_“$common_year”.nc
#sellevel24
cdo -mulc,87220.4199845 -sellevel,24 era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel24_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel24_“$common_year”.nc era5_land_DP_NW_range24_26_“$common_year”.nc
#sellevel26
cdo -mulc,112442.7292247 -sellevel,26 era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel26_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel26_“$common_year”.nc era5_land_DP_NW_range26_28_“$common_year”.nc
#sellevel28
cdo -mulc,142071.9649483 -sellevel,28 era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel28_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel28_“$common_year”.nc era5_land_DP_NW_range28_30_“$common_year”.nc
#sellevel30
cdo -mulc,176460.6812740 -sellevel,30 era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel30_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel30_“$common_year”.nc era5_land_DP_NW_range30_32_“$common_year”.nc
#sellevel32
cdo -mulc,215961.4323204 -sellevel,32 era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel32_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel32_“$common_year”.nc era5_land_DP_NW_range32_34_“$common_year”.nc
#sellevel34
cdo -mulc,237738.9940260 -sellevel,34 era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel34_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NW_histcount_divc_sellevel34_“$common_year”.nc era5_land_DP_NW_range34_inf_“$common_year”.nc
#enssum
cdo enssum era5_land_DP_NW_range6_8_“$common_year”.nc era5_land_DP_NW_range8_10_“$common_year”.nc era5_land_DP_NW_range10_12_“$common_year”.nc era5_land_DP_NW_range12_14_“$common_year”.nc era5_land_DP_NW_range14_16_“$common_year”.nc era5_land_DP_NW_range16_18_“$common_year”.nc era5_land_DP_NW_range18_20_“$common_year”.nc era5_land_DP_NW_range20_22_“$common_year”.nc era5_land_DP_NW_range22_24_“$common_year”.nc era5_land_DP_NW_range24_26_“$common_year”.nc era5_land_DP_NW_range26_28_“$common_year”.nc era5_land_DP_NW_range28_30_“$common_year”.nc era5_land_DP_NW_range30_32_“$common_year”.nc era5_land_DP_NW_range32_34_“$common_year”.nc era5_land_DP_NW_range34_inf_“$common_year”.nc era5_land_DP_NW_range_enssum_“$common_year”.nc
#change variable name into DP_NW, in order to be used in the resultanting 
cdo chname,WS,DP_NW era5_land_DP_NW_range_enssum_“$common_year”.nc era5_land_DP_NW_range_enssum_chname_“$common_year”.nc


#NNW, 101.25≤NNW＜123.75
cdo setvrange,101.25,123.7499999 era5_land_WD_ifthen_“$common_year”.nc era5_land_WD_ifthen_setvrange_NNW_“$common_year”.nc
#mask sand-moving wind speeds in the NNW azimuth
cdo ifthen era5_land_WD_ifthen_setvrange_NNW_“$common_year”.nc era5_land_WS_setrtomiss_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_NNW_“$common_year”.nc
#2 m/s bins of sand-moving wind speeds in the NNW azimuth, 6m/s≤WS＜8m/s, 8m/s≤WS＜10m/s, 10m/s≤WS＜12m/s, 12m/s≤WS＜14m/s, 14m/s≤WS＜16m/s, 16m/s≤WS＜18m/s, 18m/s≤WS＜20m/s, 20m/s≤WS＜22m/s, 22m/s≤WS＜24m/s, 24m/s≤WS＜26m/s, 26m/s≤WS＜28m/s, 28m/s≤WS＜30m/s, 30m/s≤WS＜32m/s, 32m/s≤WS<34m/s, 34m/s≤WS
cdo histcount,6,7.9999999,9.9999999,11.9999999,13.9999999,15.9999999,17.9999999,19.9999999,21.9999999,23.9999999,25.9999999,27.9999999,29.9999999,31.9999999,33.9999999,inf era5_land_WS_setrtomiss_ifthen_NNW_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_NNW_histcount_“$common_year”.nc
#the sand-moving wind frequency in the NNW azimuth, 8760 is the total hours for the “$common_year”
cdo divc,8760 era5_land_WS_setrtomiss_ifthen_NNW_histcount_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_“$common_year”.nc
#setmisstoc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_setmisstoc_“$common_year”.nc
#mulc
cdo mulc,100 era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_setmisstoc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_setmisstoc_mulc_“$common_year”.nc
#weighting factor v^2(v-vt), v is the mean wind speed，and they are 7, 9, 11, 13, 15, 17, 19, 21, 23, 25, 27, 29, 31, 33, 34m/s, respectively; and m/s needs to be conversed into knot
#level,6 v^2(v-vt)=(7*3600/1852)*(7*3600/1852)*(7*3600/1852-6*3600/1852)=359.8989961
#level,8 v^2(v-vt)=(9*3600/1852)*(9*3600/1852)*(9*3600/1852-6*3600/1852)=1784.8052258
#level,10 v^2(v-vt)=(11*3600/1852)*(11*3600/1852)*(11*3600/1852-6*3600/1852)=4443.6508708
#level,12 v^2(v-vt)=(13*3600/1852)*(13*3600/1852)*(13*3600/1852-6*3600/1852)=8688.9900498
#level,14 v^2(v-vt)=(15*3600/1852)*(15*3600/1852)*(15*3600/1852-6*3600/1852)=14873.3768816
#level,16 v^2(v-vt)=(17*3600/1852)*(17*3600/1852)*(17*3600/1852-6*3600/1852)=23349.3654847
#level,18 v^2(v-vt)=(19*3600/1852)*(19*3600/1852)*(19*3600/1852-6*3600/1852)=34469.5099779
#level,20 v^2(v-vt)=(21*3600/1852)*(21*3600/1852)*(21*3600/1852-6*3600/1852)=48586.3644798
#level,22 v^2(v-vt)=(23*3600/1852)*(23*3600/1852)*(23*3600/1852-6*3600/1852)=66052.4831091
#level,24 v^2(v-vt)=(24*3600/1852)*(24*3600/1852)*(24*3600/1852-6*3600/1852)=87220.4199845
#level,26 v^2(v-vt)=(27*3600/1852)*(27*3600/1852)*(27*3600/1852-6*3600/1852)=112442.7292247
#level,28 v^2(v-vt)=(29*3600/1852)*(29*3600/1852)*(29*3600/1852-6*3600/1852)=142071.9649483
#level,30 v^2(v-vt)=(31*3600/1852)*(31*3600/1852)*(31*3600/1852-6*3600/1852)=176460.6812740
#level,32 v^2(v-vt)=(33*3600/1852)*(33*3600/1852)*(33*3600/1852-6*3600/1852)=215961.4323204
#level,34 v^2(v-vt)=(34*3600/1852)*(34*3600/1852)*(34*3600/1852-6*3600/1852)=237738.9940260
#1 knot = 1 nautical mile/hour =1852m/hour=1852/3600m/s=0.5144m/s
#sellevel6
cdo -mulc,359.8989961 -sellevel,6 era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel6_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel6_“$common_year”.nc era5_land_DP_NNW_range6_8_“$common_year”.nc
#sellevel8
cdo -mulc,1784.8052258 -sellevel,8 era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel8_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel8_“$common_year”.nc era5_land_DP_NNW_range8_10_“$common_year”.nc
#sellevel10
cdo -mulc,4443.6508708 -sellevel,10 era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel10_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel10_“$common_year”.nc era5_land_DP_NNW_range10_12_“$common_year”.nc
#sellevel12
cdo -mulc,8688.9900498 -sellevel,12 era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel12_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel12_“$common_year”.nc era5_land_DP_NNW_range12_14_“$common_year”.nc
#sellevel14
cdo -mulc,14873.3768816 -sellevel,14 era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel14_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel14_“$common_year”.nc era5_land_DP_NNW_range14_16_“$common_year”.nc
#sellevel16
cdo -mulc,23349.3654847 -sellevel,16 era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel16_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel16_“$common_year”.nc era5_land_DP_NNW_range16_18_“$common_year”.nc
#sellevel18
cdo -mulc,34469.5099779 -sellevel,18 era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel18_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel18_“$common_year”.nc era5_land_DP_NNW_range18_20_“$common_year”.nc
#sellevel20
cdo -mulc,48586.3644798 -sellevel,20 era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel20_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel20_“$common_year”.nc era5_land_DP_NNW_range20_22_“$common_year”.nc
#sellevel22
cdo -mulc,66052.4831091 -sellevel,22 era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel22_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel22_“$common_year”.nc era5_land_DP_NNW_range22_24_“$common_year”.nc
#sellevel24
cdo -mulc,87220.4199845 -sellevel,24 era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel24_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel24_“$common_year”.nc era5_land_DP_NNW_range24_26_“$common_year”.nc
#sellevel26
cdo -mulc,112442.7292247 -sellevel,26 era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel26_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel26_“$common_year”.nc era5_land_DP_NNW_range26_28_“$common_year”.nc
#sellevel28
cdo -mulc,142071.9649483 -sellevel,28 era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel28_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel28_“$common_year”.nc era5_land_DP_NNW_range28_30_“$common_year”.nc
#sellevel30
cdo -mulc,176460.6812740 -sellevel,30 era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel30_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel30_“$common_year”.nc era5_land_DP_NNW_range30_32_“$common_year”.nc
#sellevel32
cdo -mulc,215961.4323204 -sellevel,32 era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel32_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel32_“$common_year”.nc era5_land_DP_NNW_range32_34_“$common_year”.nc
#sellevel34
cdo -mulc,237738.9940260 -sellevel,34 era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_“$common_year”.nc era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel34_“$common_year”.nc
cdo setmisstoc,0 era5_land_WS_setrtomiss_ifthen_NNW_histcount_divc_sellevel34_“$common_year”.nc era5_land_DP_NNW_range34_inf_“$common_year”.nc
#enssum
cdo enssum era5_land_DP_NNW_range6_8_“$common_year”.nc era5_land_DP_NNW_range8_10_“$common_year”.nc era5_land_DP_NNW_range10_12_“$common_year”.nc era5_land_DP_NNW_range12_14_“$common_year”.nc era5_land_DP_NNW_range14_16_“$common_year”.nc era5_land_DP_NNW_range16_18_“$common_year”.nc era5_land_DP_NNW_range18_20_“$common_year”.nc era5_land_DP_NNW_range20_22_“$common_year”.nc era5_land_DP_NNW_range22_24_“$common_year”.nc era5_land_DP_NNW_range24_26_“$common_year”.nc era5_land_DP_NNW_range26_28_“$common_year”.nc era5_land_DP_NNW_range28_30_“$common_year”.nc era5_land_DP_NNW_range30_32_“$common_year”.nc era5_land_DP_NNW_range32_34_“$common_year”.nc era5_land_DP_NNW_range34_inf_“$common_year”.nc era5_land_DP_NNW_range_enssum_“$common_year”.nc
#change variable name into DP_NNW, in order to be used in the resultanting 
cdo chname,WS,DP_NNW era5_land_DP_NNW_range_enssum_“$common_year”.nc era5_land_DP_NNW_range_enssum_chname_“$common_year”.nc


#calculate DP，add up the DPs in the N, NNE, NE, ENE, E, ESE, SE, SSE, S, SSW, SW, WSW, W, WNW, NW, NNW azimuth
cdo enssum era5_land_DP_N_range_enssum_“$common_year”.nc era5_land_DP_NNE_range_enssum_“$common_year”.nc era5_land_DP_NE_range_enssum_“$common_year”.nc era5_land_DP_ENE_range_enssum_“$common_year”.nc era5_land_DP_E_range_enssum_“$common_year”.nc era5_land_DP_ESE_range_enssum_“$common_year”.nc era5_land_DP_SE_range_enssum_“$common_year”.nc era5_land_DP_SSE_range_enssum_“$common_year”.nc era5_land_DP_S_range_enssum_“$common_year”.nc era5_land_DP_SSW_range_enssum_“$common_year”.nc era5_land_DP_SW_range_enssum_“$common_year”.nc era5_land_DP_WSW_range_enssum_“$common_year”.nc era5_land_DP_W_range_enssum_“$common_year”.nc era5_land_DP_WNW_range_enssum_“$common_year”.nc era5_land_DP_NW_range_enssum_“$common_year”.nc era5_land_DP_NNW_range_enssum_“$common_year”.nc era5_land_DP_range_enssum_“$common_year”.nc
#change variable name into DP, in order to be used in the resultanting 
cdo chname,WS,DP era5_land_DP_range_enssum_“$common_year”.nc era5_land_DP_range_enssum_chname_“$common_year”.nc
cdo chname,WS,DP era5_land_DP_range_enssum_“$common_year”.nc era5_land_DP_“$common_year”.nc

#merge the nc files with new variable names from 16 azimuth, and form the new nc file
cdo merge era5_land_DP_N_range_enssum_chname_“$common_year”.nc era5_land_DP_NNE_range_enssum_chname_“$common_year”.nc era5_land_DP_NE_range_enssum_chname_“$common_year”.nc era5_land_DP_ENE_range_enssum_chname_“$common_year”.nc era5_land_DP_E_range_enssum_chname_“$common_year”.nc era5_land_DP_ESE_range_enssum_chname_“$common_year”.nc era5_land_DP_SE_range_enssum_chname_“$common_year”.nc era5_land_DP_SSE_range_enssum_chname_“$common_year”.nc era5_land_DP_S_range_enssum_chname_“$common_year”.nc era5_land_DP_SSW_range_enssum_chname_“$common_year”.nc era5_land_DP_SW_range_enssum_chname_“$common_year”.nc era5_land_DP_WSW_range_enssum_chname_“$common_year”.nc era5_land_DP_W_range_enssum_chname_“$common_year”.nc era5_land_DP_WNW_range_enssum_chname_“$common_year”.nc era5_land_DP_NW_range_enssum_chname_“$common_year”.nc era5_land_DP_NNW_range_enssum_chname_“$common_year”.nc era5_land_DP_range_enssum_chname_merge_“$common_year”.nc 


#Σ component of RDP in the due-north direction, calculating process is ΣN=N-S+(NE+NW-SE-SW)*0.7071068+(NNE+NNW-SSW-SSE)*0.9238795+(WNW+ENE-WSW-ESE)*0.3826834
cdo expr,'RDP_N=DP_N-DP_S+(DP_NE+DP_NW-DP_SE-DP_SW)*0.7071068+(DP_NNE+DP_NNW-DP_SSW-DP_SSE)*0.9238795+(DP_WNW+DP_ENE-DP_WSW-DP_ESE)*0.3826834;' era5_land_DP_range_enssum_chname_merge_“$common_year”.nc era5_land_DP_range_enssum_chname_merge_exprN_“$common_year”.nc 


#Σ component of RDP in the due-east direction, calculating process is ΣE=E-W+(NE+SE-NW-SW)*0.7071068+(ESE+ENE-WNW-WSW)*0.9238795+(NNE+SSE-SSW-NNW)*0.3826834
cdo expr,'RDP_E=DP_E-DP_W+(DP_NE+DP_SE-DP_NW-DP_SW)*0.7071068+(DP_ESE+DP_ENE-DP_WNW-DP_WSW)*0.9238795+(DP_NNE+DP_SSE-DP_SSW-DP_NNW)*0.3826834;' era5_land_DP_range_enssum_chname_merge_“$common_year”.nc era5_land_DP_range_enssum_chname_merge_exprE_“$common_year”.nc


#calculate RDP, Resultant Drift Potential
cdo -chname,RDP_E,RDP -sqrt -add -sqr -selname,RDP_E era5_land_DP_range_enssum_chname_merge_exprE_“$common_year”.nc -sqr -selname,RDP_N  era5_land_DP_range_enssum_chname_merge_exprN_“$common_year”.nc era5_land_RDP_“$common_year”.nc

#calculate RDD, Resultant Drift Direction
cdo -chname,RDP_E,RDD -mulc,57.2957805 -atan2 -mulc,-1 era5_land_DP_range_enssum_chname_merge_exprE_“$common_year”.nc -mulc,-1 era5_land_DP_range_enssum_chname_merge_exprN_“$common_year”.nc era5_land_theta_“$common_year”.nc
#state 1: adjust angles of [0, 180) into 270-theta 
cdo setvrange,0,180 era5_land_theta_“$common_year”.nc era5_land_theta_setvrange1_“$common_year”.nc
cdo mulc,-1 era5_land_theta_setvrange1_“$common_year”.nc era5_land_theta_setvrange1_mulc_“$common_year”.nc
cdo addc,270 era5_land_theta_setvrange1_mulc_“$common_year”.nc era5_land_theta1_“$common_year”.nc
cdo setmisstoc,0 era5_land_theta1_“$common_year”.nc era5_land_theta1_setmisstoc_“$common_year”.nc
#state 2: adjust angles of [-90,0) into 270-theta 
cdo setvrange,-90,0 era5_land_theta_“$common_year”.nc era5_land_theta_setvrange2_“$common_year”.nc
cdo mulc,-1 era5_land_theta_setvrange2_“$common_year”.nc era5_land_theta_setvrange2_mulc_“$common_year”.nc
cdo addc,270 era5_land_theta_setvrange2_mulc_“$common_year”.nc era5_land_theta2_“$common_year”.nc
cdo setmisstoc,0 era5_land_theta2_“$common_year”.nc era5_land_theta2_setmisstoc_“$common_year”.nc
#state 3: adjust angles of [-180,-90) into abs(theta)-90 
cdo setvrange,-180,-90 era5_land_theta_“$common_year”.nc era5_land_theta_setvrange3_“$common_year”.nc
cdo mulc,-1 era5_land_theta_setvrange3_“$common_year”.nc era5_land_theta_setvrange3_mulc_“$common_year”.nc
cdo addc,-90 era5_land_theta_setvrange3_mulc_“$common_year”.nc era5_land_theta3_“$common_year”.nc
cdo setmisstoc,0 era5_land_theta3_“$common_year”.nc era5_land_theta3_setmisstoc_“$common_year”.nc

#add, 3 states combine to one file
cdo add era5_land_theta1_setmisstoc_“$common_year”.nc era5_land_theta2_setmisstoc_“$common_year”.nc era5_land_theta12_setmisstoc_“$common_year”.nc
cdo add era5_land_theta12_setmisstoc_“$common_year”.nc era5_land_theta3_setmisstoc_“$common_year”.nc era5_land_theta4_“$common_year”.nc
#revise 540.000000 into 270.000000
cdo setrtoc,450,630,270.0000000 era5_land_theta4_“$common_year”.nc era5_land_RDD_“$common_year”.nc

#calculate RDP/DP，WDV, Wind Direction Variablity
cdo div era5_land_RDP_“$common_year”.nc era5_land_DP_“$common_year”.nc era5_land_WDV_“$common_year”.nc












done
