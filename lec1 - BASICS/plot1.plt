#!/bin/gnuplot

# basics commands

# add axis labels
set xlabel 'x'
set ylabel 'f(x)'

# add grid
set grid

# set x/y axis ranges
set xr[0:1]
set yr[1:5]

# set variables
a = 1.2
b = 2.1
c = 1.3

# plot function
plot a*x**2+b*x+c title 'f(x) = a*x**2+b*x+c'

# add time t=oo pause
pause -1
