# set terminal png transparent nocrop enhanced font arial 8 size 420,320 
# set output 'pm3dcolors.10.png'
set view map
set samples 101, 101
set isosamples 2, 2
set style data pm3d
set style function pm3d
set xtics border in scale 1,0.5 mirror norotate  offset character 0, 0, 0 2
set noytics
set noztics
set title "set palette file \"-\" using 1:2:($1+$2)/2" 
set xrange [ -10.0000 : 10.0000 ] noreverse nowriteback
set cbrange [ -10.0000 : 10.0000 ] noreverse nowriteback
set pm3d implicit at b
set palette defined ( 0 0 0 0, 0.3333 0 1 0.5, 0.6667 1 0 0.5,\
     1 1 1 1 )
splot x