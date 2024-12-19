# sand-drift
These CDO codes present that how to use the ERA5 (0.25°) and ERA5-Land (0.1°) hourly wind data to calculate the yearly sand drift, and heterogenous sand drift could be used to assess the dune threats to desert engineering.


Formula:

DPi=∑U^2×(U-Ut)/100×t

The drift potential (DP) in vector units (VU) is calculated by

where i represents the 16 wind directions (N, NNE, NE, NEE, E, EES, ES, ESS, S, SSW, WS, WWS, W, WWN, NW and NNW); U is the mean wind speed in each speed category with an effective wind speed greater than or euqal to the threshold wind speed Ut at 10 m height; t is the percentage of time during which the effective wind speed exceeds Ut. A 2 m s-1 bin is used to classify effective wind speeds ≥5.3 m s-1 (or ≥5.8 m s-1) for each direction, generating the corresponding speed categories, which are associated with mean wind speeds of 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32 and 33 m s-1 (7, 9, 11, 13, 15, 17, 19, 21, 23, 25, 27, 29, 31 and 32 m s-1). The sum of these bins represents the final DP for each wind direction. Although DP could be calculated using wind speeds in m s-1, we express the mean wind speeds in knots to avoid recalibrating the wind energy environment classification (low energy, <200 VU; intermediate energy, ≥200 VU and <400 VU; high energy, ≥400 VU) developed by Fryberger. The conversion factor used is 1 knot = 0.5144 m s-1. 

The obtained DPs in the 16 wind directions are projected onto the due-east (RDP_E) and due-north (RDP_N) directions to calculate the RDP, RDD and WDV: 

RDP=sqrt(RDP_E^2+RDP_N^2)

RDD=180+57.296atan2⁡(RDP_E⁄RDP_N)

WDV=RDP/DP

Here, RDP represents the net sand transport potential in the resultant drift direction (RDD), which corresponds to the net trend of sand drift and is aligned with the dominant direction of dune migration. WDV reflects whether the winds predominantly come from a single direction (approaching 1) or multiple directions (approaching 0). WDV is classified into low ratio (<0.3), intermediate ratio (≥0.3 and <0.8) and high ratio (≥0.8) wind regimes. Low-ratio wind regimes are associated with complex or obtuse bimodal wind patterns, intermediate-ratio wind regimes with either obtuse bimodal or acute bimodal wind patterns, and high-ratio wind regimes with wide or narrow unimodal wind patterns. Notably, low-ratio wind regimes tend to pile up sands and generate large dunes. Finally, the divisor used for calculating the frequency of effective wind speeds from different directions is the total number of hours in a Julian year (8760 hours for common year or 8784 hours for leap year).


Bibliography:

1	S. G. Fryberger, Techniques for the evaluation of surface wind data in terms of eolian sand drift. United States Geological Survey, Open-File Report 78-405 (1978).

2	S. G. Fryberger, Dune forms and wind regimes. In A study of global sand seas [E. D. McKee (ed)]. United States Geological Survey, 137-169 (1979).

3	J. E. Bullard, A note on the use of the “Fryberger method” for evaluating potential sand transport by wind. J. Sediment. Res. 67, 499-501 (1997).

