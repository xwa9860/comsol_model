global main_pm_domains domains gr_comps;

%% liquid in porous medium regions
model.material.create('mat1', 'Common', 'mod1');
model.material('mat1').selection.set(main_pm_domains);
model.material('mat1').label('Salt-with porosity and permeability');
model.material('mat1').propertyGroup('def').func.label('Functions');
model.material('mat1').propertyGroup('def').set('ratioofspecificheat', '1');
model.material('mat1').propertyGroup('def').set('dynamicviscosity', 'mu_flibe(T_flibe)');
model.material('mat1').propertyGroup('def').set('hydraulicpermeability', {'Kbr' '0' '0' '0' 'Kbr' '0' '0' '0' 'Kbr'});
model.material('mat1').propertyGroup('def').set('porosity', 'ep');
model.material('mat1').propertyGroup('def').set('thermalconductivity', {'1.1' '0' '0' '0' '1.1' '0' '0' '0' '1.1'});
model.material('mat1').propertyGroup('def').set('density', 'rho_flibe(T_flibe)*0.4'); %1900*0.4*(pi*0.68^2) * 0.14 = 154kg/s
model.material('mat1').propertyGroup('def').set('heatcapacity', '2386*0.4'); %flibe heat capacity * porosity; 1E7/(2386*150) = 30 degC 


%% pure flibe in TMSR
if isTMSR
    model.material.create('mat3', 'Common', 'mod1');
    model.material('mat3').selection.set(domains('salt'));
    model.material('mat3').label('Only liquid salt(no pebbles)');
    model.material('mat3').propertyGroup('def').set('thermalconductivity', {'1' '0' '0' '0' '1' '0' '0' '0' '1'});
    model.material('mat3').propertyGroup('def').set('density', '1900');
    model.material('mat3').propertyGroup('def').set('heatcapacity', '2300');
    model.material('mat3').propertyGroup('def').set('ratioofspecificheat', '1');
    model.material('mat3').propertyGroup('def').set('dynamicviscosity', '2'); 
    model.material('mat3').propertyGroup('def').set('porosity', 'ep');
end

%% graphite
model.material.create('mat2', 'Common', 'mod1');
valueSet = values(domains, gr_comps);
model.material('mat2').selection.set(cell2mat(valueSet));
model.material('mat2').label('graphite based on built in steel');
model.material('mat2').propertyGroup('def').set('porosity', '0.2');
model.material('mat2').propertyGroup('def').set('hydraulicpermeability', {'1.55*10^(-13)' '0' '0' '0' '1.55*10^(-13)' '0' '0' '0' '1.55*10^(-13)'});
model.material('mat2').propertyGroup('def').set('ratioofspecificheat', '1');
model.material('mat2').propertyGroup('def').set('thermalconductivity', {'640[W/(m*K)]' '0' '0' '0' '640[W/(m*K)]' '0' '0' '0' '640[W/(m*K)]'});
model.material('mat2').propertyGroup('def').set('heatcapacity', '684[J/(kg*K)]');
model.material('mat2').propertyGroup('def').set('density', '1960[kg/m^3]');


%coolant channel
% model.material.create('mat3', 'Common', 'mod1');
% model.material('mat3').selection.set(channel_domains);
% model.material('mat3').label('Salt-channels, hydraulicpermeability is different from porous media salt');
% model.material('mat3').propertyGroup('def').func.label('Functions');
% model.material('mat3').propertyGroup('def').set('ratioofspecificheat', '1');
% model.material('mat3').propertyGroup('def').set('dynamicviscosity', 'mu_flibe(T_flibe)');
% model.material('mat3').propertyGroup('def').set('hydraulicpermeability', {'1' '0' '0' '0' '1' '0' '0' '0' '1'});
% model.material('mat3').propertyGroup('def').set('porosity', 'ep');
% model.material('mat3').propertyGroup('def').set('thermalconductivity', {'1.1' '0' '0' '0' '1.1' '0' '0' '0' '1.1'});
% model.material('mat3').propertyGroup('def').set('density', 'rho_flibe(T_flibe)');
% model.material('mat3').propertyGroup('def').set('heatcapacity', '2386');


%steel
model.material.create('mat4', 'Common', 'mod1');
model.material('mat4').propertyGroup.create('Enu', 'Young''s modulus and Poisson''s ratio');
model.material('mat4').propertyGroup.create('Murnaghan', 'Murnaghan');
model.material('mat4').propertyGroup.create('Lame', ['Lam' native2unicode(hex2dec({'00' 'e9'}), 'unicode') ' parameters']);
model.material('mat4').label('Structural steel');
model.material('mat4').set('ambient', 'custom');
model.material('mat4').set('specular', 'custom');
model.material('mat4').set('fresnel', '0.9');
model.material('mat4').set('noise', 'on');
model.material('mat4').set('family', 'custom');
model.material('mat4').set('diffuse', 'custom');
model.material('mat4').set('noisefreq', '1');
model.material('mat4').set('customambient', {'0.6666666666666666' '0.6666666666666666' '0.6666666666666666'});
model.material('mat4').set('lighting', 'cooktorrance');
model.material('mat4').set('roughness', '0.3');
model.material('mat4').set('customspecular', {'0.7843137254901961' '0.7843137254901961' '0.7843137254901961'});
model.material('mat4').set('customdiffuse', {'0.6666666666666666' '0.6666666666666666' '0.6666666666666666'});
model.material('mat4').set('fresnel', '0.9');
model.material('mat4').propertyGroup('def').set('relpermeability', {'1' '0' '0' '0' '1' '0' '0' '0' '1'});
model.material('mat4').propertyGroup('def').set('heatcapacity', '475[J/(kg*K)]');
model.material('mat4').propertyGroup('def').set('thermalconductivity', {'44.5[W/(m*K)]' '0' '0' '0' '44.5[W/(m*K)]' '0' '0' '0' '44.5[W/(m*K)]'});
model.material('mat4').propertyGroup('def').set('electricconductivity', {'4.032e6[S/m]' '0' '0' '0' '4.032e6[S/m]' '0' '0' '0' '4.032e6[S/m]'});
model.material('mat4').propertyGroup('def').set('relpermittivity', {'1' '0' '0' '0' '1' '0' '0' '0' '1'});
model.material('mat4').propertyGroup('def').set('thermalexpansioncoefficient', {'12.3e-6[1/K]' '0' '0' '0' '12.3e-6[1/K]' '0' '0' '0' '12.3e-6[1/K]'});
model.material('mat4').propertyGroup('def').set('density', '7850[kg/m^3]');
model.material('mat4').propertyGroup('Enu').set('youngsmodulus', '200e9[Pa]');
model.material('mat4').propertyGroup('Enu').set('poissonsratio', '0.30');
model.material('mat4').propertyGroup('Murnaghan').set('l', '');
model.material('mat4').propertyGroup('Murnaghan').set('m', '');
model.material('mat4').propertyGroup('Murnaghan').set('n', '');
model.material('mat4').propertyGroup('Murnaghan').set('l', '-3.0e11[Pa]');
model.material('mat4').propertyGroup('Murnaghan').set('m', '-6.2e11[Pa]');
model.material('mat4').propertyGroup('Murnaghan').set('n', '-7.2e11[Pa]');
model.material('mat4').propertyGroup('Lame').set('lambLame', '');
model.material('mat4').propertyGroup('Lame').set('muLame', '');
model.material('mat4').propertyGroup('Lame').set('lambLame', '1.15e11[Pa]');
model.material('mat4').propertyGroup('Lame').set('muLame', '7.69e10[Pa]');




