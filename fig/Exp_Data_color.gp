set term pngcairo font "Arial,18" 
## 
#set lmargin 2 
#set bmargin 2 
#set rmargin 2 
#set tmargin 2 
## 
## 
set xrange[0:0.2] 
set yrange[0:1] 
set y2range[0:10] 
#
set xtics 0, 0.1
set y2tics 0, 0.2
set y2tics 0, 4
set ytics nomirror
## 
set key below
#set key at graph 1, graph 0.97
## 
set ylabel "Surf. Conc. of Oligomers \n(Measured by XPS)" 
set y2label "Peel Strength (N/ 25mm)\n Measured at 80{/Symbol \260}C" 
set xlabel "Vol. Fract. of Oligomers"
##
set style arrow 1 linetype 1 linewidth 4 lc 1
set style arrow 2 linetype 2 linewidth 4 lc 2
set style arrow 3 linetype 1 linewidth 4 lc 3
set style arrow 4 linetype 2 linewidth 4 lc 1
set style arrow 5 linetype 1 linewidth 4 lc 2
set style arrow 6 linetype 2 linewidth 4 lc 3
##
set arrow from 0.03,0.7 to 0.01,0.7 arrowstyle 1
set arrow from 0.07,0.8 to 0.05,0.8 arrowstyle 2
set arrow from 0.15,0.9 to 0.13,0.9 arrowstyle 3
set arrow from 0.072,0.2 to 0.092,0.2 arrowstyle 4
set arrow from 0.13,0.3 to 0.15,0.3 arrowstyle 5
set arrow from 0.13,0.4 to 0.15,0.4 arrowstyle 6
## 
set output "Exp_Data_color.png" 
plot	"Exp.dat" index 0 usi 1:2 axis x1y1 w linespoints pt 4 ps 2 lt 1 lw 4 lc 1 ti "OL-1", \
	"Exp.dat" index 0 usi 1:3 axis x1y2 w linespoints pt 5 ps 2 lt 2 lw 4 lc 1 ti "OL-1", \
	"Exp.dat" index 1 usi 1:2 axis x1y1 w linespoints pt 6 ps 2 lt 1 lw 4 lc 2 ti "OL-2", \
	"Exp.dat" index 1 usi 1:3 axis x1y2 w linespoints pt 7 ps 2 lt 2 lw 4 lc 2 ti "OL-2", \
	"Exp.dat" index 2 usi 1:2 axis x1y1 w linespoints pt 8 ps 2 lt 1 lw 4 lc 3 ti "OL-3", \
	"Exp.dat" index 2 usi 1:3 axis x1y2 w linespoints pt 9 ps 2 lt 2 lw 4 lc 3 ti "OL-3"

## 
set output 
reset 
set term wxt enhanced 


set term pngcairo font "Arial,18" 
## 
#set lmargin 2 
#set bmargin 2 
#set rmargin 2 
#set tmargin 2 
## 
## 
set xrange[0:0.2] 
set yrange[0:8] 
#set y2range[0:10] 
#
set xtics 0, 0.1
set ytics 0, 2
#set y2tics 0, 4
#set ytics nomirror
## 
set key below
#set key at graph 1, graph 0.97
## 
#set ylabel "Surf. Conc. of Oligomers \n(Measured by XPS)" 
set ylabel "Peel Strength (N/ 25mm)\n Measured at 80{/Symbol \260}C" 
set xlabel "Vol. Fract. of Oligomers"
##
set style arrow 1 linetype 1 linewidth 4 lc 1
set style arrow 2 linetype 2 linewidth 4 lc 2
set style arrow 3 linetype 1 linewidth 4 lc 3
set style arrow 4 linetype 2 linewidth 4 lc 1
set style arrow 5 linetype 1 linewidth 4 lc 2
set style arrow 6 linetype 2 linewidth 4 lc 3
##
#set arrow from 0.03,0.7 to 0.01,0.7 arrowstyle 1
#set arrow from 0.07,0.8 to 0.05,0.8 arrowstyle 2
#set arrow from 0.15,0.9 to 0.13,0.9 arrowstyle 3
#set arrow from 0.072,0.2 to 0.092,0.2 arrowstyle 4
#set arrow from 0.13,0.3 to 0.15,0.3 arrowstyle 5
#set arrow from 0.13,0.4 to 0.15,0.4 arrowstyle 6
## 
set output "Exp_Data_color_2.png" 
plot	"Exp.dat" index 0 usi 1:3 axis x1y2 w linespoints pt 5 ps 2 lt 2 lw 4 lc 1 ti "OL-1", \
	"Exp.dat" index 1 usi 1:3 axis x1y2 w linespoints pt 7 ps 2 lt 2 lw 4 lc 2 ti "OL-2", \
	"Exp.dat" index 2 usi 1:3 axis x1y2 w linespoints pt 9 ps 2 lt 2 lw 4 lc 3 ti "OL-3"

## 
set output 
reset 
set term wxt enhanced 
