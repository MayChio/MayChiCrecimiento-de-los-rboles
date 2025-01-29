** Ficticious model library to demonstrate installing models


** NPN BJT
.model SXN1001 NPN IS=1e-16 BF=200 TF=1e-9 IKF=0.1


** Opamp
** Negative supply------------------|
** Positive supply--------------|   |
** Output------------------|    |   |
** Inverting input----|    |    |   |
** Non-inv input-|    |    |    |   |
**               |    |    |    |   |
.subckt SXOA1000 VINP VINN VOUT VCC VEE
I2 D2_N VEE 100u
I1 Q3_E VEE 100u
C1 VOUT R1_P 10p
D1 Q7_C D1_N D1
D2 D1_N D2_N D1
D3 VEE Q3_E D1
Q2 VEE D2_N VOUT 0 P1
Q3 Q3_C R3_P Q3_E 0 N1
Q1 VCC Q7_C VOUT 0 N1
Q6 Q3_C Q3_C VCC 0 P1
Q7 Q7_C Q5_C VCC 0 P1
R1 R1_P Q5_C 100 
Q4 Q5_C R2_N Q3_E 0 N1
R2 VINP R2_N 1K
Q5 Q5_C Q3_C VCC 0 P1
R3 R3_P VINN 1K

.model N1 NPN VA=100 TF=1e-9
.model P1 PNP VA=100 TF=1e-9
.model D1 D

.ends
