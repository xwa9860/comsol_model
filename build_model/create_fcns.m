

% flibe density function
model.func.create('an4', 'Analytic');
model.func('an4').label('FLiBe Density');
model.func('an4').set('args', {'T'});
model.func('an4').set('argunit', 'K');
model.func('an4').set('expr', '2413-0.488*T');
model.func('an4').set('plotargs', {'T' '400' '2000'});
model.func('an4').set('funcname', 'rho_flibe');
model.func('an4').set('fununit', 'kg/m^3');

% flibe viscosity function
model.func.create('an6', 'Analytic');
model.func('an6').label('FLiBe Dynamic Viscosity');
model.func('an6').set('args', {'T'});
model.func('an6').set('argunit', 'K');
model.func('an6').set('expr', '1.16*10^(-4)*exp(3755/T)');
model.func('an6').set('plotargs', {'T' '600' '800'});
model.func('an6').set('funcname', 'mu_flibe');
model.func('an6').set('fununit', 'Pa*s');

