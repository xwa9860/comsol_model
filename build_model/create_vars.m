% model.variable.create('var2');
% % not used in the current model
% model.variable('var2').model('mod1');
% model.variable('var2').set('Kbr', 'pb_diam^2/1012.5', 'bed permeability, Ergun/Kozeni');
% model.variable('var2').set('cF', '0.52', 'Forchheimer drag coefficient, from Ergun correlation (Beaver coefficient)');
% model.variable('var2').set('ep', '0.40', 'porosity');
% model.variable('var2').set('bF', 'cF*rhoL/(Kbr^0.5)', 'Forcheimer coefficient');
% model.variable('var2').set('ec', '1', 'fictional porosity representing channels in the central reflector');
% model.variable('var2').label('Porous media parameters');

model.variable.create('var4');
model.variable('var4').model('mod1');
model.variable('var4').set('rho_fuel', '1810[kg/m^3]', 'sinap ppt(Overview of TMSR-SF1 & SF0)');
model.variable('var4').set('k_fuel', '15[W/m/K]');
model.variable('var4').set('cp_fuel', '1744[J/kg/K]', 'graphite fuel heat capacity');
model.variable('var4').selection.geom('geom1', dimNb);
model.variable('var4').selection.set(pbDomain);
model.variable('var4').label('fuel properties');


model.variable.create('var10');
model.variable('var10').model('mod1');
run('fit_func_gr_XS.m');
model.variable('var10').selection.geom('geom1', dimNb);
model.variable('var10').selection.set([refDomain]);
model.variable('var10').label('gr_neutronic_CX');

model.variable.create('var16');
model.variable('var16').model('mod1');
run('fit_func_fuel_XS.m');
model.variable('var16').selection.geom('geom1', dimNb);
model.variable('var16').selection.set([pbDomain]);
model.variable('var16').label('pb_neutronic_CX_t');


model.variable.create('var17');
model.variable('var17').model('mod1');
run('fit_func_flibe_XS.m')
model.variable('var17').selection.geom('geom1', dimNb);
model.variable('var17').selection.set(saltDomain);
model.variable('var17').label('flibe_neutronic_CX_t');

model.variable.create('var18');
model.variable('var18').model('mod1');
model.variable('var18').set('Pdensity', ...
    'kappa1*fiss1*Flux1+kappa2*fiss2*Flux2+kappa3*fiss3*Flux3+kappa4*fiss4*Flux4+kappa5*fiss5*Flux5+kappa6*fiss6*Flux6+kappa7*fiss7*Flux7+kappa8*fiss8*Flux8', 'power density');
model.variable('var18').set('PdensityN', ...
    'Pdensity*Pop/Pint', 'power density normalized to Pop');
model.variable('var18').set('Pint', 'intop1(Pdensity)', 'integrated total core power');
model.variable('var18').set('PintN', 'intop1(PdensityN)', 'integrated total core power normalized to Pop, should be equal to Pop');
model.variable('var18').selection.geom('geom1', dimNb);
model.variable('var18').selection.set([1 2 3]);
model.variable('var18').label('power');

model.variable.create('var22');
model.variable('var22').model('mod1');
% define sumDelayedN for adding delayed neutrons in the neutron diffusion eq. 
model.variable('var22').set('sumDelayedN', 'lambdas1*Conc1+lambdas2*Conc2+lambdas3*Conc3+lambdas4*Conc4+lambdas5*Conc5+lambdas6*Conc6', 'sum of lambda*C_i, for diffusion equation');
model.variable('var22').set('sumN', ...
    'nsf1*Flux1+nsf2*Flux2+nsf3*Flux3+nsf4*Flux4+nsf5*Flux5+nsf6*Flux6+nsf7*Flux7+nsf8*Flux8', 'sum of nuSigmafPhi_g, for delayed neutrons equations');
model.variable('var22').selection.geom('geom1', dimNb);
model.variable('var22').selection.set([1 2 3]);
model.variable('var22').label('delayed');

