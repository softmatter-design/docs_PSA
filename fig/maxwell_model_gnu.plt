set term pngcairo font "Arial,18"
set output "maxwell_dynamic.png"
set colorsequence classic 
# 
#set key left
set size ratio 2
#set margins 0.1, 0.1, 0.1, 0.1
#
xmin = 0.01
xmax = 100
ymin = 0.0
ymax = 1
set xrange[xmin:xmax]
set yrange[ymin:ymax]
set ytics 0.5


#set xlabel "ω"
#set ylabel "G', G''"

set label 1 at graph 0.8, 0.8 "G=1"
set label 2 at graph 0.8, 0.7 "τ=1"
set label 3 at first 0.4, 0.55 "1/τ"

set arrow from 1, 0 to 1, 0.5 nohead lt 7 dt "-"



tau = 1
G = 1

plot G*x**2*tau**2/(1+x**2*tau**2) ti "G'" , \
G*x*tau/(1+x**2*tau**2) ti 'G"'

