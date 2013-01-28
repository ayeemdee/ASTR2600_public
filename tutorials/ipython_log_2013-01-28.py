#!/usr/bin/env python
# ipython_log_2013-01-28.py
# IPython automatic logging file
# # Started Logging At: 2013-01-28 16:07:12
########################################################
R = "Rigel      magB=  0.9 magV= 0.12"
S = "Sirius     magB=-1.46 magV=-1.46"
V = "Vega       magB= 0.03 magV= 0.03"
B = "Betelgeuse magB= 2.27 magV= 0.42"
magBstart = B.find("magB=")
magBlen = len("magB=")
magBend = magBstart + magBlen
magVstart = B.find("magV=")
magVlen = len("magV=")
magVend = magVstart + magVlen
magB = float( B[magBend:magVstart] )
magV = float( B[magVend:] )
Bmags = [float(x[magBend:magVstart]) for x in [R,S,V,B]]
Vmags = [float(x[magVend:]) for x in [R,S,V,B]]
plot(Bmags,Vmags,'o')
#[Out]# [<matplotlib.lines.Line2D at 0x1e19b690>]
exit()
