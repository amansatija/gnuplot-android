# set terminal png transparent nocrop enhanced font arial 8 size 420,320 
# set output 'airfoil.1.png'
set dummy t,y
set parametric
set title "NACA6409 Airfoil" 
set trange [ 0.00000 : 1.00000 ] noreverse nowriteback
set xlabel "NACA6409 -- 9% thick, 40% max camber, 6% camber" 
set xrange [ -0.100000 : 1.10000 ] noreverse nowriteback
set yrange [ -0.100000 : 0.700000 ] noreverse nowriteback
bez_d4_i0(x) =     (1 - x)**4
bez_d4_i1(x) = 4 * (1 - x)**3 * x
bez_d4_i2(x) = 6 * (1 - x)**2 * x**2
bez_d4_i3(x) = 4 * (1 - x)**1 * x**3
bez_d4_i4(x) =                  x**4
bez_d8_i0(x) =      (1 - x)**8
bez_d8_i1(x) =  8 * (1 - x)**7 * x
bez_d8_i2(x) = 28 * (1 - x)**6 * x**2
bez_d8_i3(x) = 56 * (1 - x)**5 * x**3
bez_d8_i4(x) = 70 * (1 - x)**4 * x**4
bez_d8_i5(x) = 56 * (1 - x)**3 * x**5
bez_d8_i6(x) = 28 * (1 - x)**2 * x**6
bez_d8_i7(x) =  8 * (1 - x)    * x**7
bez_d8_i8(x) =                   x**8
mean_y(t) = m0 * mm * bez_d4_i0(t) + 	    m1 * mm * bez_d4_i1(t) + 	    m2 * mm * bez_d4_i2(t) + 	    m3 * mm * bez_d4_i3(t) + 	    m4 * mm * bez_d4_i4(t)
mean_x(t) = p0 * bez_d4_i0(t) + 	    p1 * bez_d4_i1(t) + 	    p2 * bez_d4_i2(t) + 	    p3 * bez_d4_i3(t) + 	    p4 * bez_d4_i4(t)
z_x(x) = x0 * bez_d8_i0(x) + x1 * bez_d8_i1(x) + x2 * bez_d8_i2(x) + 	 x3 * bez_d8_i3(x) + x4 * bez_d8_i4(x) + x5 * bez_d8_i5(x) + 	 x6 * bez_d8_i6(x) + x7 * bez_d8_i7(x) + x8 * bez_d8_i8(x)
z_y(x, tk) =    y0 * tk * bez_d8_i0(x) + y1 * tk * bez_d8_i1(x) + y2 * tk * bez_d8_i2(x) +    y3 * tk * bez_d8_i3(x) + y4 * tk * bez_d8_i4(x) + y5 * tk * bez_d8_i5(x) +    y6 * tk * bez_d8_i6(x) + y7 * tk * bez_d8_i7(x) + y8 * tk * bez_d8_i8(x)
airfoil_y1(t, thick) = mean_y(z_x(t)) + z_y(t, thick)
airfoil_y2(t, thick) = mean_y(z_x(t)) - z_y(t, thick)
airfoil_y(t) = mean_y(z_x(t))
airfoil_x(t) = mean_x(z_x(t))
mm = 0.6
thick = 0.09
pp = 0.4
x0 = 0.0
y0 = 0.0
x1 = 0.0
y1 = 0.18556
x2 = 0.03571
y2 = 0.34863
x3 = 0.10714
y3 = 0.48919
x4 = 0.21429
y4 = 0.58214
x5 = 0.35714
y5 = 0.55724
x6 = 0.53571
y6 = 0.44992
x7 = 0.75
y7 = 0.30281
x8 = 1.0
y8 = 0.0105
m0 = 0.0
m1 = 0.1
m2 = 0.1
m3 = 0.1
m4 = 0.0
p0 = 0.0
p1 = 0.2
p2 = 0.4
p3 = 0.7
p4 = 1.0
plot airfoil_x(t), airfoil_y(t) title "mean line" w l lt 2,      airfoil_x(t), airfoil_y1(t, thick) title "upper surface" w l lt 1,      airfoil_x(t), airfoil_y2(t, thick) title "lower surface" w l lt 1
