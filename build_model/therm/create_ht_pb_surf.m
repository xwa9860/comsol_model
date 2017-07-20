model.physics.create('ht3', 'HeatTransferInFluids', 'geom1');
model.physics('ht3').identifier('ht3');
model.physics('ht3').field('temperature').field('T_surf');

model.physics('ht3').selection.set([2]);

model.physics('ht3').create('solid1', 'SolidHeatTransferModel', 2);
model.physics('ht3').feature('solid1').selection.set([2]);
model.physics('ht3').create('hs1', 'HeatSource', 2);
model.physics('ht3').feature('hs1').selection.set([2]);
model.physics('ht3').create('hs2', 'HeatSource', 2);
model.physics('ht3').feature('hs2').selection.set([2]);
model.physics('ht3').create('hs3', 'HeatSource', 2);
model.physics('ht3').feature('hs3').selection.set([2]);


model.physics('ht3').label('Heat Transfer in Fuel Pebble');
model.physics('ht3').prop('ConsistentStabilization').set('glim', '(0.01[K])/ht3.helem');
model.physics('ht3').feature('fluid1').label('overridden');
model.physics('ht3').feature('init1').set('Tinit', 'T0_fuel');
model.physics('ht3').feature('solid1').set('k_mat', 'userdef');
model.physics('ht3').feature('solid1').set('k', {'0' '0' '0' '0' '0' '0' '0' '0' '0'});
model.physics('ht3').feature('solid1').set('rho_mat', 'userdef');
model.physics('ht3').feature('solid1').set('rho', 'rho_fuel*(1-porosity)');
model.physics('ht3').feature('solid1').set('Cp_mat', 'userdef');
model.physics('ht3').feature('solid1').set('Cp', 'cp_fuel*(1-porosity)');
model.physics('ht3').feature('solid1').label('Heat Transfer in Solids(smeared fuel pebbles)');

model.physics('ht3').feature('hs1').set('P0', '1E7');
model.physics('ht3').feature('hs1').set('Q0', 'unnorm_power*power/int_power');
model.physics('ht3').feature('hs1').label('Nuclear heat generation');
%model.physics('ht3').feature('hs1').active(false);

model.physics('ht3').feature('hs2').set('heatSourceType', 'LinearSource');
model.physics('ht3').feature('hs2').set('qs', '-h_conv*pb_area/fuel_v');
model.physics('ht3').feature('hs2').label('heat tranfer to flibe - linear term');

model.physics('ht3').feature('hs3').set('Q0', 'h_conv*pb_area/fuel_v*T_flibe');
model.physics('ht3').feature('hs3').label('heat transfer to flibe - cst term');





