#!/bin/gnuplot
#########################################
# paramteric plot 2d, 3d
#########################################

eps = 0.25
set yr[-2-eps:2+eps]
set xr[-3-eps:3+eps]

# setting how many points plot contains
set samples 1000

# setting same scale on OX,OY
set size ratio -1

#########################################
# ploting parametric 2d function variable t
# as an example: Lissajous curve
set tr[0:4*pi]
set parametric
fx(t) = 3*sin(2*t)
fy(t) = 2*cos(3*t)
p fx(t),fy(t)
#########################################

pause 3

#########################################
# ploting parametric 3d function: variables u,v
set ur[0:40*pi]
set vr[0:40*pi]
set xr[-1-eps:1+eps]
set yr[-1-eps:1+eps]
set zr[0:50]
set size ratio 1 
fx(u,v) = 1/v*cos(v)
fy(u,v) = 1/v*sin(v)
fz(u,v) = v
sp fx(u,v),fy(u,v),fz(u,v) lw 4
#########################################

pause 3
reread
