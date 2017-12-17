#!/bin/gnuplot
#########################################
# bar charts
#########################################

set yr[-0.1:10]
set boxwidth 0.5
set style fill solid

p 'log2' u 2:xtic(1) w histogram, '' u 3 w hist

pause 3

# pie chart are not suported right now 
# in gnuplot, here is some implementation:
# https://stackoverflow.com/questions/31896718/generation-of-pie-chart-using-gnuplot

set macros
DATA_COL = "(column(3))"
LABEL_COL = "(column(1))"

stats 'log2' u @DATA_COL noout 

ang(x)=x*360.0/STATS_sum      
perc(x)=x*100.0/STATS_sum    
set style fill solid 1  
Ai = 0.0; Bi = 0.0;             # init angle
mid = 0.0;                      # mid angle
i = 0; j = 0;                   # color
yi  = 1.0; yi2 = 1.0;           # label position

unset tics
unset border
unset key
set xrange [-1.75:1.75]
set yrange [-1.25:1.25]

plot 'log2' u (0):(0):(1):(Ai):(Ai=Ai+ang(@DATA_COL)):(i=i+1) with circle linecolor var,\
     'log2' u (1.5):(yi=yi-0.5/STATS_records):(@LABEL_COL) w labels,\
     'log2' u (1.):(yi2=yi2-0.5/STATS_records):(j=j+1) w p pt 5 ps 2 linecolor var,\
     'log2' u (mid=Bi+ang(@DATA_COL)*pi/360.0, Bi=2.0*mid-Bi, 0.5*cos(mid)):(0.5*sin(mid)):(sprintf('%.0f (%.1f\%)', $2, perc(@DATA_COL))) w labels


pause 3 
reset

reread
