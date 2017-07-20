% calculate the radius for each radial zone in a fuel pebble
R = 0.03; % pb radius in meter
R_inside=0.03-5/1000;
zone_nb = 3; % number of zones
V_zone = 4/3*pi*R_inside^3/zone_nb;%volume for each zone in a pebble
% r1=0;
% r2= R* zone_nb^(-1/3.0)/2
% r3 = (r2 * 2^(1/3) + 2*r2)/2
% r4 = (r2*2^(1/3) + R)/2
% r5=0.025+(0.05/2);
format long
cal_radius=V_zone/(4/3)/pi;
r_2_re=nthroot(cal_radius,3)/2
r_3_re=(nthroot(V_zone*2,3)-r_2_re*2)/2+r_2_re
r_4_re=(nthroot(V_zone*3,3)-nthroot(V_zone*2,3))/2+r_3_re
r_5_re=R-5/1000/2

