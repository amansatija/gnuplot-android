# set terminal png transparent nocrop enhanced font arial 8 size 420,320 
# set output 'fillstyle.3.png'
set style fill   solid 1.00 border -1
set samples 25, 25
set noxtics
set noytics
set title "A demonstration of boxes with style fill solid border -1" 
set yrange [ 0.00000 : 120.000 ] noreverse nowriteback
plot [-10:10] 100/(1.0+x*x) title 'distribution' with boxes
