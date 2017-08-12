
model.param.set('v_inlet', '0.13*0.4[m/s]', 'upwards velocity, uniform in the core 0.13*0.4[m/s]');
model.param.set('T0_flibe', '672[degC]', 'initial temperature for flibe salt, 672[degC] for TMSR');
model.param.set('T_inlet', '672[degC]','nominal value is 672');
model.param.set('T0_fuel', '800[degC]', 'initial temperature for fuel pebbles, 800[degC]');
%model.param.set('Tp1','0[degC]');
%model.param.set('Tp00', 1, 'placeholder for the bias term in linear regression of cross sections on temperature');

model.param.set('pb_h', '0.4501[m]', 'a parameter for pebble height, defined as in picture ''core_dim_definition''. Calculated with MATLAB Livelink, file ''volume.m''');
model.param.set('z0', '20[cm]-4.899[cm]', 'height of pebble boundary when pb_h =0');
model.param.set('zin', 'z0+pb_h', 'inner height that fuel pebble regions starts');
model.param.set('zout', '0.53+pb_h', 'outer height that fuel pebble starts');
model.param.set('pb_diam', '0.06[m]', 'fuel pebble diameter');
model.param.set('r1','0[m]');
model.param.set('r2', '0.008667015929383[m]');
model.param.set('r3', '0.017602558504261[m]');
model.param.set('r4', '0.020149899425206[m]');
model.param.set('r5', '0.027500000000000[m]');
model.param.set('r0', '0.03[m]');
model.param.set('rfuel_zone','0.025[m]')
model.param.set('V_zone', '4/3*pi*rfuel_zone^3/pb_zone', 'volume of each zone in a pebble times number of pebbles');
model.param.set('pb_zone', '3', 'number of radial zones in the pebbles');

model.param.set('pb_area', 'pb_nb*4*(pb_diam/2)^2*pi', 'heat transfer area between flibe and pebbles');
model.param.set('pb_nb', '11000', 'number of pebbles in the core');
model.param.set('pb_v', 'pb_nb*4/3*(pb_diam/2)^3*pi', 'volume of fuel pebbles');
model.param.set('fuel_v', 'pb_v/0.6', 'volume of upper region of the core');

model.param.set('porosity', '0.4', 'portion of coolant in the fuel region');


%model.param.set('Pnominal', '10*10^6[W]', 'Total nominal power');
model.param.set('Pop', OpPower, 'operation power');
model.param.set('h_conv', '6000[W/m^2/K]', 'placeholder');


