#!/usr/bin/env python
# ipython_log_2013-02-12.py
# IPython automatic logging file
# # Started Logging At: 2013-02-12 14:47:24
########################################################
with open('/home/shared/astr2600/data/spectrum.txt','r') as f: print len(f.readlines())
data = np.loadtxt('/home/shared/astr2600/data/spectrum.txt')
print data.shape
wavelength,flux = data.transpose()
plot(data)
#[Out]# [<matplotlib.lines.Line2D at 0x1e67d7d0>,
#[Out]#  <matplotlib.lines.Line2D at 0x1e67d950>]
clf()
plot(wavelength.flux)
plot(wavelength,flux)
#[Out]# [<matplotlib.lines.Line2D at 0x1ea47610>]
zoomwidth = 10
center = 1330
lowerbound = center - zoomwidth/2
upperbound = center + zoomwidth/2
zoomregion = (wavelength < upperbound) & (wavelength > lowerbound)
fill_between(wavelength,zoomregion*0,zoomregion,alpha=0.5,color='yellow')
#[Out]# <matplotlib.collections.PolyCollection at 0x1eb8dd90>
figure()
#[Out]# <matplotlib.figure.Figure at 0x1eb8db50>
plot(wavelength[zoomregion],flux[zoomregion])
#[Out]# [<matplotlib.lines.Line2D at 0x1ebbe550>]
print np.diff(wavelength)
dl = wavelength[1]-wavelength[0]
continum = np.medium(flux[zoomregion])
continuum = np.medium(flux[zoomregion])
continuum = np.median(flux[zoomregion])
absorbed = np.sum( (continuum - flux[zoomregion]) * dl )
EQW = absorbed / continuum
fill_between([center-EQW/2,center+EQW/2], [0,0], [continuum,continuum], color='orange', alpha=0.5)
#[Out]# <matplotlib.collections.PolyCollection at 0x1f0230d0>
figure(2)
#[Out]# <matplotlib.figure.Figure at 0x1eb8db50>
savefig("zoomed_eqw.png")
figure(1)
#[Out]# <matplotlib.figure.Figure at 0x1e1d6650>
savefig("full_spectrum.png")
exit()
