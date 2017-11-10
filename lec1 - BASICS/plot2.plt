#!/bin/gnuplot
#########################################
# some colors, styles, paterns and etc. 
# ... and key settings
#########################################

set yr[0:10]
set xr[-5:10]

#########################################
# key settings
#########################################
# no autotitle
set key noautotitle
# key's width, sample length, spacing, border
set key width 2 samplen 2 spacing 1 box
# key's position, opaque add white 'solid'
# background color, title
set key top center opaque title 'key'
# note: setting options can be mixed and
# written in single line or in into
# separeted lines
#########################################

# very useful command to quick referee
# of all color setting, styles, ...
test

pause 3

#########################################
# note: some of the option can be
# replace with shortcuts e.g.:
# `plot` is equilavent to simple `p`
#########################################
# functions can be separate with ','
# `\` allows to line break
# `ls` = linestyle 
# `lc` = linecolor
# `dt` = dashtype
# `lw` = linewitdth
# `pt` = pointtype
# `ps` = pointsize
# all these setting can be checked in 
# `test` command
p sqrt(x) t 'sqrt(x)' with lines       linestyle 1 linecolor 1 dt 1 lw 1,\
  x                   with linespoints ls 2 lc        2 dashtype 2 linewidth 1 pt 7,\
  x**2 t 'x^2'        with      points ls 3 lc        0 dt 3 pointsize 0.5
#########################################

pause 3

# very useful command in animation,
# it refreshs script to the beggining
reread
