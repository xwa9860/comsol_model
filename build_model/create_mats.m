model.material.create('mat1', 'Common', 'mod1');
model.material.create('mat2', 'Common', 'mod1');
model.material.create('mat3', 'Common', 'mod1');

model.material('mat1').selection.set([pbDomain]);
model.material('mat2').selection.set([refDomain]);
model.material('mat3').selection.set([saltDomain]);


%% placeholders

model.material('mat1').label('Salt-with porosity and permeability');
model.material('mat1').propertyGroup('def').func.label('Functions');
model.material('mat1').propertyGroup('def').set('ratioofspecificheat', '1');
model.material('mat1').propertyGroup('def').set('dynamicviscosity', 'mu_flibe(T_flibe)');
model.material('mat1').propertyGroup('def').set('hydraulicpermeability', {'Kbr' '0' '0' '0' 'Kbr' '0' '0' '0' 'Kbr'});
model.material('mat1').propertyGroup('def').set('porosity', 'ep');
model.material('mat1').propertyGroup('def').set('thermalconductivity', {'1.1' '0' '0' '0' '1.1' '0' '0' '0' '1.1'});
model.material('mat1').propertyGroup('def').set('density', 'rho_flibe(T_flibe)');
model.material('mat1').propertyGroup('def').set('heatcapacity', '2386');

model.material('mat2').label('Graphite');
model.material('mat2').comments('This graphite reflector data is based on what I had on hand from Madicken Munk about  FMI-222 graphite.\n\nDensity : \nL.L. Snead "SWELLING OF NUCLEAR GRAPHITE AND HIGH QUALITY CARBON FIBER COMPOSITE UNDER VERY HIGH IRRADIATION TEMPERATURE"\n\n\n\nThermal Conductivity and Specific Heat Capacity:\nL.L. Snead "Thermal conductivity degradation of graphites due to nuetron irradiation at low temperature"\n\n\nPorosity varied strongly across the literature, and no value for FMI-222 was found, but a typical value for porosity in nuclear graphite appears to be in the range of 10-60%, with many sources using values near 20%. Porosity is expected to vary as a function of dose.\n\n\nPermeability was found here: http://www.osti.gov/scitech/servlets/purl/714896');
model.material('mat2').propertyGroup('def').set('thermalconductivity', {'640' '0' '0' '0' '640' '0' '0' '0' '640'});
model.material('mat2').propertyGroup('def').set('porosity', '0.2');
model.material('mat2').propertyGroup('def').set('hydraulicpermeability', {'1.55*10^(-13)' '0' '0' '0' '1.55*10^(-13)' '0' '0' '0' '1.55*10^(-13)'});
model.material('mat2').propertyGroup('def').set('ratioofspecificheat', '1');
model.material('mat2').propertyGroup('def').set('density', '1960');
model.material('mat2').propertyGroup('def').set('heatcapacity', '684');

model.material('mat3').label('Liquid salt');
model.material('mat3').propertyGroup('def').set('thermalconductivity', {'1' '0' '0' '0' '1' '0' '0' '0' '1'});
model.material('mat3').propertyGroup('def').set('density', '1900');
model.material('mat3').propertyGroup('def').set('heatcapacity', '2300');
model.material('mat3').propertyGroup('def').set('ratioofspecificheat', '1');
model.material('mat3').propertyGroup('def').set('dynamicviscosity', '2'); 
model.material('mat3').propertyGroup('def').set('porosity', 'ep');