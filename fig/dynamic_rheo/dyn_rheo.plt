set term pngcairo font "Arial,14" 
#set term gif animate optimize delay 2 size 640, 640
#set colorsequence classic 
# 
set output "dyn_rheo.png"
#
set noborder
unset tics
set size square
set margins 0.1, 0.1, 0.1, 0.1
#
xmin = -1
xmax = 9
ymin = -8
ymax = 8
set xrange[xmin:xmax]
set yrange[ymin:ymax]

set parametric
#set samples 200
div = 50
set trange[0:div]

lmd = 5
sigma = 6
omega = 4.0*pi/div
delta = pi/3.
x_length = 7

set arrow from 0, 0 to x_length + 1, 0 lt 8 lw 2
set arrow from 0, -1*(sigma+1) to 0, sigma+1  lt 8 lw 2

set label 1 at first -0.5, sigma "σ_0"
set arrow from 0, sigma to x_length, sigma lt 8 dt "-" lw 1 nohead

plot x_length*t/div, lmd*sin(omega*t) lw 2 lt 1 ti 'strain', \
x_length*t/div, sigma*sin(omega*t + delta) lw 2 lt 2 ti "stress", \
#x_length*t/div, sigma*cos(delta)*sin(omega*t) lw 2 ti "elastic", \
#x_length*t/div, sigma*sin(delta)*cos(omega*t) lw 2 ti "viscous", \

set noarrow
set out
set terminal wxt enhanced

set term pngcairo font "Arial,14" 
#set term gif animate optimize delay 2 size 640, 640
#set colorsequence classic 
# 
set output "dyn_rheo_ela.png"
#
set noborder
unset tics
set size square
set margins 0.1, 0.1, 0.1, 0.1
#
xmin = -1
xmax = 9
ymin = -8
ymax = 8
set xrange[xmin:xmax]
set yrange[ymin:ymax]

set parametric
#set samples 200
div = 50
set trange[0:div]

lmd = 5
sigma = 6
omega = 4.0*pi/div
delta = pi/3.
x_length = 7

set arrow from 0, 0 to x_length + 1, 0 lt 8 lw 2
set arrow from 0, -1*(sigma+1) to 0, sigma+1  lt 8 lw 2

set label 1 at first -1.8, sigma*cos(delta) "σ_0*cos(δ)"
set arrow from 0, sigma*cos(delta) to x_length, sigma*cos(delta) lt 8 dt "-" lw 1 nohead

plot x_length*t/div, lmd*sin(omega*t) lw 2 lt 1 ti 'strain', \
x_length*t/div, sigma*sin(omega*t + delta) lw 2 lt 2 dt (10,10) ti "stress", \
x_length*t/div, sigma*cos(delta)*sin(omega*t) lw 2 lt 3 ti "elastic", \

#x_length*t/div, sigma*sin(delta)*cos(omega*t) lw 2 ti "viscous", \

set noarrow
set out
set terminal wxt enhanced

set term pngcairo font "Arial,14" 
#set term gif animate optimize delay 2 size 640, 640
#set colorsequence classic 
# 
set output "dyn_rheo_visco.png"
#
set noborder
unset tics
set size square
set margins 0.1, 0.1, 0.1, 0.1
#
xmin = -1
xmax = 9
ymin = -8
ymax = 8
set xrange[xmin:xmax]
set yrange[ymin:ymax]

set parametric
#set samples 200
div = 50
set trange[0:div]

lmd = 5
sigma = 6
omega = 4.0*pi/div
delta = pi/3.
x_length = 7

set arrow from 0, 0 to x_length + 1, 0 lt 8 lw 2
set arrow from 0, -1*(sigma+1) to 0, sigma+1  lt 8 lw 2

set label 1 at first -1.8, sigma*sin(delta) "σ_0*sin(δ)"
set arrow from 0, sigma*sin(delta) to x_length, sigma*sin(delta) lt 8 dt "-" lw 1 nohead

plot x_length*t/div, lmd*sin(omega*t) lw 2 lt 1 ti 'strain', \
x_length*t/div, sigma*sin(omega*t + delta) lw 2 lt 2 dt (10, 10) ti "stress", \
x_length*t/div, sigma*sin(delta)*cos(omega*t) lw 2 lt 4 ti "viscous", \
#x_length*t/div, sigma*cos(delta)*sin(omega*t) lw 2 ti "elastic", \

set noarrow
set out
set terminal wxt enhanced

set term pngcairo font "Arial,14" 
set key left
# 
set output "dyn_rheo_lissajou.png"
#
set noborder
unset tics
set size square
set margins 0.1, 0.1, 0.1, 0.1
#
xmin = -8
xmax = 8
ymin = -8
ymax = 8
set xrange[xmin:xmax]
set yrange[ymin:ymax]

set parametric
div = 50
set trange[0:div]

lmd = 5
sigma = 6
omega = 4.0*pi/div
delta0 = 0
delta1 = pi/6.
delta2 = pi/3.
delta3 = pi/2.
x_length = 7

set arrow from -1*lmd -1, 0 to lmd + 1, 0 lt 8 lw 2
set arrow from 0, -1*(sigma+1) to 0, sigma+1  lt 8 lw 2

set label 1 at first -0.5, sigma "σ_0"
set label 2 at first lmd, -0.5 "γ"
set arrow from 0, sigma to lmd, sigma lt 8 dt "-" lw 1 nohead
set arrow from lmd, 0 to lmd, sigma lt 8 dt "-" lw 1 nohead

plot lmd*sin(omega*t), sigma*sin(omega*t + delta0) lw 2 lt 1 ti 'δ=0', \
lmd*sin(omega*t), sigma*sin(omega*t + delta1) lw 2 lt 2 ti 'δ=π/6', \
lmd*sin(omega*t), sigma*sin(omega*t + delta2) lw 2 lt 3 ti 'δ=π/3', \
lmd*sin(omega*t), sigma*sin(omega*t + delta3) lw 2 lt 4 ti 'δ=π/2'

set noarrow
set out
set terminal wxt enhanced