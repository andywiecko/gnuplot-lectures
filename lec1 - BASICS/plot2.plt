#!/bin/gnuplot
# some colors, styles, paterns and etc. setings
# ... and key settings

set key noautotitle
set key width 2 samplen 2 spacing 1 box
set key top center

# functions can be separate with ',';
plot sqrt(x) t 'sqrt(x)',x,x**2 t 'x^2'

