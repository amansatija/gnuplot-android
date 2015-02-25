# set terminal png transparent nocrop enhanced font arial 8 size 420,320 
# set output 'contours.3.png'
set view 60, 30, 0.85, 1.1
set samples 20, 20
set isosamples 21, 21
set contour base
set cntrparam levels incremental -100,10,110
set title "3D gnuplot demo - contour plot (every 10, starting at -100)" 
set xlabel "X axis" 
set ylabel "Y axis" 
set zlabel "Z axis" 
set zlabel  offset character 1, 0, 0 font "" textcolor lt -1 norotate
splot x*y
