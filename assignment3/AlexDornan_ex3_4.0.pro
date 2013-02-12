; IDL Version 8.1 (linux x86_64 m64)
; Journal File for aldo2486@cosmos.colorado.edu
; Working directory: /home/astr/ugrad/aldo2486/ASTR2600_public/assignment3
; Date: Tue Feb 12 15:00:07 2013
 
x= -10. + 20.* findgen(100)/99.
y = x/20. + sin(x) / x
plot, y
ymax = max( y, indexOfMax)
print, "Y peaks at", ymax, " at index", indexOfMax
;Y peaks at      1.00335 at index          50
plot, x, y
xAtMax = x[ indexOfMax ]
print, "Y peaks at" ymax, " at x =", xAtMax
; % Syntax error.
print, "Y peaks at", ymax, " at x =", xAtMax
;Y peaks at      1.00335 at x =     0.101010
print, "Exercise 5.0"
;Exercise 5.0
x = 2*!pi
print, x
;      6.28319
print, x, format='(F5.3)'
;6.283
print, x, format='(F6.4)'
;6.2832
print, x, format='(F7.4)'
; 6.2832
print, x, format='(F8.2)'
;    6.28
print, x, format='(F7.2)'
;   6.28
ii = 3
print, "xxx", ii, "xxx"
;xxx       3xxx
print, ii, format = '( "xxx", I5, "xxx" )'
;xxx    3xxx
print, ii, format = '( "xxx", I2, "xxx" )'
;xxx 3xxx
print, ii, format = '( "xxx", I3.3, "xxx" )'
;xxx003xxx
format = '( "exponent ", I2, " :", 5I5 )'
b = 2 + indgen(5)
e = 2
n = b^e
print, format=format, e, n
;exponent  2 :    4    9   16   25   36
e = 10
n = b^e
print, format=format, e, n
;exponent 10 : 1024-6487    0  761*****
e = 3
n = b^e
print, format=format, e, n
;exponent  3 :    8   27   64  125  216
e = 4
n = b^e
print, format=format, e, n
;exponent  4 :   16   81  256  625 1296
e = 5
n = b^e
print, format=format, e, n
;exponent  5 :   32  243 1024 3125 7776
T = 15000.
format = '( "Plot of Planck function at ", F7.1, "K" )'
title = string( format=format, T )
print, title
;Plot of Planck function at 15000.0K
print, "Exercise 6.0"
;Exercise 6.0
b= 2 + indgen(5)
format='( "exponent ", I2, " :", 5I5 )'
openw, lun, /get_lun, "powerTable.txt"
e = 2
n = b^e
printf, lun, format=format, e, n
e = 3
n = b^e
printf, lun, format=format, e, n
e = 4
n = b^e
printf, lun, format=format, e, n
e = 5
n = b^e
printf, lun, format=format, e, n
free_lun, lun
print, "Exercise 6.1"
;Exercise 6.1
format = '(A9, I2, A2, 5I5)'
t = intarr(5)
expString = ""
colonStr = ""
openr, lun, /get_lun, "powerTable.txt"
readf, lun, format=format, expString, e, colonStr, t
print, e, t
;       0       4       9      16      25      36
print, expString
;exponent 
print, colonStr
; :
readf, lun, format=format, expString, e, colonStr, t
print, e, t
;       0       8      27      64     125     216
readf, lun, format=format, expString, e, colonStr, t
print, e, t
;       0      16      81     256     625    1296
readf, lun, format=format, expString, e, colonStr, t
print, e, t
;       0      32     243    1024    3125    7776
free_lun, lun
print, "Exercise 6.2"
;Exercise 6.2
x = findgen(100) * !PI
openw, lun, /get_lun, "test
openw, lun, /get_lun, "testArray.txt"
printf, lun, x
free_lun, lun
openr, lun, /get_lun, "testArray.txt"
readf, lun, xAscii
free_lun, lun
print, xAscii
;      0.00000
xAscii = fltarr(100)
openr, lun, /get_lun, "testArray.txt"
readf, lun, xAscii
free_lun, lun
print, xAscii
;      0.00000      3.14159      6.28319      9.42478      12.5664      15.7080      18.8496      21.9911
;      25.1327      28.2743      31.4159      34.5575      37.6991      40.8407      43.9823      47.1239
;      50.2655      53.4071      56.5487      59.6903      62.8319      65.9734      69.1150      72.2566
;      75.3982      78.5398      81.6814      84.8230      87.9646      91.1062      94.2478      97.3894
;      100.531      103.673      106.814      109.956      113.097      116.239      119.381      122.522
;      125.664      128.805      131.947      135.088      138.230      141.372      144.513      147.655
;      150.796      153.938      157.080      160.221      163.363      166.504      169.646      172.788
;      175.929      179.071      182.212      185.354      188.496      191.637      194.779      197.920
;      201.062      204.204      207.345      210.487      213.628      216.770      219.911      223.053
;      226.195      229.336      232.478      235.619      238.761      241.903      245.044      248.186
;      251.327      254.469      257.611      260.752      263.894      267.035      270.177      273.319
;      276.460      279.602      282.743      285.885      289.027      292.168      295.310      298.451
;      301.593      304.734      307.876      311.018
openw, lun, /get_lun, "testArray.dat"
writeu, lun, x
free_lun, lun
xBinary = fltarr(100)
openr, lun, /get_lun, "testArray.dat"
readu, lun, xBinary
free_lun, lun
print, xBinary
;      0.00000      3.14159      6.28319      9.42478      12.5664      15.7080      18.8496      21.9911
;      25.1327      28.2743      31.4159      34.5575      37.6991      40.8407      43.9823      47.1239
;      50.2655      53.4071      56.5487      59.6903      62.8319      65.9734      69.1150      72.2566
;      75.3982      78.5398      81.6814      84.8230      87.9646      91.1062      94.2478      97.3894
;      100.531      103.673      106.814      109.956      113.097      116.239      119.381      122.522
;      125.664      128.805      131.947      135.088      138.230      141.372      144.513      147.655
;      150.796      153.938      157.080      160.221      163.363      166.504      169.646      172.788
;      175.929      179.071      182.212      185.354      188.496      191.637      194.779      197.920
;      201.062      204.204      207.345      210.487      213.628      216.770      219.911      223.053
;      226.195      229.336      232.478      235.619      238.761      241.903      245.044      248.186
;      251.327      254.469      257.611      260.752      263.894      267.035      270.177      273.319
;      276.460      279.602      282.743      285.885      289.027      292.168      295.310      298.451
;      301.593      304.734      307.876      311.018
print, xBinary - xAscii
;      0.00000  2.62260e-06 -4.29153e-06 -1.90735e-06 -2.86102e-05 -3.62396e-05 -4.38690e-05  4.95911e-05
;  4.19617e-05  3.43323e-05  2.86102e-05  2.28882e-05  1.14441e-05  7.62939e-06      0.00000 -1.14441e-05
; -1.52588e-05 -2.28882e-05 -3.05176e-05 -3.81470e-05 -4.57764e-05  5.34058e-05  4.57764e-05  3.05176e-05
;  2.28882e-05  1.52588e-05  1.52588e-05  7.62939e-06      0.00000 -1.52588e-05 -2.28882e-05 -2.28882e-05
; -3.05176e-05 -0.000434875  0.000152588 -0.000251770  0.000335693 -6.86646e-05 -0.000473022  0.000114441
; -0.000289917  0.000305176 -0.000106812  0.000488281  9.15527e-05 -0.000320435  0.000259399 -0.000137329
;  0.000442505  4.57764e-05 -0.000366211  0.000244141 -0.000183105  0.000411987  1.52588e-05 -0.000396729
;  0.000198364 -0.000213623  0.000366211 -3.05176e-05 -0.000442505  0.000167847 -0.000259399  0.000350952
; -6.10352e-05 -0.000473022  0.000122070 -0.000289917  0.000305176 -0.000106812  0.000503540  9.15527e-05
; -0.000335693  0.000274658 -0.000137329  0.000457764  4.57764e-05 -0.000366211  0.000228882 -0.000183105
;  0.000427246  1.52588e-05 -0.000396729  0.000183105 -0.000213623  0.000366211 -3.05176e-05 -0.000427246
;  0.000183105 -0.000244141  0.000335693 -6.10352e-05 -0.000488281  0.000122070 -0.000274658  0.000335693
; -9.15527e-05  0.000488281  9.15527e-05 -0.000335693
print , x - xAscii
;      0.00000  2.62260e-06 -4.29153e-06 -1.90735e-06 -2.86102e-05 -3.62396e-05 -4.38690e-05  4.95911e-05
;  4.19617e-05  3.43323e-05  2.86102e-05  2.28882e-05  1.14441e-05  7.62939e-06      0.00000 -1.14441e-05
; -1.52588e-05 -2.28882e-05 -3.05176e-05 -3.81470e-05 -4.57764e-05  5.34058e-05  4.57764e-05  3.05176e-05
;  2.28882e-05  1.52588e-05  1.52588e-05  7.62939e-06      0.00000 -1.52588e-05 -2.28882e-05 -2.28882e-05
; -3.05176e-05 -0.000434875  0.000152588 -0.000251770  0.000335693 -6.86646e-05 -0.000473022  0.000114441
; -0.000289917  0.000305176 -0.000106812  0.000488281  9.15527e-05 -0.000320435  0.000259399 -0.000137329
;  0.000442505  4.57764e-05 -0.000366211  0.000244141 -0.000183105  0.000411987  1.52588e-05 -0.000396729
;  0.000198364 -0.000213623  0.000366211 -3.05176e-05 -0.000442505  0.000167847 -0.000259399  0.000350952
; -6.10352e-05 -0.000473022  0.000122070 -0.000289917  0.000305176 -0.000106812  0.000503540  9.15527e-05
; -0.000335693  0.000274658 -0.000137329  0.000457764  4.57764e-05 -0.000366211  0.000228882 -0.000183105
;  0.000427246  1.52588e-05 -0.000396729  0.000183105 -0.000213623  0.000366211 -3.05176e-05 -0.000427246
;  0.000183105 -0.000244141  0.000335693 -6.10352e-05 -0.000488281  0.000122070 -0.000274658  0.000335693
; -9.15527e-05  0.000488281  9.15527e-05 -0.000335693
print, x - xBinary
;      0.00000      0.00000      0.00000      0.00000      0.00000      0.00000      0.00000      0.00000
;      0.00000      0.00000      0.00000      0.00000      0.00000      0.00000      0.00000      0.00000
;      0.00000      0.00000      0.00000      0.00000      0.00000      0.00000      0.00000      0.00000
;      0.00000      0.00000      0.00000      0.00000      0.00000      0.00000      0.00000      0.00000
;      0.00000      0.00000      0.00000      0.00000      0.00000      0.00000      0.00000      0.00000
;      0.00000      0.00000      0.00000      0.00000      0.00000      0.00000      0.00000      0.00000
;      0.00000      0.00000      0.00000      0.00000      0.00000      0.00000      0.00000      0.00000
;      0.00000      0.00000      0.00000      0.00000      0.00000      0.00000      0.00000      0.00000
;      0.00000      0.00000      0.00000      0.00000      0.00000      0.00000      0.00000      0.00000
;      0.00000      0.00000      0.00000      0.00000      0.00000      0.00000      0.00000      0.00000
;      0.00000      0.00000      0.00000      0.00000      0.00000      0.00000      0.00000      0.00000
;      0.00000      0.00000      0.00000      0.00000      0.00000      0.00000      0.00000      0.00000
;      0.00000      0.00000      0.00000      0.00000
print, "Exercise 6.4"
;Exercise 6.4
help
.reset_session
help
x = -10 + 20.*findgen(100)/99.
y = sin(x) / x
help
plot, x, y
save, x, y, filename="sinc.idlsave"
.reset_session
help
restore, filename="sinc.idlsave"
help
plot, x, y
print, "Exercise 6.3"
;Exercise 6.3
help
.reset_session
help
x = -10 + 20.*findgen(100)/99.
y = sin(x) / x
help
print, "Exercise 6.4"
;Exercise 6.4
help
plot, x, y
image = tvrd()
write_jpeg, "mySincPlot.jpg", image
print, "Exercise 6.5"
;Exercise 6.5
path = "/home/shared/astr2600/data/assignment3/"
xfilename = path + "sinc_x.dat"
yfilename = path + "sinc_y.dat"
print, xfilename
;/home/shared/astr2600/data/assignment3/sinc_x.dat
print, yfilename
;/home/shared/astr2600/data/assignment3/sinc_y.dat
openr, xlun, xfilename, /get_lun
oepnr, ylun, yfilename, /get_lun
; % Attempt to call undefined procedure/function: 'OEPNR'.
openr, ylun, yfilename, /get_lun
nx = 0L
ny = 0L
readu, xlun, nx
readu, ylun, ny
x = fltarr(nx)
; % Array dimensions must be greater than 0.
print, nx
;  -402456576
nx = swap_endian(nx)
print, nx
;        1000
print, ny
;  -402456576
nx = swap_endian(ny)
x = fltarr(nx)
y = fltarr(ny)
; % Array dimensions must be greater than 0.
ny = swap_endian(ny)
print, ny
;        1000
print, nx
;        1000
y = fltarr(ny)
readu, xlun, x
readu, ylun, y
free_lun, xlun
free_lun, ylun
x = swap_endian(x)
y = swap_endian(y)
plot, x, y
print, "Exercise 7.0"
;Exercise 7.0
.reset_session
names = ["Capella", "Sirius", "Rigel", "Altair", "Castor", "Procyon"]
magnitudes = [0.0, -1.5, 0.1, 0.8, 1.6, 0.3]
magOrder = sort( magnitudes )
print, magOrder
;           1           0           2           5           3           4
print, names[ magOrder ]
;Sirius Capella Rigel Procyon Altair Castor
brightnessOrder = reverse( magOrder )
print, brightnessOrder
;           4           3           5           2           0           1
print, names[  sort(names)  ]
;Altair Capella Castor Procyon Rigel Sirius
print, magnitudes[  sort(names)  ]
;     0.800000      0.00000      1.60000     0.300000     0.100000     -1.50000
alphaNames = names[  sort(names)  ]
alphaMags = magnitudes[  sort(names)  ]
FOR ii = 0, n_elements(names)-1 DO print, alphaNames[ii], alphaMags[ii]
;Altair     0.800000
;Capella      0.00000
;Castor      1.60000
;Procyon     0.300000
;Rigel     0.100000
;Sirius     -1.50000
mag07 = where( magnitudes GT 0.7 )
print, mag07
;           3           4
print, "Dim stars are; ", names[ mag07 ]
;Dim stars are;  Altair Castor
brightestMag = min( magnitudes, brightestIndex )
print, "Brightest star is ", names[ brightestIndex ]
;Brightest star is Sirius
print, "Exercise 7.1"
;Exercise 7.1
print, (4 LT 9)
;   1
print, (4 GT 9)
;   0
print, ~(4 GT 9)
;   1
print, ~(4 LT 9)
;   0
print, (4 GE 9)
;   0
x = -10 + 20*findgen(21)/20
print, x
;     -10.0000     -9.00000     -8.00000     -7.00000     -6.00000     -5.00000     -4.00000     -3.00000
;     -2.00000     -1.00000      0.00000      1.00000      2.00000      3.00000      4.00000      5.00000
;      6.00000      7.00000      8.00000      9.00000      10.0000
x = -10 + 10*findgen(11)/10
print, x
;     -10.0000     -9.00000     -8.00000     -7.00000     -6.00000     -5.00000     -4.00000     -3.00000
;     -2.00000     -1.00000      0.00000
x = -10 + 20*findgen(11)/10
print, x
;     -10.0000     -8.00000     -6.00000     -4.00000     -2.00000      0.00000      2.00000      4.00000
;      6.00000      8.00000      10.0000
print, x LT 0
;   1   1   1   1   1   0   0   0   0   0   0
print, x EQ 0
;   0   0   0   0   0   1   0   0   0   0   0
print, x GT 0
;   0   0   0   0   0   0   1   1   1   1   1
print, (-5 LT x) AND (x LT 4)
;   0   0   0   1   1   1   1   0   0   0   0
print, (x GT -5) AND (x LT 4)
;   0   0   0   1   1   1   1   0   0   0   0
print, ~( 
; % Syntax error.
print, ~( (x GT -5) AND (x LT 4) )
;   1   1   1   0   0   0   0   1   1   1   1
indices = where( ~( (x GT -5) AND (x LT 4) ), count )
print, count
;           7
print, indices
;           0           1           2           7           8           9          10
print, x[indices]
;     -10.0000     -8.00000     -6.00000      4.00000      6.00000      8.00000      10.0000
indices = where( ~(x GT -5) OR ~(x LT 4), count )
print, count
;           7
print, indices
;           0           1           2           7           8           9          10
print, x[indices]
;     -10.0000     -8.00000     -6.00000      4.00000      6.00000      8.00000      10.0000
indices = where( (x LE -5) OR (x GE 4), count )
print, count
;           7
print, indices
;           0           1           2           7           8           9          10
print, x[indices]
;     -10.0000     -8.00000     -6.00000      4.00000      6.00000      8.00000      10.0000
x = [ 0., 1.1, 2.2, 3.3]
y = [2.2, 2.2, 3.3, 3.3]
print x EQ y
; % Syntax error.
print, x EQ y
;   0   0   0   1
y = [2.2, 2.2]
print, x EQ y
;   0   0
y = [2.2]
print, x EQ y
;   0
indices = where( (x EQ y), count )
print, count
;           0
print, indices
;          -1
print, x[indices]
;      3.30000
print, (x EQ y[0])
;   0   0   1   0
indices = where( (x EQ y[0]), count )
print, count
;           1
print, indices
;           2
print, x[indices]
;      2.20000
print, "Exercise 7.2"
;Exercise 7.2
x = -10. + 20. * findgen(100)/99
y = sin(x) / x
plot, x, y
print, min(y), max(y)
;    -0.216942     0.998300
indices = where(y GT 0.9, count)
print, count
;           8
print, indices
;          46          47          48          49          50          51          52          53
print, y[indices]
;     0.918734     0.958026     0.984766     0.998300     0.998300     0.984766     0.958026     0.918734
print, x[indices]
;    -0.707070    -0.505051    -0.303030    -0.101010     0.101010     0.303030     0.505051     0.707070
plot, x[indices], y[indices]
plot, x[indices], y[indices], /ynozero
indices = where( ( 3. LT x ) AND ( x LT 7. ), count )
print, count
;          20
plot, x, y
plot, x[indices], y[indices]
print, 3 > 5
;       5
print, 5 > 3
;       5
print, y>0
;      0.00000      0.00000      0.00000   0.00328233    0.0251047    0.0468638    0.0676733    0.0866450
;     0.102922     0.115713     0.124326     0.128198     0.126924     0.120276     0.108223    0.0909427
;    0.0688210    0.0424527    0.0126286      0.00000      0.00000      0.00000      0.00000      0.00000
;      0.00000      0.00000      0.00000      0.00000      0.00000      0.00000      0.00000      0.00000
;      0.00000      0.00000   0.00328270    0.0719315     0.147608     0.228909     0.314229     0.401802
;     0.489748     0.576125     0.658978     0.736398     0.806573     0.867840     0.918734     0.958026
;     0.984766     0.998300     0.998300     0.984766     0.958026     0.918734     0.867840     0.806573
;     0.736398     0.658978     0.576125     0.489748     0.401802     0.314229     0.228909     0.147608
;    0.0719316   0.00328270      0.00000      0.00000      0.00000      0.00000      0.00000      0.00000
;      0.00000      0.00000      0.00000      0.00000      0.00000      0.00000      0.00000      0.00000
;      0.00000    0.0126286    0.0424527    0.0688211    0.0909426     0.108223     0.120276     0.126924
;     0.128198     0.124326     0.115713     0.102922    0.0866449    0.0676734    0.0468638    0.0251047
;   0.00328223      0.00000      0.00000      0.00000
plot, x, y
plot, x, y>0
print, "Exercise 7.3"
;Exercise 7.3
x = -5. + 10.*findgen(101)/100
y = (x-2)^2 + 3
imin = where( y EQ min(y), count )
xVert = x[imin]
yVert = y[imin]
print, xVert, yVert
;      2.00000
;      3.00000
help, xVert, yVert
ymin = min(y, imin)
xVert = x[imin]
yVert = y[imin]
print, xVert, yVert
;      2.00000      3.00000
help, xVert, yVert
