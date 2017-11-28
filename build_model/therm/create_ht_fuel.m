model.physics.create('ht_fuel', 'HeatTransferInFluids', 'geom1');
model.physics('ht_fuel').identifier('ht_fuel');
model.physics('ht_fuel').field('temperature').field('T_fuel');
model.physics('ht_fuel').selection.set(fuel_domNb);
model.physics('ht_fuel').create('solid1', 'SolidHeatTransferModel', dimNb);
model.physics('ht_fuel').feature('solid1').selection.set(fuel_domNb);
model.physics('ht_fuel').create('hs1', 'HeatSource', dimNb);
model.physics('ht_fuel').feature('hs1').selection.set(fuel_domNb);
model.physics('ht_fuel').create('hs2', 'HeatSource', dimNb);
model.physics('ht_fuel').feature('hs2').selection.set(fuel_domNb);
model.physics('ht_fuel').create('hs3', 'HeatSource', dimNb);
model.physics('ht_fuel').feature('hs3').selection.set(fuel_domNb);


model.physics('ht_fuel').label('Heat Transfer in Fuel Pebble');
model.physics('ht_fuel').comments('fuel temperature');
model.physics('ht_fuel').prop('ConsistentStabilization').set('glim', '(0.01[K])/ht_fuel.helem');
model.physics('ht_fuel').feature('fluid1').label('overridden');
model.physics('ht_fuel').feature('init1').set('Tinit', 'T0_fuel');
model.physics('ht_fuel').feature('solid1').set('k_mat', 'userdef');

if dimNb==3
     model.physics('ht_fuel').feature('solid1').set('k', {'k_fuel' '0' '0' '0' 'k_fuel' '0' '0' '0' 'k_fuel'});
end

model.physics('ht_fuel').feature('solid1').set('rho_mat', 'userdef');
model.physics('ht_fuel').feature('solid1').set('rho', 'rho_fuel*(1-porosity)');
model.physics('ht_fuel').feature('solid1').set('Cp_mat', 'userdef');
model.physics('ht_fuel').feature('solid1').set('Cp', 'cp_fuel');
model.physics('ht_fuel').feature('solid1').label('Heat Transfer in Solids(smeared fuel pebbles)');



model.physics('ht_fuel').feature('hs1').set('P0', '1E7');
model.physics('ht_fuel').feature('hs1').set('Q0', 'Pdensity*Pop/Pint');
model.physics('ht_fuel').feature('hs1').label('Nuclear heat generation');

model.physics('ht_fuel').feature('hs3').set('Q0', 'h_conv*pb_area/fuel_v*T_flibe');
model.physics('ht_fuel').feature('hs3').label('heat transfer to flibe - cst term');

model.physics('ht_fuel').feature('hs2').set('heatSourceType', 'LinearSource');
model.physics('ht_fuel').feature('hs2').set('qs', '-h_conv*pb_area/fuel_v');
model.physics('ht_fuel').feature('hs2').label('heat tranfer to flibe - linear term');
