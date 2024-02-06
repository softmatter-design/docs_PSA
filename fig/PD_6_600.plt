#!/gnuplot
#
set term pngcairo font "Arial,20" 
#
#set lmargin 2
#set bmargin 2
#set rmargin 2
#set tmargin 2

######
set output "PD_6_600.png"
#
set xlabel "φ_A"
set ylabel "χ"
#
set xtics 0.2
set ytics 0.2
#
set xrange [0:1.]
set yrange [0.0:0.4]
#
#set style arrow 1 nohead linewidth 2 linetype 2 lc 3
#set arrow  1 as  1 from 0.1,0 to 0.1,0.4
#
#set style arrow 2 nohead linewidth 2 linetype 2 lc 4
#set arrow  2 as  2 from 0.2,0 to 0.2,0.4
#
#set style arrow 3 nohead linewidth 2 linetype 2 lc 5
#set arrow  3 as  3 from 0.4,0 to 0.4,0.4
#
#set arrow 4 from 0, 0.148 to 0.4, 0.148
#set arrow 5 from 0, 0.213 to 0.2, 0.213
#set arrow 6 from 0, 0.29 to 0.1, 0.29
##
set label "χ_{crit}= 0.101" at 0.65, 0.08
set label "φ_{crit}= 0.909" at 0.65, 0.04
#set label "Spinodal" at 0.3, 0.3
#set label "Metastable" at 0.2, 0.25
#set label "Uniform" at 0.1, 0.15
#
set key at graph 0.98, graph 0.98 right
#
plot	"result_6_600.txt" usi 2:1 w l lt 1 lw 2 lc 1 ti "Binodal", \
	"result_6_600.txt" usi 3:1 w l lt 1 lw 2 lc 1 noti, \
	"result_6_600.txt" usi 4:1 w l lt 3 lw 2 lc 2 ti "Spinodal", \
	"result_6_600.txt" usi 5:1 w l lt 3 lw 2 lc 2 noti

#
set output
reset
set term wxt enhanced

#######
set term pngcairo font "Arial,14" 
#
#set lmargin 2
#set bmargin 2
#set rmargin 2
#set tmargin 2

######
set output "PD_6_600_2.png"
#
set xlabel "φ_A"
set ylabel "χ"
#
set xtics 0.2
set ytics 0.2
#
set xrange [0:0.6]
set yrange [0.0:0.4]
#
#set style arrow 1 nohead linewidth 2 linetype 2 lc 3
#set arrow  1 as  1 from 0.1,0 to 0.1,0.4
#
#set style arrow 2 nohead linewidth 2 linetype 2 lc 4
#set arrow  2 as  2 from 0.2,0 to 0.2,0.4
#
#set style arrow 3 nohead linewidth 2 linetype 2 lc 5
#set arrow  3 as  3 from 0.4,0 to 0.4,0.4
#
#set arrow 4 from 0, 0.148 to 0.4, 0.148
#set arrow 5 from 0, 0.213 to 0.2, 0.213
#set arrow 6 from 0, 0.29 to 0.1, 0.29
##
#set label "{/=25 {/Symbol c}_{crit}= 0.101}" at 0.7, graph 0.095
#set label "{/=25 {/Symbol f}_{crit}= 0.909}" at 0.7, graph 0.05
set label "{/=25 Spinodal}" at 0.4, 0.3
set label "{/=25 Metastable}" at 0.14, 0.27
set label "{/=25 Uniform}" at 0.1, 0.15
#
set key at graph 0.98, graph 0.2 right
#
plot	"result_6_600.txt" usi 2:1 w l lt 1 lw 2 lc 1 ti "Binodal", \
	"result_6_600.txt" usi 3:1 w l lt 1 lw 2 lc 1 noti, \
	"result_6_600.txt" usi 4:1 w l lt 3 lw 2 lc 2 ti "Spinodal", \
	"result_6_600.txt" usi 5:1 w l lt 3 lw 2 lc 2 noti

#
set output
reset
set term wxt enhanced

################
#
set term pngcairo font "Arial,14" 
#
#set lmargin 2
#set bmargin 2
#set rmargin 2
#set tmargin 2

######
set output "PD_6_600_3.png"
#
set xlabel "{/=30 {/Symbol f}_A}"
set ylabel "{/=30 {/Symbol c}}"
#
set xtics 0.2
set ytics 0.2
#
set xrange [0:0.6]
set yrange [0.0:0.4]
#
#set style arrow 1 nohead linewidth 2 linetype 2 lc 3
#set arrow  1 as  1 from 0.1,0 to 0.1,0.4
#
#set style arrow 2 nohead linewidth 2 linetype 2 lc 4
#set arrow  2 as  2 from 0.2,0 to 0.2,0.4
#
#set style arrow 3 nohead linewidth 2 linetype 2 lc 5
#set arrow  3 as  3 from 0.4,0 to 0.4,0.4
#
set arrow 4 from 0, 0.3 to 0.095, 0.3
set arrow 5 from 0, 0.22 to 0.185, 0.22
set arrow 6 from 0, 0.38 to 0.05, 0.38
##
set label "{/=25 {/Symbol c} = 0.38, {/Symbol f}_{crit} = 0.04}" at 0.07, 0.38
set label "{/=25 {/Symbol c} = 0.30, {/Symbol f}_{crit} = 0.09}" at 0.12, 0.3
set label "{/=25 {/Symbol c} = 0.22, {/Symbol f}_{crit} = 0.17}" at 0.21, 0.22
#
set key at graph 0.99, graph 0.9 right
#
plot	"result_6_600.txt" usi 2:1 w l lt 1 lw 2 lc 1 ti "Binodal", \
	"result_6_600.txt" usi 3:1 w l lt 1 lw 2 lc 1 noti
#, \
#	"result_6_600.txt" usi 4:1 w l lt 3 lw 2 lc 2 ti "Spinodal", \
#	"result_6_600.txt" usi 5:1 w l lt 3 lw 2 lc 2 noti

#
set output
reset
set term wxt enhanced

set term pngcairo font "Arial,20" 
#
#set lmargin 2
#set bmargin 2
#set rmargin 2
#set tmargin 2

######
set output "PD_6_600_4.png"
#
set xlabel "φ_A"
set ylabel "χ"
#
set xtics 0.2
set ytics 0.2
#
set xrange [0:1.]
set yrange [0.0:0.4]
#
set style arrow 1 nohead linewidth 3 linetype 2 lc 7
set arrow 1 as 1 from first 0.4, 0.15 to 0.999, 0.15
set arrow 2 as 1 from first 0.4,0.15 to 0.4, 0.
set arrow 3 as 1 from first 0.999,0.15 to 0.999, 0.
set style arrow 1 nohead linewidth 8 linetype 2 lc 7
set arrow 4 as 1 from first 0.57,0.15 to 0.99, 0.15
#
#set style arrow 2 nohead linewidth 2 linetype 2 lc 4
#set arrow  2 as  2 from 0.2,0 to 0.2,0.4
#
#set style arrow 3 nohead linewidth 2 linetype 2 lc 5
#set arrow  3 as  3 from 0.4,0 to 0.4,0.4
#
#set arrow 4 from 0, 0.148 to 0.4, 0.148
#set arrow 5 from 0, 0.213 to 0.2, 0.213
#set arrow 6 from 0, 0.29 to 0.1, 0.29
##
set label "χ_{crit}= 0.101" at 0.65, 0.08
set label "φ_{crit}= 0.909" at 0.65, 0.04
set label "Spinodal" at 0.5, 0.25
set label "Meta- \n stable" at 0.2, 0.25
set label "Uniform" at 0.1, 0.1
#
set key at graph 0.98, graph 0.98 right
#
plot	"result_6_600.txt" usi 2:1 w l lt 1 lw 2 lc 1 ti "Binodal", \
	"result_6_600.txt" usi 3:1 w l lt 1 lw 2 lc 1 noti, \
	"result_6_600.txt" usi 4:1 w l lt 3 lw 2 lc 2 ti "Spinodal", \
	"result_6_600.txt" usi 5:1 w l lt 3 lw 2 lc 2 noti

#
set output
reset
set term wxt enhanced