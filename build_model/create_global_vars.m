
model.param.set('v_inlet', '0.14[m/s]', 'upwards velocity, uniform in the core0.14[m/s]');
model.param.set('Po', '0 [atm]', 'pressure');
model.param.set('T0_flibe', '778[degC]', 'initial temperature for flibe salt, 700[degC] for TMSR');
model.param.set('pb_h', '0.4501[m]', 'a parameter for pebble height, defined as in picture ''core_dim_definition''. Calculated with MATLAB Livelink, file ''volume.m''');
model.param.set('z0', '20[cm]-4.899[cm]', 'height of pebble boundary when pb_h =0');
model.param.set('zin', 'z0+pb_h', 'inner height that fuel pebble regions starts');
model.param.set('zout', '0.53+pb_h', 'outer height that fuel pebble starts');
model.param.set('pb_diam', '0.6[m]', 'fuel pebble diameter');
model.param.set('T_inlet', '778[degC]','nominal value is 672');
model.param.set('porosity', '0.4', 'portion of coolant in the fuel region');
model.param.set('h_conv', '6000[W/m^2/K]', 'placeholder');
model.param.set('pb_area', 'pb_nb*4*(pb_diam/2)^2*pi', 'heat transfer area between flibe and pebbles');
model.param.set('pb_nb', '11000', 'number of pebbles in the core');
model.param.set('pb_v', 'pb_nb*4/3*(pb_diam/2)^3*pi', 'volume of fuel pebbles');
model.param.set('Pnominal', '10*10^6[W]', 'Total nominal power');
model.param.set('T0_fuel', '900[K]', 'initial temperature for fuel pebbles, 800[degC]');
model.param.set('fuel_v', 'pb_v/0.6', 'volume of upper region of the core');
model.param.set('eigenMode', '0', 'binary value for NON engenvalue mode(value = 1 if not engenvalue mode, value =0 if engenvalue mode)');

model.param.set('r1','0[m]');
model.param.set('r2', '1.040041911525952e-02[m]');
model.param.set('r3', '1.695227260078176e-02[m]');
model.param.set('r4', '2.155185348552224e-02[m]');
model.param.set('r5', '2.844814651447776e-02[m]');
model.param.set('r0', '0.03[m]');
model.param.set('Tp1','0[degC]');
model.param.set('V_zone', '4/3*pi*r0^3/pb_zone', 'volume of each zone in a pebble times number of pebbles');
model.param.set('pb_zone', '3', 'number of radial zones in the pebbles');
model.param.set('Pop', OpPower, 'operation power');

model.param.set('OCSlope', OCSlope); % value of OCSlope defined in 'define_input_parameters.m'
model.param.descr('OCSlope', 'Over cooling inlet T drop slope');
model.param.set('OCOnset', OCOnset);% value of OCOnset defined in 'define_input_parameters.m'
model.param.descr('OCOnset', 'Over cooling start time, a very large time means it''s not triggered during the simulation');


