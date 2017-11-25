#!/bin/gnuplot
#########################################
# statistic
#########################################

filename = 'data.txt'

# creating data file
# with 1000 samples
set samples 1000
# saving it into file:
set table filename
p 0.0+rand(0)
unset table

reset

set key out 

# statistical analisys of file
# seting prefix as 'DATA'
# here u 0 corespond to row index
stats filename u 0:2 name 'DATA'

MEAN = DATA_mean_y
STD = DATA_stddev_y
MIN = DATA_min_y
MAX = DATA_max_y
MINx = DATA_pos_min_y
MAXx = DATA_pos_max_y

set arrow 1 from  MINx,-0.2 to MINx,MIN
set arrow 2 from  MAXx,1.2 to MAXx,MAX
set label 1 'MIN' at MINx,-0.25 center
set label 2 'MAX' at MAXx,1.25 center

p filename u 2 t 'data',\
  MEAN t 'mean' lc 3 lw 2,\
  MEAN+3*STD t 'mean+3*sigma' dt 1 lc 2,\
  MEAN-3*STD t 'mean-3*sigma' dt 1 lc 2,\
  MIN t 'minimum value' dt 2 lc 0,\
  MAX t 'maximum value' dt 2 lc 0


pause -1
