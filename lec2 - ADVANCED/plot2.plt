#!/bin/gnuplot
#########################################
# manipulation data from file
#########################################

reset

set xr[0:11]
set yr[5:30]
set key b r

# in this example we will be working
# with data which are stored in 
# file 'log'
filename = 'log'

p filename u 1:2

pause 3

# define function
f(x) = a*x + b


# fitting in quiet mode (without details
# about fitting iterations, covariance
# matrix etc
set fit quiet
# fitting function f(x)
fit f(x) filename via a,b

set label 1 sprintf('a = %g',a) at graph 0.1,0.9
set label 2 sprintf('b = %g',b) at graph 0.1,0.85

p filename u 1:2,f(x) t 'f(x) = ax+b'

pause 3

# plotting with XY errorbars (which are 
# stored in columns 3,4

p filename u 1:2:3:4 w xyerrorbars,f(x) t 'f(x) = ax+b'

pause 3

unset label 1
unset label 2

g(x) = 1./(c*x + d)
fit g(x) filename u 1:(1./$2) via c,d
set yr[1./5.:1./30.]
# manipulating on data in gnuplot
p filename u 1:(1./$2),g(x)

pause 3



reread
