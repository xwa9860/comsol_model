% calculate the radius for each radial zone in a fuel pebble
R = 0.03; % pb radius in meter
zone_nb = 3; % number of zones
V_zone = 4/3*pi*R*3/zone_nb; %volume for each zone in a pebble
r1=0;
r2= R * zone_nb^(-1/3.0)/2
r3 = (r2 * 2^(1/3) + 2*r2)/2
r4 = (r2*2^(1/3) + R)/2
r5=(0.025-r4)+(0.05/2)

