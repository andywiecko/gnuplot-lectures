#!/bin/gnuplot

#########################################
# borders, tics and labels
#########################################

# setting log scale on axis y
set log y

# set border only XY, to see other setting
# go to gnuplot interpeter and type:
# `help border`
set border 3 lw 2.5

# setting tics only where border is
set xtics nomirror
set ytics nomirror

# setting nice log format of ytics
set format y '10^{%T}'

# setting xtics: start,step,end
set xtics -4,2,6

# adding some tics
set xtics add ('pi' pi,'-pi' -pi)

# positioning depending on graph coordinate
set key at graph 0.3,0.9
# positioning on actual (x,y) in plot
set label 1 "plotin' in gnuplot" at -9,4*10**3


set grid ls 1 lc 0 lw 0.5
p exp(x)+1 lw 2

pause -1
