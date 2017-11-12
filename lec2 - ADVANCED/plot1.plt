#!/bin/gnuplot
#########################################
# some multiplots
#########################################

reset
set key opaque
set grid

set xr[-2*pi:2*pi]
set yr[-1.1:1.1]

# ploting multiple plots
# option layout determine number plots
# in rows/columns
# option columns first set filling
# first by columns (try also rowsfirst)
# margins: left right top bottom
# spacing set empty space between plots
set multiplot layout 2,2\
    columnsfirst\
	 margins 0.1,0.9,0.1,0.9 spacing 0.1,0.2

p sin(x)    t 'sin(x)' 
p cos(x)    t 'cos(x)' 
p tan(x)    t 'tan(x)' 
p 1/tan(x)  t 'ctan(x)'
unset multiplot

pause 3

# one can also multiplot with 
# manual plot placement
set multiplot

set object 1 rectangle from 0,0 to 1,1\
	lc 0 lw 1.5 dt 2
set arrow 1 from 2.,-0.3 to 0.5,0.25 lw 1.5

# seting origin of the plot
set origin 0,0
p sin(x)

unset arrow 1

# adding rectangle to disable transparancy
# of subplot
set object 1 rectangle from graph 0,0 to graph 1,1\
 fc rgb "#04AA40" fillstyle solid 0.0 noborder
set grid
set tics front 
set origin 0.64,0.09
set size 0.35,0.35
set xr[0:1]
set yr[0:1]
p sin(x)

unset multiplot

pause 3
reread
