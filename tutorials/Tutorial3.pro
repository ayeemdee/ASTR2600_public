; IDL Version 8.1 (linux x86_64 m64)
; Journal File for aldo2486@cosmos.colorado.edu
; Working directory: /home/astr/ugrad/aldo2486/ASTR2600
; Date: Mon Jan 28 15:42:56 2013
 
R = "Rigel      magB=  0.9 magV= 
R = "Rigel      magB=  0.9 magV= 0.12"
S = "Sirius     magB=-1.46 magV=-1.46"
V = "Vega       magB= 0.03 magV= 0.03"
B = "Betelgeuse magB= 2.27 magV= 0.42"
magBstart = strpos(R,"magB=")
print, magBstart
;          11
magBlen = strlen("magB=")
magBend = magBstart + magBlen
magVstart = strpos(R,"magV=")
magVlen = strlen("magV=")
magVend = magVstart + magVlen
print, magVstart
;          22
magB = strmid(R, magBend, magBlen)
magV = strmid(R, magVend, magVlen)
print, "Rigel magB is ",magB," and magV is ",magV
;Rigel magB is   0.9 and magV is  0.12
print, strlen(B)
;          32
print, strlen(V)
;          32
print, strlen(S)
;          32
print, strlen(R)
;          32
magB = [strmid(R, magBend, magBlen),strmid(B, magBend, magBlen),strmid(S, magBend, magBlen),strmid(V, magBend, magBlen)]
magV = [strmid(R, magVend, magVlen), strmid(B, magVend, magVlen), strmid(S, magVend, magVlen), strmid(V, magVend, magVlen)]
print, magB
;  0.9  2.27 -1.46  0.03
print, magV
; 0.12  0.42 -1.46  0.03
help, magB, magV
magB = float(magB)
magV = float(magV)
plot, magB-magV, magV
plot, magB-magV, magV, psym=1
plot, magB-magV, magV, psym=2
oplot, magB-magV, magV, psym=2, color='0000FF'x, symsize=10
pleiadesB = [2.806, 3.54, 3.612, 3.812, 4.113, 4.199, 4.967, 5.406, 5.585, 5.727, 6.124, 6.30, 6.415, 6.586, 6.87, 6.85]
pleiadesV = [2.873, 3.62, 3.705, 3.871, 4.164, 4.291, 5.048, 5.448, 5.651, 5.761, 6.172, 6.28, 6.430, 6.606, 6.81, 6.83]
plot, pleiadesB-pleiadesV, pleiadesV
plot, pleiadesB-pleiadesV, pleiadesV, psym=1
plot, pleiadesB-pleiadesV, pleiadesV, psym=2
oplot, pleiadesB-pleiadesV, pleiadesV, psym=2, color='0000FF'x, symsize=3
plot, pleiadesB-pleiadesV, pleiadesV, psym=2, xtitle='B-V', ytitle='V magnitude', title='Pleiades Color-Magnitude Diagram'
oplot, pleiadesB-pleiadesV, pleiadesV, psym=2, color='0000FF'x, symsize=3
plot, pleiadesB-pleiadesV, pleiadesV, psym=2, xtitle='B-V', ytitle='V magnitude', title='Pleiades Color-Magnitude Diagram', yrange=[8,2]
oplot, pleiadesB-pleiadesV, pleiadesV, psym=2, color='0000FF'x, symsize=3
