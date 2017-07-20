model.variable.create('var1');
model.variable('var1').model('mod1');
model.variable('var1').set('d', '3[cm]', 'pebble diameter');
model.variable('var1').set('DT', '100[K]', 'core temperature rise');
model.variable('var1').set('mL', 'Qcore*decay/cpL/DT', 'salt mass flowrate');
model.variable('var1').set('g', '9.81[m/s^2]', 'gravitational acceleration');
model.variable('var1').set('SA', '6/d', 'pebble specific surface area');
model.variable('var1').set('v0in', 'mL*rhoL/Ain');
model.variable('var1').set('v0ghost', 'mL*rhoL/Ainghost');
model.variable('var1').set('Acore2', 'pi*2*(2.8656[m]-1.5[m])*0.9[m]', 'inlet cross-sectional area on diverging region inner reflector');
model.variable('var1').set('Acore1', 'pi*2*Hinlet*(0.9[m])', 'inlet cross-sectional area on core plug flow region inner reflector');
model.variable('var1').set('Ain', '2.8743 [m^2]');
model.variable('var1').set('Ainghost', '3.29867 [m^2]');


model.variable.create('var2');
model.variable('var2').model('mod1');
model.variable('var2').set('Kbr', 'd^2/1012.5', 'bed permeability, Ergun/Kozeni');
model.variable('var2').set('cF', '0.52', 'Forchheimer drag coefficient, from Ergun correlation (Beaver coefficient)');
model.variable('var2').set('ep', '0.40', 'porosity');
model.variable('var2').set('bF', 'cF*rhoL/(Kbr^0.5)', 'Forcheimer coefficient');
model.variable('var2').set('ec', '1', 'fictional porosity representing channels in the central reflector');

model.variable.create('var3');
model.variable('var3').model('mod1');
model.variable('var3').set('cpL', '2415.78[J/kg/K]', 'salt heat capacity, constant');
model.variable('var3').set('rhoL', '1962.67[kg/m^3]', 'salt density, 650C');
model.variable('var3').set('muL', '0.00678[Pa*s]', 'salt viscosity, 650C');
model.variable('var3').set('kL', '1.091[W/m/K]', 'salt thermal conductivity, 650C');
model.variable('var3').set('betaL', '0.00025[1/K]', 'salt thermal expansion coefficient, constant');
model.variable('var3').set('Tav', '650[degC]', 'salt reference temp for beta');
model.variable('var3').set('unitstest', 'betaL*To*rhoL*g');
model.variable('var3').set('Pr', 'muL*cpL/kL');



%% fuel thermal properties
model.variable.create('var4');
model.variable('var4').model('mod1');
model.variable('var4').set('rho_fuel', '1810[kg/m^3]', 'sinap ppt(Overview of TMSR-SF1 & SF0)');
model.variable('var4').set('k_fuel', '15[W/m/K]');
model.variable('var4').set('cp_fuel', '1744[J/kg/K]', 'graphite fuel heat capacity');

model.variable('var4').set('rhoS', '1720[kg/m^3]', 'graphite fuel density');
model.variable('var4').set('kS', '15[W/m/K]', 'graphite fuel thermal conductivity of pebble, based on graphite matrix');
model.variable('var4').set('cpS', '1744[J/kg/K]', 'graphite fuel heat capacity');


model.variable('var4').selection.geom('geom1', dimNb);
model.variable('var4').selection.set([pbDomain]);
model.variable('var4').label('fuel properties');

%% cross section data
nameSet =   {'scat', 'nsf', 'rem', 'tot', 'diff2', 'beta', 'betas', ...
    'lambdas', 'kappa', 'diff1', 'invV', 'fiss', 'chit', 'chip', 'chid'};
unitSet = {'[1/cm]', '[1/cm]', '[1/cm]', '[1/cm]', '[cm]', '', '', ...
    '[1/s]', '[MeV]', '[cm]', '[s/cm]', '[1/cm]', '', '', ''};
data_units = containers.Map(nameSet,unitSet);

model.variable.create('var_xs_gr');
model.variable('var_xs_gr').model('mod1');
model = process_graphite(model, [data_path, 'gr\'], data_units, 'var_xs_gr');
model.variable('var_xs_gr').selection.geom('geom1', dimNb);
model.variable('var_xs_gr').selection.set(refDomain);
model.variable('var_xs_gr').label('XS_gr');


model.variable.create('var16');
model.variable('var16').model('mod1');
model = process_fuel(model, [data_path, 'fuel\'], data_units, 'var16');
model.variable('var16').selection.geom('geom1', dimNb);
model.variable('var16').selection.set(pbDomain);
model.variable('var16').label('XS_pb');


model.variable.create('var17');
model.variable('var17').model('mod1');
model = process_flibe(model, [data_path, 'flibe\'], data_units, 'var17', unb, gnb, u_flibe);
model.variable('var17').selection.geom('geom1', dimNb);
model.variable('var17').selection.set([saltDomain]);
model.variable('var17').label('XS_flibe');


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

