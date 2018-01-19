
global flibe_domains dimNb fuel_domNb inlet_temp_bound
model.physics.create('ht_flibe', 'HeatTransferInFluids', 'geom1');
model.physics('ht_flibe').identifier('ht_flibe');
model.physics('ht_flibe').label('Heat Transfer - Flibe');
model.physics('ht_flibe').field('temperature').field('T_flibe');
model.physics('ht_flibe').selection.set(flibe_domains);

model.physics('ht_flibe').create('temp1', 'TemperatureBoundary', dimNb-1);
model.physics('ht_flibe').feature('temp1').selection.set(inlet_temp_bound);
model.physics('ht_flibe').feature('temp1').set('T0', 'T_inlet');
model.physics('ht_flibe').feature('temp1').label('Inlet Temperature');

model.physics('ht_flibe').create('hs1', 'HeatSource', dimNb);
model.physics('ht_flibe').feature('hs1').selection.set(fuel_domNb);
model.physics('ht_flibe').feature('hs1').set('Q0', 'h_conv*pb_area/fuel_v*T_fuel');
model.physics('ht_flibe').feature('hs1').label('heat transfer from fuel-cst term');

model.physics('ht_flibe').create('hs2', 'HeatSource', dimNb);
model.physics('ht_flibe').feature('hs2').selection.set(fuel_domNb);
model.physics('ht_flibe').feature('hs2').set('heatSourceType', 'LinearSource');
model.physics('ht_flibe').feature('hs2').set('qs', '-h_conv*pb_area/fuel_v');
model.physics('ht_flibe').feature('hs2').label('heat transfer from fuel - linear term');

model.physics('ht_flibe').feature('init1').set('Tinit', 'T0_flibe');
model.physics('ht_flibe').feature('init1').label('Initial Temperature');

model.physics('ht_flibe').feature('ins1').label('Thermal Insulation');



if isTMSR
    global out_flow_bound;
    model.physics('ht_flibe').create('ofl1', 'ConvectiveOutflow', dimNb-1);    
    model.physics('ht_flibe').feature('ofl1').selection.set(out_flow_bound);
    model.physics('ht_flibe').feature('ofl1').label('Outflow');
    
    model.physics('ht_flibe').feature('fluid1').set('minput_pressure', '0');
    model.physics('ht_flibe').feature('fluid1').set('minput_velocity', {'0'; '0'; 'v_inlet'});
    %   model.physics('ht_flibe').feature('fluid1').set('minput_velocity', {'0' 'v_inlet' '0'});
else
    model.physics('ht_flibe').feature('fluid1').set('minput_pressure_src', 'root.mod1.br.pA');
    model.physics('ht_flibe').feature('fluid1').set('minput_velocity_src', 'root.mod1.u');
end
    
model.physics('ht_flibe').prop('RadiationProperty').set('fieldName', 'root.J');
model.physics('ht_flibe').feature('fluid1').set('k', {'0.6*'; '0'; '0'; '0'; '0.6*'; '0'; '0'; '0'; '0.6*'});
model.physics('ht_flibe').feature('fluid1').set('minput_strainreferencetemperature', '0');
model.physics('ht_flibe').feature('fluid1').label('Fluid');

model.physics('ht_flibe').prop('ShapeProperty').set('valueType', 'complex');
model.physics('ht_flibe').prop('ShapeProperty').set('order_temperature', '1');
model.physics('ht_flibe').prop('ShapeProperty').set('boundaryFlux_temperature', '0');

model.physics('ht_flibe').prop('ConsistentStabilization').set('glim', '0.01[K]/ht_flibe.helem');
model.physics('ht_flibe').prop('ConsistentStabilization').set('StreamlineDiffusionOldForm', '1');
model.physics('ht_flibe').prop('ConsistentStabilization').set('heatCrosswindDiffusion', '0');

if dimNb == 2  
    model.physics('ht_flibe').feature('axi1').label('Axial Symmetry');
end


