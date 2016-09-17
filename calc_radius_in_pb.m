% calculate the radius for each radial zone in a fuel pebble
R = 0.03; % pb radius in meter
zone_nb = 3; % number of zones
V_zone = 4/3*pi*R*3/zone_nb; %volume for each zone in a pebble
r1 = R * zone_nb^(-1/3.0)/2
r2 = (r1 * 2^(1/3) + 2*r1)/2
r3 = (r1*2^(1/3) + R)/2



