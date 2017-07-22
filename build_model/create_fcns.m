% create functions 
%define step function for reactivity insertion
model.func.create('step1', 'Step');
model.func('step1').label('step_fun');
model.func('step1').set('funcname', 'step_fun');
model.func('step1').set('to', 'reactivity_insertion+1');
model.func('step1').set('smooth', '0');
model.func('step1').set('from', '1');
model.func('step1').set('location', '0.1');

%define ramp function for overcooling 
model.func.create('rm1', 'Ramp');
model.func('rm1').set('cutoffactive', 'on');
model.func('rm1').set('slope', 'OCSlope');
model.func('rm1').set('location', 'OCOnset');
model.func('rm1').set('cutoff', '-100');

model.func.create('an4', 'Analytic');
model.func('an4').label('FLiBe Density');
model.func('an4').set('args', {'T'});
model.func('an4').set('argunit', 'K');
model.func('an4').set('expr', '2413-0.488*T');
model.func('an4').set('plotargs', {'T' '400' '2000'});
model.func('an4').set('funcname', 'rho_flibe');
model.func('an4').set('fununit', 'kg/m^3');


model.func.create('an6', 'Analytic');
model.func('an6').label('FLiBe Dynamic Viscosity');
model.func('an6').set('args', {'T'});
model.func('an6').set('argunit', 'K');
model.func('an6').set('expr', '1.16*10^(-4)*exp(3755/T)');
model.func('an6').set('plotargs', {'T' '600' '800'});
model.func('an6').set('funcname', 'mu_flibe');
model.func('an6').set('fununit', 'Pa*s');

