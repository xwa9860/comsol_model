function out = model
%
% Untitled.m
%
% Model exported on Sep 1 2017, 12:09 by COMSOL 5.3.0.260.

import com.comsol.model.*
import com.comsol.model.util.*

model = ModelUtil.create('Model');

model.modelPath('D:\diffusion_models\model\m_files\results\1st_Mk1_ss_res');

model.label('comsol_model.mph');

model.comments(['Untitled\n\n']);

model.param.set('OCSlope', '-10', 'Over cooling inlet T drop slope');
model.param.set('OCOnset', '100', 'Over cooling start time, a very large time means it''s not triggered during the simulation');
model.param.set('eigenMode', '0', 'binary value for NON engenvalue mode(value = 1 if not engenvalue mode, value =0 if engenvalue mode)');
model.param.set('U', '0.000055[m/s]', 'upwards velocity');
model.param.set('Po', '0 [atm]', 'pressure');
model.param.set('Ochuteout', '0.8', 'defueling chute pressure multiplier');
model.param.set('T0_flibe', '600[degC]', 'inlet temperature');
model.param.set('T0_fuel', '800[degC]', 'initial temperature');
model.param.set('T_inlet', '778[degC]', 'nominal value is 672');
model.param.set('h_conv', '6000[W/m^2/K]', 'placeholder');
model.param.set('pb_area', 'pb_nb*4*(pb_diam/2)^2*pi', 'heat transfer area between flibe and pebbles');
model.param.set('pb_nb', '44000', 'number of pebbles in the core');
model.param.set('pb_v', 'pb_nb*4/3*(pb_diam/2)^3*pi', 'volume of fuel pebbles');
model.param.set('fuel_v', 'pb_v/0.6');
model.param.set('porosity', '0.4');
model.param.set('Pnominal', '234*10^6[W]', 'Total nominal power');
model.param.set('Houtlet', '1 [m]', 'outlet region height overlapping with active core region');
model.param.set('Hinlet', '1.5 [m]', 'inlet region height overlapping with active core region');
model.param.set('decay', '1', 'decay heat fraction of total power');
model.param.set('Qcore', '249[MW]', 'total core power');
model.param.set('Vcore', '16.99151[m^3]', 'total core volume');
model.param.set('Q', 'Qcore/Vcore[MW/m^3]', 'core average power density');
model.param.set('Qmax', 'Qcore*1.41/Vcore[MW/m^3]', 'core peak power density');
model.param.set('Vplug', '11[m^3]');
model.param.set('Qplug', 'Qcore/Vplug');
model.param.set('mL', '976[kg/s]', 'mass flow rate of the primary coolant');
model.param.set('mf', '1', 'fueling chute mass flowrate, fraction of total');
model.param.set('bottomInletFraction', '0.3', 'fraction of mass flow rate going through the bottom inlet');
model.param.set('Pci0', '1.3', 'center inlet pressure head (m) (boundary condition)');
model.param.set('Pcb0', 'Pci0+.2', 'bottom inlet pressure head(boundary condition)');
model.param.set('pb_diam', '3[cm]');
model.param.set('Pop', '0[MW]');
model.param.set('h_CRCC1', '0.416');
model.param.set('h_CRCC2', '0.416');
model.param.set('h_CRCC3', '0.416');
model.param.set('h_CRCC4', '0.416');
model.param.set('h_CRCC5', '0.416');
model.param.set('h_CRCC6', '0.416');
model.param.set('h_CRCC7', '0.416');
model.param.set('h_CRCC8_1', '0.416');
model.param.set('h_CRCC8_2', '0.416');

model.component.create('mod1', false);

model.component('mod1').geom.create('geom1', 3);

model.component('mod1').label('FHR');

model.component('mod1').defineLocalCoord(false);

model.result.table.create('tbl1', 'Table');

model.func.create('step1', 'Step');
model.func.create('rm1', 'Ramp');
model.func.create('an4', 'Analytic');
model.func.create('an6', 'Analytic');
model.func.create('str', 'Step');
model.component('mod1').func.create('an7', 'Analytic');
model.func('step1').label('step_fun');
model.func('step1').set('funcname', 'step_fun');
model.func('step1').set('location', '0.1');
model.func('step1').set('from', '1');
model.func('step1').set('to', 'reactivity_insertion+1');
model.func('step1').set('smooth', '0');
model.func('rm1').set('location', 'OCOnset');
model.func('rm1').set('slope', 'OCSlope');
model.func('rm1').set('cutoff', '-100');
model.func('rm1').set('cutoffactive', true);
model.func('an4').label('FLiBe Density');
model.func('an4').set('funcname', 'rho_flibe');
model.func('an4').set('expr', '2413-0.488*T');
model.func('an4').set('args', {'T'});
model.func('an4').set('argunit', 'K');
model.func('an4').set('fununit', 'kg/m^3');
model.func('an4').set('plotargs', {'T' '400' '2000'});
model.func('an6').label('FLiBe Dynamic Viscosity');
model.func('an6').set('funcname', 'mu_flibe');
model.func('an6').set('expr', '1.16*10^(-4)*exp(3755/T)');
model.func('an6').set('args', {'T'});
model.func('an6').set('argunit', 'K');
model.func('an6').set('fununit', 'Pa*s');
model.func('an6').set('plotargs', {'T' '600' '800'});
model.func('str').label('str');
model.func('str').set('smooth', '0');
model.component('mod1').func('an7').label('Outlet pressure');
model.component('mod1').func('an7').set('expr', '(4.9285-x)*0.15/(4.9285-4.305)');
model.component('mod1').func('an7').set('plotargs', {'x' '4.305' '4.9285'});

model.component('mod1').mesh.create('mesh1');

model.component('mod1').geom('geom1').create('wp1', 'WorkPlane');
model.component('mod1').geom('geom1').feature('wp1').set('quickplane', 'xz');
model.component('mod1').geom('geom1').feature('wp1').set('unite', true);
model.component('mod1').geom('geom1').feature('wp1').geom.create('pol1', 'Polygon');
model.component('mod1').geom('geom1').feature('wp1').geom.feature('pol1').label('center_ref');
model.component('mod1').geom('geom1').feature('wp1').geom.feature('pol1').set('source', 'table');
model.component('mod1').geom('geom1').feature('wp1').geom.feature('pol1').set('table', [0 0.416; 0.45 0.416; 0.45 1.275; 0.35 1.4482; 0.35 4.305; 0.71 4.9285; 0.71 5.7285; 0 5.7285]);
model.component('mod1').geom('geom1').feature('wp1').geom.create('pol2', 'Polygon');
model.component('mod1').geom('geom1').feature('wp1').geom.feature('pol2').label('fuel');
model.component('mod1').geom('geom1').feature('wp1').geom.feature('pol2').set('source', 'table');
model.component('mod1').geom('geom1').feature('wp1').geom.feature('pol2').set('table', [0.45 0.416; 0.7541 0.416; 1.05 1.805; 1.05 4.305; 0.8 4.9285; 0.8 5.7285; 0.71 5.7285; 0.71 4.9285; 0.35 4.305; 0.35 1.4482; 0.45 1.275]);
model.component('mod1').geom('geom1').feature('wp1').geom.create('pol3', 'Polygon');
model.component('mod1').geom('geom1').feature('wp1').geom.feature('pol3').label('blanket');
model.component('mod1').geom('geom1').feature('wp1').geom.feature('pol3').set('source', 'table');
model.component('mod1').geom('geom1').feature('wp1').geom.feature('pol3').set('table', [0.7541 0.416; 0.8574 0.416; 1.25 1.805; 1.25 4.305; 0.89 4.9285; 0.89 5.7285; 0.8 5.7285; 0.8 4.9285; 1.05 4.305; 1.05 1.805; 0.7541 0.416; 0.45 0.416]);
model.component('mod1').geom('geom1').feature('wp1').geom.create('pol4', 'Polygon');
model.component('mod1').geom('geom1').feature('wp1').geom.feature('pol4').label('outer_ref');
model.component('mod1').geom('geom1').feature('wp1').geom.feature('pol4').set('source', 'table');
model.component('mod1').geom('geom1').feature('wp1').geom.feature('pol4').set('table', [0.8574 0.416; 1.65 0.416; 1.65 5.7285; 1.35 5.7285; 1.35 4.9285; 1.35 4.305; 1.35 1.805; 1.25 1.805; 0.8574 0.416; 0.7541 0.416]);
model.component('mod1').geom('geom1').feature('wp1').geom.create('r1', 'Rectangle');
model.component('mod1').geom('geom1').feature('wp1').geom.feature('r1').label('core_barrel');
model.component('mod1').geom('geom1').feature('wp1').geom.feature('r1').set('pos', [1.65 0.416]);
model.component('mod1').geom('geom1').feature('wp1').geom.feature('r1').set('size', {'0.03' '5.7285-0.416'});
model.component('mod1').geom('geom1').feature('wp1').geom.create('r2', 'Rectangle');
model.component('mod1').geom('geom1').feature('wp1').geom.feature('r2').label('downcomer');
model.component('mod1').geom('geom1').feature('wp1').geom.feature('r2').set('pos', [1.68 0.416]);
model.component('mod1').geom('geom1').feature('wp1').geom.feature('r2').set('size', {'0.028' '5.7285-0.416'});
model.component('mod1').geom('geom1').feature('wp1').geom.create('r3', 'Rectangle');
model.component('mod1').geom('geom1').feature('wp1').geom.feature('r3').label('vessel');
model.component('mod1').geom('geom1').feature('wp1').geom.feature('r3').set('pos', [1.708 0.416]);
model.component('mod1').geom('geom1').feature('wp1').geom.feature('r3').set('size', {'0.06' '5.7285-0.416'});
model.component('mod1').geom('geom1').feature('wp1').geom.create('ic1', 'InterpolationCurve');
model.component('mod1').geom('geom1').feature('wp1').geom.feature('ic1').set('table', {'0.35' '1.5'; '0.35' '1.5+Hinlet'});
model.component('mod1').geom('geom1').feature('wp1').geom.create('pol6', 'Polygon');
model.component('mod1').geom('geom1').feature('wp1').geom.feature('pol6').label('ORCC');
model.component('mod1').geom('geom1').feature('wp1').geom.feature('pol6').set('source', 'table');
model.component('mod1').geom('geom1').feature('wp1').geom.feature('pol6').set('table', {'1.25' '1.805';  ...
'1.35' '1.805';  ...
'1.35' '5.7285';  ...
'0.89' '5.7285';  ...
'0.89' '4.9285';  ...
'1.25' '4.305';  ...
'1.25' '4.305-Houtlet'});
model.component('mod1').geom('geom1').create('rev1', 'Revolve');
model.component('mod1').geom('geom1').feature('rev1').set('angtype', 'full');
model.component('mod1').geom('geom1').feature('rev1').selection('input').set({'wp1'});
model.component('mod1').geom('geom1').create('wp2', 'WorkPlane');
model.component('mod1').geom('geom1').feature('wp2').set('quickz', 0.416);
model.component('mod1').geom('geom1').feature('wp2').set('unite', true);
model.component('mod1').geom('geom1').feature('wp2').geom.create('c9', 'Circle');
model.component('mod1').geom('geom1').feature('wp2').geom.feature('c9').set('r', 0.35);
model.component('mod1').geom('geom1').feature('wp2').geom.create('ic1', 'InterpolationCurve');
model.component('mod1').geom('geom1').feature('wp2').geom.feature('ic1').set('type', 'solid');
model.component('mod1').geom('geom1').feature('wp2').geom.feature('ic1').set('table', {'0.35*cos((45.000000-15)[deg])' '0.35*sin((45.000000-15)[deg])'; '0.2*cos((45.000000-15)[deg])' '0.2*sin((45.000000-15)[deg])'; '0.2*cos((45.000000+15)[deg])' '0.2*sin((45.000000+15)[deg])'; '0.35*cos((45.000000+15)[deg])' '0.35*sin((45.000000+15)[deg])'});
model.component('mod1').geom('geom1').feature('wp2').geom.create('ic2', 'InterpolationCurve');
model.component('mod1').geom('geom1').feature('wp2').geom.feature('ic2').set('type', 'solid');
model.component('mod1').geom('geom1').feature('wp2').geom.feature('ic2').set('table', {'0.35*cos((90.000000-15)[deg])' '0.35*sin((90.000000-15)[deg])'; '0.2*cos((90.000000-15)[deg])' '0.2*sin((90.000000-15)[deg])'; '0.2*cos((90.000000+15)[deg])' '0.2*sin((90.000000+15)[deg])'; '0.35*cos((90.000000+15)[deg])' '0.35*sin((90.000000+15)[deg])'});
model.component('mod1').geom('geom1').feature('wp2').geom.create('ic3', 'InterpolationCurve');
model.component('mod1').geom('geom1').feature('wp2').geom.feature('ic3').set('type', 'solid');
model.component('mod1').geom('geom1').feature('wp2').geom.feature('ic3').set('table', {'0.35*cos((135.000000-15)[deg])' '0.35*sin((135.000000-15)[deg])'; '0.2*cos((135.000000-15)[deg])' '0.2*sin((135.000000-15)[deg])'; '0.2*cos((135.000000+15)[deg])' '0.2*sin((135.000000+15)[deg])'; '0.35*cos((135.000000+15)[deg])' '0.35*sin((135.000000+15)[deg])'});
model.component('mod1').geom('geom1').feature('wp2').geom.create('ic4', 'InterpolationCurve');
model.component('mod1').geom('geom1').feature('wp2').geom.feature('ic4').set('type', 'solid');
model.component('mod1').geom('geom1').feature('wp2').geom.feature('ic4').set('table', {'0.35*cos((180.000000-15)[deg])' '0.35*sin((180.000000-15)[deg])'; '0.2*cos((180.000000-15)[deg])' '0.2*sin((180.000000-15)[deg])'; '0.2*cos((180.000000+15)[deg])' '0.2*sin((180.000000+15)[deg])'; '0.35*cos((180.000000+15)[deg])' '0.35*sin((180.000000+15)[deg])'});
model.component('mod1').geom('geom1').feature('wp2').geom.create('ic5', 'InterpolationCurve');
model.component('mod1').geom('geom1').feature('wp2').geom.feature('ic5').set('type', 'solid');
model.component('mod1').geom('geom1').feature('wp2').geom.feature('ic5').set('table', {'0.35*cos((225.000000-15)[deg])' '0.35*sin((225.000000-15)[deg])'; '0.2*cos((225.000000-15)[deg])' '0.2*sin((225.000000-15)[deg])'; '0.2*cos((225.000000+15)[deg])' '0.2*sin((225.000000+15)[deg])'; '0.35*cos((225.000000+15)[deg])' '0.35*sin((225.000000+15)[deg])'});
model.component('mod1').geom('geom1').feature('wp2').geom.create('ic6', 'InterpolationCurve');
model.component('mod1').geom('geom1').feature('wp2').geom.feature('ic6').set('type', 'solid');
model.component('mod1').geom('geom1').feature('wp2').geom.feature('ic6').set('table', {'0.35*cos((270.000000-15)[deg])' '0.35*sin((270.000000-15)[deg])'; '0.2*cos((270.000000-15)[deg])' '0.2*sin((270.000000-15)[deg])'; '0.2*cos((270.000000+15)[deg])' '0.2*sin((270.000000+15)[deg])'; '0.35*cos((270.000000+15)[deg])' '0.35*sin((270.000000+15)[deg])'});
model.component('mod1').geom('geom1').feature('wp2').geom.create('ic7', 'InterpolationCurve');
model.component('mod1').geom('geom1').feature('wp2').geom.feature('ic7').set('type', 'solid');
model.component('mod1').geom('geom1').feature('wp2').geom.feature('ic7').set('table', {'0.35*cos((315.000000-15)[deg])' '0.35*sin((315.000000-15)[deg])'; '0.2*cos((315.000000-15)[deg])' '0.2*sin((315.000000-15)[deg])'; '0.2*cos((315.000000+15)[deg])' '0.2*sin((315.000000+15)[deg])'; '0.35*cos((315.000000+15)[deg])' '0.35*sin((315.000000+15)[deg])'});
model.component('mod1').geom('geom1').feature('wp2').geom.create('ic8', 'InterpolationCurve');
model.component('mod1').geom('geom1').feature('wp2').geom.feature('ic8').set('type', 'solid');
model.component('mod1').geom('geom1').feature('wp2').geom.feature('ic8').set('table', {'0.35*cos((360.000000-15)[deg])' '0.35*sin((360.000000-15)[deg])'; '0.2*cos((360.000000-15)[deg])' '0.2*sin((360.000000-15)[deg])'; '0.2*cos((360.000000+15)[deg])' '0.2*sin((360.000000+15)[deg])'; '0.35*cos((360.000000+15)[deg])' '0.35*sin((360.000000+15)[deg])'});
model.component('mod1').geom('geom1').feature('wp2').geom.create('uni1', 'Union');
model.component('mod1').geom('geom1').feature('wp2').geom.feature('uni1').selection('input').set({'ic1' 'ic2' 'ic3' 'ic4' 'ic5' 'ic6' 'ic7' 'ic8'});
model.component('mod1').geom('geom1').feature('wp2').geom.create('int9', 'Intersection');
model.component('mod1').geom('geom1').feature('wp2').geom.feature('int9').selection('input').set({'c9' 'uni1'});
model.component('mod1').geom('geom1').create('ext1', 'Extrude');
model.component('mod1').geom('geom1').feature('ext1').label('contro_rod_channels');
model.component('mod1').geom('geom1').feature('ext1').setIndex('distance', '5.7285-0.416', 0);
model.component('mod1').geom('geom1').feature('ext1').selection('input').set({'wp2'});
model.component('mod1').geom('geom1').run;

model.component('mod1').variable.create('var1');
model.component('mod1').variable('var1').set('DT', '100[K]', 'core temperature rise');
model.component('mod1').variable('var1').set('mL', 'Qcore*decay/cpL/DT', 'salt mass flowrate');
model.component('mod1').variable('var1').set('g', '9.81[m/s^2]', 'gravitational acceleration');
model.component('mod1').variable('var1').set('SA', '6/d', 'pebble specific surface area');
model.component('mod1').variable('var1').set('v0in', 'mL*rhoL/Ain');
model.component('mod1').variable('var1').set('v0ghost', 'mL*rhoL/Ainghost');
model.component('mod1').variable('var1').set('Acore2', 'pi*2*(2.8656[m]-1.5[m])*0.9[m]', 'inlet cross-sectional area on diverging region inner reflector');
model.component('mod1').variable('var1').set('Acenter', 'pi*2*Hinlet*(0.35[m])', 'inlet cross-sectional area on core plug flow region inner reflector');
model.component('mod1').variable('var1').set('Ain', '2.8743 [m^2]');
model.component('mod1').variable('var1').set('Ainghost', '3.29867 [m^2]');
model.component('mod1').variable.create('var2');
model.component('mod1').variable('var2').set('Kbr', 'd^2/1012.5', 'bed permeability, Ergun/Kozeni');
model.component('mod1').variable('var2').set('cF', '0.52', 'Forchheimer drag coefficient, from Ergun correlation (Beaver coefficient)');
model.component('mod1').variable('var2').set('ep', '0.40', 'porosity');
model.component('mod1').variable('var2').set('bF', 'cF*rho_flibe(T_flibe)/(Kbr^0.5)', 'Forcheimer coefficient');
model.component('mod1').variable('var2').set('ec', '1', 'fictional porosity representing channels in the central reflector');
model.component('mod1').variable('var2').set('d', '3[cm]', 'pebble diameter');
model.component('mod1').variable.create('var3');
model.component('mod1').variable('var3').set('cpL', '2415.78[J/kg/K]', 'salt heat capacity, constant');
model.component('mod1').variable('var3').set('rhoL', '1962.67[kg/m^3]', 'salt density, 650C');
model.component('mod1').variable('var3').set('muL', '0.00678[Pa*s]', 'salt viscosity, 650C');
model.component('mod1').variable('var3').set('kL', '1.091[W/m/K]', 'salt thermal conductivity, 650C');
model.component('mod1').variable('var3').set('betaL', '0.00025[1/K]', 'salt thermal expansion coefficient, constant');
model.component('mod1').variable('var3').set('Tav', '650[degC]', 'salt reference temp for beta');
model.component('mod1').variable('var3').set('unitstest', 'betaL*To*rhoL*g');
model.component('mod1').variable('var3').set('Pr', 'muL*cpL/kL');
model.component('mod1').variable('var3').set('h_conv', '(2+1.1*(Pr^(1.0/3))*(Re^(3.0/5)))*kL/d', '(2+1.1*Pr^(1/3)*(rhoL*d*br.U/muL)^0.6)*kL/d');
model.component('mod1').variable('var3').set('Re', '(rhoL*d*br.U/muL)');
model.component('mod1').variable.create('var4');
model.component('mod1').variable('var4').set('rho_fuel', '1810[kg/m^3]', 'sinap ppt(Overview of TMSR-SF1 & SF0)');
model.component('mod1').variable('var4').set('k_fuel', '15[W/m/K]');
model.component('mod1').variable('var4').set('cp_fuel', '1744[J/kg/K]', 'graphite fuel heat capacity');
model.component('mod1').variable('var4').selection.geom('geom1', 3);
model.component('mod1').variable('var4').selection.set([7]);
model.component('mod1').variable.create('var_xs_CR');
model.component('mod1').variable('var_xs_CR').set('beta1', '5.38503000e-03');
model.component('mod1').variable('var_xs_CR').set('betas1', '1.64712000e-04');
model.component('mod1').variable('var_xs_CR').set('betas2', '9.85399000e-04');
model.component('mod1').variable('var_xs_CR').set('betas3', '8.56807000e-04');
model.component('mod1').variable('var_xs_CR').set('betas4', '2.40172000e-03');
model.component('mod1').variable('var_xs_CR').set('betas5', '7.27014000e-04');
model.component('mod1').variable('var_xs_CR').set('betas6', '2.49379000e-04');
model.component('mod1').variable('var_xs_CR').set('chid1', '0.00000000e+00');
model.component('mod1').variable('var_xs_CR').set('chid2', '0.00000000e+00');
model.component('mod1').variable('var_xs_CR').set('chid3', '0.00000000e+00');
model.component('mod1').variable('var_xs_CR').set('chid4', '0.00000000e+00');
model.component('mod1').variable('var_xs_CR').set('chid5', '0.00000000e+00');
model.component('mod1').variable('var_xs_CR').set('chid6', '0.00000000e+00');
model.component('mod1').variable('var_xs_CR').set('chid7', '0.00000000e+00');
model.component('mod1').variable('var_xs_CR').set('chid8', '0.00000000e+00');
model.component('mod1').variable('var_xs_CR').set('chip1', '0.00000000e+00');
model.component('mod1').variable('var_xs_CR').set('chip2', '0.00000000e+00');
model.component('mod1').variable('var_xs_CR').set('chip3', '0.00000000e+00');
model.component('mod1').variable('var_xs_CR').set('chip4', '0.00000000e+00');
model.component('mod1').variable('var_xs_CR').set('chip5', '0.00000000e+00');
model.component('mod1').variable('var_xs_CR').set('chip6', '0.00000000e+00');
model.component('mod1').variable('var_xs_CR').set('chip7', '0.00000000e+00');
model.component('mod1').variable('var_xs_CR').set('chip8', '0.00000000e+00');
model.component('mod1').variable('var_xs_CR').set('chit1', '0.00000000e+00');
model.component('mod1').variable('var_xs_CR').set('chit2', '0.00000000e+00');
model.component('mod1').variable('var_xs_CR').set('chit3', '0.00000000e+00');
model.component('mod1').variable('var_xs_CR').set('chit4', '0.00000000e+00');
model.component('mod1').variable('var_xs_CR').set('chit5', '0.00000000e+00');
model.component('mod1').variable('var_xs_CR').set('chit6', '0.00000000e+00');
model.component('mod1').variable('var_xs_CR').set('chit7', '0.00000000e+00');
model.component('mod1').variable('var_xs_CR').set('chit8', '0.00000000e+00');
model.component('mod1').variable('var_xs_CR').set('diff11', '1.85379000e+00[cm]');
model.component('mod1').variable('var_xs_CR').set('diff12', '8.71233000e-01[cm]');
model.component('mod1').variable('var_xs_CR').set('diff13', '6.59364000e-01[cm]');
model.component('mod1').variable('var_xs_CR').set('diff14', '6.56818000e-01[cm]');
model.component('mod1').variable('var_xs_CR').set('diff15', '6.53844000e-01[cm]');
model.component('mod1').variable('var_xs_CR').set('diff16', '6.46231000e-01[cm]');
model.component('mod1').variable('var_xs_CR').set('diff17', '6.19966000e-01[cm]');
model.component('mod1').variable('var_xs_CR').set('diff18', '5.53943000e-01[cm]');
model.component('mod1').variable('var_xs_CR').set('fiss1', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('fiss2', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('fiss3', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('fiss4', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('fiss5', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('fiss6', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('fiss7', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('fiss8', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('invV1', '4.82248000e-10[s/cm]');
model.component('mod1').variable('var_xs_CR').set('invV2', '1.99013000e-09[s/cm]');
model.component('mod1').variable('var_xs_CR').set('invV3', '3.36231000e-08[s/cm]');
model.component('mod1').variable('var_xs_CR').set('invV4', '2.07731000e-07[s/cm]');
model.component('mod1').variable('var_xs_CR').set('invV5', '7.21934000e-07[s/cm]');
model.component('mod1').variable('var_xs_CR').set('invV6', '1.37734000e-06[s/cm]');
model.component('mod1').variable('var_xs_CR').set('invV7', '2.16808000e-06[s/cm]');
model.component('mod1').variable('var_xs_CR').set('invV8', '4.15949000e-06[s/cm]');
model.component('mod1').variable('var_xs_CR').set('kappa1', '0.00000000e+00[MeV]');
model.component('mod1').variable('var_xs_CR').set('kappa2', '0.00000000e+00[MeV]');
model.component('mod1').variable('var_xs_CR').set('kappa3', '0.00000000e+00[MeV]');
model.component('mod1').variable('var_xs_CR').set('kappa4', '0.00000000e+00[MeV]');
model.component('mod1').variable('var_xs_CR').set('kappa5', '0.00000000e+00[MeV]');
model.component('mod1').variable('var_xs_CR').set('kappa6', '0.00000000e+00[MeV]');
model.component('mod1').variable('var_xs_CR').set('kappa7', '0.00000000e+00[MeV]');
model.component('mod1').variable('var_xs_CR').set('kappa8', '0.00000000e+00[MeV]');
model.component('mod1').variable('var_xs_CR').set('lambdas1', '1.25435000e-02[1/s]');
model.component('mod1').variable('var_xs_CR').set('lambdas2', '3.13212000e-02[1/s]');
model.component('mod1').variable('var_xs_CR').set('lambdas3', '1.09688000e-01[1/s]');
model.component('mod1').variable('var_xs_CR').set('lambdas4', '3.16554000e-01[1/s]');
model.component('mod1').variable('var_xs_CR').set('lambdas5', '1.29420000e+00[1/s]');
model.component('mod1').variable('var_xs_CR').set('lambdas6', '8.03336000e+00[1/s]');
model.component('mod1').variable('var_xs_CR').set('nsf1', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('nsf2', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('nsf3', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('nsf4', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('nsf5', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('nsf6', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('nsf7', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('nsf8', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('rem1', '4.51098000e-02[1/cm]');
model.component('mod1').variable('var_xs_CR').set('rem2', '2.23785000e-02[1/cm]');
model.component('mod1').variable('var_xs_CR').set('rem3', '1.50638000e-02[1/cm]');
model.component('mod1').variable('var_xs_CR').set('rem4', '3.40876000e-02[1/cm]');
model.component('mod1').variable('var_xs_CR').set('rem5', '7.95839000e-02[1/cm]');
model.component('mod1').variable('var_xs_CR').set('rem6', '1.02045000e-01[1/cm]');
model.component('mod1').variable('var_xs_CR').set('rem7', '8.66221000e-02[1/cm]');
model.component('mod1').variable('var_xs_CR').set('rem8', '1.06214000e-01[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat11', '1.59845000e-01[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat12', '4.49962000e-02[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat13', '2.13792000e-06[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat14', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat15', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat16', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat17', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat18', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat21', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat22', '4.17134000e-01[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat23', '2.23783000e-02[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat24', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat25', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat26', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat27', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat28', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat31', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat32', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat33', '5.20733000e-01[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat34', '1.50606000e-02[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat35', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat36', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat37', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat38', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat41', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat42', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat43', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat44', '5.03551000e-01[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat45', '3.40673000e-02[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat46', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat47', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat48', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat51', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat52', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat53', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat54', '2.81733000e-04[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat55', '4.59004000e-01[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat56', '7.80185000e-02[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat57', '1.21393000e-03[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat58', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat61', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat62', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat63', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat64', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat65', '1.32968000e-02[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat66', '4.39082000e-01[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat67', '8.41623000e-02[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat68', '4.45411000e-03[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat71', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat72', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat73', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat74', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat75', '1.58462000e-04[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat76', '5.85442000e-02[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat77', '4.65831000e-01[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat78', '2.77121000e-02[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat81', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat82', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat83', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat84', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat85', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat86', '1.00144000e-02[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat87', '9.58060000e-02[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat88', '4.78562000e-01[1/cm]');
model.component('mod1').variable('var_xs_CR').set('tot1', '2.04955000e-01[1/cm]');
model.component('mod1').variable('var_xs_CR').set('tot2', '4.39512000e-01[1/cm]');
model.component('mod1').variable('var_xs_CR').set('tot3', '5.35797000e-01[1/cm]');
model.component('mod1').variable('var_xs_CR').set('tot4', '5.37638000e-01[1/cm]');
model.component('mod1').variable('var_xs_CR').set('tot5', '5.38588000e-01[1/cm]');
model.component('mod1').variable('var_xs_CR').set('tot6', '5.41127000e-01[1/cm]');
model.component('mod1').variable('var_xs_CR').set('tot7', '5.52453000e-01[1/cm]');
model.component('mod1').variable('var_xs_CR').set('tot8', '5.84776000e-01[1/cm]');
model.component('mod1').variable('var_xs_CR').set('diff21', '2.57142857e-01*tot1[1/cm]');
model.component('mod1').variable('var_xs_CR').set('diff22', '2.57142857e-01*tot2[1/cm]');
model.component('mod1').variable('var_xs_CR').set('diff23', '2.57142857e-01*tot3[1/cm]');
model.component('mod1').variable('var_xs_CR').set('diff24', '2.57142857e-01*tot4[1/cm]');
model.component('mod1').variable('var_xs_CR').set('diff25', '2.57142857e-01*tot5[1/cm]');
model.component('mod1').variable('var_xs_CR').set('diff26', '2.57142857e-01*tot6[1/cm]');
model.component('mod1').variable('var_xs_CR').set('diff27', '2.57142857e-01*tot7[1/cm]');
model.component('mod1').variable('var_xs_CR').set('diff28', '2.57142857e-01*tot8[1/cm]');
model.component('mod1').variable('var_xs_CR').selection.geom('geom1', 3);
model.component('mod1').variable('var_xs_CR').selection.set([8]);
model.component('mod1').variable.create('var_xs_Blanket');
model.component('mod1').variable('var_xs_Blanket').set('beta1', '5.38503000e-03');
model.component('mod1').variable('var_xs_Blanket').set('betas1', '1.64712000e-04');
model.component('mod1').variable('var_xs_Blanket').set('betas2', '9.85399000e-04');
model.component('mod1').variable('var_xs_Blanket').set('betas3', '8.56807000e-04');
model.component('mod1').variable('var_xs_Blanket').set('betas4', '2.40172000e-03');
model.component('mod1').variable('var_xs_Blanket').set('betas5', '7.27014000e-04');
model.component('mod1').variable('var_xs_Blanket').set('betas6', '2.49379000e-04');
model.component('mod1').variable('var_xs_Blanket').set('chid1', '0.00000000e+00');
model.component('mod1').variable('var_xs_Blanket').set('chid2', '0.00000000e+00');
model.component('mod1').variable('var_xs_Blanket').set('chid3', '0.00000000e+00');
model.component('mod1').variable('var_xs_Blanket').set('chid4', '0.00000000e+00');
model.component('mod1').variable('var_xs_Blanket').set('chid5', '0.00000000e+00');
model.component('mod1').variable('var_xs_Blanket').set('chid6', '0.00000000e+00');
model.component('mod1').variable('var_xs_Blanket').set('chid7', '0.00000000e+00');
model.component('mod1').variable('var_xs_Blanket').set('chid8', '0.00000000e+00');
model.component('mod1').variable('var_xs_Blanket').set('chip1', '0.00000000e+00');
model.component('mod1').variable('var_xs_Blanket').set('chip2', '0.00000000e+00');
model.component('mod1').variable('var_xs_Blanket').set('chip3', '0.00000000e+00');
model.component('mod1').variable('var_xs_Blanket').set('chip4', '0.00000000e+00');
model.component('mod1').variable('var_xs_Blanket').set('chip5', '0.00000000e+00');
model.component('mod1').variable('var_xs_Blanket').set('chip6', '0.00000000e+00');
model.component('mod1').variable('var_xs_Blanket').set('chip7', '0.00000000e+00');
model.component('mod1').variable('var_xs_Blanket').set('chip8', '0.00000000e+00');
model.component('mod1').variable('var_xs_Blanket').set('chit1', '0.00000000e+00');
model.component('mod1').variable('var_xs_Blanket').set('chit2', '0.00000000e+00');
model.component('mod1').variable('var_xs_Blanket').set('chit3', '0.00000000e+00');
model.component('mod1').variable('var_xs_Blanket').set('chit4', '0.00000000e+00');
model.component('mod1').variable('var_xs_Blanket').set('chit5', '0.00000000e+00');
model.component('mod1').variable('var_xs_Blanket').set('chit6', '0.00000000e+00');
model.component('mod1').variable('var_xs_Blanket').set('chit7', '0.00000000e+00');
model.component('mod1').variable('var_xs_Blanket').set('chit8', '0.00000000e+00');
model.component('mod1').variable('var_xs_Blanket').set('diff11', '1.95680000e+00[cm]');
model.component('mod1').variable('var_xs_Blanket').set('diff12', '9.24823000e-01[cm]');
model.component('mod1').variable('var_xs_Blanket').set('diff13', '8.19871000e-01[cm]');
model.component('mod1').variable('var_xs_Blanket').set('diff14', '8.19441000e-01[cm]');
model.component('mod1').variable('var_xs_Blanket').set('diff15', '8.16485000e-01[cm]');
model.component('mod1').variable('var_xs_Blanket').set('diff16', '8.07291000e-01[cm]');
model.component('mod1').variable('var_xs_Blanket').set('diff17', '7.78831000e-01[cm]');
model.component('mod1').variable('var_xs_Blanket').set('diff18', '6.99971000e-01[cm]');
model.component('mod1').variable('var_xs_Blanket').set('fiss1', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('fiss2', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('fiss3', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('fiss4', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('fiss5', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('fiss6', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('fiss7', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('fiss8', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('invV1', '4.83120000e-10[s/cm]');
model.component('mod1').variable('var_xs_Blanket').set('invV2', '2.05752000e-09[s/cm]');
model.component('mod1').variable('var_xs_Blanket').set('invV3', '3.30619000e-08[s/cm]');
model.component('mod1').variable('var_xs_Blanket').set('invV4', '2.06919000e-07[s/cm]');
model.component('mod1').variable('var_xs_Blanket').set('invV5', '6.95827000e-07[s/cm]');
model.component('mod1').variable('var_xs_Blanket').set('invV6', '1.37324000e-06[s/cm]');
model.component('mod1').variable('var_xs_Blanket').set('invV7', '2.16793000e-06[s/cm]');
model.component('mod1').variable('var_xs_Blanket').set('invV8', '4.17694000e-06[s/cm]');
model.component('mod1').variable('var_xs_Blanket').set('kappa1', '0.00000000e+00[MeV]');
model.component('mod1').variable('var_xs_Blanket').set('kappa2', '0.00000000e+00[MeV]');
model.component('mod1').variable('var_xs_Blanket').set('kappa3', '0.00000000e+00[MeV]');
model.component('mod1').variable('var_xs_Blanket').set('kappa4', '0.00000000e+00[MeV]');
model.component('mod1').variable('var_xs_Blanket').set('kappa5', '0.00000000e+00[MeV]');
model.component('mod1').variable('var_xs_Blanket').set('kappa6', '0.00000000e+00[MeV]');
model.component('mod1').variable('var_xs_Blanket').set('kappa7', '0.00000000e+00[MeV]');
model.component('mod1').variable('var_xs_Blanket').set('kappa8', '0.00000000e+00[MeV]');
model.component('mod1').variable('var_xs_Blanket').set('lambdas1', '1.25435000e-02[1/s]');
model.component('mod1').variable('var_xs_Blanket').set('lambdas2', '3.13212000e-02[1/s]');
model.component('mod1').variable('var_xs_Blanket').set('lambdas3', '1.09688000e-01[1/s]');
model.component('mod1').variable('var_xs_Blanket').set('lambdas4', '3.16554000e-01[1/s]');
model.component('mod1').variable('var_xs_Blanket').set('lambdas5', '1.29420000e+00[1/s]');
model.component('mod1').variable('var_xs_Blanket').set('lambdas6', '8.03336000e+00[1/s]');
model.component('mod1').variable('var_xs_Blanket').set('nsf1', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('nsf2', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('nsf3', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('nsf4', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('nsf5', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('nsf6', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('nsf7', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('nsf8', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('rem1', '4.86907000e-02[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('rem2', '2.09077000e-02[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('rem3', '1.14461000e-02[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('rem4', '2.62337000e-02[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('rem5', '5.35459000e-02[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('rem6', '8.56291000e-02[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('rem7', '7.84862000e-02[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('rem8', '1.04706000e-01[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat11', '1.55146000e-01[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat12', '4.79885000e-02[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat13', '1.83551000e-05[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat14', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat15', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat16', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat17', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat18', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat21', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat22', '3.90140000e-01[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat23', '2.08762000e-02[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat24', '1.53926000e-08[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat25', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat26', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat27', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat28', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat31', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat32', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat33', '4.18905000e-01[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat34', '1.14377000e-02[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat35', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat36', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat37', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat38', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat41', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat42', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat43', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat44', '4.04137000e-01[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat45', '2.61864000e-02[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat46', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat47', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat48', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat51', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat52', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat53', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat54', '2.63871000e-04[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat55', '3.77567000e-01[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat56', '5.23953000e-02[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat57', '7.28807000e-04[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat58', '8.73713000e-07[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat61', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat62', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat63', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat64', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat65', '1.11589000e-02[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat66', '3.47990000e-01[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat67', '7.11408000e-02[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat68', '3.01993000e-03[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat71', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat72', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat73', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat74', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat75', '1.09476000e-04[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat76', '4.95244000e-02[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat77', '3.63824000e-01[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat78', '2.83642000e-02[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat81', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat82', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat83', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat84', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat85', '3.55394000e-07[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat86', '6.83924000e-03[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat87', '9.69274000e-02[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat88', '3.66350000e-01[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('tot1', '2.03837000e-01[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('tot2', '4.11048000e-01[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('tot3', '4.30352000e-01[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('tot4', '4.30371000e-01[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('tot5', '4.31113000e-01[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('tot6', '4.33620000e-01[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('tot7', '4.42310000e-01[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('tot8', '4.71056000e-01[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('diff21', '2.57142857e-01*tot1[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('diff22', '2.57142857e-01*tot2[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('diff23', '2.57142857e-01*tot3[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('diff24', '2.57142857e-01*tot4[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('diff25', '2.57142857e-01*tot5[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('diff26', '2.57142857e-01*tot6[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('diff27', '2.57142857e-01*tot7[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('diff28', '2.57142857e-01*tot8[1/cm]');
model.component('mod1').variable('var_xs_Blanket').selection.geom('geom1', 3);
model.component('mod1').variable('var_xs_Blanket').selection.set([6]);
model.component('mod1').variable.create('var_xs_ORCC');
model.component('mod1').variable('var_xs_ORCC').set('beta1', '5.38503000e-03');
model.component('mod1').variable('var_xs_ORCC').set('betas1', '1.64712000e-04');
model.component('mod1').variable('var_xs_ORCC').set('betas2', '9.85399000e-04');
model.component('mod1').variable('var_xs_ORCC').set('betas3', '8.56807000e-04');
model.component('mod1').variable('var_xs_ORCC').set('betas4', '2.40172000e-03');
model.component('mod1').variable('var_xs_ORCC').set('betas5', '7.27014000e-04');
model.component('mod1').variable('var_xs_ORCC').set('betas6', '2.49379000e-04');
model.component('mod1').variable('var_xs_ORCC').set('chid1', '0.00000000e+00');
model.component('mod1').variable('var_xs_ORCC').set('chid2', '0.00000000e+00');
model.component('mod1').variable('var_xs_ORCC').set('chid3', '0.00000000e+00');
model.component('mod1').variable('var_xs_ORCC').set('chid4', '0.00000000e+00');
model.component('mod1').variable('var_xs_ORCC').set('chid5', '0.00000000e+00');
model.component('mod1').variable('var_xs_ORCC').set('chid6', '0.00000000e+00');
model.component('mod1').variable('var_xs_ORCC').set('chid7', '0.00000000e+00');
model.component('mod1').variable('var_xs_ORCC').set('chid8', '0.00000000e+00');
model.component('mod1').variable('var_xs_ORCC').set('chip1', '0.00000000e+00');
model.component('mod1').variable('var_xs_ORCC').set('chip2', '0.00000000e+00');
model.component('mod1').variable('var_xs_ORCC').set('chip3', '0.00000000e+00');
model.component('mod1').variable('var_xs_ORCC').set('chip4', '0.00000000e+00');
model.component('mod1').variable('var_xs_ORCC').set('chip5', '0.00000000e+00');
model.component('mod1').variable('var_xs_ORCC').set('chip6', '0.00000000e+00');
model.component('mod1').variable('var_xs_ORCC').set('chip7', '0.00000000e+00');
model.component('mod1').variable('var_xs_ORCC').set('chip8', '0.00000000e+00');
model.component('mod1').variable('var_xs_ORCC').set('chit1', '0.00000000e+00');
model.component('mod1').variable('var_xs_ORCC').set('chit2', '0.00000000e+00');
model.component('mod1').variable('var_xs_ORCC').set('chit3', '0.00000000e+00');
model.component('mod1').variable('var_xs_ORCC').set('chit4', '0.00000000e+00');
model.component('mod1').variable('var_xs_ORCC').set('chit5', '0.00000000e+00');
model.component('mod1').variable('var_xs_ORCC').set('chit6', '0.00000000e+00');
model.component('mod1').variable('var_xs_ORCC').set('chit7', '0.00000000e+00');
model.component('mod1').variable('var_xs_ORCC').set('chit8', '0.00000000e+00');
model.component('mod1').variable('var_xs_ORCC').set('diff11', '2.02458000e+00[cm]');
model.component('mod1').variable('var_xs_ORCC').set('diff12', '9.95229000e-01[cm]');
model.component('mod1').variable('var_xs_ORCC').set('diff13', '1.17329000e+00[cm]');
model.component('mod1').variable('var_xs_ORCC').set('diff14', '1.18700000e+00[cm]');
model.component('mod1').variable('var_xs_ORCC').set('diff15', '1.18469000e+00[cm]');
model.component('mod1').variable('var_xs_ORCC').set('diff16', '1.17367000e+00[cm]');
model.component('mod1').variable('var_xs_ORCC').set('diff17', '1.14966000e+00[cm]');
model.component('mod1').variable('var_xs_ORCC').set('diff18', '1.05104000e+00[cm]');
model.component('mod1').variable('var_xs_ORCC').set('fiss1', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('fiss2', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('fiss3', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('fiss4', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('fiss5', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('fiss6', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('fiss7', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('fiss8', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('invV1', '4.80958000e-10[s/cm]');
model.component('mod1').variable('var_xs_ORCC').set('invV2', '2.30945000e-09[s/cm]');
model.component('mod1').variable('var_xs_ORCC').set('invV3', '3.71844000e-08[s/cm]');
model.component('mod1').variable('var_xs_ORCC').set('invV4', '2.11124000e-07[s/cm]');
model.component('mod1').variable('var_xs_ORCC').set('invV5', '7.39574000e-07[s/cm]');
model.component('mod1').variable('var_xs_ORCC').set('invV6', '1.37911000e-06[s/cm]');
model.component('mod1').variable('var_xs_ORCC').set('invV7', '2.16867000e-06[s/cm]');
model.component('mod1').variable('var_xs_ORCC').set('invV8', '4.18936000e-06[s/cm]');
model.component('mod1').variable('var_xs_ORCC').set('kappa1', '0.00000000e+00[MeV]');
model.component('mod1').variable('var_xs_ORCC').set('kappa2', '0.00000000e+00[MeV]');
model.component('mod1').variable('var_xs_ORCC').set('kappa3', '0.00000000e+00[MeV]');
model.component('mod1').variable('var_xs_ORCC').set('kappa4', '0.00000000e+00[MeV]');
model.component('mod1').variable('var_xs_ORCC').set('kappa5', '0.00000000e+00[MeV]');
model.component('mod1').variable('var_xs_ORCC').set('kappa6', '0.00000000e+00[MeV]');
model.component('mod1').variable('var_xs_ORCC').set('kappa7', '0.00000000e+00[MeV]');
model.component('mod1').variable('var_xs_ORCC').set('kappa8', '0.00000000e+00[MeV]');
model.component('mod1').variable('var_xs_ORCC').set('lambdas1', '1.25435000e-02[1/s]');
model.component('mod1').variable('var_xs_ORCC').set('lambdas2', '3.13212000e-02[1/s]');
model.component('mod1').variable('var_xs_ORCC').set('lambdas3', '1.09688000e-01[1/s]');
model.component('mod1').variable('var_xs_ORCC').set('lambdas4', '3.16554000e-01[1/s]');
model.component('mod1').variable('var_xs_ORCC').set('lambdas5', '1.29420000e+00[1/s]');
model.component('mod1').variable('var_xs_ORCC').set('lambdas6', '8.03336000e+00[1/s]');
model.component('mod1').variable('var_xs_ORCC').set('nsf1', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('nsf2', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('nsf3', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('nsf4', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('nsf5', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('nsf6', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('nsf7', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('nsf8', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('rem1', '5.94067000e-02[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('rem2', '2.09750000e-02[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('rem3', '9.46498000e-03[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('rem4', '1.84947000e-02[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('rem5', '5.00095000e-02[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('rem6', '6.89700000e-02[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('rem7', '7.43990000e-02[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('rem8', '1.15508000e-01[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat11', '1.56999000e-01[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat12', '5.75474000e-02[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat13', '4.71965000e-05[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat14', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat15', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat16', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat17', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat18', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat21', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat22', '3.52245000e-01[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat23', '2.08999000e-02[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat24', '4.93147000e-08[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat25', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat26', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat27', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat28', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat31', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat32', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat33', '2.90168000e-01[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat34', '9.44562000e-03[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat35', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat36', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat37', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat38', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat41', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat42', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat43', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat44', '2.77534000e-01[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat45', '1.83979000e-02[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat46', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat47', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat48', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat51', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat52', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat53', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat54', '1.67060000e-04[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat55', '2.46475000e-01[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat56', '4.89727000e-02[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat57', '5.31137000e-04[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat58', '4.32470000e-06[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat61', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat62', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat63', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat64', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat65', '7.65262000e-03[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat66', '2.30102000e-01[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat67', '5.95013000e-02[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat68', '1.19096000e-03[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat71', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat72', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat73', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat74', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat75', '5.23184000e-05[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat76', '4.12274000e-02[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat77', '2.30410000e-01[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat78', '3.21352000e-02[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat81', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat82', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat83', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat84', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat85', '1.71670000e-06[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat86', '2.79580000e-03[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat87', '1.10797000e-01[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat88', '2.17028000e-01[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('tot1', '2.16406000e-01[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('tot2', '3.73220000e-01[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('tot3', '2.99633000e-01[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('tot4', '2.96029000e-01[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('tot5', '2.96484000e-01[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('tot6', '2.99072000e-01[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('tot7', '3.04809000e-01[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('tot8', '3.32536000e-01[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('diff21', '2.57142857e-01*tot1[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('diff22', '2.57142857e-01*tot2[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('diff23', '2.57142857e-01*tot3[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('diff24', '2.57142857e-01*tot4[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('diff25', '2.57142857e-01*tot5[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('diff26', '2.57142857e-01*tot6[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('diff27', '2.57142857e-01*tot7[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('diff28', '2.57142857e-01*tot8[1/cm]');
model.component('mod1').variable('var_xs_ORCC').selection.geom('geom1', 3);
model.component('mod1').variable('var_xs_ORCC').selection.set([5]);
model.component('mod1').variable.create('var_xs_OR');
model.component('mod1').variable('var_xs_OR').set('beta1', '5.38503000e-03');
model.component('mod1').variable('var_xs_OR').set('betas1', '1.64712000e-04');
model.component('mod1').variable('var_xs_OR').set('betas2', '9.85399000e-04');
model.component('mod1').variable('var_xs_OR').set('betas3', '8.56807000e-04');
model.component('mod1').variable('var_xs_OR').set('betas4', '2.40172000e-03');
model.component('mod1').variable('var_xs_OR').set('betas5', '7.27014000e-04');
model.component('mod1').variable('var_xs_OR').set('betas6', '2.49379000e-04');
model.component('mod1').variable('var_xs_OR').set('chid1', '0.00000000e+00');
model.component('mod1').variable('var_xs_OR').set('chid2', '0.00000000e+00');
model.component('mod1').variable('var_xs_OR').set('chid3', '0.00000000e+00');
model.component('mod1').variable('var_xs_OR').set('chid4', '0.00000000e+00');
model.component('mod1').variable('var_xs_OR').set('chid5', '0.00000000e+00');
model.component('mod1').variable('var_xs_OR').set('chid6', '0.00000000e+00');
model.component('mod1').variable('var_xs_OR').set('chid7', '0.00000000e+00');
model.component('mod1').variable('var_xs_OR').set('chid8', '0.00000000e+00');
model.component('mod1').variable('var_xs_OR').set('chip1', '0.00000000e+00');
model.component('mod1').variable('var_xs_OR').set('chip2', '0.00000000e+00');
model.component('mod1').variable('var_xs_OR').set('chip3', '0.00000000e+00');
model.component('mod1').variable('var_xs_OR').set('chip4', '0.00000000e+00');
model.component('mod1').variable('var_xs_OR').set('chip5', '0.00000000e+00');
model.component('mod1').variable('var_xs_OR').set('chip6', '0.00000000e+00');
model.component('mod1').variable('var_xs_OR').set('chip7', '0.00000000e+00');
model.component('mod1').variable('var_xs_OR').set('chip8', '0.00000000e+00');
model.component('mod1').variable('var_xs_OR').set('chit1', '0.00000000e+00');
model.component('mod1').variable('var_xs_OR').set('chit2', '0.00000000e+00');
model.component('mod1').variable('var_xs_OR').set('chit3', '0.00000000e+00');
model.component('mod1').variable('var_xs_OR').set('chit4', '0.00000000e+00');
model.component('mod1').variable('var_xs_OR').set('chit5', '0.00000000e+00');
model.component('mod1').variable('var_xs_OR').set('chit6', '0.00000000e+00');
model.component('mod1').variable('var_xs_OR').set('chit7', '0.00000000e+00');
model.component('mod1').variable('var_xs_OR').set('chit8', '0.00000000e+00');
model.component('mod1').variable('var_xs_OR').set('diff11', '1.91408000e+00[cm]');
model.component('mod1').variable('var_xs_OR').set('diff12', '8.52247000e-01[cm]');
model.component('mod1').variable('var_xs_OR').set('diff13', '6.58974000e-01[cm]');
model.component('mod1').variable('var_xs_OR').set('diff14', '6.56651000e-01[cm]');
model.component('mod1').variable('var_xs_OR').set('diff15', '6.53107000e-01[cm]');
model.component('mod1').variable('var_xs_OR').set('diff16', '6.46171000e-01[cm]');
model.component('mod1').variable('var_xs_OR').set('diff17', '6.19859000e-01[cm]');
model.component('mod1').variable('var_xs_OR').set('diff18', '5.53895000e-01[cm]');
model.component('mod1').variable('var_xs_OR').set('fiss1', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('fiss2', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('fiss3', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('fiss4', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('fiss5', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('fiss6', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('fiss7', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('fiss8', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('invV1', '4.77903000e-10[s/cm]');
model.component('mod1').variable('var_xs_OR').set('invV2', '2.09359000e-09[s/cm]');
model.component('mod1').variable('var_xs_OR').set('invV3', '3.86037000e-08[s/cm]');
model.component('mod1').variable('var_xs_OR').set('invV4', '2.12906000e-07[s/cm]');
model.component('mod1').variable('var_xs_OR').set('invV5', '8.10944000e-07[s/cm]');
model.component('mod1').variable('var_xs_OR').set('invV6', '1.38405000e-06[s/cm]');
model.component('mod1').variable('var_xs_OR').set('invV7', '2.17033000e-06[s/cm]');
model.component('mod1').variable('var_xs_OR').set('invV8', '4.16019000e-06[s/cm]');
model.component('mod1').variable('var_xs_OR').set('kappa1', '0.00000000e+00[MeV]');
model.component('mod1').variable('var_xs_OR').set('kappa2', '0.00000000e+00[MeV]');
model.component('mod1').variable('var_xs_OR').set('kappa3', '0.00000000e+00[MeV]');
model.component('mod1').variable('var_xs_OR').set('kappa4', '0.00000000e+00[MeV]');
model.component('mod1').variable('var_xs_OR').set('kappa5', '0.00000000e+00[MeV]');
model.component('mod1').variable('var_xs_OR').set('kappa6', '0.00000000e+00[MeV]');
model.component('mod1').variable('var_xs_OR').set('kappa7', '0.00000000e+00[MeV]');
model.component('mod1').variable('var_xs_OR').set('kappa8', '0.00000000e+00[MeV]');
model.component('mod1').variable('var_xs_OR').set('lambdas1', '1.25435000e-02[1/s]');
model.component('mod1').variable('var_xs_OR').set('lambdas2', '3.13212000e-02[1/s]');
model.component('mod1').variable('var_xs_OR').set('lambdas3', '1.09688000e-01[1/s]');
model.component('mod1').variable('var_xs_OR').set('lambdas4', '3.16554000e-01[1/s]');
model.component('mod1').variable('var_xs_OR').set('lambdas5', '1.29420000e+00[1/s]');
model.component('mod1').variable('var_xs_OR').set('lambdas6', '8.03336000e+00[1/s]');
model.component('mod1').variable('var_xs_OR').set('nsf1', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('nsf2', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('nsf3', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('nsf4', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('nsf5', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('nsf6', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('nsf7', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('nsf8', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('rem1', '4.57588000e-02[1/cm]');
model.component('mod1').variable('var_xs_OR').set('rem2', '2.63133000e-02[1/cm]');
model.component('mod1').variable('var_xs_OR').set('rem3', '1.99450000e-02[1/cm]');
model.component('mod1').variable('var_xs_OR').set('rem4', '3.80198000e-02[1/cm]');
model.component('mod1').variable('var_xs_OR').set('rem5', '1.25456000e-01[1/cm]');
model.component('mod1').variable('var_xs_OR').set('rem6', '1.02997000e-01[1/cm]');
model.component('mod1').variable('var_xs_OR').set('rem7', '8.64616000e-02[1/cm]');
model.component('mod1').variable('var_xs_OR').set('rem8', '1.06180000e-01[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat11', '1.56768000e-01[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat12', '4.56348000e-02[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat13', '3.66689000e-06[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat14', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat15', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat16', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat17', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat18', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat21', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat22', '4.20616000e-01[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat23', '2.63132000e-02[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat24', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat25', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat26', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat27', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat28', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat31', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat32', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat33', '5.16231000e-01[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat34', '1.99412000e-02[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat35', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat36', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat37', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat38', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat41', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat42', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat43', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat44', '4.99628000e-01[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat45', '3.79994000e-02[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat46', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat47', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat48', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat51', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat52', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat53', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat54', '1.57482000e-04[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat55', '4.13393000e-01[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat56', '1.23270000e-01[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat57', '1.94981000e-03[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat58', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat61', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat62', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat63', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat64', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat65', '1.23103000e-02[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat66', '4.38160000e-01[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat67', '8.59813000e-02[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat68', '4.57344000e-03[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat71', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat72', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat73', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat74', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat75', '1.57137000e-04[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat76', '5.82717000e-02[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat77', '4.66047000e-01[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat78', '2.78258000e-02[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat81', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat82', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat83', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat84', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat85', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat86', '1.00109000e-02[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat87', '9.57752000e-02[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat88', '4.78620000e-01[1/cm]');
model.component('mod1').variable('var_xs_OR').set('tot1', '2.02527000e-01[1/cm]');
model.component('mod1').variable('var_xs_OR').set('tot2', '4.46930000e-01[1/cm]');
model.component('mod1').variable('var_xs_OR').set('tot3', '5.36176000e-01[1/cm]');
model.component('mod1').variable('var_xs_OR').set('tot4', '5.37648000e-01[1/cm]');
model.component('mod1').variable('var_xs_OR').set('tot5', '5.38849000e-01[1/cm]');
model.component('mod1').variable('var_xs_OR').set('tot6', '5.41158000e-01[1/cm]');
model.component('mod1').variable('var_xs_OR').set('tot7', '5.52509000e-01[1/cm]');
model.component('mod1').variable('var_xs_OR').set('tot8', '5.84799000e-01[1/cm]');
model.component('mod1').variable('var_xs_OR').set('diff21', '2.57142857e-01*tot1[1/cm]');
model.component('mod1').variable('var_xs_OR').set('diff22', '2.57142857e-01*tot2[1/cm]');
model.component('mod1').variable('var_xs_OR').set('diff23', '2.57142857e-01*tot3[1/cm]');
model.component('mod1').variable('var_xs_OR').set('diff24', '2.57142857e-01*tot4[1/cm]');
model.component('mod1').variable('var_xs_OR').set('diff25', '2.57142857e-01*tot5[1/cm]');
model.component('mod1').variable('var_xs_OR').set('diff26', '2.57142857e-01*tot6[1/cm]');
model.component('mod1').variable('var_xs_OR').set('diff27', '2.57142857e-01*tot7[1/cm]');
model.component('mod1').variable('var_xs_OR').set('diff28', '2.57142857e-01*tot8[1/cm]');
model.component('mod1').variable('var_xs_OR').selection.geom('geom1', 3);
model.component('mod1').variable('var_xs_OR').selection.set([4]);
model.component('mod1').variable.create('var_xs_CB');
model.component('mod1').variable('var_xs_CB').set('beta1', '5.38503000e-03');
model.component('mod1').variable('var_xs_CB').set('betas1', '1.64712000e-04');
model.component('mod1').variable('var_xs_CB').set('betas2', '9.85399000e-04');
model.component('mod1').variable('var_xs_CB').set('betas3', '8.56807000e-04');
model.component('mod1').variable('var_xs_CB').set('betas4', '2.40172000e-03');
model.component('mod1').variable('var_xs_CB').set('betas5', '7.27014000e-04');
model.component('mod1').variable('var_xs_CB').set('betas6', '2.49379000e-04');
model.component('mod1').variable('var_xs_CB').set('chid1', '0.00000000e+00');
model.component('mod1').variable('var_xs_CB').set('chid2', '0.00000000e+00');
model.component('mod1').variable('var_xs_CB').set('chid3', '0.00000000e+00');
model.component('mod1').variable('var_xs_CB').set('chid4', '0.00000000e+00');
model.component('mod1').variable('var_xs_CB').set('chid5', '0.00000000e+00');
model.component('mod1').variable('var_xs_CB').set('chid6', '0.00000000e+00');
model.component('mod1').variable('var_xs_CB').set('chid7', '0.00000000e+00');
model.component('mod1').variable('var_xs_CB').set('chid8', '0.00000000e+00');
model.component('mod1').variable('var_xs_CB').set('chip1', '0.00000000e+00');
model.component('mod1').variable('var_xs_CB').set('chip2', '0.00000000e+00');
model.component('mod1').variable('var_xs_CB').set('chip3', '0.00000000e+00');
model.component('mod1').variable('var_xs_CB').set('chip4', '0.00000000e+00');
model.component('mod1').variable('var_xs_CB').set('chip5', '0.00000000e+00');
model.component('mod1').variable('var_xs_CB').set('chip6', '0.00000000e+00');
model.component('mod1').variable('var_xs_CB').set('chip7', '0.00000000e+00');
model.component('mod1').variable('var_xs_CB').set('chip8', '0.00000000e+00');
model.component('mod1').variable('var_xs_CB').set('chit1', '0.00000000e+00');
model.component('mod1').variable('var_xs_CB').set('chit2', '0.00000000e+00');
model.component('mod1').variable('var_xs_CB').set('chit3', '0.00000000e+00');
model.component('mod1').variable('var_xs_CB').set('chit4', '0.00000000e+00');
model.component('mod1').variable('var_xs_CB').set('chit5', '0.00000000e+00');
model.component('mod1').variable('var_xs_CB').set('chit6', '0.00000000e+00');
model.component('mod1').variable('var_xs_CB').set('chit7', '0.00000000e+00');
model.component('mod1').variable('var_xs_CB').set('chit8', '0.00000000e+00');
model.component('mod1').variable('var_xs_CB').set('diff11', '1.90476000e+00[cm]');
model.component('mod1').variable('var_xs_CB').set('diff12', '1.13073000e+00[cm]');
model.component('mod1').variable('var_xs_CB').set('diff13', '3.92131000e-01[cm]');
model.component('mod1').variable('var_xs_CB').set('diff14', '3.75564000e-01[cm]');
model.component('mod1').variable('var_xs_CB').set('diff15', '3.59711000e-01[cm]');
model.component('mod1').variable('var_xs_CB').set('diff16', '3.48793000e-01[cm]');
model.component('mod1').variable('var_xs_CB').set('diff17', '3.32095000e-01[cm]');
model.component('mod1').variable('var_xs_CB').set('diff18', '2.97717000e-01[cm]');
model.component('mod1').variable('var_xs_CB').set('fiss1', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('fiss2', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('fiss3', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('fiss4', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('fiss5', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('fiss6', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('fiss7', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('fiss8', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('invV1', '4.53385000e-10[s/cm]');
model.component('mod1').variable('var_xs_CB').set('invV2', '2.00768000e-09[s/cm]');
model.component('mod1').variable('var_xs_CB').set('invV3', '4.00640000e-08[s/cm]');
model.component('mod1').variable('var_xs_CB').set('invV4', '2.20623000e-07[s/cm]');
model.component('mod1').variable('var_xs_CB').set('invV5', '8.92173000e-07[s/cm]');
model.component('mod1').variable('var_xs_CB').set('invV6', '1.37938000e-06[s/cm]');
model.component('mod1').variable('var_xs_CB').set('invV7', '2.14021000e-06[s/cm]');
model.component('mod1').variable('var_xs_CB').set('invV8', '3.98303000e-06[s/cm]');
model.component('mod1').variable('var_xs_CB').set('kappa1', '0.00000000e+00[MeV]');
model.component('mod1').variable('var_xs_CB').set('kappa2', '0.00000000e+00[MeV]');
model.component('mod1').variable('var_xs_CB').set('kappa3', '0.00000000e+00[MeV]');
model.component('mod1').variable('var_xs_CB').set('kappa4', '0.00000000e+00[MeV]');
model.component('mod1').variable('var_xs_CB').set('kappa5', '0.00000000e+00[MeV]');
model.component('mod1').variable('var_xs_CB').set('kappa6', '0.00000000e+00[MeV]');
model.component('mod1').variable('var_xs_CB').set('kappa7', '0.00000000e+00[MeV]');
model.component('mod1').variable('var_xs_CB').set('kappa8', '0.00000000e+00[MeV]');
model.component('mod1').variable('var_xs_CB').set('lambdas1', '1.25435000e-02[1/s]');
model.component('mod1').variable('var_xs_CB').set('lambdas2', '3.13212000e-02[1/s]');
model.component('mod1').variable('var_xs_CB').set('lambdas3', '1.09688000e-01[1/s]');
model.component('mod1').variable('var_xs_CB').set('lambdas4', '3.16554000e-01[1/s]');
model.component('mod1').variable('var_xs_CB').set('lambdas5', '1.29420000e+00[1/s]');
model.component('mod1').variable('var_xs_CB').set('lambdas6', '8.03336000e+00[1/s]');
model.component('mod1').variable('var_xs_CB').set('nsf1', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('nsf2', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('nsf3', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('nsf4', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('nsf5', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('nsf6', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('nsf7', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('nsf8', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('rem1', '5.87479000e-02[1/cm]');
model.component('mod1').variable('var_xs_CB').set('rem2', '6.57704000e-03[1/cm]');
model.component('mod1').variable('var_xs_CB').set('rem3', '1.48596000e-02[1/cm]');
model.component('mod1').variable('var_xs_CB').set('rem4', '3.45226000e-02[1/cm]');
model.component('mod1').variable('var_xs_CB').set('rem5', '2.01510000e-01[1/cm]');
model.component('mod1').variable('var_xs_CB').set('rem6', '1.78070000e-01[1/cm]');
model.component('mod1').variable('var_xs_CB').set('rem7', '2.30818000e-01[1/cm]');
model.component('mod1').variable('var_xs_CB').set('rem8', '4.07767000e-01[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat11', '2.30209000e-01[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat12', '5.68996000e-02[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat13', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat14', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat15', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat16', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat17', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat18', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat21', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat22', '3.71275000e-01[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat23', '5.82037000e-03[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat24', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat25', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat26', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat27', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat28', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat31', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat32', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat33', '8.70430000e-01[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat34', '8.35681000e-03[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat35', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat36', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat37', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat38', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat41', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat42', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat43', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat44', '8.66322000e-01[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat45', '1.82799000e-02[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat46', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat47', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat48', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat51', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat52', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat53', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat54', '2.05978000e-04[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat55', '7.36446000e-01[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat56', '1.50672000e-01[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat57', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat58', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat61', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat62', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat63', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat64', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat65', '1.09994000e-02[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat66', '7.88805000e-01[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat67', '8.88560000e-02[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat68', '4.99393000e-06[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat71', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat72', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat73', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat74', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat75', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat76', '6.54638000e-02[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat77', '7.84156000e-01[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat78', '4.24438000e-02[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat81', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat82', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat83', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat84', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat85', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat86', '1.11067000e-05[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat87', '1.78854000e-01[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat88', '7.28597000e-01[1/cm]');
model.component('mod1').variable('var_xs_CB').set('tot1', '2.88957000e-01[1/cm]');
model.component('mod1').variable('var_xs_CB').set('tot2', '3.77852000e-01[1/cm]');
model.component('mod1').variable('var_xs_CB').set('tot3', '8.85290000e-01[1/cm]');
model.component('mod1').variable('var_xs_CB').set('tot4', '9.00845000e-01[1/cm]');
model.component('mod1').variable('var_xs_CB').set('tot5', '9.37955000e-01[1/cm]');
model.component('mod1').variable('var_xs_CB').set('tot6', '9.66876000e-01[1/cm]');
model.component('mod1').variable('var_xs_CB').set('tot7', '1.01497000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('tot8', '1.13636000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('diff21', '2.57142857e-01*tot1[1/cm]');
model.component('mod1').variable('var_xs_CB').set('diff22', '2.57142857e-01*tot2[1/cm]');
model.component('mod1').variable('var_xs_CB').set('diff23', '2.57142857e-01*tot3[1/cm]');
model.component('mod1').variable('var_xs_CB').set('diff24', '2.57142857e-01*tot4[1/cm]');
model.component('mod1').variable('var_xs_CB').set('diff25', '2.57142857e-01*tot5[1/cm]');
model.component('mod1').variable('var_xs_CB').set('diff26', '2.57142857e-01*tot6[1/cm]');
model.component('mod1').variable('var_xs_CB').set('diff27', '2.57142857e-01*tot7[1/cm]');
model.component('mod1').variable('var_xs_CB').set('diff28', '2.57142857e-01*tot8[1/cm]');
model.component('mod1').variable('var_xs_CB').selection.geom('geom1', 3);
model.component('mod1').variable('var_xs_CB').selection.set([3]);
model.component('mod1').variable.create('var_xs_DC');
model.component('mod1').variable('var_xs_DC').set('beta1', '5.38503000e-03');
model.component('mod1').variable('var_xs_DC').set('betas1', '1.64712000e-04');
model.component('mod1').variable('var_xs_DC').set('betas2', '9.85399000e-04');
model.component('mod1').variable('var_xs_DC').set('betas3', '8.56807000e-04');
model.component('mod1').variable('var_xs_DC').set('betas4', '2.40172000e-03');
model.component('mod1').variable('var_xs_DC').set('betas5', '7.27014000e-04');
model.component('mod1').variable('var_xs_DC').set('betas6', '2.49379000e-04');
model.component('mod1').variable('var_xs_DC').set('chid1', '0.00000000e+00');
model.component('mod1').variable('var_xs_DC').set('chid2', '0.00000000e+00');
model.component('mod1').variable('var_xs_DC').set('chid3', '0.00000000e+00');
model.component('mod1').variable('var_xs_DC').set('chid4', '0.00000000e+00');
model.component('mod1').variable('var_xs_DC').set('chid5', '0.00000000e+00');
model.component('mod1').variable('var_xs_DC').set('chid6', '0.00000000e+00');
model.component('mod1').variable('var_xs_DC').set('chid7', '0.00000000e+00');
model.component('mod1').variable('var_xs_DC').set('chid8', '0.00000000e+00');
model.component('mod1').variable('var_xs_DC').set('chip1', '0.00000000e+00');
model.component('mod1').variable('var_xs_DC').set('chip2', '0.00000000e+00');
model.component('mod1').variable('var_xs_DC').set('chip3', '0.00000000e+00');
model.component('mod1').variable('var_xs_DC').set('chip4', '0.00000000e+00');
model.component('mod1').variable('var_xs_DC').set('chip5', '0.00000000e+00');
model.component('mod1').variable('var_xs_DC').set('chip6', '0.00000000e+00');
model.component('mod1').variable('var_xs_DC').set('chip7', '0.00000000e+00');
model.component('mod1').variable('var_xs_DC').set('chip8', '0.00000000e+00');
model.component('mod1').variable('var_xs_DC').set('chit1', '0.00000000e+00');
model.component('mod1').variable('var_xs_DC').set('chit2', '0.00000000e+00');
model.component('mod1').variable('var_xs_DC').set('chit3', '0.00000000e+00');
model.component('mod1').variable('var_xs_DC').set('chit4', '0.00000000e+00');
model.component('mod1').variable('var_xs_DC').set('chit5', '0.00000000e+00');
model.component('mod1').variable('var_xs_DC').set('chit6', '0.00000000e+00');
model.component('mod1').variable('var_xs_DC').set('chit7', '0.00000000e+00');
model.component('mod1').variable('var_xs_DC').set('chit8', '0.00000000e+00');
model.component('mod1').variable('var_xs_DC').set('diff11', '2.87437000e+00[cm]');
model.component('mod1').variable('var_xs_DC').set('diff12', '1.05669000e+00[cm]');
model.component('mod1').variable('var_xs_DC').set('diff13', '1.27612000e+00[cm]');
model.component('mod1').variable('var_xs_DC').set('diff14', '1.28828000e+00[cm]');
model.component('mod1').variable('var_xs_DC').set('diff15', '1.29013000e+00[cm]');
model.component('mod1').variable('var_xs_DC').set('diff16', '1.27679000e+00[cm]');
model.component('mod1').variable('var_xs_DC').set('diff17', '1.25295000e+00[cm]');
model.component('mod1').variable('var_xs_DC').set('diff18', '1.16319000e+00[cm]');
model.component('mod1').variable('var_xs_DC').set('fiss1', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('fiss2', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('fiss3', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('fiss4', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('fiss5', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('fiss6', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('fiss7', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('fiss8', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('invV1', '4.58986000e-10[s/cm]');
model.component('mod1').variable('var_xs_DC').set('invV2', '2.03767000e-09[s/cm]');
model.component('mod1').variable('var_xs_DC').set('invV3', '3.91233000e-08[s/cm]');
model.component('mod1').variable('var_xs_DC').set('invV4', '2.18118000e-07[s/cm]');
model.component('mod1').variable('var_xs_DC').set('invV5', '8.75578000e-07[s/cm]');
model.component('mod1').variable('var_xs_DC').set('invV6', '1.37751000e-06[s/cm]');
model.component('mod1').variable('var_xs_DC').set('invV7', '2.13321000e-06[s/cm]');
model.component('mod1').variable('var_xs_DC').set('invV8', '4.04469000e-06[s/cm]');
model.component('mod1').variable('var_xs_DC').set('kappa1', '0.00000000e+00[MeV]');
model.component('mod1').variable('var_xs_DC').set('kappa2', '0.00000000e+00[MeV]');
model.component('mod1').variable('var_xs_DC').set('kappa3', '0.00000000e+00[MeV]');
model.component('mod1').variable('var_xs_DC').set('kappa4', '0.00000000e+00[MeV]');
model.component('mod1').variable('var_xs_DC').set('kappa5', '0.00000000e+00[MeV]');
model.component('mod1').variable('var_xs_DC').set('kappa6', '0.00000000e+00[MeV]');
model.component('mod1').variable('var_xs_DC').set('kappa7', '0.00000000e+00[MeV]');
model.component('mod1').variable('var_xs_DC').set('kappa8', '0.00000000e+00[MeV]');
model.component('mod1').variable('var_xs_DC').set('lambdas1', '1.25435000e-02[1/s]');
model.component('mod1').variable('var_xs_DC').set('lambdas2', '3.13212000e-02[1/s]');
model.component('mod1').variable('var_xs_DC').set('lambdas3', '1.09688000e-01[1/s]');
model.component('mod1').variable('var_xs_DC').set('lambdas4', '3.16554000e-01[1/s]');
model.component('mod1').variable('var_xs_DC').set('lambdas5', '1.29420000e+00[1/s]');
model.component('mod1').variable('var_xs_DC').set('lambdas6', '8.03336000e+00[1/s]');
model.component('mod1').variable('var_xs_DC').set('nsf1', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('nsf2', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('nsf3', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('nsf4', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('nsf5', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('nsf6', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('nsf7', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('nsf8', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('rem1', '5.15817000e-02[1/cm]');
model.component('mod1').variable('var_xs_DC').set('rem2', '1.30297000e-02[1/cm]');
model.component('mod1').variable('var_xs_DC').set('rem3', '1.01676000e-02[1/cm]');
model.component('mod1').variable('var_xs_DC').set('rem4', '1.92099000e-02[1/cm]');
model.component('mod1').variable('var_xs_DC').set('rem5', '8.61034000e-02[1/cm]');
model.component('mod1').variable('var_xs_DC').set('rem6', '6.19777000e-02[1/cm]');
model.component('mod1').variable('var_xs_DC').set('rem7', '6.50364000e-02[1/cm]');
model.component('mod1').variable('var_xs_DC').set('rem8', '1.03747000e-01[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat11', '1.44058000e-01[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat12', '4.99402000e-02[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat13', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat14', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat15', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat16', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat17', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat18', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat21', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat22', '3.44317000e-01[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat23', '1.29797000e-02[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat24', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat25', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat26', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat27', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat28', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat31', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat32', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat33', '2.66091000e-01[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat34', '1.01676000e-02[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat35', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat36', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat37', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat38', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat41', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat42', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat43', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat44', '2.53541000e-01[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat45', '1.90885000e-02[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat46', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat47', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat48', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat51', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat52', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat53', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat54', '3.72941000e-05[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat55', '1.87319000e-01[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat56', '8.48168000e-02[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat57', '8.22506000e-04[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat58', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat61', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat62', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat63', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat64', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat65', '5.84943000e-03[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat66', '2.13292000e-01[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat67', '5.46252000e-02[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat68', '9.23602000e-04[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat71', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat72', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat73', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat74', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat75', '2.35259000e-05[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat76', '3.70410000e-02[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat77', '2.14755000e-01[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat78', '2.70967000e-02[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat81', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat82', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat83', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat84', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat85', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat86', '1.90635000e-03[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat87', '1.00092000e-01[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat88', '1.97273000e-01[1/cm]');
model.component('mod1').variable('var_xs_DC').set('tot1', '1.95640000e-01[1/cm]');
model.component('mod1').variable('var_xs_DC').set('tot2', '3.57347000e-01[1/cm]');
model.component('mod1').variable('var_xs_DC').set('tot3', '2.76258000e-01[1/cm]');
model.component('mod1').variable('var_xs_DC').set('tot4', '2.72751000e-01[1/cm]');
model.component('mod1').variable('var_xs_DC').set('tot5', '2.73422000e-01[1/cm]');
model.component('mod1').variable('var_xs_DC').set('tot6', '2.75269000e-01[1/cm]');
model.component('mod1').variable('var_xs_DC').set('tot7', '2.79791000e-01[1/cm]');
model.component('mod1').variable('var_xs_DC').set('tot8', '3.01020000e-01[1/cm]');
model.component('mod1').variable('var_xs_DC').set('diff21', '2.57142857e-01*tot1[1/cm]');
model.component('mod1').variable('var_xs_DC').set('diff22', '2.57142857e-01*tot2[1/cm]');
model.component('mod1').variable('var_xs_DC').set('diff23', '2.57142857e-01*tot3[1/cm]');
model.component('mod1').variable('var_xs_DC').set('diff24', '2.57142857e-01*tot4[1/cm]');
model.component('mod1').variable('var_xs_DC').set('diff25', '2.57142857e-01*tot5[1/cm]');
model.component('mod1').variable('var_xs_DC').set('diff26', '2.57142857e-01*tot6[1/cm]');
model.component('mod1').variable('var_xs_DC').set('diff27', '2.57142857e-01*tot7[1/cm]');
model.component('mod1').variable('var_xs_DC').set('diff28', '2.57142857e-01*tot8[1/cm]');
model.component('mod1').variable('var_xs_DC').selection.geom('geom1', 3);
model.component('mod1').variable('var_xs_DC').selection.set([2]);
model.component('mod1').variable.create('var_xs_VS');
model.component('mod1').variable('var_xs_VS').set('beta1', '5.38503000e-03');
model.component('mod1').variable('var_xs_VS').set('betas1', '1.64712000e-04');
model.component('mod1').variable('var_xs_VS').set('betas2', '9.85399000e-04');
model.component('mod1').variable('var_xs_VS').set('betas3', '8.56807000e-04');
model.component('mod1').variable('var_xs_VS').set('betas4', '2.40172000e-03');
model.component('mod1').variable('var_xs_VS').set('betas5', '7.27014000e-04');
model.component('mod1').variable('var_xs_VS').set('betas6', '2.49379000e-04');
model.component('mod1').variable('var_xs_VS').set('chid1', '0.00000000e+00');
model.component('mod1').variable('var_xs_VS').set('chid2', '0.00000000e+00');
model.component('mod1').variable('var_xs_VS').set('chid3', '0.00000000e+00');
model.component('mod1').variable('var_xs_VS').set('chid4', '0.00000000e+00');
model.component('mod1').variable('var_xs_VS').set('chid5', '0.00000000e+00');
model.component('mod1').variable('var_xs_VS').set('chid6', '0.00000000e+00');
model.component('mod1').variable('var_xs_VS').set('chid7', '0.00000000e+00');
model.component('mod1').variable('var_xs_VS').set('chid8', '0.00000000e+00');
model.component('mod1').variable('var_xs_VS').set('chip1', '0.00000000e+00');
model.component('mod1').variable('var_xs_VS').set('chip2', '0.00000000e+00');
model.component('mod1').variable('var_xs_VS').set('chip3', '0.00000000e+00');
model.component('mod1').variable('var_xs_VS').set('chip4', '0.00000000e+00');
model.component('mod1').variable('var_xs_VS').set('chip5', '0.00000000e+00');
model.component('mod1').variable('var_xs_VS').set('chip6', '0.00000000e+00');
model.component('mod1').variable('var_xs_VS').set('chip7', '0.00000000e+00');
model.component('mod1').variable('var_xs_VS').set('chip8', '0.00000000e+00');
model.component('mod1').variable('var_xs_VS').set('chit1', '0.00000000e+00');
model.component('mod1').variable('var_xs_VS').set('chit2', '0.00000000e+00');
model.component('mod1').variable('var_xs_VS').set('chit3', '0.00000000e+00');
model.component('mod1').variable('var_xs_VS').set('chit4', '0.00000000e+00');
model.component('mod1').variable('var_xs_VS').set('chit5', '0.00000000e+00');
model.component('mod1').variable('var_xs_VS').set('chit6', '0.00000000e+00');
model.component('mod1').variable('var_xs_VS').set('chit7', '0.00000000e+00');
model.component('mod1').variable('var_xs_VS').set('chit8', '0.00000000e+00');
model.component('mod1').variable('var_xs_VS').set('diff11', '2.15542000e+00[cm]');
model.component('mod1').variable('var_xs_VS').set('diff12', '1.16171000e+00[cm]');
model.component('mod1').variable('var_xs_VS').set('diff13', '4.06323000e-01[cm]');
model.component('mod1').variable('var_xs_VS').set('diff14', '3.73674000e-01[cm]');
model.component('mod1').variable('var_xs_VS').set('diff15', '3.62030000e-01[cm]');
model.component('mod1').variable('var_xs_VS').set('diff16', '3.48862000e-01[cm]');
model.component('mod1').variable('var_xs_VS').set('diff17', '3.32753000e-01[cm]');
model.component('mod1').variable('var_xs_VS').set('diff18', '2.99486000e-01[cm]');
model.component('mod1').variable('var_xs_VS').set('fiss1', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('fiss2', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('fiss3', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('fiss4', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('fiss5', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('fiss6', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('fiss7', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('fiss8', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('invV1', '4.45359000e-10[s/cm]');
model.component('mod1').variable('var_xs_VS').set('invV2', '1.99434000e-09[s/cm]');
model.component('mod1').variable('var_xs_VS').set('invV3', '3.93068000e-08[s/cm]');
model.component('mod1').variable('var_xs_VS').set('invV4', '2.18138000e-07[s/cm]');
model.component('mod1').variable('var_xs_VS').set('invV5', '8.57651000e-07[s/cm]');
model.component('mod1').variable('var_xs_VS').set('invV6', '1.37066000e-06[s/cm]');
model.component('mod1').variable('var_xs_VS').set('invV7', '2.11156000e-06[s/cm]');
model.component('mod1').variable('var_xs_VS').set('invV8', '3.88917000e-06[s/cm]');
model.component('mod1').variable('var_xs_VS').set('kappa1', '0.00000000e+00[MeV]');
model.component('mod1').variable('var_xs_VS').set('kappa2', '0.00000000e+00[MeV]');
model.component('mod1').variable('var_xs_VS').set('kappa3', '0.00000000e+00[MeV]');
model.component('mod1').variable('var_xs_VS').set('kappa4', '0.00000000e+00[MeV]');
model.component('mod1').variable('var_xs_VS').set('kappa5', '0.00000000e+00[MeV]');
model.component('mod1').variable('var_xs_VS').set('kappa6', '0.00000000e+00[MeV]');
model.component('mod1').variable('var_xs_VS').set('kappa7', '0.00000000e+00[MeV]');
model.component('mod1').variable('var_xs_VS').set('kappa8', '0.00000000e+00[MeV]');
model.component('mod1').variable('var_xs_VS').set('lambdas1', '1.25435000e-02[1/s]');
model.component('mod1').variable('var_xs_VS').set('lambdas2', '3.13212000e-02[1/s]');
model.component('mod1').variable('var_xs_VS').set('lambdas3', '1.09688000e-01[1/s]');
model.component('mod1').variable('var_xs_VS').set('lambdas4', '3.16554000e-01[1/s]');
model.component('mod1').variable('var_xs_VS').set('lambdas5', '1.29420000e+00[1/s]');
model.component('mod1').variable('var_xs_VS').set('lambdas6', '8.03336000e+00[1/s]');
model.component('mod1').variable('var_xs_VS').set('nsf1', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('nsf2', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('nsf3', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('nsf4', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('nsf5', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('nsf6', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('nsf7', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('nsf8', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('rem1', '5.62726000e-02[1/cm]');
model.component('mod1').variable('var_xs_VS').set('rem2', '6.32849000e-03[1/cm]');
model.component('mod1').variable('var_xs_VS').set('rem3', '1.42450000e-02[1/cm]');
model.component('mod1').variable('var_xs_VS').set('rem4', '3.46019000e-02[1/cm]');
model.component('mod1').variable('var_xs_VS').set('rem5', '1.82970000e-01[1/cm]');
model.component('mod1').variable('var_xs_VS').set('rem6', '1.73300000e-01[1/cm]');
model.component('mod1').variable('var_xs_VS').set('rem7', '2.31782000e-01[1/cm]');
model.component('mod1').variable('var_xs_VS').set('rem8', '4.11843000e-01[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat11', '2.34299000e-01[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat12', '5.36041000e-02[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat13', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat14', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat15', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat16', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat17', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat18', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat21', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat22', '3.54586000e-01[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat23', '5.99725000e-03[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat24', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat25', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat26', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat27', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat28', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat31', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat32', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat33', '8.46616000e-01[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat34', '8.97786000e-03[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat35', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat36', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat37', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat38', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat41', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat42', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat43', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat44', '8.67671000e-01[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat45', '1.64430000e-02[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat46', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat47', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat48', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat51', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat52', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat53', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat54', '2.40011000e-04[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat55', '7.52938000e-01[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat56', '1.33717000e-01[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat57', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat58', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat61', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat62', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat63', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat64', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat65', '1.20877000e-02[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat66', '7.93044000e-01[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat67', '8.36639000e-02[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat68', '8.45127000e-06[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat71', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat72', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat73', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat74', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat75', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat76', '7.22870000e-02[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat77', '7.81365000e-01[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat78', '3.75643000e-02[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat81', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat82', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat83', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat84', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat85', '0.00000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat86', '4.23544000e-06[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat87', '1.88878000e-01[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat88', '7.17939000e-01[1/cm]');
model.component('mod1').variable('var_xs_VS').set('tot1', '2.90571000e-01[1/cm]');
model.component('mod1').variable('var_xs_VS').set('tot2', '3.60915000e-01[1/cm]');
model.component('mod1').variable('var_xs_VS').set('tot3', '8.60861000e-01[1/cm]');
model.component('mod1').variable('var_xs_VS').set('tot4', '9.02273000e-01[1/cm]');
model.component('mod1').variable('var_xs_VS').set('tot5', '9.35908000e-01[1/cm]');
model.component('mod1').variable('var_xs_VS').set('tot6', '9.66344000e-01[1/cm]');
model.component('mod1').variable('var_xs_VS').set('tot7', '1.01315000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('tot8', '1.12978000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('diff21', '2.57142857e-01*tot1[1/cm]');
model.component('mod1').variable('var_xs_VS').set('diff22', '2.57142857e-01*tot2[1/cm]');
model.component('mod1').variable('var_xs_VS').set('diff23', '2.57142857e-01*tot3[1/cm]');
model.component('mod1').variable('var_xs_VS').set('diff24', '2.57142857e-01*tot4[1/cm]');
model.component('mod1').variable('var_xs_VS').set('diff25', '2.57142857e-01*tot5[1/cm]');
model.component('mod1').variable('var_xs_VS').set('diff26', '2.57142857e-01*tot6[1/cm]');
model.component('mod1').variable('var_xs_VS').set('diff27', '2.57142857e-01*tot7[1/cm]');
model.component('mod1').variable('var_xs_VS').set('diff28', '2.57142857e-01*tot8[1/cm]');
model.component('mod1').variable('var_xs_VS').selection.geom('geom1', 3);
model.component('mod1').variable('var_xs_VS').selection.set([1]);
model.component('mod1').variable.create('var_xsCRCC1');
model.component('mod1').variable('var_xsCRCC1').set('beta1', '(5.43353000e-03*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*5.43353000e-03+str(h_CRCC1-z)*5.35302000e-03) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*5.43353000e-03+str(h_CRCC1-z)*5.35302000e-03) + 5.43353000e-03*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC1').set('betas1', '(1.64279000e-04*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*1.64279000e-04+str(h_CRCC1-z)*1.61013000e-04) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*1.64279000e-04+str(h_CRCC1-z)*1.61013000e-04) + 1.64279000e-04*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC1').set('betas2', '(9.82342000e-04*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*9.82342000e-04+str(h_CRCC1-z)*9.79956000e-04) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*9.82342000e-04+str(h_CRCC1-z)*9.79956000e-04) + 9.82342000e-04*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC1').set('betas3', '(8.84431000e-04*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*8.84431000e-04+str(h_CRCC1-z)*8.69379000e-04) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*8.84431000e-04+str(h_CRCC1-z)*8.69379000e-04) + 8.84431000e-04*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC1').set('betas4', '(2.41162000e-03*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*2.41162000e-03+str(h_CRCC1-z)*2.37140000e-03) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*2.41162000e-03+str(h_CRCC1-z)*2.37140000e-03) + 2.41162000e-03*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC1').set('betas5', '(7.43734000e-04*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*7.43734000e-04+str(h_CRCC1-z)*7.25365000e-04) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*7.43734000e-04+str(h_CRCC1-z)*7.25365000e-04) + 7.43734000e-04*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC1').set('betas6', '(2.47128000e-04*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*2.47128000e-04+str(h_CRCC1-z)*2.45908000e-04) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*2.47128000e-04+str(h_CRCC1-z)*2.45908000e-04) + 2.47128000e-04*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC1').set('chid1', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC1').set('chid2', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC1').set('chid3', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC1').set('chid4', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC1').set('chid5', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC1').set('chid6', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC1').set('chid7', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC1').set('chid8', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC1').set('chip1', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC1').set('chip2', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC1').set('chip3', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC1').set('chip4', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC1').set('chip5', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC1').set('chip6', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC1').set('chip7', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC1').set('chip8', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC1').set('chit1', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC1').set('chit2', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC1').set('chit3', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC1').set('chit4', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC1').set('chit5', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC1').set('chit6', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC1').set('chit7', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC1').set('chit8', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC1').set('diff11', '(1.91001000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*1.84571000e+00+str(h_CRCC1-z)*1.92274000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*1.85290000e+00+str(h_CRCC1-z)*1.92357000e+00) + 1.96966000e+00*str(1.125000-z)*str(z-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC1').set('diff12', '(8.74823000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*8.80209000e-01+str(h_CRCC1-z)*9.22150000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*8.79295000e-01+str(h_CRCC1-z)*9.21497000e-01) + 9.06750000e-01*str(1.125000-z)*str(z-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC1').set('diff13', '(6.88951000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*6.90284000e-01+str(h_CRCC1-z)*7.94998000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*6.89880000e-01+str(h_CRCC1-z)*7.94850000e-01) + 7.87453000e-01*str(1.125000-z)*str(z-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC1').set('diff14', '(6.70626000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*6.70676000e-01+str(h_CRCC1-z)*7.98007000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*6.70545000e-01+str(h_CRCC1-z)*7.97246000e-01) + 7.88298000e-01*str(1.125000-z)*str(z-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC1').set('diff15', '(6.66281000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*6.66894000e-01+str(h_CRCC1-z)*7.94861000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*6.67108000e-01+str(h_CRCC1-z)*7.94669000e-01) + 7.87026000e-01*str(1.125000-z)*str(z-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC1').set('diff16', '(6.58113000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*6.59767000e-01+str(h_CRCC1-z)*7.88891000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*6.59019000e-01+str(h_CRCC1-z)*7.88373000e-01) + 7.81863000e-01*str(1.125000-z)*str(z-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC1').set('diff17', '(6.34381000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*6.36002000e-01+str(h_CRCC1-z)*7.64998000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*6.34818000e-01+str(h_CRCC1-z)*7.64705000e-01) + 7.58584000e-01*str(1.125000-z)*str(z-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC1').set('diff18', '(5.70902000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*5.72016000e-01+str(h_CRCC1-z)*6.90042000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*5.71704000e-01+str(h_CRCC1-z)*6.89728000e-01) + 6.83815000e-01*str(1.125000-z)*str(z-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC1').set('fiss1', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('fiss2', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('fiss3', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('fiss4', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('fiss5', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('fiss6', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('fiss7', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('fiss8', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('invV1', '(4.78639000e-10*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*4.82300000e-10+str(h_CRCC1-z)*4.82876000e-10) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*4.82378000e-10+str(h_CRCC1-z)*4.82781000e-10) + 4.79355000e-10*str(1.125000-z)*str(z-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC1').set('invV2', '(2.01571000e-09*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*1.99602000e-09+str(h_CRCC1-z)*2.03134000e-09) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*1.99666000e-09+str(h_CRCC1-z)*2.03401000e-09) + 2.08374000e-09*str(1.125000-z)*str(z-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC1').set('invV3', '(3.13983000e-08*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*2.95064000e-08+str(h_CRCC1-z)*3.27319000e-08) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*2.97280000e-08+str(h_CRCC1-z)*3.28890000e-08) + 3.52807000e-08*str(1.125000-z)*str(z-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC1').set('invV4', '(2.07117000e-07*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*2.02784000e-07+str(h_CRCC1-z)*2.06592000e-07) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*2.03391000e-07+str(h_CRCC1-z)*2.06843000e-07) + 2.09692000e-07*str(1.125000-z)*str(z-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC1').set('invV5', '(7.05129000e-07*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*6.61738000e-07+str(h_CRCC1-z)*6.94283000e-07) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*6.65142000e-07+str(h_CRCC1-z)*6.98257000e-07) + 7.17410000e-07*str(1.125000-z)*str(z-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC1').set('invV6', '(1.37390000e-06*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*1.35173000e-06+str(h_CRCC1-z)*1.37382000e-06) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*1.35495000e-06+str(h_CRCC1-z)*1.37507000e-06) + 1.37856000e-06*str(1.125000-z)*str(z-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC1').set('invV7', '(2.16504000e-06*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*2.15480000e-06+str(h_CRCC1-z)*2.16898000e-06) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*2.15698000e-06+str(h_CRCC1-z)*2.16950000e-06) + 2.17039000e-06*str(1.125000-z)*str(z-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC1').set('invV8', '(4.16692000e-06*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*4.15058000e-06+str(h_CRCC1-z)*4.17466000e-06) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*4.15092000e-06+str(h_CRCC1-z)*4.17533000e-06) + 4.17809000e-06*str(1.125000-z)*str(z-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC1').set('kappa1', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC1').set('kappa2', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC1').set('kappa3', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC1').set('kappa4', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC1').set('kappa5', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC1').set('kappa6', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC1').set('kappa7', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC1').set('kappa8', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC1').set('lambdas1', '(1.25446000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*1.25446000e-02+str(h_CRCC1-z)*1.25438000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*1.25446000e-02+str(h_CRCC1-z)*1.25438000e-02) + 1.25446000e-02*str(1.125000-z)*str(z-0.416000))[1/s]');
model.component('mod1').variable('var_xsCRCC1').set('lambdas2', '(3.13123000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*3.13123000e-02+str(h_CRCC1-z)*3.13097000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*3.13123000e-02+str(h_CRCC1-z)*3.13097000e-02) + 3.13123000e-02*str(1.125000-z)*str(z-0.416000))[1/s]');
model.component('mod1').variable('var_xsCRCC1').set('lambdas3', '(1.09675000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*1.09675000e-01+str(h_CRCC1-z)*1.09688000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*1.09675000e-01+str(h_CRCC1-z)*1.09688000e-01) + 1.09675000e-01*str(1.125000-z)*str(z-0.416000))[1/s]');
model.component('mod1').variable('var_xsCRCC1').set('lambdas4', '(3.16600000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*3.16600000e-01+str(h_CRCC1-z)*3.16570000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*3.16600000e-01+str(h_CRCC1-z)*3.16570000e-01) + 3.16600000e-01*str(1.125000-z)*str(z-0.416000))[1/s]');
model.component('mod1').variable('var_xsCRCC1').set('lambdas5', '(1.29363000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*1.29363000e+00+str(h_CRCC1-z)*1.29339000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*1.29363000e+00+str(h_CRCC1-z)*1.29339000e+00) + 1.29363000e+00*str(1.125000-z)*str(z-0.416000))[1/s]');
model.component('mod1').variable('var_xsCRCC1').set('lambdas6', '(8.02100000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*8.02100000e+00+str(h_CRCC1-z)*8.02215000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*8.02100000e+00+str(h_CRCC1-z)*8.02215000e+00) + 8.02100000e+00*str(1.125000-z)*str(z-0.416000))[1/s]');
model.component('mod1').variable('var_xsCRCC1').set('nsf1', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('nsf2', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('nsf3', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('nsf4', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('nsf5', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('nsf6', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('nsf7', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('nsf8', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('rem1', '(5.00541000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*4.97916000e-02+str(h_CRCC1-z)*4.77815000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*5.01648000e-02+str(h_CRCC1-z)*4.78998000e-02) + 4.89290000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('rem2', '(2.49989000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*2.44761000e-02+str(h_CRCC1-z)*2.00560000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*2.45623000e-02+str(h_CRCC1-z)*2.01169000e-02) + 2.15083000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('rem3', '(3.00496000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*2.82014000e-02+str(h_CRCC1-z)*1.15956000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*2.84665000e-02+str(h_CRCC1-z)*1.17178000e-02) + 1.36807000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('rem4', '(5.65033000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*5.40676000e-02+str(h_CRCC1-z)*2.67818000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*5.44567000e-02+str(h_CRCC1-z)*2.69809000e-02) + 2.91181000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('rem5', '(9.17708000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*7.33991000e-02+str(h_CRCC1-z)*5.45236000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*7.47105000e-02+str(h_CRCC1-z)*5.61472000e-02) + 6.42548000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('rem6', '(1.21696000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*1.19829000e-01+str(h_CRCC1-z)*8.70662000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*1.20763000e-01+str(h_CRCC1-z)*8.73396000e-02) + 8.84098000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('rem7', '(1.09535000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*1.11576000e-01+str(h_CRCC1-z)*7.85043000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*1.12175000e-01+str(h_CRCC1-z)*7.85381000e-02) + 7.86864000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('rem8', '(1.30767000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*1.32126000e-01+str(h_CRCC1-z)*1.03731000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*1.33111000e-01+str(h_CRCC1-z)*1.03704000e-01) + 1.03676000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat11', '(1.60018000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*1.61966000e-01+str(h_CRCC1-z)*1.56910000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*1.61373000e-01+str(h_CRCC1-z)*1.56735000e-01) + 1.53216000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat12', '(4.86494000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*4.84963000e-02+str(h_CRCC1-z)*4.72354000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*4.88479000e-02+str(h_CRCC1-z)*4.73542000e-02) + 4.82637000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat13', '(1.41937000e-05*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*1.17516000e-05+str(h_CRCC1-z)*1.65225000e-05) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*1.23651000e-05+str(h_CRCC1-z)*1.36668000e-05) + 1.95285000e-05*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat14', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat15', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat16', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat17', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat18', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat21', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat22', '(4.11720000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*4.09739000e-01+str(h_CRCC1-z)*3.90874000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*4.09892000e-01+str(h_CRCC1-z)*3.91147000e-01) + 3.94630000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat23', '(2.14926000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*2.10593000e-02+str(h_CRCC1-z)*2.00342000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*2.11122000e-02+str(h_CRCC1-z)*2.00957000e-02) + 2.14881000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat24', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*2.32466000e-08) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat25', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat26', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat27', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat28', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat31', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat32', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat33', '(4.81799000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*4.82702000e-01+str(h_CRCC1-z)*4.32387000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*4.82706000e-01+str(h_CRCC1-z)*4.32312000e-01) + 4.34291000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat34', '(1.21869000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*1.05080000e-02+str(h_CRCC1-z)*1.15877000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*1.06714000e-02+str(h_CRCC1-z)*1.17098000e-02) + 1.36717000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat35', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat36', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat37', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat38', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat41', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat42', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat43', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat44', '(4.68779000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*4.70919000e-01+str(h_CRCC1-z)*4.15182000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*4.70614000e-01+str(h_CRCC1-z)*4.15346000e-01) + 4.18043000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat45', '(3.09607000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*2.81614000e-02+str(h_CRCC1-z)*2.67380000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*2.84327000e-02+str(h_CRCC1-z)*2.69383000e-02) + 2.90700000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat46', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat47', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat48', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat51', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat52', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat53', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat54', '(2.31814000e-04*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*3.02803000e-04+str(h_CRCC1-z)*2.33461000e-04) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*2.95016000e-04+str(h_CRCC1-z)*2.28078000e-04) + 2.02839000e-04*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat55', '(4.35818000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*4.53234000e-01+str(h_CRCC1-z)*3.88321000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*4.51956000e-01+str(h_CRCC1-z)*3.86790000e-01) + 3.83329000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat56', '(6.47935000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*4.58016000e-02+str(h_CRCC1-z)*5.34036000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*4.69991000e-02+str(h_CRCC1-z)*5.50034000e-02) + 6.29984000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat57', '(9.83692000e-04*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*6.62327000e-04+str(h_CRCC1-z)*7.36847000e-04) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*6.65889000e-04+str(h_CRCC1-z)*7.63327000e-04) + 8.98990000e-04*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat58', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*4.72892000e-07+str(h_CRCC1-z)*5.86323000e-07) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*1.35819000e-07+str(h_CRCC1-z)*6.25065000e-07) + 5.55205000e-07*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat61', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat62', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat63', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat64', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat65', '(1.27821000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*1.58145000e-02+str(h_CRCC1-z)*1.11721000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*1.52830000e-02+str(h_CRCC1-z)*1.10665000e-02) + 1.07689000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat66', '(4.08354000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*4.09495000e-01+str(h_CRCC1-z)*3.56629000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*4.08968000e-01+str(h_CRCC1-z)*3.56577000e-01) + 3.59132000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat67', '(7.90492000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*7.32029000e-02+str(h_CRCC1-z)*7.24936000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*7.39625000e-02+str(h_CRCC1-z)*7.28404000e-02) + 7.41392000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat68', '(3.92208000e-03*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*3.55428000e-03+str(h_CRCC1-z)*3.10382000e-03) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*3.62055000e-03+str(h_CRCC1-z)*3.13306000e-03) + 3.21210000e-03*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat71', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat72', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat73', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat74', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat75', '(1.45743000e-04*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*1.38430000e-04+str(h_CRCC1-z)*1.09829000e-04) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*1.44425000e-04+str(h_CRCC1-z)*1.09420000e-04) + 1.10697000e-04*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat76', '(5.54899000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*5.65430000e-02+str(h_CRCC1-z)*4.94355000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*5.61970000e-02+str(h_CRCC1-z)*4.94330000e-02) + 4.95782000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat77', '(4.30507000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*4.27580000e-01+str(h_CRCC1-z)*3.71591000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*4.27728000e-01+str(h_CRCC1-z)*3.71784000e-01) + 3.75165000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat78', '(2.78707000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*2.72958000e-02+str(h_CRCC1-z)*2.84849000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*2.75000000e-02+str(h_CRCC1-z)*2.85222000e-02) + 2.85320000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat81', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat82', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat83', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat84', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat85', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*1.49744000e-07) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z)*1.21245000e-07) + 1.68484000e-07*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat86', '(8.75668000e-03*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*8.73843000e-03+str(h_CRCC1-z)*6.84926000e-03) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*8.76158000e-03+str(h_CRCC1-z)*6.82818000e-03) + 6.97633000e-03*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat87', '(9.64325000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*9.60904000e-02+str(h_CRCC1-z)*9.59512000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*9.64355000e-02+str(h_CRCC1-z)*9.59477000e-02) + 9.57660000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat88', '(4.40144000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*4.37882000e-01+str(h_CRCC1-z)*3.73634000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*4.37292000e-01+str(h_CRCC1-z)*3.73897000e-01) + 3.77722000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('tot1', '(2.10072000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*2.11757000e-01+str(h_CRCC1-z)*2.04692000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*2.11538000e-01+str(h_CRCC1-z)*2.04635000e-01) + 2.02145000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('tot2', '(4.36719000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*4.34215000e-01+str(h_CRCC1-z)*4.10930000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*4.34454000e-01+str(h_CRCC1-z)*4.11264000e-01) + 4.16138000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('tot3', '(5.11849000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*5.10903000e-01+str(h_CRCC1-z)*4.43983000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*5.11172000e-01+str(h_CRCC1-z)*4.44030000e-01) + 4.47972000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('tot4', '(5.25283000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*5.24986000e-01+str(h_CRCC1-z)*4.41963000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*5.25071000e-01+str(h_CRCC1-z)*4.42327000e-01) + 4.47161000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('tot5', '(5.27589000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*5.26633000e-01+str(h_CRCC1-z)*4.42845000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*5.26667000e-01+str(h_CRCC1-z)*4.42937000e-01) + 4.47584000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('tot6', '(5.30050000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*5.29324000e-01+str(h_CRCC1-z)*4.43695000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*5.29731000e-01+str(h_CRCC1-z)*4.43917000e-01) + 4.47541000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('tot7', '(5.40043000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*5.39156000e-01+str(h_CRCC1-z)*4.50095000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*5.39903000e-01+str(h_CRCC1-z)*4.50322000e-01) + 4.53851000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('tot8', '(5.70910000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC1)*5.70008000e-01+str(h_CRCC1-z)*4.77366000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC1)*5.70402000e-01+str(h_CRCC1-z)*4.77601000e-01) + 4.81397000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('diff21', '2.57142857e-01*tot1[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('diff22', '2.57142857e-01*tot2[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('diff23', '2.57142857e-01*tot3[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('diff24', '2.57142857e-01*tot4[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('diff25', '2.57142857e-01*tot5[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('diff26', '2.57142857e-01*tot6[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('diff27', '2.57142857e-01*tot7[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('diff28', '2.57142857e-01*tot8[1/cm]');
model.component('mod1').variable('var_xsCRCC1').selection.geom('geom1', 3);
model.component('mod1').variable('var_xsCRCC1').selection.set([9]);
model.component('mod1').variable.create('var_xsCRCC2');
model.component('mod1').variable('var_xsCRCC2').set('beta1', '(5.43353000e-03*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*5.43353000e-03+str(h_CRCC2-z)*5.35302000e-03) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*5.43353000e-03+str(h_CRCC2-z)*5.35302000e-03) + 5.43353000e-03*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC2').set('betas1', '(1.64279000e-04*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*1.64279000e-04+str(h_CRCC2-z)*1.61013000e-04) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*1.64279000e-04+str(h_CRCC2-z)*1.61013000e-04) + 1.64279000e-04*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC2').set('betas2', '(9.82342000e-04*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*9.82342000e-04+str(h_CRCC2-z)*9.79956000e-04) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*9.82342000e-04+str(h_CRCC2-z)*9.79956000e-04) + 9.82342000e-04*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC2').set('betas3', '(8.84431000e-04*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*8.84431000e-04+str(h_CRCC2-z)*8.69379000e-04) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*8.84431000e-04+str(h_CRCC2-z)*8.69379000e-04) + 8.84431000e-04*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC2').set('betas4', '(2.41162000e-03*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*2.41162000e-03+str(h_CRCC2-z)*2.37140000e-03) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*2.41162000e-03+str(h_CRCC2-z)*2.37140000e-03) + 2.41162000e-03*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC2').set('betas5', '(7.43734000e-04*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*7.43734000e-04+str(h_CRCC2-z)*7.25365000e-04) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*7.43734000e-04+str(h_CRCC2-z)*7.25365000e-04) + 7.43734000e-04*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC2').set('betas6', '(2.47128000e-04*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*2.47128000e-04+str(h_CRCC2-z)*2.45908000e-04) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*2.47128000e-04+str(h_CRCC2-z)*2.45908000e-04) + 2.47128000e-04*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC2').set('chid1', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC2').set('chid2', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC2').set('chid3', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC2').set('chid4', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC2').set('chid5', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC2').set('chid6', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC2').set('chid7', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC2').set('chid8', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC2').set('chip1', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC2').set('chip2', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC2').set('chip3', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC2').set('chip4', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC2').set('chip5', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC2').set('chip6', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC2').set('chip7', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC2').set('chip8', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC2').set('chit1', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC2').set('chit2', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC2').set('chit3', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC2').set('chit4', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC2').set('chit5', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC2').set('chit6', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC2').set('chit7', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC2').set('chit8', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC2').set('diff11', '(1.91001000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*1.84571000e+00+str(h_CRCC2-z)*1.92274000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*1.85290000e+00+str(h_CRCC2-z)*1.92357000e+00) + 1.96966000e+00*str(1.125000-z)*str(z-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC2').set('diff12', '(8.74823000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*8.80209000e-01+str(h_CRCC2-z)*9.22150000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*8.79295000e-01+str(h_CRCC2-z)*9.21497000e-01) + 9.06750000e-01*str(1.125000-z)*str(z-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC2').set('diff13', '(6.88951000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*6.90284000e-01+str(h_CRCC2-z)*7.94998000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*6.89880000e-01+str(h_CRCC2-z)*7.94850000e-01) + 7.87453000e-01*str(1.125000-z)*str(z-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC2').set('diff14', '(6.70626000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*6.70676000e-01+str(h_CRCC2-z)*7.98007000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*6.70545000e-01+str(h_CRCC2-z)*7.97246000e-01) + 7.88298000e-01*str(1.125000-z)*str(z-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC2').set('diff15', '(6.66281000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*6.66894000e-01+str(h_CRCC2-z)*7.94861000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*6.67108000e-01+str(h_CRCC2-z)*7.94669000e-01) + 7.87026000e-01*str(1.125000-z)*str(z-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC2').set('diff16', '(6.58113000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*6.59767000e-01+str(h_CRCC2-z)*7.88891000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*6.59019000e-01+str(h_CRCC2-z)*7.88373000e-01) + 7.81863000e-01*str(1.125000-z)*str(z-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC2').set('diff17', '(6.34381000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*6.36002000e-01+str(h_CRCC2-z)*7.64998000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*6.34818000e-01+str(h_CRCC2-z)*7.64705000e-01) + 7.58584000e-01*str(1.125000-z)*str(z-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC2').set('diff18', '(5.70902000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*5.72016000e-01+str(h_CRCC2-z)*6.90042000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*5.71704000e-01+str(h_CRCC2-z)*6.89728000e-01) + 6.83815000e-01*str(1.125000-z)*str(z-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC2').set('fiss1', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('fiss2', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('fiss3', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('fiss4', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('fiss5', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('fiss6', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('fiss7', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('fiss8', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('invV1', '(4.78639000e-10*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*4.82300000e-10+str(h_CRCC2-z)*4.82876000e-10) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*4.82378000e-10+str(h_CRCC2-z)*4.82781000e-10) + 4.79355000e-10*str(1.125000-z)*str(z-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC2').set('invV2', '(2.01571000e-09*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*1.99602000e-09+str(h_CRCC2-z)*2.03134000e-09) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*1.99666000e-09+str(h_CRCC2-z)*2.03401000e-09) + 2.08374000e-09*str(1.125000-z)*str(z-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC2').set('invV3', '(3.13983000e-08*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*2.95064000e-08+str(h_CRCC2-z)*3.27319000e-08) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*2.97280000e-08+str(h_CRCC2-z)*3.28890000e-08) + 3.52807000e-08*str(1.125000-z)*str(z-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC2').set('invV4', '(2.07117000e-07*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*2.02784000e-07+str(h_CRCC2-z)*2.06592000e-07) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*2.03391000e-07+str(h_CRCC2-z)*2.06843000e-07) + 2.09692000e-07*str(1.125000-z)*str(z-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC2').set('invV5', '(7.05129000e-07*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*6.61738000e-07+str(h_CRCC2-z)*6.94283000e-07) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*6.65142000e-07+str(h_CRCC2-z)*6.98257000e-07) + 7.17410000e-07*str(1.125000-z)*str(z-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC2').set('invV6', '(1.37390000e-06*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*1.35173000e-06+str(h_CRCC2-z)*1.37382000e-06) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*1.35495000e-06+str(h_CRCC2-z)*1.37507000e-06) + 1.37856000e-06*str(1.125000-z)*str(z-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC2').set('invV7', '(2.16504000e-06*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*2.15480000e-06+str(h_CRCC2-z)*2.16898000e-06) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*2.15698000e-06+str(h_CRCC2-z)*2.16950000e-06) + 2.17039000e-06*str(1.125000-z)*str(z-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC2').set('invV8', '(4.16692000e-06*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*4.15058000e-06+str(h_CRCC2-z)*4.17466000e-06) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*4.15092000e-06+str(h_CRCC2-z)*4.17533000e-06) + 4.17809000e-06*str(1.125000-z)*str(z-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC2').set('kappa1', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC2').set('kappa2', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC2').set('kappa3', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC2').set('kappa4', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC2').set('kappa5', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC2').set('kappa6', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC2').set('kappa7', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC2').set('kappa8', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC2').set('lambdas1', '(1.25446000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*1.25446000e-02+str(h_CRCC2-z)*1.25438000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*1.25446000e-02+str(h_CRCC2-z)*1.25438000e-02) + 1.25446000e-02*str(1.125000-z)*str(z-0.416000))[1/s]');
model.component('mod1').variable('var_xsCRCC2').set('lambdas2', '(3.13123000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*3.13123000e-02+str(h_CRCC2-z)*3.13097000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*3.13123000e-02+str(h_CRCC2-z)*3.13097000e-02) + 3.13123000e-02*str(1.125000-z)*str(z-0.416000))[1/s]');
model.component('mod1').variable('var_xsCRCC2').set('lambdas3', '(1.09675000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*1.09675000e-01+str(h_CRCC2-z)*1.09688000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*1.09675000e-01+str(h_CRCC2-z)*1.09688000e-01) + 1.09675000e-01*str(1.125000-z)*str(z-0.416000))[1/s]');
model.component('mod1').variable('var_xsCRCC2').set('lambdas4', '(3.16600000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*3.16600000e-01+str(h_CRCC2-z)*3.16570000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*3.16600000e-01+str(h_CRCC2-z)*3.16570000e-01) + 3.16600000e-01*str(1.125000-z)*str(z-0.416000))[1/s]');
model.component('mod1').variable('var_xsCRCC2').set('lambdas5', '(1.29363000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*1.29363000e+00+str(h_CRCC2-z)*1.29339000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*1.29363000e+00+str(h_CRCC2-z)*1.29339000e+00) + 1.29363000e+00*str(1.125000-z)*str(z-0.416000))[1/s]');
model.component('mod1').variable('var_xsCRCC2').set('lambdas6', '(8.02100000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*8.02100000e+00+str(h_CRCC2-z)*8.02215000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*8.02100000e+00+str(h_CRCC2-z)*8.02215000e+00) + 8.02100000e+00*str(1.125000-z)*str(z-0.416000))[1/s]');
model.component('mod1').variable('var_xsCRCC2').set('nsf1', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('nsf2', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('nsf3', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('nsf4', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('nsf5', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('nsf6', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('nsf7', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('nsf8', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('rem1', '(5.00541000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*4.97916000e-02+str(h_CRCC2-z)*4.77815000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*5.01648000e-02+str(h_CRCC2-z)*4.78998000e-02) + 4.89290000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('rem2', '(2.49989000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*2.44761000e-02+str(h_CRCC2-z)*2.00560000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*2.45623000e-02+str(h_CRCC2-z)*2.01169000e-02) + 2.15083000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('rem3', '(3.00496000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*2.82014000e-02+str(h_CRCC2-z)*1.15956000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*2.84665000e-02+str(h_CRCC2-z)*1.17178000e-02) + 1.36807000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('rem4', '(5.65033000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*5.40676000e-02+str(h_CRCC2-z)*2.67818000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*5.44567000e-02+str(h_CRCC2-z)*2.69809000e-02) + 2.91181000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('rem5', '(9.17708000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*7.33991000e-02+str(h_CRCC2-z)*5.45236000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*7.47105000e-02+str(h_CRCC2-z)*5.61472000e-02) + 6.42548000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('rem6', '(1.21696000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*1.19829000e-01+str(h_CRCC2-z)*8.70662000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*1.20763000e-01+str(h_CRCC2-z)*8.73396000e-02) + 8.84098000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('rem7', '(1.09535000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*1.11576000e-01+str(h_CRCC2-z)*7.85043000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*1.12175000e-01+str(h_CRCC2-z)*7.85381000e-02) + 7.86864000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('rem8', '(1.30767000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*1.32126000e-01+str(h_CRCC2-z)*1.03731000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*1.33111000e-01+str(h_CRCC2-z)*1.03704000e-01) + 1.03676000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat11', '(1.60018000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*1.61966000e-01+str(h_CRCC2-z)*1.56910000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*1.61373000e-01+str(h_CRCC2-z)*1.56735000e-01) + 1.53216000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat12', '(4.86494000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*4.84963000e-02+str(h_CRCC2-z)*4.72354000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*4.88479000e-02+str(h_CRCC2-z)*4.73542000e-02) + 4.82637000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat13', '(1.41937000e-05*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*1.17516000e-05+str(h_CRCC2-z)*1.65225000e-05) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*1.23651000e-05+str(h_CRCC2-z)*1.36668000e-05) + 1.95285000e-05*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat14', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat15', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat16', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat17', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat18', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat21', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat22', '(4.11720000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*4.09739000e-01+str(h_CRCC2-z)*3.90874000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*4.09892000e-01+str(h_CRCC2-z)*3.91147000e-01) + 3.94630000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat23', '(2.14926000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*2.10593000e-02+str(h_CRCC2-z)*2.00342000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*2.11122000e-02+str(h_CRCC2-z)*2.00957000e-02) + 2.14881000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat24', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*2.32466000e-08) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat25', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat26', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat27', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat28', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat31', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat32', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat33', '(4.81799000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*4.82702000e-01+str(h_CRCC2-z)*4.32387000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*4.82706000e-01+str(h_CRCC2-z)*4.32312000e-01) + 4.34291000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat34', '(1.21869000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*1.05080000e-02+str(h_CRCC2-z)*1.15877000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*1.06714000e-02+str(h_CRCC2-z)*1.17098000e-02) + 1.36717000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat35', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat36', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat37', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat38', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat41', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat42', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat43', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat44', '(4.68779000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*4.70919000e-01+str(h_CRCC2-z)*4.15182000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*4.70614000e-01+str(h_CRCC2-z)*4.15346000e-01) + 4.18043000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat45', '(3.09607000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*2.81614000e-02+str(h_CRCC2-z)*2.67380000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*2.84327000e-02+str(h_CRCC2-z)*2.69383000e-02) + 2.90700000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat46', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat47', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat48', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat51', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat52', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat53', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat54', '(2.31814000e-04*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*3.02803000e-04+str(h_CRCC2-z)*2.33461000e-04) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*2.95016000e-04+str(h_CRCC2-z)*2.28078000e-04) + 2.02839000e-04*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat55', '(4.35818000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*4.53234000e-01+str(h_CRCC2-z)*3.88321000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*4.51956000e-01+str(h_CRCC2-z)*3.86790000e-01) + 3.83329000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat56', '(6.47935000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*4.58016000e-02+str(h_CRCC2-z)*5.34036000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*4.69991000e-02+str(h_CRCC2-z)*5.50034000e-02) + 6.29984000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat57', '(9.83692000e-04*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*6.62327000e-04+str(h_CRCC2-z)*7.36847000e-04) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*6.65889000e-04+str(h_CRCC2-z)*7.63327000e-04) + 8.98990000e-04*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat58', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*4.72892000e-07+str(h_CRCC2-z)*5.86323000e-07) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*1.35819000e-07+str(h_CRCC2-z)*6.25065000e-07) + 5.55205000e-07*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat61', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat62', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat63', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat64', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat65', '(1.27821000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*1.58145000e-02+str(h_CRCC2-z)*1.11721000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*1.52830000e-02+str(h_CRCC2-z)*1.10665000e-02) + 1.07689000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat66', '(4.08354000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*4.09495000e-01+str(h_CRCC2-z)*3.56629000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*4.08968000e-01+str(h_CRCC2-z)*3.56577000e-01) + 3.59132000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat67', '(7.90492000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*7.32029000e-02+str(h_CRCC2-z)*7.24936000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*7.39625000e-02+str(h_CRCC2-z)*7.28404000e-02) + 7.41392000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat68', '(3.92208000e-03*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*3.55428000e-03+str(h_CRCC2-z)*3.10382000e-03) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*3.62055000e-03+str(h_CRCC2-z)*3.13306000e-03) + 3.21210000e-03*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat71', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat72', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat73', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat74', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat75', '(1.45743000e-04*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*1.38430000e-04+str(h_CRCC2-z)*1.09829000e-04) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*1.44425000e-04+str(h_CRCC2-z)*1.09420000e-04) + 1.10697000e-04*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat76', '(5.54899000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*5.65430000e-02+str(h_CRCC2-z)*4.94355000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*5.61970000e-02+str(h_CRCC2-z)*4.94330000e-02) + 4.95782000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat77', '(4.30507000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*4.27580000e-01+str(h_CRCC2-z)*3.71591000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*4.27728000e-01+str(h_CRCC2-z)*3.71784000e-01) + 3.75165000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat78', '(2.78707000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*2.72958000e-02+str(h_CRCC2-z)*2.84849000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*2.75000000e-02+str(h_CRCC2-z)*2.85222000e-02) + 2.85320000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat81', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat82', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat83', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat84', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat85', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*1.49744000e-07) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z)*1.21245000e-07) + 1.68484000e-07*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat86', '(8.75668000e-03*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*8.73843000e-03+str(h_CRCC2-z)*6.84926000e-03) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*8.76158000e-03+str(h_CRCC2-z)*6.82818000e-03) + 6.97633000e-03*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat87', '(9.64325000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*9.60904000e-02+str(h_CRCC2-z)*9.59512000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*9.64355000e-02+str(h_CRCC2-z)*9.59477000e-02) + 9.57660000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat88', '(4.40144000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*4.37882000e-01+str(h_CRCC2-z)*3.73634000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*4.37292000e-01+str(h_CRCC2-z)*3.73897000e-01) + 3.77722000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('tot1', '(2.10072000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*2.11757000e-01+str(h_CRCC2-z)*2.04692000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*2.11538000e-01+str(h_CRCC2-z)*2.04635000e-01) + 2.02145000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('tot2', '(4.36719000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*4.34215000e-01+str(h_CRCC2-z)*4.10930000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*4.34454000e-01+str(h_CRCC2-z)*4.11264000e-01) + 4.16138000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('tot3', '(5.11849000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*5.10903000e-01+str(h_CRCC2-z)*4.43983000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*5.11172000e-01+str(h_CRCC2-z)*4.44030000e-01) + 4.47972000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('tot4', '(5.25283000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*5.24986000e-01+str(h_CRCC2-z)*4.41963000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*5.25071000e-01+str(h_CRCC2-z)*4.42327000e-01) + 4.47161000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('tot5', '(5.27589000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*5.26633000e-01+str(h_CRCC2-z)*4.42845000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*5.26667000e-01+str(h_CRCC2-z)*4.42937000e-01) + 4.47584000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('tot6', '(5.30050000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*5.29324000e-01+str(h_CRCC2-z)*4.43695000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*5.29731000e-01+str(h_CRCC2-z)*4.43917000e-01) + 4.47541000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('tot7', '(5.40043000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*5.39156000e-01+str(h_CRCC2-z)*4.50095000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*5.39903000e-01+str(h_CRCC2-z)*4.50322000e-01) + 4.53851000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('tot8', '(5.70910000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC2)*5.70008000e-01+str(h_CRCC2-z)*4.77366000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC2)*5.70402000e-01+str(h_CRCC2-z)*4.77601000e-01) + 4.81397000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('diff21', '2.57142857e-01*tot1[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('diff22', '2.57142857e-01*tot2[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('diff23', '2.57142857e-01*tot3[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('diff24', '2.57142857e-01*tot4[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('diff25', '2.57142857e-01*tot5[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('diff26', '2.57142857e-01*tot6[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('diff27', '2.57142857e-01*tot7[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('diff28', '2.57142857e-01*tot8[1/cm]');
model.component('mod1').variable('var_xsCRCC2').selection.geom('geom1', 3);
model.component('mod1').variable('var_xsCRCC2').selection.set([10]);
model.component('mod1').variable.create('var_xsCRCC3');
model.component('mod1').variable('var_xsCRCC3').set('beta1', '(5.43353000e-03*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*5.43353000e-03+str(h_CRCC3-z)*5.35302000e-03) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*5.43353000e-03+str(h_CRCC3-z)*5.35302000e-03) + 5.43353000e-03*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC3').set('betas1', '(1.64279000e-04*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*1.64279000e-04+str(h_CRCC3-z)*1.61013000e-04) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*1.64279000e-04+str(h_CRCC3-z)*1.61013000e-04) + 1.64279000e-04*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC3').set('betas2', '(9.82342000e-04*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*9.82342000e-04+str(h_CRCC3-z)*9.79956000e-04) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*9.82342000e-04+str(h_CRCC3-z)*9.79956000e-04) + 9.82342000e-04*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC3').set('betas3', '(8.84431000e-04*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*8.84431000e-04+str(h_CRCC3-z)*8.69379000e-04) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*8.84431000e-04+str(h_CRCC3-z)*8.69379000e-04) + 8.84431000e-04*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC3').set('betas4', '(2.41162000e-03*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*2.41162000e-03+str(h_CRCC3-z)*2.37140000e-03) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*2.41162000e-03+str(h_CRCC3-z)*2.37140000e-03) + 2.41162000e-03*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC3').set('betas5', '(7.43734000e-04*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*7.43734000e-04+str(h_CRCC3-z)*7.25365000e-04) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*7.43734000e-04+str(h_CRCC3-z)*7.25365000e-04) + 7.43734000e-04*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC3').set('betas6', '(2.47128000e-04*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*2.47128000e-04+str(h_CRCC3-z)*2.45908000e-04) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*2.47128000e-04+str(h_CRCC3-z)*2.45908000e-04) + 2.47128000e-04*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC3').set('chid1', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC3').set('chid2', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC3').set('chid3', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC3').set('chid4', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC3').set('chid5', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC3').set('chid6', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC3').set('chid7', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC3').set('chid8', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC3').set('chip1', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC3').set('chip2', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC3').set('chip3', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC3').set('chip4', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC3').set('chip5', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC3').set('chip6', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC3').set('chip7', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC3').set('chip8', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC3').set('chit1', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC3').set('chit2', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC3').set('chit3', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC3').set('chit4', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC3').set('chit5', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC3').set('chit6', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC3').set('chit7', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC3').set('chit8', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC3').set('diff11', '(1.91001000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*1.84571000e+00+str(h_CRCC3-z)*1.92274000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*1.85290000e+00+str(h_CRCC3-z)*1.92357000e+00) + 1.96966000e+00*str(1.125000-z)*str(z-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC3').set('diff12', '(8.74823000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*8.80209000e-01+str(h_CRCC3-z)*9.22150000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*8.79295000e-01+str(h_CRCC3-z)*9.21497000e-01) + 9.06750000e-01*str(1.125000-z)*str(z-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC3').set('diff13', '(6.88951000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*6.90284000e-01+str(h_CRCC3-z)*7.94998000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*6.89880000e-01+str(h_CRCC3-z)*7.94850000e-01) + 7.87453000e-01*str(1.125000-z)*str(z-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC3').set('diff14', '(6.70626000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*6.70676000e-01+str(h_CRCC3-z)*7.98007000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*6.70545000e-01+str(h_CRCC3-z)*7.97246000e-01) + 7.88298000e-01*str(1.125000-z)*str(z-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC3').set('diff15', '(6.66281000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*6.66894000e-01+str(h_CRCC3-z)*7.94861000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*6.67108000e-01+str(h_CRCC3-z)*7.94669000e-01) + 7.87026000e-01*str(1.125000-z)*str(z-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC3').set('diff16', '(6.58113000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*6.59767000e-01+str(h_CRCC3-z)*7.88891000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*6.59019000e-01+str(h_CRCC3-z)*7.88373000e-01) + 7.81863000e-01*str(1.125000-z)*str(z-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC3').set('diff17', '(6.34381000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*6.36002000e-01+str(h_CRCC3-z)*7.64998000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*6.34818000e-01+str(h_CRCC3-z)*7.64705000e-01) + 7.58584000e-01*str(1.125000-z)*str(z-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC3').set('diff18', '(5.70902000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*5.72016000e-01+str(h_CRCC3-z)*6.90042000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*5.71704000e-01+str(h_CRCC3-z)*6.89728000e-01) + 6.83815000e-01*str(1.125000-z)*str(z-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC3').set('fiss1', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('fiss2', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('fiss3', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('fiss4', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('fiss5', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('fiss6', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('fiss7', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('fiss8', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('invV1', '(4.78639000e-10*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*4.82300000e-10+str(h_CRCC3-z)*4.82876000e-10) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*4.82378000e-10+str(h_CRCC3-z)*4.82781000e-10) + 4.79355000e-10*str(1.125000-z)*str(z-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC3').set('invV2', '(2.01571000e-09*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*1.99602000e-09+str(h_CRCC3-z)*2.03134000e-09) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*1.99666000e-09+str(h_CRCC3-z)*2.03401000e-09) + 2.08374000e-09*str(1.125000-z)*str(z-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC3').set('invV3', '(3.13983000e-08*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*2.95064000e-08+str(h_CRCC3-z)*3.27319000e-08) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*2.97280000e-08+str(h_CRCC3-z)*3.28890000e-08) + 3.52807000e-08*str(1.125000-z)*str(z-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC3').set('invV4', '(2.07117000e-07*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*2.02784000e-07+str(h_CRCC3-z)*2.06592000e-07) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*2.03391000e-07+str(h_CRCC3-z)*2.06843000e-07) + 2.09692000e-07*str(1.125000-z)*str(z-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC3').set('invV5', '(7.05129000e-07*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*6.61738000e-07+str(h_CRCC3-z)*6.94283000e-07) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*6.65142000e-07+str(h_CRCC3-z)*6.98257000e-07) + 7.17410000e-07*str(1.125000-z)*str(z-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC3').set('invV6', '(1.37390000e-06*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*1.35173000e-06+str(h_CRCC3-z)*1.37382000e-06) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*1.35495000e-06+str(h_CRCC3-z)*1.37507000e-06) + 1.37856000e-06*str(1.125000-z)*str(z-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC3').set('invV7', '(2.16504000e-06*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*2.15480000e-06+str(h_CRCC3-z)*2.16898000e-06) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*2.15698000e-06+str(h_CRCC3-z)*2.16950000e-06) + 2.17039000e-06*str(1.125000-z)*str(z-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC3').set('invV8', '(4.16692000e-06*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*4.15058000e-06+str(h_CRCC3-z)*4.17466000e-06) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*4.15092000e-06+str(h_CRCC3-z)*4.17533000e-06) + 4.17809000e-06*str(1.125000-z)*str(z-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC3').set('kappa1', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC3').set('kappa2', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC3').set('kappa3', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC3').set('kappa4', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC3').set('kappa5', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC3').set('kappa6', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC3').set('kappa7', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC3').set('kappa8', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC3').set('lambdas1', '(1.25446000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*1.25446000e-02+str(h_CRCC3-z)*1.25438000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*1.25446000e-02+str(h_CRCC3-z)*1.25438000e-02) + 1.25446000e-02*str(1.125000-z)*str(z-0.416000))[1/s]');
model.component('mod1').variable('var_xsCRCC3').set('lambdas2', '(3.13123000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*3.13123000e-02+str(h_CRCC3-z)*3.13097000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*3.13123000e-02+str(h_CRCC3-z)*3.13097000e-02) + 3.13123000e-02*str(1.125000-z)*str(z-0.416000))[1/s]');
model.component('mod1').variable('var_xsCRCC3').set('lambdas3', '(1.09675000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*1.09675000e-01+str(h_CRCC3-z)*1.09688000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*1.09675000e-01+str(h_CRCC3-z)*1.09688000e-01) + 1.09675000e-01*str(1.125000-z)*str(z-0.416000))[1/s]');
model.component('mod1').variable('var_xsCRCC3').set('lambdas4', '(3.16600000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*3.16600000e-01+str(h_CRCC3-z)*3.16570000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*3.16600000e-01+str(h_CRCC3-z)*3.16570000e-01) + 3.16600000e-01*str(1.125000-z)*str(z-0.416000))[1/s]');
model.component('mod1').variable('var_xsCRCC3').set('lambdas5', '(1.29363000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*1.29363000e+00+str(h_CRCC3-z)*1.29339000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*1.29363000e+00+str(h_CRCC3-z)*1.29339000e+00) + 1.29363000e+00*str(1.125000-z)*str(z-0.416000))[1/s]');
model.component('mod1').variable('var_xsCRCC3').set('lambdas6', '(8.02100000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*8.02100000e+00+str(h_CRCC3-z)*8.02215000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*8.02100000e+00+str(h_CRCC3-z)*8.02215000e+00) + 8.02100000e+00*str(1.125000-z)*str(z-0.416000))[1/s]');
model.component('mod1').variable('var_xsCRCC3').set('nsf1', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('nsf2', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('nsf3', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('nsf4', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('nsf5', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('nsf6', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('nsf7', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('nsf8', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('rem1', '(5.00541000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*4.97916000e-02+str(h_CRCC3-z)*4.77815000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*5.01648000e-02+str(h_CRCC3-z)*4.78998000e-02) + 4.89290000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('rem2', '(2.49989000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*2.44761000e-02+str(h_CRCC3-z)*2.00560000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*2.45623000e-02+str(h_CRCC3-z)*2.01169000e-02) + 2.15083000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('rem3', '(3.00496000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*2.82014000e-02+str(h_CRCC3-z)*1.15956000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*2.84665000e-02+str(h_CRCC3-z)*1.17178000e-02) + 1.36807000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('rem4', '(5.65033000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*5.40676000e-02+str(h_CRCC3-z)*2.67818000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*5.44567000e-02+str(h_CRCC3-z)*2.69809000e-02) + 2.91181000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('rem5', '(9.17708000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*7.33991000e-02+str(h_CRCC3-z)*5.45236000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*7.47105000e-02+str(h_CRCC3-z)*5.61472000e-02) + 6.42548000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('rem6', '(1.21696000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*1.19829000e-01+str(h_CRCC3-z)*8.70662000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*1.20763000e-01+str(h_CRCC3-z)*8.73396000e-02) + 8.84098000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('rem7', '(1.09535000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*1.11576000e-01+str(h_CRCC3-z)*7.85043000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*1.12175000e-01+str(h_CRCC3-z)*7.85381000e-02) + 7.86864000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('rem8', '(1.30767000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*1.32126000e-01+str(h_CRCC3-z)*1.03731000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*1.33111000e-01+str(h_CRCC3-z)*1.03704000e-01) + 1.03676000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat11', '(1.60018000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*1.61966000e-01+str(h_CRCC3-z)*1.56910000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*1.61373000e-01+str(h_CRCC3-z)*1.56735000e-01) + 1.53216000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat12', '(4.86494000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*4.84963000e-02+str(h_CRCC3-z)*4.72354000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*4.88479000e-02+str(h_CRCC3-z)*4.73542000e-02) + 4.82637000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat13', '(1.41937000e-05*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*1.17516000e-05+str(h_CRCC3-z)*1.65225000e-05) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*1.23651000e-05+str(h_CRCC3-z)*1.36668000e-05) + 1.95285000e-05*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat14', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat15', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat16', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat17', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat18', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat21', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat22', '(4.11720000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*4.09739000e-01+str(h_CRCC3-z)*3.90874000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*4.09892000e-01+str(h_CRCC3-z)*3.91147000e-01) + 3.94630000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat23', '(2.14926000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*2.10593000e-02+str(h_CRCC3-z)*2.00342000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*2.11122000e-02+str(h_CRCC3-z)*2.00957000e-02) + 2.14881000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat24', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*2.32466000e-08) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat25', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat26', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat27', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat28', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat31', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat32', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat33', '(4.81799000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*4.82702000e-01+str(h_CRCC3-z)*4.32387000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*4.82706000e-01+str(h_CRCC3-z)*4.32312000e-01) + 4.34291000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat34', '(1.21869000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*1.05080000e-02+str(h_CRCC3-z)*1.15877000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*1.06714000e-02+str(h_CRCC3-z)*1.17098000e-02) + 1.36717000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat35', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat36', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat37', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat38', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat41', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat42', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat43', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat44', '(4.68779000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*4.70919000e-01+str(h_CRCC3-z)*4.15182000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*4.70614000e-01+str(h_CRCC3-z)*4.15346000e-01) + 4.18043000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat45', '(3.09607000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*2.81614000e-02+str(h_CRCC3-z)*2.67380000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*2.84327000e-02+str(h_CRCC3-z)*2.69383000e-02) + 2.90700000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat46', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat47', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat48', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat51', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat52', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat53', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat54', '(2.31814000e-04*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*3.02803000e-04+str(h_CRCC3-z)*2.33461000e-04) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*2.95016000e-04+str(h_CRCC3-z)*2.28078000e-04) + 2.02839000e-04*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat55', '(4.35818000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*4.53234000e-01+str(h_CRCC3-z)*3.88321000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*4.51956000e-01+str(h_CRCC3-z)*3.86790000e-01) + 3.83329000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat56', '(6.47935000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*4.58016000e-02+str(h_CRCC3-z)*5.34036000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*4.69991000e-02+str(h_CRCC3-z)*5.50034000e-02) + 6.29984000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat57', '(9.83692000e-04*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*6.62327000e-04+str(h_CRCC3-z)*7.36847000e-04) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*6.65889000e-04+str(h_CRCC3-z)*7.63327000e-04) + 8.98990000e-04*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat58', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*4.72892000e-07+str(h_CRCC3-z)*5.86323000e-07) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*1.35819000e-07+str(h_CRCC3-z)*6.25065000e-07) + 5.55205000e-07*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat61', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat62', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat63', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat64', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat65', '(1.27821000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*1.58145000e-02+str(h_CRCC3-z)*1.11721000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*1.52830000e-02+str(h_CRCC3-z)*1.10665000e-02) + 1.07689000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat66', '(4.08354000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*4.09495000e-01+str(h_CRCC3-z)*3.56629000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*4.08968000e-01+str(h_CRCC3-z)*3.56577000e-01) + 3.59132000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat67', '(7.90492000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*7.32029000e-02+str(h_CRCC3-z)*7.24936000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*7.39625000e-02+str(h_CRCC3-z)*7.28404000e-02) + 7.41392000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat68', '(3.92208000e-03*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*3.55428000e-03+str(h_CRCC3-z)*3.10382000e-03) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*3.62055000e-03+str(h_CRCC3-z)*3.13306000e-03) + 3.21210000e-03*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat71', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat72', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat73', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat74', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat75', '(1.45743000e-04*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*1.38430000e-04+str(h_CRCC3-z)*1.09829000e-04) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*1.44425000e-04+str(h_CRCC3-z)*1.09420000e-04) + 1.10697000e-04*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat76', '(5.54899000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*5.65430000e-02+str(h_CRCC3-z)*4.94355000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*5.61970000e-02+str(h_CRCC3-z)*4.94330000e-02) + 4.95782000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat77', '(4.30507000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*4.27580000e-01+str(h_CRCC3-z)*3.71591000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*4.27728000e-01+str(h_CRCC3-z)*3.71784000e-01) + 3.75165000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat78', '(2.78707000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*2.72958000e-02+str(h_CRCC3-z)*2.84849000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*2.75000000e-02+str(h_CRCC3-z)*2.85222000e-02) + 2.85320000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat81', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat82', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat83', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat84', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat85', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*1.49744000e-07) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z)*1.21245000e-07) + 1.68484000e-07*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat86', '(8.75668000e-03*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*8.73843000e-03+str(h_CRCC3-z)*6.84926000e-03) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*8.76158000e-03+str(h_CRCC3-z)*6.82818000e-03) + 6.97633000e-03*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat87', '(9.64325000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*9.60904000e-02+str(h_CRCC3-z)*9.59512000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*9.64355000e-02+str(h_CRCC3-z)*9.59477000e-02) + 9.57660000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat88', '(4.40144000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*4.37882000e-01+str(h_CRCC3-z)*3.73634000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*4.37292000e-01+str(h_CRCC3-z)*3.73897000e-01) + 3.77722000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('tot1', '(2.10072000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*2.11757000e-01+str(h_CRCC3-z)*2.04692000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*2.11538000e-01+str(h_CRCC3-z)*2.04635000e-01) + 2.02145000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('tot2', '(4.36719000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*4.34215000e-01+str(h_CRCC3-z)*4.10930000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*4.34454000e-01+str(h_CRCC3-z)*4.11264000e-01) + 4.16138000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('tot3', '(5.11849000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*5.10903000e-01+str(h_CRCC3-z)*4.43983000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*5.11172000e-01+str(h_CRCC3-z)*4.44030000e-01) + 4.47972000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('tot4', '(5.25283000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*5.24986000e-01+str(h_CRCC3-z)*4.41963000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*5.25071000e-01+str(h_CRCC3-z)*4.42327000e-01) + 4.47161000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('tot5', '(5.27589000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*5.26633000e-01+str(h_CRCC3-z)*4.42845000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*5.26667000e-01+str(h_CRCC3-z)*4.42937000e-01) + 4.47584000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('tot6', '(5.30050000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*5.29324000e-01+str(h_CRCC3-z)*4.43695000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*5.29731000e-01+str(h_CRCC3-z)*4.43917000e-01) + 4.47541000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('tot7', '(5.40043000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*5.39156000e-01+str(h_CRCC3-z)*4.50095000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*5.39903000e-01+str(h_CRCC3-z)*4.50322000e-01) + 4.53851000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('tot8', '(5.70910000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC3)*5.70008000e-01+str(h_CRCC3-z)*4.77366000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC3)*5.70402000e-01+str(h_CRCC3-z)*4.77601000e-01) + 4.81397000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('diff21', '2.57142857e-01*tot1[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('diff22', '2.57142857e-01*tot2[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('diff23', '2.57142857e-01*tot3[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('diff24', '2.57142857e-01*tot4[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('diff25', '2.57142857e-01*tot5[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('diff26', '2.57142857e-01*tot6[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('diff27', '2.57142857e-01*tot7[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('diff28', '2.57142857e-01*tot8[1/cm]');
model.component('mod1').variable('var_xsCRCC3').selection.geom('geom1', 3);
model.component('mod1').variable('var_xsCRCC3').selection.set([11]);
model.component('mod1').variable.create('var_xsCRCC4');
model.component('mod1').variable('var_xsCRCC4').set('beta1', '(5.43353000e-03*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*5.43353000e-03+str(h_CRCC4-z)*5.35302000e-03) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*5.43353000e-03+str(h_CRCC4-z)*5.35302000e-03) + 5.43353000e-03*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC4').set('betas1', '(1.64279000e-04*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*1.64279000e-04+str(h_CRCC4-z)*1.61013000e-04) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*1.64279000e-04+str(h_CRCC4-z)*1.61013000e-04) + 1.64279000e-04*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC4').set('betas2', '(9.82342000e-04*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*9.82342000e-04+str(h_CRCC4-z)*9.79956000e-04) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*9.82342000e-04+str(h_CRCC4-z)*9.79956000e-04) + 9.82342000e-04*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC4').set('betas3', '(8.84431000e-04*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*8.84431000e-04+str(h_CRCC4-z)*8.69379000e-04) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*8.84431000e-04+str(h_CRCC4-z)*8.69379000e-04) + 8.84431000e-04*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC4').set('betas4', '(2.41162000e-03*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*2.41162000e-03+str(h_CRCC4-z)*2.37140000e-03) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*2.41162000e-03+str(h_CRCC4-z)*2.37140000e-03) + 2.41162000e-03*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC4').set('betas5', '(7.43734000e-04*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*7.43734000e-04+str(h_CRCC4-z)*7.25365000e-04) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*7.43734000e-04+str(h_CRCC4-z)*7.25365000e-04) + 7.43734000e-04*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC4').set('betas6', '(2.47128000e-04*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*2.47128000e-04+str(h_CRCC4-z)*2.45908000e-04) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*2.47128000e-04+str(h_CRCC4-z)*2.45908000e-04) + 2.47128000e-04*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC4').set('chid1', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC4').set('chid2', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC4').set('chid3', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC4').set('chid4', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC4').set('chid5', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC4').set('chid6', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC4').set('chid7', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC4').set('chid8', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC4').set('chip1', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC4').set('chip2', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC4').set('chip3', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC4').set('chip4', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC4').set('chip5', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC4').set('chip6', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC4').set('chip7', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC4').set('chip8', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC4').set('chit1', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC4').set('chit2', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC4').set('chit3', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC4').set('chit4', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC4').set('chit5', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC4').set('chit6', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC4').set('chit7', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC4').set('chit8', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC4').set('diff11', '(1.91001000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*1.84571000e+00+str(h_CRCC4-z)*1.92274000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*1.85290000e+00+str(h_CRCC4-z)*1.92357000e+00) + 1.96966000e+00*str(1.125000-z)*str(z-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC4').set('diff12', '(8.74823000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*8.80209000e-01+str(h_CRCC4-z)*9.22150000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*8.79295000e-01+str(h_CRCC4-z)*9.21497000e-01) + 9.06750000e-01*str(1.125000-z)*str(z-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC4').set('diff13', '(6.88951000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*6.90284000e-01+str(h_CRCC4-z)*7.94998000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*6.89880000e-01+str(h_CRCC4-z)*7.94850000e-01) + 7.87453000e-01*str(1.125000-z)*str(z-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC4').set('diff14', '(6.70626000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*6.70676000e-01+str(h_CRCC4-z)*7.98007000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*6.70545000e-01+str(h_CRCC4-z)*7.97246000e-01) + 7.88298000e-01*str(1.125000-z)*str(z-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC4').set('diff15', '(6.66281000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*6.66894000e-01+str(h_CRCC4-z)*7.94861000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*6.67108000e-01+str(h_CRCC4-z)*7.94669000e-01) + 7.87026000e-01*str(1.125000-z)*str(z-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC4').set('diff16', '(6.58113000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*6.59767000e-01+str(h_CRCC4-z)*7.88891000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*6.59019000e-01+str(h_CRCC4-z)*7.88373000e-01) + 7.81863000e-01*str(1.125000-z)*str(z-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC4').set('diff17', '(6.34381000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*6.36002000e-01+str(h_CRCC4-z)*7.64998000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*6.34818000e-01+str(h_CRCC4-z)*7.64705000e-01) + 7.58584000e-01*str(1.125000-z)*str(z-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC4').set('diff18', '(5.70902000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*5.72016000e-01+str(h_CRCC4-z)*6.90042000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*5.71704000e-01+str(h_CRCC4-z)*6.89728000e-01) + 6.83815000e-01*str(1.125000-z)*str(z-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC4').set('fiss1', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('fiss2', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('fiss3', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('fiss4', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('fiss5', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('fiss6', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('fiss7', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('fiss8', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('invV1', '(4.78639000e-10*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*4.82300000e-10+str(h_CRCC4-z)*4.82876000e-10) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*4.82378000e-10+str(h_CRCC4-z)*4.82781000e-10) + 4.79355000e-10*str(1.125000-z)*str(z-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC4').set('invV2', '(2.01571000e-09*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*1.99602000e-09+str(h_CRCC4-z)*2.03134000e-09) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*1.99666000e-09+str(h_CRCC4-z)*2.03401000e-09) + 2.08374000e-09*str(1.125000-z)*str(z-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC4').set('invV3', '(3.13983000e-08*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*2.95064000e-08+str(h_CRCC4-z)*3.27319000e-08) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*2.97280000e-08+str(h_CRCC4-z)*3.28890000e-08) + 3.52807000e-08*str(1.125000-z)*str(z-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC4').set('invV4', '(2.07117000e-07*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*2.02784000e-07+str(h_CRCC4-z)*2.06592000e-07) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*2.03391000e-07+str(h_CRCC4-z)*2.06843000e-07) + 2.09692000e-07*str(1.125000-z)*str(z-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC4').set('invV5', '(7.05129000e-07*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*6.61738000e-07+str(h_CRCC4-z)*6.94283000e-07) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*6.65142000e-07+str(h_CRCC4-z)*6.98257000e-07) + 7.17410000e-07*str(1.125000-z)*str(z-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC4').set('invV6', '(1.37390000e-06*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*1.35173000e-06+str(h_CRCC4-z)*1.37382000e-06) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*1.35495000e-06+str(h_CRCC4-z)*1.37507000e-06) + 1.37856000e-06*str(1.125000-z)*str(z-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC4').set('invV7', '(2.16504000e-06*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*2.15480000e-06+str(h_CRCC4-z)*2.16898000e-06) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*2.15698000e-06+str(h_CRCC4-z)*2.16950000e-06) + 2.17039000e-06*str(1.125000-z)*str(z-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC4').set('invV8', '(4.16692000e-06*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*4.15058000e-06+str(h_CRCC4-z)*4.17466000e-06) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*4.15092000e-06+str(h_CRCC4-z)*4.17533000e-06) + 4.17809000e-06*str(1.125000-z)*str(z-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC4').set('kappa1', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC4').set('kappa2', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC4').set('kappa3', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC4').set('kappa4', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC4').set('kappa5', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC4').set('kappa6', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC4').set('kappa7', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC4').set('kappa8', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC4').set('lambdas1', '(1.25446000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*1.25446000e-02+str(h_CRCC4-z)*1.25438000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*1.25446000e-02+str(h_CRCC4-z)*1.25438000e-02) + 1.25446000e-02*str(1.125000-z)*str(z-0.416000))[1/s]');
model.component('mod1').variable('var_xsCRCC4').set('lambdas2', '(3.13123000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*3.13123000e-02+str(h_CRCC4-z)*3.13097000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*3.13123000e-02+str(h_CRCC4-z)*3.13097000e-02) + 3.13123000e-02*str(1.125000-z)*str(z-0.416000))[1/s]');
model.component('mod1').variable('var_xsCRCC4').set('lambdas3', '(1.09675000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*1.09675000e-01+str(h_CRCC4-z)*1.09688000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*1.09675000e-01+str(h_CRCC4-z)*1.09688000e-01) + 1.09675000e-01*str(1.125000-z)*str(z-0.416000))[1/s]');
model.component('mod1').variable('var_xsCRCC4').set('lambdas4', '(3.16600000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*3.16600000e-01+str(h_CRCC4-z)*3.16570000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*3.16600000e-01+str(h_CRCC4-z)*3.16570000e-01) + 3.16600000e-01*str(1.125000-z)*str(z-0.416000))[1/s]');
model.component('mod1').variable('var_xsCRCC4').set('lambdas5', '(1.29363000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*1.29363000e+00+str(h_CRCC4-z)*1.29339000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*1.29363000e+00+str(h_CRCC4-z)*1.29339000e+00) + 1.29363000e+00*str(1.125000-z)*str(z-0.416000))[1/s]');
model.component('mod1').variable('var_xsCRCC4').set('lambdas6', '(8.02100000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*8.02100000e+00+str(h_CRCC4-z)*8.02215000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*8.02100000e+00+str(h_CRCC4-z)*8.02215000e+00) + 8.02100000e+00*str(1.125000-z)*str(z-0.416000))[1/s]');
model.component('mod1').variable('var_xsCRCC4').set('nsf1', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('nsf2', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('nsf3', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('nsf4', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('nsf5', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('nsf6', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('nsf7', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('nsf8', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('rem1', '(5.00541000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*4.97916000e-02+str(h_CRCC4-z)*4.77815000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*5.01648000e-02+str(h_CRCC4-z)*4.78998000e-02) + 4.89290000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('rem2', '(2.49989000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*2.44761000e-02+str(h_CRCC4-z)*2.00560000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*2.45623000e-02+str(h_CRCC4-z)*2.01169000e-02) + 2.15083000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('rem3', '(3.00496000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*2.82014000e-02+str(h_CRCC4-z)*1.15956000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*2.84665000e-02+str(h_CRCC4-z)*1.17178000e-02) + 1.36807000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('rem4', '(5.65033000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*5.40676000e-02+str(h_CRCC4-z)*2.67818000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*5.44567000e-02+str(h_CRCC4-z)*2.69809000e-02) + 2.91181000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('rem5', '(9.17708000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*7.33991000e-02+str(h_CRCC4-z)*5.45236000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*7.47105000e-02+str(h_CRCC4-z)*5.61472000e-02) + 6.42548000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('rem6', '(1.21696000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*1.19829000e-01+str(h_CRCC4-z)*8.70662000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*1.20763000e-01+str(h_CRCC4-z)*8.73396000e-02) + 8.84098000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('rem7', '(1.09535000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*1.11576000e-01+str(h_CRCC4-z)*7.85043000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*1.12175000e-01+str(h_CRCC4-z)*7.85381000e-02) + 7.86864000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('rem8', '(1.30767000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*1.32126000e-01+str(h_CRCC4-z)*1.03731000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*1.33111000e-01+str(h_CRCC4-z)*1.03704000e-01) + 1.03676000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat11', '(1.60018000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*1.61966000e-01+str(h_CRCC4-z)*1.56910000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*1.61373000e-01+str(h_CRCC4-z)*1.56735000e-01) + 1.53216000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat12', '(4.86494000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*4.84963000e-02+str(h_CRCC4-z)*4.72354000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*4.88479000e-02+str(h_CRCC4-z)*4.73542000e-02) + 4.82637000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat13', '(1.41937000e-05*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*1.17516000e-05+str(h_CRCC4-z)*1.65225000e-05) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*1.23651000e-05+str(h_CRCC4-z)*1.36668000e-05) + 1.95285000e-05*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat14', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat15', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat16', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat17', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat18', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat21', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat22', '(4.11720000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*4.09739000e-01+str(h_CRCC4-z)*3.90874000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*4.09892000e-01+str(h_CRCC4-z)*3.91147000e-01) + 3.94630000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat23', '(2.14926000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*2.10593000e-02+str(h_CRCC4-z)*2.00342000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*2.11122000e-02+str(h_CRCC4-z)*2.00957000e-02) + 2.14881000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat24', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*2.32466000e-08) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat25', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat26', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat27', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat28', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat31', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat32', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat33', '(4.81799000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*4.82702000e-01+str(h_CRCC4-z)*4.32387000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*4.82706000e-01+str(h_CRCC4-z)*4.32312000e-01) + 4.34291000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat34', '(1.21869000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*1.05080000e-02+str(h_CRCC4-z)*1.15877000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*1.06714000e-02+str(h_CRCC4-z)*1.17098000e-02) + 1.36717000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat35', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat36', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat37', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat38', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat41', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat42', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat43', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat44', '(4.68779000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*4.70919000e-01+str(h_CRCC4-z)*4.15182000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*4.70614000e-01+str(h_CRCC4-z)*4.15346000e-01) + 4.18043000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat45', '(3.09607000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*2.81614000e-02+str(h_CRCC4-z)*2.67380000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*2.84327000e-02+str(h_CRCC4-z)*2.69383000e-02) + 2.90700000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat46', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat47', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat48', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat51', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat52', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat53', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat54', '(2.31814000e-04*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*3.02803000e-04+str(h_CRCC4-z)*2.33461000e-04) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*2.95016000e-04+str(h_CRCC4-z)*2.28078000e-04) + 2.02839000e-04*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat55', '(4.35818000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*4.53234000e-01+str(h_CRCC4-z)*3.88321000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*4.51956000e-01+str(h_CRCC4-z)*3.86790000e-01) + 3.83329000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat56', '(6.47935000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*4.58016000e-02+str(h_CRCC4-z)*5.34036000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*4.69991000e-02+str(h_CRCC4-z)*5.50034000e-02) + 6.29984000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat57', '(9.83692000e-04*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*6.62327000e-04+str(h_CRCC4-z)*7.36847000e-04) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*6.65889000e-04+str(h_CRCC4-z)*7.63327000e-04) + 8.98990000e-04*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat58', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*4.72892000e-07+str(h_CRCC4-z)*5.86323000e-07) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*1.35819000e-07+str(h_CRCC4-z)*6.25065000e-07) + 5.55205000e-07*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat61', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat62', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat63', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat64', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat65', '(1.27821000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*1.58145000e-02+str(h_CRCC4-z)*1.11721000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*1.52830000e-02+str(h_CRCC4-z)*1.10665000e-02) + 1.07689000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat66', '(4.08354000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*4.09495000e-01+str(h_CRCC4-z)*3.56629000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*4.08968000e-01+str(h_CRCC4-z)*3.56577000e-01) + 3.59132000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat67', '(7.90492000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*7.32029000e-02+str(h_CRCC4-z)*7.24936000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*7.39625000e-02+str(h_CRCC4-z)*7.28404000e-02) + 7.41392000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat68', '(3.92208000e-03*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*3.55428000e-03+str(h_CRCC4-z)*3.10382000e-03) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*3.62055000e-03+str(h_CRCC4-z)*3.13306000e-03) + 3.21210000e-03*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat71', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat72', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat73', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat74', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat75', '(1.45743000e-04*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*1.38430000e-04+str(h_CRCC4-z)*1.09829000e-04) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*1.44425000e-04+str(h_CRCC4-z)*1.09420000e-04) + 1.10697000e-04*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat76', '(5.54899000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*5.65430000e-02+str(h_CRCC4-z)*4.94355000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*5.61970000e-02+str(h_CRCC4-z)*4.94330000e-02) + 4.95782000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat77', '(4.30507000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*4.27580000e-01+str(h_CRCC4-z)*3.71591000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*4.27728000e-01+str(h_CRCC4-z)*3.71784000e-01) + 3.75165000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat78', '(2.78707000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*2.72958000e-02+str(h_CRCC4-z)*2.84849000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*2.75000000e-02+str(h_CRCC4-z)*2.85222000e-02) + 2.85320000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat81', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat82', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat83', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat84', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat85', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*1.49744000e-07) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z)*1.21245000e-07) + 1.68484000e-07*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat86', '(8.75668000e-03*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*8.73843000e-03+str(h_CRCC4-z)*6.84926000e-03) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*8.76158000e-03+str(h_CRCC4-z)*6.82818000e-03) + 6.97633000e-03*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat87', '(9.64325000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*9.60904000e-02+str(h_CRCC4-z)*9.59512000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*9.64355000e-02+str(h_CRCC4-z)*9.59477000e-02) + 9.57660000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat88', '(4.40144000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*4.37882000e-01+str(h_CRCC4-z)*3.73634000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*4.37292000e-01+str(h_CRCC4-z)*3.73897000e-01) + 3.77722000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('tot1', '(2.10072000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*2.11757000e-01+str(h_CRCC4-z)*2.04692000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*2.11538000e-01+str(h_CRCC4-z)*2.04635000e-01) + 2.02145000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('tot2', '(4.36719000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*4.34215000e-01+str(h_CRCC4-z)*4.10930000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*4.34454000e-01+str(h_CRCC4-z)*4.11264000e-01) + 4.16138000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('tot3', '(5.11849000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*5.10903000e-01+str(h_CRCC4-z)*4.43983000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*5.11172000e-01+str(h_CRCC4-z)*4.44030000e-01) + 4.47972000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('tot4', '(5.25283000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*5.24986000e-01+str(h_CRCC4-z)*4.41963000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*5.25071000e-01+str(h_CRCC4-z)*4.42327000e-01) + 4.47161000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('tot5', '(5.27589000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*5.26633000e-01+str(h_CRCC4-z)*4.42845000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*5.26667000e-01+str(h_CRCC4-z)*4.42937000e-01) + 4.47584000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('tot6', '(5.30050000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*5.29324000e-01+str(h_CRCC4-z)*4.43695000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*5.29731000e-01+str(h_CRCC4-z)*4.43917000e-01) + 4.47541000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('tot7', '(5.40043000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*5.39156000e-01+str(h_CRCC4-z)*4.50095000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*5.39903000e-01+str(h_CRCC4-z)*4.50322000e-01) + 4.53851000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('tot8', '(5.70910000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC4)*5.70008000e-01+str(h_CRCC4-z)*4.77366000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC4)*5.70402000e-01+str(h_CRCC4-z)*4.77601000e-01) + 4.81397000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('diff21', '2.57142857e-01*tot1[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('diff22', '2.57142857e-01*tot2[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('diff23', '2.57142857e-01*tot3[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('diff24', '2.57142857e-01*tot4[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('diff25', '2.57142857e-01*tot5[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('diff26', '2.57142857e-01*tot6[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('diff27', '2.57142857e-01*tot7[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('diff28', '2.57142857e-01*tot8[1/cm]');
model.component('mod1').variable('var_xsCRCC4').selection.geom('geom1', 3);
model.component('mod1').variable('var_xsCRCC4').selection.set([12]);
model.component('mod1').variable.create('var_xsCRCC5');
model.component('mod1').variable('var_xsCRCC5').set('beta1', '(5.43353000e-03*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*5.43353000e-03+str(h_CRCC5-z)*5.35302000e-03) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*5.43353000e-03+str(h_CRCC5-z)*5.35302000e-03) + 5.43353000e-03*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC5').set('betas1', '(1.64279000e-04*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*1.64279000e-04+str(h_CRCC5-z)*1.61013000e-04) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*1.64279000e-04+str(h_CRCC5-z)*1.61013000e-04) + 1.64279000e-04*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC5').set('betas2', '(9.82342000e-04*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*9.82342000e-04+str(h_CRCC5-z)*9.79956000e-04) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*9.82342000e-04+str(h_CRCC5-z)*9.79956000e-04) + 9.82342000e-04*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC5').set('betas3', '(8.84431000e-04*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*8.84431000e-04+str(h_CRCC5-z)*8.69379000e-04) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*8.84431000e-04+str(h_CRCC5-z)*8.69379000e-04) + 8.84431000e-04*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC5').set('betas4', '(2.41162000e-03*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*2.41162000e-03+str(h_CRCC5-z)*2.37140000e-03) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*2.41162000e-03+str(h_CRCC5-z)*2.37140000e-03) + 2.41162000e-03*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC5').set('betas5', '(7.43734000e-04*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*7.43734000e-04+str(h_CRCC5-z)*7.25365000e-04) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*7.43734000e-04+str(h_CRCC5-z)*7.25365000e-04) + 7.43734000e-04*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC5').set('betas6', '(2.47128000e-04*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*2.47128000e-04+str(h_CRCC5-z)*2.45908000e-04) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*2.47128000e-04+str(h_CRCC5-z)*2.45908000e-04) + 2.47128000e-04*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC5').set('chid1', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC5').set('chid2', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC5').set('chid3', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC5').set('chid4', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC5').set('chid5', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC5').set('chid6', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC5').set('chid7', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC5').set('chid8', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC5').set('chip1', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC5').set('chip2', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC5').set('chip3', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC5').set('chip4', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC5').set('chip5', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC5').set('chip6', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC5').set('chip7', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC5').set('chip8', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC5').set('chit1', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC5').set('chit2', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC5').set('chit3', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC5').set('chit4', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC5').set('chit5', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC5').set('chit6', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC5').set('chit7', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC5').set('chit8', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC5').set('diff11', '(1.91001000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*1.84571000e+00+str(h_CRCC5-z)*1.92274000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*1.85290000e+00+str(h_CRCC5-z)*1.92357000e+00) + 1.96966000e+00*str(1.125000-z)*str(z-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC5').set('diff12', '(8.74823000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*8.80209000e-01+str(h_CRCC5-z)*9.22150000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*8.79295000e-01+str(h_CRCC5-z)*9.21497000e-01) + 9.06750000e-01*str(1.125000-z)*str(z-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC5').set('diff13', '(6.88951000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*6.90284000e-01+str(h_CRCC5-z)*7.94998000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*6.89880000e-01+str(h_CRCC5-z)*7.94850000e-01) + 7.87453000e-01*str(1.125000-z)*str(z-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC5').set('diff14', '(6.70626000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*6.70676000e-01+str(h_CRCC5-z)*7.98007000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*6.70545000e-01+str(h_CRCC5-z)*7.97246000e-01) + 7.88298000e-01*str(1.125000-z)*str(z-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC5').set('diff15', '(6.66281000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*6.66894000e-01+str(h_CRCC5-z)*7.94861000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*6.67108000e-01+str(h_CRCC5-z)*7.94669000e-01) + 7.87026000e-01*str(1.125000-z)*str(z-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC5').set('diff16', '(6.58113000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*6.59767000e-01+str(h_CRCC5-z)*7.88891000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*6.59019000e-01+str(h_CRCC5-z)*7.88373000e-01) + 7.81863000e-01*str(1.125000-z)*str(z-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC5').set('diff17', '(6.34381000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*6.36002000e-01+str(h_CRCC5-z)*7.64998000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*6.34818000e-01+str(h_CRCC5-z)*7.64705000e-01) + 7.58584000e-01*str(1.125000-z)*str(z-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC5').set('diff18', '(5.70902000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*5.72016000e-01+str(h_CRCC5-z)*6.90042000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*5.71704000e-01+str(h_CRCC5-z)*6.89728000e-01) + 6.83815000e-01*str(1.125000-z)*str(z-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC5').set('fiss1', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('fiss2', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('fiss3', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('fiss4', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('fiss5', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('fiss6', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('fiss7', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('fiss8', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('invV1', '(4.78639000e-10*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*4.82300000e-10+str(h_CRCC5-z)*4.82876000e-10) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*4.82378000e-10+str(h_CRCC5-z)*4.82781000e-10) + 4.79355000e-10*str(1.125000-z)*str(z-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC5').set('invV2', '(2.01571000e-09*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*1.99602000e-09+str(h_CRCC5-z)*2.03134000e-09) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*1.99666000e-09+str(h_CRCC5-z)*2.03401000e-09) + 2.08374000e-09*str(1.125000-z)*str(z-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC5').set('invV3', '(3.13983000e-08*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*2.95064000e-08+str(h_CRCC5-z)*3.27319000e-08) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*2.97280000e-08+str(h_CRCC5-z)*3.28890000e-08) + 3.52807000e-08*str(1.125000-z)*str(z-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC5').set('invV4', '(2.07117000e-07*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*2.02784000e-07+str(h_CRCC5-z)*2.06592000e-07) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*2.03391000e-07+str(h_CRCC5-z)*2.06843000e-07) + 2.09692000e-07*str(1.125000-z)*str(z-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC5').set('invV5', '(7.05129000e-07*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*6.61738000e-07+str(h_CRCC5-z)*6.94283000e-07) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*6.65142000e-07+str(h_CRCC5-z)*6.98257000e-07) + 7.17410000e-07*str(1.125000-z)*str(z-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC5').set('invV6', '(1.37390000e-06*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*1.35173000e-06+str(h_CRCC5-z)*1.37382000e-06) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*1.35495000e-06+str(h_CRCC5-z)*1.37507000e-06) + 1.37856000e-06*str(1.125000-z)*str(z-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC5').set('invV7', '(2.16504000e-06*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*2.15480000e-06+str(h_CRCC5-z)*2.16898000e-06) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*2.15698000e-06+str(h_CRCC5-z)*2.16950000e-06) + 2.17039000e-06*str(1.125000-z)*str(z-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC5').set('invV8', '(4.16692000e-06*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*4.15058000e-06+str(h_CRCC5-z)*4.17466000e-06) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*4.15092000e-06+str(h_CRCC5-z)*4.17533000e-06) + 4.17809000e-06*str(1.125000-z)*str(z-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC5').set('kappa1', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC5').set('kappa2', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC5').set('kappa3', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC5').set('kappa4', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC5').set('kappa5', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC5').set('kappa6', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC5').set('kappa7', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC5').set('kappa8', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC5').set('lambdas1', '(1.25446000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*1.25446000e-02+str(h_CRCC5-z)*1.25438000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*1.25446000e-02+str(h_CRCC5-z)*1.25438000e-02) + 1.25446000e-02*str(1.125000-z)*str(z-0.416000))[1/s]');
model.component('mod1').variable('var_xsCRCC5').set('lambdas2', '(3.13123000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*3.13123000e-02+str(h_CRCC5-z)*3.13097000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*3.13123000e-02+str(h_CRCC5-z)*3.13097000e-02) + 3.13123000e-02*str(1.125000-z)*str(z-0.416000))[1/s]');
model.component('mod1').variable('var_xsCRCC5').set('lambdas3', '(1.09675000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*1.09675000e-01+str(h_CRCC5-z)*1.09688000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*1.09675000e-01+str(h_CRCC5-z)*1.09688000e-01) + 1.09675000e-01*str(1.125000-z)*str(z-0.416000))[1/s]');
model.component('mod1').variable('var_xsCRCC5').set('lambdas4', '(3.16600000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*3.16600000e-01+str(h_CRCC5-z)*3.16570000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*3.16600000e-01+str(h_CRCC5-z)*3.16570000e-01) + 3.16600000e-01*str(1.125000-z)*str(z-0.416000))[1/s]');
model.component('mod1').variable('var_xsCRCC5').set('lambdas5', '(1.29363000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*1.29363000e+00+str(h_CRCC5-z)*1.29339000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*1.29363000e+00+str(h_CRCC5-z)*1.29339000e+00) + 1.29363000e+00*str(1.125000-z)*str(z-0.416000))[1/s]');
model.component('mod1').variable('var_xsCRCC5').set('lambdas6', '(8.02100000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*8.02100000e+00+str(h_CRCC5-z)*8.02215000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*8.02100000e+00+str(h_CRCC5-z)*8.02215000e+00) + 8.02100000e+00*str(1.125000-z)*str(z-0.416000))[1/s]');
model.component('mod1').variable('var_xsCRCC5').set('nsf1', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('nsf2', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('nsf3', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('nsf4', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('nsf5', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('nsf6', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('nsf7', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('nsf8', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('rem1', '(5.00541000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*4.97916000e-02+str(h_CRCC5-z)*4.77815000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*5.01648000e-02+str(h_CRCC5-z)*4.78998000e-02) + 4.89290000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('rem2', '(2.49989000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*2.44761000e-02+str(h_CRCC5-z)*2.00560000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*2.45623000e-02+str(h_CRCC5-z)*2.01169000e-02) + 2.15083000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('rem3', '(3.00496000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*2.82014000e-02+str(h_CRCC5-z)*1.15956000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*2.84665000e-02+str(h_CRCC5-z)*1.17178000e-02) + 1.36807000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('rem4', '(5.65033000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*5.40676000e-02+str(h_CRCC5-z)*2.67818000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*5.44567000e-02+str(h_CRCC5-z)*2.69809000e-02) + 2.91181000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('rem5', '(9.17708000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*7.33991000e-02+str(h_CRCC5-z)*5.45236000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*7.47105000e-02+str(h_CRCC5-z)*5.61472000e-02) + 6.42548000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('rem6', '(1.21696000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*1.19829000e-01+str(h_CRCC5-z)*8.70662000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*1.20763000e-01+str(h_CRCC5-z)*8.73396000e-02) + 8.84098000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('rem7', '(1.09535000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*1.11576000e-01+str(h_CRCC5-z)*7.85043000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*1.12175000e-01+str(h_CRCC5-z)*7.85381000e-02) + 7.86864000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('rem8', '(1.30767000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*1.32126000e-01+str(h_CRCC5-z)*1.03731000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*1.33111000e-01+str(h_CRCC5-z)*1.03704000e-01) + 1.03676000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat11', '(1.60018000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*1.61966000e-01+str(h_CRCC5-z)*1.56910000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*1.61373000e-01+str(h_CRCC5-z)*1.56735000e-01) + 1.53216000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat12', '(4.86494000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*4.84963000e-02+str(h_CRCC5-z)*4.72354000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*4.88479000e-02+str(h_CRCC5-z)*4.73542000e-02) + 4.82637000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat13', '(1.41937000e-05*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*1.17516000e-05+str(h_CRCC5-z)*1.65225000e-05) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*1.23651000e-05+str(h_CRCC5-z)*1.36668000e-05) + 1.95285000e-05*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat14', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat15', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat16', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat17', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat18', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat21', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat22', '(4.11720000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*4.09739000e-01+str(h_CRCC5-z)*3.90874000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*4.09892000e-01+str(h_CRCC5-z)*3.91147000e-01) + 3.94630000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat23', '(2.14926000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*2.10593000e-02+str(h_CRCC5-z)*2.00342000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*2.11122000e-02+str(h_CRCC5-z)*2.00957000e-02) + 2.14881000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat24', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*2.32466000e-08) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat25', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat26', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat27', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat28', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat31', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat32', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat33', '(4.81799000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*4.82702000e-01+str(h_CRCC5-z)*4.32387000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*4.82706000e-01+str(h_CRCC5-z)*4.32312000e-01) + 4.34291000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat34', '(1.21869000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*1.05080000e-02+str(h_CRCC5-z)*1.15877000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*1.06714000e-02+str(h_CRCC5-z)*1.17098000e-02) + 1.36717000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat35', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat36', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat37', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat38', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat41', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat42', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat43', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat44', '(4.68779000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*4.70919000e-01+str(h_CRCC5-z)*4.15182000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*4.70614000e-01+str(h_CRCC5-z)*4.15346000e-01) + 4.18043000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat45', '(3.09607000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*2.81614000e-02+str(h_CRCC5-z)*2.67380000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*2.84327000e-02+str(h_CRCC5-z)*2.69383000e-02) + 2.90700000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat46', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat47', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat48', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat51', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat52', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat53', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat54', '(2.31814000e-04*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*3.02803000e-04+str(h_CRCC5-z)*2.33461000e-04) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*2.95016000e-04+str(h_CRCC5-z)*2.28078000e-04) + 2.02839000e-04*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat55', '(4.35818000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*4.53234000e-01+str(h_CRCC5-z)*3.88321000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*4.51956000e-01+str(h_CRCC5-z)*3.86790000e-01) + 3.83329000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat56', '(6.47935000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*4.58016000e-02+str(h_CRCC5-z)*5.34036000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*4.69991000e-02+str(h_CRCC5-z)*5.50034000e-02) + 6.29984000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat57', '(9.83692000e-04*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*6.62327000e-04+str(h_CRCC5-z)*7.36847000e-04) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*6.65889000e-04+str(h_CRCC5-z)*7.63327000e-04) + 8.98990000e-04*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat58', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*4.72892000e-07+str(h_CRCC5-z)*5.86323000e-07) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*1.35819000e-07+str(h_CRCC5-z)*6.25065000e-07) + 5.55205000e-07*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat61', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat62', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat63', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat64', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat65', '(1.27821000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*1.58145000e-02+str(h_CRCC5-z)*1.11721000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*1.52830000e-02+str(h_CRCC5-z)*1.10665000e-02) + 1.07689000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat66', '(4.08354000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*4.09495000e-01+str(h_CRCC5-z)*3.56629000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*4.08968000e-01+str(h_CRCC5-z)*3.56577000e-01) + 3.59132000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat67', '(7.90492000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*7.32029000e-02+str(h_CRCC5-z)*7.24936000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*7.39625000e-02+str(h_CRCC5-z)*7.28404000e-02) + 7.41392000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat68', '(3.92208000e-03*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*3.55428000e-03+str(h_CRCC5-z)*3.10382000e-03) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*3.62055000e-03+str(h_CRCC5-z)*3.13306000e-03) + 3.21210000e-03*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat71', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat72', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat73', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat74', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat75', '(1.45743000e-04*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*1.38430000e-04+str(h_CRCC5-z)*1.09829000e-04) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*1.44425000e-04+str(h_CRCC5-z)*1.09420000e-04) + 1.10697000e-04*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat76', '(5.54899000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*5.65430000e-02+str(h_CRCC5-z)*4.94355000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*5.61970000e-02+str(h_CRCC5-z)*4.94330000e-02) + 4.95782000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat77', '(4.30507000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*4.27580000e-01+str(h_CRCC5-z)*3.71591000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*4.27728000e-01+str(h_CRCC5-z)*3.71784000e-01) + 3.75165000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat78', '(2.78707000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*2.72958000e-02+str(h_CRCC5-z)*2.84849000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*2.75000000e-02+str(h_CRCC5-z)*2.85222000e-02) + 2.85320000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat81', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat82', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat83', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat84', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat85', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*1.49744000e-07) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z)*1.21245000e-07) + 1.68484000e-07*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat86', '(8.75668000e-03*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*8.73843000e-03+str(h_CRCC5-z)*6.84926000e-03) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*8.76158000e-03+str(h_CRCC5-z)*6.82818000e-03) + 6.97633000e-03*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat87', '(9.64325000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*9.60904000e-02+str(h_CRCC5-z)*9.59512000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*9.64355000e-02+str(h_CRCC5-z)*9.59477000e-02) + 9.57660000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat88', '(4.40144000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*4.37882000e-01+str(h_CRCC5-z)*3.73634000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*4.37292000e-01+str(h_CRCC5-z)*3.73897000e-01) + 3.77722000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('tot1', '(2.10072000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*2.11757000e-01+str(h_CRCC5-z)*2.04692000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*2.11538000e-01+str(h_CRCC5-z)*2.04635000e-01) + 2.02145000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('tot2', '(4.36719000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*4.34215000e-01+str(h_CRCC5-z)*4.10930000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*4.34454000e-01+str(h_CRCC5-z)*4.11264000e-01) + 4.16138000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('tot3', '(5.11849000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*5.10903000e-01+str(h_CRCC5-z)*4.43983000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*5.11172000e-01+str(h_CRCC5-z)*4.44030000e-01) + 4.47972000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('tot4', '(5.25283000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*5.24986000e-01+str(h_CRCC5-z)*4.41963000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*5.25071000e-01+str(h_CRCC5-z)*4.42327000e-01) + 4.47161000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('tot5', '(5.27589000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*5.26633000e-01+str(h_CRCC5-z)*4.42845000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*5.26667000e-01+str(h_CRCC5-z)*4.42937000e-01) + 4.47584000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('tot6', '(5.30050000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*5.29324000e-01+str(h_CRCC5-z)*4.43695000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*5.29731000e-01+str(h_CRCC5-z)*4.43917000e-01) + 4.47541000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('tot7', '(5.40043000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*5.39156000e-01+str(h_CRCC5-z)*4.50095000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*5.39903000e-01+str(h_CRCC5-z)*4.50322000e-01) + 4.53851000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('tot8', '(5.70910000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC5)*5.70008000e-01+str(h_CRCC5-z)*4.77366000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC5)*5.70402000e-01+str(h_CRCC5-z)*4.77601000e-01) + 4.81397000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('diff21', '2.57142857e-01*tot1[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('diff22', '2.57142857e-01*tot2[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('diff23', '2.57142857e-01*tot3[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('diff24', '2.57142857e-01*tot4[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('diff25', '2.57142857e-01*tot5[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('diff26', '2.57142857e-01*tot6[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('diff27', '2.57142857e-01*tot7[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('diff28', '2.57142857e-01*tot8[1/cm]');
model.component('mod1').variable('var_xsCRCC5').selection.geom('geom1', 3);
model.component('mod1').variable('var_xsCRCC5').selection.set([13]);
model.component('mod1').variable.create('var_xsCRCC6');
model.component('mod1').variable('var_xsCRCC6').set('beta1', '(5.43353000e-03*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*5.43353000e-03+str(h_CRCC6-z)*5.35302000e-03) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*5.43353000e-03+str(h_CRCC6-z)*5.35302000e-03) + 5.43353000e-03*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC6').set('betas1', '(1.64279000e-04*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*1.64279000e-04+str(h_CRCC6-z)*1.61013000e-04) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*1.64279000e-04+str(h_CRCC6-z)*1.61013000e-04) + 1.64279000e-04*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC6').set('betas2', '(9.82342000e-04*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*9.82342000e-04+str(h_CRCC6-z)*9.79956000e-04) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*9.82342000e-04+str(h_CRCC6-z)*9.79956000e-04) + 9.82342000e-04*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC6').set('betas3', '(8.84431000e-04*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*8.84431000e-04+str(h_CRCC6-z)*8.69379000e-04) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*8.84431000e-04+str(h_CRCC6-z)*8.69379000e-04) + 8.84431000e-04*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC6').set('betas4', '(2.41162000e-03*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*2.41162000e-03+str(h_CRCC6-z)*2.37140000e-03) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*2.41162000e-03+str(h_CRCC6-z)*2.37140000e-03) + 2.41162000e-03*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC6').set('betas5', '(7.43734000e-04*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*7.43734000e-04+str(h_CRCC6-z)*7.25365000e-04) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*7.43734000e-04+str(h_CRCC6-z)*7.25365000e-04) + 7.43734000e-04*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC6').set('betas6', '(2.47128000e-04*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*2.47128000e-04+str(h_CRCC6-z)*2.45908000e-04) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*2.47128000e-04+str(h_CRCC6-z)*2.45908000e-04) + 2.47128000e-04*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC6').set('chid1', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC6').set('chid2', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC6').set('chid3', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC6').set('chid4', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC6').set('chid5', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC6').set('chid6', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC6').set('chid7', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC6').set('chid8', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC6').set('chip1', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC6').set('chip2', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC6').set('chip3', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC6').set('chip4', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC6').set('chip5', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC6').set('chip6', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC6').set('chip7', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC6').set('chip8', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC6').set('chit1', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC6').set('chit2', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC6').set('chit3', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC6').set('chit4', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC6').set('chit5', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC6').set('chit6', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC6').set('chit7', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC6').set('chit8', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC6').set('diff11', '(1.91001000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*1.84571000e+00+str(h_CRCC6-z)*1.92274000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*1.85290000e+00+str(h_CRCC6-z)*1.92357000e+00) + 1.96966000e+00*str(1.125000-z)*str(z-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC6').set('diff12', '(8.74823000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*8.80209000e-01+str(h_CRCC6-z)*9.22150000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*8.79295000e-01+str(h_CRCC6-z)*9.21497000e-01) + 9.06750000e-01*str(1.125000-z)*str(z-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC6').set('diff13', '(6.88951000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*6.90284000e-01+str(h_CRCC6-z)*7.94998000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*6.89880000e-01+str(h_CRCC6-z)*7.94850000e-01) + 7.87453000e-01*str(1.125000-z)*str(z-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC6').set('diff14', '(6.70626000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*6.70676000e-01+str(h_CRCC6-z)*7.98007000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*6.70545000e-01+str(h_CRCC6-z)*7.97246000e-01) + 7.88298000e-01*str(1.125000-z)*str(z-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC6').set('diff15', '(6.66281000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*6.66894000e-01+str(h_CRCC6-z)*7.94861000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*6.67108000e-01+str(h_CRCC6-z)*7.94669000e-01) + 7.87026000e-01*str(1.125000-z)*str(z-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC6').set('diff16', '(6.58113000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*6.59767000e-01+str(h_CRCC6-z)*7.88891000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*6.59019000e-01+str(h_CRCC6-z)*7.88373000e-01) + 7.81863000e-01*str(1.125000-z)*str(z-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC6').set('diff17', '(6.34381000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*6.36002000e-01+str(h_CRCC6-z)*7.64998000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*6.34818000e-01+str(h_CRCC6-z)*7.64705000e-01) + 7.58584000e-01*str(1.125000-z)*str(z-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC6').set('diff18', '(5.70902000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*5.72016000e-01+str(h_CRCC6-z)*6.90042000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*5.71704000e-01+str(h_CRCC6-z)*6.89728000e-01) + 6.83815000e-01*str(1.125000-z)*str(z-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC6').set('fiss1', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('fiss2', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('fiss3', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('fiss4', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('fiss5', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('fiss6', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('fiss7', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('fiss8', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('invV1', '(4.78639000e-10*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*4.82300000e-10+str(h_CRCC6-z)*4.82876000e-10) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*4.82378000e-10+str(h_CRCC6-z)*4.82781000e-10) + 4.79355000e-10*str(1.125000-z)*str(z-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC6').set('invV2', '(2.01571000e-09*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*1.99602000e-09+str(h_CRCC6-z)*2.03134000e-09) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*1.99666000e-09+str(h_CRCC6-z)*2.03401000e-09) + 2.08374000e-09*str(1.125000-z)*str(z-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC6').set('invV3', '(3.13983000e-08*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*2.95064000e-08+str(h_CRCC6-z)*3.27319000e-08) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*2.97280000e-08+str(h_CRCC6-z)*3.28890000e-08) + 3.52807000e-08*str(1.125000-z)*str(z-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC6').set('invV4', '(2.07117000e-07*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*2.02784000e-07+str(h_CRCC6-z)*2.06592000e-07) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*2.03391000e-07+str(h_CRCC6-z)*2.06843000e-07) + 2.09692000e-07*str(1.125000-z)*str(z-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC6').set('invV5', '(7.05129000e-07*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*6.61738000e-07+str(h_CRCC6-z)*6.94283000e-07) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*6.65142000e-07+str(h_CRCC6-z)*6.98257000e-07) + 7.17410000e-07*str(1.125000-z)*str(z-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC6').set('invV6', '(1.37390000e-06*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*1.35173000e-06+str(h_CRCC6-z)*1.37382000e-06) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*1.35495000e-06+str(h_CRCC6-z)*1.37507000e-06) + 1.37856000e-06*str(1.125000-z)*str(z-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC6').set('invV7', '(2.16504000e-06*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*2.15480000e-06+str(h_CRCC6-z)*2.16898000e-06) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*2.15698000e-06+str(h_CRCC6-z)*2.16950000e-06) + 2.17039000e-06*str(1.125000-z)*str(z-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC6').set('invV8', '(4.16692000e-06*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*4.15058000e-06+str(h_CRCC6-z)*4.17466000e-06) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*4.15092000e-06+str(h_CRCC6-z)*4.17533000e-06) + 4.17809000e-06*str(1.125000-z)*str(z-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC6').set('kappa1', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC6').set('kappa2', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC6').set('kappa3', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC6').set('kappa4', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC6').set('kappa5', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC6').set('kappa6', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC6').set('kappa7', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC6').set('kappa8', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC6').set('lambdas1', '(1.25446000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*1.25446000e-02+str(h_CRCC6-z)*1.25438000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*1.25446000e-02+str(h_CRCC6-z)*1.25438000e-02) + 1.25446000e-02*str(1.125000-z)*str(z-0.416000))[1/s]');
model.component('mod1').variable('var_xsCRCC6').set('lambdas2', '(3.13123000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*3.13123000e-02+str(h_CRCC6-z)*3.13097000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*3.13123000e-02+str(h_CRCC6-z)*3.13097000e-02) + 3.13123000e-02*str(1.125000-z)*str(z-0.416000))[1/s]');
model.component('mod1').variable('var_xsCRCC6').set('lambdas3', '(1.09675000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*1.09675000e-01+str(h_CRCC6-z)*1.09688000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*1.09675000e-01+str(h_CRCC6-z)*1.09688000e-01) + 1.09675000e-01*str(1.125000-z)*str(z-0.416000))[1/s]');
model.component('mod1').variable('var_xsCRCC6').set('lambdas4', '(3.16600000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*3.16600000e-01+str(h_CRCC6-z)*3.16570000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*3.16600000e-01+str(h_CRCC6-z)*3.16570000e-01) + 3.16600000e-01*str(1.125000-z)*str(z-0.416000))[1/s]');
model.component('mod1').variable('var_xsCRCC6').set('lambdas5', '(1.29363000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*1.29363000e+00+str(h_CRCC6-z)*1.29339000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*1.29363000e+00+str(h_CRCC6-z)*1.29339000e+00) + 1.29363000e+00*str(1.125000-z)*str(z-0.416000))[1/s]');
model.component('mod1').variable('var_xsCRCC6').set('lambdas6', '(8.02100000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*8.02100000e+00+str(h_CRCC6-z)*8.02215000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*8.02100000e+00+str(h_CRCC6-z)*8.02215000e+00) + 8.02100000e+00*str(1.125000-z)*str(z-0.416000))[1/s]');
model.component('mod1').variable('var_xsCRCC6').set('nsf1', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('nsf2', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('nsf3', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('nsf4', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('nsf5', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('nsf6', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('nsf7', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('nsf8', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('rem1', '(5.00541000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*4.97916000e-02+str(h_CRCC6-z)*4.77815000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*5.01648000e-02+str(h_CRCC6-z)*4.78998000e-02) + 4.89290000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('rem2', '(2.49989000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*2.44761000e-02+str(h_CRCC6-z)*2.00560000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*2.45623000e-02+str(h_CRCC6-z)*2.01169000e-02) + 2.15083000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('rem3', '(3.00496000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*2.82014000e-02+str(h_CRCC6-z)*1.15956000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*2.84665000e-02+str(h_CRCC6-z)*1.17178000e-02) + 1.36807000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('rem4', '(5.65033000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*5.40676000e-02+str(h_CRCC6-z)*2.67818000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*5.44567000e-02+str(h_CRCC6-z)*2.69809000e-02) + 2.91181000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('rem5', '(9.17708000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*7.33991000e-02+str(h_CRCC6-z)*5.45236000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*7.47105000e-02+str(h_CRCC6-z)*5.61472000e-02) + 6.42548000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('rem6', '(1.21696000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*1.19829000e-01+str(h_CRCC6-z)*8.70662000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*1.20763000e-01+str(h_CRCC6-z)*8.73396000e-02) + 8.84098000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('rem7', '(1.09535000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*1.11576000e-01+str(h_CRCC6-z)*7.85043000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*1.12175000e-01+str(h_CRCC6-z)*7.85381000e-02) + 7.86864000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('rem8', '(1.30767000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*1.32126000e-01+str(h_CRCC6-z)*1.03731000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*1.33111000e-01+str(h_CRCC6-z)*1.03704000e-01) + 1.03676000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat11', '(1.60018000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*1.61966000e-01+str(h_CRCC6-z)*1.56910000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*1.61373000e-01+str(h_CRCC6-z)*1.56735000e-01) + 1.53216000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat12', '(4.86494000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*4.84963000e-02+str(h_CRCC6-z)*4.72354000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*4.88479000e-02+str(h_CRCC6-z)*4.73542000e-02) + 4.82637000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat13', '(1.41937000e-05*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*1.17516000e-05+str(h_CRCC6-z)*1.65225000e-05) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*1.23651000e-05+str(h_CRCC6-z)*1.36668000e-05) + 1.95285000e-05*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat14', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat15', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat16', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat17', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat18', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat21', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat22', '(4.11720000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*4.09739000e-01+str(h_CRCC6-z)*3.90874000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*4.09892000e-01+str(h_CRCC6-z)*3.91147000e-01) + 3.94630000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat23', '(2.14926000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*2.10593000e-02+str(h_CRCC6-z)*2.00342000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*2.11122000e-02+str(h_CRCC6-z)*2.00957000e-02) + 2.14881000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat24', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*2.32466000e-08) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat25', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat26', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat27', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat28', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat31', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat32', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat33', '(4.81799000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*4.82702000e-01+str(h_CRCC6-z)*4.32387000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*4.82706000e-01+str(h_CRCC6-z)*4.32312000e-01) + 4.34291000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat34', '(1.21869000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*1.05080000e-02+str(h_CRCC6-z)*1.15877000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*1.06714000e-02+str(h_CRCC6-z)*1.17098000e-02) + 1.36717000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat35', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat36', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat37', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat38', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat41', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat42', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat43', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat44', '(4.68779000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*4.70919000e-01+str(h_CRCC6-z)*4.15182000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*4.70614000e-01+str(h_CRCC6-z)*4.15346000e-01) + 4.18043000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat45', '(3.09607000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*2.81614000e-02+str(h_CRCC6-z)*2.67380000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*2.84327000e-02+str(h_CRCC6-z)*2.69383000e-02) + 2.90700000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat46', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat47', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat48', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat51', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat52', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat53', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat54', '(2.31814000e-04*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*3.02803000e-04+str(h_CRCC6-z)*2.33461000e-04) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*2.95016000e-04+str(h_CRCC6-z)*2.28078000e-04) + 2.02839000e-04*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat55', '(4.35818000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*4.53234000e-01+str(h_CRCC6-z)*3.88321000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*4.51956000e-01+str(h_CRCC6-z)*3.86790000e-01) + 3.83329000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat56', '(6.47935000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*4.58016000e-02+str(h_CRCC6-z)*5.34036000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*4.69991000e-02+str(h_CRCC6-z)*5.50034000e-02) + 6.29984000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat57', '(9.83692000e-04*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*6.62327000e-04+str(h_CRCC6-z)*7.36847000e-04) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*6.65889000e-04+str(h_CRCC6-z)*7.63327000e-04) + 8.98990000e-04*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat58', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*4.72892000e-07+str(h_CRCC6-z)*5.86323000e-07) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*1.35819000e-07+str(h_CRCC6-z)*6.25065000e-07) + 5.55205000e-07*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat61', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat62', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat63', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat64', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat65', '(1.27821000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*1.58145000e-02+str(h_CRCC6-z)*1.11721000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*1.52830000e-02+str(h_CRCC6-z)*1.10665000e-02) + 1.07689000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat66', '(4.08354000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*4.09495000e-01+str(h_CRCC6-z)*3.56629000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*4.08968000e-01+str(h_CRCC6-z)*3.56577000e-01) + 3.59132000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat67', '(7.90492000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*7.32029000e-02+str(h_CRCC6-z)*7.24936000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*7.39625000e-02+str(h_CRCC6-z)*7.28404000e-02) + 7.41392000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat68', '(3.92208000e-03*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*3.55428000e-03+str(h_CRCC6-z)*3.10382000e-03) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*3.62055000e-03+str(h_CRCC6-z)*3.13306000e-03) + 3.21210000e-03*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat71', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat72', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat73', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat74', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat75', '(1.45743000e-04*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*1.38430000e-04+str(h_CRCC6-z)*1.09829000e-04) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*1.44425000e-04+str(h_CRCC6-z)*1.09420000e-04) + 1.10697000e-04*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat76', '(5.54899000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*5.65430000e-02+str(h_CRCC6-z)*4.94355000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*5.61970000e-02+str(h_CRCC6-z)*4.94330000e-02) + 4.95782000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat77', '(4.30507000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*4.27580000e-01+str(h_CRCC6-z)*3.71591000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*4.27728000e-01+str(h_CRCC6-z)*3.71784000e-01) + 3.75165000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat78', '(2.78707000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*2.72958000e-02+str(h_CRCC6-z)*2.84849000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*2.75000000e-02+str(h_CRCC6-z)*2.85222000e-02) + 2.85320000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat81', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat82', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat83', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat84', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat85', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*1.49744000e-07) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z)*1.21245000e-07) + 1.68484000e-07*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat86', '(8.75668000e-03*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*8.73843000e-03+str(h_CRCC6-z)*6.84926000e-03) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*8.76158000e-03+str(h_CRCC6-z)*6.82818000e-03) + 6.97633000e-03*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat87', '(9.64325000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*9.60904000e-02+str(h_CRCC6-z)*9.59512000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*9.64355000e-02+str(h_CRCC6-z)*9.59477000e-02) + 9.57660000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat88', '(4.40144000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*4.37882000e-01+str(h_CRCC6-z)*3.73634000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*4.37292000e-01+str(h_CRCC6-z)*3.73897000e-01) + 3.77722000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('tot1', '(2.10072000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*2.11757000e-01+str(h_CRCC6-z)*2.04692000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*2.11538000e-01+str(h_CRCC6-z)*2.04635000e-01) + 2.02145000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('tot2', '(4.36719000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*4.34215000e-01+str(h_CRCC6-z)*4.10930000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*4.34454000e-01+str(h_CRCC6-z)*4.11264000e-01) + 4.16138000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('tot3', '(5.11849000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*5.10903000e-01+str(h_CRCC6-z)*4.43983000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*5.11172000e-01+str(h_CRCC6-z)*4.44030000e-01) + 4.47972000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('tot4', '(5.25283000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*5.24986000e-01+str(h_CRCC6-z)*4.41963000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*5.25071000e-01+str(h_CRCC6-z)*4.42327000e-01) + 4.47161000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('tot5', '(5.27589000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*5.26633000e-01+str(h_CRCC6-z)*4.42845000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*5.26667000e-01+str(h_CRCC6-z)*4.42937000e-01) + 4.47584000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('tot6', '(5.30050000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*5.29324000e-01+str(h_CRCC6-z)*4.43695000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*5.29731000e-01+str(h_CRCC6-z)*4.43917000e-01) + 4.47541000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('tot7', '(5.40043000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*5.39156000e-01+str(h_CRCC6-z)*4.50095000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*5.39903000e-01+str(h_CRCC6-z)*4.50322000e-01) + 4.53851000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('tot8', '(5.70910000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC6)*5.70008000e-01+str(h_CRCC6-z)*4.77366000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC6)*5.70402000e-01+str(h_CRCC6-z)*4.77601000e-01) + 4.81397000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('diff21', '2.57142857e-01*tot1[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('diff22', '2.57142857e-01*tot2[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('diff23', '2.57142857e-01*tot3[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('diff24', '2.57142857e-01*tot4[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('diff25', '2.57142857e-01*tot5[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('diff26', '2.57142857e-01*tot6[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('diff27', '2.57142857e-01*tot7[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('diff28', '2.57142857e-01*tot8[1/cm]');
model.component('mod1').variable('var_xsCRCC6').selection.geom('geom1', 3);
model.component('mod1').variable('var_xsCRCC6').selection.set([14]);
model.component('mod1').variable.create('var_xsCRCC7');
model.component('mod1').variable('var_xsCRCC7').set('beta1', '(5.43353000e-03*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*5.43353000e-03+str(h_CRCC7-z)*5.35302000e-03) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*5.43353000e-03+str(h_CRCC7-z)*5.35302000e-03) + 5.43353000e-03*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC7').set('betas1', '(1.64279000e-04*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*1.64279000e-04+str(h_CRCC7-z)*1.61013000e-04) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*1.64279000e-04+str(h_CRCC7-z)*1.61013000e-04) + 1.64279000e-04*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC7').set('betas2', '(9.82342000e-04*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*9.82342000e-04+str(h_CRCC7-z)*9.79956000e-04) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*9.82342000e-04+str(h_CRCC7-z)*9.79956000e-04) + 9.82342000e-04*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC7').set('betas3', '(8.84431000e-04*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*8.84431000e-04+str(h_CRCC7-z)*8.69379000e-04) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*8.84431000e-04+str(h_CRCC7-z)*8.69379000e-04) + 8.84431000e-04*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC7').set('betas4', '(2.41162000e-03*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*2.41162000e-03+str(h_CRCC7-z)*2.37140000e-03) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*2.41162000e-03+str(h_CRCC7-z)*2.37140000e-03) + 2.41162000e-03*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC7').set('betas5', '(7.43734000e-04*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*7.43734000e-04+str(h_CRCC7-z)*7.25365000e-04) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*7.43734000e-04+str(h_CRCC7-z)*7.25365000e-04) + 7.43734000e-04*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC7').set('betas6', '(2.47128000e-04*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*2.47128000e-04+str(h_CRCC7-z)*2.45908000e-04) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*2.47128000e-04+str(h_CRCC7-z)*2.45908000e-04) + 2.47128000e-04*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC7').set('chid1', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC7').set('chid2', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC7').set('chid3', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC7').set('chid4', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC7').set('chid5', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC7').set('chid6', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC7').set('chid7', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC7').set('chid8', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC7').set('chip1', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC7').set('chip2', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC7').set('chip3', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC7').set('chip4', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC7').set('chip5', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC7').set('chip6', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC7').set('chip7', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC7').set('chip8', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC7').set('chit1', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC7').set('chit2', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC7').set('chit3', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC7').set('chit4', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC7').set('chit5', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC7').set('chit6', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC7').set('chit7', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC7').set('chit8', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC7').set('diff11', '(1.91001000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*1.84571000e+00+str(h_CRCC7-z)*1.92274000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*1.85290000e+00+str(h_CRCC7-z)*1.92357000e+00) + 1.96966000e+00*str(1.125000-z)*str(z-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC7').set('diff12', '(8.74823000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*8.80209000e-01+str(h_CRCC7-z)*9.22150000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*8.79295000e-01+str(h_CRCC7-z)*9.21497000e-01) + 9.06750000e-01*str(1.125000-z)*str(z-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC7').set('diff13', '(6.88951000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*6.90284000e-01+str(h_CRCC7-z)*7.94998000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*6.89880000e-01+str(h_CRCC7-z)*7.94850000e-01) + 7.87453000e-01*str(1.125000-z)*str(z-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC7').set('diff14', '(6.70626000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*6.70676000e-01+str(h_CRCC7-z)*7.98007000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*6.70545000e-01+str(h_CRCC7-z)*7.97246000e-01) + 7.88298000e-01*str(1.125000-z)*str(z-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC7').set('diff15', '(6.66281000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*6.66894000e-01+str(h_CRCC7-z)*7.94861000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*6.67108000e-01+str(h_CRCC7-z)*7.94669000e-01) + 7.87026000e-01*str(1.125000-z)*str(z-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC7').set('diff16', '(6.58113000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*6.59767000e-01+str(h_CRCC7-z)*7.88891000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*6.59019000e-01+str(h_CRCC7-z)*7.88373000e-01) + 7.81863000e-01*str(1.125000-z)*str(z-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC7').set('diff17', '(6.34381000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*6.36002000e-01+str(h_CRCC7-z)*7.64998000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*6.34818000e-01+str(h_CRCC7-z)*7.64705000e-01) + 7.58584000e-01*str(1.125000-z)*str(z-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC7').set('diff18', '(5.70902000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*5.72016000e-01+str(h_CRCC7-z)*6.90042000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*5.71704000e-01+str(h_CRCC7-z)*6.89728000e-01) + 6.83815000e-01*str(1.125000-z)*str(z-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC7').set('fiss1', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('fiss2', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('fiss3', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('fiss4', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('fiss5', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('fiss6', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('fiss7', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('fiss8', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('invV1', '(4.78639000e-10*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*4.82300000e-10+str(h_CRCC7-z)*4.82876000e-10) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*4.82378000e-10+str(h_CRCC7-z)*4.82781000e-10) + 4.79355000e-10*str(1.125000-z)*str(z-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC7').set('invV2', '(2.01571000e-09*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*1.99602000e-09+str(h_CRCC7-z)*2.03134000e-09) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*1.99666000e-09+str(h_CRCC7-z)*2.03401000e-09) + 2.08374000e-09*str(1.125000-z)*str(z-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC7').set('invV3', '(3.13983000e-08*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*2.95064000e-08+str(h_CRCC7-z)*3.27319000e-08) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*2.97280000e-08+str(h_CRCC7-z)*3.28890000e-08) + 3.52807000e-08*str(1.125000-z)*str(z-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC7').set('invV4', '(2.07117000e-07*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*2.02784000e-07+str(h_CRCC7-z)*2.06592000e-07) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*2.03391000e-07+str(h_CRCC7-z)*2.06843000e-07) + 2.09692000e-07*str(1.125000-z)*str(z-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC7').set('invV5', '(7.05129000e-07*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*6.61738000e-07+str(h_CRCC7-z)*6.94283000e-07) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*6.65142000e-07+str(h_CRCC7-z)*6.98257000e-07) + 7.17410000e-07*str(1.125000-z)*str(z-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC7').set('invV6', '(1.37390000e-06*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*1.35173000e-06+str(h_CRCC7-z)*1.37382000e-06) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*1.35495000e-06+str(h_CRCC7-z)*1.37507000e-06) + 1.37856000e-06*str(1.125000-z)*str(z-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC7').set('invV7', '(2.16504000e-06*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*2.15480000e-06+str(h_CRCC7-z)*2.16898000e-06) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*2.15698000e-06+str(h_CRCC7-z)*2.16950000e-06) + 2.17039000e-06*str(1.125000-z)*str(z-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC7').set('invV8', '(4.16692000e-06*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*4.15058000e-06+str(h_CRCC7-z)*4.17466000e-06) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*4.15092000e-06+str(h_CRCC7-z)*4.17533000e-06) + 4.17809000e-06*str(1.125000-z)*str(z-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC7').set('kappa1', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC7').set('kappa2', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC7').set('kappa3', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC7').set('kappa4', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC7').set('kappa5', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC7').set('kappa6', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC7').set('kappa7', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC7').set('kappa8', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC7').set('lambdas1', '(1.25446000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*1.25446000e-02+str(h_CRCC7-z)*1.25438000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*1.25446000e-02+str(h_CRCC7-z)*1.25438000e-02) + 1.25446000e-02*str(1.125000-z)*str(z-0.416000))[1/s]');
model.component('mod1').variable('var_xsCRCC7').set('lambdas2', '(3.13123000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*3.13123000e-02+str(h_CRCC7-z)*3.13097000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*3.13123000e-02+str(h_CRCC7-z)*3.13097000e-02) + 3.13123000e-02*str(1.125000-z)*str(z-0.416000))[1/s]');
model.component('mod1').variable('var_xsCRCC7').set('lambdas3', '(1.09675000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*1.09675000e-01+str(h_CRCC7-z)*1.09688000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*1.09675000e-01+str(h_CRCC7-z)*1.09688000e-01) + 1.09675000e-01*str(1.125000-z)*str(z-0.416000))[1/s]');
model.component('mod1').variable('var_xsCRCC7').set('lambdas4', '(3.16600000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*3.16600000e-01+str(h_CRCC7-z)*3.16570000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*3.16600000e-01+str(h_CRCC7-z)*3.16570000e-01) + 3.16600000e-01*str(1.125000-z)*str(z-0.416000))[1/s]');
model.component('mod1').variable('var_xsCRCC7').set('lambdas5', '(1.29363000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*1.29363000e+00+str(h_CRCC7-z)*1.29339000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*1.29363000e+00+str(h_CRCC7-z)*1.29339000e+00) + 1.29363000e+00*str(1.125000-z)*str(z-0.416000))[1/s]');
model.component('mod1').variable('var_xsCRCC7').set('lambdas6', '(8.02100000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*8.02100000e+00+str(h_CRCC7-z)*8.02215000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*8.02100000e+00+str(h_CRCC7-z)*8.02215000e+00) + 8.02100000e+00*str(1.125000-z)*str(z-0.416000))[1/s]');
model.component('mod1').variable('var_xsCRCC7').set('nsf1', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('nsf2', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('nsf3', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('nsf4', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('nsf5', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('nsf6', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('nsf7', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('nsf8', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('rem1', '(5.00541000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*4.97916000e-02+str(h_CRCC7-z)*4.77815000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*5.01648000e-02+str(h_CRCC7-z)*4.78998000e-02) + 4.89290000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('rem2', '(2.49989000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*2.44761000e-02+str(h_CRCC7-z)*2.00560000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*2.45623000e-02+str(h_CRCC7-z)*2.01169000e-02) + 2.15083000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('rem3', '(3.00496000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*2.82014000e-02+str(h_CRCC7-z)*1.15956000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*2.84665000e-02+str(h_CRCC7-z)*1.17178000e-02) + 1.36807000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('rem4', '(5.65033000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*5.40676000e-02+str(h_CRCC7-z)*2.67818000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*5.44567000e-02+str(h_CRCC7-z)*2.69809000e-02) + 2.91181000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('rem5', '(9.17708000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*7.33991000e-02+str(h_CRCC7-z)*5.45236000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*7.47105000e-02+str(h_CRCC7-z)*5.61472000e-02) + 6.42548000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('rem6', '(1.21696000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*1.19829000e-01+str(h_CRCC7-z)*8.70662000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*1.20763000e-01+str(h_CRCC7-z)*8.73396000e-02) + 8.84098000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('rem7', '(1.09535000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*1.11576000e-01+str(h_CRCC7-z)*7.85043000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*1.12175000e-01+str(h_CRCC7-z)*7.85381000e-02) + 7.86864000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('rem8', '(1.30767000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*1.32126000e-01+str(h_CRCC7-z)*1.03731000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*1.33111000e-01+str(h_CRCC7-z)*1.03704000e-01) + 1.03676000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat11', '(1.60018000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*1.61966000e-01+str(h_CRCC7-z)*1.56910000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*1.61373000e-01+str(h_CRCC7-z)*1.56735000e-01) + 1.53216000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat12', '(4.86494000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*4.84963000e-02+str(h_CRCC7-z)*4.72354000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*4.88479000e-02+str(h_CRCC7-z)*4.73542000e-02) + 4.82637000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat13', '(1.41937000e-05*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*1.17516000e-05+str(h_CRCC7-z)*1.65225000e-05) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*1.23651000e-05+str(h_CRCC7-z)*1.36668000e-05) + 1.95285000e-05*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat14', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat15', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat16', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat17', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat18', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat21', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat22', '(4.11720000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*4.09739000e-01+str(h_CRCC7-z)*3.90874000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*4.09892000e-01+str(h_CRCC7-z)*3.91147000e-01) + 3.94630000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat23', '(2.14926000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*2.10593000e-02+str(h_CRCC7-z)*2.00342000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*2.11122000e-02+str(h_CRCC7-z)*2.00957000e-02) + 2.14881000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat24', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*2.32466000e-08) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat25', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat26', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat27', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat28', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat31', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat32', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat33', '(4.81799000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*4.82702000e-01+str(h_CRCC7-z)*4.32387000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*4.82706000e-01+str(h_CRCC7-z)*4.32312000e-01) + 4.34291000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat34', '(1.21869000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*1.05080000e-02+str(h_CRCC7-z)*1.15877000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*1.06714000e-02+str(h_CRCC7-z)*1.17098000e-02) + 1.36717000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat35', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat36', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat37', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat38', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat41', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat42', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat43', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat44', '(4.68779000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*4.70919000e-01+str(h_CRCC7-z)*4.15182000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*4.70614000e-01+str(h_CRCC7-z)*4.15346000e-01) + 4.18043000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat45', '(3.09607000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*2.81614000e-02+str(h_CRCC7-z)*2.67380000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*2.84327000e-02+str(h_CRCC7-z)*2.69383000e-02) + 2.90700000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat46', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat47', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat48', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat51', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat52', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat53', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat54', '(2.31814000e-04*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*3.02803000e-04+str(h_CRCC7-z)*2.33461000e-04) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*2.95016000e-04+str(h_CRCC7-z)*2.28078000e-04) + 2.02839000e-04*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat55', '(4.35818000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*4.53234000e-01+str(h_CRCC7-z)*3.88321000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*4.51956000e-01+str(h_CRCC7-z)*3.86790000e-01) + 3.83329000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat56', '(6.47935000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*4.58016000e-02+str(h_CRCC7-z)*5.34036000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*4.69991000e-02+str(h_CRCC7-z)*5.50034000e-02) + 6.29984000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat57', '(9.83692000e-04*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*6.62327000e-04+str(h_CRCC7-z)*7.36847000e-04) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*6.65889000e-04+str(h_CRCC7-z)*7.63327000e-04) + 8.98990000e-04*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat58', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*4.72892000e-07+str(h_CRCC7-z)*5.86323000e-07) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*1.35819000e-07+str(h_CRCC7-z)*6.25065000e-07) + 5.55205000e-07*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat61', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat62', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat63', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat64', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat65', '(1.27821000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*1.58145000e-02+str(h_CRCC7-z)*1.11721000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*1.52830000e-02+str(h_CRCC7-z)*1.10665000e-02) + 1.07689000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat66', '(4.08354000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*4.09495000e-01+str(h_CRCC7-z)*3.56629000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*4.08968000e-01+str(h_CRCC7-z)*3.56577000e-01) + 3.59132000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat67', '(7.90492000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*7.32029000e-02+str(h_CRCC7-z)*7.24936000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*7.39625000e-02+str(h_CRCC7-z)*7.28404000e-02) + 7.41392000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat68', '(3.92208000e-03*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*3.55428000e-03+str(h_CRCC7-z)*3.10382000e-03) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*3.62055000e-03+str(h_CRCC7-z)*3.13306000e-03) + 3.21210000e-03*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat71', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat72', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat73', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat74', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat75', '(1.45743000e-04*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*1.38430000e-04+str(h_CRCC7-z)*1.09829000e-04) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*1.44425000e-04+str(h_CRCC7-z)*1.09420000e-04) + 1.10697000e-04*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat76', '(5.54899000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*5.65430000e-02+str(h_CRCC7-z)*4.94355000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*5.61970000e-02+str(h_CRCC7-z)*4.94330000e-02) + 4.95782000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat77', '(4.30507000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*4.27580000e-01+str(h_CRCC7-z)*3.71591000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*4.27728000e-01+str(h_CRCC7-z)*3.71784000e-01) + 3.75165000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat78', '(2.78707000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*2.72958000e-02+str(h_CRCC7-z)*2.84849000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*2.75000000e-02+str(h_CRCC7-z)*2.85222000e-02) + 2.85320000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat81', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat82', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat83', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat84', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat85', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*1.49744000e-07) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z)*1.21245000e-07) + 1.68484000e-07*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat86', '(8.75668000e-03*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*8.73843000e-03+str(h_CRCC7-z)*6.84926000e-03) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*8.76158000e-03+str(h_CRCC7-z)*6.82818000e-03) + 6.97633000e-03*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat87', '(9.64325000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*9.60904000e-02+str(h_CRCC7-z)*9.59512000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*9.64355000e-02+str(h_CRCC7-z)*9.59477000e-02) + 9.57660000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat88', '(4.40144000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*4.37882000e-01+str(h_CRCC7-z)*3.73634000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*4.37292000e-01+str(h_CRCC7-z)*3.73897000e-01) + 3.77722000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('tot1', '(2.10072000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*2.11757000e-01+str(h_CRCC7-z)*2.04692000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*2.11538000e-01+str(h_CRCC7-z)*2.04635000e-01) + 2.02145000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('tot2', '(4.36719000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*4.34215000e-01+str(h_CRCC7-z)*4.10930000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*4.34454000e-01+str(h_CRCC7-z)*4.11264000e-01) + 4.16138000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('tot3', '(5.11849000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*5.10903000e-01+str(h_CRCC7-z)*4.43983000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*5.11172000e-01+str(h_CRCC7-z)*4.44030000e-01) + 4.47972000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('tot4', '(5.25283000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*5.24986000e-01+str(h_CRCC7-z)*4.41963000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*5.25071000e-01+str(h_CRCC7-z)*4.42327000e-01) + 4.47161000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('tot5', '(5.27589000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*5.26633000e-01+str(h_CRCC7-z)*4.42845000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*5.26667000e-01+str(h_CRCC7-z)*4.42937000e-01) + 4.47584000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('tot6', '(5.30050000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*5.29324000e-01+str(h_CRCC7-z)*4.43695000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*5.29731000e-01+str(h_CRCC7-z)*4.43917000e-01) + 4.47541000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('tot7', '(5.40043000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*5.39156000e-01+str(h_CRCC7-z)*4.50095000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*5.39903000e-01+str(h_CRCC7-z)*4.50322000e-01) + 4.53851000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('tot8', '(5.70910000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC7)*5.70008000e-01+str(h_CRCC7-z)*4.77366000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC7)*5.70402000e-01+str(h_CRCC7-z)*4.77601000e-01) + 4.81397000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('diff21', '2.57142857e-01*tot1[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('diff22', '2.57142857e-01*tot2[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('diff23', '2.57142857e-01*tot3[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('diff24', '2.57142857e-01*tot4[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('diff25', '2.57142857e-01*tot5[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('diff26', '2.57142857e-01*tot6[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('diff27', '2.57142857e-01*tot7[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('diff28', '2.57142857e-01*tot8[1/cm]');
model.component('mod1').variable('var_xsCRCC7').selection.geom('geom1', 3);
model.component('mod1').variable('var_xsCRCC7').selection.set([15]);
model.component('mod1').variable.create('var_xsCRCC8_1');
model.component('mod1').variable('var_xsCRCC8_1').set('beta1', '(5.43353000e-03*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*5.43353000e-03+str(h_CRCC8_1-z)*5.35302000e-03) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*5.43353000e-03+str(h_CRCC8_1-z)*5.35302000e-03) + 5.43353000e-03*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC8_1').set('betas1', '(1.64279000e-04*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*1.64279000e-04+str(h_CRCC8_1-z)*1.61013000e-04) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*1.64279000e-04+str(h_CRCC8_1-z)*1.61013000e-04) + 1.64279000e-04*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC8_1').set('betas2', '(9.82342000e-04*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*9.82342000e-04+str(h_CRCC8_1-z)*9.79956000e-04) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*9.82342000e-04+str(h_CRCC8_1-z)*9.79956000e-04) + 9.82342000e-04*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC8_1').set('betas3', '(8.84431000e-04*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*8.84431000e-04+str(h_CRCC8_1-z)*8.69379000e-04) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*8.84431000e-04+str(h_CRCC8_1-z)*8.69379000e-04) + 8.84431000e-04*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC8_1').set('betas4', '(2.41162000e-03*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*2.41162000e-03+str(h_CRCC8_1-z)*2.37140000e-03) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*2.41162000e-03+str(h_CRCC8_1-z)*2.37140000e-03) + 2.41162000e-03*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC8_1').set('betas5', '(7.43734000e-04*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*7.43734000e-04+str(h_CRCC8_1-z)*7.25365000e-04) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*7.43734000e-04+str(h_CRCC8_1-z)*7.25365000e-04) + 7.43734000e-04*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC8_1').set('betas6', '(2.47128000e-04*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*2.47128000e-04+str(h_CRCC8_1-z)*2.45908000e-04) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*2.47128000e-04+str(h_CRCC8_1-z)*2.45908000e-04) + 2.47128000e-04*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC8_1').set('chid1', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC8_1').set('chid2', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC8_1').set('chid3', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC8_1').set('chid4', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC8_1').set('chid5', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC8_1').set('chid6', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC8_1').set('chid7', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC8_1').set('chid8', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC8_1').set('chip1', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC8_1').set('chip2', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC8_1').set('chip3', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC8_1').set('chip4', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC8_1').set('chip5', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC8_1').set('chip6', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC8_1').set('chip7', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC8_1').set('chip8', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC8_1').set('chit1', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC8_1').set('chit2', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC8_1').set('chit3', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC8_1').set('chit4', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC8_1').set('chit5', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC8_1').set('chit6', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC8_1').set('chit7', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC8_1').set('chit8', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC8_1').set('diff11', '(1.91001000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*1.84571000e+00+str(h_CRCC8_1-z)*1.92274000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*1.85290000e+00+str(h_CRCC8_1-z)*1.92357000e+00) + 1.96966000e+00*str(1.125000-z)*str(z-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('diff12', '(8.74823000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*8.80209000e-01+str(h_CRCC8_1-z)*9.22150000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*8.79295000e-01+str(h_CRCC8_1-z)*9.21497000e-01) + 9.06750000e-01*str(1.125000-z)*str(z-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('diff13', '(6.88951000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*6.90284000e-01+str(h_CRCC8_1-z)*7.94998000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*6.89880000e-01+str(h_CRCC8_1-z)*7.94850000e-01) + 7.87453000e-01*str(1.125000-z)*str(z-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('diff14', '(6.70626000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*6.70676000e-01+str(h_CRCC8_1-z)*7.98007000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*6.70545000e-01+str(h_CRCC8_1-z)*7.97246000e-01) + 7.88298000e-01*str(1.125000-z)*str(z-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('diff15', '(6.66281000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*6.66894000e-01+str(h_CRCC8_1-z)*7.94861000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*6.67108000e-01+str(h_CRCC8_1-z)*7.94669000e-01) + 7.87026000e-01*str(1.125000-z)*str(z-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('diff16', '(6.58113000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*6.59767000e-01+str(h_CRCC8_1-z)*7.88891000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*6.59019000e-01+str(h_CRCC8_1-z)*7.88373000e-01) + 7.81863000e-01*str(1.125000-z)*str(z-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('diff17', '(6.34381000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*6.36002000e-01+str(h_CRCC8_1-z)*7.64998000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*6.34818000e-01+str(h_CRCC8_1-z)*7.64705000e-01) + 7.58584000e-01*str(1.125000-z)*str(z-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('diff18', '(5.70902000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*5.72016000e-01+str(h_CRCC8_1-z)*6.90042000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*5.71704000e-01+str(h_CRCC8_1-z)*6.89728000e-01) + 6.83815000e-01*str(1.125000-z)*str(z-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('fiss1', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('fiss2', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('fiss3', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('fiss4', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('fiss5', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('fiss6', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('fiss7', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('fiss8', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('invV1', '(4.78639000e-10*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*4.82300000e-10+str(h_CRCC8_1-z)*4.82876000e-10) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*4.82378000e-10+str(h_CRCC8_1-z)*4.82781000e-10) + 4.79355000e-10*str(1.125000-z)*str(z-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('invV2', '(2.01571000e-09*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*1.99602000e-09+str(h_CRCC8_1-z)*2.03134000e-09) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*1.99666000e-09+str(h_CRCC8_1-z)*2.03401000e-09) + 2.08374000e-09*str(1.125000-z)*str(z-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('invV3', '(3.13983000e-08*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*2.95064000e-08+str(h_CRCC8_1-z)*3.27319000e-08) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*2.97280000e-08+str(h_CRCC8_1-z)*3.28890000e-08) + 3.52807000e-08*str(1.125000-z)*str(z-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('invV4', '(2.07117000e-07*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*2.02784000e-07+str(h_CRCC8_1-z)*2.06592000e-07) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*2.03391000e-07+str(h_CRCC8_1-z)*2.06843000e-07) + 2.09692000e-07*str(1.125000-z)*str(z-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('invV5', '(7.05129000e-07*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*6.61738000e-07+str(h_CRCC8_1-z)*6.94283000e-07) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*6.65142000e-07+str(h_CRCC8_1-z)*6.98257000e-07) + 7.17410000e-07*str(1.125000-z)*str(z-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('invV6', '(1.37390000e-06*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*1.35173000e-06+str(h_CRCC8_1-z)*1.37382000e-06) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*1.35495000e-06+str(h_CRCC8_1-z)*1.37507000e-06) + 1.37856000e-06*str(1.125000-z)*str(z-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('invV7', '(2.16504000e-06*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*2.15480000e-06+str(h_CRCC8_1-z)*2.16898000e-06) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*2.15698000e-06+str(h_CRCC8_1-z)*2.16950000e-06) + 2.17039000e-06*str(1.125000-z)*str(z-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('invV8', '(4.16692000e-06*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*4.15058000e-06+str(h_CRCC8_1-z)*4.17466000e-06) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*4.15092000e-06+str(h_CRCC8_1-z)*4.17533000e-06) + 4.17809000e-06*str(1.125000-z)*str(z-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('kappa1', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC8_1').set('kappa2', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC8_1').set('kappa3', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC8_1').set('kappa4', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC8_1').set('kappa5', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC8_1').set('kappa6', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC8_1').set('kappa7', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC8_1').set('kappa8', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC8_1').set('lambdas1', '(1.25446000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*1.25446000e-02+str(h_CRCC8_1-z)*1.25438000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*1.25446000e-02+str(h_CRCC8_1-z)*1.25438000e-02) + 1.25446000e-02*str(1.125000-z)*str(z-0.416000))[1/s]');
model.component('mod1').variable('var_xsCRCC8_1').set('lambdas2', '(3.13123000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*3.13123000e-02+str(h_CRCC8_1-z)*3.13097000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*3.13123000e-02+str(h_CRCC8_1-z)*3.13097000e-02) + 3.13123000e-02*str(1.125000-z)*str(z-0.416000))[1/s]');
model.component('mod1').variable('var_xsCRCC8_1').set('lambdas3', '(1.09675000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*1.09675000e-01+str(h_CRCC8_1-z)*1.09688000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*1.09675000e-01+str(h_CRCC8_1-z)*1.09688000e-01) + 1.09675000e-01*str(1.125000-z)*str(z-0.416000))[1/s]');
model.component('mod1').variable('var_xsCRCC8_1').set('lambdas4', '(3.16600000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*3.16600000e-01+str(h_CRCC8_1-z)*3.16570000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*3.16600000e-01+str(h_CRCC8_1-z)*3.16570000e-01) + 3.16600000e-01*str(1.125000-z)*str(z-0.416000))[1/s]');
model.component('mod1').variable('var_xsCRCC8_1').set('lambdas5', '(1.29363000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*1.29363000e+00+str(h_CRCC8_1-z)*1.29339000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*1.29363000e+00+str(h_CRCC8_1-z)*1.29339000e+00) + 1.29363000e+00*str(1.125000-z)*str(z-0.416000))[1/s]');
model.component('mod1').variable('var_xsCRCC8_1').set('lambdas6', '(8.02100000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*8.02100000e+00+str(h_CRCC8_1-z)*8.02215000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*8.02100000e+00+str(h_CRCC8_1-z)*8.02215000e+00) + 8.02100000e+00*str(1.125000-z)*str(z-0.416000))[1/s]');
model.component('mod1').variable('var_xsCRCC8_1').set('nsf1', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('nsf2', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('nsf3', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('nsf4', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('nsf5', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('nsf6', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('nsf7', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('nsf8', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('rem1', '(5.00541000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*4.97916000e-02+str(h_CRCC8_1-z)*4.77815000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*5.01648000e-02+str(h_CRCC8_1-z)*4.78998000e-02) + 4.89290000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('rem2', '(2.49989000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*2.44761000e-02+str(h_CRCC8_1-z)*2.00560000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*2.45623000e-02+str(h_CRCC8_1-z)*2.01169000e-02) + 2.15083000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('rem3', '(3.00496000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*2.82014000e-02+str(h_CRCC8_1-z)*1.15956000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*2.84665000e-02+str(h_CRCC8_1-z)*1.17178000e-02) + 1.36807000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('rem4', '(5.65033000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*5.40676000e-02+str(h_CRCC8_1-z)*2.67818000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*5.44567000e-02+str(h_CRCC8_1-z)*2.69809000e-02) + 2.91181000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('rem5', '(9.17708000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*7.33991000e-02+str(h_CRCC8_1-z)*5.45236000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*7.47105000e-02+str(h_CRCC8_1-z)*5.61472000e-02) + 6.42548000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('rem6', '(1.21696000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*1.19829000e-01+str(h_CRCC8_1-z)*8.70662000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*1.20763000e-01+str(h_CRCC8_1-z)*8.73396000e-02) + 8.84098000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('rem7', '(1.09535000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*1.11576000e-01+str(h_CRCC8_1-z)*7.85043000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*1.12175000e-01+str(h_CRCC8_1-z)*7.85381000e-02) + 7.86864000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('rem8', '(1.30767000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*1.32126000e-01+str(h_CRCC8_1-z)*1.03731000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*1.33111000e-01+str(h_CRCC8_1-z)*1.03704000e-01) + 1.03676000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat11', '(1.60018000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*1.61966000e-01+str(h_CRCC8_1-z)*1.56910000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*1.61373000e-01+str(h_CRCC8_1-z)*1.56735000e-01) + 1.53216000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat12', '(4.86494000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*4.84963000e-02+str(h_CRCC8_1-z)*4.72354000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*4.88479000e-02+str(h_CRCC8_1-z)*4.73542000e-02) + 4.82637000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat13', '(1.41937000e-05*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*1.17516000e-05+str(h_CRCC8_1-z)*1.65225000e-05) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*1.23651000e-05+str(h_CRCC8_1-z)*1.36668000e-05) + 1.95285000e-05*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat14', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat15', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat16', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat17', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat18', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat21', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat22', '(4.11720000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*4.09739000e-01+str(h_CRCC8_1-z)*3.90874000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*4.09892000e-01+str(h_CRCC8_1-z)*3.91147000e-01) + 3.94630000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat23', '(2.14926000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*2.10593000e-02+str(h_CRCC8_1-z)*2.00342000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*2.11122000e-02+str(h_CRCC8_1-z)*2.00957000e-02) + 2.14881000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat24', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*2.32466000e-08) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat25', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat26', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat27', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat28', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat31', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat32', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat33', '(4.81799000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*4.82702000e-01+str(h_CRCC8_1-z)*4.32387000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*4.82706000e-01+str(h_CRCC8_1-z)*4.32312000e-01) + 4.34291000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat34', '(1.21869000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*1.05080000e-02+str(h_CRCC8_1-z)*1.15877000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*1.06714000e-02+str(h_CRCC8_1-z)*1.17098000e-02) + 1.36717000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat35', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat36', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat37', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat38', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat41', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat42', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat43', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat44', '(4.68779000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*4.70919000e-01+str(h_CRCC8_1-z)*4.15182000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*4.70614000e-01+str(h_CRCC8_1-z)*4.15346000e-01) + 4.18043000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat45', '(3.09607000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*2.81614000e-02+str(h_CRCC8_1-z)*2.67380000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*2.84327000e-02+str(h_CRCC8_1-z)*2.69383000e-02) + 2.90700000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat46', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat47', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat48', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat51', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat52', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat53', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat54', '(2.31814000e-04*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*3.02803000e-04+str(h_CRCC8_1-z)*2.33461000e-04) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*2.95016000e-04+str(h_CRCC8_1-z)*2.28078000e-04) + 2.02839000e-04*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat55', '(4.35818000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*4.53234000e-01+str(h_CRCC8_1-z)*3.88321000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*4.51956000e-01+str(h_CRCC8_1-z)*3.86790000e-01) + 3.83329000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat56', '(6.47935000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*4.58016000e-02+str(h_CRCC8_1-z)*5.34036000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*4.69991000e-02+str(h_CRCC8_1-z)*5.50034000e-02) + 6.29984000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat57', '(9.83692000e-04*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*6.62327000e-04+str(h_CRCC8_1-z)*7.36847000e-04) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*6.65889000e-04+str(h_CRCC8_1-z)*7.63327000e-04) + 8.98990000e-04*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat58', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*4.72892000e-07+str(h_CRCC8_1-z)*5.86323000e-07) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*1.35819000e-07+str(h_CRCC8_1-z)*6.25065000e-07) + 5.55205000e-07*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat61', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat62', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat63', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat64', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat65', '(1.27821000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*1.58145000e-02+str(h_CRCC8_1-z)*1.11721000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*1.52830000e-02+str(h_CRCC8_1-z)*1.10665000e-02) + 1.07689000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat66', '(4.08354000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*4.09495000e-01+str(h_CRCC8_1-z)*3.56629000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*4.08968000e-01+str(h_CRCC8_1-z)*3.56577000e-01) + 3.59132000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat67', '(7.90492000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*7.32029000e-02+str(h_CRCC8_1-z)*7.24936000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*7.39625000e-02+str(h_CRCC8_1-z)*7.28404000e-02) + 7.41392000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat68', '(3.92208000e-03*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*3.55428000e-03+str(h_CRCC8_1-z)*3.10382000e-03) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*3.62055000e-03+str(h_CRCC8_1-z)*3.13306000e-03) + 3.21210000e-03*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat71', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat72', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat73', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat74', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat75', '(1.45743000e-04*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*1.38430000e-04+str(h_CRCC8_1-z)*1.09829000e-04) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*1.44425000e-04+str(h_CRCC8_1-z)*1.09420000e-04) + 1.10697000e-04*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat76', '(5.54899000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*5.65430000e-02+str(h_CRCC8_1-z)*4.94355000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*5.61970000e-02+str(h_CRCC8_1-z)*4.94330000e-02) + 4.95782000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat77', '(4.30507000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*4.27580000e-01+str(h_CRCC8_1-z)*3.71591000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*4.27728000e-01+str(h_CRCC8_1-z)*3.71784000e-01) + 3.75165000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat78', '(2.78707000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*2.72958000e-02+str(h_CRCC8_1-z)*2.84849000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*2.75000000e-02+str(h_CRCC8_1-z)*2.85222000e-02) + 2.85320000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat81', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat82', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat83', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat84', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat85', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*1.49744000e-07) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z)*1.21245000e-07) + 1.68484000e-07*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat86', '(8.75668000e-03*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*8.73843000e-03+str(h_CRCC8_1-z)*6.84926000e-03) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*8.76158000e-03+str(h_CRCC8_1-z)*6.82818000e-03) + 6.97633000e-03*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat87', '(9.64325000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*9.60904000e-02+str(h_CRCC8_1-z)*9.59512000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*9.64355000e-02+str(h_CRCC8_1-z)*9.59477000e-02) + 9.57660000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat88', '(4.40144000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*4.37882000e-01+str(h_CRCC8_1-z)*3.73634000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*4.37292000e-01+str(h_CRCC8_1-z)*3.73897000e-01) + 3.77722000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('tot1', '(2.10072000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*2.11757000e-01+str(h_CRCC8_1-z)*2.04692000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*2.11538000e-01+str(h_CRCC8_1-z)*2.04635000e-01) + 2.02145000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('tot2', '(4.36719000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*4.34215000e-01+str(h_CRCC8_1-z)*4.10930000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*4.34454000e-01+str(h_CRCC8_1-z)*4.11264000e-01) + 4.16138000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('tot3', '(5.11849000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*5.10903000e-01+str(h_CRCC8_1-z)*4.43983000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*5.11172000e-01+str(h_CRCC8_1-z)*4.44030000e-01) + 4.47972000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('tot4', '(5.25283000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*5.24986000e-01+str(h_CRCC8_1-z)*4.41963000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*5.25071000e-01+str(h_CRCC8_1-z)*4.42327000e-01) + 4.47161000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('tot5', '(5.27589000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*5.26633000e-01+str(h_CRCC8_1-z)*4.42845000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*5.26667000e-01+str(h_CRCC8_1-z)*4.42937000e-01) + 4.47584000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('tot6', '(5.30050000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*5.29324000e-01+str(h_CRCC8_1-z)*4.43695000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*5.29731000e-01+str(h_CRCC8_1-z)*4.43917000e-01) + 4.47541000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('tot7', '(5.40043000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*5.39156000e-01+str(h_CRCC8_1-z)*4.50095000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*5.39903000e-01+str(h_CRCC8_1-z)*4.50322000e-01) + 4.53851000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('tot8', '(5.70910000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_1)*5.70008000e-01+str(h_CRCC8_1-z)*4.77366000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_1)*5.70402000e-01+str(h_CRCC8_1-z)*4.77601000e-01) + 4.81397000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('diff21', '2.57142857e-01*tot1[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('diff22', '2.57142857e-01*tot2[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('diff23', '2.57142857e-01*tot3[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('diff24', '2.57142857e-01*tot4[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('diff25', '2.57142857e-01*tot5[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('diff26', '2.57142857e-01*tot6[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('diff27', '2.57142857e-01*tot7[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('diff28', '2.57142857e-01*tot8[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').selection.geom('geom1', 3);
model.component('mod1').variable('var_xsCRCC8_1').selection.set([16]);
model.component('mod1').variable.create('var_xsCRCC8_2');
model.component('mod1').variable('var_xsCRCC8_2').set('beta1', '(5.43353000e-03*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*5.43353000e-03+str(h_CRCC8_2-z)*5.35302000e-03) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*5.43353000e-03+str(h_CRCC8_2-z)*5.35302000e-03) + 5.43353000e-03*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC8_2').set('betas1', '(1.64279000e-04*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*1.64279000e-04+str(h_CRCC8_2-z)*1.61013000e-04) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*1.64279000e-04+str(h_CRCC8_2-z)*1.61013000e-04) + 1.64279000e-04*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC8_2').set('betas2', '(9.82342000e-04*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*9.82342000e-04+str(h_CRCC8_2-z)*9.79956000e-04) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*9.82342000e-04+str(h_CRCC8_2-z)*9.79956000e-04) + 9.82342000e-04*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC8_2').set('betas3', '(8.84431000e-04*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*8.84431000e-04+str(h_CRCC8_2-z)*8.69379000e-04) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*8.84431000e-04+str(h_CRCC8_2-z)*8.69379000e-04) + 8.84431000e-04*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC8_2').set('betas4', '(2.41162000e-03*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*2.41162000e-03+str(h_CRCC8_2-z)*2.37140000e-03) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*2.41162000e-03+str(h_CRCC8_2-z)*2.37140000e-03) + 2.41162000e-03*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC8_2').set('betas5', '(7.43734000e-04*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*7.43734000e-04+str(h_CRCC8_2-z)*7.25365000e-04) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*7.43734000e-04+str(h_CRCC8_2-z)*7.25365000e-04) + 7.43734000e-04*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC8_2').set('betas6', '(2.47128000e-04*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*2.47128000e-04+str(h_CRCC8_2-z)*2.45908000e-04) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*2.47128000e-04+str(h_CRCC8_2-z)*2.45908000e-04) + 2.47128000e-04*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC8_2').set('chid1', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC8_2').set('chid2', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC8_2').set('chid3', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC8_2').set('chid4', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC8_2').set('chid5', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC8_2').set('chid6', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC8_2').set('chid7', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC8_2').set('chid8', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC8_2').set('chip1', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC8_2').set('chip2', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC8_2').set('chip3', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC8_2').set('chip4', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC8_2').set('chip5', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC8_2').set('chip6', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC8_2').set('chip7', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC8_2').set('chip8', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC8_2').set('chit1', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC8_2').set('chit2', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC8_2').set('chit3', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC8_2').set('chit4', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC8_2').set('chit5', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC8_2').set('chit6', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC8_2').set('chit7', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC8_2').set('chit8', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))');
model.component('mod1').variable('var_xsCRCC8_2').set('diff11', '(1.91001000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*1.84571000e+00+str(h_CRCC8_2-z)*1.92274000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*1.85290000e+00+str(h_CRCC8_2-z)*1.92357000e+00) + 1.96966000e+00*str(1.125000-z)*str(z-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('diff12', '(8.74823000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*8.80209000e-01+str(h_CRCC8_2-z)*9.22150000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*8.79295000e-01+str(h_CRCC8_2-z)*9.21497000e-01) + 9.06750000e-01*str(1.125000-z)*str(z-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('diff13', '(6.88951000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*6.90284000e-01+str(h_CRCC8_2-z)*7.94998000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*6.89880000e-01+str(h_CRCC8_2-z)*7.94850000e-01) + 7.87453000e-01*str(1.125000-z)*str(z-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('diff14', '(6.70626000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*6.70676000e-01+str(h_CRCC8_2-z)*7.98007000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*6.70545000e-01+str(h_CRCC8_2-z)*7.97246000e-01) + 7.88298000e-01*str(1.125000-z)*str(z-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('diff15', '(6.66281000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*6.66894000e-01+str(h_CRCC8_2-z)*7.94861000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*6.67108000e-01+str(h_CRCC8_2-z)*7.94669000e-01) + 7.87026000e-01*str(1.125000-z)*str(z-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('diff16', '(6.58113000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*6.59767000e-01+str(h_CRCC8_2-z)*7.88891000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*6.59019000e-01+str(h_CRCC8_2-z)*7.88373000e-01) + 7.81863000e-01*str(1.125000-z)*str(z-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('diff17', '(6.34381000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*6.36002000e-01+str(h_CRCC8_2-z)*7.64998000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*6.34818000e-01+str(h_CRCC8_2-z)*7.64705000e-01) + 7.58584000e-01*str(1.125000-z)*str(z-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('diff18', '(5.70902000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*5.72016000e-01+str(h_CRCC8_2-z)*6.90042000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*5.71704000e-01+str(h_CRCC8_2-z)*6.89728000e-01) + 6.83815000e-01*str(1.125000-z)*str(z-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('fiss1', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('fiss2', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('fiss3', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('fiss4', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('fiss5', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('fiss6', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('fiss7', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('fiss8', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('invV1', '(4.78639000e-10*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*4.82300000e-10+str(h_CRCC8_2-z)*4.82876000e-10) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*4.82378000e-10+str(h_CRCC8_2-z)*4.82781000e-10) + 4.79355000e-10*str(1.125000-z)*str(z-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('invV2', '(2.01571000e-09*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*1.99602000e-09+str(h_CRCC8_2-z)*2.03134000e-09) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*1.99666000e-09+str(h_CRCC8_2-z)*2.03401000e-09) + 2.08374000e-09*str(1.125000-z)*str(z-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('invV3', '(3.13983000e-08*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*2.95064000e-08+str(h_CRCC8_2-z)*3.27319000e-08) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*2.97280000e-08+str(h_CRCC8_2-z)*3.28890000e-08) + 3.52807000e-08*str(1.125000-z)*str(z-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('invV4', '(2.07117000e-07*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*2.02784000e-07+str(h_CRCC8_2-z)*2.06592000e-07) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*2.03391000e-07+str(h_CRCC8_2-z)*2.06843000e-07) + 2.09692000e-07*str(1.125000-z)*str(z-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('invV5', '(7.05129000e-07*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*6.61738000e-07+str(h_CRCC8_2-z)*6.94283000e-07) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*6.65142000e-07+str(h_CRCC8_2-z)*6.98257000e-07) + 7.17410000e-07*str(1.125000-z)*str(z-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('invV6', '(1.37390000e-06*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*1.35173000e-06+str(h_CRCC8_2-z)*1.37382000e-06) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*1.35495000e-06+str(h_CRCC8_2-z)*1.37507000e-06) + 1.37856000e-06*str(1.125000-z)*str(z-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('invV7', '(2.16504000e-06*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*2.15480000e-06+str(h_CRCC8_2-z)*2.16898000e-06) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*2.15698000e-06+str(h_CRCC8_2-z)*2.16950000e-06) + 2.17039000e-06*str(1.125000-z)*str(z-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('invV8', '(4.16692000e-06*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*4.15058000e-06+str(h_CRCC8_2-z)*4.17466000e-06) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*4.15092000e-06+str(h_CRCC8_2-z)*4.17533000e-06) + 4.17809000e-06*str(1.125000-z)*str(z-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('kappa1', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC8_2').set('kappa2', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC8_2').set('kappa3', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC8_2').set('kappa4', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC8_2').set('kappa5', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC8_2').set('kappa6', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC8_2').set('kappa7', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC8_2').set('kappa8', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC8_2').set('lambdas1', '(1.25446000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*1.25446000e-02+str(h_CRCC8_2-z)*1.25438000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*1.25446000e-02+str(h_CRCC8_2-z)*1.25438000e-02) + 1.25446000e-02*str(1.125000-z)*str(z-0.416000))[1/s]');
model.component('mod1').variable('var_xsCRCC8_2').set('lambdas2', '(3.13123000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*3.13123000e-02+str(h_CRCC8_2-z)*3.13097000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*3.13123000e-02+str(h_CRCC8_2-z)*3.13097000e-02) + 3.13123000e-02*str(1.125000-z)*str(z-0.416000))[1/s]');
model.component('mod1').variable('var_xsCRCC8_2').set('lambdas3', '(1.09675000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*1.09675000e-01+str(h_CRCC8_2-z)*1.09688000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*1.09675000e-01+str(h_CRCC8_2-z)*1.09688000e-01) + 1.09675000e-01*str(1.125000-z)*str(z-0.416000))[1/s]');
model.component('mod1').variable('var_xsCRCC8_2').set('lambdas4', '(3.16600000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*3.16600000e-01+str(h_CRCC8_2-z)*3.16570000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*3.16600000e-01+str(h_CRCC8_2-z)*3.16570000e-01) + 3.16600000e-01*str(1.125000-z)*str(z-0.416000))[1/s]');
model.component('mod1').variable('var_xsCRCC8_2').set('lambdas5', '(1.29363000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*1.29363000e+00+str(h_CRCC8_2-z)*1.29339000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*1.29363000e+00+str(h_CRCC8_2-z)*1.29339000e+00) + 1.29363000e+00*str(1.125000-z)*str(z-0.416000))[1/s]');
model.component('mod1').variable('var_xsCRCC8_2').set('lambdas6', '(8.02100000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*8.02100000e+00+str(h_CRCC8_2-z)*8.02215000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*8.02100000e+00+str(h_CRCC8_2-z)*8.02215000e+00) + 8.02100000e+00*str(1.125000-z)*str(z-0.416000))[1/s]');
model.component('mod1').variable('var_xsCRCC8_2').set('nsf1', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('nsf2', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('nsf3', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('nsf4', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('nsf5', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('nsf6', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('nsf7', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('nsf8', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('rem1', '(5.00541000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*4.97916000e-02+str(h_CRCC8_2-z)*4.77815000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*5.01648000e-02+str(h_CRCC8_2-z)*4.78998000e-02) + 4.89290000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('rem2', '(2.49989000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*2.44761000e-02+str(h_CRCC8_2-z)*2.00560000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*2.45623000e-02+str(h_CRCC8_2-z)*2.01169000e-02) + 2.15083000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('rem3', '(3.00496000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*2.82014000e-02+str(h_CRCC8_2-z)*1.15956000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*2.84665000e-02+str(h_CRCC8_2-z)*1.17178000e-02) + 1.36807000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('rem4', '(5.65033000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*5.40676000e-02+str(h_CRCC8_2-z)*2.67818000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*5.44567000e-02+str(h_CRCC8_2-z)*2.69809000e-02) + 2.91181000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('rem5', '(9.17708000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*7.33991000e-02+str(h_CRCC8_2-z)*5.45236000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*7.47105000e-02+str(h_CRCC8_2-z)*5.61472000e-02) + 6.42548000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('rem6', '(1.21696000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*1.19829000e-01+str(h_CRCC8_2-z)*8.70662000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*1.20763000e-01+str(h_CRCC8_2-z)*8.73396000e-02) + 8.84098000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('rem7', '(1.09535000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*1.11576000e-01+str(h_CRCC8_2-z)*7.85043000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*1.12175000e-01+str(h_CRCC8_2-z)*7.85381000e-02) + 7.86864000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('rem8', '(1.30767000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*1.32126000e-01+str(h_CRCC8_2-z)*1.03731000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*1.33111000e-01+str(h_CRCC8_2-z)*1.03704000e-01) + 1.03676000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat11', '(1.60018000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*1.61966000e-01+str(h_CRCC8_2-z)*1.56910000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*1.61373000e-01+str(h_CRCC8_2-z)*1.56735000e-01) + 1.53216000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat12', '(4.86494000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*4.84963000e-02+str(h_CRCC8_2-z)*4.72354000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*4.88479000e-02+str(h_CRCC8_2-z)*4.73542000e-02) + 4.82637000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat13', '(1.41937000e-05*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*1.17516000e-05+str(h_CRCC8_2-z)*1.65225000e-05) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*1.23651000e-05+str(h_CRCC8_2-z)*1.36668000e-05) + 1.95285000e-05*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat14', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat15', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat16', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat17', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat18', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat21', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat22', '(4.11720000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*4.09739000e-01+str(h_CRCC8_2-z)*3.90874000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*4.09892000e-01+str(h_CRCC8_2-z)*3.91147000e-01) + 3.94630000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat23', '(2.14926000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*2.10593000e-02+str(h_CRCC8_2-z)*2.00342000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*2.11122000e-02+str(h_CRCC8_2-z)*2.00957000e-02) + 2.14881000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat24', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*2.32466000e-08) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat25', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat26', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat27', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat28', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat31', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat32', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat33', '(4.81799000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*4.82702000e-01+str(h_CRCC8_2-z)*4.32387000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*4.82706000e-01+str(h_CRCC8_2-z)*4.32312000e-01) + 4.34291000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat34', '(1.21869000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*1.05080000e-02+str(h_CRCC8_2-z)*1.15877000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*1.06714000e-02+str(h_CRCC8_2-z)*1.17098000e-02) + 1.36717000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat35', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat36', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat37', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat38', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat41', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat42', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat43', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat44', '(4.68779000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*4.70919000e-01+str(h_CRCC8_2-z)*4.15182000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*4.70614000e-01+str(h_CRCC8_2-z)*4.15346000e-01) + 4.18043000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat45', '(3.09607000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*2.81614000e-02+str(h_CRCC8_2-z)*2.67380000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*2.84327000e-02+str(h_CRCC8_2-z)*2.69383000e-02) + 2.90700000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat46', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat47', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat48', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat51', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat52', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat53', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat54', '(2.31814000e-04*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*3.02803000e-04+str(h_CRCC8_2-z)*2.33461000e-04) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*2.95016000e-04+str(h_CRCC8_2-z)*2.28078000e-04) + 2.02839000e-04*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat55', '(4.35818000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*4.53234000e-01+str(h_CRCC8_2-z)*3.88321000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*4.51956000e-01+str(h_CRCC8_2-z)*3.86790000e-01) + 3.83329000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat56', '(6.47935000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*4.58016000e-02+str(h_CRCC8_2-z)*5.34036000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*4.69991000e-02+str(h_CRCC8_2-z)*5.50034000e-02) + 6.29984000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat57', '(9.83692000e-04*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*6.62327000e-04+str(h_CRCC8_2-z)*7.36847000e-04) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*6.65889000e-04+str(h_CRCC8_2-z)*7.63327000e-04) + 8.98990000e-04*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat58', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*4.72892000e-07+str(h_CRCC8_2-z)*5.86323000e-07) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*1.35819000e-07+str(h_CRCC8_2-z)*6.25065000e-07) + 5.55205000e-07*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat61', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat62', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat63', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat64', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat65', '(1.27821000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*1.58145000e-02+str(h_CRCC8_2-z)*1.11721000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*1.52830000e-02+str(h_CRCC8_2-z)*1.10665000e-02) + 1.07689000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat66', '(4.08354000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*4.09495000e-01+str(h_CRCC8_2-z)*3.56629000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*4.08968000e-01+str(h_CRCC8_2-z)*3.56577000e-01) + 3.59132000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat67', '(7.90492000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*7.32029000e-02+str(h_CRCC8_2-z)*7.24936000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*7.39625000e-02+str(h_CRCC8_2-z)*7.28404000e-02) + 7.41392000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat68', '(3.92208000e-03*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*3.55428000e-03+str(h_CRCC8_2-z)*3.10382000e-03) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*3.62055000e-03+str(h_CRCC8_2-z)*3.13306000e-03) + 3.21210000e-03*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat71', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat72', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat73', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat74', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat75', '(1.45743000e-04*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*1.38430000e-04+str(h_CRCC8_2-z)*1.09829000e-04) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*1.44425000e-04+str(h_CRCC8_2-z)*1.09420000e-04) + 1.10697000e-04*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat76', '(5.54899000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*5.65430000e-02+str(h_CRCC8_2-z)*4.94355000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*5.61970000e-02+str(h_CRCC8_2-z)*4.94330000e-02) + 4.95782000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat77', '(4.30507000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*4.27580000e-01+str(h_CRCC8_2-z)*3.71591000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*4.27728000e-01+str(h_CRCC8_2-z)*3.71784000e-01) + 3.75165000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat78', '(2.78707000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*2.72958000e-02+str(h_CRCC8_2-z)*2.84849000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*2.75000000e-02+str(h_CRCC8_2-z)*2.85222000e-02) + 2.85320000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat81', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat82', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat83', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat84', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*0.00000000e+00) + 0.00000000e+00*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat85', '(0.00000000e+00*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*1.49744000e-07) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z)*1.21245000e-07) + 1.68484000e-07*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat86', '(8.75668000e-03*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*8.73843000e-03+str(h_CRCC8_2-z)*6.84926000e-03) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*8.76158000e-03+str(h_CRCC8_2-z)*6.82818000e-03) + 6.97633000e-03*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat87', '(9.64325000e-02*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*9.60904000e-02+str(h_CRCC8_2-z)*9.59512000e-02) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*9.64355000e-02+str(h_CRCC8_2-z)*9.59477000e-02) + 9.57660000e-02*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat88', '(4.40144000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*4.37882000e-01+str(h_CRCC8_2-z)*3.73634000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*4.37292000e-01+str(h_CRCC8_2-z)*3.73897000e-01) + 3.77722000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('tot1', '(2.10072000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*2.11757000e-01+str(h_CRCC8_2-z)*2.04692000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*2.11538000e-01+str(h_CRCC8_2-z)*2.04635000e-01) + 2.02145000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('tot2', '(4.36719000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*4.34215000e-01+str(h_CRCC8_2-z)*4.10930000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*4.34454000e-01+str(h_CRCC8_2-z)*4.11264000e-01) + 4.16138000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('tot3', '(5.11849000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*5.10903000e-01+str(h_CRCC8_2-z)*4.43983000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*5.11172000e-01+str(h_CRCC8_2-z)*4.44030000e-01) + 4.47972000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('tot4', '(5.25283000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*5.24986000e-01+str(h_CRCC8_2-z)*4.41963000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*5.25071000e-01+str(h_CRCC8_2-z)*4.42327000e-01) + 4.47161000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('tot5', '(5.27589000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*5.26633000e-01+str(h_CRCC8_2-z)*4.42845000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*5.26667000e-01+str(h_CRCC8_2-z)*4.42937000e-01) + 4.47584000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('tot6', '(5.30050000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*5.29324000e-01+str(h_CRCC8_2-z)*4.43695000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*5.29731000e-01+str(h_CRCC8_2-z)*4.43917000e-01) + 4.47541000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('tot7', '(5.40043000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*5.39156000e-01+str(h_CRCC8_2-z)*4.50095000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*5.39903000e-01+str(h_CRCC8_2-z)*4.50322000e-01) + 4.53851000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('tot8', '(5.70910000e-01*str(5.728500-z)*str(z-4.308500) + str(4.308500-z)*str(z-2.720000)*(str(z-h_CRCC8_2)*5.70008000e-01+str(h_CRCC8_2-z)*4.77366000e-01) + str(2.720000-z)*str(z-1.125000)*(str(z-h_CRCC8_2)*5.70402000e-01+str(h_CRCC8_2-z)*4.77601000e-01) + 4.81397000e-01*str(1.125000-z)*str(z-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('diff21', '2.57142857e-01*tot1[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('diff22', '2.57142857e-01*tot2[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('diff23', '2.57142857e-01*tot3[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('diff24', '2.57142857e-01*tot4[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('diff25', '2.57142857e-01*tot5[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('diff26', '2.57142857e-01*tot6[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('diff27', '2.57142857e-01*tot7[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('diff28', '2.57142857e-01*tot8[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').selection.geom('geom1', 3);
model.component('mod1').variable('var_xsCRCC8_2').selection.set([17]);
model.component('mod1').variable.create('var16');
model.component('mod1').variable('var16').set('beta1', '5.38503000e-03');
model.component('mod1').variable('var16').set('betas1', '1.64712000e-04');
model.component('mod1').variable('var16').set('betas2', '9.85399000e-04');
model.component('mod1').variable('var16').set('betas3', '8.56807000e-04');
model.component('mod1').variable('var16').set('betas4', '2.40172000e-03');
model.component('mod1').variable('var16').set('betas5', '7.27014000e-04');
model.component('mod1').variable('var16').set('betas6', '2.49379000e-04');
model.component('mod1').variable('var16').set('chid1', '3.69684000e-02');
model.component('mod1').variable('var16').set('chid2', '9.40452000e-01');
model.component('mod1').variable('var16').set('chid3', '2.25463000e-02');
model.component('mod1').variable('var16').set('chid4', '2.56709000e-05');
model.component('mod1').variable('var16').set('chid5', '3.70360000e-06');
model.component('mod1').variable('var16').set('chid6', '3.63444000e-06');
model.component('mod1').variable('var16').set('chid7', '0.00000000e+00');
model.component('mod1').variable('var16').set('chid8', '0.00000000e+00');
model.component('mod1').variable('var16').set('chip1', '5.76119000e-01');
model.component('mod1').variable('var16').set('chip2', '4.22335000e-01');
model.component('mod1').variable('var16').set('chip3', '1.54535000e-03');
model.component('mod1').variable('var16').set('chip4', '1.18016000e-07');
model.component('mod1').variable('var16').set('chip5', '0.00000000e+00');
model.component('mod1').variable('var16').set('chip6', '0.00000000e+00');
model.component('mod1').variable('var16').set('chip7', '0.00000000e+00');
model.component('mod1').variable('var16').set('chip8', '0.00000000e+00');
model.component('mod1').variable('var16').set('chit1', '5.73230000e-01');
model.component('mod1').variable('var16').set('chit2', '4.25112000e-01');
model.component('mod1').variable('var16').set('chit3', '1.65794000e-03');
model.component('mod1').variable('var16').set('chit4', '2.55187000e-07');
model.component('mod1').variable('var16').set('chit5', '1.95212000e-08');
model.component('mod1').variable('var16').set('chit6', '1.96607000e-08');
model.component('mod1').variable('var16').set('chit7', '0.00000000e+00');
model.component('mod1').variable('var16').set('chit8', '0.00000000e+00');
model.component('mod1').variable('var16').set('diff11', '2.31159000e+00[cm]');
model.component('mod1').variable('var16').set('diff12', '1.12199000e+00[cm]');
model.component('mod1').variable('var16').set('diff13', '1.00891000e+00[cm]');
model.component('mod1').variable('var16').set('diff14', '9.89409000e-01[cm]');
model.component('mod1').variable('var16').set('diff15', '1.00371000e+00[cm]');
model.component('mod1').variable('var16').set('diff16', '9.80752000e-01[cm]');
model.component('mod1').variable('var16').set('diff17', '9.51883000e-01[cm]');
model.component('mod1').variable('var16').set('diff18', '8.52412000e-01[cm]');
model.component('mod1').variable('var16').set('fiss1', '9.94611000e-05[1/cm]');
model.component('mod1').variable('var16').set('fiss2', '2.71736000e-05[1/cm]');
model.component('mod1').variable('var16').set('fiss3', '1.96695000e-04[1/cm]');
model.component('mod1').variable('var16').set('fiss4', '7.87637000e-04[1/cm]');
model.component('mod1').variable('var16').set('fiss5', '7.09040000e-04[1/cm]');
model.component('mod1').variable('var16').set('fiss6', '5.00230000e-03[1/cm]');
model.component('mod1').variable('var16').set('fiss7', '4.57511000e-03[1/cm]');
model.component('mod1').variable('var16').set('fiss8', '8.91462000e-03[1/cm]');
model.component('mod1').variable('var16').set('invV1', '4.78184000e-10[s/cm]');
model.component('mod1').variable('var16').set('invV2', '1.95808000e-09[s/cm]');
model.component('mod1').variable('var16').set('invV3', '3.02780000e-08[s/cm]');
model.component('mod1').variable('var16').set('invV4', '2.00394000e-07[s/cm]');
model.component('mod1').variable('var16').set('invV5', '6.56741000e-07[s/cm]');
model.component('mod1').variable('var16').set('invV6', '1.35560000e-06[s/cm]');
model.component('mod1').variable('var16').set('invV7', '2.16378000e-06[s/cm]');
model.component('mod1').variable('var16').set('invV8', '4.14396000e-06[s/cm]');
model.component('mod1').variable('var16').set('kappa1', '2.05992000e+02[MeV]');
model.component('mod1').variable('var16').set('kappa2', '2.03329000e+02[MeV]');
model.component('mod1').variable('var16').set('kappa3', '2.03104000e+02[MeV]');
model.component('mod1').variable('var16').set('kappa4', '2.03627000e+02[MeV]');
model.component('mod1').variable('var16').set('kappa5', '2.03017000e+02[MeV]');
model.component('mod1').variable('var16').set('kappa6', '2.05503000e+02[MeV]');
model.component('mod1').variable('var16').set('kappa7', '2.03869000e+02[MeV]');
model.component('mod1').variable('var16').set('kappa8', '2.03334000e+02[MeV]');
model.component('mod1').variable('var16').set('lambdas1', '1.25435000e-02[1/s]');
model.component('mod1').variable('var16').set('lambdas2', '3.13212000e-02[1/s]');
model.component('mod1').variable('var16').set('lambdas3', '1.09688000e-01[1/s]');
model.component('mod1').variable('var16').set('lambdas4', '3.16554000e-01[1/s]');
model.component('mod1').variable('var16').set('lambdas5', '1.29420000e+00[1/s]');
model.component('mod1').variable('var16').set('lambdas6', '8.03336000e+00[1/s]');
model.component('mod1').variable('var16').set('nsf1', '(2.82127328e-04 +( log(T_fuel_1[1/K]) *( -2.22653160e-07 )) +( log(T_fuel_2[1/K]) *( -2.14629685e-07 )) +( log(T_fuel_3[1/K]) *( -4.19525381e-08 )) +( log(T_fuel_4[1/K]) *( -1.00804158e-07 )) +( log(T_fuel_5[1/K]) *( 3.45156923e-07 )) +( log(T_fuel_6[1/K]) *( -1.33838270e-07 )) +( log(T_fuel_7[1/K]) *( -4.23002801e-08 )) +( log(T_fuel_8[1/K]) *( -3.93633260e-08 )) +( log(T_fuel_9[1/K]) *( 1.58099479e-09 )) +( log(T_fuel_10[1/K]) *( 1.87242000e-07 )) +( log(T_fuel_11[1/K]) *( 9.21235687e-08 )) +( log(T_fuel_12[1/K]) *( 1.19134868e-07 )) +( log(T_fuel_13[1/K]) *( -3.72638892e-07 )) +( log(T_fuel_14[1/K]) *( 1.92890925e-07 )) +( log(T_fuel_15[1/K]) *( 4.02870252e-08 )) +( log(T_fuel_16[1/K]) *( -3.32059966e-07 )) +( log(T_fuel_17[1/K]) *( 2.10883614e-08 )) +( log(T_fuel_18[1/K]) *( -1.26692222e-07 )) +( log(T_fuel_19[1/K]) *( 2.03617159e-07 )) +( log(T_fuel_20[1/K]) *( -1.94480986e-07 )) +( log(T_fuel_21[1/K]) *( 2.95701162e-07 )) +( log(T_fuel_22[1/K]) *( -7.25569102e-08 )) +( log(T_fuel_23[1/K]) *( -1.51899286e-07 )) +( log(T_fuel_24[1/K]) *( 2.10686255e-07 )) +( T_flibe *( -3.80905957e-09 )) ) [1/cm]');
model.component('mod1').variable('var16').set('nsf2', '(6.81830776e-05 +( log(T_fuel_1[1/K]) *( 2.48961981e-08 )) +( log(T_fuel_2[1/K]) *( 4.73866462e-08 )) +( log(T_fuel_3[1/K]) *( 1.00190377e-08 )) +( log(T_fuel_4[1/K]) *( -3.47832672e-08 )) +( log(T_fuel_5[1/K]) *( -4.34498690e-10 )) +( log(T_fuel_6[1/K]) *( 1.65661055e-08 )) +( log(T_fuel_7[1/K]) *( -2.29245364e-08 )) +( log(T_fuel_8[1/K]) *( 5.21629888e-09 )) +( log(T_fuel_9[1/K]) *( 3.68765242e-08 )) +( log(T_fuel_10[1/K]) *( -2.57952993e-08 )) +( log(T_fuel_11[1/K]) *( -2.85471116e-08 )) +( log(T_fuel_12[1/K]) *( 3.74711199e-08 )) +( log(T_fuel_13[1/K]) *( 9.21767460e-09 )) +( log(T_fuel_14[1/K]) *( 9.21187096e-09 )) +( log(T_fuel_15[1/K]) *( 1.22587927e-08 )) +( log(T_fuel_16[1/K]) *( 1.28990437e-08 )) +( log(T_fuel_17[1/K]) *( 2.06786759e-08 )) +( log(T_fuel_18[1/K]) *( 9.39580340e-09 )) +( log(T_fuel_19[1/K]) *( -1.84251562e-08 )) +( log(T_fuel_20[1/K]) *( 4.15408985e-09 )) +( log(T_fuel_21[1/K]) *( 1.02588646e-08 )) +( log(T_fuel_22[1/K]) *( 7.39102854e-09 )) +( log(T_fuel_23[1/K]) *( 8.48761446e-09 )) +( log(T_fuel_24[1/K]) *( -1.55810180e-08 )) +( T_flibe *( -2.75392691e-10 )) ) [1/cm]');
model.component('mod1').variable('var16').set('nsf3', '(4.94296217e-04 +( log(T_fuel_1[1/K]) *( 2.75755993e-07 )) +( log(T_fuel_2[1/K]) *( -3.74981233e-07 )) +( log(T_fuel_3[1/K]) *( 1.48204542e-08 )) +( log(T_fuel_4[1/K]) *( 5.90510716e-08 )) +( log(T_fuel_5[1/K]) *( -6.34387891e-08 )) +( log(T_fuel_6[1/K]) *( -1.74461128e-07 )) +( log(T_fuel_7[1/K]) *( 1.81100228e-07 )) +( log(T_fuel_8[1/K]) *( 8.39648090e-08 )) +( log(T_fuel_9[1/K]) *( -2.63340002e-08 )) +( log(T_fuel_10[1/K]) *( -1.74912073e-07 )) +( log(T_fuel_11[1/K]) *( 1.59033223e-07 )) +( log(T_fuel_12[1/K]) *( -2.10636733e-07 )) +( log(T_fuel_13[1/K]) *( 1.77993403e-07 )) +( log(T_fuel_14[1/K]) *( 2.85739861e-07 )) +( log(T_fuel_15[1/K]) *( -3.51274543e-07 )) +( log(T_fuel_16[1/K]) *( 1.82561985e-07 )) +( log(T_fuel_17[1/K]) *( -6.95189169e-08 )) +( log(T_fuel_18[1/K]) *( -2.40964656e-07 )) +( log(T_fuel_19[1/K]) *( -3.41355526e-08 )) +( log(T_fuel_20[1/K]) *( -1.98720545e-07 )) +( log(T_fuel_21[1/K]) *( 9.04936590e-08 )) +( log(T_fuel_22[1/K]) *( 6.74938852e-09 )) +( log(T_fuel_23[1/K]) *( 1.14260832e-07 )) +( log(T_fuel_24[1/K]) *( -1.27251886e-07 )) +( T_flibe *( -1.53163446e-09 )) ) [1/cm]');
model.component('mod1').variable('var16').set('nsf4', '(1.94431044e-03 +( log(T_fuel_1[1/K]) *( -1.01212558e-06 )) +( log(T_fuel_2[1/K]) *( -1.36763980e-07 )) +( log(T_fuel_3[1/K]) *( 1.10688900e-06 )) +( log(T_fuel_4[1/K]) *( -1.75537709e-06 )) +( log(T_fuel_5[1/K]) *( 2.25294848e-06 )) +( log(T_fuel_6[1/K]) *( -1.29161319e-06 )) +( log(T_fuel_7[1/K]) *( -1.03265555e-07 )) +( log(T_fuel_8[1/K]) *( 9.94899440e-07 )) +( log(T_fuel_9[1/K]) *( 9.81309812e-07 )) +( log(T_fuel_10[1/K]) *( -5.44510979e-08 )) +( log(T_fuel_11[1/K]) *( -9.21551923e-07 )) +( log(T_fuel_12[1/K]) *( -1.73440799e-07 )) +( log(T_fuel_13[1/K]) *( 1.88164493e-07 )) +( log(T_fuel_14[1/K]) *( 2.47982695e-07 )) +( log(T_fuel_15[1/K]) *( 1.80577307e-06 )) +( log(T_fuel_16[1/K]) *( -1.39610202e-06 )) +( log(T_fuel_17[1/K]) *( 1.05791949e-06 )) +( log(T_fuel_18[1/K]) *( 9.37477562e-07 )) +( log(T_fuel_19[1/K]) *( 9.75882517e-07 )) +( log(T_fuel_20[1/K]) *( 1.59704648e-06 )) +( log(T_fuel_21[1/K]) *( 1.95857949e-07 )) +( log(T_fuel_22[1/K]) *( 1.10816502e-07 )) +( log(T_fuel_23[1/K]) *( -7.76237621e-08 )) +( log(T_fuel_24[1/K]) *( 9.24685204e-07 )) +( T_flibe *( -9.12203091e-10 )) ) [1/cm]');
model.component('mod1').variable('var16').set('nsf5', '(1.66994785e-03 +( log(T_fuel_1[1/K]) *( -1.90159455e-06 )) +( log(T_fuel_2[1/K]) *( -5.61798098e-06 )) +( log(T_fuel_3[1/K]) *( -3.55608996e-06 )) +( log(T_fuel_4[1/K]) *( -3.21222686e-06 )) +( log(T_fuel_5[1/K]) *( 3.73171418e-06 )) +( log(T_fuel_6[1/K]) *( 6.41704036e-06 )) +( log(T_fuel_7[1/K]) *( 4.53431186e-06 )) +( log(T_fuel_8[1/K]) *( -3.44205767e-06 )) +( log(T_fuel_9[1/K]) *( -3.55068314e-06 )) +( log(T_fuel_10[1/K]) *( -8.13497990e-08 )) +( log(T_fuel_11[1/K]) *( 2.91239170e-06 )) +( log(T_fuel_12[1/K]) *( -3.03852659e-07 )) +( log(T_fuel_13[1/K]) *( -2.37482056e-06 )) +( log(T_fuel_14[1/K]) *( -7.22172120e-07 )) +( log(T_fuel_15[1/K]) *( 1.32156714e-06 )) +( log(T_fuel_16[1/K]) *( 9.60248916e-07 )) +( log(T_fuel_17[1/K]) *( 4.52353816e-06 )) +( log(T_fuel_18[1/K]) *( 4.41406719e-06 )) +( log(T_fuel_19[1/K]) *( 1.93344516e-07 )) +( log(T_fuel_20[1/K]) *( 1.14547957e-06 )) +( log(T_fuel_21[1/K]) *( 1.81965628e-06 )) +( log(T_fuel_22[1/K]) *( -4.29136429e-06 )) +( log(T_fuel_23[1/K]) *( 2.66681152e-06 )) +( log(T_fuel_24[1/K]) *( -2.59374011e-06 )) +( T_flibe *( 9.88336139e-08 )) ) [1/cm]');
model.component('mod1').variable('var16').set('nsf6', '(1.33777163e-02 +( log(T_fuel_1[1/K]) *( 7.01044629e-07 )) +( log(T_fuel_2[1/K]) *( 1.55647152e-05 )) +( log(T_fuel_3[1/K]) *( -3.56292465e-06 )) +( log(T_fuel_4[1/K]) *( 2.05221526e-06 )) +( log(T_fuel_5[1/K]) *( -8.28987587e-06 )) +( log(T_fuel_6[1/K]) *( -3.53116504e-06 )) +( log(T_fuel_7[1/K]) *( -5.69276580e-06 )) +( log(T_fuel_8[1/K]) *( -5.18789123e-06 )) +( log(T_fuel_9[1/K]) *( 2.51329257e-06 )) +( log(T_fuel_10[1/K]) *( -2.58343182e-06 )) +( log(T_fuel_11[1/K]) *( 8.43942606e-06 )) +( log(T_fuel_12[1/K]) *( 6.88051901e-07 )) +( log(T_fuel_13[1/K]) *( 7.70361192e-06 )) +( log(T_fuel_14[1/K]) *( 6.04097988e-07 )) +( log(T_fuel_15[1/K]) *( 4.13385205e-06 )) +( log(T_fuel_16[1/K]) *( 7.27503455e-07 )) +( log(T_fuel_17[1/K]) *( 1.64686110e-06 )) +( log(T_fuel_18[1/K]) *( -8.14424580e-06 )) +( log(T_fuel_19[1/K]) *( -1.26409824e-06 )) +( log(T_fuel_20[1/K]) *( 3.98697388e-06 )) +( log(T_fuel_21[1/K]) *( 1.02688350e-06 )) +( log(T_fuel_22[1/K]) *( 5.09631603e-06 )) +( log(T_fuel_23[1/K]) *( -5.59310482e-07 )) +( log(T_fuel_24[1/K]) *( 2.38451182e-06 )) +( T_flibe *( -2.18931308e-07 )) ) [1/cm]');
model.component('mod1').variable('var16').set('nsf7', '(1.13377308e-02 +( log(T_fuel_1[1/K]) *( 6.48007025e-06 )) +( log(T_fuel_2[1/K]) *( 6.39929165e-06 )) +( log(T_fuel_3[1/K]) *( 1.86467683e-05 )) +( log(T_fuel_4[1/K]) *( 7.51894566e-06 )) +( log(T_fuel_5[1/K]) *( 7.69365978e-06 )) +( log(T_fuel_6[1/K]) *( -7.64231049e-06 )) +( log(T_fuel_7[1/K]) *( -5.56651026e-06 )) +( log(T_fuel_8[1/K]) *( 1.66512102e-05 )) +( log(T_fuel_9[1/K]) *( 1.04832317e-05 )) +( log(T_fuel_10[1/K]) *( 1.32751779e-07 )) +( log(T_fuel_11[1/K]) *( -1.55584895e-05 )) +( log(T_fuel_12[1/K]) *( -4.57243765e-06 )) +( log(T_fuel_13[1/K]) *( 4.83000558e-06 )) +( log(T_fuel_14[1/K]) *( 2.58357158e-06 )) +( log(T_fuel_15[1/K]) *( -1.34960385e-06 )) +( log(T_fuel_16[1/K]) *( -8.58348258e-07 )) +( log(T_fuel_17[1/K]) *( -8.82574820e-06 )) +( log(T_fuel_18[1/K]) *( 2.76672255e-06 )) +( log(T_fuel_19[1/K]) *( -5.96569136e-07 )) +( log(T_fuel_20[1/K]) *( 3.40372546e-06 )) +( log(T_fuel_21[1/K]) *( -4.16602112e-06 )) +( log(T_fuel_22[1/K]) *( 7.37391817e-06 )) +( log(T_fuel_23[1/K]) *( 9.00951825e-06 )) +( log(T_fuel_24[1/K]) *( 7.46514562e-06 )) +( T_flibe *( -1.31114065e-07 )) ) [1/cm]');
model.component('mod1').variable('var16').set('nsf8', '(2.26744381e-02 +( log(T_fuel_1[1/K]) *( 7.70866573e-06 )) +( log(T_fuel_2[1/K]) *( -2.30225791e-06 )) +( log(T_fuel_3[1/K]) *( 3.21334064e-05 )) +( log(T_fuel_4[1/K]) *( 8.49583399e-06 )) +( log(T_fuel_5[1/K]) *( -1.35773578e-06 )) +( log(T_fuel_6[1/K]) *( -2.65231865e-05 )) +( log(T_fuel_7[1/K]) *( -1.72066449e-05 )) +( log(T_fuel_8[1/K]) *( 2.05058806e-05 )) +( log(T_fuel_9[1/K]) *( 1.64960965e-05 )) +( log(T_fuel_10[1/K]) *( -1.45400692e-05 )) +( log(T_fuel_11[1/K]) *( -2.32139267e-05 )) +( log(T_fuel_12[1/K]) *( 4.31992622e-06 )) +( log(T_fuel_13[1/K]) *( 1.31950509e-05 )) +( log(T_fuel_14[1/K]) *( 1.04191613e-05 )) +( log(T_fuel_15[1/K]) *( -4.79819510e-06 )) +( log(T_fuel_16[1/K]) *( -1.07224778e-06 )) +( log(T_fuel_17[1/K]) *( -2.33831939e-05 )) +( log(T_fuel_18[1/K]) *( -1.73325588e-05 )) +( log(T_fuel_19[1/K]) *( 1.72167887e-05 )) +( log(T_fuel_20[1/K]) *( -1.31995448e-05 )) +( log(T_fuel_21[1/K]) *( -2.18787454e-05 )) +( log(T_fuel_22[1/K]) *( -3.84234425e-06 )) +( log(T_fuel_23[1/K]) *( 9.16757340e-06 )) +( log(T_fuel_24[1/K]) *( 1.48155639e-05 )) +( T_flibe *( -2.21294808e-07 )) ) [1/cm]');
model.component('mod1').variable('var16').set('rem1', '(4.37239510e-02 +( log(T_fuel_1[1/K]) *( -6.91106945e-07 )) +( log(T_fuel_2[1/K]) *( -4.62357808e-06 )) +( log(T_fuel_3[1/K]) *( -1.72315610e-06 )) +( log(T_fuel_4[1/K]) *( -1.74972542e-06 )) +( log(T_fuel_5[1/K]) *( -1.43699664e-06 )) +( log(T_fuel_6[1/K]) *( -4.27107140e-06 )) +( log(T_fuel_7[1/K]) *( 4.37818539e-06 )) +( log(T_fuel_8[1/K]) *( -2.68645490e-06 )) +( log(T_fuel_9[1/K]) *( 1.45587975e-06 )) +( log(T_fuel_10[1/K]) *( -3.93582749e-06 )) +( log(T_fuel_11[1/K]) *( -1.49263757e-06 )) +( log(T_fuel_12[1/K]) *( -3.43984936e-06 )) +( log(T_fuel_13[1/K]) *( -1.98836568e-06 )) +( log(T_fuel_14[1/K]) *( 1.05834864e-06 )) +( log(T_fuel_15[1/K]) *( -3.84561567e-06 )) +( log(T_fuel_16[1/K]) *( 3.68239521e-06 )) +( log(T_fuel_17[1/K]) *( -3.74674479e-06 )) +( log(T_fuel_18[1/K]) *( -7.16116076e-06 )) +( log(T_fuel_19[1/K]) *( -4.00783675e-06 )) +( log(T_fuel_20[1/K]) *( -1.16222515e-06 )) +( log(T_fuel_21[1/K]) *( -3.49163603e-06 )) +( log(T_fuel_22[1/K]) *( 1.45983258e-05 )) +( log(T_fuel_23[1/K]) *( 2.17254625e-06 )) +( log(T_fuel_24[1/K]) *( 6.80826695e-06 )) +( T_flibe *( -4.98923537e-06 )) ) [1/cm]');
model.component('mod1').variable('var16').set('rem2', '(1.59737345e-02 +( log(T_fuel_1[1/K]) *( -3.11679646e-07 )) +( log(T_fuel_2[1/K]) *( 1.06994647e-06 )) +( log(T_fuel_3[1/K]) *( -2.04180143e-06 )) +( log(T_fuel_4[1/K]) *( -1.78803568e-06 )) +( log(T_fuel_5[1/K]) *( -2.09015907e-06 )) +( log(T_fuel_6[1/K]) *( 3.42993062e-06 )) +( log(T_fuel_7[1/K]) *( 5.12750935e-07 )) +( log(T_fuel_8[1/K]) *( -2.55495724e-06 )) +( log(T_fuel_9[1/K]) *( -2.05964621e-07 )) +( log(T_fuel_10[1/K]) *( -3.19915335e-07 )) +( log(T_fuel_11[1/K]) *( 4.07515541e-07 )) +( log(T_fuel_12[1/K]) *( -2.34185158e-07 )) +( log(T_fuel_13[1/K]) *( -7.87238364e-07 )) +( log(T_fuel_14[1/K]) *( 9.34318959e-07 )) +( log(T_fuel_15[1/K]) *( 1.21254359e-06 )) +( log(T_fuel_16[1/K]) *( 1.34699286e-06 )) +( log(T_fuel_17[1/K]) *( 1.44311041e-06 )) +( log(T_fuel_18[1/K]) *( -3.46113299e-06 )) +( log(T_fuel_19[1/K]) *( 1.77807202e-07 )) +( log(T_fuel_20[1/K]) *( 1.65536797e-06 )) +( log(T_fuel_21[1/K]) *( 4.38279437e-06 )) +( log(T_fuel_22[1/K]) *( -1.48210305e-06 )) +( log(T_fuel_23[1/K]) *( 6.46531289e-07 )) +( log(T_fuel_24[1/K]) *( -2.49491481e-06 )) +( T_flibe *( -1.65955786e-06 )) ) [1/cm]');
model.component('mod1').variable('var16').set('rem3', '(8.80438448e-03 +( log(T_fuel_1[1/K]) *( -1.33884471e-06 )) +( log(T_fuel_2[1/K]) *( -5.51740336e-07 )) +( log(T_fuel_3[1/K]) *( 2.05310389e-08 )) +( log(T_fuel_4[1/K]) *( -1.42744568e-06 )) +( log(T_fuel_5[1/K]) *( 6.51286045e-07 )) +( log(T_fuel_6[1/K]) *( 2.21803431e-07 )) +( log(T_fuel_7[1/K]) *( 8.36844710e-07 )) +( log(T_fuel_8[1/K]) *( 5.23601663e-07 )) +( log(T_fuel_9[1/K]) *( 9.59965106e-07 )) +( log(T_fuel_10[1/K]) *( -7.46392225e-07 )) +( log(T_fuel_11[1/K]) *( 2.61726260e-07 )) +( log(T_fuel_12[1/K]) *( 3.19206536e-07 )) +( log(T_fuel_13[1/K]) *( 2.53414058e-07 )) +( log(T_fuel_14[1/K]) *( 1.25326302e-07 )) +( log(T_fuel_15[1/K]) *( 6.21233028e-07 )) +( log(T_fuel_16[1/K]) *( 8.11501297e-07 )) +( log(T_fuel_17[1/K]) *( 1.14668759e-06 )) +( log(T_fuel_18[1/K]) *( -1.07390886e-07 )) +( log(T_fuel_19[1/K]) *( 8.64589582e-07 )) +( log(T_fuel_20[1/K]) *( 9.64466833e-07 )) +( log(T_fuel_21[1/K]) *( 4.37880413e-07 )) +( log(T_fuel_22[1/K]) *( 1.16332725e-06 )) +( log(T_fuel_23[1/K]) *( 4.34475734e-07 )) +( log(T_fuel_24[1/K]) *( 3.65609835e-08 )) +( T_flibe *( -6.36314957e-07 )) ) [1/cm]');
model.component('mod1').variable('var16').set('rem4', '(2.18456405e-02 +( log(T_fuel_1[1/K]) *( 2.40312827e-05 )) +( log(T_fuel_2[1/K]) *( 1.99267905e-05 )) +( log(T_fuel_3[1/K]) *( 2.71504796e-05 )) +( log(T_fuel_4[1/K]) *( 1.99326805e-05 )) +( log(T_fuel_5[1/K]) *( 2.80691518e-05 )) +( log(T_fuel_6[1/K]) *( 1.70073357e-05 )) +( log(T_fuel_7[1/K]) *( 3.69149354e-05 )) +( log(T_fuel_8[1/K]) *( 2.30497273e-05 )) +( log(T_fuel_9[1/K]) *( 2.13341240e-05 )) +( log(T_fuel_10[1/K]) *( 2.79442804e-05 )) +( log(T_fuel_11[1/K]) *( 2.36703065e-05 )) +( log(T_fuel_12[1/K]) *( 2.11498505e-05 )) +( log(T_fuel_13[1/K]) *( 1.88797649e-05 )) +( log(T_fuel_14[1/K]) *( 3.26906591e-05 )) +( log(T_fuel_15[1/K]) *( 1.52934391e-05 )) +( log(T_fuel_16[1/K]) *( 2.29485791e-05 )) +( log(T_fuel_17[1/K]) *( 1.93724782e-05 )) +( log(T_fuel_18[1/K]) *( 2.77394400e-05 )) +( log(T_fuel_19[1/K]) *( 2.29280123e-05 )) +( log(T_fuel_20[1/K]) *( 2.32722279e-05 )) +( log(T_fuel_21[1/K]) *( 2.26605172e-05 )) +( log(T_fuel_22[1/K]) *( 3.39122410e-05 )) +( log(T_fuel_23[1/K]) *( 2.61728371e-05 )) +( log(T_fuel_24[1/K]) *( 2.53603729e-05 )) +( T_flibe *( -1.55286339e-06 )) ) [1/cm]');
model.component('mod1').variable('var16').set('rem5', '(3.07482243e-02 +( log(T_fuel_1[1/K]) *( -8.20084055e-05 )) +( log(T_fuel_2[1/K]) *( -3.21292744e-04 )) +( log(T_fuel_3[1/K]) *( -2.81745509e-04 )) +( log(T_fuel_4[1/K]) *( -1.73169298e-04 )) +( log(T_fuel_5[1/K]) *( 1.93564714e-04 )) +( log(T_fuel_6[1/K]) *( 3.19807080e-04 )) +( log(T_fuel_7[1/K]) *( 3.16513339e-04 )) +( log(T_fuel_8[1/K]) *( -2.79984082e-04 )) +( log(T_fuel_9[1/K]) *( -2.51119874e-04 )) +( log(T_fuel_10[1/K]) *( -1.19208160e-05 )) +( log(T_fuel_11[1/K]) *( 2.29402749e-04 )) +( log(T_fuel_12[1/K]) *( 2.36337301e-05 )) +( log(T_fuel_13[1/K]) *( -1.53043795e-04 )) +( log(T_fuel_14[1/K]) *( -6.07177420e-06 )) +( log(T_fuel_15[1/K]) *( 1.00161844e-04 )) +( log(T_fuel_16[1/K]) *( -7.18239070e-06 )) +( log(T_fuel_17[1/K]) *( 2.62496900e-04 )) +( log(T_fuel_18[1/K]) *( 2.62082262e-04 )) +( log(T_fuel_19[1/K]) *( 1.66804443e-05 )) +( log(T_fuel_20[1/K]) *( 3.03613593e-05 )) +( log(T_fuel_21[1/K]) *( 1.43902018e-04 )) +( log(T_fuel_22[1/K]) *( -1.94748902e-04 )) +( log(T_fuel_23[1/K]) *( 1.35609107e-04 )) +( log(T_fuel_24[1/K]) *( -1.58858912e-04 )) +( T_flibe *( 4.06635672e-06 )) ) [1/cm]');
model.component('mod1').variable('var16').set('rem6', '(7.77111438e-02 +( log(T_fuel_1[1/K]) *( -5.86254345e-05 )) +( log(T_fuel_2[1/K]) *( -2.87817601e-04 )) +( log(T_fuel_3[1/K]) *( -1.74546462e-04 )) +( log(T_fuel_4[1/K]) *( -9.88304669e-05 )) +( log(T_fuel_5[1/K]) *( 1.65843215e-04 )) +( log(T_fuel_6[1/K]) *( 2.28998315e-04 )) +( log(T_fuel_7[1/K]) *( 2.00716797e-04 )) +( log(T_fuel_8[1/K]) *( -1.89313361e-04 )) +( log(T_fuel_9[1/K]) *( -2.33313422e-04 )) +( log(T_fuel_10[1/K]) *( 2.06096616e-05 )) +( log(T_fuel_11[1/K]) *( 1.58780534e-04 )) +( log(T_fuel_12[1/K]) *( -9.13882112e-06 )) +( log(T_fuel_13[1/K]) *( -8.80842336e-05 )) +( log(T_fuel_14[1/K]) *( -1.55219663e-05 )) +( log(T_fuel_15[1/K]) *( 4.35696401e-05 )) +( log(T_fuel_16[1/K]) *( -1.94993297e-05 )) +( log(T_fuel_17[1/K]) *( 1.59701673e-04 )) +( log(T_fuel_18[1/K]) *( 1.78930277e-04 )) +( log(T_fuel_19[1/K]) *( 2.79128253e-05 )) +( log(T_fuel_20[1/K]) *( 2.48953320e-05 )) +( log(T_fuel_21[1/K]) *( 7.36672363e-05 )) +( log(T_fuel_22[1/K]) *( -1.43697027e-04 )) +( log(T_fuel_23[1/K]) *( 1.34412531e-04 )) +( log(T_fuel_24[1/K]) *( -1.02844488e-04 )) +( T_flibe *( -3.88542014e-06 )) ) [1/cm]');
model.component('mod1').variable('var16').set('rem7', '(6.13208739e-02 +( log(T_fuel_1[1/K]) *( -3.70451103e-04 )) +( log(T_fuel_2[1/K]) *( -4.46308083e-04 )) +( log(T_fuel_3[1/K]) *( -1.14881744e-03 )) +( log(T_fuel_4[1/K]) *( -4.49217045e-04 )) +( log(T_fuel_5[1/K]) *( 1.47848971e-04 )) +( log(T_fuel_6[1/K]) *( 9.70095475e-04 )) +( log(T_fuel_7[1/K]) *( 6.17528458e-04 )) +( log(T_fuel_8[1/K]) *( -1.01478230e-03 )) +( log(T_fuel_9[1/K]) *( -4.43435855e-04 )) +( log(T_fuel_10[1/K]) *( -1.65765526e-04 )) +( log(T_fuel_11[1/K]) *( 8.19037544e-04 )) +( log(T_fuel_12[1/K]) *( 1.49575577e-04 )) +( log(T_fuel_13[1/K]) *( -4.18217111e-04 )) +( log(T_fuel_14[1/K]) *( -2.04981367e-04 )) +( log(T_fuel_15[1/K]) *( 6.69756597e-04 )) +( log(T_fuel_16[1/K]) *( 1.54289552e-04 )) +( log(T_fuel_17[1/K]) *( 9.15119918e-04 )) +( log(T_fuel_18[1/K]) *( 4.76455523e-04 )) +( log(T_fuel_19[1/K]) *( -9.66572645e-05 )) +( log(T_fuel_20[1/K]) *( 1.99695729e-04 )) +( log(T_fuel_21[1/K]) *( 6.80499824e-04 )) +( log(T_fuel_22[1/K]) *( -6.60833634e-04 )) +( log(T_fuel_23[1/K]) *( 2.23526330e-04 )) +( log(T_fuel_24[1/K]) *( -6.66132657e-04 )) +( T_flibe *( 1.09422593e-05 )) ) [1/cm]');
model.component('mod1').variable('var16').set('rem8', '(8.16042951e-02 +( log(T_fuel_1[1/K]) *( -6.57404622e-04 )) +( log(T_fuel_2[1/K]) *( -1.09248398e-04 )) +( log(T_fuel_3[1/K]) *( -2.09964404e-03 )) +( log(T_fuel_4[1/K]) *( -6.96658045e-04 )) +( log(T_fuel_5[1/K]) *( -2.11619299e-04 )) +( log(T_fuel_6[1/K]) *( 1.59460011e-03 )) +( log(T_fuel_7[1/K]) *( 7.35186758e-04 )) +( log(T_fuel_8[1/K]) *( -1.77765314e-03 )) +( log(T_fuel_9[1/K]) *( -3.53059224e-04 )) +( log(T_fuel_10[1/K]) *( -4.40133740e-04 )) +( log(T_fuel_11[1/K]) *( 1.41958164e-03 )) +( log(T_fuel_12[1/K]) *( 3.98107231e-04 )) +( log(T_fuel_13[1/K]) *( -6.64655072e-04 )) +( log(T_fuel_14[1/K]) *( -4.66159892e-04 )) +( log(T_fuel_15[1/K]) *( 1.37056402e-03 )) +( log(T_fuel_16[1/K]) *( 4.64295496e-04 )) +( log(T_fuel_17[1/K]) *( 1.60989193e-03 )) +( log(T_fuel_18[1/K]) *( 4.54909852e-04 )) +( log(T_fuel_19[1/K]) *( -2.93298940e-04 )) +( log(T_fuel_20[1/K]) *( 3.83572412e-04 )) +( log(T_fuel_21[1/K]) *( 1.27730497e-03 )) +( log(T_fuel_22[1/K]) *( -1.15801042e-03 )) +( log(T_fuel_23[1/K]) *( 1.38834341e-04 )) +( log(T_fuel_24[1/K]) *( -1.16093187e-03 )) +( T_flibe *( 2.18978849e-05 )) ) [1/cm]');
model.component('mod1').variable('var16').set('scat11', '(1.45938610e-01 +( log(T_fuel_1[1/K]) *( 3.47039147e-06 )) +( log(T_fuel_2[1/K]) *( 1.06701115e-05 )) +( log(T_fuel_3[1/K]) *( -1.66435247e-05 )) +( log(T_fuel_4[1/K]) *( -1.49186585e-05 )) +( log(T_fuel_5[1/K]) *( 1.67848984e-07 )) +( log(T_fuel_6[1/K]) *( 1.28116562e-05 )) +( log(T_fuel_7[1/K]) *( 2.78035093e-06 )) +( log(T_fuel_8[1/K]) *( -2.31213421e-05 )) +( log(T_fuel_9[1/K]) *( 5.34147552e-06 )) +( log(T_fuel_10[1/K]) *( 1.77567762e-06 )) +( log(T_fuel_11[1/K]) *( 1.20146091e-05 )) +( log(T_fuel_12[1/K]) *( 2.92575319e-06 )) +( log(T_fuel_13[1/K]) *( -3.29097955e-06 )) +( log(T_fuel_14[1/K]) *( 7.35504352e-07 )) +( log(T_fuel_15[1/K]) *( 2.00800389e-05 )) +( log(T_fuel_16[1/K]) *( 4.81894280e-06 )) +( log(T_fuel_17[1/K]) *( 1.56962973e-05 )) +( log(T_fuel_18[1/K]) *( -1.18737782e-05 )) +( log(T_fuel_19[1/K]) *( 1.29837097e-05 )) +( log(T_fuel_20[1/K]) *( 1.44671903e-05 )) +( log(T_fuel_21[1/K]) *( 2.81025200e-05 )) +( log(T_fuel_22[1/K]) *( -1.47095494e-05 )) +( log(T_fuel_23[1/K]) *( 1.32568646e-05 )) +( log(T_fuel_24[1/K]) *( -1.69120775e-05 )) +( T_flibe *( -1.46652288e-05 )) ) [1/cm]');
model.component('mod1').variable('var16').set('scat21', '0[1/cm]');
model.component('mod1').variable('var16').set('scat31', '0[1/cm]');
model.component('mod1').variable('var16').set('scat41', '0[1/cm]');
model.component('mod1').variable('var16').set('scat51', '0[1/cm]');
model.component('mod1').variable('var16').set('scat61', '0[1/cm]');
model.component('mod1').variable('var16').set('scat71', '0[1/cm]');
model.component('mod1').variable('var16').set('scat81', '0[1/cm]');
model.component('mod1').variable('var16').set('scat12', '(4.27240289e-02 +( log(T_fuel_1[1/K]) *( 1.92827879e-07 )) +( log(T_fuel_2[1/K]) *( -3.10112367e-06 )) +( log(T_fuel_3[1/K]) *( 1.42541017e-07 )) +( log(T_fuel_4[1/K]) *( -1.51924065e-06 )) +( log(T_fuel_5[1/K]) *( -2.08297449e-06 )) +( log(T_fuel_6[1/K]) *( -3.53237748e-06 )) +( log(T_fuel_7[1/K]) *( 5.35665817e-06 )) +( log(T_fuel_8[1/K]) *( -2.87706315e-06 )) +( log(T_fuel_9[1/K]) *( -4.03325598e-07 )) +( log(T_fuel_10[1/K]) *( -4.16892435e-06 )) +( log(T_fuel_11[1/K]) *( -4.39468221e-08 )) +( log(T_fuel_12[1/K]) *( -3.09666804e-06 )) +( log(T_fuel_13[1/K]) *( -2.86774426e-06 )) +( log(T_fuel_14[1/K]) *( 3.18354250e-06 )) +( log(T_fuel_15[1/K]) *( -5.58912362e-06 )) +( log(T_fuel_16[1/K]) *( 4.15654920e-06 )) +( log(T_fuel_17[1/K]) *( -4.79343540e-06 )) +( log(T_fuel_18[1/K]) *( -7.19830395e-06 )) +( log(T_fuel_19[1/K]) *( -4.20592714e-06 )) +( log(T_fuel_20[1/K]) *( -2.45717513e-06 )) +( log(T_fuel_21[1/K]) *( -3.57659431e-06 )) +( log(T_fuel_22[1/K]) *( 1.45895211e-05 )) +( log(T_fuel_23[1/K]) *( 3.89793932e-06 )) +( log(T_fuel_24[1/K]) *( 8.43107653e-06 )) +( T_flibe *( -4.83240936e-06 )) ) [1/cm]');
model.component('mod1').variable('var16').set('scat22', '(3.50053710e-01 +( log(T_fuel_1[1/K]) *( -1.71377883e-06 )) +( log(T_fuel_2[1/K]) *( 1.20294292e-05 )) +( log(T_fuel_3[1/K]) *( -3.02222541e-05 )) +( log(T_fuel_4[1/K]) *( -3.29602277e-05 )) +( log(T_fuel_5[1/K]) *( -1.00061101e-05 )) +( log(T_fuel_6[1/K]) *( 2.53154013e-05 )) +( log(T_fuel_7[1/K]) *( 5.65171219e-06 )) +( log(T_fuel_8[1/K]) *( -4.06999210e-05 )) +( log(T_fuel_9[1/K]) *( 5.05242239e-06 )) +( log(T_fuel_10[1/K]) *( -6.07714862e-06 )) +( log(T_fuel_11[1/K]) *( 1.62715196e-05 )) +( log(T_fuel_12[1/K]) *( 5.35819973e-06 )) +( log(T_fuel_13[1/K]) *( -6.32375631e-07 )) +( log(T_fuel_14[1/K]) *( -1.58290890e-06 )) +( log(T_fuel_15[1/K]) *( 1.84953247e-05 )) +( log(T_fuel_16[1/K]) *( 1.81840207e-05 )) +( log(T_fuel_17[1/K]) *( 2.74379066e-05 )) +( log(T_fuel_18[1/K]) *( -3.61214509e-05 )) +( log(T_fuel_19[1/K]) *( 1.46570802e-05 )) +( log(T_fuel_20[1/K]) *( 2.76065337e-05 )) +( log(T_fuel_21[1/K]) *( 4.09593779e-05 )) +( log(T_fuel_22[1/K]) *( -1.11832299e-05 )) +( log(T_fuel_23[1/K]) *( 2.15665428e-05 )) +( log(T_fuel_24[1/K]) *( -2.72077432e-05 )) +( T_flibe *( -3.32381127e-05 )) ) [1/cm]');
model.component('mod1').variable('var16').set('scat32', '0[1/cm]');
model.component('mod1').variable('var16').set('scat42', '0[1/cm]');
model.component('mod1').variable('var16').set('scat52', '0[1/cm]');
model.component('mod1').variable('var16').set('scat62', '0[1/cm]');
model.component('mod1').variable('var16').set('scat72', '0[1/cm]');
model.component('mod1').variable('var16').set('scat82', '0[1/cm]');
model.component('mod1').variable('var16').set('scat13', '(2.60383586e-05 +( log(T_fuel_1[1/K]) *( 7.40121408e-08 )) +( log(T_fuel_2[1/K]) *( -2.62983288e-07 )) +( log(T_fuel_3[1/K]) *( 1.57353072e-07 )) +( log(T_fuel_4[1/K]) *( -2.80768776e-07 )) +( log(T_fuel_5[1/K]) *( 1.95872335e-07 )) +( log(T_fuel_6[1/K]) *( -1.36144183e-07 )) +( log(T_fuel_7[1/K]) *( -5.96264127e-08 )) +( log(T_fuel_8[1/K]) *( 1.30999975e-07 )) +( log(T_fuel_9[1/K]) *( 3.36555311e-08 )) +( log(T_fuel_10[1/K]) *( -3.80719268e-08 )) +( log(T_fuel_11[1/K]) *( 1.04713065e-07 )) +( log(T_fuel_12[1/K]) *( 1.70581155e-08 )) +( log(T_fuel_13[1/K]) *( -1.53180894e-07 )) +( log(T_fuel_14[1/K]) *( -7.51216308e-08 )) +( log(T_fuel_15[1/K]) *( 2.07156903e-07 )) +( log(T_fuel_16[1/K]) *( -1.03889620e-07 )) +( log(T_fuel_17[1/K]) *( -2.72842504e-07 )) +( log(T_fuel_18[1/K]) *( 4.49784347e-07 )) +( log(T_fuel_19[1/K]) *( 2.62528578e-07 )) +( log(T_fuel_20[1/K]) *( 2.28845962e-08 )) +( log(T_fuel_21[1/K]) *( -9.68928459e-08 )) +( log(T_fuel_22[1/K]) *( 6.55128002e-08 )) +( log(T_fuel_23[1/K]) *( -6.06838983e-08 )) +( log(T_fuel_24[1/K]) *( -1.67903118e-07 )) +( T_flibe *( -4.51873563e-09 )) ) [1/cm]');
model.component('mod1').variable('var16').set('scat23', '(1.58852708e-02 +( log(T_fuel_1[1/K]) *( -4.47826989e-07 )) +( log(T_fuel_2[1/K]) *( 9.44805346e-07 )) +( log(T_fuel_3[1/K]) *( -1.91786639e-06 )) +( log(T_fuel_4[1/K]) *( -1.99166880e-06 )) +( log(T_fuel_5[1/K]) *( -1.81118494e-06 )) +( log(T_fuel_6[1/K]) *( 3.14728232e-06 )) +( log(T_fuel_7[1/K]) *( 3.24064397e-07 )) +( log(T_fuel_8[1/K]) *( -2.62702804e-06 )) +( log(T_fuel_9[1/K]) *( 9.69145342e-08 )) +( log(T_fuel_10[1/K]) *( -4.63459226e-07 )) +( log(T_fuel_11[1/K]) *( 2.85589281e-07 )) +( log(T_fuel_12[1/K]) *( -1.58503158e-07 )) +( log(T_fuel_13[1/K]) *( -8.49734434e-07 )) +( log(T_fuel_14[1/K]) *( 7.84262801e-07 )) +( log(T_fuel_15[1/K]) *( 1.29742679e-06 )) +( log(T_fuel_16[1/K]) *( 1.05842396e-06 )) +( log(T_fuel_17[1/K]) *( 1.52059535e-06 )) +( log(T_fuel_18[1/K]) *( -3.44725184e-06 )) +( log(T_fuel_19[1/K]) *( 4.67466544e-07 )) +( log(T_fuel_20[1/K]) *( 1.41148159e-06 )) +( log(T_fuel_21[1/K]) *( 4.20116212e-06 )) +( log(T_fuel_22[1/K]) *( -1.52358462e-06 )) +( log(T_fuel_23[1/K]) *( 5.25663246e-07 )) +( log(T_fuel_24[1/K]) *( -2.60065573e-06 )) +( T_flibe *( -1.65286609e-06 )) ) [1/cm]');
model.component('mod1').variable('var16').set('scat33', '(3.59438582e-01 +( log(T_fuel_1[1/K]) *( 1.02550840e-05 )) +( log(T_fuel_2[1/K]) *( 8.92943240e-06 )) +( log(T_fuel_3[1/K]) *( -6.52906722e-06 )) +( log(T_fuel_4[1/K]) *( -1.98198286e-05 )) +( log(T_fuel_5[1/K]) *( 9.11156438e-06 )) +( log(T_fuel_6[1/K]) *( 2.27854460e-05 )) +( log(T_fuel_7[1/K]) *( 1.32724035e-05 )) +( log(T_fuel_8[1/K]) *( -1.25089084e-05 )) +( log(T_fuel_9[1/K]) *( 2.89952139e-06 )) +( log(T_fuel_10[1/K]) *( 6.26289572e-06 )) +( log(T_fuel_11[1/K]) *( 1.17349134e-05 )) +( log(T_fuel_12[1/K]) *( 5.08873245e-06 )) +( log(T_fuel_13[1/K]) *( 8.60274255e-07 )) +( log(T_fuel_14[1/K]) *( 1.67341625e-05 )) +( log(T_fuel_15[1/K]) *( 1.87550466e-05 )) +( log(T_fuel_16[1/K]) *( 9.22285117e-06 )) +( log(T_fuel_17[1/K]) *( 2.54197106e-05 )) +( log(T_fuel_18[1/K]) *( -1.39967594e-05 )) +( log(T_fuel_19[1/K]) *( 2.08950226e-05 )) +( log(T_fuel_20[1/K]) *( 2.81966658e-05 )) +( log(T_fuel_21[1/K]) *( 3.56403806e-05 )) +( log(T_fuel_22[1/K]) *( 5.62812875e-06 )) +( log(T_fuel_23[1/K]) *( 2.15041572e-05 )) +( log(T_fuel_24[1/K]) *( -1.44573929e-05 )) +( T_flibe *( -2.66764189e-05 )) ) [1/cm]');
model.component('mod1').variable('var16').set('scat43', '0[1/cm]');
model.component('mod1').variable('var16').set('scat53', '0[1/cm]');
model.component('mod1').variable('var16').set('scat63', '0[1/cm]');
model.component('mod1').variable('var16').set('scat73', '0[1/cm]');
model.component('mod1').variable('var16').set('scat83', '0[1/cm]');
model.component('mod1').variable('var16').set('scat14', '(-4.67402192e-08 +( log(T_fuel_1[1/K]) *( 3.00714413e-09 )) +( log(T_fuel_2[1/K]) *( -1.06251431e-09 )) +( log(T_fuel_3[1/K]) *( 2.63414987e-09 )) +( log(T_fuel_4[1/K]) *( 9.59974964e-11 )) +( log(T_fuel_5[1/K]) *( 2.76976003e-09 )) +( log(T_fuel_6[1/K]) *( -6.79760272e-10 )) +( log(T_fuel_7[1/K]) *( 1.93508245e-10 )) +( log(T_fuel_8[1/K]) *( 1.82362657e-11 )) +( log(T_fuel_9[1/K]) *( 1.22160246e-10 )) +( log(T_fuel_10[1/K]) *( -3.21487570e-09 )) +( log(T_fuel_11[1/K]) *( 9.76812366e-10 )) +( log(T_fuel_12[1/K]) *( -1.04411617e-11 )) +( log(T_fuel_13[1/K]) *( 1.55764512e-10 )) +( log(T_fuel_14[1/K]) *( 1.41278187e-09 )) +( log(T_fuel_15[1/K]) *( -1.03690137e-09 )) +( log(T_fuel_16[1/K]) *( -5.31368821e-10 )) +( log(T_fuel_17[1/K]) *( -3.58742075e-10 )) +( log(T_fuel_18[1/K]) *( 3.72460726e-09 )) +( log(T_fuel_19[1/K]) *( -8.54004694e-10 )) +( log(T_fuel_20[1/K]) *( -8.86047353e-10 )) +( log(T_fuel_21[1/K]) *( 1.16756436e-09 )) +( log(T_fuel_22[1/K]) *( -2.34728465e-09 )) +( log(T_fuel_23[1/K]) *( 2.18463808e-09 )) +( log(T_fuel_24[1/K]) *( -2.95696169e-10 )) +( T_flibe *( 6.01322824e-13 )) ) [1/cm]');
model.component('mod1').variable('var16').set('scat24', '(2.78180352e-08 +( log(T_fuel_1[1/K]) *( 1.59473323e-09 )) +( log(T_fuel_2[1/K]) *( 1.14427712e-09 )) +( log(T_fuel_3[1/K]) *( 4.27832505e-10 )) +( log(T_fuel_4[1/K]) *( 4.08179750e-10 )) +( log(T_fuel_5[1/K]) *( 2.59608255e-09 )) +( log(T_fuel_6[1/K]) *( 2.21204926e-09 )) +( log(T_fuel_7[1/K]) *( 6.95870005e-10 )) +( log(T_fuel_8[1/K]) *( -2.27132636e-10 )) +( log(T_fuel_9[1/K]) *( 2.27718412e-09 )) +( log(T_fuel_10[1/K]) *( -4.31536687e-10 )) +( log(T_fuel_11[1/K]) *( -3.17992478e-09 )) +( log(T_fuel_12[1/K]) *( -7.81181235e-11 )) +( log(T_fuel_13[1/K]) *( -3.15119482e-09 )) +( log(T_fuel_14[1/K]) *( -7.31217534e-10 )) +( log(T_fuel_15[1/K]) *( -3.05182325e-10 )) +( log(T_fuel_16[1/K]) *( -2.73878710e-09 )) +( log(T_fuel_17[1/K]) *( 4.22037480e-10 )) +( log(T_fuel_18[1/K]) *( 8.26384522e-10 )) +( log(T_fuel_19[1/K]) *( -1.41387043e-09 )) +( log(T_fuel_20[1/K]) *( -3.87197436e-09 )) +( log(T_fuel_21[1/K]) *( -1.30947938e-09 )) +( log(T_fuel_22[1/K]) *( 4.27746634e-11 )) +( log(T_fuel_23[1/K]) *( 1.33296927e-10 )) +( log(T_fuel_24[1/K]) *( 2.08223173e-09 )) +( T_flibe *( -1.76408012e-12 )) ) [1/cm]');
model.component('mod1').variable('var16').set('scat34', '(8.31713026e-03 +( log(T_fuel_1[1/K]) *( -3.35088883e-06 )) +( log(T_fuel_2[1/K]) *( -2.47626921e-06 )) +( log(T_fuel_3[1/K]) *( -1.96473658e-06 )) +( log(T_fuel_4[1/K]) *( -3.78102380e-06 )) +( log(T_fuel_5[1/K]) *( -1.59228332e-06 )) +( log(T_fuel_6[1/K]) *( -1.44000197e-06 )) +( log(T_fuel_7[1/K]) *( -2.16762085e-06 )) +( log(T_fuel_8[1/K]) *( -2.57270128e-06 )) +( log(T_fuel_9[1/K]) *( -1.48135446e-06 )) +( log(T_fuel_10[1/K]) *( -3.06220940e-06 )) +( log(T_fuel_11[1/K]) *( -2.20667142e-06 )) +( log(T_fuel_12[1/K]) *( -2.24503807e-06 )) +( log(T_fuel_13[1/K]) *( -1.74941685e-06 )) +( log(T_fuel_14[1/K]) *( -2.47534677e-06 )) +( log(T_fuel_15[1/K]) *( -2.02302014e-06 )) +( log(T_fuel_16[1/K]) *( -1.43100110e-06 )) +( log(T_fuel_17[1/K]) *( -9.98263892e-07 )) +( log(T_fuel_18[1/K]) *( -2.67035848e-06 )) +( log(T_fuel_19[1/K]) *( -1.73923816e-06 )) +( log(T_fuel_20[1/K]) *( -1.08325856e-06 )) +( log(T_fuel_21[1/K]) *( -1.78250712e-06 )) +( log(T_fuel_22[1/K]) *( -2.02773356e-06 )) +( log(T_fuel_23[1/K]) *( -1.43619876e-06 )) +( log(T_fuel_24[1/K]) *( -1.64338500e-06 )) +( T_flibe *( -6.27351430e-07 )) ) [1/cm]');
model.component('mod1').variable('var16').set('scat44', '(3.44301709e-01 +( log(T_fuel_1[1/K]) *( 3.43069635e-05 )) +( log(T_fuel_2[1/K]) *( 2.93327131e-05 )) +( log(T_fuel_3[1/K]) *( 1.72235828e-05 )) +( log(T_fuel_4[1/K]) *( 9.53610236e-07 )) +( log(T_fuel_5[1/K]) *( 4.81897645e-05 )) +( log(T_fuel_6[1/K]) *( 4.06102097e-05 )) +( log(T_fuel_7[1/K]) *( 5.08219128e-05 )) +( log(T_fuel_8[1/K]) *( 6.74614353e-06 )) +( log(T_fuel_9[1/K]) *( 2.89788623e-05 )) +( log(T_fuel_10[1/K]) *( 3.60399583e-05 )) +( log(T_fuel_11[1/K]) *( 3.85717901e-05 )) +( log(T_fuel_12[1/K]) *( 3.80920500e-05 )) +( log(T_fuel_13[1/K]) *( 2.12617326e-05 )) +( log(T_fuel_14[1/K]) *( 4.35224299e-05 )) +( log(T_fuel_15[1/K]) *( 4.51066378e-05 )) +( log(T_fuel_16[1/K]) *( 2.61932326e-05 )) +( log(T_fuel_17[1/K]) *( 5.13025284e-05 )) +( log(T_fuel_18[1/K]) *( 2.56265805e-05 )) +( log(T_fuel_19[1/K]) *( 4.58462868e-05 )) +( log(T_fuel_20[1/K]) *( 5.77453046e-05 )) +( log(T_fuel_21[1/K]) *( 5.78220115e-05 )) +( log(T_fuel_22[1/K]) *( 3.39767200e-05 )) +( log(T_fuel_23[1/K]) *( 4.89419955e-05 )) +( log(T_fuel_24[1/K]) *( 1.75904693e-05 )) +( T_flibe *( -2.54907736e-05 )) ) [1/cm]');
model.component('mod1').variable('var16').set('scat54', '(1.91654685e-04 +( log(T_fuel_1[1/K]) *( -2.38978311e-06 )) +( log(T_fuel_2[1/K]) *( -5.81815220e-06 )) +( log(T_fuel_3[1/K]) *( -3.98473782e-06 )) +( log(T_fuel_4[1/K]) *( -3.62074850e-06 )) +( log(T_fuel_5[1/K]) *( 3.74275645e-06 )) +( log(T_fuel_6[1/K]) *( 3.52069060e-06 )) +( log(T_fuel_7[1/K]) *( 5.19664308e-06 )) +( log(T_fuel_8[1/K]) *( -6.69733015e-06 )) +( log(T_fuel_9[1/K]) *( -5.01241953e-06 )) +( log(T_fuel_10[1/K]) *( 1.59301759e-06 )) +( log(T_fuel_11[1/K]) *( 7.09350764e-07 )) +( log(T_fuel_12[1/K]) *( 2.19565859e-07 )) +( log(T_fuel_13[1/K]) *( -3.16111864e-06 )) +( log(T_fuel_14[1/K]) *( -1.57965912e-06 )) +( log(T_fuel_15[1/K]) *( -1.13863852e-06 )) +( log(T_fuel_16[1/K]) *( 7.23089379e-07 )) +( log(T_fuel_17[1/K]) *( 4.49699682e-06 )) +( log(T_fuel_18[1/K]) *( 5.97558644e-06 )) +( log(T_fuel_19[1/K]) *( -5.11074347e-07 )) +( log(T_fuel_20[1/K]) *( -1.49973066e-06 )) +( log(T_fuel_21[1/K]) *( 8.69887515e-07 )) +( log(T_fuel_22[1/K]) *( -3.72277758e-06 )) +( log(T_fuel_23[1/K]) *( 2.02277912e-06 )) +( log(T_fuel_24[1/K]) *( -1.15516661e-06 )) +( T_flibe *( 1.11422225e-07 )) ) [1/cm]');
model.component('mod1').variable('var16').set('scat64', '0[1/cm]');
model.component('mod1').variable('var16').set('scat74', '0[1/cm]');
model.component('mod1').variable('var16').set('scat84', '0[1/cm]');
model.component('mod1').variable('var16').set('scat15', '(1.06787648e-08 +( log(T_fuel_1[1/K]) *( -5.62086391e-11 )) +( log(T_fuel_2[1/K]) *( -1.52501188e-10 )) +( log(T_fuel_3[1/K]) *( 2.96003600e-10 )) +( log(T_fuel_4[1/K]) *( -5.75697135e-10 )) +( log(T_fuel_5[1/K]) *( 5.16634811e-10 )) +( log(T_fuel_6[1/K]) *( -2.66247007e-10 )) +( log(T_fuel_7[1/K]) *( -8.17517188e-11 )) +( log(T_fuel_8[1/K]) *( 1.51520370e-10 )) +( log(T_fuel_9[1/K]) *( 3.50277464e-10 )) +( log(T_fuel_10[1/K]) *( -3.70930472e-10 )) +( log(T_fuel_11[1/K]) *( -3.55843621e-10 )) +( log(T_fuel_12[1/K]) *( -5.41273690e-11 )) +( log(T_fuel_13[1/K]) *( -2.82819258e-10 )) +( log(T_fuel_14[1/K]) *( -2.43374474e-10 )) +( log(T_fuel_15[1/K]) *( -1.95821328e-11 )) +( log(T_fuel_16[1/K]) *( 7.85740573e-11 )) +( log(T_fuel_17[1/K]) *( -1.32588301e-10 )) +( log(T_fuel_18[1/K]) *( -2.49062532e-11 )) +( log(T_fuel_19[1/K]) *( 4.90487678e-11 )) +( log(T_fuel_20[1/K]) *( 2.46945995e-10 )) +( log(T_fuel_21[1/K]) *( -4.77531319e-10 )) +( log(T_fuel_22[1/K]) *( -2.98780818e-10 )) +( log(T_fuel_23[1/K]) *( -3.34775271e-10 )) +( log(T_fuel_24[1/K]) *( 4.92562305e-10 )) +( T_flibe *( -1.43777889e-13 )) ) [1/cm]');
model.component('mod1').variable('var16').set('scat25', '(-1.05518747e-08 +( log(T_fuel_1[1/K]) *( 3.82617159e-10 )) +( log(T_fuel_2[1/K]) *( 3.03151840e-11 )) +( log(T_fuel_3[1/K]) *( -2.36163406e-10 )) +( log(T_fuel_4[1/K]) *( 2.62021716e-10 )) +( log(T_fuel_5[1/K]) *( -7.13171834e-11 )) +( log(T_fuel_6[1/K]) *( 5.67987097e-10 )) +( log(T_fuel_7[1/K]) *( 1.18113437e-10 )) +( log(T_fuel_8[1/K]) *( 2.91410070e-10 )) +( log(T_fuel_9[1/K]) *( -4.34776352e-10 )) +( log(T_fuel_10[1/K]) *( 4.81948169e-10 )) +( log(T_fuel_11[1/K]) *( 5.50002204e-11 )) +( log(T_fuel_12[1/K]) *( -4.30326121e-10 )) +( log(T_fuel_13[1/K]) *( 5.34990331e-10 )) +( log(T_fuel_14[1/K]) *( 4.40667900e-10 )) +( log(T_fuel_15[1/K]) *( -4.25029775e-10 )) +( log(T_fuel_16[1/K]) *( -1.01303250e-11 )) +( log(T_fuel_17[1/K]) *( 1.22329226e-10 )) +( log(T_fuel_18[1/K]) *( -1.07783178e-11 )) +( log(T_fuel_19[1/K]) *( -1.20749242e-10 )) +( log(T_fuel_20[1/K]) *( -4.00377723e-10 )) +( log(T_fuel_21[1/K]) *( -5.58981570e-11 )) +( log(T_fuel_22[1/K]) *( 2.57795706e-10 )) +( log(T_fuel_23[1/K]) *( -4.95774507e-11 )) +( log(T_fuel_24[1/K]) *( 2.21165973e-10 )) +( T_flibe *( 5.52068361e-13 )) ) [1/cm]');
model.component('mod1').variable('var16').set('scat35', '0[1/cm]');
model.component('mod1').variable('var16').set('scat45', '(2.12805752e-02 +( log(T_fuel_1[1/K]) *( -1.29038820e-05 )) +( log(T_fuel_2[1/K]) *( -1.83778861e-05 )) +( log(T_fuel_3[1/K]) *( -1.51048796e-05 )) +( log(T_fuel_4[1/K]) *( -1.45159889e-05 )) +( log(T_fuel_5[1/K]) *( -1.54073265e-05 )) +( log(T_fuel_6[1/K]) *( -1.34118522e-05 )) +( log(T_fuel_7[1/K]) *( -1.11800704e-05 )) +( log(T_fuel_8[1/K]) *( -1.46792300e-05 )) +( log(T_fuel_9[1/K]) *( -1.95883761e-05 )) +( log(T_fuel_10[1/K]) *( -1.33019174e-05 )) +( log(T_fuel_11[1/K]) *( -1.31427640e-05 )) +( log(T_fuel_12[1/K]) *( -1.73641262e-05 )) +( log(T_fuel_13[1/K]) *( -1.21063763e-05 )) +( log(T_fuel_14[1/K]) *( -1.21159134e-05 )) +( log(T_fuel_15[1/K]) *( -1.86420482e-05 )) +( log(T_fuel_16[1/K]) *( -1.27878394e-05 )) +( log(T_fuel_17[1/K]) *( -1.27206772e-05 )) +( log(T_fuel_18[1/K]) *( -1.77269194e-05 )) +( log(T_fuel_19[1/K]) *( -1.15590475e-05 )) +( log(T_fuel_20[1/K]) *( -1.81627774e-05 )) +( log(T_fuel_21[1/K]) *( -1.37897339e-05 )) +( log(T_fuel_22[1/K]) *( -1.42384293e-05 )) +( log(T_fuel_23[1/K]) *( -1.16821229e-05 )) +( log(T_fuel_24[1/K]) *( -1.44183052e-05 )) +( T_flibe *( -1.46483592e-06 )) ) [1/cm]');
model.component('mod1').variable('var16').set('scat55', '(3.38986284e-01 +( log(T_fuel_1[1/K]) *( 7.22892848e-05 )) +( log(T_fuel_2[1/K]) *( 3.25601854e-04 )) +( log(T_fuel_3[1/K]) *( 2.39005296e-04 )) +( log(T_fuel_4[1/K]) *( 1.39282323e-04 )) +( log(T_fuel_5[1/K]) *( -1.94662986e-04 )) +( log(T_fuel_6[1/K]) *( -2.79912098e-04 )) +( log(T_fuel_7[1/K]) *( -2.96810345e-04 )) +( log(T_fuel_8[1/K]) *( 2.37749305e-04 )) +( log(T_fuel_9[1/K]) *( 2.49162411e-04 )) +( log(T_fuel_10[1/K]) *( 9.12338759e-06 )) +( log(T_fuel_11[1/K]) *( -2.08126439e-04 )) +( log(T_fuel_12[1/K]) *( -1.23201739e-05 )) +( log(T_fuel_13[1/K]) *( 1.32889574e-04 )) +( log(T_fuel_14[1/K]) *( 1.27408241e-05 )) +( log(T_fuel_15[1/K]) *( -6.13628273e-05 )) +( log(T_fuel_16[1/K]) *( 2.28312042e-05 )) +( log(T_fuel_17[1/K]) *( -2.18166581e-04 )) +( log(T_fuel_18[1/K]) *( -2.71634112e-04 )) +( log(T_fuel_19[1/K]) *( -2.94572086e-06 )) +( log(T_fuel_20[1/K]) *( 1.74737720e-06 )) +( log(T_fuel_21[1/K]) *( -9.14850647e-05 )) +( log(T_fuel_22[1/K]) *( 1.80287025e-04 )) +( log(T_fuel_23[1/K]) *( -1.15464719e-04 )) +( log(T_fuel_24[1/K]) *( 1.24774814e-04 )) +( T_flibe *( -3.09127627e-05 )) ) [1/cm]');
model.component('mod1').variable('var16').set('scat65', '(6.10927208e-03 +( log(T_fuel_1[1/K]) *( -6.16268403e-05 )) +( log(T_fuel_2[1/K]) *( -3.56221720e-04 )) +( log(T_fuel_3[1/K]) *( -2.04986843e-04 )) +( log(T_fuel_4[1/K]) *( -1.58657889e-04 )) +( log(T_fuel_5[1/K]) *( 2.12178657e-04 )) +( log(T_fuel_6[1/K]) *( 2.69952399e-04 )) +( log(T_fuel_7[1/K]) *( 2.96980695e-04 )) +( log(T_fuel_8[1/K]) *( -2.26947175e-04 )) +( log(T_fuel_9[1/K]) *( -2.65403508e-04 )) +( log(T_fuel_10[1/K]) *( 9.57188590e-07 )) +( log(T_fuel_11[1/K]) *( 1.84787621e-04 )) +( log(T_fuel_12[1/K]) *( -3.78959623e-06 )) +( log(T_fuel_13[1/K]) *( -1.40928687e-04 )) +( log(T_fuel_14[1/K]) *( 1.02034923e-05 )) +( log(T_fuel_15[1/K]) *( 4.26845167e-05 )) +( log(T_fuel_16[1/K]) *( -3.96105168e-05 )) +( log(T_fuel_17[1/K]) *( 1.96184242e-04 )) +( log(T_fuel_18[1/K]) *( 2.47215484e-04 )) +( log(T_fuel_19[1/K]) *( 3.05469911e-05 )) +( log(T_fuel_20[1/K]) *( 9.70443632e-06 )) +( log(T_fuel_21[1/K]) *( 9.07834821e-05 )) +( log(T_fuel_22[1/K]) *( -1.67742757e-04 )) +( log(T_fuel_23[1/K]) *( 1.41942434e-04 )) +( log(T_fuel_24[1/K]) *( -1.24903395e-04 )) +( T_flibe *( 5.10939155e-06 )) ) [1/cm]');
model.component('mod1').variable('var16').set('scat75', '(4.52825857e-05 +( log(T_fuel_1[1/K]) *( 1.66502566e-06 )) +( log(T_fuel_2[1/K]) *( -1.92823045e-05 )) +( log(T_fuel_3[1/K]) *( 3.89202971e-06 )) +( log(T_fuel_4[1/K]) *( -3.08711439e-06 )) +( log(T_fuel_5[1/K]) *( 1.20859165e-05 )) +( log(T_fuel_6[1/K]) *( 4.55006160e-06 )) +( log(T_fuel_7[1/K]) *( 1.16100338e-05 )) +( log(T_fuel_8[1/K]) *( -1.04119504e-06 )) +( log(T_fuel_9[1/K]) *( -1.54838922e-05 )) +( log(T_fuel_10[1/K]) *( 3.53354621e-06 )) +( log(T_fuel_11[1/K]) *( 2.56092790e-06 )) +( log(T_fuel_12[1/K]) *( -3.96947759e-06 )) +( log(T_fuel_13[1/K]) *( -2.30747156e-06 )) +( log(T_fuel_14[1/K]) *( 5.45452622e-06 )) +( log(T_fuel_15[1/K]) *( -1.14580765e-05 )) +( log(T_fuel_16[1/K]) *( -4.81287191e-06 )) +( log(T_fuel_17[1/K]) *( -7.12186022e-07 )) +( log(T_fuel_18[1/K]) *( 8.16274348e-06 )) +( log(T_fuel_19[1/K]) *( 3.27023107e-06 )) +( log(T_fuel_20[1/K]) *( -2.82916141e-06 )) +( log(T_fuel_21[1/K]) *( -6.55211404e-06 )) +( log(T_fuel_22[1/K]) *( -1.30193518e-06 )) +( log(T_fuel_23[1/K]) *( 7.53829647e-06 )) +( log(T_fuel_24[1/K]) *( 3.17999776e-06 )) +( T_flibe *( 8.68822637e-08 )) ) [1/cm]');
model.component('mod1').variable('var16').set('scat85', '(4.24493138e-06 +( log(T_fuel_1[1/K]) *( 6.36579472e-08 )) +( log(T_fuel_2[1/K]) *( -8.68122842e-07 )) +( log(T_fuel_3[1/K]) *( 7.45028975e-07 )) +( log(T_fuel_4[1/K]) *( 1.32078134e-07 )) +( log(T_fuel_5[1/K]) *( 6.19174673e-07 )) +( log(T_fuel_6[1/K]) *( -2.65804978e-07 )) +( log(T_fuel_7[1/K]) *( 2.66260932e-07 )) +( log(T_fuel_8[1/K]) *( 3.44209114e-07 )) +( log(T_fuel_9[1/K]) *( -8.74946540e-07 )) +( log(T_fuel_10[1/K]) *( 3.51651088e-07 )) +( log(T_fuel_11[1/K]) *( -1.41496963e-07 )) +( log(T_fuel_12[1/K]) *( -4.27469784e-07 )) +( log(T_fuel_13[1/K]) *( 1.69604470e-07 )) +( log(T_fuel_14[1/K]) *( 2.61641249e-07 )) +( log(T_fuel_15[1/K]) *( -1.04654796e-06 )) +( log(T_fuel_16[1/K]) *( -2.88333201e-07 )) +( log(T_fuel_17[1/K]) *( -5.17814579e-07 )) +( log(T_fuel_18[1/K]) *( 1.31882143e-07 )) +( log(T_fuel_19[1/K]) *( 2.51197977e-07 )) +( log(T_fuel_20[1/K]) *( -2.66541189e-07 )) +( log(T_fuel_21[1/K]) *( -6.73060670e-07 )) +( log(T_fuel_22[1/K]) *( 2.35898685e-07 )) +( log(T_fuel_23[1/K]) *( 3.68877838e-07 )) +( log(T_fuel_24[1/K]) *( 3.92673457e-07 )) +( T_flibe *( 3.71378778e-09 )) ) [1/cm]');
model.component('mod1').variable('var16').set('scat16', '0[1/cm]');
model.component('mod1').variable('var16').set('scat26', '(5.73287227e-10 +( log(T_fuel_1[1/K]) *( 5.72979915e-11 )) +( log(T_fuel_2[1/K]) *( -2.27630018e-11 )) +( log(T_fuel_3[1/K]) *( 1.18077268e-11 )) +( log(T_fuel_4[1/K]) *( 3.05410340e-11 )) +( log(T_fuel_5[1/K]) *( -8.66230038e-12 )) +( log(T_fuel_6[1/K]) *( 4.77952604e-11 )) +( log(T_fuel_7[1/K]) *( 5.33083729e-11 )) +( log(T_fuel_8[1/K]) *( -2.27892469e-11 )) +( log(T_fuel_9[1/K]) *( -2.69972723e-11 )) +( log(T_fuel_10[1/K]) *( -3.60864742e-11 )) +( log(T_fuel_11[1/K]) *( -6.31080372e-11 )) +( log(T_fuel_12[1/K]) *( -6.85181130e-12 )) +( log(T_fuel_13[1/K]) *( 6.91261822e-11 )) +( log(T_fuel_14[1/K]) *( 5.18588053e-11 )) +( log(T_fuel_15[1/K]) *( -1.41893458e-10 )) +( log(T_fuel_16[1/K]) *( 7.49257202e-11 )) +( log(T_fuel_17[1/K]) *( 6.44292973e-11 )) +( log(T_fuel_18[1/K]) *( 3.02772203e-11 )) +( log(T_fuel_19[1/K]) *( -8.33639588e-11 )) +( log(T_fuel_20[1/K]) *( 7.06624806e-12 )) +( log(T_fuel_21[1/K]) *( -3.23121481e-11 )) +( log(T_fuel_22[1/K]) *( -4.65626257e-11 )) +( log(T_fuel_23[1/K]) *( -3.36371410e-11 )) +( log(T_fuel_24[1/K]) *( -5.82036985e-11 )) +( T_flibe *( 1.03800424e-14 )) ) [1/cm]');
model.component('mod1').variable('var16').set('scat36', '0[1/cm]');
model.component('mod1').variable('var16').set('scat46', '0[1/cm]');
model.component('mod1').variable('var16').set('scat56', '(2.71359140e-02 +( log(T_fuel_1[1/K]) *( -7.68888408e-05 )) +( log(T_fuel_2[1/K]) *( -3.10386169e-04 )) +( log(T_fuel_3[1/K]) *( -2.72643450e-04 )) +( log(T_fuel_4[1/K]) *( -1.68560197e-04 )) +( log(T_fuel_5[1/K]) *( 1.82048874e-04 )) +( log(T_fuel_6[1/K]) *( 3.05165912e-04 )) +( log(T_fuel_7[1/K]) *( 2.99588944e-04 )) +( log(T_fuel_8[1/K]) *( -2.73747324e-04 )) +( log(T_fuel_9[1/K]) *( -2.40294180e-04 )) +( log(T_fuel_10[1/K]) *( -1.48385620e-05 )) +( log(T_fuel_11[1/K]) *( 2.23785377e-04 )) +( log(T_fuel_12[1/K]) *( 2.07672664e-05 )) +( log(T_fuel_13[1/K]) *( -1.48609589e-04 )) +( log(T_fuel_14[1/K]) *( -1.18344883e-05 )) +( log(T_fuel_15[1/K]) *( 1.01301163e-04 )) +( log(T_fuel_16[1/K]) *( -1.54104745e-05 )) +( log(T_fuel_17[1/K]) *( 2.48065212e-04 )) +( log(T_fuel_18[1/K]) *( 2.45511941e-04 )) +( log(T_fuel_19[1/K]) *( 1.67672511e-05 )) +( log(T_fuel_20[1/K]) *( 2.76394727e-05 )) +( log(T_fuel_21[1/K]) *( 1.37097228e-04 )) +( log(T_fuel_22[1/K]) *( -1.93688325e-04 )) +( log(T_fuel_23[1/K]) *( 1.25225438e-04 )) +( log(T_fuel_24[1/K]) *( -1.56798971e-04 )) +( T_flibe *( 3.82455121e-06 )) ) [1/cm]');
model.component('mod1').variable('var16').set('scat66', '(2.98366441e-01 +( log(T_fuel_1[1/K]) *( 4.08075040e-05 )) +( log(T_fuel_2[1/K]) *( 2.51551955e-04 )) +( log(T_fuel_3[1/K]) *( 9.62919190e-05 )) +( log(T_fuel_4[1/K]) *( 4.44400267e-05 )) +( log(T_fuel_5[1/K]) *( -1.43063607e-04 )) +( log(T_fuel_6[1/K]) *( -1.61659848e-04 )) +( log(T_fuel_7[1/K]) *( -1.48048904e-04 )) +( log(T_fuel_8[1/K]) *( 1.09032843e-04 )) +( log(T_fuel_9[1/K]) *( 1.89890399e-04 )) +( log(T_fuel_10[1/K]) *( -2.56447014e-05 )) +( log(T_fuel_11[1/K]) *( -9.71693381e-05 )) +( log(T_fuel_12[1/K]) *( 1.27039167e-05 )) +( log(T_fuel_13[1/K]) *( 5.80570283e-05 )) +( log(T_fuel_14[1/K]) *( 1.69994839e-05 )) +( log(T_fuel_15[1/K]) *( -5.27422413e-06 )) +( log(T_fuel_16[1/K]) *( 2.53460585e-05 )) +( log(T_fuel_17[1/K]) *( -9.43657214e-05 )) +( log(T_fuel_18[1/K]) *( -1.71717926e-04 )) +( log(T_fuel_19[1/K]) *( -1.29972617e-05 )) +( log(T_fuel_20[1/K]) *( 8.13413906e-06 )) +( log(T_fuel_21[1/K]) *( -1.49283784e-05 )) +( log(T_fuel_22[1/K]) *( 1.06694090e-04 )) +( log(T_fuel_23[1/K]) *( -9.81653082e-05 )) +( log(T_fuel_24[1/K]) *( 5.54280626e-05 )) +( T_flibe *( -2.26831184e-05 )) ) [1/cm]');
model.component('mod1').variable('var16').set('scat76', '(2.73215713e-02 +( log(T_fuel_1[1/K]) *( -3.72105662e-04 )) +( log(T_fuel_2[1/K]) *( -3.50549813e-04 )) +( log(T_fuel_3[1/K]) *( -1.15365494e-03 )) +( log(T_fuel_4[1/K]) *( -4.38566017e-04 )) +( log(T_fuel_5[1/K]) *( 8.11357014e-05 )) +( log(T_fuel_6[1/K]) *( 9.27520522e-04 )) +( log(T_fuel_7[1/K]) *( 5.59708923e-04 )) +( log(T_fuel_8[1/K]) *( -1.00140251e-03 )) +( log(T_fuel_9[1/K]) *( -3.78305120e-04 )) +( log(T_fuel_10[1/K]) *( -1.88445096e-04 )) +( log(T_fuel_11[1/K]) *( 7.94065585e-04 )) +( log(T_fuel_12[1/K]) *( 1.77049432e-04 )) +( log(T_fuel_13[1/K]) *( -4.05453657e-04 )) +( log(T_fuel_14[1/K]) *( -2.23231057e-04 )) +( log(T_fuel_15[1/K]) *( 6.80966967e-04 )) +( log(T_fuel_16[1/K]) *( 1.86494652e-04 )) +( log(T_fuel_17[1/K]) *( 9.08406112e-04 )) +( log(T_fuel_18[1/K]) *( 4.29849794e-04 )) +( log(T_fuel_19[1/K]) *( -1.24685189e-04 )) +( log(T_fuel_20[1/K]) *( 2.01058554e-04 )) +( log(T_fuel_21[1/K]) *( 6.68013322e-04 )) +( log(T_fuel_22[1/K]) *( -6.46582054e-04 )) +( log(T_fuel_23[1/K]) *( 1.63997331e-04 )) +( log(T_fuel_24[1/K]) *( -6.51151554e-04 )) +( T_flibe *( 1.48788331e-05 )) ) [1/cm]');
model.component('mod1').variable('var16').set('scat86', '(3.48611798e-03 +( log(T_fuel_1[1/K]) *( -1.67989757e-05 )) +( log(T_fuel_2[1/K]) *( -4.04986549e-04 )) +( log(T_fuel_3[1/K]) *( -1.84944532e-05 )) +( log(T_fuel_4[1/K]) *( -1.12698209e-04 )) +( log(T_fuel_5[1/K]) *( 2.42634361e-04 )) +( log(T_fuel_6[1/K]) *( 1.38452332e-04 )) +( log(T_fuel_7[1/K]) *( 2.74620968e-04 )) +( log(T_fuel_8[1/K]) *( -8.58252346e-05 )) +( log(T_fuel_9[1/K]) *( -3.02699901e-04 )) +( log(T_fuel_10[1/K]) *( 4.68566976e-05 )) +( log(T_fuel_11[1/K]) *( 7.83841346e-05 )) +( log(T_fuel_12[1/K]) *( -5.60777170e-05 )) +( log(T_fuel_13[1/K]) *( -7.39772053e-05 )) +( log(T_fuel_14[1/K]) *( 6.49909166e-05 )) +( log(T_fuel_15[1/K]) *( -1.32924771e-04 )) +( log(T_fuel_16[1/K]) *( -7.79328866e-05 )) +( log(T_fuel_17[1/K]) *( 5.83308120e-05 )) +( log(T_fuel_18[1/K]) *( 2.26963873e-04 )) +( log(T_fuel_19[1/K]) *( 4.98482830e-05 )) +( log(T_fuel_20[1/K]) *( -3.95840673e-05 )) +( log(T_fuel_21[1/K]) *( -5.99537832e-05 )) +( log(T_fuel_22[1/K]) *( -4.89623769e-05 )) +( log(T_fuel_23[1/K]) *( 1.42108699e-04 )) +( log(T_fuel_24[1/K]) *( -1.51438487e-05 )) +( T_flibe *( 2.65179063e-06 )) ) [1/cm]');
model.component('mod1').variable('var16').set('scat17', '0[1/cm]');
model.component('mod1').variable('var16').set('scat27', '(-2.91904286e-09 +( log(T_fuel_1[1/K]) *( -5.36688492e-12 )) +( log(T_fuel_2[1/K]) *( 6.88320717e-11 )) +( log(T_fuel_3[1/K]) *( -4.17901328e-11 )) +( log(T_fuel_4[1/K]) *( -1.19725086e-11 )) +( log(T_fuel_5[1/K]) *( -1.37684669e-10 )) +( log(T_fuel_6[1/K]) *( 5.21271693e-11 )) +( log(T_fuel_7[1/K]) *( -7.85131127e-12 )) +( log(T_fuel_8[1/K]) *( 9.51300377e-12 )) +( log(T_fuel_9[1/K]) *( -1.39759656e-10 )) +( log(T_fuel_10[1/K]) *( 4.52203844e-11 )) +( log(T_fuel_11[1/K]) *( 2.38426280e-11 )) +( log(T_fuel_12[1/K]) *( 8.98705772e-11 )) +( log(T_fuel_13[1/K]) *( 8.20687091e-11 )) +( log(T_fuel_14[1/K]) *( 6.30543784e-11 )) +( log(T_fuel_15[1/K]) *( -4.36779593e-11 )) +( log(T_fuel_16[1/K]) *( 1.45512542e-10 )) +( log(T_fuel_17[1/K]) *( -5.01850165e-11 )) +( log(T_fuel_18[1/K]) *( -5.31357426e-12 )) +( log(T_fuel_19[1/K]) *( 7.06949192e-11 )) +( log(T_fuel_20[1/K]) *( 6.08185431e-12 )) +( log(T_fuel_21[1/K]) *( 7.27909806e-11 )) +( log(T_fuel_22[1/K]) *( 5.96647836e-11 )) +( log(T_fuel_23[1/K]) *( 7.89072139e-11 )) +( log(T_fuel_24[1/K]) *( -5.09402035e-12 )) +( T_flibe *( 9.79697823e-14 )) ) [1/cm]');
model.component('mod1').variable('var16').set('scat37', '0[1/cm]');
model.component('mod1').variable('var16').set('scat47', '0[1/cm]');
model.component('mod1').variable('var16').set('scat57', '(1.44304640e-04 +( log(T_fuel_1[1/K]) *( -1.63525109e-06 )) +( log(T_fuel_2[1/K]) *( -1.02434123e-05 )) +( log(T_fuel_3[1/K]) *( -7.02281159e-06 )) +( log(T_fuel_4[1/K]) *( -5.14995169e-06 )) +( log(T_fuel_5[1/K]) *( 6.85975612e-06 )) +( log(T_fuel_6[1/K]) *( 9.23609996e-06 )) +( log(T_fuel_7[1/K]) *( 1.16868721e-05 )) +( log(T_fuel_8[1/K]) *( -5.43266834e-06 )) +( log(T_fuel_9[1/K]) *( -9.25163101e-06 )) +( log(T_fuel_10[1/K]) *( 3.50288926e-07 )) +( log(T_fuel_11[1/K]) *( 5.44379506e-06 )) +( log(T_fuel_12[1/K]) *( -2.72730705e-07 )) +( log(T_fuel_13[1/K]) *( -5.63586424e-06 )) +( log(T_fuel_14[1/K]) *( 3.06626171e-06 )) +( log(T_fuel_15[1/K]) *( 4.99641147e-07 )) +( log(T_fuel_16[1/K]) *( -2.18816981e-07 )) +( log(T_fuel_17[1/K]) *( 6.36333434e-06 )) +( log(T_fuel_18[1/K]) *( 8.83460744e-06 )) +( log(T_fuel_19[1/K]) *( 4.01280523e-07 )) +( log(T_fuel_20[1/K]) *( -9.55930810e-07 )) +( log(T_fuel_21[1/K]) *( 3.87366413e-06 )) +( log(T_fuel_22[1/K]) *( -3.77194250e-06 )) +( log(T_fuel_23[1/K]) *( 4.89104873e-06 )) +( log(T_fuel_24[1/K]) *( -2.75365417e-06 )) +( T_flibe *( 2.15182658e-07 )) ) [1/cm]');
model.component('mod1').variable('var16').set('scat67', '(6.16842242e-02 +( log(T_fuel_1[1/K]) *( 8.15586159e-06 )) +( log(T_fuel_2[1/K]) *( 5.41833242e-05 )) +( log(T_fuel_3[1/K]) *( 4.49121944e-05 )) +( log(T_fuel_4[1/K]) *( 6.40627187e-05 )) +( log(T_fuel_5[1/K]) *( -3.57187792e-05 )) +( log(T_fuel_6[1/K]) *( -4.58229439e-05 )) +( log(T_fuel_7[1/K]) *( -9.41354410e-05 )) +( log(T_fuel_8[1/K]) *( 5.03672678e-05 )) +( log(T_fuel_9[1/K]) *( 3.14149645e-05 )) +( log(T_fuel_10[1/K]) *( 2.30130198e-05 )) +( log(T_fuel_11[1/K]) *( -3.91591893e-05 )) +( log(T_fuel_12[1/K]) *( -9.67629254e-06 )) +( log(T_fuel_13[1/K]) *( 5.14175176e-05 )) +( log(T_fuel_14[1/K]) *( -2.48665215e-05 )) +( log(T_fuel_15[1/K]) *( -1.14945147e-05 )) +( log(T_fuel_16[1/K]) *( 1.59419985e-05 )) +( log(T_fuel_17[1/K]) *( -4.72134830e-05 )) +( log(T_fuel_18[1/K]) *( -6.15232247e-05 )) +( log(T_fuel_19[1/K]) *( -3.06417926e-06 )) +( log(T_fuel_20[1/K]) *( 1.16275310e-05 )) +( log(T_fuel_21[1/K]) *( -2.41828072e-05 )) +( log(T_fuel_22[1/K]) *( 2.55524487e-05 )) +( log(T_fuel_23[1/K]) *( -7.26633719e-06 )) +( log(T_fuel_24[1/K]) *( 2.49046021e-05 )) +( T_flibe *( -9.05134776e-06 )) ) [1/cm]');
model.component('mod1').variable('var16').set('scat77', '(3.19270160e-01 +( log(T_fuel_1[1/K]) *( 3.41584514e-04 )) +( log(T_fuel_2[1/K]) *( 3.62158903e-04 )) +( log(T_fuel_3[1/K]) *( 1.03930714e-03 )) +( log(T_fuel_4[1/K]) *( 3.68275334e-04 )) +( log(T_fuel_5[1/K]) *( -9.30066428e-05 )) +( log(T_fuel_6[1/K]) *( -8.51547754e-04 )) +( log(T_fuel_7[1/K]) *( -5.24292205e-04 )) +( log(T_fuel_8[1/K]) *( 8.95942054e-04 )) +( log(T_fuel_9[1/K]) *( 3.69393057e-04 )) +( log(T_fuel_10[1/K]) *( 1.50766371e-04 )) +( log(T_fuel_11[1/K]) *( -7.37380014e-04 )) +( log(T_fuel_12[1/K]) *( -1.37651862e-04 )) +( log(T_fuel_13[1/K]) *( 3.61590257e-04 )) +( log(T_fuel_14[1/K]) *( 2.02782234e-04 )) +( log(T_fuel_15[1/K]) *( -6.13111782e-04 )) +( log(T_fuel_16[1/K]) *( -1.48038075e-04 )) +( log(T_fuel_17[1/K]) *( -8.08138001e-04 )) +( log(T_fuel_18[1/K]) *( -4.28005098e-04 )) +( log(T_fuel_19[1/K]) *( 1.10248140e-04 )) +( log(T_fuel_20[1/K]) *( -1.62637759e-04 )) +( log(T_fuel_21[1/K]) *( -6.02892883e-04 )) +( log(T_fuel_22[1/K]) *( 5.87460413e-04 )) +( log(T_fuel_23[1/K]) *( -1.69857052e-04 )) +( log(T_fuel_24[1/K]) *( 5.89822600e-04 )) +( T_flibe *( -3.58069572e-05 )) ) [1/cm]');
model.component('mod1').variable('var16').set('scat87', '(6.39163984e-02 +( log(T_fuel_1[1/K]) *( -6.45746392e-04 )) +( log(T_fuel_2[1/K]) *( 3.00774145e-04 )) +( log(T_fuel_3[1/K]) *( -2.10434333e-03 )) +( log(T_fuel_4[1/K]) *( -5.83480439e-04 )) +( log(T_fuel_5[1/K]) *( -4.54663077e-04 )) +( log(T_fuel_6[1/K]) *( 1.47794174e-03 )) +( log(T_fuel_7[1/K]) *( 4.71940752e-04 )) +( log(T_fuel_8[1/K]) *( -1.70330218e-03 )) +( log(T_fuel_9[1/K]) *( -6.60738913e-05 )) +( log(T_fuel_10[1/K]) *( -4.79986635e-04 )) +( log(T_fuel_11[1/K]) *( 1.35060431e-03 )) +( log(T_fuel_12[1/K]) *( 4.53550068e-04 )) +( log(T_fuel_13[1/K]) *( -5.96704671e-04 )) +( log(T_fuel_14[1/K]) *( -5.35377738e-04 )) +( log(T_fuel_15[1/K]) *( 1.50648327e-03 )) +( log(T_fuel_16[1/K]) *( 5.42946848e-04 )) +( log(T_fuel_17[1/K]) *( 1.56573662e-03 )) +( log(T_fuel_18[1/K]) *( 2.34444984e-04 )) +( log(T_fuel_19[1/K]) *( -3.58870047e-04 )) +( log(T_fuel_20[1/K]) *( 4.31230376e-04 )) +( log(T_fuel_21[1/K]) *( 1.34884451e-03 )) +( log(T_fuel_22[1/K]) *( -1.10995720e-03 )) +( log(T_fuel_23[1/K]) *( -8.57637028e-06 )) +( log(T_fuel_24[1/K]) *( -1.14977540e-03 )) +( T_flibe *( 1.95609772e-05 )) ) [1/cm]');
model.component('mod1').variable('var16').set('scat18', '0[1/cm]');
model.component('mod1').variable('var16').set('scat28', '0[1/cm]');
model.component('mod1').variable('var16').set('scat38', '0[1/cm]');
model.component('mod1').variable('var16').set('scat48', '0[1/cm]');
model.component('mod1').variable('var16').set('scat58', '(-1.57496008e-06 +( log(T_fuel_1[1/K]) *( 6.33830124e-08 )) +( log(T_fuel_2[1/K]) *( -2.75140085e-07 )) +( log(T_fuel_3[1/K]) *( 2.31381730e-07 )) +( log(T_fuel_4[1/K]) *( -3.01699435e-08 )) +( log(T_fuel_5[1/K]) *( 2.16256422e-07 )) +( log(T_fuel_6[1/K]) *( -1.15771838e-07 )) +( log(T_fuel_7[1/K]) *( 1.16336713e-07 )) +( log(T_fuel_8[1/K]) *( 9.35698783e-08 )) +( log(T_fuel_9[1/K]) *( -1.49226456e-07 )) +( log(T_fuel_10[1/K]) *( 6.02884780e-08 )) +( log(T_fuel_11[1/K]) *( -1.08145371e-07 )) +( log(T_fuel_12[1/K]) *( -6.22805709e-08 )) +( log(T_fuel_13[1/K]) *( -2.04378510e-08 )) +( log(T_fuel_14[1/K]) *( 9.03210408e-08 )) +( log(T_fuel_15[1/K]) *( -2.06807263e-07 )) +( log(T_fuel_16[1/K]) *( -1.15869830e-07 )) +( log(T_fuel_17[1/K]) *( -1.01456088e-07 )) +( log(T_fuel_18[1/K]) *( 1.26272729e-07 )) +( log(T_fuel_19[1/K]) *( 8.37393370e-08 )) +( log(T_fuel_20[1/K]) *( -4.08089452e-08 )) +( log(T_fuel_21[1/K]) *( -1.30908165e-07 )) +( log(T_fuel_22[1/K]) *( 7.47957658e-08 )) +( log(T_fuel_23[1/K]) *( 8.82628958e-08 )) +( log(T_fuel_24[1/K]) *( 9.58251753e-08 )) +( T_flibe *( 2.57877274e-09 )) ) [1/cm]');
model.component('mod1').variable('var16').set('scat68', '(1.80784570e-03 +( log(T_fuel_1[1/K]) *( -4.79576812e-06 )) +( log(T_fuel_2[1/K]) *( 5.78801401e-06 )) +( log(T_fuel_3[1/K]) *( -1.18777175e-05 )) +( log(T_fuel_4[1/K]) *( -3.32265168e-06 )) +( log(T_fuel_5[1/K]) *( -5.12619349e-06 )) +( log(T_fuel_6[1/K]) *( 6.67826833e-06 )) +( log(T_fuel_7[1/K]) *( 2.80675491e-06 )) +( log(T_fuel_8[1/K]) *( -7.91683544e-06 )) +( log(T_fuel_9[1/K]) *( 1.52028041e-06 )) +( log(T_fuel_10[1/K]) *( -2.68857840e-06 )) +( log(T_fuel_11[1/K]) *( 8.06400883e-06 )) +( log(T_fuel_12[1/K]) *( 2.06345130e-06 )) +( log(T_fuel_13[1/K]) *( -3.52571604e-06 )) +( log(T_fuel_14[1/K]) *( -9.70365424e-07 )) +( log(T_fuel_15[1/K]) *( 8.38993182e-06 )) +( log(T_fuel_16[1/K]) *( 2.58829143e-06 )) +( log(T_fuel_17[1/K]) *( 9.91870336e-06 )) +( log(T_fuel_18[1/K]) *( -1.05013028e-06 )) +( log(T_fuel_19[1/K]) *( -1.88159551e-06 )) +( log(T_fuel_20[1/K]) *( 1.68322893e-06 )) +( log(T_fuel_21[1/K]) *( 6.90939352e-06 )) +( log(T_fuel_22[1/K]) *( -4.70731076e-06 )) +( log(T_fuel_23[1/K]) *( -1.35576099e-06 )) +( log(T_fuel_24[1/K]) *( -4.45450752e-06 )) +( T_flibe *( 2.39422519e-07 )) ) [1/cm]');
model.component('mod1').variable('var16').set('scat78', '(2.65082257e-02 +( log(T_fuel_1[1/K]) *( -3.17520949e-06 )) +( log(T_fuel_2[1/K]) *( -8.03802615e-05 )) +( log(T_fuel_3[1/K]) *( -1.18072906e-05 )) +( log(T_fuel_4[1/K]) *( -1.32040227e-05 )) +( log(T_fuel_5[1/K]) *( 5.03960262e-05 )) +( log(T_fuel_6[1/K]) *( 4.50702037e-05 )) +( log(T_fuel_7[1/K]) *( 4.86994010e-05 )) +( log(T_fuel_8[1/K]) *( -2.49699628e-05 )) +( log(T_fuel_9[1/K]) *( -5.69503663e-05 )) +( log(T_fuel_10[1/K]) *( 2.02962000e-05 )) +( log(T_fuel_11[1/K]) *( 3.25543737e-05 )) +( log(T_fuel_12[1/K]) *( -1.92119797e-05 )) +( log(T_fuel_13[1/K]) *( -1.41418506e-05 )) +( log(T_fuel_14[1/K]) *( 8.89214857e-06 )) +( log(T_fuel_15[1/K]) *( 2.83728139e-06 )) +( log(T_fuel_16[1/K]) *( -2.57207619e-05 )) +( log(T_fuel_17[1/K]) *( 1.39050111e-05 )) +( log(T_fuel_18[1/K]) *( 3.95200535e-05 )) +( log(T_fuel_19[1/K]) *( 2.42672154e-05 )) +( log(T_fuel_20[1/K]) *( 3.30761398e-07 )) +( log(T_fuel_21[1/K]) *( 2.01536841e-05 )) +( log(T_fuel_22[1/K]) *( -1.90879318e-05 )) +( log(T_fuel_23[1/K]) *( 4.70564829e-05 )) +( log(T_fuel_24[1/K]) *( -2.18267802e-05 )) +( T_flibe *( -3.82640379e-06 )) ) [1/cm]');
model.component('mod1').variable('var16').set('scat88', '(3.21973555e-01 +( log(T_fuel_1[1/K]) *( 4.48231940e-04 )) +( log(T_fuel_2[1/K]) *( -1.97659634e-04 )) +( log(T_fuel_3[1/K]) *( 1.44716671e-03 )) +( log(T_fuel_4[1/K]) *( 3.90951671e-04 )) +( log(T_fuel_5[1/K]) *( 3.26671992e-04 )) +( log(T_fuel_6[1/K]) *( -1.02711192e-03 )) +( log(T_fuel_7[1/K]) *( -3.42442582e-04 )) +( log(T_fuel_8[1/K]) *( 1.18707592e-03 )) +( log(T_fuel_9[1/K]) *( 6.37265641e-05 )) +( log(T_fuel_10[1/K]) *( 3.39754326e-04 )) +( log(T_fuel_11[1/K]) *( -9.64614180e-04 )) +( log(T_fuel_12[1/K]) *( -3.15839133e-04 )) +( log(T_fuel_13[1/K]) *( 4.09801499e-04 )) +( log(T_fuel_14[1/K]) *( 3.77536656e-04 )) +( log(T_fuel_15[1/K]) *( -1.02107918e-03 )) +( log(T_fuel_16[1/K]) *( -3.79443392e-04 )) +( log(T_fuel_17[1/K]) *( -1.07501070e-03 )) +( log(T_fuel_18[1/K]) *( -1.88735675e-04 )) +( log(T_fuel_19[1/K]) *( 2.53947341e-04 )) +( log(T_fuel_20[1/K]) *( -2.58917614e-04 )) +( log(T_fuel_21[1/K]) *( -8.92182947e-04 )) +( log(T_fuel_22[1/K]) *( 7.77327352e-04 )) +( log(T_fuel_23[1/K]) *( 1.44379086e-05 )) +( log(T_fuel_24[1/K]) *( 7.91307281e-04 )) +( T_flibe *( -3.97387417e-05 )) ) [1/cm]');
model.component('mod1').variable('var16').set('tot1', '(1.89668977e-01 +( log(T_fuel_1[1/K]) *( 3.32197797e-06 )) +( log(T_fuel_2[1/K]) *( 5.73720729e-06 )) +( log(T_fuel_3[1/K]) *( -1.81319872e-05 )) +( log(T_fuel_4[1/K]) *( -1.67461256e-05 )) +( log(T_fuel_5[1/K]) *( -8.47953964e-07 )) +( log(T_fuel_6[1/K]) *( 7.94050651e-06 )) +( log(T_fuel_7[1/K]) *( 6.97455700e-06 )) +( log(T_fuel_8[1/K]) *( -2.58096670e-05 )) +( log(T_fuel_9[1/K]) *( 6.37292934e-06 )) +( log(T_fuel_10[1/K]) *( -2.37148977e-06 )) +( log(T_fuel_11[1/K]) *( 1.07732640e-05 )) +( log(T_fuel_12[1/K]) *( -4.93219325e-07 )) +( log(T_fuel_13[1/K]) *( -5.05422003e-06 )) +( log(T_fuel_14[1/K]) *( 2.20196344e-06 )) +( log(T_fuel_15[1/K]) *( 1.62681393e-05 )) +( log(T_fuel_16[1/K]) *( 7.74182485e-06 )) +( log(T_fuel_17[1/K]) *( 1.14318950e-05 )) +( log(T_fuel_18[1/K]) *( -1.89972709e-05 )) +( log(T_fuel_19[1/K]) *( 9.15125889e-06 )) +( log(T_fuel_20[1/K]) *( 1.35100201e-05 )) +( log(T_fuel_21[1/K]) *( 2.47259084e-05 )) +( log(T_fuel_22[1/K]) *( -2.24447066e-07 )) +( log(T_fuel_23[1/K]) *( 1.50957867e-05 )) +( log(T_fuel_24[1/K]) *( -1.03022440e-05 )) +( T_flibe *( -1.96535300e-05 )) ) [1/cm]');
model.component('mod1').variable('var16').set('tot2', '(3.66030009e-01 +( log(T_fuel_1[1/K]) *( -2.22000435e-06 )) +( log(T_fuel_2[1/K]) *( 1.26389679e-05 )) +( log(T_fuel_3[1/K]) *( -3.20958038e-05 )) +( log(T_fuel_4[1/K]) *( -3.49555656e-05 )) +( log(T_fuel_5[1/K]) *( -1.21570796e-05 )) +( log(T_fuel_6[1/K]) *( 2.83650397e-05 )) +( log(T_fuel_7[1/K]) *( 6.63829956e-06 )) +( log(T_fuel_8[1/K]) *( -4.34420477e-05 )) +( log(T_fuel_9[1/K]) *( 4.21884513e-06 )) +( log(T_fuel_10[1/K]) *( -6.56653113e-06 )) +( log(T_fuel_11[1/K]) *( 1.69466164e-05 )) +( log(T_fuel_12[1/K]) *( 5.24844080e-06 )) +( log(T_fuel_13[1/K]) *( -1.82936081e-06 )) +( log(T_fuel_14[1/K]) *( -3.87352344e-07 )) +( log(T_fuel_15[1/K]) *( 1.97069102e-05 )) +( log(T_fuel_16[1/K]) *( 1.93812254e-05 )) +( log(T_fuel_17[1/K]) *( 2.85280844e-05 )) +( log(T_fuel_18[1/K]) *( -3.93705351e-05 )) +( log(T_fuel_19[1/K]) *( 1.52637521e-05 )) +( log(T_fuel_20[1/K]) *( 2.98340372e-05 )) +( log(T_fuel_21[1/K]) *( 4.46361119e-05 )) +( log(T_fuel_22[1/K]) *( -1.22131966e-05 )) +( log(T_fuel_23[1/K]) *( 2.22759211e-05 )) +( log(T_fuel_24[1/K]) *( -2.91625982e-05 )) +( T_flibe *( -3.48979591e-05 )) ) [1/cm]');
model.component('mod1').variable('var16').set('tot3', '(3.68244344e-01 +( log(T_fuel_1[1/K]) *( 9.11355398e-06 )) +( log(T_fuel_2[1/K]) *( 8.48979000e-06 )) +( log(T_fuel_3[1/K]) *( -6.30277811e-06 )) +( log(T_fuel_4[1/K]) *( -2.16920739e-05 )) +( log(T_fuel_5[1/K]) *( 9.88328716e-06 )) +( log(T_fuel_6[1/K]) *( 2.21382531e-05 )) +( log(T_fuel_7[1/K]) *( 1.43771715e-05 )) +( log(T_fuel_8[1/K]) *( -1.16139161e-05 )) +( log(T_fuel_9[1/K]) *( 4.54981892e-06 )) +( log(T_fuel_10[1/K]) *( 4.68514198e-06 )) +( log(T_fuel_11[1/K]) *( 1.21015654e-05 )) +( log(T_fuel_12[1/K]) *( 5.52392833e-06 )) +( log(T_fuel_13[1/K]) *( 1.12053030e-06 )) +( log(T_fuel_14[1/K]) *( 1.66782070e-05 )) +( log(T_fuel_15[1/K]) *( 1.98941295e-05 )) +( log(T_fuel_16[1/K]) *( 1.02109087e-05 )) +( log(T_fuel_17[1/K]) *( 2.61805073e-05 )) +( log(T_fuel_18[1/K]) *( -1.47141973e-05 )) +( log(T_fuel_19[1/K]) *( 2.21181838e-05 )) +( log(T_fuel_20[1/K]) *( 2.91404392e-05 )) +( log(T_fuel_21[1/K]) *( 3.62512878e-05 )) +( log(T_fuel_22[1/K]) *( 6.79303662e-06 )) +( log(T_fuel_23[1/K]) *( 2.19089304e-05 )) +( log(T_fuel_24[1/K]) *( -1.45963549e-05 )) +( T_flibe *( -2.73132890e-05 )) ) [1/cm]');
model.component('mod1').variable('var16').set('tot4', '(3.66137887e-01 +( log(T_fuel_1[1/K]) *( 5.91190354e-05 )) +( log(T_fuel_2[1/K]) *( 4.87889978e-05 )) +( log(T_fuel_3[1/K]) *( 4.48969510e-05 )) +( log(T_fuel_4[1/K]) *( 2.10216566e-05 )) +( log(T_fuel_5[1/K]) *( 7.66011431e-05 )) +( log(T_fuel_6[1/K]) *( 5.79716591e-05 )) +( log(T_fuel_7[1/K]) *( 8.80631956e-05 )) +( log(T_fuel_8[1/K]) *( 3.00498162e-05 )) +( log(T_fuel_9[1/K]) *( 4.99415210e-05 )) +( log(T_fuel_10[1/K]) *( 6.42001423e-05 )) +( log(T_fuel_11[1/K]) *( 6.18372557e-05 )) +( log(T_fuel_12[1/K]) *( 5.93475378e-05 )) +( log(T_fuel_13[1/K]) *( 4.06044794e-05 )) +( log(T_fuel_14[1/K]) *( 7.61369167e-05 )) +( log(T_fuel_15[1/K]) *( 5.98008446e-05 )) +( log(T_fuel_16[1/K]) *( 4.90396151e-05 )) +( log(T_fuel_17[1/K]) *( 7.00055364e-05 )) +( log(T_fuel_18[1/K]) *( 5.42401239e-05 )) +( log(T_fuel_19[1/K]) *( 6.83816767e-05 )) +( log(T_fuel_20[1/K]) *( 8.13321018e-05 )) +( log(T_fuel_21[1/K]) *( 7.98920665e-05 )) +( log(T_fuel_22[1/K]) *( 6.76337841e-05 )) +( log(T_fuel_23[1/K]) *( 7.51696431e-05 )) +( log(T_fuel_24[1/K]) *( 4.35340360e-05 )) +( T_flibe *( -2.70435995e-05 )) ) [1/cm]');
model.component('mod1').variable('var16').set('tot5', '(3.69734192e-01 +( log(T_fuel_1[1/K]) *( -1.06436761e-05 )) +( log(T_fuel_2[1/K]) *( 4.17325213e-06 )) +( log(T_fuel_3[1/K]) *( -4.26486335e-05 )) +( log(T_fuel_4[1/K]) *( -3.46708382e-05 )) +( log(T_fuel_5[1/K]) *( -5.68886565e-07 )) +( log(T_fuel_6[1/K]) *( 3.93413046e-05 )) +( log(T_fuel_7[1/K]) *( 2.02391266e-05 )) +( log(T_fuel_8[1/K]) *( -4.15314499e-05 )) +( log(T_fuel_9[1/K]) *( -2.10488946e-06 )) +( log(T_fuel_10[1/K]) *( -2.22241921e-06 )) +( log(T_fuel_11[1/K]) *( 2.19810248e-05 )) +( log(T_fuel_12[1/K]) *( 1.14189736e-05 )) +( log(T_fuel_13[1/K]) *( -2.09860046e-05 )) +( log(T_fuel_14[1/K]) *( 6.83611913e-06 )) +( log(T_fuel_15[1/K]) *( 3.87702991e-05 )) +( log(T_fuel_16[1/K]) *( 1.59129018e-05 )) +( log(T_fuel_17[1/K]) *( 4.42431258e-05 )) +( log(T_fuel_18[1/K]) *( -9.43029148e-06 )) +( log(T_fuel_19[1/K]) *( 1.41296318e-05 )) +( log(T_fuel_20[1/K]) *( 3.15366051e-05 )) +( log(T_fuel_21[1/K]) *( 5.19286435e-05 )) +( log(T_fuel_22[1/K]) *( -1.38696354e-05 )) +( log(T_fuel_23[1/K]) *( 1.98083324e-05 )) +( log(T_fuel_24[1/K]) *( -3.38800946e-05 )) +( T_flibe *( -2.68467272e-05 )) ) [1/cm]');
model.component('mod1').variable('var16').set('tot6', '(3.76079393e-01 +( log(T_fuel_1[1/K]) *( -1.74541801e-05 )) +( log(T_fuel_2[1/K]) *( -3.61941881e-05 )) +( log(T_fuel_3[1/K]) *( -7.87482730e-05 )) +( log(T_fuel_4[1/K]) *( -5.39388717e-05 )) +( log(T_fuel_5[1/K]) *( 2.25036882e-05 )) +( log(T_fuel_6[1/K]) *( 6.77863545e-05 )) +( log(T_fuel_7[1/K]) *( 5.28490814e-05 )) +( log(T_fuel_8[1/K]) *( -8.03111185e-05 )) +( log(T_fuel_9[1/K]) *( -4.41676241e-05 )) +( log(T_fuel_10[1/K]) *( -4.74180149e-06 )) +( log(T_fuel_11[1/K]) *( 6.16083050e-05 )) +( log(T_fuel_12[1/K]) *( 2.77213983e-06 )) +( log(T_fuel_13[1/K]) *( -2.97186883e-05 )) +( log(T_fuel_14[1/K]) *( 1.34623500e-06 )) +( log(T_fuel_15[1/K]) *( 3.77524947e-05 )) +( log(T_fuel_16[1/K]) *( 6.88947314e-06 )) +( log(T_fuel_17[1/K]) *( 6.49620236e-05 )) +( log(T_fuel_18[1/K]) *( 7.26981683e-06 )) +( log(T_fuel_19[1/K]) *( 1.39646192e-05 )) +( log(T_fuel_20[1/K]) *( 3.34339388e-05 )) +( log(T_fuel_21[1/K]) *( 5.89157281e-05 )) +( log(T_fuel_22[1/K]) *( -3.70120897e-05 )) +( log(T_fuel_23[1/K]) *( 3.67207021e-05 )) +( log(T_fuel_24[1/K]) *( -4.76461061e-05 )) +( T_flibe *( -2.65683720e-05 )) ) [1/cm]');
model.component('mod1').variable('var16').set('tot7', '(3.80609967e-01 +( log(T_fuel_1[1/K]) *( -2.92948734e-05 )) +( log(T_fuel_2[1/K]) *( -8.47383930e-05 )) +( log(T_fuel_3[1/K]) *( -1.10180018e-04 )) +( log(T_fuel_4[1/K]) *( -8.05411814e-05 )) +( log(T_fuel_5[1/K]) *( 5.47854212e-05 )) +( log(T_fuel_6[1/K]) *( 1.18609518e-04 )) +( log(T_fuel_7[1/K]) *( 9.27889455e-05 )) +( log(T_fuel_8[1/K]) *( -1.18725042e-04 )) +( log(T_fuel_9[1/K]) *( -7.48107368e-05 )) +( log(T_fuel_10[1/K]) *( -1.43749106e-05 )) +( log(T_fuel_11[1/K]) *( 8.16797176e-05 )) +( log(T_fuel_12[1/K]) *( 1.16020475e-05 )) +( log(T_fuel_13[1/K]) *( -5.65165114e-05 )) +( log(T_fuel_14[1/K]) *( -3.00720361e-06 )) +( log(T_fuel_15[1/K]) *( 5.66203835e-05 )) +( log(T_fuel_16[1/K]) *( 6.22680971e-06 )) +( log(T_fuel_17[1/K]) *( 1.07015695e-04 )) +( log(T_fuel_18[1/K]) *( 4.83228753e-05 )) +( log(T_fuel_19[1/K]) *( 1.36126283e-05 )) +( log(T_fuel_20[1/K]) *( 3.72185301e-05 )) +( log(T_fuel_21[1/K]) *( 7.69275503e-05 )) +( log(T_fuel_22[1/K]) *( -7.34742203e-05 )) +( log(T_fuel_23[1/K]) *( 5.37401718e-05 )) +( log(T_fuel_24[1/K]) *( -7.56268889e-05 )) +( T_flibe *( -2.48650126e-05 )) ) [1/cm]');
model.component('mod1').variable('var16').set('tot8', '(4.03543884e-01 +( log(T_fuel_1[1/K]) *( -2.08473527e-04 )) +( log(T_fuel_2[1/K]) *( -3.05692992e-04 )) +( log(T_fuel_3[1/K]) *( -6.52964838e-04 )) +( log(T_fuel_4[1/K]) *( -3.05185278e-04 )) +( log(T_fuel_5[1/K]) *( 1.14377878e-04 )) +( log(T_fuel_6[1/K]) *( 5.67933330e-04 )) +( log(T_fuel_7[1/K]) *( 3.92628840e-04 )) +( log(T_fuel_8[1/K]) *( -5.90973683e-04 )) +( log(T_fuel_9[1/K]) *( -2.88325931e-04 )) +( log(T_fuel_10[1/K]) *( -1.00775759e-04 )) +( log(T_fuel_11[1/K]) *( 4.55304820e-04 )) +( log(T_fuel_12[1/K]) *( 8.23059412e-05 )) +( log(T_fuel_13[1/K]) *( -2.54687223e-04 )) +( log(T_fuel_14[1/K]) *( -8.75706430e-05 )) +( log(T_fuel_15[1/K]) *( 3.49606113e-04 )) +( log(T_fuel_16[1/K]) *( 8.48663465e-05 )) +( log(T_fuel_17[1/K]) *( 5.35623638e-04 )) +( log(T_fuel_18[1/K]) *( 2.66237181e-04 )) +( log(T_fuel_19[1/K]) *( -4.00641491e-05 )) +( log(T_fuel_20[1/K]) *( 1.24837001e-04 )) +( log(T_fuel_21[1/K]) *( 3.86895666e-04 )) +( log(T_fuel_22[1/K]) *( -3.80503821e-04 )) +( log(T_fuel_23[1/K]) *( 1.53567128e-04 )) +( log(T_fuel_24[1/K]) *( -3.70718867e-04 )) +( T_flibe *( -1.78407278e-05 )) ) [1/cm]');
model.component('mod1').variable('var16').set('diff21', '2.57142857e-01*tot1[1/cm]');
model.component('mod1').variable('var16').set('diff22', '2.57142857e-01*tot2[1/cm]');
model.component('mod1').variable('var16').set('diff23', '2.57142857e-01*tot3[1/cm]');
model.component('mod1').variable('var16').set('diff24', '2.57142857e-01*tot4[1/cm]');
model.component('mod1').variable('var16').set('diff25', '2.57142857e-01*tot5[1/cm]');
model.component('mod1').variable('var16').set('diff26', '2.57142857e-01*tot6[1/cm]');
model.component('mod1').variable('var16').set('diff27', '2.57142857e-01*tot7[1/cm]');
model.component('mod1').variable('var16').set('diff28', '2.57142857e-01*tot8[1/cm]');
model.component('mod1').variable('var16').selection.geom('geom1', 3);
model.component('mod1').variable('var16').selection.set([7]);
model.component('mod1').variable.create('var18');
model.component('mod1').variable('var18').set('Pdensity', 'kappa1*fiss1*Flux1+kappa2*fiss2*Flux2+kappa3*fiss3*Flux3+kappa4*fiss4*Flux4+kappa5*fiss5*Flux5+kappa6*fiss6*Flux6+kappa7*fiss7*Flux7+kappa8*fiss8*Flux8', 'power density');
model.component('mod1').variable('var18').set('PdensityN', 'Pdensity*Pop/Pint', 'power density normalized to Pop');
model.component('mod1').variable('var18').set('Pint', 'intop1(Pdensity)', 'integrated total core power');
model.component('mod1').variable('var18').set('PintN', 'intop1(PdensityN)', 'integrated total core power normalized to Pop, should be equal to Pop');
model.component('mod1').variable('var18').selection.geom('geom1', 3);
model.component('mod1').variable('var18').selection.set([1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17]);
model.component('mod1').variable.create('var_T_fuel');
model.component('mod1').variable('var_T_fuel').set('T_fuel_1', 'T_fuel');
model.component('mod1').variable('var_T_fuel').set('T_fuel_2', 'T_fuel');
model.component('mod1').variable('var_T_fuel').set('T_fuel_3', 'T_fuel');
model.component('mod1').variable('var_T_fuel').set('T_fuel_4', 'T_fuel');
model.component('mod1').variable('var_T_fuel').set('T_fuel_5', 'T_fuel');
model.component('mod1').variable('var_T_fuel').set('T_fuel_6', 'T_fuel');
model.component('mod1').variable('var_T_fuel').set('T_fuel_7', 'T_fuel');
model.component('mod1').variable('var_T_fuel').set('T_fuel_8', 'T_fuel');
model.component('mod1').variable('var_T_fuel').set('T_fuel_9', 'T_fuel');
model.component('mod1').variable('var_T_fuel').set('T_fuel_10', 'T_fuel');
model.component('mod1').variable('var_T_fuel').set('T_fuel_11', 'T_fuel');
model.component('mod1').variable('var_T_fuel').set('T_fuel_12', 'T_fuel');
model.component('mod1').variable('var_T_fuel').set('T_fuel_13', 'T_fuel');
model.component('mod1').variable('var_T_fuel').set('T_fuel_14', 'T_fuel');
model.component('mod1').variable('var_T_fuel').set('T_fuel_15', 'T_fuel');
model.component('mod1').variable('var_T_fuel').set('T_fuel_16', 'T_fuel');
model.component('mod1').variable('var_T_fuel').set('T_fuel_17', 'T_fuel');
model.component('mod1').variable('var_T_fuel').set('T_fuel_18', 'T_fuel');
model.component('mod1').variable('var_T_fuel').set('T_fuel_19', 'T_fuel');
model.component('mod1').variable('var_T_fuel').set('T_fuel_20', 'T_fuel');
model.component('mod1').variable('var_T_fuel').set('T_fuel_21', 'T_fuel');
model.component('mod1').variable('var_T_fuel').set('T_fuel_22', 'T_fuel');
model.component('mod1').variable('var_T_fuel').set('T_fuel_23', 'T_fuel');
model.component('mod1').variable('var_T_fuel').set('T_fuel_24', 'T_fuel');

model.component('mod1').material.create('mat1', 'Common');
model.component('mod1').material.create('mat2', 'Common');
model.component('mod1').material.create('mat4', 'Common');
model.component('mod1').material('mat1').selection.set([6 7]);
model.component('mod1').material('mat2').selection.set([1 2 3 4 5 8 9 10 11 12 13 14 15 16 17]);
model.component('mod1').material('mat4').propertyGroup.create('Enu', 'Young''s modulus and Poisson''s ratio');
model.component('mod1').material('mat4').propertyGroup.create('Murnaghan', 'Murnaghan');
model.component('mod1').material('mat4').propertyGroup.create('Lame', ['Lam' native2unicode(hex2dec({'00' 'e9'}), 'unicode') ' parameters']);

model.component('mod1').cpl.create('intop1', 'Integration');
model.component('mod1').cpl.create('aveop1', 'Average');
model.component('mod1').cpl('intop1').selection.set([7]);
model.component('mod1').cpl('aveop1').selection.set([7]);

model.component('mod1').physics.create('br', 'Brinkman', 'geom1');
model.component('mod1').physics('br').selection.set([6 7]);
model.component('mod1').physics('br').feature('fmp1').create('fd1', 'Forchheimer', 3);
model.component('mod1').physics('br').feature('fmp1').feature('fd1').selection.set([6 7]);
model.component('mod1').physics('br').create('out1', 'OutletBoundary', 2);
model.component('mod1').physics('br').feature('out1').selection.set([39 40 155 208]);
model.component('mod1').physics('br').create('out2', 'OutletBoundary', 2);
model.component('mod1').physics('br').feature('out2').selection.set([41 42 156 203]);
model.component('mod1').physics('br').create('out3', 'OutletBoundary', 2);
model.component('mod1').physics('br').feature('out3').selection.set([51 52 57 58 161 164 194 199]);
model.component('mod1').physics('br').create('inl1', 'InletBoundary', 2);
model.component('mod1').physics('br').feature('inl1').selection.set([53 54 59 60 162 165 192 195]);
model.component('mod1').physics('br').create('inl2', 'InletBoundary', 2);
model.component('mod1').physics('br').feature('inl2').selection.set([79 80 89 93 99 107 114 117 123 131 175 187 225 228 238 244 257 260 264 269]);
model.component('mod1').physics('br').create('inl3', 'InletBoundary', 2);
model.component('mod1').physics('br').feature('inl3').selection.set([61 62 166 193]);
model.component('mod1').physics.create('ht', 'HeatTransferInFluids', 'geom1');
model.component('mod1').physics('ht').field('temperature').field('T_flibe');
model.component('mod1').physics('ht').selection.set([6 7]);
model.component('mod1').physics('ht').create('temp1', 'TemperatureBoundary', 2);
model.component('mod1').physics('ht').feature('temp1').selection.set([53 54 59 60 61 62 79 80 89 93 99 107 114 117 123 131 162 165 166 175 187 192 193 195 225 228 238 244 257 260 264 269]);
model.component('mod1').physics('ht').create('hs1', 'HeatSource', 3);
model.component('mod1').physics('ht').feature('hs1').selection.set([7]);
model.component('mod1').physics('ht').create('hs2', 'HeatSource', 3);
model.component('mod1').physics('ht').feature('hs2').selection.set([7]);
model.component('mod1').physics.create('ht3', 'HeatTransferInFluids', 'geom1');
model.component('mod1').physics('ht3').identifier('ht3');
model.component('mod1').physics('ht3').field('temperature').field('T_fuel');
model.component('mod1').physics('ht3').selection.set([7]);
model.component('mod1').physics('ht3').create('solid1', 'SolidHeatTransferModel', 3);
model.component('mod1').physics('ht3').feature('solid1').selection.set([7]);
model.component('mod1').physics('ht3').create('hs1', 'HeatSource', 3);
model.component('mod1').physics('ht3').feature('hs1').selection.set([7]);
model.component('mod1').physics('ht3').create('hs2', 'HeatSource', 3);
model.component('mod1').physics('ht3').feature('hs2').selection.set([7]);
model.component('mod1').physics('ht3').create('hs3', 'HeatSource', 3);
model.component('mod1').physics('ht3').feature('hs3').selection.set([7]);
model.component('mod1').physics.create('neutrondiffusion', 'CoefficientFormPDE', 'geom1');
model.component('mod1').physics('neutrondiffusion').identifier('neutrondiffusion');
model.component('mod1').physics('neutrondiffusion').field('dimensionless').field('Flux');
model.component('mod1').physics('neutrondiffusion').field('dimensionless').component({'Flux1' 'Flux2' 'Flux3' 'Flux4' 'Flux5' 'Flux6' 'Flux7' 'Flux8' 'Conc1' 'Conc2'  ...
'Conc3' 'Conc4' 'Conc5' 'Conc6'});
model.component('mod1').physics('neutrondiffusion').create('dir1', 'DirichletBoundary', 2);
model.component('mod1').physics('neutrondiffusion').feature('dir1').selection.set([1 2 3 4 5 6 9 10 11 12 15 16 17 18 21 22 23 24 33 34 51 52 53 54 57 58 59 60 65 66 69 70 75 76 85 86 97 102 105 110 121 126 129 134 136 137 138 140 141 143 144 146 147 152 161 162 164 165 168 170 173 178 180 181 182 183 192 194 195 199 201 204 212 214 215 217 218 220 221 222 232 233 236 241 250 251 252 253]);
model.component('mod1').physics('neutrondiffusion').create('flux1', 'FluxBoundary', 2);

model.component('mod1').mesh('mesh1').autoMeshSize(7);

model.component('mod1').probe.create('dom1', 'Domain');
model.component('mod1').probe.create('dom2', 'Domain');
model.component('mod1').probe.create('dom3', 'Domain');
model.component('mod1').probe.create('dom4', 'Domain');
model.component('mod1').probe.create('dom5', 'Domain');
model.component('mod1').probe('dom2').selection.set([7]);
model.component('mod1').probe('dom3').selection.set([7]);
model.component('mod1').probe('dom4').selection.set([7]);
model.component('mod1').probe('dom5').selection.set([7]);

model.component('mod1').variable('var4').label('fuel properties');
model.component('mod1').variable('var_xs_CR').label('xs_CR');
model.component('mod1').variable('var_xs_Blanket').label('xs_Blanket');
model.component('mod1').variable('var_xs_ORCC').label('xs_ORCC');
model.component('mod1').variable('var_xs_OR').label('xs_OR');
model.component('mod1').variable('var_xs_CB').label('xs_CB');
model.component('mod1').variable('var_xs_DC').label('xs_DC');
model.component('mod1').variable('var_xs_VS').label('xs_VS');
model.component('mod1').variable('var_xsCRCC1').label('xs_rodCRCC1');
model.component('mod1').variable('var_xsCRCC2').label('xs_rodCRCC2');
model.component('mod1').variable('var_xsCRCC3').label('xs_rodCRCC3');
model.component('mod1').variable('var_xsCRCC4').label('xs_rodCRCC4');
model.component('mod1').variable('var_xsCRCC5').label('xs_rodCRCC5');
model.component('mod1').variable('var_xsCRCC6').label('xs_rodCRCC6');
model.component('mod1').variable('var_xsCRCC7').label('xs_rodCRCC7');
model.component('mod1').variable('var_xsCRCC8_1').label('xs_rodCRCC8_1');
model.component('mod1').variable('var_xsCRCC8_2').label('xs_rodCRCC8_2');
model.component('mod1').variable('var16').label('XS_pb');
model.component('mod1').variable('var18').label('power');
model.component('mod1').variable('var_T_fuel').label('Variables');

model.component('mod1').material('mat1').label('Salt-with porosity and permeability');
model.component('mod1').material('mat1').propertyGroup('def').set('ratioofspecificheat', '1');
model.component('mod1').material('mat1').propertyGroup('def').set('dynamicviscosity', 'mu_flibe(T_flibe)');
model.component('mod1').material('mat1').propertyGroup('def').set('hydraulicpermeability', {'Kbr' '0' '0' '0' 'Kbr' '0' '0' '0' 'Kbr'});
model.component('mod1').material('mat1').propertyGroup('def').set('porosity', 'ep');
model.component('mod1').material('mat1').propertyGroup('def').set('thermalconductivity', {'1.1' '0' '0' '0' '1.1' '0' '0' '0' '1.1'});
model.component('mod1').material('mat1').propertyGroup('def').set('density', 'rho_flibe(T_flibe)');
model.component('mod1').material('mat1').propertyGroup('def').set('heatcapacity', '2386');
model.component('mod1').material('mat2').label('graphite based on built in steel');
model.component('mod1').material('mat2').propertyGroup('def').set('porosity', '0.2');
model.component('mod1').material('mat2').propertyGroup('def').set('hydraulicpermeability', {'1.55*10^(-13)' '0' '0' '0' '1.55*10^(-13)' '0' '0' '0' '1.55*10^(-13)'});
model.component('mod1').material('mat2').propertyGroup('def').set('ratioofspecificheat', '1');
model.component('mod1').material('mat2').propertyGroup('def').set('thermalconductivity', {'640[W/(m*K)]' '0' '0' '0' '640[W/(m*K)]' '0' '0' '0' '640[W/(m*K)]'});
model.component('mod1').material('mat2').propertyGroup('def').set('heatcapacity', '684[J/(kg*K)]');
model.component('mod1').material('mat2').propertyGroup('def').set('density', '1960[kg/m^3]');
model.component('mod1').material('mat4').label('Structural steel');
model.component('mod1').material('mat4').set('family', 'custom');
model.component('mod1').material('mat4').set('specular', 'custom');
model.component('mod1').material('mat4').set('customspecular', [0.7843137254901961 0.7843137254901961 0.7843137254901961]);
model.component('mod1').material('mat4').set('diffuse', 'custom');
model.component('mod1').material('mat4').set('customdiffuse', [0.6666666666666666 0.6666666666666666 0.6666666666666666]);
model.component('mod1').material('mat4').set('ambient', 'custom');
model.component('mod1').material('mat4').set('customambient', [0.6666666666666666 0.6666666666666666 0.6666666666666666]);
model.component('mod1').material('mat4').set('noise', true);
model.component('mod1').material('mat4').set('noisefreq', 1);
model.component('mod1').material('mat4').set('lighting', 'cooktorrance');
model.component('mod1').material('mat4').set('fresnel', 0.9);
model.component('mod1').material('mat4').set('roughness', 0.3);
model.component('mod1').material('mat4').propertyGroup('def').set('relpermeability', {'1' '0' '0' '0' '1' '0' '0' '0' '1'});
model.component('mod1').material('mat4').propertyGroup('def').set('heatcapacity', '475[J/(kg*K)]');
model.component('mod1').material('mat4').propertyGroup('def').set('thermalconductivity', {'44.5[W/(m*K)]' '0' '0' '0' '44.5[W/(m*K)]' '0' '0' '0' '44.5[W/(m*K)]'});
model.component('mod1').material('mat4').propertyGroup('def').set('electricconductivity', {'4.032e6[S/m]' '0' '0' '0' '4.032e6[S/m]' '0' '0' '0' '4.032e6[S/m]'});
model.component('mod1').material('mat4').propertyGroup('def').set('relpermittivity', {'1' '0' '0' '0' '1' '0' '0' '0' '1'});
model.component('mod1').material('mat4').propertyGroup('def').set('thermalexpansioncoefficient', {'12.3e-6[1/K]' '0' '0' '0' '12.3e-6[1/K]' '0' '0' '0' '12.3e-6[1/K]'});
model.component('mod1').material('mat4').propertyGroup('def').set('density', '7850[kg/m^3]');
model.component('mod1').material('mat4').propertyGroup('Enu').set('youngsmodulus', '200e9[Pa]');
model.component('mod1').material('mat4').propertyGroup('Enu').set('poissonsratio', '0.30');
model.component('mod1').material('mat4').propertyGroup('Murnaghan').set('l', '');
model.component('mod1').material('mat4').propertyGroup('Murnaghan').set('m', '');
model.component('mod1').material('mat4').propertyGroup('Murnaghan').set('n', '');
model.component('mod1').material('mat4').propertyGroup('Murnaghan').set('l', '-3.0e11[Pa]');
model.component('mod1').material('mat4').propertyGroup('Murnaghan').set('m', '-6.2e11[Pa]');
model.component('mod1').material('mat4').propertyGroup('Murnaghan').set('n', '-7.2e11[Pa]');
model.component('mod1').material('mat4').propertyGroup('Lame').set('lambLame', '');
model.component('mod1').material('mat4').propertyGroup('Lame').set('muLame', '');
model.component('mod1').material('mat4').propertyGroup('Lame').set('lambLame', '1.15e11[Pa]');
model.component('mod1').material('mat4').propertyGroup('Lame').set('muLame', '7.69e10[Pa]');

model.component('mod1').physics('br').label('Momentum - Porous Media Flow');
model.component('mod1').physics('br').prop('ShapeProperty').set('valueType', {'complex';  ...
'complex';  ...
'real';  ...
'real';  ...
'real';  ...
'real';  ...
'real';  ...
'real';  ...
'real';  ...
'real';  ...
'real'});
model.component('mod1').physics('br').prop('PhysicalModelProperty').set('StokesFlowProp', false);
model.component('mod1').physics('br').prop('PhysicalModelProperty').set('TurbulenceModel', 'keps');
model.component('mod1').physics('br').prop('ConsistentStabilization').set('CrosswindDiffusionOldFormNS', true);
model.component('mod1').physics('br').prop('AdvancedSettingProperty').set('locCFL', '1.3^min(niterCMP-1,9)+if(niterCMP>25,9*1.3^min(niterCMP-25,9),0)+if(niterCMP>50,90*1.3^min(niterCMP-50,9),0)');
model.component('mod1').physics('br').feature('fmp1').set('rho', 'rho_flibe(T_flibe)');
model.component('mod1').physics('br').feature('fmp1').set('kappa', [0; 0; 0; 0; 0; 0; 0; 0; 0]);
model.component('mod1').physics('br').feature('fmp1').set('minput_strainreferencetemperature', 0);
model.component('mod1').physics('br').feature('fmp1').set('editModelInputs', true);
model.component('mod1').physics('br').feature('fmp1').label('Fluid and Matrix Properties');
model.component('mod1').physics('br').feature('fmp1').feature('fd1').set('betaF', 'bF');
model.component('mod1').physics('br').feature('fmp1').feature('fd1').label('Forchheimer Drag');
model.component('mod1').physics('br').feature('init1').set('u_init', [0; 0; 0.1]);
model.component('mod1').physics('br').feature('wall1').set('BoundaryCondition', 'Slip');
model.component('mod1').physics('br').feature('wall1').set('zeta', '-0.1[V]');
model.component('mod1').physics('br').feature('wall1').set('constraintType', 'symmetricConstraint');
model.component('mod1').physics('br').feature('wall1').label('Wall');
model.component('mod1').physics('br').feature('out1').set('p0', '0.15*rhoL*g');
model.component('mod1').physics('br').feature('out2').set('p0', 'an7(z)*rhoL*g');
model.component('mod1').physics('br').feature('out3').set('p0', '0*rhoL*g');
model.component('mod1').physics('br').feature('inl1').set('BoundaryCondition', 'MassFlow');
model.component('mod1').physics('br').feature('inl1').set('U0in', 0.5);
model.component('mod1').physics('br').feature('inl1').set('mfr', 'mL*bottomInletFraction');
model.component('mod1').physics('br').feature('inl1').set('IT', 0.05);
model.component('mod1').physics('br').feature('inl1').set('LT', '0.01[m]');
model.component('mod1').physics('br').feature('inl1').set('k0', '0.005[m^2/s^2]');
model.component('mod1').physics('br').feature('inl1').set('ep0', '0.005[m^2/s^3]');
model.component('mod1').physics('br').feature('inl1').set('om0', '20[1/s]');
model.component('mod1').physics('br').feature('inl2').set('U0in', '0.14*(z-1.5)');
model.component('mod1').physics('br').feature('inl2').set('mfr', 0.22);
model.component('mod1').physics('br').feature('inl2').set('IT', 0.05);
model.component('mod1').physics('br').feature('inl2').set('LT', '0.01[m]');
model.component('mod1').physics('br').feature('inl2').set('k0', '0.005[m^2/s^2]');
model.component('mod1').physics('br').feature('inl2').set('ep0', '0.005[m^2/s^3]');
model.component('mod1').physics('br').feature('inl2').set('om0', '20[1/s]');
model.component('mod1').physics('br').feature('inl3').set('BoundaryCondition', 'MassFlow');
model.component('mod1').physics('br').feature('inl3').set('ComponentWise', 'VelocityFieldComponentWise');
model.component('mod1').physics('br').feature('inl3').set('U0in', 0.02);
model.component('mod1').physics('br').feature('inl3').set('mfr', '10[kg/s]');
model.component('mod1').physics('ht').label('Heat Transfer - Flibe');
model.component('mod1').physics('ht').prop('ShapeProperty').set('boundaryFlux_temperature', false);
model.component('mod1').physics('ht').prop('ShapeProperty').set('valueType', 'complex');
model.component('mod1').physics('ht').prop('ConsistentStabilization').set('heatCrosswindDiffusion', false);
model.component('mod1').physics('ht').prop('ConsistentStabilization').set('glim', '0.01[K]/ht.helem');
model.component('mod1').physics('ht').prop('ConsistentStabilization').set('StreamlineDiffusionOldForm', true);
model.component('mod1').physics('ht').prop('RadiationProperty').set('fieldName', 'root.J');
model.component('mod1').physics('ht').feature('fluid1').set('k', {'0.6*'; '0'; '0'; '0'; '0.6*'; '0'; '0'; '0'; '0.6*'});
model.component('mod1').physics('ht').feature('fluid1').set('minput_strainreferencetemperature', 0);
model.component('mod1').physics('ht').feature('fluid1').label('Fluid');
model.component('mod1').physics('ht').feature('init1').set('Tinit', 'T0_flibe');
model.component('mod1').physics('ht').feature('init1').label('Initial Temperature');
model.component('mod1').physics('ht').feature('ins1').label('Thermal Insulation');
model.component('mod1').physics('ht').feature('temp1').set('T0', 'T_inlet');
model.component('mod1').physics('ht').feature('temp1').label('Inlet Temperature');
model.component('mod1').physics('ht').feature('hs1').set('Q0', 'h_conv*pb_area/fuel_v*T_fuel');
model.component('mod1').physics('ht').feature('hs1').label('heat transfer from fuel-cst term');
model.component('mod1').physics('ht').feature('hs2').set('heatSourceType', 'LinearSource');
model.component('mod1').physics('ht').feature('hs2').set('qs', '-h_conv*pb_area/fuel_v');
model.component('mod1').physics('ht').feature('hs2').label('heat transfer from fuel - linear term');
model.component('mod1').physics('ht3').label('Heat Transfer in Fuel Pebble');
model.component('mod1').physics('ht3').comments('fuel temperature');
model.component('mod1').physics('ht3').prop('ConsistentStabilization').set('glim', '(0.01[K])/ht3.helem');
model.component('mod1').physics('ht3').feature('fluid1').label('overridden');
model.component('mod1').physics('ht3').feature('init1').set('Tinit', 'T0_fuel');
model.component('mod1').physics('ht3').feature('solid1').set('k', {'k_fuel'; '0'; '0'; '0'; 'k_fuel'; '0'; '0'; '0'; 'k_fuel'});
model.component('mod1').physics('ht3').feature('solid1').set('rho', 'rho_fuel*(1-porosity)');
model.component('mod1').physics('ht3').feature('solid1').set('Cp', 'cp_fuel');
model.component('mod1').physics('ht3').feature('solid1').label('Heat Transfer in Solids(smeared fuel pebbles)');
model.component('mod1').physics('ht3').feature('hs1').set('P0', '1E7');
model.component('mod1').physics('ht3').feature('hs1').set('Q0', 'Pdensity*Pop/Pint');
model.component('mod1').physics('ht3').feature('hs1').label('Nuclear heat generation');
model.component('mod1').physics('ht3').feature('hs2').set('heatSourceType', 'LinearSource');
model.component('mod1').physics('ht3').feature('hs2').set('qs', '-h_conv*pb_area/fuel_v');
model.component('mod1').physics('ht3').feature('hs2').label('heat tranfer to flibe - linear term');
model.component('mod1').physics('ht3').feature('hs3').set('Q0', 'h_conv*pb_area/fuel_v*T_flibe');
model.component('mod1').physics('ht3').feature('hs3').label('heat transfer to flibe - cst term');
model.component('mod1').physics('neutrondiffusion').prop('ShapeProperty').set('order', 1);
model.component('mod1').physics('neutrondiffusion').prop('Units').set('DependentVariableQuantity', 'particleflux');
model.component('mod1').physics('neutrondiffusion').prop('Units').set('SourceTermQuantity', 'productionrate');
model.component('mod1').physics('neutrondiffusion').feature('cfeq1').set('c', {'diff11' '0' '0' '0' 'diff11' '0' '0' '0' 'diff11';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'diff12' '0' '0' '0' 'diff12' '0' '0' '0' 'diff12';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'diff13' '0' '0' '0' 'diff13' '0' '0' '0' 'diff13';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'diff14' '0' '0' '0' 'diff14' '0' '0' '0' 'diff14';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'diff15' '0' '0' '0' 'diff15' '0' '0' '0' 'diff15';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'diff16' '0' '0' '0' 'diff16' '0' '0' '0' 'diff16';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'diff17' '0' '0' '0' 'diff17' '0' '0' '0' 'diff17';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'diff18' '0' '0' '0' 'diff18' '0' '0' '0' 'diff18';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0';  ...
'0' '0' '0' '0' '0' '0' '0' '0' '0'});
model.component('mod1').physics('neutrondiffusion').feature('cfeq1').set('a', {'(rem1-(1-beta1)*chip1*nsf1*lambda)';  ...
'(-scat12-(1-beta1)*chip2*nsf1*lambda)';  ...
'(-scat13-(1-beta1)*chip3*nsf1*lambda)';  ...
'(-scat14-(1-beta1)*chip4*nsf1*lambda)';  ...
'(-scat15-(1-beta1)*chip5*nsf1*lambda)';  ...
'(-scat16-(1-beta1)*chip6*nsf1*lambda)';  ...
'(-scat17-(1-beta1)*chip7*nsf1*lambda)';  ...
'(-scat18-(1-beta1)*chip8*nsf1*lambda)';  ...
'-betas1*nsf1';  ...
'-betas2*nsf1';  ...
'-betas3*nsf1';  ...
'-betas4*nsf1';  ...
'-betas5*nsf1';  ...
'-betas6*nsf1';  ...
'(-scat21-(1-beta1)*chip1*nsf2*lambda)';  ...
'(rem2-(1-beta1)*chip2*nsf2*lambda)';  ...
'(-scat23-(1-beta1)*chip3*nsf2*lambda)';  ...
'(-scat24-(1-beta1)*chip4*nsf2*lambda)';  ...
'(-scat25-(1-beta1)*chip5*nsf2*lambda)';  ...
'(-scat26-(1-beta1)*chip6*nsf2*lambda)';  ...
'(-scat27-(1-beta1)*chip7*nsf2*lambda)';  ...
'(-scat28-(1-beta1)*chip8*nsf2*lambda)';  ...
'-betas1*nsf2';  ...
'-betas2*nsf2';  ...
'-betas3*nsf2';  ...
'-betas4*nsf2';  ...
'-betas5*nsf2';  ...
'-betas6*nsf2';  ...
'(-scat31-(1-beta1)*chip1*nsf3*lambda)';  ...
'(-scat32-(1-beta1)*chip2*nsf3*lambda)';  ...
'(rem3-(1-beta1)*chip3*nsf3*lambda)';  ...
'(-scat34-(1-beta1)*chip4*nsf3*lambda)';  ...
'(-scat35-(1-beta1)*chip5*nsf3*lambda)';  ...
'(-scat36-(1-beta1)*chip6*nsf3*lambda)';  ...
'(-scat37-(1-beta1)*chip7*nsf3*lambda)';  ...
'(-scat38-(1-beta1)*chip8*nsf3*lambda)';  ...
'-betas1*nsf3';  ...
'-betas2*nsf3';  ...
'-betas3*nsf3';  ...
'-betas4*nsf3';  ...
'-betas5*nsf3';  ...
'-betas6*nsf3';  ...
'(-scat41-(1-beta1)*chip1*nsf4*lambda)';  ...
'(-scat42-(1-beta1)*chip2*nsf4*lambda)';  ...
'(-scat43-(1-beta1)*chip3*nsf4*lambda)';  ...
'(rem4-(1-beta1)*chip4*nsf4*lambda)';  ...
'(-scat45-(1-beta1)*chip5*nsf4*lambda)';  ...
'(-scat46-(1-beta1)*chip6*nsf4*lambda)';  ...
'(-scat47-(1-beta1)*chip7*nsf4*lambda)';  ...
'(-scat48-(1-beta1)*chip8*nsf4*lambda)';  ...
'-betas1*nsf4';  ...
'-betas2*nsf4';  ...
'-betas3*nsf4';  ...
'-betas4*nsf4';  ...
'-betas5*nsf4';  ...
'-betas6*nsf4';  ...
'(-scat51-(1-beta1)*chip1*nsf5*lambda)';  ...
'(-scat52-(1-beta1)*chip2*nsf5*lambda)';  ...
'(-scat53-(1-beta1)*chip3*nsf5*lambda)';  ...
'(-scat54-(1-beta1)*chip4*nsf5*lambda)';  ...
'(rem5-(1-beta1)*chip5*nsf5*lambda)';  ...
'(-scat56-(1-beta1)*chip6*nsf5*lambda)';  ...
'(-scat57-(1-beta1)*chip7*nsf5*lambda)';  ...
'(-scat58-(1-beta1)*chip8*nsf5*lambda)';  ...
'-betas1*nsf5';  ...
'-betas2*nsf5';  ...
'-betas3*nsf5';  ...
'-betas4*nsf5';  ...
'-betas5*nsf5';  ...
'-betas6*nsf5';  ...
'(-scat61-(1-beta1)*chip1*nsf6*lambda)';  ...
'(-scat62-(1-beta1)*chip2*nsf6*lambda)';  ...
'(-scat63-(1-beta1)*chip3*nsf6*lambda)';  ...
'(-scat64-(1-beta1)*chip4*nsf6*lambda)';  ...
'(-scat65-(1-beta1)*chip5*nsf6*lambda)';  ...
'(rem6-(1-beta1)*chip6*nsf6*lambda)';  ...
'(-scat67-(1-beta1)*chip7*nsf6*lambda)';  ...
'(-scat68-(1-beta1)*chip8*nsf6*lambda)';  ...
'-betas1*nsf6';  ...
'-betas2*nsf6';  ...
'-betas3*nsf6';  ...
'-betas4*nsf6';  ...
'-betas5*nsf6';  ...
'-betas6*nsf6';  ...
'(-scat71-(1-beta1)*chip1*nsf7*lambda)';  ...
'(-scat72-(1-beta1)*chip2*nsf7*lambda)';  ...
'(-scat73-(1-beta1)*chip3*nsf7*lambda)';  ...
'(-scat74-(1-beta1)*chip4*nsf7*lambda)';  ...
'(-scat75-(1-beta1)*chip5*nsf7*lambda)';  ...
'(-scat76-(1-beta1)*chip6*nsf7*lambda)';  ...
'(rem7-(1-beta1)*chip7*nsf7*lambda)';  ...
'(-scat78-(1-beta1)*chip8*nsf7*lambda)';  ...
'-betas1*nsf7';  ...
'-betas2*nsf7';  ...
'-betas3*nsf7';  ...
'-betas4*nsf7';  ...
'-betas5*nsf7';  ...
'-betas6*nsf7';  ...
'(-scat81-(1-beta1)*chip1*nsf8*lambda)';  ...
'(-scat82-(1-beta1)*chip2*nsf8*lambda)';  ...
'(-scat83-(1-beta1)*chip3*nsf8*lambda)';  ...
'(-scat84-(1-beta1)*chip4*nsf8*lambda)';  ...
'(-scat85-(1-beta1)*chip5*nsf8*lambda)';  ...
'(-scat86-(1-beta1)*chip6*nsf8*lambda)';  ...
'(-scat87-(1-beta1)*chip7*nsf8*lambda)';  ...
'(rem8-(1-beta1)*chip8*nsf8*lambda)';  ...
'-betas1*nsf8';  ...
'-betas2*nsf8';  ...
'-betas3*nsf8';  ...
'-betas4*nsf8';  ...
'-betas5*nsf8';  ...
'-betas6*nsf8';  ...
'-chid1*lambda*lambdas1';  ...
'-chid2*lambda*lambdas1';  ...
'-chid3*lambda*lambdas1';  ...
'-chid4*lambda*lambdas1';  ...
'-chid5*lambda*lambdas1';  ...
'-chid6*lambda*lambdas1';  ...
'-chid7*lambda*lambdas1';  ...
'-chid8*lambda*lambdas1';  ...
'lambdas1';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'-chid1*lambda*lambdas2';  ...
'-chid2*lambda*lambdas2';  ...
'-chid3*lambda*lambdas2';  ...
'-chid4*lambda*lambdas2';  ...
'-chid5*lambda*lambdas2';  ...
'-chid6*lambda*lambdas2';  ...
'-chid7*lambda*lambdas2';  ...
'-chid8*lambda*lambdas2';  ...
'0';  ...
'lambdas2';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'-chid1*lambda*lambdas3';  ...
'-chid2*lambda*lambdas3';  ...
'-chid3*lambda*lambdas3';  ...
'-chid4*lambda*lambdas3';  ...
'-chid5*lambda*lambdas3';  ...
'-chid6*lambda*lambdas3';  ...
'-chid7*lambda*lambdas3';  ...
'-chid8*lambda*lambdas3';  ...
'0';  ...
'0';  ...
'lambdas3';  ...
'0';  ...
'0';  ...
'0';  ...
'-chid1*lambda*lambdas4';  ...
'-chid2*lambda*lambdas4';  ...
'-chid3*lambda*lambdas4';  ...
'-chid4*lambda*lambdas4';  ...
'-chid5*lambda*lambdas4';  ...
'-chid6*lambda*lambdas4';  ...
'-chid7*lambda*lambdas4';  ...
'-chid8*lambda*lambdas4';  ...
'0';  ...
'0';  ...
'0';  ...
'lambdas4';  ...
'0';  ...
'0';  ...
'-chid1*lambda*lambdas5';  ...
'-chid2*lambda*lambdas5';  ...
'-chid3*lambda*lambdas5';  ...
'-chid4*lambda*lambdas5';  ...
'-chid5*lambda*lambdas5';  ...
'-chid6*lambda*lambdas5';  ...
'-chid7*lambda*lambdas5';  ...
'-chid8*lambda*lambdas5';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'lambdas5';  ...
'0';  ...
'-chid1*lambda*lambdas6';  ...
'-chid2*lambda*lambdas6';  ...
'-chid3*lambda*lambdas6';  ...
'-chid4*lambda*lambdas6';  ...
'-chid5*lambda*lambdas6';  ...
'-chid6*lambda*lambdas6';  ...
'-chid7*lambda*lambdas6';  ...
'-chid8*lambda*lambdas6';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'lambdas6'});
model.component('mod1').physics('neutrondiffusion').feature('cfeq1').set('f', [0; 0; 0; 0; 0; 0; 0; 0; 0; 0; 0; 0; 0; 0]);
model.component('mod1').physics('neutrondiffusion').feature('cfeq1').set('da', {'invV1*eigenMode';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'invV2*eigenMode';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'invV3*eigenMode';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'invV4*eigenMode';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'invV5*eigenMode';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'invV6*eigenMode';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'invV7*eigenMode';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'invV8*eigenMode';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'eigenMode';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'eigenMode';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'eigenMode';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'eigenMode';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'eigenMode';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'eigenMode'});
model.component('mod1').physics('neutrondiffusion').feature('init1').set('Flux1', 1);
model.component('mod1').physics('neutrondiffusion').feature('init1').set('Flux2', 1);
model.component('mod1').physics('neutrondiffusion').feature('init1').set('Flux3', 1);
model.component('mod1').physics('neutrondiffusion').feature('init1').set('Flux4', 1);
model.component('mod1').physics('neutrondiffusion').feature('init1').set('Flux5', 1);
model.component('mod1').physics('neutrondiffusion').feature('init1').set('Flux6', 1);
model.component('mod1').physics('neutrondiffusion').feature('init1').set('Flux7', 1);
model.component('mod1').physics('neutrondiffusion').feature('init1').set('Flux8', 1);
model.component('mod1').physics('neutrondiffusion').feature('init1').set('Conc1', 1);
model.component('mod1').physics('neutrondiffusion').feature('init1').set('Conc2', 1);
model.component('mod1').physics('neutrondiffusion').feature('init1').set('Conc3', 1);
model.component('mod1').physics('neutrondiffusion').feature('init1').set('Conc4', 1);
model.component('mod1').physics('neutrondiffusion').feature('init1').set('Conc5', 1);
model.component('mod1').physics('neutrondiffusion').feature('init1').set('Conc6', 1);

model.frame('material1').sorder(1);

model.component('mod1').probe('dom1').label('Probe Pint');
model.component('mod1').probe('dom1').set('expr', 'Pint');
model.component('mod1').probe('dom1').set('unit', 'W*m');
model.component('mod1').probe('dom1').set('descr', 'integrated total core power');
model.component('mod1').probe('dom1').set('table', 'tbl1');
model.component('mod1').probe('dom1').set('window', 'window1');
model.component('mod1').probe('dom2').label('average_fuel_temp_probe');
model.component('mod1').probe('dom2').set('expr', 'T_fuel');
model.component('mod1').probe('dom2').set('unit', 'degC');
model.component('mod1').probe('dom2').set('descr', 'Temperature');
model.component('mod1').probe('dom2').set('table', 'tbl1');
model.component('mod1').probe('dom2').set('window', 'window2');
model.component('mod1').probe('dom3').label('average_flibe_temp_probe');
model.component('mod1').probe('dom3').set('expr', 'T_flibe');
model.component('mod1').probe('dom3').set('unit', 'degC');
model.component('mod1').probe('dom3').set('descr', 'Temperature');
model.component('mod1').probe('dom3').set('table', 'tbl1');
model.component('mod1').probe('dom3').set('window', 'window2');
model.component('mod1').probe('dom4').label('max fuel temp');
model.component('mod1').probe('dom4').set('type', 'maximum');
model.component('mod1').probe('dom4').set('probename', 'T_fuel_max');
model.component('mod1').probe('dom4').set('expr', 'T_fuel');
model.component('mod1').probe('dom4').set('unit', 'degC');
model.component('mod1').probe('dom4').set('descr', 'Temperature');
model.component('mod1').probe('dom4').set('table', 'tbl1');
model.component('mod1').probe('dom4').set('window', 'window3');
model.component('mod1').probe('dom5').label('max flibe temp');
model.component('mod1').probe('dom5').set('type', 'maximum');
model.component('mod1').probe('dom5').set('probename', 'T_flibe_max');
model.component('mod1').probe('dom5').set('expr', 'T_flibe');
model.component('mod1').probe('dom5').set('unit', 'degC');
model.component('mod1').probe('dom5').set('descr', 'Temperature');
model.component('mod1').probe('dom5').set('table', 'tbl1');
model.component('mod1').probe('dom5').set('window', 'window3');

model.component('mod1').physics('ht3').feature('solid1').set('k_mat', 'userdef');
model.component('mod1').physics('ht3').feature('solid1').set('rho_mat', 'userdef');
model.component('mod1').physics('ht3').feature('solid1').set('Cp_mat', 'userdef');

model.study.create('std2');
model.study('std2').create('eigv', 'Eigenvalue');
model.study('std2').feature('eigv').set('activate', {'br' 'off' 'ht' 'off' 'ht3' 'off' 'neutrondiffusion' 'on'});

model.sol.create('sol16');
model.sol('sol16').study('std2');
model.sol('sol16').attach('std2');
model.sol('sol16').create('st1', 'StudyStep');
model.sol('sol16').create('v1', 'Variables');
model.sol('sol16').create('e1', 'Eigenvalue');

model.result.create('pg1', 'PlotGroup3D');
model.result('pg1').create('slc1', 'Slice');

model.component('mod1').probe('dom1').genResult([]);
model.component('mod1').probe('dom2').genResult([]);
model.component('mod1').probe('dom3').genResult([]);
model.component('mod1').probe('dom4').genResult([]);
model.component('mod1').probe('dom5').genResult([]);

model.study('std2').label('Eigenvalue study');
model.study('std2').feature('eigv').set('neigs', 1);
model.study('std2').feature('eigv').set('shift', '1');
model.study('std2').feature('eigv').set('shiftactive', true);
model.study('std2').feature('eigv').set('useinitsol', true);
model.study('std2').feature('eigv').set('neigsactive', false);

model.sol('sol16').attach('std2');
model.sol('sol16').feature('e1').set('neigs', 1);
model.sol('sol16').feature('e1').set('shift', '1');
model.sol('sol16').feature('e1').set('maxeigit', 100);
model.sol('sol16').feature('e1').set('krylovdim', 10);
model.sol('sol16').feature('e1').set('keeplog', true);
model.sol('sol16').runAll;

model.result.dataset.remove('dset2');
model.result('pg1').feature('slc1').set('expr', 'Pdensity');
model.result('pg1').feature('slc1').set('unit', 'W/m^3');
model.result('pg1').feature('slc1').set('descr', 'power density');
model.result('pg1').feature('slc1').set('quickxnumber', 1);
model.result('pg1').feature('slc1').set('resolution', 'normal');
model.result.remove('pg2');
model.result.remove('pg3');
model.result.remove('pg4');

out = model;
