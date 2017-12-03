10 DATA 3751, 3769, 2769, 2039, 2794, 240, 3579, 1228, 4291, 220, 324, 3960
11 DATA 211, 1346, 237, 1586, 0, 550, 589, 538, 110, 167, 567, 99, 203, 524
12 DATA 288, 500, 111, 118, 185, 505, 74, 0, 2127, 1904, 199, 221, 1201, 250
13 DATA 1119, 377, 1633, 1801, 2011, 1794, 394, 238, 206, 680, 0, 435, 1703
14 DATA 1385, 1461, 213, 1211, 192, 1553, 1580, 197, 571, 195, 326, 1491, 869
15 DATA 1282, 0, 109, 104, 3033, 120, 652, 2752, 1822, 2518, 1289, 1053, 1397
16 DATA 951, 3015, 3016, 125, 1782, 0, 2025, 1920, 1891, 99, 1057, 1909, 2237
17 DATA 106, 97, 920, 603, 1841, 2150, 1980, 1970, 88, 0, 1870, 170, 167, 176
18 DATA 306, 1909, 1825, 1709, 168, 1400, 359, 817, 1678, 1718, 1594, 1552, 0
19 DATA 98, 81, 216, 677, 572, 295, 38, 574, 403, 74, 91, 534, 662, 588, 511
20 DATA 51, 0, 453, 1153, 666, 695, 63, 69, 68, 58, 524, 1088, 75, 1117, 1192
21 DATA 1232, 1046, 443, 0, 3893, 441, 1825, 3730, 3660, 115, 4503, 4105, 3495
22 DATA 4092, 48, 3852, 132, 156, 150, 4229, 0, 867, 44, 571, 40, 884, 922
23 DATA 418, 328, 901, 845, 42, 860, 932, 53, 432, 569, 0, 905, 717, 162, 4536
24 DATA 4219, 179, 990, 374, 4409, 4821, 393, 4181, 4054, 4958, 186, 193, 0
25 DATA 2610, 2936, 218, 2552, 3281, 761, 204, 3433, 3699, 2727, 3065, 3624
26 DATA 193, 926, 1866, 236, 0, 2602, 216, 495, 3733, 183, 4688, 2893, 4042
27 DATA 3066, 3810, 189, 4392, 3900, 4321, 2814, 159, 0, 166, 136, 80, 185
28 DATA 135, 78, 177, 123, 82, 150, 121, 145, 115, 63, 68, 24, 0, 214, 221
29 DATA 265, 766, 959, 1038, 226, 1188, 1122, 117, 458, 1105, 1285, 1017, 274
30 DATA 281, 0, 32767
31 REM - DATA FORMAT ABOVE:
32 REM -   0 REPRESENTS END OF ROW
33 REM -   32767 REPRESENTS END OF DATA

50 LET T = 0

100 LET H = 0      : REM - HIGEST ON ROW
110 LET L = 32767  : REM - LOWEST ON ROW

200 READ D
210 IF D = 32767 GOTO 900
220 IF D = 0 GOTO 400

300 IF H < D THEN H = D
310 IF L > D THEN L = D

320 GOTO 200

400 LET T = T + H - L
500 GOTO 100

900 PRINT "CHECKSUM:", T
