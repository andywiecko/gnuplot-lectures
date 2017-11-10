#!/bin/gnuplot
#########################################
# 3d plots
#########################################

# 3d grid samples
set isosamples 50
set hidden3d
# setting view
set view 60,35

# from previous script we knew
splot x**2*sin(y) palette

pause 3

# pm3d option 
splot x**2*sin(y) w pm3d

pause 3

# setting view map to 'heat maps'
set view map
splot x**2*sin(y) w pm3d

pause 3

# setting palette color range
set cbr[-1:1]
splot x**2*sin(y) w pm3d

pause 3

# inverse palette
# for details about other palettes or how
# to define one: `help palette`
set palette negative
splot x**2*sin(y) w pm3d

reread
