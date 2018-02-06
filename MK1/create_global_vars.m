%% create global variables for Mk1

model.param.set('U', '0.000055[m/s]', 'upwards velocity');
model.param.set('Po', '0 [atm]', 'pressure');
model.param.set('Ochuteout', '0.8', 'defueling chute pressure multiplier');

model.param.set('T0_flibe', '650[degC]', 'inlet temperature');
model.param.set('T0_fuel', '800[degC]', 'initial temperature');
model.param.set('T_inlet', '600[degC]','nominal value is 600');

% fuel element geometry and design
model.param.set('pb_area', 'pb_nb*4*(pb_diam/2)^2*pi', 'heat transfer area between flibe and pebbles');
model.param.set('triso_nb', '4730', 'number of trisos in each pebble');
model.param.set('pb_nb', '44000', 'number of pebbles in the core');
model.param.set('pb_v', 'pb_nb*4/3*(pb_diam/2)^3*pi', 'volume of fuel pebbles');
model.param.set('fuel_v', 'pb_v/0.6');
model.param.set('porosity', '0.4');
model.param.set('pb_diam', '3[cm]');

% radius of graphite kernel
model.param.set('r0','0[m]');
model.param.set('r1', '0.0125[m]', 'radius of graphite kernel in a pebble');
model.param.set('r2', '0.01325[m]', 'outer radius of fuel layer in a pebble');
model.param.set('r3', '0.015[m]', 'outer radius of fuel pebble');

% radius of fuel kernel
model.param.set('R0', '0[m]');
model.param.set('R1', '0.000173340318588[m]');
model.param.set('R2', '0.000218395116184[m]');
model.param.set('R3', '0.000250000000000[m]');
model.param.set('R4', '0.000460000000000[m]', 'outer radius of triso particles');


%volume for each part
model.param.set('V_fuel', '4/3*pi*R3^3/3[m^3]', 'volume of fuel kernel in a triso');
model.param.set('V_coat', '4/3*pi*(R4^3-R3^3)[m^3]', 'volume of coatings in a triso');
model.param.set('V_graphite_core', '4/3*pi*(r1^3)[m^3]', 'volume of the graphtie kernel in a pebble');
model.param.set('V_graphite_shell', '4/3*pi*(r3^3-r2^3)[m^3]', 'volume of the graphite shell in a pebble');


% model.param.set('deltaHCenterInlet', '1.5', 'width of the center inlet opening');
model.param.set('Houtlet', '1 [m]', 'outlet region height overlapping with active core region');
model.param.set('Hinlet', '1.5 [m]', 'inlet region height overlapping with active core region');
model.param.set('decay', '1', 'decay heat fraction of total power');
model.param.set('Qcore', '246[MW]', 'total core power');
model.param.set('Vcore', '16.99151[m^3]', 'total core volume');
model.param.set('Q', 'Qcore/Vcore[MW/m^3]', 'core average power density');
model.param.set('Qmax', 'Qcore*1.41/Vcore[MW/m^3]', 'core peak power density');
model.param.set('Vplug', '11[m^3]');
model.param.set('Qplug', 'Qcore/Vplug');
model.param.set('mL', '976[kg/s]', 'mass flow rate of the primary coolant');
model.param.set('mf', '1', 'fueling chute mass flowrate, fraction of total');
model.param.set('bottomInletFraction', '0.3', 'fraction of mass flow rate going through the bottom inlet');
model.param.set('Pci0', '1.3', 'center inlet pressure head (m) (boundary condition)');
model.param.set('Pcb0', 'Pci0+.2', 'bottom inlet pressure head(boundary condition)');


%% power
model.param.set('Pop', 'Pnominal');
model.param.set('Pnominal', '236[MW]', 'Total nominal power 236MW');
