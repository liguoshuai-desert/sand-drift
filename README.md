# sand-drift
These CDO codes present that how to use the ERA5-Land reanalysis product with high spatiotemporal resolution (0.1° and hourly resolution) to calculate the yearly sand drift, and heterogenous sand drift could be used to assess the dune threats to petroleum exploitation, traffic engineering and irrigated farming in dune fields.


Formula:

The drift potential (DP) in vector units (VU) is calculated by

DPi=∑U^2*[U-Ut]*fu

where i represents 16 directions: N, NNE, NE, NEE, E, EES, ES, ESS, S, SSW, WS, WWS, W, WWN, NW and NNW; U is the sand-moving wind speed 5.1 and 5.3 m s-1 (≥5.8 and 6.4 m s-1) at the height of 10 m; Ut is the threshold wind velocity, i.e., the minimum wind velocity at the 10-m height to cause sediment particles in saltation; fu is the fraction of time when the wind speed is higher than Ut. 

The 2 m s-1 bin is adopted in each direction of effective friction velocity ≥5.1 and 5.3 m s-1 (≥5.8 and 6.4 m s-1), corresponding to the mean friction velocities of 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32 and 33 m s-1 (7, 9, 11, 13, 15, 17, 19, 21, 23, 25, 27, 29, 31 and 32 m s-1), and the sum of these bins is the final DP in the wind direction. Note that these mean wind speeds have been expressed in knots by the approximate conversion (1 knot = 0.5144 m s-1) to ensure the valid classification of wind energy (low energy, <200 VU; intermediate energy, ≥200 VU and <400 VU; high energy, ≥400 VU) developed by Fryberger  [Fryberger, 1978, 1979; Bullard, 1997]. 

The obtained DPs in the 16 wind directions are projected to the due-north and due-east directions to solve the resultant drift potential (RDP) and the wind directional variation (RDP/DP, referred as WDV). RDP represents the net sand transport potential in the resultant drift direction, which is the net trend of sand drift, in line with the dominated direction of dune migration velocities; WDV reflects the winds coming from the same direction (approximate to 1) or many directions (approximate to 0). 

The divisor used for calculating the frequency of sand-moving winds from different directions is the total hour of Julian years (8760 hours for common year or 8784 hours for leap year). 


Bibliography:

1	S. G. Fryberger, Techniques for the evaluation of surface wind data in terms of eolian sand drift. United States Geological Survey, Open-File Report 78-405 (1978).

2	S. G. Fryberger, Dune forms and wind regimes. In A study of global sand seas [E. D. McKee (ed)]. United States Geological Survey, 137-169 (1979).

3	J. E. Bullard, A note on the use of the “Fryberger method” for evaluating potential sand transport by wind. J. Sediment. Res. 67, 499-501 (1997).

