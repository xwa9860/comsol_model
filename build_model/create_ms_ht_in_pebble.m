% multi-scale treatment to get the temperature profile inside a fuel pebble
model.physics.create('htpb', 'CoefficientFormPDE', 'geom1');
model.physics('htpb').identifier('htpb');
model.physics('htpb').field('dimensionless').field('Tp');
model.physics('htpb').field('dimensionless').component({'Tp1' 'Tp2' 'Tpn'});
model.physics('htpb').selection.set([2]);

model.physics('htpb').label('Heat diffusion in pebble');
model.physics('htpb').prop('Units').set('SourceTermQuantity', 'powerdensity');
model.physics('htpb').prop('Units').set('DependentVariableQuantity', 'temperature');
model.physics('htpb').feature('cfeq1').set('c', {'0' '0' '0' '0'; '0' '0' '0' '0'; '0' '0' '0' '0'; '0' '0' '0' '0'; '0' '0' '0' '0'; '0' '0' '0' '0'; '0' '0' '0' '0'; '0' '0' '0' '0'; '0' '0' '0' '0'});
model.physics('htpb').feature('cfeq1').set('a', {'(4*pi*k_fuel)/((1/r1-1/r2)*V_zone)'; '0'; '0'; '0'; '(4*pi*k_fuel)/((1/r1-1/r2)*V_zone)+(4*pi*k_fuel)/((1/r2-1/r3)*V_zone)'; '0'; '0'; '0'; '(4*pi*k_fuel)/((1/r2-1/r3)*V_zone)+h_conv*pb_area/V_zone/pb_nb'});
model.physics('htpb').feature('cfeq1').set('f', {'Tp2*4*pi*k_fuel/((1/r1-1/r2)*V_zone)+Pdensity'; 'Tpn*4*pi*k_fuel/((1/r2-1/r3)*V_zone)+Tp1*4*pi*k_fuel/((1/r1-1/r2)*V_zone)+Pdensity'; 'Tp2*4*pi*k_fuel/((1/r1-1/r2)*V_zone)+T_flibe*h_conv*pb_area/V_zone/pb_nb+Pdensity'});
model.physics('htpb').feature('cfeq1').set('da', {'rho_fuel*cp_fuel'; '0'; '0'; '0'; 'rho_fuel*cp_fuel'; '0'; '0'; '0'; 'rho_fuel*cp_fuel'});
model.physics('htpb').feature('init1').set('Tp2', '900');
model.physics('htpb').feature('init1').set('Tp1', '900');
model.physics('htpb').feature('init1').set('Tpn', '900');