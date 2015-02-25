# set terminal png transparent nocrop enhanced font arial 8 size 420,320 
# set output 'singulr.20.png'
set dummy u,v
unset key
set parametric
set view 70, 305, 1, 1
set isosamples 39, 40
set hidden3d offset 1 trianglepattern 3 undefined 1 altdiagonal bentover
set style data lines
set ticslevel 0
set title "Klein bottle, glassblowers' version (solid)" 
set urange [ 0.00000 : 6.28319 ] noreverse nowriteback
set vrange [ 0.00000 : 4.18879 ] noreverse nowriteback
set xrange [ -12.0000 : 12.0000 ] noreverse nowriteback
set yrange [ -12.0000 : 12.0000 ] noreverse nowriteback
set zrange [ * : * ] noreverse nowriteback  # (currently [-3.00000:3.00000] )
splot "klein.dat"
