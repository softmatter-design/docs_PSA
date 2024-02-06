set encoding utf8 
set minussign

set term gif animate optimize delay 10 size 720, 480
#set colorsequence classic 
# 
set output "dyn_rheo_visco.gif"
#
set noborder
unset tics
set margins 0.1, 0.1, 0.1, 0.1
#
xmin = -12
xmax = 12
ymin = -8
ymax = 8
set xrange[xmin:xmax]
set yrange[ymin:ymax]

set parametric
set samples 50
div = 50
set trange[0:div]

lis_shift = -7.

lmd = 4.
sigma = 6.

x_len = 10.
x_shift = 1.

omega = 2.0*pi/div
delta = pi/2.

# Sin Curves
set arrow from x_shift, 0 to x_len + x_shift, 0 nohead lt 8 lw 2
set arrow from x_shift, -6 to x_shift, 7  lt 8 lw 2
set arrow from x_len + x_shift, -6 to x_len + x_shift, 7  lt 8 lw 2
set arrow from x_shift, lmd to x_shift + x_len/4., lmd nohead lt 8
#set arrow from x_shift + x_len/4.*(pi/2.-delta)/(pi/2), sigma to x_shift + x_len, sigma nohead lt 8
# Lissajous
set arrow from lis_shift, -6 to lis_shift, 7  lt 8 lw 2
set arrow from lis_shift - lmd, 0 to lis_shift + lmd + 2, 0  lt 8 lw 2
#set arrow from lis_shift, sigma to lis_shift + lmd, sigma nohead lt 8
#set arrow from lis_shift + lmd, 0 to lis_shift + lmd, sigma nohead lt 8

# labels
set label 1 center at first lis_shift, -7.5 "Lissajous"  font "Meiryo,24"
set label 2 center at first 6, -7.5 "Input and Output" font "Meiryo,24"
# Lissajous
set label 3 center at first -1, -0.5 "Input"  
set label 4 center at first lis_shift -1, 7 "Output"  
set label 5 center at first lmd + lis_shift, -0.5 "γ_0"
set label 6 center at first lis_shift -0.5, sigma "σ_0"
# sin
set label 7 center at first x_shift - 0.5, lmd "γ_0"
set label 8 center at first x_shift + x_len + 0.5, sigma  "σ_0"

do for [i=0:div]{
plot t*(x_len/div) + x_shift, lmd*sin(omega*t) lw 2 ti 'strain', \
t*(x_len/div) + x_shift, sigma*sin(omega*t + delta) lw 2 ti "stress", \
lmd*sin(omega*t) + lis_shift, sigma*sin(omega*t + delta) lw 2 noti

unset arrow
# points
set label 10 point pt 7 ps 2 at i*(x_len/div) + x_shift, lmd*sin(i*omega)
set label 11 point pt 7 ps 2 at i*(x_len/div) + x_shift, sigma*sin(i*omega + delta)
set label 12 point pt 7 ps 2 at lmd*sin(i*omega) + lis_shift, sigma*sin(i*omega + delta)

# hojyo
set arrow from i*(x_len/div) + x_shift, 0 to i*(x_len/div) + x_shift, sigma*sin(i*omega + delta) nohead lt 2
set arrow from i*(x_len/div) + x_shift, 0 to i*(x_len/div) + x_shift, lmd*sin(i*omega) nohead lt 1
set arrow from lmd*sin(i*omega) + lis_shift, sigma*sin(i*omega + delta) to i*(x_len/div) + x_shift, sigma*sin(i*omega + delta) nohead lt 2

# Sin Curves
set arrow from x_shift, 0 to x_len + x_shift, 0 nohead lt 8 lw 2
set arrow from x_shift, -6 to x_shift, 7  lt 8 lw 2
set arrow from x_len + x_shift, -6 to x_len + x_shift, 7  lt 8 lw 2
set arrow from x_shift, lmd to x_shift + x_len/4., lmd nohead lt 8
#set arrow from x_shift + x_len/4.*(pi/2.-delta)/(pi/2), sigma to x_shift + x_len, sigma nohead lt 8
# Lissajous
set arrow from lis_shift, -6 to lis_shift, 7  lt 8 lw 2
set arrow from lis_shift - lmd, 0 to lis_shift + lmd + 2, 0  lt 8 lw 2
#set arrow from lis_shift, sigma to lis_shift + lmd, sigma nohead lt 8
#set arrow from lis_shift + lmd, 0 to lis_shift + lmd, sigma nohead lt 8
}

set out
set terminal wxt enhanced


set term gif animate optimize delay 10 size 720, 480
#set colorsequence classic 
# 
set output "dyn_rheo_visco2.gif"
#
set noborder
unset tics
set margins 0.1, 0.1, 0.1, 0.1
#
xmin = -12
xmax = 12
ymin = -8
ymax = 8
set xrange[xmin:xmax]
set yrange[ymin:ymax]

set parametric
set samples 50
div = 50
set trange[0:div]

lis_shift = -7.

lmd = 4.
sigma = 6.

x_len = 10.
x_shift = 1.

omega = 2.0*pi/div
delta = pi/2.

# Sin Curves
set arrow from x_shift, 0 to x_len + x_shift, 0 nohead lt 8 lw 2
set arrow from x_shift, -6 to x_shift, 7  lt 8 lw 2
set arrow from x_len + x_shift, -6 to x_len + x_shift, 7  lt 8 lw 2
#set arrow from x_shift, lmd to x_shift + x_len/4., lmd nohead lt 8
#set arrow from x_shift + x_len/4.*(pi/2.-delta)/(pi/2), sigma to x_shift + x_len, sigma nohead lt 8
# Lissajous
set arrow from lis_shift, -6 to lis_shift, 7  lt 8 lw 2
set arrow from lis_shift - lmd, 0 to lis_shift + lmd + 2, 0  lt 8 lw 2
set arrow from lis_shift, sigma to lis_shift + lmd, sigma nohead lt 8
set arrow from lis_shift + lmd, 0 to lis_shift + lmd, sigma nohead lt 8

# labels
set label 1 center at first lis_shift, -7.5 "Lissajous"  font "Meiryo,24"
set label 2 center at first 6, -7.5 "Input and Output" font "Meiryo,24"
# Lissajous
set label 3 center at first -1, -0.5 "derivative"  
set label 4 center at first lis_shift -1, 7 "Output"  
set label 5 center at first lmd + lis_shift, -0.5 "γ_0"
set label 6 center at first lis_shift -0.5, sigma "σ_0"
# sin
set label 7 center at first x_shift - 0.5, lmd "γ_0"
set label 8 center at first x_shift + x_len + 0.5, sigma  "σ_0"

do for [i=0:div]{
plot t*(x_len/div) + x_shift, lmd*sin(omega*t) lt 1 dt "- " ti 'strain', \
t*(x_len/div) + x_shift, sigma*sin(omega*t + delta) lt 2 lw 3 ti "stress", \
t*(x_len/div) + x_shift, lmd*cos(omega*t) lt 4 lw 3 ti 'derivative', \
lmd*cos(omega*t) + lis_shift, sigma*sin(omega*t + delta) lt 3 lw 3 dt (10, 10) noti
#lmd*sin(omega*t) + lis_shift, sigma*sin(omega*t + delta) lt 3 dt (10, 10) noti, \

unset arrow
# points
set label 10 point pt 7 ps 2 at i*(x_len/div) + x_shift, lmd*cos(i*omega)
set label 11 point pt 7 ps 2 at i*(x_len/div) + x_shift, sigma*sin(i*omega + delta)
set label 12 point pt 7 ps 2 at lmd*cos(i*omega) + lis_shift, sigma*sin(i*omega + delta)

# hojyo
set arrow from i*(x_len/div) + x_shift, 0 to i*(x_len/div) + x_shift, sigma*sin(i*omega + delta) nohead lt 2
set arrow from i*(x_len/div) + x_shift, 0 to i*(x_len/div) + x_shift, lmd*cos(i*omega) nohead lt 4
set arrow from lmd*cos(i*omega) + lis_shift, sigma*sin(i*omega + delta) to i*(x_len/div) + x_shift, sigma*sin(i*omega + delta) nohead lt 2

# Sin Curves
set arrow from x_shift, 0 to x_len + x_shift, 0 nohead lt 8 lw 2
set arrow from x_shift, -6 to x_shift, 7  lt 8 lw 2
set arrow from x_len + x_shift, -6 to x_len + x_shift, 7  lt 8 lw 2
#set arrow from x_shift, lmd to x_shift + x_len/4., lmd nohead lt 8
#set arrow from x_shift + x_len/4.*(pi/2.-delta)/(pi/2), sigma to x_shift + x_len, sigma nohead lt 8
# Lissajous
set arrow from lis_shift, -6 to lis_shift, 7  lt 8 lw 2
set arrow from lis_shift - lmd, 0 to lis_shift + lmd + 2, 0  lt 8 lw 2
set arrow from lis_shift, sigma to lis_shift + lmd, sigma nohead lt 8
set arrow from lis_shift + lmd, 0 to lis_shift + lmd, sigma nohead lt 8
}

set out
set terminal wxt enhanced