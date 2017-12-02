#!/bin/gnuplot
#########################################
# macros, for, if 
#########################################

# macros can be very useful
set macros
PLOT = "plot a*x notitle lc 2 lw 2 dt 2"

set xr[-1:1]
set yr[-1:1]
set grid

set multiplot layout 3,3
a = 1; @PLOT; a = 2; @PLOT;a = 3; @PLOT
a =-1; @PLOT; a =-2; @PLOT;a =-3; @PLOT
a =.0; @PLOT; a =.3; @PLOT;a =.6; @PLOT
unset multiplot

pause 3


# there are two way to make if statement:
# 1. ( condition ? if true : if false )
# 2. if (condition) { ... } else { ... }
PLOT = "\
if (a<0)\
{\
	set grid lw 3 lc 3;\
}\
else\
{\
	set grid lw 1;\
}\
plot a*x notitle lc (a<1 ? 1 : 2) lw 2 dt 2"


set multiplot layout 3,3
a = 1; @PLOT; a = 2; @PLOT;a = 3; @PLOT
a =-1; @PLOT; a =-2; @PLOT;a =-3; @PLOT
a =.0; @PLOT; a =.3; @PLOT;a =.6; @PLOT
unset multiplot

pause 3

set yr[-1.3:1.3]
set xr[-10:10]
set samples 1000
v1 = 0.1
v2 = 0.2
A = 8.
s = 2.
f(x,tt) = exp(-(x-v1*tt)**2/s)*sin(A*(x-v2*tt))
do for [t=-500:500]\
{
	tt = t/10.
	p f(x,tt)
	pause 0.01
}

pause 0.5

reread
