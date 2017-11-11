clc
format long
% radius for the coated
r_coated=0.92/2/1000;
r_fuel=0.5/2/1000
% calculate the r_fuel
zone_nb=3;
V_zone = 4/3*pi*r_fuel^3/zone_nb%volume for each zone in a pebble
r_n1=0;
cal_radius=V_zone/(4/3)/pi;
r_n2=nthroot(cal_radius,3);
r_n3=nthroot(V_zone*2/(4/3)/pi,3);
r_n4=nthroot(V_zone*3/(4/3)/pi,3);
r_buffer=(250+95/2)/1000000;
r_IPyc=(250+95+40/2)/1000000;
r_Sic=(250+95+40+35/2)/1000000;
r_Opyc=(250+95+40+35+40/2)/1000000;
% r_t=[r_n1, 250/1000000/2, r_buffer,r_IPyc,r_Sic, r_Opyc, 0.92/1000];
r_t=[r_n1,r_n2,r_n3,r_n4,092/1000]


