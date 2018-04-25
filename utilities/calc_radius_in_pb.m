function rs = calc_radius_in_pb()

    global reactor
    switch reactor
        case 'TMSR'
            % calculate the radius for each radial zone in a fuel pebble
            r_fuel = 0.025;
            rs(3) = r_fuel; % outer radius of the fuel in meter
            zone_nb = 3; % number of zones in the fuel kernel
            V_zone = 4/3*pi*r_fuel^3/zone_nb; %volume for each fuel zone in a pebble

            rs(1)= r_fuel * zone_nb^(-1/3.0);
            rs(2) = rs(1) * 2^(1/3);
            rs(4) = 0.03;
        case 'Mk1'
            rs = [0.0125, 0.01325, 0.015];% radius of graphite kernel
            % 'r1', '0.0125[m]', 'radius of graphite kernel in a pebble'
            % 'r2', '0.01325[m]', 'outer radius of fuel layer in a pebble'
            % 'r3', '0.015[m]', 'outer radius of fuel pebble'
    end
end