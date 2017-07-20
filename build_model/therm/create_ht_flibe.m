model.physics.create('ht', 'HeatTransferInFluids', 'geom1');
model.physics('ht').field('temperature').field('T_flibe');
model.physics('ht').selection.set([1 2]);
model.physics('ht').create('temp1', 'TemperatureBoundary', dimNb-1);
model.physics('ht').feature('temp1').selection.set([2 8]);
model.physics('ht').create('ofl1', 'ConvectiveOutflow', dimNb-1);
model.physics('ht').feature('ofl1').selection.set([5 10]);

model.physics('ht').create('hs1', 'HeatSource', dimNb);
model.physics('ht').feature('hs1').selection.set([2]);
model.physics('ht').create('hs2', 'HeatSource', dimNb);
model.physics('ht').feature('hs2').selection.set([2]);

model.physics('ht').label('Heat Transfer - Flibe');
model.physics('ht').prop('ShapeProperty').set('valueType', 'complex');
model.physics('ht').prop('ShapeProperty').set('order_temperature', '2');
model.physics('ht').prop('ShapeProperty').set('boundaryFlux_temperature', '0');

model.physics('ht').prop('ConsistentStabilization').set('glim', '0.01[K]/ht.helem');
model.physics('ht').prop('ConsistentStabilization').set('StreamlineDiffusionOldForm', '1');
model.physics('ht').prop('ConsistentStabilization').set('heatCrosswindDiffusion', '0');
model.physics('ht').prop('RadiationProperty').set('fieldName', 'root.J');
model.physics('ht').feature('fluid1').set('k', {'0.6*'; '0'; '0'; '0'; '0.6*'; '0'; '0'; '0'; '0.6*'});
model.physics('ht').feature('fluid1').set('minput_pressure', '0');
model.physics('ht').feature('fluid1').set('minput_velocity', {'0'; '0'; 'v_inlet'});
model.physics('ht').feature('fluid1').set('minput_strainreferencetemperature', '0');
model.physics('ht').feature('fluid1').label('Fluid');
model.physics('ht').feature('init1').set('Tinit', 'T0_flibe');
model.physics('ht').feature('init1').label('Initial Temperature');
if dimNb==2
model.physics('ht').feature('axi1').label('Axial Symmetry');
end
model.physics('ht').feature('ins1').label('Thermal Insulation');
model.physics('ht').feature('temp1').set('T0', 'T_inlet');
model.physics('ht').feature('temp1').label('Inlet Temperature');
model.physics('ht').feature('temp1').comments('flibe temperature in the core');
model.physics('ht').feature('ofl1').label('Outflow');
model.physics('ht').feature('hs1').set('Q0', 'h_conv*pb_area/fuel_v*T_fuel');
model.physics('ht').feature('hs1').label('heat transfer from fuel-cst term');
model.physics('ht').feature('hs2').set('heatSourceType', 'LinearSource');
model.physics('ht').feature('hs2').set('qs', '-h_conv*pb_area/fuel_v');
model.physics('ht').feature('hs2').label('heat transfer from fuel - linear term');