function out = model
%
% Untitled.m
%
% Model exported on Jul 21 2017, 15:29 by COMSOL 5.2.1.229.

import com.comsol.model.*
import com.comsol.model.util.*

model = ModelUtil.create('Model');

model.modelPath('D:\diffusion_models\model\m_files');

model.comments(['Untitled\n\n']);

model.param.set('U', '0.000055[m/s]', 'upwards velocity');
model.param.set('Po', '0 [atm]', 'pressure');
model.param.set('Ochuteout', '0.8', 'defueling chute pressure multiplier');
model.param.set('T0_flibe', '600[degC]', 'inlet temperature');
model.param.set('T0_fuel', '800[degC]', 'initial temperature');
model.param.set('Houtlet', '1.5 [m]', 'outlet region height overlapping with active core region');
model.param.set('Hinlet', '1.501 [m]', 'inlet region height overlapping with active core region');
model.param.set('decay', '1', 'decay heat fraction of total power');
model.param.set('Qcore', '249[MW]', 'total core power');
model.param.set('Vcore', '16.99151[m^3]', 'total core volume');
model.param.set('Q', 'Qcore/Vcore[MW/m^3]', 'core average power density');
model.param.set('Qmax', 'Qcore*1.41/Vcore[MW/m^3]', 'core peak power density');
model.param.set('Vplug', '11[m^3]');
model.param.set('Qplug', 'Qcore/Vplug');
model.param.set('mf', '1', 'fueling chute mass flowrate, fraction of total');
model.param.set('bottomInletFraction', '0.3', 'fraction of mass flow rate going through the bottom inlet');
model.param.set('Pci0', '1.3', 'center inlet pressure head (m) (boundary condition)');
model.param.set('Pcb0', 'Pci0+.2', 'bottom inlet pressure head(boundary condition)');
model.param.set('deltaHCenterInlet', '1.5', 'width of the center inlet opening');

model.modelNode.create('mod1');

model.geom.create('geom1', 3);

model.modelNode('mod1').label('FHR');
model.modelNode('mod1').defineLocalCoord(false);

model.func.create('pw3', 'Piecewise');
model.func.create('rm1', 'Ramp');
model.func.create('an1', 'Analytic');
model.func.create('an3', 'Analytic');
model.func.create('an4', 'Analytic');
model.func.create('an5', 'Analytic');
model.func.create('an6', 'Analytic');
model.func.create('an9', 'Analytic');
model.func('pw3').active(false);
model.func('pw3').label('Outer Reflector Radius');
model.func('pw3').set('pieces', {'0' '1.5' '1.6';  ...
'1.5' '2.8656' '1.60+(2.40-1.60)*(z-1.5)/(2.8656-1.5)';  ...
'2.8656' '5.8656' '2.40';  ...
'5.8656' '7.0356' '2.40-(2.40-1.20)*(z-5.8656)/(7.0356-5.8656)';  ...
'7.0356' '8.5656' '1.20'});
model.func('pw3').set('arg', 'z');
model.func('pw3').set('funcname', 'OR');
model.func('rm1').set('funcname', 'Orif');
model.func('rm1').set('smoothloc', true);
model.func('rm1').set('location', '5.8656-Hinlet');
model.func('rm1').set('slope', '-1/(7.0356-5.8656-Hinlet)');
model.func('rm1').set('smoothcutoff', true);
model.func('rm1').set('cutoffactive', true);
model.func('an1').label('Density');
model.func('an1').set('args', {'T'});
model.func('an1').set('argunit', 'K');
model.func('an1').set('expr', '-0.49*(T-273.15)+2281.63');
model.func('an1').set('plotargs', {'T' '0' '2000'});
model.func('an1').set('funcname', 'rhoLf');
model.func('an1').set('fununit', 'kg/m^3');
model.func('an3').label('FLiBe Thermal Conductivity');
model.func('an3').set('args', {'T'});
model.func('an3').set('argunit', 'K');
model.func('an3').set('expr', '0.7662+(0.0005*(T-273.15))');
model.func('an3').set('plotargs', {'T' '600' '800'});
model.func('an3').set('funcname', 'kLt');
model.func('an3').set('fununit', 'W/(m*K)');
model.func('an4').label('FLiBe Density');
model.func('an4').set('args', {'T'});
model.func('an4').set('argunit', 'K');
model.func('an4').set('expr', '2282-0.49*(T-273.15)');
model.func('an4').set('plotargs', {'T' '600' '800'});
model.func('an4').set('funcname', 'rhoLt');
model.func('an4').set('fununit', 'kg/m^3');
model.func('an5').label('FLiBe Heat Capacity');
model.func('an5').set('args', {'T'});
model.func('an5').set('argunit', 'K');
model.func('an5').set('expr', '2415.78');
model.func('an5').set('plotargs', {'T' '600' '800'});
model.func('an5').set('funcname', 'CpLt');
model.func('an5').set('fununit', 'J/(kg*K)');
model.func('an6').label('FLiBe Dynamic Viscosity');
model.func('an6').set('args', {'T'});
model.func('an6').set('argunit', 'K');
model.func('an6').set('expr', '((4.638)*10^5)/((T-273.15)^2.79)');
model.func('an6').set('plotargs', {'T' '600' '800'});
model.func('an6').set('funcname', 'muLt');
model.func('an6').set('fununit', 'Pa*s');
model.func('an9').label('Inlet Velocity');
model.func('an9').set('args', {'z' 'z0'});
model.func('an9').set('expr', '(1-bottomInletFraction)/0.54*0.06*(z^2 - z0)');
model.func('an9').set('plotargs', {'z' '0' '1'; 'z0' '0' '1'});
model.func('an9').set('funcname', 'vel_in');

model.mesh.create('mesh1', 'geom1');

model.geom('geom1').create('wp1', 'WorkPlane');
model.geom('geom1').feature('wp1').set('quickplane', 'xz');
model.geom('geom1').feature('wp1').set('unite', 'on');
model.geom('geom1').feature('wp1').geom.create('pol1', 'Polygon');
model.geom('geom1').feature('wp1').geom.feature('pol1').label('center_ref');
model.geom('geom1').feature('wp1').geom.feature('pol1').set('source', 'table');
model.geom('geom1').feature('wp1').geom.feature('pol1').set('table', {'0' '0.416';  ...
'0.45' '0.416';  ...
'0.45' '1.275';  ...
'0.35' '1.4482';  ...
'0.35' '4.305';  ...
'0.71' '4.9285';  ...
'0.71' '5.7285';  ...
'0' '5.7285'});
model.geom('geom1').feature('wp1').geom.create('pol2', 'Polygon');
model.geom('geom1').feature('wp1').geom.feature('pol2').label('fuel');
model.geom('geom1').feature('wp1').geom.feature('pol2').set('source', 'table');
model.geom('geom1').feature('wp1').geom.feature('pol2').set('table', {'0.45' '0.416';  ...
'0.7541' '0.416';  ...
'1.05' '1.805';  ...
'1.05' '4.305';  ...
'0.8' '4.9285';  ...
'0.8' '5.7285';  ...
'0.71' '5.7285';  ...
'0.71' '4.9285';  ...
'0.35' '4.305';  ...
'0.35' '1.4482';  ...
'0.45' '1.275'});
model.geom('geom1').feature('wp1').geom.create('pol3', 'Polygon');
model.geom('geom1').feature('wp1').geom.feature('pol3').label('blanket');
model.geom('geom1').feature('wp1').geom.feature('pol3').set('source', 'table');
model.geom('geom1').feature('wp1').geom.feature('pol3').set('table', {'0.7541' '0.416';  ...
'0.8574' '0.416';  ...
'1.25' '1.805';  ...
'1.25' '4.305';  ...
'0.89' '4.9285';  ...
'0.89' '5.7285';  ...
'0.8' '5.7285';  ...
'0.8' '4.9285';  ...
'1.05' '4.305';  ...
'1.05' '1.805';  ...
'0.7541' '0.416';  ...
'0.45' '0.416'});
model.geom('geom1').feature('wp1').geom.create('pol4', 'Polygon');
model.geom('geom1').feature('wp1').geom.feature('pol4').label('outer_ref');
model.geom('geom1').feature('wp1').geom.feature('pol4').set('source', 'table');
model.geom('geom1').feature('wp1').geom.feature('pol4').set('table', {'0.8574' '0.416';  ...
'1.65' '0.416';  ...
'1.65' '5.7285';  ...
'1.35' '5.7285';  ...
'1.35' '4.9285';  ...
'1.35' '4.305';  ...
'1.35' '1.805';  ...
'1.25' '1.805';  ...
'0.8574' '0.416';  ...
'0.7541' '0.416'});
model.geom('geom1').feature('wp1').geom.create('r1', 'Rectangle');
model.geom('geom1').feature('wp1').geom.feature('r1').label('core_barrel');
model.geom('geom1').feature('wp1').geom.feature('r1').set('size', {'0.03' '5.7285-0.416'});
model.geom('geom1').feature('wp1').geom.feature('r1').set('pos', {'1.65' '0.416'});
model.geom('geom1').feature('wp1').geom.create('r2', 'Rectangle');
model.geom('geom1').feature('wp1').geom.feature('r2').label('downcomer');
model.geom('geom1').feature('wp1').geom.feature('r2').set('size', {'0.028' '5.7285-0.416'});
model.geom('geom1').feature('wp1').geom.feature('r2').set('pos', {'1.68' '0.416'});
model.geom('geom1').feature('wp1').geom.create('r3', 'Rectangle');
model.geom('geom1').feature('wp1').geom.feature('r3').label('vessel');
model.geom('geom1').feature('wp1').geom.feature('r3').set('size', {'0.06' '5.7285-0.416'});
model.geom('geom1').feature('wp1').geom.feature('r3').set('pos', {'1.708' '0.416'});
model.geom('geom1').feature('wp1').geom.create('r4', 'Rectangle');
model.geom('geom1').feature('wp1').geom.feature('r4').label('inlet');
model.geom('geom1').feature('wp1').geom.feature('r4').set('size', {'0.01' '1'});
model.geom('geom1').feature('wp1').geom.feature('r4').set('pos', {'0.35-0.01' '1.5'});
model.geom('geom1').feature('wp1').geom.create('r5', 'Rectangle');
model.geom('geom1').feature('wp1').geom.feature('r5').label('outlet_low');
model.geom('geom1').feature('wp1').geom.feature('r5').set('size', {'0.05' '0.5'});
model.geom('geom1').feature('wp1').geom.feature('r5').set('pos', {'1.25' '4.305-0.5'});
model.geom('geom1').feature('wp1').geom.create('pol5', 'Polygon');
model.geom('geom1').feature('wp1').geom.feature('pol5').label('outlet_high');
model.geom('geom1').feature('wp1').geom.feature('pol5').set('source', 'table');
model.geom('geom1').feature('wp1').geom.feature('pol5').set('table', {'0.89' '4.9285'; '1.25' '4.305'; '1.3' '4.305'; '0.94' '4.9285'});
model.geom('geom1').feature('wp1').geom.create('pol6', 'Polygon');
model.geom('geom1').feature('wp1').geom.feature('pol6').label('ORCC');
model.geom('geom1').feature('wp1').geom.feature('pol6').set('source', 'table');
model.geom('geom1').feature('wp1').geom.feature('pol6').set('table', {'1.25' '1.805';  ...
'1.35' '1.805';  ...
'1.35' '5.7285';  ...
'0.89' '5.7285';  ...
'0.89' '4.9285';  ...
'1.25' '4.305'});
model.geom('geom1').create('rev1', 'Revolve');
model.geom('geom1').feature('rev1').set('angtype', 'full');
model.geom('geom1').feature('rev1').selection('input').set({'wp1'});
model.geom('geom1').create('wp2', 'WorkPlane');
model.geom('geom1').feature('wp2').set('quickz', '0.416');
model.geom('geom1').feature('wp2').set('unite', 'on');
model.geom('geom1').feature('wp2').geom.create('c1', 'Circle');
model.geom('geom1').feature('wp2').geom.feature('c1').set('selresult', 'on');
model.geom('geom1').feature('wp2').geom.feature('c1').set('r', '0.05');
model.geom('geom1').feature('wp2').geom.feature('c1').set('pos', {'0.275' '0'});
model.geom('geom1').feature('wp2').geom.create('c2', 'Circle');
model.geom('geom1').feature('wp2').geom.feature('c2').set('selresult', 'on');
model.geom('geom1').feature('wp2').geom.feature('c2').set('r', '0.05');
model.geom('geom1').feature('wp2').geom.feature('c2').set('pos', {'-0.275' '0'});
model.geom('geom1').feature('wp2').geom.create('c3', 'Circle');
model.geom('geom1').feature('wp2').geom.feature('c3').set('selresult', 'on');
model.geom('geom1').feature('wp2').geom.feature('c3').set('r', '0.05');
model.geom('geom1').feature('wp2').geom.feature('c3').set('pos', {'0' '-0.275'});
model.geom('geom1').feature('wp2').geom.create('c4', 'Circle');
model.geom('geom1').feature('wp2').geom.feature('c4').set('selresult', 'on');
model.geom('geom1').feature('wp2').geom.feature('c4').set('r', '0.05');
model.geom('geom1').feature('wp2').geom.feature('c4').set('pos', {'0' '0.275'});
model.geom('geom1').feature('wp2').geom.create('c5', 'Circle');
model.geom('geom1').feature('wp2').geom.feature('c5').set('selresult', 'on');
model.geom('geom1').feature('wp2').geom.feature('c5').set('r', '0.05');
model.geom('geom1').feature('wp2').geom.feature('c5').set('pos', {'-0.19445436' '0.19445436'});
model.geom('geom1').feature('wp2').geom.create('c6', 'Circle');
model.geom('geom1').feature('wp2').geom.feature('c6').set('selresult', 'on');
model.geom('geom1').feature('wp2').geom.feature('c6').set('r', '0.05');
model.geom('geom1').feature('wp2').geom.feature('c6').set('pos', {'0.19445436' '0.19445436'});
model.geom('geom1').feature('wp2').geom.create('c7', 'Circle');
model.geom('geom1').feature('wp2').geom.feature('c7').set('selresult', 'on');
model.geom('geom1').feature('wp2').geom.feature('c7').set('r', '0.05');
model.geom('geom1').feature('wp2').geom.feature('c7').set('pos', {'-0.19445436' '-0.19445436'});
model.geom('geom1').feature('wp2').geom.create('c8', 'Circle');
model.geom('geom1').feature('wp2').geom.feature('c8').set('selresult', 'on');
model.geom('geom1').feature('wp2').geom.feature('c8').set('r', '0.05');
model.geom('geom1').feature('wp2').geom.feature('c8').set('pos', {'0.19445436' '-0.19445436'});
model.geom('geom1').create('ext1', 'Extrude');
model.geom('geom1').feature('ext1').label('contro_rod_channels');
model.geom('geom1').feature('ext1').setIndex('distance', '5.7285-0.416', 0);
model.geom('geom1').feature('ext1').selection('input').set({'wp2'});
model.geom('geom1').run;
model.geom('geom1').run('fin');

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
model.variable.create('var4');
model.variable('var4').model('mod1');
model.variable('var4').set('rho_fuel', '1810[kg/m^3]', 'sinap ppt(Overview of TMSR-SF1 & SF0)');
model.variable('var4').set('k_fuel', '0[W/m/K]');
model.variable('var4').set('cp_fuel', '1744[J/kg/K]', 'graphite fuel heat capacity');
model.variable('var4').selection.geom('geom1', 3);
model.variable('var4').selection.set([9]);
model.variable.create('var_xs_inlet');
model.variable('var_xs_inlet').model('mod1');
model.variable('var_xs_inlet').set('beta1', '5.38313000e-03');
model.variable('var_xs_inlet').set('betas1', '1.65619000e-04');
model.variable('var_xs_inlet').set('betas2', '9.84868000e-04');
model.variable('var_xs_inlet').set('betas3', '8.77782000e-04');
model.variable('var_xs_inlet').set('betas4', '2.37174000e-03');
model.variable('var_xs_inlet').set('betas5', '7.31647000e-04');
model.variable('var_xs_inlet').set('betas6', '2.51474000e-04');
model.variable('var_xs_inlet').set('chid1', '0.00000000e+00');
model.variable('var_xs_inlet').set('chid2', '0.00000000e+00');
model.variable('var_xs_inlet').set('chid3', '0.00000000e+00');
model.variable('var_xs_inlet').set('chid4', '0.00000000e+00');
model.variable('var_xs_inlet').set('chid5', '0.00000000e+00');
model.variable('var_xs_inlet').set('chid6', '0.00000000e+00');
model.variable('var_xs_inlet').set('chid7', '0.00000000e+00');
model.variable('var_xs_inlet').set('chid8', '0.00000000e+00');
model.variable('var_xs_inlet').set('chip1', '0.00000000e+00');
model.variable('var_xs_inlet').set('chip2', '0.00000000e+00');
model.variable('var_xs_inlet').set('chip3', '0.00000000e+00');
model.variable('var_xs_inlet').set('chip4', '0.00000000e+00');
model.variable('var_xs_inlet').set('chip5', '0.00000000e+00');
model.variable('var_xs_inlet').set('chip6', '0.00000000e+00');
model.variable('var_xs_inlet').set('chip7', '0.00000000e+00');
model.variable('var_xs_inlet').set('chip8', '0.00000000e+00');
model.variable('var_xs_inlet').set('chit1', '0.00000000e+00');
model.variable('var_xs_inlet').set('chit2', '0.00000000e+00');
model.variable('var_xs_inlet').set('chit3', '0.00000000e+00');
model.variable('var_xs_inlet').set('chit4', '0.00000000e+00');
model.variable('var_xs_inlet').set('chit5', '0.00000000e+00');
model.variable('var_xs_inlet').set('chit6', '0.00000000e+00');
model.variable('var_xs_inlet').set('chit7', '0.00000000e+00');
model.variable('var_xs_inlet').set('chit8', '0.00000000e+00');
model.variable('var_xs_inlet').set('diff11', '1.85614000e+00[cm]');
model.variable('var_xs_inlet').set('diff12', '8.71153000e-01[cm]');
model.variable('var_xs_inlet').set('diff13', '6.59394000e-01[cm]');
model.variable('var_xs_inlet').set('diff14', '6.56811000e-01[cm]');
model.variable('var_xs_inlet').set('diff15', '6.53874000e-01[cm]');
model.variable('var_xs_inlet').set('diff16', '6.46254000e-01[cm]');
model.variable('var_xs_inlet').set('diff17', '6.19984000e-01[cm]');
model.variable('var_xs_inlet').set('diff18', '5.53942000e-01[cm]');
model.variable('var_xs_inlet').set('fiss1', '0.00000000e+00[1/cm]');
model.variable('var_xs_inlet').set('fiss2', '0.00000000e+00[1/cm]');
model.variable('var_xs_inlet').set('fiss3', '0.00000000e+00[1/cm]');
model.variable('var_xs_inlet').set('fiss4', '0.00000000e+00[1/cm]');
model.variable('var_xs_inlet').set('fiss5', '0.00000000e+00[1/cm]');
model.variable('var_xs_inlet').set('fiss6', '0.00000000e+00[1/cm]');
model.variable('var_xs_inlet').set('fiss7', '0.00000000e+00[1/cm]');
model.variable('var_xs_inlet').set('fiss8', '0.00000000e+00[1/cm]');
model.variable('var_xs_inlet').set('invV1', '4.82183000e-10[s/cm]');
model.variable('var_xs_inlet').set('invV2', '1.99061000e-09[s/cm]');
model.variable('var_xs_inlet').set('invV3', '3.36207000e-08[s/cm]');
model.variable('var_xs_inlet').set('invV4', '2.07746000e-07[s/cm]');
model.variable('var_xs_inlet').set('invV5', '7.21900000e-07[s/cm]');
model.variable('var_xs_inlet').set('invV6', '1.37728000e-06[s/cm]');
model.variable('var_xs_inlet').set('invV7', '2.16809000e-06[s/cm]');
model.variable('var_xs_inlet').set('invV8', '4.15964000e-06[s/cm]');
model.variable('var_xs_inlet').set('kappa1', '0.00000000e+00[MeV]');
model.variable('var_xs_inlet').set('kappa2', '0.00000000e+00[MeV]');
model.variable('var_xs_inlet').set('kappa3', '0.00000000e+00[MeV]');
model.variable('var_xs_inlet').set('kappa4', '0.00000000e+00[MeV]');
model.variable('var_xs_inlet').set('kappa5', '0.00000000e+00[MeV]');
model.variable('var_xs_inlet').set('kappa6', '0.00000000e+00[MeV]');
model.variable('var_xs_inlet').set('kappa7', '0.00000000e+00[MeV]');
model.variable('var_xs_inlet').set('kappa8', '0.00000000e+00[MeV]');
model.variable('var_xs_inlet').set('lambdas1', '1.25423000e-02[1/s]');
model.variable('var_xs_inlet').set('lambdas2', '3.13254000e-02[1/s]');
model.variable('var_xs_inlet').set('lambdas3', '1.09681000e-01[1/s]');
model.variable('var_xs_inlet').set('lambdas4', '3.16567000e-01[1/s]');
model.variable('var_xs_inlet').set('lambdas5', '1.29511000e+00[1/s]');
model.variable('var_xs_inlet').set('lambdas6', '8.02767000e+00[1/s]');
model.variable('var_xs_inlet').set('nsf1', '0.00000000e+00[1/cm]');
model.variable('var_xs_inlet').set('nsf2', '0.00000000e+00[1/cm]');
model.variable('var_xs_inlet').set('nsf3', '0.00000000e+00[1/cm]');
model.variable('var_xs_inlet').set('nsf4', '0.00000000e+00[1/cm]');
model.variable('var_xs_inlet').set('nsf5', '0.00000000e+00[1/cm]');
model.variable('var_xs_inlet').set('nsf6', '0.00000000e+00[1/cm]');
model.variable('var_xs_inlet').set('nsf7', '0.00000000e+00[1/cm]');
model.variable('var_xs_inlet').set('nsf8', '0.00000000e+00[1/cm]');
model.variable('var_xs_inlet').set('diff21', '1.25457572e+00[cm]');
model.variable('var_xs_inlet').set('diff22', '5.85019218e-01[cm]');
model.variable('var_xs_inlet').set('diff23', '4.79925899e-01[cm]');
model.variable('var_xs_inlet').set('diff24', '4.78282519e-01[cm]');
model.variable('var_xs_inlet').set('diff25', '4.77438890e-01[cm]');
model.variable('var_xs_inlet').set('diff26', '4.75198719e-01[cm]');
model.variable('var_xs_inlet').set('diff27', '4.65455689e-01[cm]');
model.variable('var_xs_inlet').set('diff28', '4.39733326e-01[cm]');
model.variable('var_xs_inlet').set('rem1', '4.50475000e-02[1/cm]');
model.variable('var_xs_inlet').set('rem2', '2.23752000e-02[1/cm]');
model.variable('var_xs_inlet').set('rem3', '1.50617000e-02[1/cm]');
model.variable('var_xs_inlet').set('rem4', '3.40871000e-02[1/cm]');
model.variable('var_xs_inlet').set('rem5', '7.95564000e-02[1/cm]');
model.variable('var_xs_inlet').set('rem6', '1.02025000e-01[1/cm]');
model.variable('var_xs_inlet').set('rem7', '8.66308000e-02[1/cm]');
model.variable('var_xs_inlet').set('rem8', '1.06171000e-01[1/cm]');
model.variable('var_xs_inlet').set('scat11', '1.59917000e-01[1/cm]');
model.variable('var_xs_inlet').set('scat12', '4.49322000e-02[1/cm]');
model.variable('var_xs_inlet').set('scat13', '1.70583000e-06[1/cm]');
model.variable('var_xs_inlet').set('scat14', '0.00000000e+00[1/cm]');
model.variable('var_xs_inlet').set('scat15', '0.00000000e+00[1/cm]');
model.variable('var_xs_inlet').set('scat16', '0.00000000e+00[1/cm]');
model.variable('var_xs_inlet').set('scat17', '0.00000000e+00[1/cm]');
model.variable('var_xs_inlet').set('scat18', '0.00000000e+00[1/cm]');
model.variable('var_xs_inlet').set('scat21', '0.00000000e+00[1/cm]');
model.variable('var_xs_inlet').set('scat22', '4.17171000e-01[1/cm]');
model.variable('var_xs_inlet').set('scat23', '2.23751000e-02[1/cm]');
model.variable('var_xs_inlet').set('scat24', '0.00000000e+00[1/cm]');
model.variable('var_xs_inlet').set('scat25', '0.00000000e+00[1/cm]');
model.variable('var_xs_inlet').set('scat26', '0.00000000e+00[1/cm]');
model.variable('var_xs_inlet').set('scat27', '0.00000000e+00[1/cm]');
model.variable('var_xs_inlet').set('scat28', '0.00000000e+00[1/cm]');
model.variable('var_xs_inlet').set('scat31', '0.00000000e+00[1/cm]');
model.variable('var_xs_inlet').set('scat32', '0.00000000e+00[1/cm]');
model.variable('var_xs_inlet').set('scat33', '5.20735000e-01[1/cm]');
model.variable('var_xs_inlet').set('scat34', '1.50584000e-02[1/cm]');
model.variable('var_xs_inlet').set('scat35', '0.00000000e+00[1/cm]');
model.variable('var_xs_inlet').set('scat36', '0.00000000e+00[1/cm]');
model.variable('var_xs_inlet').set('scat37', '0.00000000e+00[1/cm]');
model.variable('var_xs_inlet').set('scat38', '0.00000000e+00[1/cm]');
model.variable('var_xs_inlet').set('scat41', '0.00000000e+00[1/cm]');
model.variable('var_xs_inlet').set('scat42', '0.00000000e+00[1/cm]');
model.variable('var_xs_inlet').set('scat43', '0.00000000e+00[1/cm]');
model.variable('var_xs_inlet').set('scat44', '5.03551000e-01[1/cm]');
model.variable('var_xs_inlet').set('scat45', '3.40674000e-02[1/cm]');
model.variable('var_xs_inlet').set('scat46', '0.00000000e+00[1/cm]');
model.variable('var_xs_inlet').set('scat47', '0.00000000e+00[1/cm]');
model.variable('var_xs_inlet').set('scat48', '0.00000000e+00[1/cm]');
model.variable('var_xs_inlet').set('scat51', '0.00000000e+00[1/cm]');
model.variable('var_xs_inlet').set('scat52', '0.00000000e+00[1/cm]');
model.variable('var_xs_inlet').set('scat53', '0.00000000e+00[1/cm]');
model.variable('var_xs_inlet').set('scat54', '2.82806000e-04[1/cm]');
model.variable('var_xs_inlet').set('scat55', '4.59032000e-01[1/cm]');
model.variable('var_xs_inlet').set('scat56', '7.79942000e-02[1/cm]');
model.variable('var_xs_inlet').set('scat57', '1.20968000e-03[1/cm]');
model.variable('var_xs_inlet').set('scat58', '0.00000000e+00[1/cm]');
model.variable('var_xs_inlet').set('scat61', '0.00000000e+00[1/cm]');
model.variable('var_xs_inlet').set('scat62', '0.00000000e+00[1/cm]');
model.variable('var_xs_inlet').set('scat63', '0.00000000e+00[1/cm]');
model.variable('var_xs_inlet').set('scat64', '0.00000000e+00[1/cm]');
model.variable('var_xs_inlet').set('scat65', '1.33063000e-02[1/cm]');
model.variable('var_xs_inlet').set('scat66', '4.39102000e-01[1/cm]');
model.variable('var_xs_inlet').set('scat67', '8.41341000e-02[1/cm]');
model.variable('var_xs_inlet').set('scat68', '4.45283000e-03[1/cm]');
model.variable('var_xs_inlet').set('scat71', '0.00000000e+00[1/cm]');
model.variable('var_xs_inlet').set('scat72', '0.00000000e+00[1/cm]');
model.variable('var_xs_inlet').set('scat73', '0.00000000e+00[1/cm]');
model.variable('var_xs_inlet').set('scat74', '0.00000000e+00[1/cm]');
model.variable('var_xs_inlet').set('scat75', '1.59102000e-04[1/cm]');
model.variable('var_xs_inlet').set('scat76', '5.85496000e-02[1/cm]');
model.variable('var_xs_inlet').set('scat77', '4.65823000e-01[1/cm]');
model.variable('var_xs_inlet').set('scat78', '2.77152000e-02[1/cm]');
model.variable('var_xs_inlet').set('scat81', '0.00000000e+00[1/cm]');
model.variable('var_xs_inlet').set('scat82', '0.00000000e+00[1/cm]');
model.variable('var_xs_inlet').set('scat83', '0.00000000e+00[1/cm]');
model.variable('var_xs_inlet').set('scat84', '0.00000000e+00[1/cm]');
model.variable('var_xs_inlet').set('scat85', '0.00000000e+00[1/cm]');
model.variable('var_xs_inlet').set('scat86', '1.00047000e-02[1/cm]');
model.variable('var_xs_inlet').set('scat87', '9.57710000e-02[1/cm]');
model.variable('var_xs_inlet').set('scat88', '4.78598000e-01[1/cm]');
model.variable('var_xs_inlet').set('tot1', '2.04964000e-01[1/cm]');
model.variable('var_xs_inlet').set('tot2', '4.39546000e-01[1/cm]');
model.variable('var_xs_inlet').set('tot3', '5.35797000e-01[1/cm]');
model.variable('var_xs_inlet').set('tot4', '5.37638000e-01[1/cm]');
model.variable('var_xs_inlet').set('tot5', '5.38588000e-01[1/cm]');
model.variable('var_xs_inlet').set('tot6', '5.41127000e-01[1/cm]');
model.variable('var_xs_inlet').set('tot7', '5.52454000e-01[1/cm]');
model.variable('var_xs_inlet').set('tot8', '5.84770000e-01[1/cm]');
model.variable('var_xs_inlet').selection.geom('geom1', 3);
model.variable('var_xs_inlet').selection.set([11]);
model.variable.create('var_xs_outlet_high');
model.variable('var_xs_outlet_high').model('mod1');
model.variable('var_xs_outlet_high').set('beta1', '5.38313000e-03');
model.variable('var_xs_outlet_high').set('betas1', '1.65619000e-04');
model.variable('var_xs_outlet_high').set('betas2', '9.84868000e-04');
model.variable('var_xs_outlet_high').set('betas3', '8.77782000e-04');
model.variable('var_xs_outlet_high').set('betas4', '2.37174000e-03');
model.variable('var_xs_outlet_high').set('betas5', '7.31647000e-04');
model.variable('var_xs_outlet_high').set('betas6', '2.51474000e-04');
model.variable('var_xs_outlet_high').set('chid1', '0.00000000e+00');
model.variable('var_xs_outlet_high').set('chid2', '0.00000000e+00');
model.variable('var_xs_outlet_high').set('chid3', '0.00000000e+00');
model.variable('var_xs_outlet_high').set('chid4', '0.00000000e+00');
model.variable('var_xs_outlet_high').set('chid5', '0.00000000e+00');
model.variable('var_xs_outlet_high').set('chid6', '0.00000000e+00');
model.variable('var_xs_outlet_high').set('chid7', '0.00000000e+00');
model.variable('var_xs_outlet_high').set('chid8', '0.00000000e+00');
model.variable('var_xs_outlet_high').set('chip1', '0.00000000e+00');
model.variable('var_xs_outlet_high').set('chip2', '0.00000000e+00');
model.variable('var_xs_outlet_high').set('chip3', '0.00000000e+00');
model.variable('var_xs_outlet_high').set('chip4', '0.00000000e+00');
model.variable('var_xs_outlet_high').set('chip5', '0.00000000e+00');
model.variable('var_xs_outlet_high').set('chip6', '0.00000000e+00');
model.variable('var_xs_outlet_high').set('chip7', '0.00000000e+00');
model.variable('var_xs_outlet_high').set('chip8', '0.00000000e+00');
model.variable('var_xs_outlet_high').set('chit1', '0.00000000e+00');
model.variable('var_xs_outlet_high').set('chit2', '0.00000000e+00');
model.variable('var_xs_outlet_high').set('chit3', '0.00000000e+00');
model.variable('var_xs_outlet_high').set('chit4', '0.00000000e+00');
model.variable('var_xs_outlet_high').set('chit5', '0.00000000e+00');
model.variable('var_xs_outlet_high').set('chit6', '0.00000000e+00');
model.variable('var_xs_outlet_high').set('chit7', '0.00000000e+00');
model.variable('var_xs_outlet_high').set('chit8', '0.00000000e+00');
model.variable('var_xs_outlet_high').set('diff11', '1.91619000e+00[cm]');
model.variable('var_xs_outlet_high').set('diff12', '8.52620000e-01[cm]');
model.variable('var_xs_outlet_high').set('diff13', '6.58855000e-01[cm]');
model.variable('var_xs_outlet_high').set('diff14', '6.56787000e-01[cm]');
model.variable('var_xs_outlet_high').set('diff15', '6.53066000e-01[cm]');
model.variable('var_xs_outlet_high').set('diff16', '6.46131000e-01[cm]');
model.variable('var_xs_outlet_high').set('diff17', '6.19867000e-01[cm]');
model.variable('var_xs_outlet_high').set('diff18', '5.53871000e-01[cm]');
model.variable('var_xs_outlet_high').set('fiss1', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_high').set('fiss2', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_high').set('fiss3', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_high').set('fiss4', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_high').set('fiss5', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_high').set('fiss6', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_high').set('fiss7', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_high').set('fiss8', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_high').set('invV1', '4.77444000e-10[s/cm]');
model.variable('var_xs_outlet_high').set('invV2', '2.09271000e-09[s/cm]');
model.variable('var_xs_outlet_high').set('invV3', '3.86027000e-08[s/cm]');
model.variable('var_xs_outlet_high').set('invV4', '2.12911000e-07[s/cm]');
model.variable('var_xs_outlet_high').set('invV5', '8.10779000e-07[s/cm]');
model.variable('var_xs_outlet_high').set('invV6', '1.38403000e-06[s/cm]');
model.variable('var_xs_outlet_high').set('invV7', '2.17026000e-06[s/cm]');
model.variable('var_xs_outlet_high').set('invV8', '4.16034000e-06[s/cm]');
model.variable('var_xs_outlet_high').set('kappa1', '0.00000000e+00[MeV]');
model.variable('var_xs_outlet_high').set('kappa2', '0.00000000e+00[MeV]');
model.variable('var_xs_outlet_high').set('kappa3', '0.00000000e+00[MeV]');
model.variable('var_xs_outlet_high').set('kappa4', '0.00000000e+00[MeV]');
model.variable('var_xs_outlet_high').set('kappa5', '0.00000000e+00[MeV]');
model.variable('var_xs_outlet_high').set('kappa6', '0.00000000e+00[MeV]');
model.variable('var_xs_outlet_high').set('kappa7', '0.00000000e+00[MeV]');
model.variable('var_xs_outlet_high').set('kappa8', '0.00000000e+00[MeV]');
model.variable('var_xs_outlet_high').set('lambdas1', '1.25423000e-02[1/s]');
model.variable('var_xs_outlet_high').set('lambdas2', '3.13254000e-02[1/s]');
model.variable('var_xs_outlet_high').set('lambdas3', '1.09681000e-01[1/s]');
model.variable('var_xs_outlet_high').set('lambdas4', '3.16567000e-01[1/s]');
model.variable('var_xs_outlet_high').set('lambdas5', '1.29511000e+00[1/s]');
model.variable('var_xs_outlet_high').set('lambdas6', '8.02767000e+00[1/s]');
model.variable('var_xs_outlet_high').set('nsf1', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_high').set('nsf2', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_high').set('nsf3', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_high').set('nsf4', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_high').set('nsf5', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_high').set('nsf6', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_high').set('nsf7', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_high').set('nsf8', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_high').set('diff21', '1.27021136e+00[cm]');
model.variable('var_xs_outlet_high').set('diff22', '5.75437452e-01[cm]');
model.variable('var_xs_outlet_high').set('diff23', '4.79586660e-01[cm]');
model.variable('var_xs_outlet_high').set('diff24', '4.78273624e-01[cm]');
model.variable('var_xs_outlet_high').set('diff25', '4.77208521e-01[cm]');
model.variable('var_xs_outlet_high').set('diff26', '4.75171497e-01[cm]');
model.variable('var_xs_outlet_high').set('diff27', '4.65411039e-01[cm]');
model.variable('var_xs_outlet_high').set('diff28', '4.39713776e-01[cm]');
model.variable('var_xs_outlet_high').set('rem1', '4.55249000e-02[1/cm]');
model.variable('var_xs_outlet_high').set('rem2', '2.62396000e-02[1/cm]');
model.variable('var_xs_outlet_high').set('rem3', '1.99491000e-02[1/cm]');
model.variable('var_xs_outlet_high').set('rem4', '3.80163000e-02[1/cm]');
model.variable('var_xs_outlet_high').set('rem5', '1.25344000e-01[1/cm]');
model.variable('var_xs_outlet_high').set('rem6', '1.02992000e-01[1/cm]');
model.variable('var_xs_outlet_high').set('rem7', '8.64545000e-02[1/cm]');
model.variable('var_xs_outlet_high').set('rem8', '1.06150000e-01[1/cm]');
model.variable('var_xs_outlet_high').set('scat11', '1.56916000e-01[1/cm]');
model.variable('var_xs_outlet_high').set('scat12', '4.54050000e-02[1/cm]');
model.variable('var_xs_outlet_high').set('scat13', '2.30847000e-06[1/cm]');
model.variable('var_xs_outlet_high').set('scat14', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_high').set('scat15', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_high').set('scat16', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_high').set('scat17', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_high').set('scat18', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_high').set('scat21', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_high').set('scat22', '4.20626000e-01[1/cm]');
model.variable('var_xs_outlet_high').set('scat23', '2.62394000e-02[1/cm]');
model.variable('var_xs_outlet_high').set('scat24', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_high').set('scat25', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_high').set('scat26', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_high').set('scat27', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_high').set('scat28', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_high').set('scat31', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_high').set('scat32', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_high').set('scat33', '5.16227000e-01[1/cm]');
model.variable('var_xs_outlet_high').set('scat34', '1.99452000e-02[1/cm]');
model.variable('var_xs_outlet_high').set('scat35', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_high').set('scat36', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_high').set('scat37', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_high').set('scat38', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_high').set('scat41', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_high').set('scat42', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_high').set('scat43', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_high').set('scat44', '4.99631000e-01[1/cm]');
model.variable('var_xs_outlet_high').set('scat45', '3.79963000e-02[1/cm]');
model.variable('var_xs_outlet_high').set('scat46', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_high').set('scat47', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_high').set('scat48', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_high').set('scat51', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_high').set('scat52', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_high').set('scat53', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_high').set('scat54', '1.58149000e-04[1/cm]');
model.variable('var_xs_outlet_high').set('scat55', '4.13504000e-01[1/cm]');
model.variable('var_xs_outlet_high').set('scat56', '1.23159000e-01[1/cm]');
model.variable('var_xs_outlet_high').set('scat57', '1.94890000e-03[1/cm]');
model.variable('var_xs_outlet_high').set('scat58', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_high').set('scat61', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_high').set('scat62', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_high').set('scat63', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_high').set('scat64', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_high').set('scat65', '1.23145000e-02[1/cm]');
model.variable('var_xs_outlet_high').set('scat66', '4.38166000e-01[1/cm]');
model.variable('var_xs_outlet_high').set('scat67', '8.59777000e-02[1/cm]');
model.variable('var_xs_outlet_high').set('scat68', '4.56756000e-03[1/cm]');
model.variable('var_xs_outlet_high').set('scat71', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_high').set('scat72', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_high').set('scat73', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_high').set('scat74', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_high').set('scat75', '1.57055000e-04[1/cm]');
model.variable('var_xs_outlet_high').set('scat76', '5.82747000e-02[1/cm]');
model.variable('var_xs_outlet_high').set('scat77', '4.66053000e-01[1/cm]');
model.variable('var_xs_outlet_high').set('scat78', '2.78151000e-02[1/cm]');
model.variable('var_xs_outlet_high').set('scat81', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_high').set('scat82', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_high').set('scat83', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_high').set('scat84', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_high').set('scat85', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_high').set('scat86', '1.00085000e-02[1/cm]');
model.variable('var_xs_outlet_high').set('scat87', '9.57460000e-02[1/cm]');
model.variable('var_xs_outlet_high').set('scat88', '4.78646000e-01[1/cm]');
model.variable('var_xs_outlet_high').set('tot1', '2.02441000e-01[1/cm]');
model.variable('var_xs_outlet_high').set('tot2', '4.46865000e-01[1/cm]');
model.variable('var_xs_outlet_high').set('tot3', '5.36176000e-01[1/cm]');
model.variable('var_xs_outlet_high').set('tot4', '5.37648000e-01[1/cm]');
model.variable('var_xs_outlet_high').set('tot5', '5.38848000e-01[1/cm]');
model.variable('var_xs_outlet_high').set('tot6', '5.41158000e-01[1/cm]');
model.variable('var_xs_outlet_high').set('tot7', '5.52507000e-01[1/cm]');
model.variable('var_xs_outlet_high').set('tot8', '5.84796000e-01[1/cm]');
model.variable('var_xs_outlet_high').selection.geom('geom1', 3);
model.variable('var_xs_outlet_high').selection.set([7]);
model.variable.create('var_xs_outlet_low');
model.variable('var_xs_outlet_low').model('mod1');
model.variable('var_xs_outlet_low').set('beta1', '5.38313000e-03');
model.variable('var_xs_outlet_low').set('betas1', '1.65619000e-04');
model.variable('var_xs_outlet_low').set('betas2', '9.84868000e-04');
model.variable('var_xs_outlet_low').set('betas3', '8.77782000e-04');
model.variable('var_xs_outlet_low').set('betas4', '2.37174000e-03');
model.variable('var_xs_outlet_low').set('betas5', '7.31647000e-04');
model.variable('var_xs_outlet_low').set('betas6', '2.51474000e-04');
model.variable('var_xs_outlet_low').set('chid1', '0.00000000e+00');
model.variable('var_xs_outlet_low').set('chid2', '0.00000000e+00');
model.variable('var_xs_outlet_low').set('chid3', '0.00000000e+00');
model.variable('var_xs_outlet_low').set('chid4', '0.00000000e+00');
model.variable('var_xs_outlet_low').set('chid5', '0.00000000e+00');
model.variable('var_xs_outlet_low').set('chid6', '0.00000000e+00');
model.variable('var_xs_outlet_low').set('chid7', '0.00000000e+00');
model.variable('var_xs_outlet_low').set('chid8', '0.00000000e+00');
model.variable('var_xs_outlet_low').set('chip1', '0.00000000e+00');
model.variable('var_xs_outlet_low').set('chip2', '0.00000000e+00');
model.variable('var_xs_outlet_low').set('chip3', '0.00000000e+00');
model.variable('var_xs_outlet_low').set('chip4', '0.00000000e+00');
model.variable('var_xs_outlet_low').set('chip5', '0.00000000e+00');
model.variable('var_xs_outlet_low').set('chip6', '0.00000000e+00');
model.variable('var_xs_outlet_low').set('chip7', '0.00000000e+00');
model.variable('var_xs_outlet_low').set('chip8', '0.00000000e+00');
model.variable('var_xs_outlet_low').set('chit1', '0.00000000e+00');
model.variable('var_xs_outlet_low').set('chit2', '0.00000000e+00');
model.variable('var_xs_outlet_low').set('chit3', '0.00000000e+00');
model.variable('var_xs_outlet_low').set('chit4', '0.00000000e+00');
model.variable('var_xs_outlet_low').set('chit5', '0.00000000e+00');
model.variable('var_xs_outlet_low').set('chit6', '0.00000000e+00');
model.variable('var_xs_outlet_low').set('chit7', '0.00000000e+00');
model.variable('var_xs_outlet_low').set('chit8', '0.00000000e+00');
model.variable('var_xs_outlet_low').set('diff11', '1.91619000e+00[cm]');
model.variable('var_xs_outlet_low').set('diff12', '8.52620000e-01[cm]');
model.variable('var_xs_outlet_low').set('diff13', '6.58855000e-01[cm]');
model.variable('var_xs_outlet_low').set('diff14', '6.56787000e-01[cm]');
model.variable('var_xs_outlet_low').set('diff15', '6.53066000e-01[cm]');
model.variable('var_xs_outlet_low').set('diff16', '6.46131000e-01[cm]');
model.variable('var_xs_outlet_low').set('diff17', '6.19867000e-01[cm]');
model.variable('var_xs_outlet_low').set('diff18', '5.53871000e-01[cm]');
model.variable('var_xs_outlet_low').set('fiss1', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_low').set('fiss2', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_low').set('fiss3', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_low').set('fiss4', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_low').set('fiss5', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_low').set('fiss6', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_low').set('fiss7', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_low').set('fiss8', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_low').set('invV1', '4.77444000e-10[s/cm]');
model.variable('var_xs_outlet_low').set('invV2', '2.09271000e-09[s/cm]');
model.variable('var_xs_outlet_low').set('invV3', '3.86027000e-08[s/cm]');
model.variable('var_xs_outlet_low').set('invV4', '2.12911000e-07[s/cm]');
model.variable('var_xs_outlet_low').set('invV5', '8.10779000e-07[s/cm]');
model.variable('var_xs_outlet_low').set('invV6', '1.38403000e-06[s/cm]');
model.variable('var_xs_outlet_low').set('invV7', '2.17026000e-06[s/cm]');
model.variable('var_xs_outlet_low').set('invV8', '4.16034000e-06[s/cm]');
model.variable('var_xs_outlet_low').set('kappa1', '0.00000000e+00[MeV]');
model.variable('var_xs_outlet_low').set('kappa2', '0.00000000e+00[MeV]');
model.variable('var_xs_outlet_low').set('kappa3', '0.00000000e+00[MeV]');
model.variable('var_xs_outlet_low').set('kappa4', '0.00000000e+00[MeV]');
model.variable('var_xs_outlet_low').set('kappa5', '0.00000000e+00[MeV]');
model.variable('var_xs_outlet_low').set('kappa6', '0.00000000e+00[MeV]');
model.variable('var_xs_outlet_low').set('kappa7', '0.00000000e+00[MeV]');
model.variable('var_xs_outlet_low').set('kappa8', '0.00000000e+00[MeV]');
model.variable('var_xs_outlet_low').set('lambdas1', '1.25423000e-02[1/s]');
model.variable('var_xs_outlet_low').set('lambdas2', '3.13254000e-02[1/s]');
model.variable('var_xs_outlet_low').set('lambdas3', '1.09681000e-01[1/s]');
model.variable('var_xs_outlet_low').set('lambdas4', '3.16567000e-01[1/s]');
model.variable('var_xs_outlet_low').set('lambdas5', '1.29511000e+00[1/s]');
model.variable('var_xs_outlet_low').set('lambdas6', '8.02767000e+00[1/s]');
model.variable('var_xs_outlet_low').set('nsf1', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_low').set('nsf2', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_low').set('nsf3', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_low').set('nsf4', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_low').set('nsf5', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_low').set('nsf6', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_low').set('nsf7', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_low').set('nsf8', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_low').set('diff21', '1.27021136e+00[cm]');
model.variable('var_xs_outlet_low').set('diff22', '5.75437452e-01[cm]');
model.variable('var_xs_outlet_low').set('diff23', '4.79586660e-01[cm]');
model.variable('var_xs_outlet_low').set('diff24', '4.78273624e-01[cm]');
model.variable('var_xs_outlet_low').set('diff25', '4.77208521e-01[cm]');
model.variable('var_xs_outlet_low').set('diff26', '4.75171497e-01[cm]');
model.variable('var_xs_outlet_low').set('diff27', '4.65411039e-01[cm]');
model.variable('var_xs_outlet_low').set('diff28', '4.39713776e-01[cm]');
model.variable('var_xs_outlet_low').set('rem1', '4.55249000e-02[1/cm]');
model.variable('var_xs_outlet_low').set('rem2', '2.62396000e-02[1/cm]');
model.variable('var_xs_outlet_low').set('rem3', '1.99491000e-02[1/cm]');
model.variable('var_xs_outlet_low').set('rem4', '3.80163000e-02[1/cm]');
model.variable('var_xs_outlet_low').set('rem5', '1.25344000e-01[1/cm]');
model.variable('var_xs_outlet_low').set('rem6', '1.02992000e-01[1/cm]');
model.variable('var_xs_outlet_low').set('rem7', '8.64545000e-02[1/cm]');
model.variable('var_xs_outlet_low').set('rem8', '1.06150000e-01[1/cm]');
model.variable('var_xs_outlet_low').set('scat11', '1.56916000e-01[1/cm]');
model.variable('var_xs_outlet_low').set('scat12', '4.54050000e-02[1/cm]');
model.variable('var_xs_outlet_low').set('scat13', '2.30847000e-06[1/cm]');
model.variable('var_xs_outlet_low').set('scat14', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_low').set('scat15', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_low').set('scat16', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_low').set('scat17', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_low').set('scat18', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_low').set('scat21', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_low').set('scat22', '4.20626000e-01[1/cm]');
model.variable('var_xs_outlet_low').set('scat23', '2.62394000e-02[1/cm]');
model.variable('var_xs_outlet_low').set('scat24', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_low').set('scat25', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_low').set('scat26', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_low').set('scat27', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_low').set('scat28', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_low').set('scat31', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_low').set('scat32', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_low').set('scat33', '5.16227000e-01[1/cm]');
model.variable('var_xs_outlet_low').set('scat34', '1.99452000e-02[1/cm]');
model.variable('var_xs_outlet_low').set('scat35', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_low').set('scat36', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_low').set('scat37', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_low').set('scat38', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_low').set('scat41', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_low').set('scat42', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_low').set('scat43', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_low').set('scat44', '4.99631000e-01[1/cm]');
model.variable('var_xs_outlet_low').set('scat45', '3.79963000e-02[1/cm]');
model.variable('var_xs_outlet_low').set('scat46', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_low').set('scat47', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_low').set('scat48', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_low').set('scat51', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_low').set('scat52', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_low').set('scat53', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_low').set('scat54', '1.58149000e-04[1/cm]');
model.variable('var_xs_outlet_low').set('scat55', '4.13504000e-01[1/cm]');
model.variable('var_xs_outlet_low').set('scat56', '1.23159000e-01[1/cm]');
model.variable('var_xs_outlet_low').set('scat57', '1.94890000e-03[1/cm]');
model.variable('var_xs_outlet_low').set('scat58', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_low').set('scat61', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_low').set('scat62', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_low').set('scat63', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_low').set('scat64', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_low').set('scat65', '1.23145000e-02[1/cm]');
model.variable('var_xs_outlet_low').set('scat66', '4.38166000e-01[1/cm]');
model.variable('var_xs_outlet_low').set('scat67', '8.59777000e-02[1/cm]');
model.variable('var_xs_outlet_low').set('scat68', '4.56756000e-03[1/cm]');
model.variable('var_xs_outlet_low').set('scat71', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_low').set('scat72', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_low').set('scat73', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_low').set('scat74', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_low').set('scat75', '1.57055000e-04[1/cm]');
model.variable('var_xs_outlet_low').set('scat76', '5.82747000e-02[1/cm]');
model.variable('var_xs_outlet_low').set('scat77', '4.66053000e-01[1/cm]');
model.variable('var_xs_outlet_low').set('scat78', '2.78151000e-02[1/cm]');
model.variable('var_xs_outlet_low').set('scat81', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_low').set('scat82', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_low').set('scat83', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_low').set('scat84', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_low').set('scat85', '0.00000000e+00[1/cm]');
model.variable('var_xs_outlet_low').set('scat86', '1.00085000e-02[1/cm]');
model.variable('var_xs_outlet_low').set('scat87', '9.57460000e-02[1/cm]');
model.variable('var_xs_outlet_low').set('scat88', '4.78646000e-01[1/cm]');
model.variable('var_xs_outlet_low').set('tot1', '2.02441000e-01[1/cm]');
model.variable('var_xs_outlet_low').set('tot2', '4.46865000e-01[1/cm]');
model.variable('var_xs_outlet_low').set('tot3', '5.36176000e-01[1/cm]');
model.variable('var_xs_outlet_low').set('tot4', '5.37648000e-01[1/cm]');
model.variable('var_xs_outlet_low').set('tot5', '5.38848000e-01[1/cm]');
model.variable('var_xs_outlet_low').set('tot6', '5.41158000e-01[1/cm]');
model.variable('var_xs_outlet_low').set('tot7', '5.52507000e-01[1/cm]');
model.variable('var_xs_outlet_low').set('tot8', '5.84796000e-01[1/cm]');
model.variable('var_xs_outlet_low').selection.geom('geom1', 3);
model.variable('var_xs_outlet_low').selection.set([6]);
model.variable.create('var_xs_CR');
model.variable('var_xs_CR').model('mod1');
model.variable('var_xs_CR').set('beta1', '5.38313000e-03');
model.variable('var_xs_CR').set('betas1', '1.65619000e-04');
model.variable('var_xs_CR').set('betas2', '9.84868000e-04');
model.variable('var_xs_CR').set('betas3', '8.77782000e-04');
model.variable('var_xs_CR').set('betas4', '2.37174000e-03');
model.variable('var_xs_CR').set('betas5', '7.31647000e-04');
model.variable('var_xs_CR').set('betas6', '2.51474000e-04');
model.variable('var_xs_CR').set('chid1', '0.00000000e+00');
model.variable('var_xs_CR').set('chid2', '0.00000000e+00');
model.variable('var_xs_CR').set('chid3', '0.00000000e+00');
model.variable('var_xs_CR').set('chid4', '0.00000000e+00');
model.variable('var_xs_CR').set('chid5', '0.00000000e+00');
model.variable('var_xs_CR').set('chid6', '0.00000000e+00');
model.variable('var_xs_CR').set('chid7', '0.00000000e+00');
model.variable('var_xs_CR').set('chid8', '0.00000000e+00');
model.variable('var_xs_CR').set('chip1', '0.00000000e+00');
model.variable('var_xs_CR').set('chip2', '0.00000000e+00');
model.variable('var_xs_CR').set('chip3', '0.00000000e+00');
model.variable('var_xs_CR').set('chip4', '0.00000000e+00');
model.variable('var_xs_CR').set('chip5', '0.00000000e+00');
model.variable('var_xs_CR').set('chip6', '0.00000000e+00');
model.variable('var_xs_CR').set('chip7', '0.00000000e+00');
model.variable('var_xs_CR').set('chip8', '0.00000000e+00');
model.variable('var_xs_CR').set('chit1', '0.00000000e+00');
model.variable('var_xs_CR').set('chit2', '0.00000000e+00');
model.variable('var_xs_CR').set('chit3', '0.00000000e+00');
model.variable('var_xs_CR').set('chit4', '0.00000000e+00');
model.variable('var_xs_CR').set('chit5', '0.00000000e+00');
model.variable('var_xs_CR').set('chit6', '0.00000000e+00');
model.variable('var_xs_CR').set('chit7', '0.00000000e+00');
model.variable('var_xs_CR').set('chit8', '0.00000000e+00');
model.variable('var_xs_CR').set('diff11', '1.85614000e+00[cm]');
model.variable('var_xs_CR').set('diff12', '8.71153000e-01[cm]');
model.variable('var_xs_CR').set('diff13', '6.59394000e-01[cm]');
model.variable('var_xs_CR').set('diff14', '6.56811000e-01[cm]');
model.variable('var_xs_CR').set('diff15', '6.53874000e-01[cm]');
model.variable('var_xs_CR').set('diff16', '6.46254000e-01[cm]');
model.variable('var_xs_CR').set('diff17', '6.19984000e-01[cm]');
model.variable('var_xs_CR').set('diff18', '5.53942000e-01[cm]');
model.variable('var_xs_CR').set('fiss1', '0.00000000e+00[1/cm]');
model.variable('var_xs_CR').set('fiss2', '0.00000000e+00[1/cm]');
model.variable('var_xs_CR').set('fiss3', '0.00000000e+00[1/cm]');
model.variable('var_xs_CR').set('fiss4', '0.00000000e+00[1/cm]');
model.variable('var_xs_CR').set('fiss5', '0.00000000e+00[1/cm]');
model.variable('var_xs_CR').set('fiss6', '0.00000000e+00[1/cm]');
model.variable('var_xs_CR').set('fiss7', '0.00000000e+00[1/cm]');
model.variable('var_xs_CR').set('fiss8', '0.00000000e+00[1/cm]');
model.variable('var_xs_CR').set('invV1', '4.82183000e-10[s/cm]');
model.variable('var_xs_CR').set('invV2', '1.99061000e-09[s/cm]');
model.variable('var_xs_CR').set('invV3', '3.36207000e-08[s/cm]');
model.variable('var_xs_CR').set('invV4', '2.07746000e-07[s/cm]');
model.variable('var_xs_CR').set('invV5', '7.21900000e-07[s/cm]');
model.variable('var_xs_CR').set('invV6', '1.37728000e-06[s/cm]');
model.variable('var_xs_CR').set('invV7', '2.16809000e-06[s/cm]');
model.variable('var_xs_CR').set('invV8', '4.15964000e-06[s/cm]');
model.variable('var_xs_CR').set('kappa1', '0.00000000e+00[MeV]');
model.variable('var_xs_CR').set('kappa2', '0.00000000e+00[MeV]');
model.variable('var_xs_CR').set('kappa3', '0.00000000e+00[MeV]');
model.variable('var_xs_CR').set('kappa4', '0.00000000e+00[MeV]');
model.variable('var_xs_CR').set('kappa5', '0.00000000e+00[MeV]');
model.variable('var_xs_CR').set('kappa6', '0.00000000e+00[MeV]');
model.variable('var_xs_CR').set('kappa7', '0.00000000e+00[MeV]');
model.variable('var_xs_CR').set('kappa8', '0.00000000e+00[MeV]');
model.variable('var_xs_CR').set('lambdas1', '1.25423000e-02[1/s]');
model.variable('var_xs_CR').set('lambdas2', '3.13254000e-02[1/s]');
model.variable('var_xs_CR').set('lambdas3', '1.09681000e-01[1/s]');
model.variable('var_xs_CR').set('lambdas4', '3.16567000e-01[1/s]');
model.variable('var_xs_CR').set('lambdas5', '1.29511000e+00[1/s]');
model.variable('var_xs_CR').set('lambdas6', '8.02767000e+00[1/s]');
model.variable('var_xs_CR').set('nsf1', '0.00000000e+00[1/cm]');
model.variable('var_xs_CR').set('nsf2', '0.00000000e+00[1/cm]');
model.variable('var_xs_CR').set('nsf3', '0.00000000e+00[1/cm]');
model.variable('var_xs_CR').set('nsf4', '0.00000000e+00[1/cm]');
model.variable('var_xs_CR').set('nsf5', '0.00000000e+00[1/cm]');
model.variable('var_xs_CR').set('nsf6', '0.00000000e+00[1/cm]');
model.variable('var_xs_CR').set('nsf7', '0.00000000e+00[1/cm]');
model.variable('var_xs_CR').set('nsf8', '0.00000000e+00[1/cm]');
model.variable('var_xs_CR').set('diff21', '1.25457572e+00[cm]');
model.variable('var_xs_CR').set('diff22', '5.85019218e-01[cm]');
model.variable('var_xs_CR').set('diff23', '4.79925899e-01[cm]');
model.variable('var_xs_CR').set('diff24', '4.78282519e-01[cm]');
model.variable('var_xs_CR').set('diff25', '4.77438890e-01[cm]');
model.variable('var_xs_CR').set('diff26', '4.75198719e-01[cm]');
model.variable('var_xs_CR').set('diff27', '4.65455689e-01[cm]');
model.variable('var_xs_CR').set('diff28', '4.39733326e-01[cm]');
model.variable('var_xs_CR').set('rem1', '4.50475000e-02[1/cm]');
model.variable('var_xs_CR').set('rem2', '2.23752000e-02[1/cm]');
model.variable('var_xs_CR').set('rem3', '1.50617000e-02[1/cm]');
model.variable('var_xs_CR').set('rem4', '3.40871000e-02[1/cm]');
model.variable('var_xs_CR').set('rem5', '7.95564000e-02[1/cm]');
model.variable('var_xs_CR').set('rem6', '1.02025000e-01[1/cm]');
model.variable('var_xs_CR').set('rem7', '8.66308000e-02[1/cm]');
model.variable('var_xs_CR').set('rem8', '1.06171000e-01[1/cm]');
model.variable('var_xs_CR').set('scat11', '1.59917000e-01[1/cm]');
model.variable('var_xs_CR').set('scat12', '4.49322000e-02[1/cm]');
model.variable('var_xs_CR').set('scat13', '1.70583000e-06[1/cm]');
model.variable('var_xs_CR').set('scat14', '0.00000000e+00[1/cm]');
model.variable('var_xs_CR').set('scat15', '0.00000000e+00[1/cm]');
model.variable('var_xs_CR').set('scat16', '0.00000000e+00[1/cm]');
model.variable('var_xs_CR').set('scat17', '0.00000000e+00[1/cm]');
model.variable('var_xs_CR').set('scat18', '0.00000000e+00[1/cm]');
model.variable('var_xs_CR').set('scat21', '0.00000000e+00[1/cm]');
model.variable('var_xs_CR').set('scat22', '4.17171000e-01[1/cm]');
model.variable('var_xs_CR').set('scat23', '2.23751000e-02[1/cm]');
model.variable('var_xs_CR').set('scat24', '0.00000000e+00[1/cm]');
model.variable('var_xs_CR').set('scat25', '0.00000000e+00[1/cm]');
model.variable('var_xs_CR').set('scat26', '0.00000000e+00[1/cm]');
model.variable('var_xs_CR').set('scat27', '0.00000000e+00[1/cm]');
model.variable('var_xs_CR').set('scat28', '0.00000000e+00[1/cm]');
model.variable('var_xs_CR').set('scat31', '0.00000000e+00[1/cm]');
model.variable('var_xs_CR').set('scat32', '0.00000000e+00[1/cm]');
model.variable('var_xs_CR').set('scat33', '5.20735000e-01[1/cm]');
model.variable('var_xs_CR').set('scat34', '1.50584000e-02[1/cm]');
model.variable('var_xs_CR').set('scat35', '0.00000000e+00[1/cm]');
model.variable('var_xs_CR').set('scat36', '0.00000000e+00[1/cm]');
model.variable('var_xs_CR').set('scat37', '0.00000000e+00[1/cm]');
model.variable('var_xs_CR').set('scat38', '0.00000000e+00[1/cm]');
model.variable('var_xs_CR').set('scat41', '0.00000000e+00[1/cm]');
model.variable('var_xs_CR').set('scat42', '0.00000000e+00[1/cm]');
model.variable('var_xs_CR').set('scat43', '0.00000000e+00[1/cm]');
model.variable('var_xs_CR').set('scat44', '5.03551000e-01[1/cm]');
model.variable('var_xs_CR').set('scat45', '3.40674000e-02[1/cm]');
model.variable('var_xs_CR').set('scat46', '0.00000000e+00[1/cm]');
model.variable('var_xs_CR').set('scat47', '0.00000000e+00[1/cm]');
model.variable('var_xs_CR').set('scat48', '0.00000000e+00[1/cm]');
model.variable('var_xs_CR').set('scat51', '0.00000000e+00[1/cm]');
model.variable('var_xs_CR').set('scat52', '0.00000000e+00[1/cm]');
model.variable('var_xs_CR').set('scat53', '0.00000000e+00[1/cm]');
model.variable('var_xs_CR').set('scat54', '2.82806000e-04[1/cm]');
model.variable('var_xs_CR').set('scat55', '4.59032000e-01[1/cm]');
model.variable('var_xs_CR').set('scat56', '7.79942000e-02[1/cm]');
model.variable('var_xs_CR').set('scat57', '1.20968000e-03[1/cm]');
model.variable('var_xs_CR').set('scat58', '0.00000000e+00[1/cm]');
model.variable('var_xs_CR').set('scat61', '0.00000000e+00[1/cm]');
model.variable('var_xs_CR').set('scat62', '0.00000000e+00[1/cm]');
model.variable('var_xs_CR').set('scat63', '0.00000000e+00[1/cm]');
model.variable('var_xs_CR').set('scat64', '0.00000000e+00[1/cm]');
model.variable('var_xs_CR').set('scat65', '1.33063000e-02[1/cm]');
model.variable('var_xs_CR').set('scat66', '4.39102000e-01[1/cm]');
model.variable('var_xs_CR').set('scat67', '8.41341000e-02[1/cm]');
model.variable('var_xs_CR').set('scat68', '4.45283000e-03[1/cm]');
model.variable('var_xs_CR').set('scat71', '0.00000000e+00[1/cm]');
model.variable('var_xs_CR').set('scat72', '0.00000000e+00[1/cm]');
model.variable('var_xs_CR').set('scat73', '0.00000000e+00[1/cm]');
model.variable('var_xs_CR').set('scat74', '0.00000000e+00[1/cm]');
model.variable('var_xs_CR').set('scat75', '1.59102000e-04[1/cm]');
model.variable('var_xs_CR').set('scat76', '5.85496000e-02[1/cm]');
model.variable('var_xs_CR').set('scat77', '4.65823000e-01[1/cm]');
model.variable('var_xs_CR').set('scat78', '2.77152000e-02[1/cm]');
model.variable('var_xs_CR').set('scat81', '0.00000000e+00[1/cm]');
model.variable('var_xs_CR').set('scat82', '0.00000000e+00[1/cm]');
model.variable('var_xs_CR').set('scat83', '0.00000000e+00[1/cm]');
model.variable('var_xs_CR').set('scat84', '0.00000000e+00[1/cm]');
model.variable('var_xs_CR').set('scat85', '0.00000000e+00[1/cm]');
model.variable('var_xs_CR').set('scat86', '1.00047000e-02[1/cm]');
model.variable('var_xs_CR').set('scat87', '9.57710000e-02[1/cm]');
model.variable('var_xs_CR').set('scat88', '4.78598000e-01[1/cm]');
model.variable('var_xs_CR').set('tot1', '2.04964000e-01[1/cm]');
model.variable('var_xs_CR').set('tot2', '4.39546000e-01[1/cm]');
model.variable('var_xs_CR').set('tot3', '5.35797000e-01[1/cm]');
model.variable('var_xs_CR').set('tot4', '5.37638000e-01[1/cm]');
model.variable('var_xs_CR').set('tot5', '5.38588000e-01[1/cm]');
model.variable('var_xs_CR').set('tot6', '5.41127000e-01[1/cm]');
model.variable('var_xs_CR').set('tot7', '5.52454000e-01[1/cm]');
model.variable('var_xs_CR').set('tot8', '5.84770000e-01[1/cm]');
model.variable('var_xs_CR').selection.geom('geom1', 3);
model.variable('var_xs_CR').selection.set([10]);
model.variable.create('var_xs_Blanket');
model.variable('var_xs_Blanket').model('mod1');
model.variable('var_xs_Blanket').set('beta1', '5.38313000e-03');
model.variable('var_xs_Blanket').set('betas1', '1.65619000e-04');
model.variable('var_xs_Blanket').set('betas2', '9.84868000e-04');
model.variable('var_xs_Blanket').set('betas3', '8.77782000e-04');
model.variable('var_xs_Blanket').set('betas4', '2.37174000e-03');
model.variable('var_xs_Blanket').set('betas5', '7.31647000e-04');
model.variable('var_xs_Blanket').set('betas6', '2.51474000e-04');
model.variable('var_xs_Blanket').set('chid1', '0.00000000e+00');
model.variable('var_xs_Blanket').set('chid2', '0.00000000e+00');
model.variable('var_xs_Blanket').set('chid3', '0.00000000e+00');
model.variable('var_xs_Blanket').set('chid4', '0.00000000e+00');
model.variable('var_xs_Blanket').set('chid5', '0.00000000e+00');
model.variable('var_xs_Blanket').set('chid6', '0.00000000e+00');
model.variable('var_xs_Blanket').set('chid7', '0.00000000e+00');
model.variable('var_xs_Blanket').set('chid8', '0.00000000e+00');
model.variable('var_xs_Blanket').set('chip1', '0.00000000e+00');
model.variable('var_xs_Blanket').set('chip2', '0.00000000e+00');
model.variable('var_xs_Blanket').set('chip3', '0.00000000e+00');
model.variable('var_xs_Blanket').set('chip4', '0.00000000e+00');
model.variable('var_xs_Blanket').set('chip5', '0.00000000e+00');
model.variable('var_xs_Blanket').set('chip6', '0.00000000e+00');
model.variable('var_xs_Blanket').set('chip7', '0.00000000e+00');
model.variable('var_xs_Blanket').set('chip8', '0.00000000e+00');
model.variable('var_xs_Blanket').set('chit1', '0.00000000e+00');
model.variable('var_xs_Blanket').set('chit2', '0.00000000e+00');
model.variable('var_xs_Blanket').set('chit3', '0.00000000e+00');
model.variable('var_xs_Blanket').set('chit4', '0.00000000e+00');
model.variable('var_xs_Blanket').set('chit5', '0.00000000e+00');
model.variable('var_xs_Blanket').set('chit6', '0.00000000e+00');
model.variable('var_xs_Blanket').set('chit7', '0.00000000e+00');
model.variable('var_xs_Blanket').set('chit8', '0.00000000e+00');
model.variable('var_xs_Blanket').set('diff11', '1.95704000e+00[cm]');
model.variable('var_xs_Blanket').set('diff12', '9.24884000e-01[cm]');
model.variable('var_xs_Blanket').set('diff13', '8.19924000e-01[cm]');
model.variable('var_xs_Blanket').set('diff14', '8.19464000e-01[cm]');
model.variable('var_xs_Blanket').set('diff15', '8.16440000e-01[cm]');
model.variable('var_xs_Blanket').set('diff16', '8.07286000e-01[cm]');
model.variable('var_xs_Blanket').set('diff17', '7.78820000e-01[cm]');
model.variable('var_xs_Blanket').set('diff18', '7.00039000e-01[cm]');
model.variable('var_xs_Blanket').set('fiss1', '0.00000000e+00[1/cm]');
model.variable('var_xs_Blanket').set('fiss2', '0.00000000e+00[1/cm]');
model.variable('var_xs_Blanket').set('fiss3', '0.00000000e+00[1/cm]');
model.variable('var_xs_Blanket').set('fiss4', '0.00000000e+00[1/cm]');
model.variable('var_xs_Blanket').set('fiss5', '0.00000000e+00[1/cm]');
model.variable('var_xs_Blanket').set('fiss6', '0.00000000e+00[1/cm]');
model.variable('var_xs_Blanket').set('fiss7', '0.00000000e+00[1/cm]');
model.variable('var_xs_Blanket').set('fiss8', '0.00000000e+00[1/cm]');
model.variable('var_xs_Blanket').set('invV1', '4.83141000e-10[s/cm]');
model.variable('var_xs_Blanket').set('invV2', '2.05722000e-09[s/cm]');
model.variable('var_xs_Blanket').set('invV3', '3.30557000e-08[s/cm]');
model.variable('var_xs_Blanket').set('invV4', '2.06921000e-07[s/cm]');
model.variable('var_xs_Blanket').set('invV5', '6.95720000e-07[s/cm]');
model.variable('var_xs_Blanket').set('invV6', '1.37325000e-06[s/cm]');
model.variable('var_xs_Blanket').set('invV7', '2.16793000e-06[s/cm]');
model.variable('var_xs_Blanket').set('invV8', '4.17681000e-06[s/cm]');
model.variable('var_xs_Blanket').set('kappa1', '0.00000000e+00[MeV]');
model.variable('var_xs_Blanket').set('kappa2', '0.00000000e+00[MeV]');
model.variable('var_xs_Blanket').set('kappa3', '0.00000000e+00[MeV]');
model.variable('var_xs_Blanket').set('kappa4', '0.00000000e+00[MeV]');
model.variable('var_xs_Blanket').set('kappa5', '0.00000000e+00[MeV]');
model.variable('var_xs_Blanket').set('kappa6', '0.00000000e+00[MeV]');
model.variable('var_xs_Blanket').set('kappa7', '0.00000000e+00[MeV]');
model.variable('var_xs_Blanket').set('kappa8', '0.00000000e+00[MeV]');
model.variable('var_xs_Blanket').set('lambdas1', '1.25423000e-02[1/s]');
model.variable('var_xs_Blanket').set('lambdas2', '3.13254000e-02[1/s]');
model.variable('var_xs_Blanket').set('lambdas3', '1.09681000e-01[1/s]');
model.variable('var_xs_Blanket').set('lambdas4', '3.16567000e-01[1/s]');
model.variable('var_xs_Blanket').set('lambdas5', '1.29511000e+00[1/s]');
model.variable('var_xs_Blanket').set('lambdas6', '8.02767000e+00[1/s]');
model.variable('var_xs_Blanket').set('nsf1', '0.00000000e+00[1/cm]');
model.variable('var_xs_Blanket').set('nsf2', '0.00000000e+00[1/cm]');
model.variable('var_xs_Blanket').set('nsf3', '0.00000000e+00[1/cm]');
model.variable('var_xs_Blanket').set('nsf4', '0.00000000e+00[1/cm]');
model.variable('var_xs_Blanket').set('nsf5', '0.00000000e+00[1/cm]');
model.variable('var_xs_Blanket').set('nsf6', '0.00000000e+00[1/cm]');
model.variable('var_xs_Blanket').set('nsf7', '0.00000000e+00[1/cm]');
model.variable('var_xs_Blanket').set('nsf8', '0.00000000e+00[1/cm]');
model.variable('var_xs_Blanket').set('diff21', '1.26141316e+00[cm]');
model.variable('var_xs_Blanket').set('diff22', '6.25586270e-01[cm]');
model.variable('var_xs_Blanket').set('diff23', '5.97511960e-01[cm]');
model.variable('var_xs_Blanket').set('diff24', '5.97478640e-01[cm]');
model.variable('var_xs_Blanket').set('diff25', '5.96461393e-01[cm]');
model.variable('var_xs_Blanket').set('diff26', '5.93010189e-01[cm]');
model.variable('var_xs_Blanket').set('diff27', '5.81375256e-01[cm]');
model.variable('var_xs_Blanket').set('diff28', '5.45889437e-01[cm]');
model.variable('var_xs_Blanket').set('rem1', '4.87069000e-02[1/cm]');
model.variable('var_xs_Blanket').set('rem2', '2.09037000e-02[1/cm]');
model.variable('var_xs_Blanket').set('rem3', '1.14392000e-02[1/cm]');
model.variable('var_xs_Blanket').set('rem4', '2.62239000e-02[1/cm]');
model.variable('var_xs_Blanket').set('rem5', '5.35314000e-02[1/cm]');
model.variable('var_xs_Blanket').set('rem6', '8.56222000e-02[1/cm]');
model.variable('var_xs_Blanket').set('rem7', '7.84812000e-02[1/cm]');
model.variable('var_xs_Blanket').set('rem8', '1.04693000e-01[1/cm]');
model.variable('var_xs_Blanket').set('scat11', '1.55146000e-01[1/cm]');
model.variable('var_xs_Blanket').set('scat12', '4.80082000e-02[1/cm]');
model.variable('var_xs_Blanket').set('scat13', '1.84465000e-05[1/cm]');
model.variable('var_xs_Blanket').set('scat14', '0.00000000e+00[1/cm]');
model.variable('var_xs_Blanket').set('scat15', '0.00000000e+00[1/cm]');
model.variable('var_xs_Blanket').set('scat16', '0.00000000e+00[1/cm]');
model.variable('var_xs_Blanket').set('scat17', '0.00000000e+00[1/cm]');
model.variable('var_xs_Blanket').set('scat18', '0.00000000e+00[1/cm]');
model.variable('var_xs_Blanket').set('scat21', '0.00000000e+00[1/cm]');
model.variable('var_xs_Blanket').set('scat22', '3.90140000e-01[1/cm]');
model.variable('var_xs_Blanket').set('scat23', '2.08722000e-02[1/cm]');
model.variable('var_xs_Blanket').set('scat24', '7.65783000e-09[1/cm]');
model.variable('var_xs_Blanket').set('scat25', '0.00000000e+00[1/cm]');
model.variable('var_xs_Blanket').set('scat26', '0.00000000e+00[1/cm]');
model.variable('var_xs_Blanket').set('scat27', '0.00000000e+00[1/cm]');
model.variable('var_xs_Blanket').set('scat28', '0.00000000e+00[1/cm]');
model.variable('var_xs_Blanket').set('scat31', '0.00000000e+00[1/cm]');
model.variable('var_xs_Blanket').set('scat32', '0.00000000e+00[1/cm]');
model.variable('var_xs_Blanket').set('scat33', '4.18917000e-01[1/cm]');
model.variable('var_xs_Blanket').set('scat34', '1.14308000e-02[1/cm]');
model.variable('var_xs_Blanket').set('scat35', '0.00000000e+00[1/cm]');
model.variable('var_xs_Blanket').set('scat36', '0.00000000e+00[1/cm]');
model.variable('var_xs_Blanket').set('scat37', '0.00000000e+00[1/cm]');
model.variable('var_xs_Blanket').set('scat38', '0.00000000e+00[1/cm]');
model.variable('var_xs_Blanket').set('scat41', '0.00000000e+00[1/cm]');
model.variable('var_xs_Blanket').set('scat42', '0.00000000e+00[1/cm]');
model.variable('var_xs_Blanket').set('scat43', '0.00000000e+00[1/cm]');
model.variable('var_xs_Blanket').set('scat44', '4.04156000e-01[1/cm]');
model.variable('var_xs_Blanket').set('scat45', '2.61773000e-02[1/cm]');
model.variable('var_xs_Blanket').set('scat46', '0.00000000e+00[1/cm]');
model.variable('var_xs_Blanket').set('scat47', '0.00000000e+00[1/cm]');
model.variable('var_xs_Blanket').set('scat48', '0.00000000e+00[1/cm]');
model.variable('var_xs_Blanket').set('scat51', '0.00000000e+00[1/cm]');
model.variable('var_xs_Blanket').set('scat52', '0.00000000e+00[1/cm]');
model.variable('var_xs_Blanket').set('scat53', '0.00000000e+00[1/cm]');
model.variable('var_xs_Blanket').set('scat54', '2.63952000e-04[1/cm]');
model.variable('var_xs_Blanket').set('scat55', '3.77583000e-01[1/cm]');
model.variable('var_xs_Blanket').set('scat56', '5.23803000e-02[1/cm]');
model.variable('var_xs_Blanket').set('scat57', '7.28254000e-04[1/cm]');
model.variable('var_xs_Blanket').set('scat58', '8.47291000e-07[1/cm]');
model.variable('var_xs_Blanket').set('scat61', '0.00000000e+00[1/cm]');
model.variable('var_xs_Blanket').set('scat62', '0.00000000e+00[1/cm]');
model.variable('var_xs_Blanket').set('scat63', '0.00000000e+00[1/cm]');
model.variable('var_xs_Blanket').set('scat64', '0.00000000e+00[1/cm]');
model.variable('var_xs_Blanket').set('scat65', '1.11507000e-02[1/cm]');
model.variable('var_xs_Blanket').set('scat66', '3.48001000e-01[1/cm]');
model.variable('var_xs_Blanket').set('scat67', '7.11429000e-02[1/cm]');
model.variable('var_xs_Blanket').set('scat68', '3.01865000e-03[1/cm]');
model.variable('var_xs_Blanket').set('scat71', '0.00000000e+00[1/cm]');
model.variable('var_xs_Blanket').set('scat72', '0.00000000e+00[1/cm]');
model.variable('var_xs_Blanket').set('scat73', '0.00000000e+00[1/cm]');
model.variable('var_xs_Blanket').set('scat74', '0.00000000e+00[1/cm]');
model.variable('var_xs_Blanket').set('scat75', '1.09094000e-04[1/cm]');
model.variable('var_xs_Blanket').set('scat76', '4.95163000e-02[1/cm]');
model.variable('var_xs_Blanket').set('scat77', '3.63820000e-01[1/cm]');
model.variable('var_xs_Blanket').set('scat78', '2.83666000e-02[1/cm]');
model.variable('var_xs_Blanket').set('scat81', '0.00000000e+00[1/cm]');
model.variable('var_xs_Blanket').set('scat82', '0.00000000e+00[1/cm]');
model.variable('var_xs_Blanket').set('scat83', '0.00000000e+00[1/cm]');
model.variable('var_xs_Blanket').set('scat84', '0.00000000e+00[1/cm]');
model.variable('var_xs_Blanket').set('scat85', '3.32285000e-07[1/cm]');
model.variable('var_xs_Blanket').set('scat86', '6.83954000e-03[1/cm]');
model.variable('var_xs_Blanket').set('scat87', '9.69102000e-02[1/cm]');
model.variable('var_xs_Blanket').set('scat88', '3.66360000e-01[1/cm]');
model.variable('var_xs_Blanket').set('tot1', '2.03853000e-01[1/cm]');
model.variable('var_xs_Blanket').set('tot2', '4.11043000e-01[1/cm]');
model.variable('var_xs_Blanket').set('tot3', '4.30356000e-01[1/cm]');
model.variable('var_xs_Blanket').set('tot4', '4.30380000e-01[1/cm]');
model.variable('var_xs_Blanket').set('tot5', '4.31114000e-01[1/cm]');
model.variable('var_xs_Blanket').set('tot6', '4.33623000e-01[1/cm]');
model.variable('var_xs_Blanket').set('tot7', '4.42301000e-01[1/cm]');
model.variable('var_xs_Blanket').set('tot8', '4.71053000e-01[1/cm]');
model.variable('var_xs_Blanket').selection.geom('geom1', 3);
model.variable('var_xs_Blanket').selection.set([8]);
model.variable.create('var_xs_ORCC');
model.variable('var_xs_ORCC').model('mod1');
model.variable('var_xs_ORCC').set('beta1', '5.38313000e-03');
model.variable('var_xs_ORCC').set('betas1', '1.65619000e-04');
model.variable('var_xs_ORCC').set('betas2', '9.84868000e-04');
model.variable('var_xs_ORCC').set('betas3', '8.77782000e-04');
model.variable('var_xs_ORCC').set('betas4', '2.37174000e-03');
model.variable('var_xs_ORCC').set('betas5', '7.31647000e-04');
model.variable('var_xs_ORCC').set('betas6', '2.51474000e-04');
model.variable('var_xs_ORCC').set('chid1', '0.00000000e+00');
model.variable('var_xs_ORCC').set('chid2', '0.00000000e+00');
model.variable('var_xs_ORCC').set('chid3', '0.00000000e+00');
model.variable('var_xs_ORCC').set('chid4', '0.00000000e+00');
model.variable('var_xs_ORCC').set('chid5', '0.00000000e+00');
model.variable('var_xs_ORCC').set('chid6', '0.00000000e+00');
model.variable('var_xs_ORCC').set('chid7', '0.00000000e+00');
model.variable('var_xs_ORCC').set('chid8', '0.00000000e+00');
model.variable('var_xs_ORCC').set('chip1', '0.00000000e+00');
model.variable('var_xs_ORCC').set('chip2', '0.00000000e+00');
model.variable('var_xs_ORCC').set('chip3', '0.00000000e+00');
model.variable('var_xs_ORCC').set('chip4', '0.00000000e+00');
model.variable('var_xs_ORCC').set('chip5', '0.00000000e+00');
model.variable('var_xs_ORCC').set('chip6', '0.00000000e+00');
model.variable('var_xs_ORCC').set('chip7', '0.00000000e+00');
model.variable('var_xs_ORCC').set('chip8', '0.00000000e+00');
model.variable('var_xs_ORCC').set('chit1', '0.00000000e+00');
model.variable('var_xs_ORCC').set('chit2', '0.00000000e+00');
model.variable('var_xs_ORCC').set('chit3', '0.00000000e+00');
model.variable('var_xs_ORCC').set('chit4', '0.00000000e+00');
model.variable('var_xs_ORCC').set('chit5', '0.00000000e+00');
model.variable('var_xs_ORCC').set('chit6', '0.00000000e+00');
model.variable('var_xs_ORCC').set('chit7', '0.00000000e+00');
model.variable('var_xs_ORCC').set('chit8', '0.00000000e+00');
model.variable('var_xs_ORCC').set('diff11', '2.02179000e+00[cm]');
model.variable('var_xs_ORCC').set('diff12', '9.94721000e-01[cm]');
model.variable('var_xs_ORCC').set('diff13', '1.17343000e+00[cm]');
model.variable('var_xs_ORCC').set('diff14', '1.18701000e+00[cm]');
model.variable('var_xs_ORCC').set('diff15', '1.18477000e+00[cm]');
model.variable('var_xs_ORCC').set('diff16', '1.17369000e+00[cm]');
model.variable('var_xs_ORCC').set('diff17', '1.14970000e+00[cm]');
model.variable('var_xs_ORCC').set('diff18', '1.05091000e+00[cm]');
model.variable('var_xs_ORCC').set('fiss1', '0.00000000e+00[1/cm]');
model.variable('var_xs_ORCC').set('fiss2', '0.00000000e+00[1/cm]');
model.variable('var_xs_ORCC').set('fiss3', '0.00000000e+00[1/cm]');
model.variable('var_xs_ORCC').set('fiss4', '0.00000000e+00[1/cm]');
model.variable('var_xs_ORCC').set('fiss5', '0.00000000e+00[1/cm]');
model.variable('var_xs_ORCC').set('fiss6', '0.00000000e+00[1/cm]');
model.variable('var_xs_ORCC').set('fiss7', '0.00000000e+00[1/cm]');
model.variable('var_xs_ORCC').set('fiss8', '0.00000000e+00[1/cm]');
model.variable('var_xs_ORCC').set('invV1', '4.80746000e-10[s/cm]');
model.variable('var_xs_ORCC').set('invV2', '2.31031000e-09[s/cm]');
model.variable('var_xs_ORCC').set('invV3', '3.71859000e-08[s/cm]');
model.variable('var_xs_ORCC').set('invV4', '2.11089000e-07[s/cm]');
model.variable('var_xs_ORCC').set('invV5', '7.39352000e-07[s/cm]');
model.variable('var_xs_ORCC').set('invV6', '1.37904000e-06[s/cm]');
model.variable('var_xs_ORCC').set('invV7', '2.16867000e-06[s/cm]');
model.variable('var_xs_ORCC').set('invV8', '4.18917000e-06[s/cm]');
model.variable('var_xs_ORCC').set('kappa1', '0.00000000e+00[MeV]');
model.variable('var_xs_ORCC').set('kappa2', '0.00000000e+00[MeV]');
model.variable('var_xs_ORCC').set('kappa3', '0.00000000e+00[MeV]');
model.variable('var_xs_ORCC').set('kappa4', '0.00000000e+00[MeV]');
model.variable('var_xs_ORCC').set('kappa5', '0.00000000e+00[MeV]');
model.variable('var_xs_ORCC').set('kappa6', '0.00000000e+00[MeV]');
model.variable('var_xs_ORCC').set('kappa7', '0.00000000e+00[MeV]');
model.variable('var_xs_ORCC').set('kappa8', '0.00000000e+00[MeV]');
model.variable('var_xs_ORCC').set('lambdas1', '1.25423000e-02[1/s]');
model.variable('var_xs_ORCC').set('lambdas2', '3.13254000e-02[1/s]');
model.variable('var_xs_ORCC').set('lambdas3', '1.09681000e-01[1/s]');
model.variable('var_xs_ORCC').set('lambdas4', '3.16567000e-01[1/s]');
model.variable('var_xs_ORCC').set('lambdas5', '1.29511000e+00[1/s]');
model.variable('var_xs_ORCC').set('lambdas6', '8.02767000e+00[1/s]');
model.variable('var_xs_ORCC').set('nsf1', '0.00000000e+00[1/cm]');
model.variable('var_xs_ORCC').set('nsf2', '0.00000000e+00[1/cm]');
model.variable('var_xs_ORCC').set('nsf3', '0.00000000e+00[1/cm]');
model.variable('var_xs_ORCC').set('nsf4', '0.00000000e+00[1/cm]');
model.variable('var_xs_ORCC').set('nsf5', '0.00000000e+00[1/cm]');
model.variable('var_xs_ORCC').set('nsf6', '0.00000000e+00[1/cm]');
model.variable('var_xs_ORCC').set('nsf7', '0.00000000e+00[1/cm]');
model.variable('var_xs_ORCC').set('nsf8', '0.00000000e+00[1/cm]');
model.variable('var_xs_ORCC').set('diff21', '1.18844593e+00[cm]');
model.variable('var_xs_ORCC').set('diff22', '6.88892376e-01[cm]');
model.variable('var_xs_ORCC').set('diff23', '8.58189849e-01[cm]');
model.variable('var_xs_ORCC').set('diff24', '8.68640765e-01[cm]');
model.variable('var_xs_ORCC').set('diff25', '8.67307703e-01[cm]');
model.variable('var_xs_ORCC').set('diff26', '8.59802513e-01[cm]');
model.variable('var_xs_ORCC').set('diff27', '8.43619634e-01[cm]');
model.variable('var_xs_ORCC').set('diff28', '7.73289880e-01[cm]');
model.variable('var_xs_ORCC').set('rem1', '5.93981000e-02[1/cm]');
model.variable('var_xs_ORCC').set('rem2', '2.10330000e-02[1/cm]');
model.variable('var_xs_ORCC').set('rem3', '9.46580000e-03[1/cm]');
model.variable('var_xs_ORCC').set('rem4', '1.85024000e-02[1/cm]');
model.variable('var_xs_ORCC').set('rem5', '4.99871000e-02[1/cm]');
model.variable('var_xs_ORCC').set('rem6', '6.89701000e-02[1/cm]');
model.variable('var_xs_ORCC').set('rem7', '7.43828000e-02[1/cm]');
model.variable('var_xs_ORCC').set('rem8', '1.15569000e-01[1/cm]');
model.variable('var_xs_ORCC').set('scat11', '1.56971000e-01[1/cm]');
model.variable('var_xs_ORCC').set('scat12', '5.75642000e-02[1/cm]');
model.variable('var_xs_ORCC').set('scat13', '5.08982000e-05[1/cm]');
model.variable('var_xs_ORCC').set('scat14', '0.00000000e+00[1/cm]');
model.variable('var_xs_ORCC').set('scat15', '0.00000000e+00[1/cm]');
model.variable('var_xs_ORCC').set('scat16', '0.00000000e+00[1/cm]');
model.variable('var_xs_ORCC').set('scat17', '0.00000000e+00[1/cm]');
model.variable('var_xs_ORCC').set('scat18', '0.00000000e+00[1/cm]');
model.variable('var_xs_ORCC').set('scat21', '0.00000000e+00[1/cm]');
model.variable('var_xs_ORCC').set('scat22', '3.52237000e-01[1/cm]');
model.variable('var_xs_ORCC').set('scat23', '2.09581000e-02[1/cm]');
model.variable('var_xs_ORCC').set('scat24', '0.00000000e+00[1/cm]');
model.variable('var_xs_ORCC').set('scat25', '0.00000000e+00[1/cm]');
model.variable('var_xs_ORCC').set('scat26', '0.00000000e+00[1/cm]');
model.variable('var_xs_ORCC').set('scat27', '0.00000000e+00[1/cm]');
model.variable('var_xs_ORCC').set('scat28', '0.00000000e+00[1/cm]');
model.variable('var_xs_ORCC').set('scat31', '0.00000000e+00[1/cm]');
model.variable('var_xs_ORCC').set('scat32', '0.00000000e+00[1/cm]');
model.variable('var_xs_ORCC').set('scat33', '2.90168000e-01[1/cm]');
model.variable('var_xs_ORCC').set('scat34', '9.44661000e-03[1/cm]');
model.variable('var_xs_ORCC').set('scat35', '0.00000000e+00[1/cm]');
model.variable('var_xs_ORCC').set('scat36', '0.00000000e+00[1/cm]');
model.variable('var_xs_ORCC').set('scat37', '0.00000000e+00[1/cm]');
model.variable('var_xs_ORCC').set('scat38', '0.00000000e+00[1/cm]');
model.variable('var_xs_ORCC').set('scat41', '0.00000000e+00[1/cm]');
model.variable('var_xs_ORCC').set('scat42', '0.00000000e+00[1/cm]');
model.variable('var_xs_ORCC').set('scat43', '0.00000000e+00[1/cm]');
model.variable('var_xs_ORCC').set('scat44', '2.77527000e-01[1/cm]');
model.variable('var_xs_ORCC').set('scat45', '1.84041000e-02[1/cm]');
model.variable('var_xs_ORCC').set('scat46', '0.00000000e+00[1/cm]');
model.variable('var_xs_ORCC').set('scat47', '0.00000000e+00[1/cm]');
model.variable('var_xs_ORCC').set('scat48', '0.00000000e+00[1/cm]');
model.variable('var_xs_ORCC').set('scat51', '0.00000000e+00[1/cm]');
model.variable('var_xs_ORCC').set('scat52', '0.00000000e+00[1/cm]');
model.variable('var_xs_ORCC').set('scat53', '0.00000000e+00[1/cm]');
model.variable('var_xs_ORCC').set('scat54', '1.66088000e-04[1/cm]');
model.variable('var_xs_ORCC').set('scat55', '2.46497000e-01[1/cm]');
model.variable('var_xs_ORCC').set('scat56', '4.89469000e-02[1/cm]');
model.variable('var_xs_ORCC').set('scat57', '5.32337000e-04[1/cm]');
model.variable('var_xs_ORCC').set('scat58', '4.33176000e-06[1/cm]');
model.variable('var_xs_ORCC').set('scat61', '0.00000000e+00[1/cm]');
model.variable('var_xs_ORCC').set('scat62', '0.00000000e+00[1/cm]');
model.variable('var_xs_ORCC').set('scat63', '0.00000000e+00[1/cm]');
model.variable('var_xs_ORCC').set('scat64', '0.00000000e+00[1/cm]');
model.variable('var_xs_ORCC').set('scat65', '7.66420000e-03[1/cm]');
model.variable('var_xs_ORCC').set('scat66', '2.30102000e-01[1/cm]');
model.variable('var_xs_ORCC').set('scat67', '5.94894000e-02[1/cm]');
model.variable('var_xs_ORCC').set('scat68', '1.19110000e-03[1/cm]');
model.variable('var_xs_ORCC').set('scat71', '0.00000000e+00[1/cm]');
model.variable('var_xs_ORCC').set('scat72', '0.00000000e+00[1/cm]');
model.variable('var_xs_ORCC').set('scat73', '0.00000000e+00[1/cm]');
model.variable('var_xs_ORCC').set('scat74', '0.00000000e+00[1/cm]');
model.variable('var_xs_ORCC').set('scat75', '5.25163000e-05[1/cm]');
model.variable('var_xs_ORCC').set('scat76', '4.12200000e-02[1/cm]');
model.variable('var_xs_ORCC').set('scat77', '2.30426000e-01[1/cm]');
model.variable('var_xs_ORCC').set('scat78', '3.21243000e-02[1/cm]');
model.variable('var_xs_ORCC').set('scat81', '0.00000000e+00[1/cm]');
model.variable('var_xs_ORCC').set('scat82', '0.00000000e+00[1/cm]');
model.variable('var_xs_ORCC').set('scat83', '0.00000000e+00[1/cm]');
model.variable('var_xs_ORCC').set('scat84', '0.00000000e+00[1/cm]');
model.variable('var_xs_ORCC').set('scat85', '1.47774000e-06[1/cm]');
model.variable('var_xs_ORCC').set('scat86', '2.80434000e-03[1/cm]');
model.variable('var_xs_ORCC').set('scat87', '1.10854000e-01[1/cm]');
model.variable('var_xs_ORCC').set('scat88', '2.16962000e-01[1/cm]');
model.variable('var_xs_ORCC').set('tot1', '2.16369000e-01[1/cm]');
model.variable('var_xs_ORCC').set('tot2', '3.73270000e-01[1/cm]');
model.variable('var_xs_ORCC').set('tot3', '2.99634000e-01[1/cm]');
model.variable('var_xs_ORCC').set('tot4', '2.96029000e-01[1/cm]');
model.variable('var_xs_ORCC').set('tot5', '2.96484000e-01[1/cm]');
model.variable('var_xs_ORCC').set('tot6', '2.99072000e-01[1/cm]');
model.variable('var_xs_ORCC').set('tot7', '3.04809000e-01[1/cm]');
model.variable('var_xs_ORCC').set('tot8', '3.32531000e-01[1/cm]');
model.variable('var_xs_ORCC').selection.geom('geom1', 3);
model.variable('var_xs_ORCC').selection.set([5]);
model.variable.create('var_xs_OR');
model.variable('var_xs_OR').model('mod1');
model.variable('var_xs_OR').set('beta1', '5.38313000e-03');
model.variable('var_xs_OR').set('betas1', '1.65619000e-04');
model.variable('var_xs_OR').set('betas2', '9.84868000e-04');
model.variable('var_xs_OR').set('betas3', '8.77782000e-04');
model.variable('var_xs_OR').set('betas4', '2.37174000e-03');
model.variable('var_xs_OR').set('betas5', '7.31647000e-04');
model.variable('var_xs_OR').set('betas6', '2.51474000e-04');
model.variable('var_xs_OR').set('chid1', '0.00000000e+00');
model.variable('var_xs_OR').set('chid2', '0.00000000e+00');
model.variable('var_xs_OR').set('chid3', '0.00000000e+00');
model.variable('var_xs_OR').set('chid4', '0.00000000e+00');
model.variable('var_xs_OR').set('chid5', '0.00000000e+00');
model.variable('var_xs_OR').set('chid6', '0.00000000e+00');
model.variable('var_xs_OR').set('chid7', '0.00000000e+00');
model.variable('var_xs_OR').set('chid8', '0.00000000e+00');
model.variable('var_xs_OR').set('chip1', '0.00000000e+00');
model.variable('var_xs_OR').set('chip2', '0.00000000e+00');
model.variable('var_xs_OR').set('chip3', '0.00000000e+00');
model.variable('var_xs_OR').set('chip4', '0.00000000e+00');
model.variable('var_xs_OR').set('chip5', '0.00000000e+00');
model.variable('var_xs_OR').set('chip6', '0.00000000e+00');
model.variable('var_xs_OR').set('chip7', '0.00000000e+00');
model.variable('var_xs_OR').set('chip8', '0.00000000e+00');
model.variable('var_xs_OR').set('chit1', '0.00000000e+00');
model.variable('var_xs_OR').set('chit2', '0.00000000e+00');
model.variable('var_xs_OR').set('chit3', '0.00000000e+00');
model.variable('var_xs_OR').set('chit4', '0.00000000e+00');
model.variable('var_xs_OR').set('chit5', '0.00000000e+00');
model.variable('var_xs_OR').set('chit6', '0.00000000e+00');
model.variable('var_xs_OR').set('chit7', '0.00000000e+00');
model.variable('var_xs_OR').set('chit8', '0.00000000e+00');
model.variable('var_xs_OR').set('diff11', '1.91619000e+00[cm]');
model.variable('var_xs_OR').set('diff12', '8.52620000e-01[cm]');
model.variable('var_xs_OR').set('diff13', '6.58855000e-01[cm]');
model.variable('var_xs_OR').set('diff14', '6.56787000e-01[cm]');
model.variable('var_xs_OR').set('diff15', '6.53066000e-01[cm]');
model.variable('var_xs_OR').set('diff16', '6.46131000e-01[cm]');
model.variable('var_xs_OR').set('diff17', '6.19867000e-01[cm]');
model.variable('var_xs_OR').set('diff18', '5.53871000e-01[cm]');
model.variable('var_xs_OR').set('fiss1', '0.00000000e+00[1/cm]');
model.variable('var_xs_OR').set('fiss2', '0.00000000e+00[1/cm]');
model.variable('var_xs_OR').set('fiss3', '0.00000000e+00[1/cm]');
model.variable('var_xs_OR').set('fiss4', '0.00000000e+00[1/cm]');
model.variable('var_xs_OR').set('fiss5', '0.00000000e+00[1/cm]');
model.variable('var_xs_OR').set('fiss6', '0.00000000e+00[1/cm]');
model.variable('var_xs_OR').set('fiss7', '0.00000000e+00[1/cm]');
model.variable('var_xs_OR').set('fiss8', '0.00000000e+00[1/cm]');
model.variable('var_xs_OR').set('invV1', '4.77444000e-10[s/cm]');
model.variable('var_xs_OR').set('invV2', '2.09271000e-09[s/cm]');
model.variable('var_xs_OR').set('invV3', '3.86027000e-08[s/cm]');
model.variable('var_xs_OR').set('invV4', '2.12911000e-07[s/cm]');
model.variable('var_xs_OR').set('invV5', '8.10779000e-07[s/cm]');
model.variable('var_xs_OR').set('invV6', '1.38403000e-06[s/cm]');
model.variable('var_xs_OR').set('invV7', '2.17026000e-06[s/cm]');
model.variable('var_xs_OR').set('invV8', '4.16034000e-06[s/cm]');
model.variable('var_xs_OR').set('kappa1', '0.00000000e+00[MeV]');
model.variable('var_xs_OR').set('kappa2', '0.00000000e+00[MeV]');
model.variable('var_xs_OR').set('kappa3', '0.00000000e+00[MeV]');
model.variable('var_xs_OR').set('kappa4', '0.00000000e+00[MeV]');
model.variable('var_xs_OR').set('kappa5', '0.00000000e+00[MeV]');
model.variable('var_xs_OR').set('kappa6', '0.00000000e+00[MeV]');
model.variable('var_xs_OR').set('kappa7', '0.00000000e+00[MeV]');
model.variable('var_xs_OR').set('kappa8', '0.00000000e+00[MeV]');
model.variable('var_xs_OR').set('lambdas1', '1.25423000e-02[1/s]');
model.variable('var_xs_OR').set('lambdas2', '3.13254000e-02[1/s]');
model.variable('var_xs_OR').set('lambdas3', '1.09681000e-01[1/s]');
model.variable('var_xs_OR').set('lambdas4', '3.16567000e-01[1/s]');
model.variable('var_xs_OR').set('lambdas5', '1.29511000e+00[1/s]');
model.variable('var_xs_OR').set('lambdas6', '8.02767000e+00[1/s]');
model.variable('var_xs_OR').set('nsf1', '0.00000000e+00[1/cm]');
model.variable('var_xs_OR').set('nsf2', '0.00000000e+00[1/cm]');
model.variable('var_xs_OR').set('nsf3', '0.00000000e+00[1/cm]');
model.variable('var_xs_OR').set('nsf4', '0.00000000e+00[1/cm]');
model.variable('var_xs_OR').set('nsf5', '0.00000000e+00[1/cm]');
model.variable('var_xs_OR').set('nsf6', '0.00000000e+00[1/cm]');
model.variable('var_xs_OR').set('nsf7', '0.00000000e+00[1/cm]');
model.variable('var_xs_OR').set('nsf8', '0.00000000e+00[1/cm]');
model.variable('var_xs_OR').set('diff21', '1.27021136e+00[cm]');
model.variable('var_xs_OR').set('diff22', '5.75437452e-01[cm]');
model.variable('var_xs_OR').set('diff23', '4.79586660e-01[cm]');
model.variable('var_xs_OR').set('diff24', '4.78273624e-01[cm]');
model.variable('var_xs_OR').set('diff25', '4.77208521e-01[cm]');
model.variable('var_xs_OR').set('diff26', '4.75171497e-01[cm]');
model.variable('var_xs_OR').set('diff27', '4.65411039e-01[cm]');
model.variable('var_xs_OR').set('diff28', '4.39713776e-01[cm]');
model.variable('var_xs_OR').set('rem1', '4.55249000e-02[1/cm]');
model.variable('var_xs_OR').set('rem2', '2.62396000e-02[1/cm]');
model.variable('var_xs_OR').set('rem3', '1.99491000e-02[1/cm]');
model.variable('var_xs_OR').set('rem4', '3.80163000e-02[1/cm]');
model.variable('var_xs_OR').set('rem5', '1.25344000e-01[1/cm]');
model.variable('var_xs_OR').set('rem6', '1.02992000e-01[1/cm]');
model.variable('var_xs_OR').set('rem7', '8.64545000e-02[1/cm]');
model.variable('var_xs_OR').set('rem8', '1.06150000e-01[1/cm]');
model.variable('var_xs_OR').set('scat11', '1.56916000e-01[1/cm]');
model.variable('var_xs_OR').set('scat12', '4.54050000e-02[1/cm]');
model.variable('var_xs_OR').set('scat13', '2.30847000e-06[1/cm]');
model.variable('var_xs_OR').set('scat14', '0.00000000e+00[1/cm]');
model.variable('var_xs_OR').set('scat15', '0.00000000e+00[1/cm]');
model.variable('var_xs_OR').set('scat16', '0.00000000e+00[1/cm]');
model.variable('var_xs_OR').set('scat17', '0.00000000e+00[1/cm]');
model.variable('var_xs_OR').set('scat18', '0.00000000e+00[1/cm]');
model.variable('var_xs_OR').set('scat21', '0.00000000e+00[1/cm]');
model.variable('var_xs_OR').set('scat22', '4.20626000e-01[1/cm]');
model.variable('var_xs_OR').set('scat23', '2.62394000e-02[1/cm]');
model.variable('var_xs_OR').set('scat24', '0.00000000e+00[1/cm]');
model.variable('var_xs_OR').set('scat25', '0.00000000e+00[1/cm]');
model.variable('var_xs_OR').set('scat26', '0.00000000e+00[1/cm]');
model.variable('var_xs_OR').set('scat27', '0.00000000e+00[1/cm]');
model.variable('var_xs_OR').set('scat28', '0.00000000e+00[1/cm]');
model.variable('var_xs_OR').set('scat31', '0.00000000e+00[1/cm]');
model.variable('var_xs_OR').set('scat32', '0.00000000e+00[1/cm]');
model.variable('var_xs_OR').set('scat33', '5.16227000e-01[1/cm]');
model.variable('var_xs_OR').set('scat34', '1.99452000e-02[1/cm]');
model.variable('var_xs_OR').set('scat35', '0.00000000e+00[1/cm]');
model.variable('var_xs_OR').set('scat36', '0.00000000e+00[1/cm]');
model.variable('var_xs_OR').set('scat37', '0.00000000e+00[1/cm]');
model.variable('var_xs_OR').set('scat38', '0.00000000e+00[1/cm]');
model.variable('var_xs_OR').set('scat41', '0.00000000e+00[1/cm]');
model.variable('var_xs_OR').set('scat42', '0.00000000e+00[1/cm]');
model.variable('var_xs_OR').set('scat43', '0.00000000e+00[1/cm]');
model.variable('var_xs_OR').set('scat44', '4.99631000e-01[1/cm]');
model.variable('var_xs_OR').set('scat45', '3.79963000e-02[1/cm]');
model.variable('var_xs_OR').set('scat46', '0.00000000e+00[1/cm]');
model.variable('var_xs_OR').set('scat47', '0.00000000e+00[1/cm]');
model.variable('var_xs_OR').set('scat48', '0.00000000e+00[1/cm]');
model.variable('var_xs_OR').set('scat51', '0.00000000e+00[1/cm]');
model.variable('var_xs_OR').set('scat52', '0.00000000e+00[1/cm]');
model.variable('var_xs_OR').set('scat53', '0.00000000e+00[1/cm]');
model.variable('var_xs_OR').set('scat54', '1.58149000e-04[1/cm]');
model.variable('var_xs_OR').set('scat55', '4.13504000e-01[1/cm]');
model.variable('var_xs_OR').set('scat56', '1.23159000e-01[1/cm]');
model.variable('var_xs_OR').set('scat57', '1.94890000e-03[1/cm]');
model.variable('var_xs_OR').set('scat58', '0.00000000e+00[1/cm]');
model.variable('var_xs_OR').set('scat61', '0.00000000e+00[1/cm]');
model.variable('var_xs_OR').set('scat62', '0.00000000e+00[1/cm]');
model.variable('var_xs_OR').set('scat63', '0.00000000e+00[1/cm]');
model.variable('var_xs_OR').set('scat64', '0.00000000e+00[1/cm]');
model.variable('var_xs_OR').set('scat65', '1.23145000e-02[1/cm]');
model.variable('var_xs_OR').set('scat66', '4.38166000e-01[1/cm]');
model.variable('var_xs_OR').set('scat67', '8.59777000e-02[1/cm]');
model.variable('var_xs_OR').set('scat68', '4.56756000e-03[1/cm]');
model.variable('var_xs_OR').set('scat71', '0.00000000e+00[1/cm]');
model.variable('var_xs_OR').set('scat72', '0.00000000e+00[1/cm]');
model.variable('var_xs_OR').set('scat73', '0.00000000e+00[1/cm]');
model.variable('var_xs_OR').set('scat74', '0.00000000e+00[1/cm]');
model.variable('var_xs_OR').set('scat75', '1.57055000e-04[1/cm]');
model.variable('var_xs_OR').set('scat76', '5.82747000e-02[1/cm]');
model.variable('var_xs_OR').set('scat77', '4.66053000e-01[1/cm]');
model.variable('var_xs_OR').set('scat78', '2.78151000e-02[1/cm]');
model.variable('var_xs_OR').set('scat81', '0.00000000e+00[1/cm]');
model.variable('var_xs_OR').set('scat82', '0.00000000e+00[1/cm]');
model.variable('var_xs_OR').set('scat83', '0.00000000e+00[1/cm]');
model.variable('var_xs_OR').set('scat84', '0.00000000e+00[1/cm]');
model.variable('var_xs_OR').set('scat85', '0.00000000e+00[1/cm]');
model.variable('var_xs_OR').set('scat86', '1.00085000e-02[1/cm]');
model.variable('var_xs_OR').set('scat87', '9.57460000e-02[1/cm]');
model.variable('var_xs_OR').set('scat88', '4.78646000e-01[1/cm]');
model.variable('var_xs_OR').set('tot1', '2.02441000e-01[1/cm]');
model.variable('var_xs_OR').set('tot2', '4.46865000e-01[1/cm]');
model.variable('var_xs_OR').set('tot3', '5.36176000e-01[1/cm]');
model.variable('var_xs_OR').set('tot4', '5.37648000e-01[1/cm]');
model.variable('var_xs_OR').set('tot5', '5.38848000e-01[1/cm]');
model.variable('var_xs_OR').set('tot6', '5.41158000e-01[1/cm]');
model.variable('var_xs_OR').set('tot7', '5.52507000e-01[1/cm]');
model.variable('var_xs_OR').set('tot8', '5.84796000e-01[1/cm]');
model.variable('var_xs_OR').selection.geom('geom1', 3);
model.variable('var_xs_OR').selection.set([4]);
model.variable.create('var_xs_CB');
model.variable('var_xs_CB').model('mod1');
model.variable('var_xs_CB').set('beta1', '5.38313000e-03');
model.variable('var_xs_CB').set('betas1', '1.65619000e-04');
model.variable('var_xs_CB').set('betas2', '9.84868000e-04');
model.variable('var_xs_CB').set('betas3', '8.77782000e-04');
model.variable('var_xs_CB').set('betas4', '2.37174000e-03');
model.variable('var_xs_CB').set('betas5', '7.31647000e-04');
model.variable('var_xs_CB').set('betas6', '2.51474000e-04');
model.variable('var_xs_CB').set('chid1', '0.00000000e+00');
model.variable('var_xs_CB').set('chid2', '0.00000000e+00');
model.variable('var_xs_CB').set('chid3', '0.00000000e+00');
model.variable('var_xs_CB').set('chid4', '0.00000000e+00');
model.variable('var_xs_CB').set('chid5', '0.00000000e+00');
model.variable('var_xs_CB').set('chid6', '0.00000000e+00');
model.variable('var_xs_CB').set('chid7', '0.00000000e+00');
model.variable('var_xs_CB').set('chid8', '0.00000000e+00');
model.variable('var_xs_CB').set('chip1', '0.00000000e+00');
model.variable('var_xs_CB').set('chip2', '0.00000000e+00');
model.variable('var_xs_CB').set('chip3', '0.00000000e+00');
model.variable('var_xs_CB').set('chip4', '0.00000000e+00');
model.variable('var_xs_CB').set('chip5', '0.00000000e+00');
model.variable('var_xs_CB').set('chip6', '0.00000000e+00');
model.variable('var_xs_CB').set('chip7', '0.00000000e+00');
model.variable('var_xs_CB').set('chip8', '0.00000000e+00');
model.variable('var_xs_CB').set('chit1', '0.00000000e+00');
model.variable('var_xs_CB').set('chit2', '0.00000000e+00');
model.variable('var_xs_CB').set('chit3', '0.00000000e+00');
model.variable('var_xs_CB').set('chit4', '0.00000000e+00');
model.variable('var_xs_CB').set('chit5', '0.00000000e+00');
model.variable('var_xs_CB').set('chit6', '0.00000000e+00');
model.variable('var_xs_CB').set('chit7', '0.00000000e+00');
model.variable('var_xs_CB').set('chit8', '0.00000000e+00');
model.variable('var_xs_CB').set('diff11', '1.86411000e+00[cm]');
model.variable('var_xs_CB').set('diff12', '1.11680000e+00[cm]');
model.variable('var_xs_CB').set('diff13', '3.93265000e-01[cm]');
model.variable('var_xs_CB').set('diff14', '3.75334000e-01[cm]');
model.variable('var_xs_CB').set('diff15', '3.59902000e-01[cm]');
model.variable('var_xs_CB').set('diff16', '3.48792000e-01[cm]');
model.variable('var_xs_CB').set('diff17', '3.31962000e-01[cm]');
model.variable('var_xs_CB').set('diff18', '2.97634000e-01[cm]');
model.variable('var_xs_CB').set('fiss1', '0.00000000e+00[1/cm]');
model.variable('var_xs_CB').set('fiss2', '0.00000000e+00[1/cm]');
model.variable('var_xs_CB').set('fiss3', '0.00000000e+00[1/cm]');
model.variable('var_xs_CB').set('fiss4', '0.00000000e+00[1/cm]');
model.variable('var_xs_CB').set('fiss5', '0.00000000e+00[1/cm]');
model.variable('var_xs_CB').set('fiss6', '0.00000000e+00[1/cm]');
model.variable('var_xs_CB').set('fiss7', '0.00000000e+00[1/cm]');
model.variable('var_xs_CB').set('fiss8', '0.00000000e+00[1/cm]');
model.variable('var_xs_CB').set('invV1', '4.54064000e-10[s/cm]');
model.variable('var_xs_CB').set('invV2', '1.98156000e-09[s/cm]');
model.variable('var_xs_CB').set('invV3', '4.02770000e-08[s/cm]');
model.variable('var_xs_CB').set('invV4', '2.21239000e-07[s/cm]');
model.variable('var_xs_CB').set('invV5', '8.93044000e-07[s/cm]');
model.variable('var_xs_CB').set('invV6', '1.37916000e-06[s/cm]');
model.variable('var_xs_CB').set('invV7', '2.14055000e-06[s/cm]');
model.variable('var_xs_CB').set('invV8', '3.98305000e-06[s/cm]');
model.variable('var_xs_CB').set('kappa1', '0.00000000e+00[MeV]');
model.variable('var_xs_CB').set('kappa2', '0.00000000e+00[MeV]');
model.variable('var_xs_CB').set('kappa3', '0.00000000e+00[MeV]');
model.variable('var_xs_CB').set('kappa4', '0.00000000e+00[MeV]');
model.variable('var_xs_CB').set('kappa5', '0.00000000e+00[MeV]');
model.variable('var_xs_CB').set('kappa6', '0.00000000e+00[MeV]');
model.variable('var_xs_CB').set('kappa7', '0.00000000e+00[MeV]');
model.variable('var_xs_CB').set('kappa8', '0.00000000e+00[MeV]');
model.variable('var_xs_CB').set('lambdas1', '1.25423000e-02[1/s]');
model.variable('var_xs_CB').set('lambdas2', '3.13254000e-02[1/s]');
model.variable('var_xs_CB').set('lambdas3', '1.09681000e-01[1/s]');
model.variable('var_xs_CB').set('lambdas4', '3.16567000e-01[1/s]');
model.variable('var_xs_CB').set('lambdas5', '1.29511000e+00[1/s]');
model.variable('var_xs_CB').set('lambdas6', '8.02767000e+00[1/s]');
model.variable('var_xs_CB').set('nsf1', '0.00000000e+00[1/cm]');
model.variable('var_xs_CB').set('nsf2', '0.00000000e+00[1/cm]');
model.variable('var_xs_CB').set('nsf3', '0.00000000e+00[1/cm]');
model.variable('var_xs_CB').set('nsf4', '0.00000000e+00[1/cm]');
model.variable('var_xs_CB').set('nsf5', '0.00000000e+00[1/cm]');
model.variable('var_xs_CB').set('nsf6', '0.00000000e+00[1/cm]');
model.variable('var_xs_CB').set('nsf7', '0.00000000e+00[1/cm]');
model.variable('var_xs_CB').set('nsf8', '0.00000000e+00[1/cm]');
model.variable('var_xs_CB').set('diff21', '8.93291382e-01[cm]');
model.variable('var_xs_CB').set('diff22', '6.85824018e-01[cm]');
model.variable('var_xs_CB').set('diff23', '2.90578899e-01[cm]');
model.variable('var_xs_CB').set('diff24', '2.85416501e-01[cm]');
model.variable('var_xs_CB').set('diff25', '2.74137461e-01[cm]');
model.variable('var_xs_CB').set('diff26', '2.65955836e-01[cm]');
model.variable('var_xs_CB').set('diff27', '2.53342716e-01[cm]');
model.variable('var_xs_CB').set('diff28', '2.26284447e-01[cm]');
model.variable('var_xs_CB').set('rem1', '5.67761000e-02[1/cm]');
model.variable('var_xs_CB').set('rem2', '6.97190000e-03[1/cm]');
model.variable('var_xs_CB').set('rem3', '1.45039000e-02[1/cm]');
model.variable('var_xs_CB').set('rem4', '3.45799000e-02[1/cm]');
model.variable('var_xs_CB').set('rem5', '2.01385000e-01[1/cm]');
model.variable('var_xs_CB').set('rem6', '1.77878000e-01[1/cm]');
model.variable('var_xs_CB').set('rem7', '2.30782000e-01[1/cm]');
model.variable('var_xs_CB').set('rem8', '4.07699000e-01[1/cm]');
model.variable('var_xs_CB').set('scat11', '2.31084000e-01[1/cm]');
model.variable('var_xs_CB').set('scat12', '5.28261000e-02[1/cm]');
model.variable('var_xs_CB').set('scat13', '9.54798000e-05[1/cm]');
model.variable('var_xs_CB').set('scat14', '0.00000000e+00[1/cm]');
model.variable('var_xs_CB').set('scat15', '0.00000000e+00[1/cm]');
model.variable('var_xs_CB').set('scat16', '0.00000000e+00[1/cm]');
model.variable('var_xs_CB').set('scat17', '0.00000000e+00[1/cm]');
model.variable('var_xs_CB').set('scat18', '0.00000000e+00[1/cm]');
model.variable('var_xs_CB').set('scat21', '0.00000000e+00[1/cm]');
model.variable('var_xs_CB').set('scat22', '3.67969000e-01[1/cm]');
model.variable('var_xs_CB').set('scat23', '6.29170000e-03[1/cm]');
model.variable('var_xs_CB').set('scat24', '0.00000000e+00[1/cm]');
model.variable('var_xs_CB').set('scat25', '0.00000000e+00[1/cm]');
model.variable('var_xs_CB').set('scat26', '0.00000000e+00[1/cm]');
model.variable('var_xs_CB').set('scat27', '0.00000000e+00[1/cm]');
model.variable('var_xs_CB').set('scat28', '0.00000000e+00[1/cm]');
model.variable('var_xs_CB').set('scat31', '0.00000000e+00[1/cm]');
model.variable('var_xs_CB').set('scat32', '0.00000000e+00[1/cm]');
model.variable('var_xs_CB').set('scat33', '8.70429000e-01[1/cm]');
model.variable('var_xs_CB').set('scat34', '8.18635000e-03[1/cm]');
model.variable('var_xs_CB').set('scat35', '0.00000000e+00[1/cm]');
model.variable('var_xs_CB').set('scat36', '0.00000000e+00[1/cm]');
model.variable('var_xs_CB').set('scat37', '0.00000000e+00[1/cm]');
model.variable('var_xs_CB').set('scat38', '0.00000000e+00[1/cm]');
model.variable('var_xs_CB').set('scat41', '0.00000000e+00[1/cm]');
model.variable('var_xs_CB').set('scat42', '0.00000000e+00[1/cm]');
model.variable('var_xs_CB').set('scat43', '0.00000000e+00[1/cm]');
model.variable('var_xs_CB').set('scat44', '8.66359000e-01[1/cm]');
model.variable('var_xs_CB').set('scat45', '1.77183000e-02[1/cm]');
model.variable('var_xs_CB').set('scat46', '0.00000000e+00[1/cm]');
model.variable('var_xs_CB').set('scat47', '0.00000000e+00[1/cm]');
model.variable('var_xs_CB').set('scat48', '0.00000000e+00[1/cm]');
model.variable('var_xs_CB').set('scat51', '0.00000000e+00[1/cm]');
model.variable('var_xs_CB').set('scat52', '0.00000000e+00[1/cm]');
model.variable('var_xs_CB').set('scat53', '0.00000000e+00[1/cm]');
model.variable('var_xs_CB').set('scat54', '2.03292000e-04[1/cm]');
model.variable('var_xs_CB').set('scat55', '7.36622000e-01[1/cm]');
model.variable('var_xs_CB').set('scat56', '1.50434000e-01[1/cm]');
model.variable('var_xs_CB').set('scat57', '1.68840000e-06[1/cm]');
model.variable('var_xs_CB').set('scat58', '0.00000000e+00[1/cm]');
model.variable('var_xs_CB').set('scat61', '0.00000000e+00[1/cm]');
model.variable('var_xs_CB').set('scat62', '0.00000000e+00[1/cm]');
model.variable('var_xs_CB').set('scat63', '0.00000000e+00[1/cm]');
model.variable('var_xs_CB').set('scat64', '0.00000000e+00[1/cm]');
model.variable('var_xs_CB').set('scat65', '1.10724000e-02[1/cm]');
model.variable('var_xs_CB').set('scat66', '7.88984000e-01[1/cm]');
model.variable('var_xs_CB').set('scat67', '8.87253000e-02[1/cm]');
model.variable('var_xs_CB').set('scat68', '5.55947000e-06[1/cm]');
model.variable('var_xs_CB').set('scat71', '0.00000000e+00[1/cm]');
model.variable('var_xs_CB').set('scat72', '0.00000000e+00[1/cm]');
model.variable('var_xs_CB').set('scat73', '0.00000000e+00[1/cm]');
model.variable('var_xs_CB').set('scat74', '0.00000000e+00[1/cm]');
model.variable('var_xs_CB').set('scat75', '5.76788000e-08[1/cm]');
model.variable('var_xs_CB').set('scat76', '6.54326000e-02[1/cm]');
model.variable('var_xs_CB').set('scat77', '7.84213000e-01[1/cm]');
model.variable('var_xs_CB').set('scat78', '4.25132000e-02[1/cm]');
model.variable('var_xs_CB').set('scat81', '0.00000000e+00[1/cm]');
model.variable('var_xs_CB').set('scat82', '0.00000000e+00[1/cm]');
model.variable('var_xs_CB').set('scat83', '0.00000000e+00[1/cm]');
model.variable('var_xs_CB').set('scat84', '0.00000000e+00[1/cm]');
model.variable('var_xs_CB').set('scat85', '0.00000000e+00[1/cm]');
model.variable('var_xs_CB').set('scat86', '1.47505000e-05[1/cm]');
model.variable('var_xs_CB').set('scat87', '1.78634000e-01[1/cm]');
model.variable('var_xs_CB').set('scat88', '7.28670000e-01[1/cm]');
model.variable('var_xs_CB').set('tot1', '2.87860000e-01[1/cm]');
model.variable('var_xs_CB').set('tot2', '3.74940000e-01[1/cm]');
model.variable('var_xs_CB').set('tot3', '8.84933000e-01[1/cm]');
model.variable('var_xs_CB').set('tot4', '9.00939000e-01[1/cm]');
model.variable('var_xs_CB').set('tot5', '9.38007000e-01[1/cm]');
model.variable('var_xs_CB').set('tot6', '9.66863000e-01[1/cm]');
model.variable('var_xs_CB').set('tot7', '1.01500000e+00[1/cm]');
model.variable('var_xs_CB').set('tot8', '1.13637000e+00[1/cm]');
model.variable('var_xs_CB').selection.geom('geom1', 3);
model.variable('var_xs_CB').selection.set([3]);
model.variable.create('var_xs_DC');
model.variable('var_xs_DC').model('mod1');
model.variable('var_xs_DC').set('beta1', '5.38313000e-03');
model.variable('var_xs_DC').set('betas1', '1.65619000e-04');
model.variable('var_xs_DC').set('betas2', '9.84868000e-04');
model.variable('var_xs_DC').set('betas3', '8.77782000e-04');
model.variable('var_xs_DC').set('betas4', '2.37174000e-03');
model.variable('var_xs_DC').set('betas5', '7.31647000e-04');
model.variable('var_xs_DC').set('betas6', '2.51474000e-04');
model.variable('var_xs_DC').set('chid1', '0.00000000e+00');
model.variable('var_xs_DC').set('chid2', '0.00000000e+00');
model.variable('var_xs_DC').set('chid3', '0.00000000e+00');
model.variable('var_xs_DC').set('chid4', '0.00000000e+00');
model.variable('var_xs_DC').set('chid5', '0.00000000e+00');
model.variable('var_xs_DC').set('chid6', '0.00000000e+00');
model.variable('var_xs_DC').set('chid7', '0.00000000e+00');
model.variable('var_xs_DC').set('chid8', '0.00000000e+00');
model.variable('var_xs_DC').set('chip1', '0.00000000e+00');
model.variable('var_xs_DC').set('chip2', '0.00000000e+00');
model.variable('var_xs_DC').set('chip3', '0.00000000e+00');
model.variable('var_xs_DC').set('chip4', '0.00000000e+00');
model.variable('var_xs_DC').set('chip5', '0.00000000e+00');
model.variable('var_xs_DC').set('chip6', '0.00000000e+00');
model.variable('var_xs_DC').set('chip7', '0.00000000e+00');
model.variable('var_xs_DC').set('chip8', '0.00000000e+00');
model.variable('var_xs_DC').set('chit1', '0.00000000e+00');
model.variable('var_xs_DC').set('chit2', '0.00000000e+00');
model.variable('var_xs_DC').set('chit3', '0.00000000e+00');
model.variable('var_xs_DC').set('chit4', '0.00000000e+00');
model.variable('var_xs_DC').set('chit5', '0.00000000e+00');
model.variable('var_xs_DC').set('chit6', '0.00000000e+00');
model.variable('var_xs_DC').set('chit7', '0.00000000e+00');
model.variable('var_xs_DC').set('chit8', '0.00000000e+00');
model.variable('var_xs_DC').set('diff11', '2.56507000e+00[cm]');
model.variable('var_xs_DC').set('diff12', '1.06455000e+00[cm]');
model.variable('var_xs_DC').set('diff13', '1.28141000e+00[cm]');
model.variable('var_xs_DC').set('diff14', '1.28378000e+00[cm]');
model.variable('var_xs_DC').set('diff15', '1.28859000e+00[cm]');
model.variable('var_xs_DC').set('diff16', '1.27589000e+00[cm]');
model.variable('var_xs_DC').set('diff17', '1.25394000e+00[cm]');
model.variable('var_xs_DC').set('diff18', '1.16247000e+00[cm]');
model.variable('var_xs_DC').set('fiss1', '0.00000000e+00[1/cm]');
model.variable('var_xs_DC').set('fiss2', '0.00000000e+00[1/cm]');
model.variable('var_xs_DC').set('fiss3', '0.00000000e+00[1/cm]');
model.variable('var_xs_DC').set('fiss4', '0.00000000e+00[1/cm]');
model.variable('var_xs_DC').set('fiss5', '0.00000000e+00[1/cm]');
model.variable('var_xs_DC').set('fiss6', '0.00000000e+00[1/cm]');
model.variable('var_xs_DC').set('fiss7', '0.00000000e+00[1/cm]');
model.variable('var_xs_DC').set('fiss8', '0.00000000e+00[1/cm]');
model.variable('var_xs_DC').set('invV1', '4.53298000e-10[s/cm]');
model.variable('var_xs_DC').set('invV2', '2.06630000e-09[s/cm]');
model.variable('var_xs_DC').set('invV3', '3.86349000e-08[s/cm]');
model.variable('var_xs_DC').set('invV4', '2.19893000e-07[s/cm]');
model.variable('var_xs_DC').set('invV5', '8.77313000e-07[s/cm]');
model.variable('var_xs_DC').set('invV6', '1.37699000e-06[s/cm]');
model.variable('var_xs_DC').set('invV7', '2.13346000e-06[s/cm]');
model.variable('var_xs_DC').set('invV8', '4.04724000e-06[s/cm]');
model.variable('var_xs_DC').set('kappa1', '0.00000000e+00[MeV]');
model.variable('var_xs_DC').set('kappa2', '0.00000000e+00[MeV]');
model.variable('var_xs_DC').set('kappa3', '0.00000000e+00[MeV]');
model.variable('var_xs_DC').set('kappa4', '0.00000000e+00[MeV]');
model.variable('var_xs_DC').set('kappa5', '0.00000000e+00[MeV]');
model.variable('var_xs_DC').set('kappa6', '0.00000000e+00[MeV]');
model.variable('var_xs_DC').set('kappa7', '0.00000000e+00[MeV]');
model.variable('var_xs_DC').set('kappa8', '0.00000000e+00[MeV]');
model.variable('var_xs_DC').set('lambdas1', '1.25423000e-02[1/s]');
model.variable('var_xs_DC').set('lambdas2', '3.13254000e-02[1/s]');
model.variable('var_xs_DC').set('lambdas3', '1.09681000e-01[1/s]');
model.variable('var_xs_DC').set('lambdas4', '3.16567000e-01[1/s]');
model.variable('var_xs_DC').set('lambdas5', '1.29511000e+00[1/s]');
model.variable('var_xs_DC').set('lambdas6', '8.02767000e+00[1/s]');
model.variable('var_xs_DC').set('nsf1', '0.00000000e+00[1/cm]');
model.variable('var_xs_DC').set('nsf2', '0.00000000e+00[1/cm]');
model.variable('var_xs_DC').set('nsf3', '0.00000000e+00[1/cm]');
model.variable('var_xs_DC').set('nsf4', '0.00000000e+00[1/cm]');
model.variable('var_xs_DC').set('nsf5', '0.00000000e+00[1/cm]');
model.variable('var_xs_DC').set('nsf6', '0.00000000e+00[1/cm]');
model.variable('var_xs_DC').set('nsf7', '0.00000000e+00[1/cm]');
model.variable('var_xs_DC').set('nsf8', '0.00000000e+00[1/cm]');
model.variable('var_xs_DC').set('diff21', '1.31939853e+00[cm]');
model.variable('var_xs_DC').set('diff22', '7.22605716e-01[cm]');
model.variable('var_xs_DC').set('diff23', '9.30854090e-01[cm]');
model.variable('var_xs_DC').set('diff24', '9.42840800e-01[cm]');
model.variable('var_xs_DC').set('diff25', '9.40447716e-01[cm]');
model.variable('var_xs_DC').set('diff26', '9.34157953e-01[cm]');
model.variable('var_xs_DC').set('diff27', '9.19050070e-01[cm]');
model.variable('var_xs_DC').set('diff28', '8.54110764e-01[cm]');
model.variable('var_xs_DC').set('rem1', '4.91643000e-02[1/cm]');
model.variable('var_xs_DC').set('rem2', '1.34306000e-02[1/cm]');
model.variable('var_xs_DC').set('rem3', '1.00184000e-02[1/cm]');
model.variable('var_xs_DC').set('rem4', '2.04537000e-02[1/cm]');
model.variable('var_xs_DC').set('rem5', '8.66333000e-02[1/cm]');
model.variable('var_xs_DC').set('rem6', '6.17176000e-02[1/cm]');
model.variable('var_xs_DC').set('rem7', '6.48795000e-02[1/cm]');
model.variable('var_xs_DC').set('rem8', '1.03884000e-01[1/cm]');
model.variable('var_xs_DC').set('scat11', '1.45730000e-01[1/cm]');
model.variable('var_xs_DC').set('scat12', '4.57525000e-02[1/cm]');
model.variable('var_xs_DC').set('scat13', '0.00000000e+00[1/cm]');
model.variable('var_xs_DC').set('scat14', '0.00000000e+00[1/cm]');
model.variable('var_xs_DC').set('scat15', '0.00000000e+00[1/cm]');
model.variable('var_xs_DC').set('scat16', '0.00000000e+00[1/cm]');
model.variable('var_xs_DC').set('scat17', '0.00000000e+00[1/cm]');
model.variable('var_xs_DC').set('scat18', '0.00000000e+00[1/cm]');
model.variable('var_xs_DC').set('scat21', '0.00000000e+00[1/cm]');
model.variable('var_xs_DC').set('scat22', '3.42425000e-01[1/cm]');
model.variable('var_xs_DC').set('scat23', '1.34086000e-02[1/cm]');
model.variable('var_xs_DC').set('scat24', '0.00000000e+00[1/cm]');
model.variable('var_xs_DC').set('scat25', '0.00000000e+00[1/cm]');
model.variable('var_xs_DC').set('scat26', '0.00000000e+00[1/cm]');
model.variable('var_xs_DC').set('scat27', '0.00000000e+00[1/cm]');
model.variable('var_xs_DC').set('scat28', '0.00000000e+00[1/cm]');
model.variable('var_xs_DC').set('scat31', '0.00000000e+00[1/cm]');
model.variable('var_xs_DC').set('scat32', '0.00000000e+00[1/cm]');
model.variable('var_xs_DC').set('scat33', '2.66225000e-01[1/cm]');
model.variable('var_xs_DC').set('scat34', '9.99984000e-03[1/cm]');
model.variable('var_xs_DC').set('scat35', '0.00000000e+00[1/cm]');
model.variable('var_xs_DC').set('scat36', '0.00000000e+00[1/cm]');
model.variable('var_xs_DC').set('scat37', '0.00000000e+00[1/cm]');
model.variable('var_xs_DC').set('scat38', '0.00000000e+00[1/cm]');
model.variable('var_xs_DC').set('scat41', '0.00000000e+00[1/cm]');
model.variable('var_xs_DC').set('scat42', '0.00000000e+00[1/cm]');
model.variable('var_xs_DC').set('scat43', '0.00000000e+00[1/cm]');
model.variable('var_xs_DC').set('scat44', '2.52278000e-01[1/cm]');
model.variable('var_xs_DC').set('scat45', '2.03298000e-02[1/cm]');
model.variable('var_xs_DC').set('scat46', '0.00000000e+00[1/cm]');
model.variable('var_xs_DC').set('scat47', '0.00000000e+00[1/cm]');
model.variable('var_xs_DC').set('scat48', '0.00000000e+00[1/cm]');
model.variable('var_xs_DC').set('scat51', '0.00000000e+00[1/cm]');
model.variable('var_xs_DC').set('scat52', '0.00000000e+00[1/cm]');
model.variable('var_xs_DC').set('scat53', '0.00000000e+00[1/cm]');
model.variable('var_xs_DC').set('scat54', '3.48128000e-05[1/cm]');
model.variable('var_xs_DC').set('scat55', '1.86793000e-01[1/cm]');
model.variable('var_xs_DC').set('scat56', '8.54470000e-02[1/cm]');
model.variable('var_xs_DC').set('scat57', '8.26174000e-04[1/cm]');
model.variable('var_xs_DC').set('scat58', '2.02846000e-06[1/cm]');
model.variable('var_xs_DC').set('scat61', '0.00000000e+00[1/cm]');
model.variable('var_xs_DC').set('scat62', '0.00000000e+00[1/cm]');
model.variable('var_xs_DC').set('scat63', '0.00000000e+00[1/cm]');
model.variable('var_xs_DC').set('scat64', '0.00000000e+00[1/cm]');
model.variable('var_xs_DC').set('scat65', '5.90354000e-03[1/cm]');
model.variable('var_xs_DC').set('scat66', '2.13550000e-01[1/cm]');
model.variable('var_xs_DC').set('scat67', '5.42882000e-02[1/cm]');
model.variable('var_xs_DC').set('scat68', '9.20484000e-04[1/cm]');
model.variable('var_xs_DC').set('scat71', '0.00000000e+00[1/cm]');
model.variable('var_xs_DC').set('scat72', '0.00000000e+00[1/cm]');
model.variable('var_xs_DC').set('scat73', '0.00000000e+00[1/cm]');
model.variable('var_xs_DC').set('scat74', '0.00000000e+00[1/cm]');
model.variable('var_xs_DC').set('scat75', '2.85507000e-05[1/cm]');
model.variable('var_xs_DC').set('scat76', '3.70724000e-02[1/cm]');
model.variable('var_xs_DC').set('scat77', '2.14913000e-01[1/cm]');
model.variable('var_xs_DC').set('scat78', '2.68809000e-02[1/cm]');
model.variable('var_xs_DC').set('scat81', '0.00000000e+00[1/cm]');
model.variable('var_xs_DC').set('scat82', '0.00000000e+00[1/cm]');
model.variable('var_xs_DC').set('scat83', '0.00000000e+00[1/cm]');
model.variable('var_xs_DC').set('scat84', '0.00000000e+00[1/cm]');
model.variable('var_xs_DC').set('scat85', '0.00000000e+00[1/cm]');
model.variable('var_xs_DC').set('scat86', '1.76215000e-03[1/cm]');
model.variable('var_xs_DC').set('scat87', '1.00355000e-01[1/cm]');
model.variable('var_xs_DC').set('scat88', '1.97181000e-01[1/cm]');
model.variable('var_xs_DC').set('tot1', '1.94894000e-01[1/cm]');
model.variable('var_xs_DC').set('tot2', '3.55855000e-01[1/cm]');
model.variable('var_xs_DC').set('tot3', '2.76244000e-01[1/cm]');
model.variable('var_xs_DC').set('tot4', '2.72732000e-01[1/cm]');
model.variable('var_xs_DC').set('tot5', '2.73426000e-01[1/cm]');
model.variable('var_xs_DC').set('tot6', '2.75267000e-01[1/cm]');
model.variable('var_xs_DC').set('tot7', '2.79792000e-01[1/cm]');
model.variable('var_xs_DC').set('tot8', '3.01065000e-01[1/cm]');
model.variable('var_xs_DC').selection.geom('geom1', 3);
model.variable('var_xs_DC').selection.set([2]);
model.variable.create('var_xs_VS');
model.variable('var_xs_VS').model('mod1');
model.variable('var_xs_VS').set('beta1', '5.38313000e-03');
model.variable('var_xs_VS').set('betas1', '1.65619000e-04');
model.variable('var_xs_VS').set('betas2', '9.84868000e-04');
model.variable('var_xs_VS').set('betas3', '8.77782000e-04');
model.variable('var_xs_VS').set('betas4', '2.37174000e-03');
model.variable('var_xs_VS').set('betas5', '7.31647000e-04');
model.variable('var_xs_VS').set('betas6', '2.51474000e-04');
model.variable('var_xs_VS').set('chid1', '0.00000000e+00');
model.variable('var_xs_VS').set('chid2', '0.00000000e+00');
model.variable('var_xs_VS').set('chid3', '0.00000000e+00');
model.variable('var_xs_VS').set('chid4', '0.00000000e+00');
model.variable('var_xs_VS').set('chid5', '0.00000000e+00');
model.variable('var_xs_VS').set('chid6', '0.00000000e+00');
model.variable('var_xs_VS').set('chid7', '0.00000000e+00');
model.variable('var_xs_VS').set('chid8', '0.00000000e+00');
model.variable('var_xs_VS').set('chip1', '0.00000000e+00');
model.variable('var_xs_VS').set('chip2', '0.00000000e+00');
model.variable('var_xs_VS').set('chip3', '0.00000000e+00');
model.variable('var_xs_VS').set('chip4', '0.00000000e+00');
model.variable('var_xs_VS').set('chip5', '0.00000000e+00');
model.variable('var_xs_VS').set('chip6', '0.00000000e+00');
model.variable('var_xs_VS').set('chip7', '0.00000000e+00');
model.variable('var_xs_VS').set('chip8', '0.00000000e+00');
model.variable('var_xs_VS').set('chit1', '0.00000000e+00');
model.variable('var_xs_VS').set('chit2', '0.00000000e+00');
model.variable('var_xs_VS').set('chit3', '0.00000000e+00');
model.variable('var_xs_VS').set('chit4', '0.00000000e+00');
model.variable('var_xs_VS').set('chit5', '0.00000000e+00');
model.variable('var_xs_VS').set('chit6', '0.00000000e+00');
model.variable('var_xs_VS').set('chit7', '0.00000000e+00');
model.variable('var_xs_VS').set('chit8', '0.00000000e+00');
model.variable('var_xs_VS').set('diff11', '1.74463000e+00[cm]');
model.variable('var_xs_VS').set('diff12', '1.16358000e+00[cm]');
model.variable('var_xs_VS').set('diff13', '4.08534000e-01[cm]');
model.variable('var_xs_VS').set('diff14', '3.74536000e-01[cm]');
model.variable('var_xs_VS').set('diff15', '3.60740000e-01[cm]');
model.variable('var_xs_VS').set('diff16', '3.48636000e-01[cm]');
model.variable('var_xs_VS').set('diff17', '3.32702000e-01[cm]');
model.variable('var_xs_VS').set('diff18', '2.99144000e-01[cm]');
model.variable('var_xs_VS').set('fiss1', '0.00000000e+00[1/cm]');
model.variable('var_xs_VS').set('fiss2', '0.00000000e+00[1/cm]');
model.variable('var_xs_VS').set('fiss3', '0.00000000e+00[1/cm]');
model.variable('var_xs_VS').set('fiss4', '0.00000000e+00[1/cm]');
model.variable('var_xs_VS').set('fiss5', '0.00000000e+00[1/cm]');
model.variable('var_xs_VS').set('fiss6', '0.00000000e+00[1/cm]');
model.variable('var_xs_VS').set('fiss7', '0.00000000e+00[1/cm]');
model.variable('var_xs_VS').set('fiss8', '0.00000000e+00[1/cm]');
model.variable('var_xs_VS').set('invV1', '4.61207000e-10[s/cm]');
model.variable('var_xs_VS').set('invV2', '1.97621000e-09[s/cm]');
model.variable('var_xs_VS').set('invV3', '3.77170000e-08[s/cm]');
model.variable('var_xs_VS').set('invV4', '2.20503000e-07[s/cm]');
model.variable('var_xs_VS').set('invV5', '8.60253000e-07[s/cm]');
model.variable('var_xs_VS').set('invV6', '1.37009000e-06[s/cm]');
model.variable('var_xs_VS').set('invV7', '2.11149000e-06[s/cm]');
model.variable('var_xs_VS').set('invV8', '3.89340000e-06[s/cm]');
model.variable('var_xs_VS').set('kappa1', '0.00000000e+00[MeV]');
model.variable('var_xs_VS').set('kappa2', '0.00000000e+00[MeV]');
model.variable('var_xs_VS').set('kappa3', '0.00000000e+00[MeV]');
model.variable('var_xs_VS').set('kappa4', '0.00000000e+00[MeV]');
model.variable('var_xs_VS').set('kappa5', '0.00000000e+00[MeV]');
model.variable('var_xs_VS').set('kappa6', '0.00000000e+00[MeV]');
model.variable('var_xs_VS').set('kappa7', '0.00000000e+00[MeV]');
model.variable('var_xs_VS').set('kappa8', '0.00000000e+00[MeV]');
model.variable('var_xs_VS').set('lambdas1', '1.25423000e-02[1/s]');
model.variable('var_xs_VS').set('lambdas2', '3.13254000e-02[1/s]');
model.variable('var_xs_VS').set('lambdas3', '1.09681000e-01[1/s]');
model.variable('var_xs_VS').set('lambdas4', '3.16567000e-01[1/s]');
model.variable('var_xs_VS').set('lambdas5', '1.29511000e+00[1/s]');
model.variable('var_xs_VS').set('lambdas6', '8.02767000e+00[1/s]');
model.variable('var_xs_VS').set('nsf1', '0.00000000e+00[1/cm]');
model.variable('var_xs_VS').set('nsf2', '0.00000000e+00[1/cm]');
model.variable('var_xs_VS').set('nsf3', '0.00000000e+00[1/cm]');
model.variable('var_xs_VS').set('nsf4', '0.00000000e+00[1/cm]');
model.variable('var_xs_VS').set('nsf5', '0.00000000e+00[1/cm]');
model.variable('var_xs_VS').set('nsf6', '0.00000000e+00[1/cm]');
model.variable('var_xs_VS').set('nsf7', '0.00000000e+00[1/cm]');
model.variable('var_xs_VS').set('nsf8', '0.00000000e+00[1/cm]');
model.variable('var_xs_VS').set('diff21', '8.99786751e-01[cm]');
model.variable('var_xs_VS').set('diff22', '7.24209395e-01[cm]');
model.variable('var_xs_VS').set('diff23', '2.98771253e-01[cm]');
model.variable('var_xs_VS').set('diff24', '2.85281609e-01[cm]');
model.variable('var_xs_VS').set('diff25', '2.74706785e-01[cm]');
model.variable('var_xs_VS').set('diff26', '2.66108312e-01[cm]');
model.variable('var_xs_VS').set('diff27', '2.53807822e-01[cm]');
model.variable('var_xs_VS').set('diff28', '2.27541928e-01[cm]');
model.variable('var_xs_VS').set('rem1', '6.37331000e-02[1/cm]');
model.variable('var_xs_VS').set('rem2', '6.38434000e-03[1/cm]');
model.variable('var_xs_VS').set('rem3', '1.36121000e-02[1/cm]');
model.variable('var_xs_VS').set('rem4', '3.43647000e-02[1/cm]');
model.variable('var_xs_VS').set('rem5', '1.81941000e-01[1/cm]');
model.variable('var_xs_VS').set('rem6', '1.73443000e-01[1/cm]');
model.variable('var_xs_VS').set('rem7', '2.30027000e-01[1/cm]');
model.variable('var_xs_VS').set('rem8', '4.13066000e-01[1/cm]');
model.variable('var_xs_VS').set('scat11', '2.22049000e-01[1/cm]');
model.variable('var_xs_VS').set('scat12', '6.05886000e-02[1/cm]');
model.variable('var_xs_VS').set('scat13', '0.00000000e+00[1/cm]');
model.variable('var_xs_VS').set('scat14', '0.00000000e+00[1/cm]');
model.variable('var_xs_VS').set('scat15', '0.00000000e+00[1/cm]');
model.variable('var_xs_VS').set('scat16', '0.00000000e+00[1/cm]');
model.variable('var_xs_VS').set('scat17', '0.00000000e+00[1/cm]');
model.variable('var_xs_VS').set('scat18', '0.00000000e+00[1/cm]');
model.variable('var_xs_VS').set('scat21', '0.00000000e+00[1/cm]');
model.variable('var_xs_VS').set('scat22', '3.48683000e-01[1/cm]');
model.variable('var_xs_VS').set('scat23', '5.65538000e-03[1/cm]');
model.variable('var_xs_VS').set('scat24', '0.00000000e+00[1/cm]');
model.variable('var_xs_VS').set('scat25', '0.00000000e+00[1/cm]');
model.variable('var_xs_VS').set('scat26', '0.00000000e+00[1/cm]');
model.variable('var_xs_VS').set('scat27', '0.00000000e+00[1/cm]');
model.variable('var_xs_VS').set('scat28', '0.00000000e+00[1/cm]');
model.variable('var_xs_VS').set('scat31', '0.00000000e+00[1/cm]');
model.variable('var_xs_VS').set('scat32', '0.00000000e+00[1/cm]');
model.variable('var_xs_VS').set('scat33', '8.47055000e-01[1/cm]');
model.variable('var_xs_VS').set('scat34', '7.59044000e-03[1/cm]');
model.variable('var_xs_VS').set('scat35', '0.00000000e+00[1/cm]');
model.variable('var_xs_VS').set('scat36', '0.00000000e+00[1/cm]');
model.variable('var_xs_VS').set('scat37', '0.00000000e+00[1/cm]');
model.variable('var_xs_VS').set('scat38', '0.00000000e+00[1/cm]');
model.variable('var_xs_VS').set('scat41', '0.00000000e+00[1/cm]');
model.variable('var_xs_VS').set('scat42', '0.00000000e+00[1/cm]');
model.variable('var_xs_VS').set('scat43', '0.00000000e+00[1/cm]');
model.variable('var_xs_VS').set('scat44', '8.67001000e-01[1/cm]');
model.variable('var_xs_VS').set('scat45', '1.69257000e-02[1/cm]');
model.variable('var_xs_VS').set('scat46', '0.00000000e+00[1/cm]');
model.variable('var_xs_VS').set('scat47', '0.00000000e+00[1/cm]');
model.variable('var_xs_VS').set('scat48', '0.00000000e+00[1/cm]');
model.variable('var_xs_VS').set('scat51', '0.00000000e+00[1/cm]');
model.variable('var_xs_VS').set('scat52', '0.00000000e+00[1/cm]');
model.variable('var_xs_VS').set('scat53', '0.00000000e+00[1/cm]');
model.variable('var_xs_VS').set('scat54', '3.83264000e-04[1/cm]');
model.variable('var_xs_VS').set('scat55', '7.54122000e-01[1/cm]');
model.variable('var_xs_VS').set('scat56', '1.33125000e-01[1/cm]');
model.variable('var_xs_VS').set('scat57', '6.02152000e-06[1/cm]');
model.variable('var_xs_VS').set('scat58', '0.00000000e+00[1/cm]');
model.variable('var_xs_VS').set('scat61', '0.00000000e+00[1/cm]');
model.variable('var_xs_VS').set('scat62', '0.00000000e+00[1/cm]');
model.variable('var_xs_VS').set('scat63', '0.00000000e+00[1/cm]');
model.variable('var_xs_VS').set('scat64', '0.00000000e+00[1/cm]');
model.variable('var_xs_VS').set('scat65', '1.21708000e-02[1/cm]');
model.variable('var_xs_VS').set('scat66', '7.92866000e-01[1/cm]');
model.variable('var_xs_VS').set('scat67', '8.36196000e-02[1/cm]');
model.variable('var_xs_VS').set('scat68', '6.53864000e-06[1/cm]');
model.variable('var_xs_VS').set('scat71', '0.00000000e+00[1/cm]');
model.variable('var_xs_VS').set('scat72', '0.00000000e+00[1/cm]');
model.variable('var_xs_VS').set('scat73', '0.00000000e+00[1/cm]');
model.variable('var_xs_VS').set('scat74', '0.00000000e+00[1/cm]');
model.variable('var_xs_VS').set('scat75', '0.00000000e+00[1/cm]');
model.variable('var_xs_VS').set('scat76', '7.16503000e-02[1/cm]');
model.variable('var_xs_VS').set('scat77', '7.83116000e-01[1/cm]');
model.variable('var_xs_VS').set('scat78', '3.72161000e-02[1/cm]');
model.variable('var_xs_VS').set('scat81', '0.00000000e+00[1/cm]');
model.variable('var_xs_VS').set('scat82', '0.00000000e+00[1/cm]');
model.variable('var_xs_VS').set('scat83', '0.00000000e+00[1/cm]');
model.variable('var_xs_VS').set('scat84', '0.00000000e+00[1/cm]');
model.variable('var_xs_VS').set('scat85', '0.00000000e+00[1/cm]');
model.variable('var_xs_VS').set('scat86', '1.07064000e-05[1/cm]');
model.variable('var_xs_VS').set('scat87', '1.89654000e-01[1/cm]');
model.variable('var_xs_VS').set('scat88', '7.17024000e-01[1/cm]');
model.variable('var_xs_VS').set('tot1', '2.85782000e-01[1/cm]');
model.variable('var_xs_VS').set('tot2', '3.55067000e-01[1/cm]');
model.variable('var_xs_VS').set('tot3', '8.60668000e-01[1/cm]');
model.variable('var_xs_VS').set('tot4', '9.01365000e-01[1/cm]');
model.variable('var_xs_VS').set('tot5', '9.36063000e-01[1/cm]');
model.variable('var_xs_VS').set('tot6', '9.66309000e-01[1/cm]');
model.variable('var_xs_VS').set('tot7', '1.01314000e+00[1/cm]');
model.variable('var_xs_VS').set('tot8', '1.13009000e+00[1/cm]');
model.variable('var_xs_VS').selection.geom('geom1', 3);
model.variable('var_xs_VS').selection.set([1]);
model.variable.create('var_xs_CRCC1');
model.variable('var_xs_CRCC1').model('mod1');
model.variable('var_xs_CRCC1').set('beta1', '5.38313000e-03');
model.variable('var_xs_CRCC1').set('betas1', '1.65619000e-04');
model.variable('var_xs_CRCC1').set('betas2', '9.84868000e-04');
model.variable('var_xs_CRCC1').set('betas3', '8.77782000e-04');
model.variable('var_xs_CRCC1').set('betas4', '2.37174000e-03');
model.variable('var_xs_CRCC1').set('betas5', '7.31647000e-04');
model.variable('var_xs_CRCC1').set('betas6', '2.51474000e-04');
model.variable('var_xs_CRCC1').set('chid1', '0.00000000e+00');
model.variable('var_xs_CRCC1').set('chid2', '0.00000000e+00');
model.variable('var_xs_CRCC1').set('chid3', '0.00000000e+00');
model.variable('var_xs_CRCC1').set('chid4', '0.00000000e+00');
model.variable('var_xs_CRCC1').set('chid5', '0.00000000e+00');
model.variable('var_xs_CRCC1').set('chid6', '0.00000000e+00');
model.variable('var_xs_CRCC1').set('chid7', '0.00000000e+00');
model.variable('var_xs_CRCC1').set('chid8', '0.00000000e+00');
model.variable('var_xs_CRCC1').set('chip1', '0.00000000e+00');
model.variable('var_xs_CRCC1').set('chip2', '0.00000000e+00');
model.variable('var_xs_CRCC1').set('chip3', '0.00000000e+00');
model.variable('var_xs_CRCC1').set('chip4', '0.00000000e+00');
model.variable('var_xs_CRCC1').set('chip5', '0.00000000e+00');
model.variable('var_xs_CRCC1').set('chip6', '0.00000000e+00');
model.variable('var_xs_CRCC1').set('chip7', '0.00000000e+00');
model.variable('var_xs_CRCC1').set('chip8', '0.00000000e+00');
model.variable('var_xs_CRCC1').set('chit1', '0.00000000e+00');
model.variable('var_xs_CRCC1').set('chit2', '0.00000000e+00');
model.variable('var_xs_CRCC1').set('chit3', '0.00000000e+00');
model.variable('var_xs_CRCC1').set('chit4', '0.00000000e+00');
model.variable('var_xs_CRCC1').set('chit5', '0.00000000e+00');
model.variable('var_xs_CRCC1').set('chit6', '0.00000000e+00');
model.variable('var_xs_CRCC1').set('chit7', '0.00000000e+00');
model.variable('var_xs_CRCC1').set('chit8', '0.00000000e+00');
model.variable('var_xs_CRCC1').set('diff11', '2.21407000e+00[cm]');
model.variable('var_xs_CRCC1').set('diff12', '1.09602000e+00[cm]');
model.variable('var_xs_CRCC1').set('diff13', '1.30610000e+00[cm]');
model.variable('var_xs_CRCC1').set('diff14', '1.32069000e+00[cm]');
model.variable('var_xs_CRCC1').set('diff15', '1.31919000e+00[cm]');
model.variable('var_xs_CRCC1').set('diff16', '1.30639000e+00[cm]');
model.variable('var_xs_CRCC1').set('diff17', '1.27999000e+00[cm]');
model.variable('var_xs_CRCC1').set('diff18', '1.17085000e+00[cm]');
model.variable('var_xs_CRCC1').set('fiss1', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC1').set('fiss2', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC1').set('fiss3', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC1').set('fiss4', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC1').set('fiss5', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC1').set('fiss6', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC1').set('fiss7', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC1').set('fiss8', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC1').set('invV1', '4.83782000e-10[s/cm]');
model.variable('var_xs_CRCC1').set('invV2', '2.09139000e-09[s/cm]');
model.variable('var_xs_CRCC1').set('invV3', '3.30696000e-08[s/cm]');
model.variable('var_xs_CRCC1').set('invV4', '2.07310000e-07[s/cm]');
model.variable('var_xs_CRCC1').set('invV5', '7.07869000e-07[s/cm]');
model.variable('var_xs_CRCC1').set('invV6', '1.37466000e-06[s/cm]');
model.variable('var_xs_CRCC1').set('invV7', '2.16717000e-06[s/cm]');
model.variable('var_xs_CRCC1').set('invV8', '4.18367000e-06[s/cm]');
model.variable('var_xs_CRCC1').set('kappa1', '0.00000000e+00[MeV]');
model.variable('var_xs_CRCC1').set('kappa2', '0.00000000e+00[MeV]');
model.variable('var_xs_CRCC1').set('kappa3', '0.00000000e+00[MeV]');
model.variable('var_xs_CRCC1').set('kappa4', '0.00000000e+00[MeV]');
model.variable('var_xs_CRCC1').set('kappa5', '0.00000000e+00[MeV]');
model.variable('var_xs_CRCC1').set('kappa6', '0.00000000e+00[MeV]');
model.variable('var_xs_CRCC1').set('kappa7', '0.00000000e+00[MeV]');
model.variable('var_xs_CRCC1').set('kappa8', '0.00000000e+00[MeV]');
model.variable('var_xs_CRCC1').set('lambdas1', '1.25423000e-02[1/s]');
model.variable('var_xs_CRCC1').set('lambdas2', '3.13254000e-02[1/s]');
model.variable('var_xs_CRCC1').set('lambdas3', '1.09681000e-01[1/s]');
model.variable('var_xs_CRCC1').set('lambdas4', '3.16567000e-01[1/s]');
model.variable('var_xs_CRCC1').set('lambdas5', '1.29511000e+00[1/s]');
model.variable('var_xs_CRCC1').set('lambdas6', '8.02767000e+00[1/s]');
model.variable('var_xs_CRCC1').set('nsf1', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC1').set('nsf2', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC1').set('nsf3', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC1').set('nsf4', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC1').set('nsf5', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC1').set('nsf6', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC1').set('nsf7', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC1').set('nsf8', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC1').set('diff21', '1.30270811e+00[cm]');
model.variable('var_xs_CRCC1').set('diff22', '7.46768050e-01[cm]');
model.variable('var_xs_CRCC1').set('diff23', '9.55299924e-01[cm]');
model.variable('var_xs_CRCC1').set('diff24', '9.66546224e-01[cm]');
model.variable('var_xs_CRCC1').set('diff25', '9.65428540e-01[cm]');
model.variable('var_xs_CRCC1').set('diff26', '9.56796391e-01[cm]');
model.variable('var_xs_CRCC1').set('diff27', '9.38782514e-01[cm]');
model.variable('var_xs_CRCC1').set('diff28', '8.60323185e-01[cm]');
model.variable('var_xs_CRCC1').set('rem1', '5.38541000e-02[1/cm]');
model.variable('var_xs_CRCC1').set('rem2', '1.49707000e-02[1/cm]');
model.variable('var_xs_CRCC1').set('rem3', '6.72838000e-03[1/cm]');
model.variable('var_xs_CRCC1').set('rem4', '1.53269000e-02[1/cm]');
model.variable('var_xs_CRCC1').set('rem5', '3.68997000e-02[1/cm]');
model.variable('var_xs_CRCC1').set('rem6', '6.16232000e-02[1/cm]');
model.variable('var_xs_CRCC1').set('rem7', '6.73110000e-02[1/cm]');
model.variable('var_xs_CRCC1').set('rem8', '1.04905000e-01[1/cm]');
model.variable('var_xs_CRCC1').set('scat11', '1.43536000e-01[1/cm]');
model.variable('var_xs_CRCC1').set('scat12', '5.22759000e-02[1/cm]');
model.variable('var_xs_CRCC1').set('scat13', '4.50973000e-05[1/cm]');
model.variable('var_xs_CRCC1').set('scat14', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC1').set('scat15', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC1').set('scat16', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC1').set('scat17', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC1').set('scat18', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC1').set('scat21', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC1').set('scat22', '3.29371000e-01[1/cm]');
model.variable('var_xs_CRCC1').set('scat23', '1.49096000e-02[1/cm]');
model.variable('var_xs_CRCC1').set('scat24', '3.87118000e-08[1/cm]');
model.variable('var_xs_CRCC1').set('scat25', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC1').set('scat26', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC1').set('scat27', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC1').set('scat28', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC1').set('scat31', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC1').set('scat32', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC1').set('scat33', '2.62447000e-01[1/cm]');
model.variable('var_xs_CRCC1').set('scat34', '6.71212000e-03[1/cm]');
model.variable('var_xs_CRCC1').set('scat35', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC1').set('scat36', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC1').set('scat37', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC1').set('scat38', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC1').set('scat41', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC1').set('scat42', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC1').set('scat43', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC1').set('scat44', '2.50716000e-01[1/cm]');
model.variable('var_xs_CRCC1').set('scat45', '1.52398000e-02[1/cm]');
model.variable('var_xs_CRCC1').set('scat46', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC1').set('scat47', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC1').set('scat48', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC1').set('scat51', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC1').set('scat52', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC1').set('scat53', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC1').set('scat54', '1.75392000e-04[1/cm]');
model.variable('var_xs_CRCC1').set('scat55', '2.29452000e-01[1/cm]');
model.variable('var_xs_CRCC1').set('scat56', '3.60384000e-02[1/cm]');
model.variable('var_xs_CRCC1').set('scat57', '3.84119000e-04[1/cm]');
model.variable('var_xs_CRCC1').set('scat58', '3.11739000e-06[1/cm]');
model.variable('var_xs_CRCC1').set('scat61', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC1').set('scat62', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC1').set('scat63', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC1').set('scat64', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC1').set('scat65', '7.25462000e-03[1/cm]');
model.variable('var_xs_CRCC1').set('scat66', '2.07131000e-01[1/cm]');
model.variable('var_xs_CRCC1').set('scat67', '5.27642000e-02[1/cm]');
model.variable('var_xs_CRCC1').set('scat68', '1.03121000e-03[1/cm]');
model.variable('var_xs_CRCC1').set('scat71', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC1').set('scat72', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC1').set('scat73', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC1').set('scat74', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC1').set('scat75', '4.72401000e-05[1/cm]');
model.variable('var_xs_CRCC1').set('scat76', '3.73205000e-02[1/cm]');
model.variable('var_xs_CRCC1').set('scat77', '2.06600000e-01[1/cm]');
model.variable('var_xs_CRCC1').set('scat78', '2.90417000e-02[1/cm]');
model.variable('var_xs_CRCC1').set('scat81', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC1').set('scat82', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC1').set('scat83', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC1').set('scat84', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC1').set('scat85', '1.22308000e-06[1/cm]');
model.variable('var_xs_CRCC1').set('scat86', '2.46773000e-03[1/cm]');
model.variable('var_xs_CRCC1').set('scat87', '1.00699000e-01[1/cm]');
model.variable('var_xs_CRCC1').set('scat88', '1.93986000e-01[1/cm]');
model.variable('var_xs_CRCC1').set('tot1', '1.97391000e-01[1/cm]');
model.variable('var_xs_CRCC1').set('tot2', '3.44341000e-01[1/cm]');
model.variable('var_xs_CRCC1').set('tot3', '2.69175000e-01[1/cm]');
model.variable('var_xs_CRCC1').set('tot4', '2.66043000e-01[1/cm]');
model.variable('var_xs_CRCC1').set('tot5', '2.66351000e-01[1/cm]');
model.variable('var_xs_CRCC1').set('tot6', '2.68754000e-01[1/cm]');
model.variable('var_xs_CRCC1').set('tot7', '2.73911000e-01[1/cm]');
model.variable('var_xs_CRCC1').set('tot8', '2.98891000e-01[1/cm]');
model.variable('var_xs_CRCC1').selection.geom('geom1', 3);
model.variable('var_xs_CRCC1').selection.set([12]);
model.variable.create('var_xs_CRCC2');
model.variable('var_xs_CRCC2').model('mod1');
model.variable('var_xs_CRCC2').set('beta1', '5.38313000e-03');
model.variable('var_xs_CRCC2').set('betas1', '1.65619000e-04');
model.variable('var_xs_CRCC2').set('betas2', '9.84868000e-04');
model.variable('var_xs_CRCC2').set('betas3', '8.77782000e-04');
model.variable('var_xs_CRCC2').set('betas4', '2.37174000e-03');
model.variable('var_xs_CRCC2').set('betas5', '7.31647000e-04');
model.variable('var_xs_CRCC2').set('betas6', '2.51474000e-04');
model.variable('var_xs_CRCC2').set('chid1', '0.00000000e+00');
model.variable('var_xs_CRCC2').set('chid2', '0.00000000e+00');
model.variable('var_xs_CRCC2').set('chid3', '0.00000000e+00');
model.variable('var_xs_CRCC2').set('chid4', '0.00000000e+00');
model.variable('var_xs_CRCC2').set('chid5', '0.00000000e+00');
model.variable('var_xs_CRCC2').set('chid6', '0.00000000e+00');
model.variable('var_xs_CRCC2').set('chid7', '0.00000000e+00');
model.variable('var_xs_CRCC2').set('chid8', '0.00000000e+00');
model.variable('var_xs_CRCC2').set('chip1', '0.00000000e+00');
model.variable('var_xs_CRCC2').set('chip2', '0.00000000e+00');
model.variable('var_xs_CRCC2').set('chip3', '0.00000000e+00');
model.variable('var_xs_CRCC2').set('chip4', '0.00000000e+00');
model.variable('var_xs_CRCC2').set('chip5', '0.00000000e+00');
model.variable('var_xs_CRCC2').set('chip6', '0.00000000e+00');
model.variable('var_xs_CRCC2').set('chip7', '0.00000000e+00');
model.variable('var_xs_CRCC2').set('chip8', '0.00000000e+00');
model.variable('var_xs_CRCC2').set('chit1', '0.00000000e+00');
model.variable('var_xs_CRCC2').set('chit2', '0.00000000e+00');
model.variable('var_xs_CRCC2').set('chit3', '0.00000000e+00');
model.variable('var_xs_CRCC2').set('chit4', '0.00000000e+00');
model.variable('var_xs_CRCC2').set('chit5', '0.00000000e+00');
model.variable('var_xs_CRCC2').set('chit6', '0.00000000e+00');
model.variable('var_xs_CRCC2').set('chit7', '0.00000000e+00');
model.variable('var_xs_CRCC2').set('chit8', '0.00000000e+00');
model.variable('var_xs_CRCC2').set('diff11', '2.21407000e+00[cm]');
model.variable('var_xs_CRCC2').set('diff12', '1.09602000e+00[cm]');
model.variable('var_xs_CRCC2').set('diff13', '1.30610000e+00[cm]');
model.variable('var_xs_CRCC2').set('diff14', '1.32069000e+00[cm]');
model.variable('var_xs_CRCC2').set('diff15', '1.31919000e+00[cm]');
model.variable('var_xs_CRCC2').set('diff16', '1.30639000e+00[cm]');
model.variable('var_xs_CRCC2').set('diff17', '1.27999000e+00[cm]');
model.variable('var_xs_CRCC2').set('diff18', '1.17085000e+00[cm]');
model.variable('var_xs_CRCC2').set('fiss1', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC2').set('fiss2', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC2').set('fiss3', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC2').set('fiss4', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC2').set('fiss5', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC2').set('fiss6', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC2').set('fiss7', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC2').set('fiss8', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC2').set('invV1', '4.83782000e-10[s/cm]');
model.variable('var_xs_CRCC2').set('invV2', '2.09139000e-09[s/cm]');
model.variable('var_xs_CRCC2').set('invV3', '3.30696000e-08[s/cm]');
model.variable('var_xs_CRCC2').set('invV4', '2.07310000e-07[s/cm]');
model.variable('var_xs_CRCC2').set('invV5', '7.07869000e-07[s/cm]');
model.variable('var_xs_CRCC2').set('invV6', '1.37466000e-06[s/cm]');
model.variable('var_xs_CRCC2').set('invV7', '2.16717000e-06[s/cm]');
model.variable('var_xs_CRCC2').set('invV8', '4.18367000e-06[s/cm]');
model.variable('var_xs_CRCC2').set('kappa1', '0.00000000e+00[MeV]');
model.variable('var_xs_CRCC2').set('kappa2', '0.00000000e+00[MeV]');
model.variable('var_xs_CRCC2').set('kappa3', '0.00000000e+00[MeV]');
model.variable('var_xs_CRCC2').set('kappa4', '0.00000000e+00[MeV]');
model.variable('var_xs_CRCC2').set('kappa5', '0.00000000e+00[MeV]');
model.variable('var_xs_CRCC2').set('kappa6', '0.00000000e+00[MeV]');
model.variable('var_xs_CRCC2').set('kappa7', '0.00000000e+00[MeV]');
model.variable('var_xs_CRCC2').set('kappa8', '0.00000000e+00[MeV]');
model.variable('var_xs_CRCC2').set('lambdas1', '1.25423000e-02[1/s]');
model.variable('var_xs_CRCC2').set('lambdas2', '3.13254000e-02[1/s]');
model.variable('var_xs_CRCC2').set('lambdas3', '1.09681000e-01[1/s]');
model.variable('var_xs_CRCC2').set('lambdas4', '3.16567000e-01[1/s]');
model.variable('var_xs_CRCC2').set('lambdas5', '1.29511000e+00[1/s]');
model.variable('var_xs_CRCC2').set('lambdas6', '8.02767000e+00[1/s]');
model.variable('var_xs_CRCC2').set('nsf1', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC2').set('nsf2', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC2').set('nsf3', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC2').set('nsf4', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC2').set('nsf5', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC2').set('nsf6', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC2').set('nsf7', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC2').set('nsf8', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC2').set('diff21', '1.30270811e+00[cm]');
model.variable('var_xs_CRCC2').set('diff22', '7.46768050e-01[cm]');
model.variable('var_xs_CRCC2').set('diff23', '9.55299924e-01[cm]');
model.variable('var_xs_CRCC2').set('diff24', '9.66546224e-01[cm]');
model.variable('var_xs_CRCC2').set('diff25', '9.65428540e-01[cm]');
model.variable('var_xs_CRCC2').set('diff26', '9.56796391e-01[cm]');
model.variable('var_xs_CRCC2').set('diff27', '9.38782514e-01[cm]');
model.variable('var_xs_CRCC2').set('diff28', '8.60323185e-01[cm]');
model.variable('var_xs_CRCC2').set('rem1', '5.38541000e-02[1/cm]');
model.variable('var_xs_CRCC2').set('rem2', '1.49707000e-02[1/cm]');
model.variable('var_xs_CRCC2').set('rem3', '6.72838000e-03[1/cm]');
model.variable('var_xs_CRCC2').set('rem4', '1.53269000e-02[1/cm]');
model.variable('var_xs_CRCC2').set('rem5', '3.68997000e-02[1/cm]');
model.variable('var_xs_CRCC2').set('rem6', '6.16232000e-02[1/cm]');
model.variable('var_xs_CRCC2').set('rem7', '6.73110000e-02[1/cm]');
model.variable('var_xs_CRCC2').set('rem8', '1.04905000e-01[1/cm]');
model.variable('var_xs_CRCC2').set('scat11', '1.43536000e-01[1/cm]');
model.variable('var_xs_CRCC2').set('scat12', '5.22759000e-02[1/cm]');
model.variable('var_xs_CRCC2').set('scat13', '4.50973000e-05[1/cm]');
model.variable('var_xs_CRCC2').set('scat14', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC2').set('scat15', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC2').set('scat16', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC2').set('scat17', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC2').set('scat18', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC2').set('scat21', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC2').set('scat22', '3.29371000e-01[1/cm]');
model.variable('var_xs_CRCC2').set('scat23', '1.49096000e-02[1/cm]');
model.variable('var_xs_CRCC2').set('scat24', '3.87118000e-08[1/cm]');
model.variable('var_xs_CRCC2').set('scat25', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC2').set('scat26', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC2').set('scat27', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC2').set('scat28', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC2').set('scat31', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC2').set('scat32', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC2').set('scat33', '2.62447000e-01[1/cm]');
model.variable('var_xs_CRCC2').set('scat34', '6.71212000e-03[1/cm]');
model.variable('var_xs_CRCC2').set('scat35', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC2').set('scat36', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC2').set('scat37', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC2').set('scat38', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC2').set('scat41', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC2').set('scat42', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC2').set('scat43', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC2').set('scat44', '2.50716000e-01[1/cm]');
model.variable('var_xs_CRCC2').set('scat45', '1.52398000e-02[1/cm]');
model.variable('var_xs_CRCC2').set('scat46', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC2').set('scat47', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC2').set('scat48', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC2').set('scat51', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC2').set('scat52', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC2').set('scat53', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC2').set('scat54', '1.75392000e-04[1/cm]');
model.variable('var_xs_CRCC2').set('scat55', '2.29452000e-01[1/cm]');
model.variable('var_xs_CRCC2').set('scat56', '3.60384000e-02[1/cm]');
model.variable('var_xs_CRCC2').set('scat57', '3.84119000e-04[1/cm]');
model.variable('var_xs_CRCC2').set('scat58', '3.11739000e-06[1/cm]');
model.variable('var_xs_CRCC2').set('scat61', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC2').set('scat62', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC2').set('scat63', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC2').set('scat64', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC2').set('scat65', '7.25462000e-03[1/cm]');
model.variable('var_xs_CRCC2').set('scat66', '2.07131000e-01[1/cm]');
model.variable('var_xs_CRCC2').set('scat67', '5.27642000e-02[1/cm]');
model.variable('var_xs_CRCC2').set('scat68', '1.03121000e-03[1/cm]');
model.variable('var_xs_CRCC2').set('scat71', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC2').set('scat72', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC2').set('scat73', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC2').set('scat74', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC2').set('scat75', '4.72401000e-05[1/cm]');
model.variable('var_xs_CRCC2').set('scat76', '3.73205000e-02[1/cm]');
model.variable('var_xs_CRCC2').set('scat77', '2.06600000e-01[1/cm]');
model.variable('var_xs_CRCC2').set('scat78', '2.90417000e-02[1/cm]');
model.variable('var_xs_CRCC2').set('scat81', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC2').set('scat82', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC2').set('scat83', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC2').set('scat84', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC2').set('scat85', '1.22308000e-06[1/cm]');
model.variable('var_xs_CRCC2').set('scat86', '2.46773000e-03[1/cm]');
model.variable('var_xs_CRCC2').set('scat87', '1.00699000e-01[1/cm]');
model.variable('var_xs_CRCC2').set('scat88', '1.93986000e-01[1/cm]');
model.variable('var_xs_CRCC2').set('tot1', '1.97391000e-01[1/cm]');
model.variable('var_xs_CRCC2').set('tot2', '3.44341000e-01[1/cm]');
model.variable('var_xs_CRCC2').set('tot3', '2.69175000e-01[1/cm]');
model.variable('var_xs_CRCC2').set('tot4', '2.66043000e-01[1/cm]');
model.variable('var_xs_CRCC2').set('tot5', '2.66351000e-01[1/cm]');
model.variable('var_xs_CRCC2').set('tot6', '2.68754000e-01[1/cm]');
model.variable('var_xs_CRCC2').set('tot7', '2.73911000e-01[1/cm]');
model.variable('var_xs_CRCC2').set('tot8', '2.98891000e-01[1/cm]');
model.variable('var_xs_CRCC2').selection.geom('geom1', 3);
model.variable('var_xs_CRCC2').selection.set([13]);
model.variable.create('var_xs_CRCC3');
model.variable('var_xs_CRCC3').model('mod1');
model.variable('var_xs_CRCC3').set('beta1', '5.38313000e-03');
model.variable('var_xs_CRCC3').set('betas1', '1.65619000e-04');
model.variable('var_xs_CRCC3').set('betas2', '9.84868000e-04');
model.variable('var_xs_CRCC3').set('betas3', '8.77782000e-04');
model.variable('var_xs_CRCC3').set('betas4', '2.37174000e-03');
model.variable('var_xs_CRCC3').set('betas5', '7.31647000e-04');
model.variable('var_xs_CRCC3').set('betas6', '2.51474000e-04');
model.variable('var_xs_CRCC3').set('chid1', '0.00000000e+00');
model.variable('var_xs_CRCC3').set('chid2', '0.00000000e+00');
model.variable('var_xs_CRCC3').set('chid3', '0.00000000e+00');
model.variable('var_xs_CRCC3').set('chid4', '0.00000000e+00');
model.variable('var_xs_CRCC3').set('chid5', '0.00000000e+00');
model.variable('var_xs_CRCC3').set('chid6', '0.00000000e+00');
model.variable('var_xs_CRCC3').set('chid7', '0.00000000e+00');
model.variable('var_xs_CRCC3').set('chid8', '0.00000000e+00');
model.variable('var_xs_CRCC3').set('chip1', '0.00000000e+00');
model.variable('var_xs_CRCC3').set('chip2', '0.00000000e+00');
model.variable('var_xs_CRCC3').set('chip3', '0.00000000e+00');
model.variable('var_xs_CRCC3').set('chip4', '0.00000000e+00');
model.variable('var_xs_CRCC3').set('chip5', '0.00000000e+00');
model.variable('var_xs_CRCC3').set('chip6', '0.00000000e+00');
model.variable('var_xs_CRCC3').set('chip7', '0.00000000e+00');
model.variable('var_xs_CRCC3').set('chip8', '0.00000000e+00');
model.variable('var_xs_CRCC3').set('chit1', '0.00000000e+00');
model.variable('var_xs_CRCC3').set('chit2', '0.00000000e+00');
model.variable('var_xs_CRCC3').set('chit3', '0.00000000e+00');
model.variable('var_xs_CRCC3').set('chit4', '0.00000000e+00');
model.variable('var_xs_CRCC3').set('chit5', '0.00000000e+00');
model.variable('var_xs_CRCC3').set('chit6', '0.00000000e+00');
model.variable('var_xs_CRCC3').set('chit7', '0.00000000e+00');
model.variable('var_xs_CRCC3').set('chit8', '0.00000000e+00');
model.variable('var_xs_CRCC3').set('diff11', '2.21407000e+00[cm]');
model.variable('var_xs_CRCC3').set('diff12', '1.09602000e+00[cm]');
model.variable('var_xs_CRCC3').set('diff13', '1.30610000e+00[cm]');
model.variable('var_xs_CRCC3').set('diff14', '1.32069000e+00[cm]');
model.variable('var_xs_CRCC3').set('diff15', '1.31919000e+00[cm]');
model.variable('var_xs_CRCC3').set('diff16', '1.30639000e+00[cm]');
model.variable('var_xs_CRCC3').set('diff17', '1.27999000e+00[cm]');
model.variable('var_xs_CRCC3').set('diff18', '1.17085000e+00[cm]');
model.variable('var_xs_CRCC3').set('fiss1', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC3').set('fiss2', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC3').set('fiss3', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC3').set('fiss4', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC3').set('fiss5', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC3').set('fiss6', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC3').set('fiss7', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC3').set('fiss8', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC3').set('invV1', '4.83782000e-10[s/cm]');
model.variable('var_xs_CRCC3').set('invV2', '2.09139000e-09[s/cm]');
model.variable('var_xs_CRCC3').set('invV3', '3.30696000e-08[s/cm]');
model.variable('var_xs_CRCC3').set('invV4', '2.07310000e-07[s/cm]');
model.variable('var_xs_CRCC3').set('invV5', '7.07869000e-07[s/cm]');
model.variable('var_xs_CRCC3').set('invV6', '1.37466000e-06[s/cm]');
model.variable('var_xs_CRCC3').set('invV7', '2.16717000e-06[s/cm]');
model.variable('var_xs_CRCC3').set('invV8', '4.18367000e-06[s/cm]');
model.variable('var_xs_CRCC3').set('kappa1', '0.00000000e+00[MeV]');
model.variable('var_xs_CRCC3').set('kappa2', '0.00000000e+00[MeV]');
model.variable('var_xs_CRCC3').set('kappa3', '0.00000000e+00[MeV]');
model.variable('var_xs_CRCC3').set('kappa4', '0.00000000e+00[MeV]');
model.variable('var_xs_CRCC3').set('kappa5', '0.00000000e+00[MeV]');
model.variable('var_xs_CRCC3').set('kappa6', '0.00000000e+00[MeV]');
model.variable('var_xs_CRCC3').set('kappa7', '0.00000000e+00[MeV]');
model.variable('var_xs_CRCC3').set('kappa8', '0.00000000e+00[MeV]');
model.variable('var_xs_CRCC3').set('lambdas1', '1.25423000e-02[1/s]');
model.variable('var_xs_CRCC3').set('lambdas2', '3.13254000e-02[1/s]');
model.variable('var_xs_CRCC3').set('lambdas3', '1.09681000e-01[1/s]');
model.variable('var_xs_CRCC3').set('lambdas4', '3.16567000e-01[1/s]');
model.variable('var_xs_CRCC3').set('lambdas5', '1.29511000e+00[1/s]');
model.variable('var_xs_CRCC3').set('lambdas6', '8.02767000e+00[1/s]');
model.variable('var_xs_CRCC3').set('nsf1', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC3').set('nsf2', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC3').set('nsf3', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC3').set('nsf4', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC3').set('nsf5', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC3').set('nsf6', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC3').set('nsf7', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC3').set('nsf8', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC3').set('diff21', '1.30270811e+00[cm]');
model.variable('var_xs_CRCC3').set('diff22', '7.46768050e-01[cm]');
model.variable('var_xs_CRCC3').set('diff23', '9.55299924e-01[cm]');
model.variable('var_xs_CRCC3').set('diff24', '9.66546224e-01[cm]');
model.variable('var_xs_CRCC3').set('diff25', '9.65428540e-01[cm]');
model.variable('var_xs_CRCC3').set('diff26', '9.56796391e-01[cm]');
model.variable('var_xs_CRCC3').set('diff27', '9.38782514e-01[cm]');
model.variable('var_xs_CRCC3').set('diff28', '8.60323185e-01[cm]');
model.variable('var_xs_CRCC3').set('rem1', '5.38541000e-02[1/cm]');
model.variable('var_xs_CRCC3').set('rem2', '1.49707000e-02[1/cm]');
model.variable('var_xs_CRCC3').set('rem3', '6.72838000e-03[1/cm]');
model.variable('var_xs_CRCC3').set('rem4', '1.53269000e-02[1/cm]');
model.variable('var_xs_CRCC3').set('rem5', '3.68997000e-02[1/cm]');
model.variable('var_xs_CRCC3').set('rem6', '6.16232000e-02[1/cm]');
model.variable('var_xs_CRCC3').set('rem7', '6.73110000e-02[1/cm]');
model.variable('var_xs_CRCC3').set('rem8', '1.04905000e-01[1/cm]');
model.variable('var_xs_CRCC3').set('scat11', '1.43536000e-01[1/cm]');
model.variable('var_xs_CRCC3').set('scat12', '5.22759000e-02[1/cm]');
model.variable('var_xs_CRCC3').set('scat13', '4.50973000e-05[1/cm]');
model.variable('var_xs_CRCC3').set('scat14', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC3').set('scat15', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC3').set('scat16', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC3').set('scat17', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC3').set('scat18', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC3').set('scat21', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC3').set('scat22', '3.29371000e-01[1/cm]');
model.variable('var_xs_CRCC3').set('scat23', '1.49096000e-02[1/cm]');
model.variable('var_xs_CRCC3').set('scat24', '3.87118000e-08[1/cm]');
model.variable('var_xs_CRCC3').set('scat25', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC3').set('scat26', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC3').set('scat27', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC3').set('scat28', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC3').set('scat31', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC3').set('scat32', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC3').set('scat33', '2.62447000e-01[1/cm]');
model.variable('var_xs_CRCC3').set('scat34', '6.71212000e-03[1/cm]');
model.variable('var_xs_CRCC3').set('scat35', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC3').set('scat36', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC3').set('scat37', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC3').set('scat38', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC3').set('scat41', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC3').set('scat42', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC3').set('scat43', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC3').set('scat44', '2.50716000e-01[1/cm]');
model.variable('var_xs_CRCC3').set('scat45', '1.52398000e-02[1/cm]');
model.variable('var_xs_CRCC3').set('scat46', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC3').set('scat47', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC3').set('scat48', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC3').set('scat51', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC3').set('scat52', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC3').set('scat53', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC3').set('scat54', '1.75392000e-04[1/cm]');
model.variable('var_xs_CRCC3').set('scat55', '2.29452000e-01[1/cm]');
model.variable('var_xs_CRCC3').set('scat56', '3.60384000e-02[1/cm]');
model.variable('var_xs_CRCC3').set('scat57', '3.84119000e-04[1/cm]');
model.variable('var_xs_CRCC3').set('scat58', '3.11739000e-06[1/cm]');
model.variable('var_xs_CRCC3').set('scat61', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC3').set('scat62', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC3').set('scat63', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC3').set('scat64', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC3').set('scat65', '7.25462000e-03[1/cm]');
model.variable('var_xs_CRCC3').set('scat66', '2.07131000e-01[1/cm]');
model.variable('var_xs_CRCC3').set('scat67', '5.27642000e-02[1/cm]');
model.variable('var_xs_CRCC3').set('scat68', '1.03121000e-03[1/cm]');
model.variable('var_xs_CRCC3').set('scat71', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC3').set('scat72', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC3').set('scat73', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC3').set('scat74', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC3').set('scat75', '4.72401000e-05[1/cm]');
model.variable('var_xs_CRCC3').set('scat76', '3.73205000e-02[1/cm]');
model.variable('var_xs_CRCC3').set('scat77', '2.06600000e-01[1/cm]');
model.variable('var_xs_CRCC3').set('scat78', '2.90417000e-02[1/cm]');
model.variable('var_xs_CRCC3').set('scat81', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC3').set('scat82', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC3').set('scat83', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC3').set('scat84', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC3').set('scat85', '1.22308000e-06[1/cm]');
model.variable('var_xs_CRCC3').set('scat86', '2.46773000e-03[1/cm]');
model.variable('var_xs_CRCC3').set('scat87', '1.00699000e-01[1/cm]');
model.variable('var_xs_CRCC3').set('scat88', '1.93986000e-01[1/cm]');
model.variable('var_xs_CRCC3').set('tot1', '1.97391000e-01[1/cm]');
model.variable('var_xs_CRCC3').set('tot2', '3.44341000e-01[1/cm]');
model.variable('var_xs_CRCC3').set('tot3', '2.69175000e-01[1/cm]');
model.variable('var_xs_CRCC3').set('tot4', '2.66043000e-01[1/cm]');
model.variable('var_xs_CRCC3').set('tot5', '2.66351000e-01[1/cm]');
model.variable('var_xs_CRCC3').set('tot6', '2.68754000e-01[1/cm]');
model.variable('var_xs_CRCC3').set('tot7', '2.73911000e-01[1/cm]');
model.variable('var_xs_CRCC3').set('tot8', '2.98891000e-01[1/cm]');
model.variable('var_xs_CRCC3').selection.geom('geom1', 3);
model.variable('var_xs_CRCC3').selection.set([14]);
model.variable.create('var_xs_CRCC4');
model.variable('var_xs_CRCC4').model('mod1');
model.variable('var_xs_CRCC4').set('beta1', '5.38313000e-03');
model.variable('var_xs_CRCC4').set('betas1', '1.65619000e-04');
model.variable('var_xs_CRCC4').set('betas2', '9.84868000e-04');
model.variable('var_xs_CRCC4').set('betas3', '8.77782000e-04');
model.variable('var_xs_CRCC4').set('betas4', '2.37174000e-03');
model.variable('var_xs_CRCC4').set('betas5', '7.31647000e-04');
model.variable('var_xs_CRCC4').set('betas6', '2.51474000e-04');
model.variable('var_xs_CRCC4').set('chid1', '0.00000000e+00');
model.variable('var_xs_CRCC4').set('chid2', '0.00000000e+00');
model.variable('var_xs_CRCC4').set('chid3', '0.00000000e+00');
model.variable('var_xs_CRCC4').set('chid4', '0.00000000e+00');
model.variable('var_xs_CRCC4').set('chid5', '0.00000000e+00');
model.variable('var_xs_CRCC4').set('chid6', '0.00000000e+00');
model.variable('var_xs_CRCC4').set('chid7', '0.00000000e+00');
model.variable('var_xs_CRCC4').set('chid8', '0.00000000e+00');
model.variable('var_xs_CRCC4').set('chip1', '0.00000000e+00');
model.variable('var_xs_CRCC4').set('chip2', '0.00000000e+00');
model.variable('var_xs_CRCC4').set('chip3', '0.00000000e+00');
model.variable('var_xs_CRCC4').set('chip4', '0.00000000e+00');
model.variable('var_xs_CRCC4').set('chip5', '0.00000000e+00');
model.variable('var_xs_CRCC4').set('chip6', '0.00000000e+00');
model.variable('var_xs_CRCC4').set('chip7', '0.00000000e+00');
model.variable('var_xs_CRCC4').set('chip8', '0.00000000e+00');
model.variable('var_xs_CRCC4').set('chit1', '0.00000000e+00');
model.variable('var_xs_CRCC4').set('chit2', '0.00000000e+00');
model.variable('var_xs_CRCC4').set('chit3', '0.00000000e+00');
model.variable('var_xs_CRCC4').set('chit4', '0.00000000e+00');
model.variable('var_xs_CRCC4').set('chit5', '0.00000000e+00');
model.variable('var_xs_CRCC4').set('chit6', '0.00000000e+00');
model.variable('var_xs_CRCC4').set('chit7', '0.00000000e+00');
model.variable('var_xs_CRCC4').set('chit8', '0.00000000e+00');
model.variable('var_xs_CRCC4').set('diff11', '2.21407000e+00[cm]');
model.variable('var_xs_CRCC4').set('diff12', '1.09602000e+00[cm]');
model.variable('var_xs_CRCC4').set('diff13', '1.30610000e+00[cm]');
model.variable('var_xs_CRCC4').set('diff14', '1.32069000e+00[cm]');
model.variable('var_xs_CRCC4').set('diff15', '1.31919000e+00[cm]');
model.variable('var_xs_CRCC4').set('diff16', '1.30639000e+00[cm]');
model.variable('var_xs_CRCC4').set('diff17', '1.27999000e+00[cm]');
model.variable('var_xs_CRCC4').set('diff18', '1.17085000e+00[cm]');
model.variable('var_xs_CRCC4').set('fiss1', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC4').set('fiss2', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC4').set('fiss3', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC4').set('fiss4', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC4').set('fiss5', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC4').set('fiss6', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC4').set('fiss7', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC4').set('fiss8', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC4').set('invV1', '4.83782000e-10[s/cm]');
model.variable('var_xs_CRCC4').set('invV2', '2.09139000e-09[s/cm]');
model.variable('var_xs_CRCC4').set('invV3', '3.30696000e-08[s/cm]');
model.variable('var_xs_CRCC4').set('invV4', '2.07310000e-07[s/cm]');
model.variable('var_xs_CRCC4').set('invV5', '7.07869000e-07[s/cm]');
model.variable('var_xs_CRCC4').set('invV6', '1.37466000e-06[s/cm]');
model.variable('var_xs_CRCC4').set('invV7', '2.16717000e-06[s/cm]');
model.variable('var_xs_CRCC4').set('invV8', '4.18367000e-06[s/cm]');
model.variable('var_xs_CRCC4').set('kappa1', '0.00000000e+00[MeV]');
model.variable('var_xs_CRCC4').set('kappa2', '0.00000000e+00[MeV]');
model.variable('var_xs_CRCC4').set('kappa3', '0.00000000e+00[MeV]');
model.variable('var_xs_CRCC4').set('kappa4', '0.00000000e+00[MeV]');
model.variable('var_xs_CRCC4').set('kappa5', '0.00000000e+00[MeV]');
model.variable('var_xs_CRCC4').set('kappa6', '0.00000000e+00[MeV]');
model.variable('var_xs_CRCC4').set('kappa7', '0.00000000e+00[MeV]');
model.variable('var_xs_CRCC4').set('kappa8', '0.00000000e+00[MeV]');
model.variable('var_xs_CRCC4').set('lambdas1', '1.25423000e-02[1/s]');
model.variable('var_xs_CRCC4').set('lambdas2', '3.13254000e-02[1/s]');
model.variable('var_xs_CRCC4').set('lambdas3', '1.09681000e-01[1/s]');
model.variable('var_xs_CRCC4').set('lambdas4', '3.16567000e-01[1/s]');
model.variable('var_xs_CRCC4').set('lambdas5', '1.29511000e+00[1/s]');
model.variable('var_xs_CRCC4').set('lambdas6', '8.02767000e+00[1/s]');
model.variable('var_xs_CRCC4').set('nsf1', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC4').set('nsf2', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC4').set('nsf3', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC4').set('nsf4', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC4').set('nsf5', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC4').set('nsf6', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC4').set('nsf7', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC4').set('nsf8', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC4').set('diff21', '1.30270811e+00[cm]');
model.variable('var_xs_CRCC4').set('diff22', '7.46768050e-01[cm]');
model.variable('var_xs_CRCC4').set('diff23', '9.55299924e-01[cm]');
model.variable('var_xs_CRCC4').set('diff24', '9.66546224e-01[cm]');
model.variable('var_xs_CRCC4').set('diff25', '9.65428540e-01[cm]');
model.variable('var_xs_CRCC4').set('diff26', '9.56796391e-01[cm]');
model.variable('var_xs_CRCC4').set('diff27', '9.38782514e-01[cm]');
model.variable('var_xs_CRCC4').set('diff28', '8.60323185e-01[cm]');
model.variable('var_xs_CRCC4').set('rem1', '5.38541000e-02[1/cm]');
model.variable('var_xs_CRCC4').set('rem2', '1.49707000e-02[1/cm]');
model.variable('var_xs_CRCC4').set('rem3', '6.72838000e-03[1/cm]');
model.variable('var_xs_CRCC4').set('rem4', '1.53269000e-02[1/cm]');
model.variable('var_xs_CRCC4').set('rem5', '3.68997000e-02[1/cm]');
model.variable('var_xs_CRCC4').set('rem6', '6.16232000e-02[1/cm]');
model.variable('var_xs_CRCC4').set('rem7', '6.73110000e-02[1/cm]');
model.variable('var_xs_CRCC4').set('rem8', '1.04905000e-01[1/cm]');
model.variable('var_xs_CRCC4').set('scat11', '1.43536000e-01[1/cm]');
model.variable('var_xs_CRCC4').set('scat12', '5.22759000e-02[1/cm]');
model.variable('var_xs_CRCC4').set('scat13', '4.50973000e-05[1/cm]');
model.variable('var_xs_CRCC4').set('scat14', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC4').set('scat15', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC4').set('scat16', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC4').set('scat17', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC4').set('scat18', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC4').set('scat21', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC4').set('scat22', '3.29371000e-01[1/cm]');
model.variable('var_xs_CRCC4').set('scat23', '1.49096000e-02[1/cm]');
model.variable('var_xs_CRCC4').set('scat24', '3.87118000e-08[1/cm]');
model.variable('var_xs_CRCC4').set('scat25', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC4').set('scat26', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC4').set('scat27', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC4').set('scat28', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC4').set('scat31', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC4').set('scat32', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC4').set('scat33', '2.62447000e-01[1/cm]');
model.variable('var_xs_CRCC4').set('scat34', '6.71212000e-03[1/cm]');
model.variable('var_xs_CRCC4').set('scat35', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC4').set('scat36', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC4').set('scat37', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC4').set('scat38', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC4').set('scat41', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC4').set('scat42', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC4').set('scat43', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC4').set('scat44', '2.50716000e-01[1/cm]');
model.variable('var_xs_CRCC4').set('scat45', '1.52398000e-02[1/cm]');
model.variable('var_xs_CRCC4').set('scat46', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC4').set('scat47', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC4').set('scat48', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC4').set('scat51', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC4').set('scat52', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC4').set('scat53', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC4').set('scat54', '1.75392000e-04[1/cm]');
model.variable('var_xs_CRCC4').set('scat55', '2.29452000e-01[1/cm]');
model.variable('var_xs_CRCC4').set('scat56', '3.60384000e-02[1/cm]');
model.variable('var_xs_CRCC4').set('scat57', '3.84119000e-04[1/cm]');
model.variable('var_xs_CRCC4').set('scat58', '3.11739000e-06[1/cm]');
model.variable('var_xs_CRCC4').set('scat61', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC4').set('scat62', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC4').set('scat63', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC4').set('scat64', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC4').set('scat65', '7.25462000e-03[1/cm]');
model.variable('var_xs_CRCC4').set('scat66', '2.07131000e-01[1/cm]');
model.variable('var_xs_CRCC4').set('scat67', '5.27642000e-02[1/cm]');
model.variable('var_xs_CRCC4').set('scat68', '1.03121000e-03[1/cm]');
model.variable('var_xs_CRCC4').set('scat71', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC4').set('scat72', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC4').set('scat73', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC4').set('scat74', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC4').set('scat75', '4.72401000e-05[1/cm]');
model.variable('var_xs_CRCC4').set('scat76', '3.73205000e-02[1/cm]');
model.variable('var_xs_CRCC4').set('scat77', '2.06600000e-01[1/cm]');
model.variable('var_xs_CRCC4').set('scat78', '2.90417000e-02[1/cm]');
model.variable('var_xs_CRCC4').set('scat81', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC4').set('scat82', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC4').set('scat83', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC4').set('scat84', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC4').set('scat85', '1.22308000e-06[1/cm]');
model.variable('var_xs_CRCC4').set('scat86', '2.46773000e-03[1/cm]');
model.variable('var_xs_CRCC4').set('scat87', '1.00699000e-01[1/cm]');
model.variable('var_xs_CRCC4').set('scat88', '1.93986000e-01[1/cm]');
model.variable('var_xs_CRCC4').set('tot1', '1.97391000e-01[1/cm]');
model.variable('var_xs_CRCC4').set('tot2', '3.44341000e-01[1/cm]');
model.variable('var_xs_CRCC4').set('tot3', '2.69175000e-01[1/cm]');
model.variable('var_xs_CRCC4').set('tot4', '2.66043000e-01[1/cm]');
model.variable('var_xs_CRCC4').set('tot5', '2.66351000e-01[1/cm]');
model.variable('var_xs_CRCC4').set('tot6', '2.68754000e-01[1/cm]');
model.variable('var_xs_CRCC4').set('tot7', '2.73911000e-01[1/cm]');
model.variable('var_xs_CRCC4').set('tot8', '2.98891000e-01[1/cm]');
model.variable('var_xs_CRCC4').selection.geom('geom1', 3);
model.variable('var_xs_CRCC4').selection.set([15]);
model.variable.create('var_xs_CRCC5');
model.variable('var_xs_CRCC5').model('mod1');
model.variable('var_xs_CRCC5').set('beta1', '5.38313000e-03');
model.variable('var_xs_CRCC5').set('betas1', '1.65619000e-04');
model.variable('var_xs_CRCC5').set('betas2', '9.84868000e-04');
model.variable('var_xs_CRCC5').set('betas3', '8.77782000e-04');
model.variable('var_xs_CRCC5').set('betas4', '2.37174000e-03');
model.variable('var_xs_CRCC5').set('betas5', '7.31647000e-04');
model.variable('var_xs_CRCC5').set('betas6', '2.51474000e-04');
model.variable('var_xs_CRCC5').set('chid1', '0.00000000e+00');
model.variable('var_xs_CRCC5').set('chid2', '0.00000000e+00');
model.variable('var_xs_CRCC5').set('chid3', '0.00000000e+00');
model.variable('var_xs_CRCC5').set('chid4', '0.00000000e+00');
model.variable('var_xs_CRCC5').set('chid5', '0.00000000e+00');
model.variable('var_xs_CRCC5').set('chid6', '0.00000000e+00');
model.variable('var_xs_CRCC5').set('chid7', '0.00000000e+00');
model.variable('var_xs_CRCC5').set('chid8', '0.00000000e+00');
model.variable('var_xs_CRCC5').set('chip1', '0.00000000e+00');
model.variable('var_xs_CRCC5').set('chip2', '0.00000000e+00');
model.variable('var_xs_CRCC5').set('chip3', '0.00000000e+00');
model.variable('var_xs_CRCC5').set('chip4', '0.00000000e+00');
model.variable('var_xs_CRCC5').set('chip5', '0.00000000e+00');
model.variable('var_xs_CRCC5').set('chip6', '0.00000000e+00');
model.variable('var_xs_CRCC5').set('chip7', '0.00000000e+00');
model.variable('var_xs_CRCC5').set('chip8', '0.00000000e+00');
model.variable('var_xs_CRCC5').set('chit1', '0.00000000e+00');
model.variable('var_xs_CRCC5').set('chit2', '0.00000000e+00');
model.variable('var_xs_CRCC5').set('chit3', '0.00000000e+00');
model.variable('var_xs_CRCC5').set('chit4', '0.00000000e+00');
model.variable('var_xs_CRCC5').set('chit5', '0.00000000e+00');
model.variable('var_xs_CRCC5').set('chit6', '0.00000000e+00');
model.variable('var_xs_CRCC5').set('chit7', '0.00000000e+00');
model.variable('var_xs_CRCC5').set('chit8', '0.00000000e+00');
model.variable('var_xs_CRCC5').set('diff11', '2.21407000e+00[cm]');
model.variable('var_xs_CRCC5').set('diff12', '1.09602000e+00[cm]');
model.variable('var_xs_CRCC5').set('diff13', '1.30610000e+00[cm]');
model.variable('var_xs_CRCC5').set('diff14', '1.32069000e+00[cm]');
model.variable('var_xs_CRCC5').set('diff15', '1.31919000e+00[cm]');
model.variable('var_xs_CRCC5').set('diff16', '1.30639000e+00[cm]');
model.variable('var_xs_CRCC5').set('diff17', '1.27999000e+00[cm]');
model.variable('var_xs_CRCC5').set('diff18', '1.17085000e+00[cm]');
model.variable('var_xs_CRCC5').set('fiss1', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC5').set('fiss2', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC5').set('fiss3', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC5').set('fiss4', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC5').set('fiss5', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC5').set('fiss6', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC5').set('fiss7', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC5').set('fiss8', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC5').set('invV1', '4.83782000e-10[s/cm]');
model.variable('var_xs_CRCC5').set('invV2', '2.09139000e-09[s/cm]');
model.variable('var_xs_CRCC5').set('invV3', '3.30696000e-08[s/cm]');
model.variable('var_xs_CRCC5').set('invV4', '2.07310000e-07[s/cm]');
model.variable('var_xs_CRCC5').set('invV5', '7.07869000e-07[s/cm]');
model.variable('var_xs_CRCC5').set('invV6', '1.37466000e-06[s/cm]');
model.variable('var_xs_CRCC5').set('invV7', '2.16717000e-06[s/cm]');
model.variable('var_xs_CRCC5').set('invV8', '4.18367000e-06[s/cm]');
model.variable('var_xs_CRCC5').set('kappa1', '0.00000000e+00[MeV]');
model.variable('var_xs_CRCC5').set('kappa2', '0.00000000e+00[MeV]');
model.variable('var_xs_CRCC5').set('kappa3', '0.00000000e+00[MeV]');
model.variable('var_xs_CRCC5').set('kappa4', '0.00000000e+00[MeV]');
model.variable('var_xs_CRCC5').set('kappa5', '0.00000000e+00[MeV]');
model.variable('var_xs_CRCC5').set('kappa6', '0.00000000e+00[MeV]');
model.variable('var_xs_CRCC5').set('kappa7', '0.00000000e+00[MeV]');
model.variable('var_xs_CRCC5').set('kappa8', '0.00000000e+00[MeV]');
model.variable('var_xs_CRCC5').set('lambdas1', '1.25423000e-02[1/s]');
model.variable('var_xs_CRCC5').set('lambdas2', '3.13254000e-02[1/s]');
model.variable('var_xs_CRCC5').set('lambdas3', '1.09681000e-01[1/s]');
model.variable('var_xs_CRCC5').set('lambdas4', '3.16567000e-01[1/s]');
model.variable('var_xs_CRCC5').set('lambdas5', '1.29511000e+00[1/s]');
model.variable('var_xs_CRCC5').set('lambdas6', '8.02767000e+00[1/s]');
model.variable('var_xs_CRCC5').set('nsf1', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC5').set('nsf2', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC5').set('nsf3', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC5').set('nsf4', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC5').set('nsf5', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC5').set('nsf6', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC5').set('nsf7', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC5').set('nsf8', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC5').set('diff21', '1.30270811e+00[cm]');
model.variable('var_xs_CRCC5').set('diff22', '7.46768050e-01[cm]');
model.variable('var_xs_CRCC5').set('diff23', '9.55299924e-01[cm]');
model.variable('var_xs_CRCC5').set('diff24', '9.66546224e-01[cm]');
model.variable('var_xs_CRCC5').set('diff25', '9.65428540e-01[cm]');
model.variable('var_xs_CRCC5').set('diff26', '9.56796391e-01[cm]');
model.variable('var_xs_CRCC5').set('diff27', '9.38782514e-01[cm]');
model.variable('var_xs_CRCC5').set('diff28', '8.60323185e-01[cm]');
model.variable('var_xs_CRCC5').set('rem1', '5.38541000e-02[1/cm]');
model.variable('var_xs_CRCC5').set('rem2', '1.49707000e-02[1/cm]');
model.variable('var_xs_CRCC5').set('rem3', '6.72838000e-03[1/cm]');
model.variable('var_xs_CRCC5').set('rem4', '1.53269000e-02[1/cm]');
model.variable('var_xs_CRCC5').set('rem5', '3.68997000e-02[1/cm]');
model.variable('var_xs_CRCC5').set('rem6', '6.16232000e-02[1/cm]');
model.variable('var_xs_CRCC5').set('rem7', '6.73110000e-02[1/cm]');
model.variable('var_xs_CRCC5').set('rem8', '1.04905000e-01[1/cm]');
model.variable('var_xs_CRCC5').set('scat11', '1.43536000e-01[1/cm]');
model.variable('var_xs_CRCC5').set('scat12', '5.22759000e-02[1/cm]');
model.variable('var_xs_CRCC5').set('scat13', '4.50973000e-05[1/cm]');
model.variable('var_xs_CRCC5').set('scat14', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC5').set('scat15', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC5').set('scat16', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC5').set('scat17', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC5').set('scat18', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC5').set('scat21', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC5').set('scat22', '3.29371000e-01[1/cm]');
model.variable('var_xs_CRCC5').set('scat23', '1.49096000e-02[1/cm]');
model.variable('var_xs_CRCC5').set('scat24', '3.87118000e-08[1/cm]');
model.variable('var_xs_CRCC5').set('scat25', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC5').set('scat26', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC5').set('scat27', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC5').set('scat28', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC5').set('scat31', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC5').set('scat32', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC5').set('scat33', '2.62447000e-01[1/cm]');
model.variable('var_xs_CRCC5').set('scat34', '6.71212000e-03[1/cm]');
model.variable('var_xs_CRCC5').set('scat35', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC5').set('scat36', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC5').set('scat37', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC5').set('scat38', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC5').set('scat41', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC5').set('scat42', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC5').set('scat43', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC5').set('scat44', '2.50716000e-01[1/cm]');
model.variable('var_xs_CRCC5').set('scat45', '1.52398000e-02[1/cm]');
model.variable('var_xs_CRCC5').set('scat46', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC5').set('scat47', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC5').set('scat48', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC5').set('scat51', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC5').set('scat52', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC5').set('scat53', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC5').set('scat54', '1.75392000e-04[1/cm]');
model.variable('var_xs_CRCC5').set('scat55', '2.29452000e-01[1/cm]');
model.variable('var_xs_CRCC5').set('scat56', '3.60384000e-02[1/cm]');
model.variable('var_xs_CRCC5').set('scat57', '3.84119000e-04[1/cm]');
model.variable('var_xs_CRCC5').set('scat58', '3.11739000e-06[1/cm]');
model.variable('var_xs_CRCC5').set('scat61', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC5').set('scat62', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC5').set('scat63', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC5').set('scat64', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC5').set('scat65', '7.25462000e-03[1/cm]');
model.variable('var_xs_CRCC5').set('scat66', '2.07131000e-01[1/cm]');
model.variable('var_xs_CRCC5').set('scat67', '5.27642000e-02[1/cm]');
model.variable('var_xs_CRCC5').set('scat68', '1.03121000e-03[1/cm]');
model.variable('var_xs_CRCC5').set('scat71', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC5').set('scat72', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC5').set('scat73', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC5').set('scat74', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC5').set('scat75', '4.72401000e-05[1/cm]');
model.variable('var_xs_CRCC5').set('scat76', '3.73205000e-02[1/cm]');
model.variable('var_xs_CRCC5').set('scat77', '2.06600000e-01[1/cm]');
model.variable('var_xs_CRCC5').set('scat78', '2.90417000e-02[1/cm]');
model.variable('var_xs_CRCC5').set('scat81', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC5').set('scat82', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC5').set('scat83', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC5').set('scat84', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC5').set('scat85', '1.22308000e-06[1/cm]');
model.variable('var_xs_CRCC5').set('scat86', '2.46773000e-03[1/cm]');
model.variable('var_xs_CRCC5').set('scat87', '1.00699000e-01[1/cm]');
model.variable('var_xs_CRCC5').set('scat88', '1.93986000e-01[1/cm]');
model.variable('var_xs_CRCC5').set('tot1', '1.97391000e-01[1/cm]');
model.variable('var_xs_CRCC5').set('tot2', '3.44341000e-01[1/cm]');
model.variable('var_xs_CRCC5').set('tot3', '2.69175000e-01[1/cm]');
model.variable('var_xs_CRCC5').set('tot4', '2.66043000e-01[1/cm]');
model.variable('var_xs_CRCC5').set('tot5', '2.66351000e-01[1/cm]');
model.variable('var_xs_CRCC5').set('tot6', '2.68754000e-01[1/cm]');
model.variable('var_xs_CRCC5').set('tot7', '2.73911000e-01[1/cm]');
model.variable('var_xs_CRCC5').set('tot8', '2.98891000e-01[1/cm]');
model.variable('var_xs_CRCC5').selection.geom('geom1', 3);
model.variable('var_xs_CRCC5').selection.set([16]);
model.variable.create('var_xs_CRCC6');
model.variable('var_xs_CRCC6').model('mod1');
model.variable('var_xs_CRCC6').set('beta1', '5.38313000e-03');
model.variable('var_xs_CRCC6').set('betas1', '1.65619000e-04');
model.variable('var_xs_CRCC6').set('betas2', '9.84868000e-04');
model.variable('var_xs_CRCC6').set('betas3', '8.77782000e-04');
model.variable('var_xs_CRCC6').set('betas4', '2.37174000e-03');
model.variable('var_xs_CRCC6').set('betas5', '7.31647000e-04');
model.variable('var_xs_CRCC6').set('betas6', '2.51474000e-04');
model.variable('var_xs_CRCC6').set('chid1', '0.00000000e+00');
model.variable('var_xs_CRCC6').set('chid2', '0.00000000e+00');
model.variable('var_xs_CRCC6').set('chid3', '0.00000000e+00');
model.variable('var_xs_CRCC6').set('chid4', '0.00000000e+00');
model.variable('var_xs_CRCC6').set('chid5', '0.00000000e+00');
model.variable('var_xs_CRCC6').set('chid6', '0.00000000e+00');
model.variable('var_xs_CRCC6').set('chid7', '0.00000000e+00');
model.variable('var_xs_CRCC6').set('chid8', '0.00000000e+00');
model.variable('var_xs_CRCC6').set('chip1', '0.00000000e+00');
model.variable('var_xs_CRCC6').set('chip2', '0.00000000e+00');
model.variable('var_xs_CRCC6').set('chip3', '0.00000000e+00');
model.variable('var_xs_CRCC6').set('chip4', '0.00000000e+00');
model.variable('var_xs_CRCC6').set('chip5', '0.00000000e+00');
model.variable('var_xs_CRCC6').set('chip6', '0.00000000e+00');
model.variable('var_xs_CRCC6').set('chip7', '0.00000000e+00');
model.variable('var_xs_CRCC6').set('chip8', '0.00000000e+00');
model.variable('var_xs_CRCC6').set('chit1', '0.00000000e+00');
model.variable('var_xs_CRCC6').set('chit2', '0.00000000e+00');
model.variable('var_xs_CRCC6').set('chit3', '0.00000000e+00');
model.variable('var_xs_CRCC6').set('chit4', '0.00000000e+00');
model.variable('var_xs_CRCC6').set('chit5', '0.00000000e+00');
model.variable('var_xs_CRCC6').set('chit6', '0.00000000e+00');
model.variable('var_xs_CRCC6').set('chit7', '0.00000000e+00');
model.variable('var_xs_CRCC6').set('chit8', '0.00000000e+00');
model.variable('var_xs_CRCC6').set('diff11', '2.21407000e+00[cm]');
model.variable('var_xs_CRCC6').set('diff12', '1.09602000e+00[cm]');
model.variable('var_xs_CRCC6').set('diff13', '1.30610000e+00[cm]');
model.variable('var_xs_CRCC6').set('diff14', '1.32069000e+00[cm]');
model.variable('var_xs_CRCC6').set('diff15', '1.31919000e+00[cm]');
model.variable('var_xs_CRCC6').set('diff16', '1.30639000e+00[cm]');
model.variable('var_xs_CRCC6').set('diff17', '1.27999000e+00[cm]');
model.variable('var_xs_CRCC6').set('diff18', '1.17085000e+00[cm]');
model.variable('var_xs_CRCC6').set('fiss1', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC6').set('fiss2', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC6').set('fiss3', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC6').set('fiss4', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC6').set('fiss5', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC6').set('fiss6', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC6').set('fiss7', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC6').set('fiss8', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC6').set('invV1', '4.83782000e-10[s/cm]');
model.variable('var_xs_CRCC6').set('invV2', '2.09139000e-09[s/cm]');
model.variable('var_xs_CRCC6').set('invV3', '3.30696000e-08[s/cm]');
model.variable('var_xs_CRCC6').set('invV4', '2.07310000e-07[s/cm]');
model.variable('var_xs_CRCC6').set('invV5', '7.07869000e-07[s/cm]');
model.variable('var_xs_CRCC6').set('invV6', '1.37466000e-06[s/cm]');
model.variable('var_xs_CRCC6').set('invV7', '2.16717000e-06[s/cm]');
model.variable('var_xs_CRCC6').set('invV8', '4.18367000e-06[s/cm]');
model.variable('var_xs_CRCC6').set('kappa1', '0.00000000e+00[MeV]');
model.variable('var_xs_CRCC6').set('kappa2', '0.00000000e+00[MeV]');
model.variable('var_xs_CRCC6').set('kappa3', '0.00000000e+00[MeV]');
model.variable('var_xs_CRCC6').set('kappa4', '0.00000000e+00[MeV]');
model.variable('var_xs_CRCC6').set('kappa5', '0.00000000e+00[MeV]');
model.variable('var_xs_CRCC6').set('kappa6', '0.00000000e+00[MeV]');
model.variable('var_xs_CRCC6').set('kappa7', '0.00000000e+00[MeV]');
model.variable('var_xs_CRCC6').set('kappa8', '0.00000000e+00[MeV]');
model.variable('var_xs_CRCC6').set('lambdas1', '1.25423000e-02[1/s]');
model.variable('var_xs_CRCC6').set('lambdas2', '3.13254000e-02[1/s]');
model.variable('var_xs_CRCC6').set('lambdas3', '1.09681000e-01[1/s]');
model.variable('var_xs_CRCC6').set('lambdas4', '3.16567000e-01[1/s]');
model.variable('var_xs_CRCC6').set('lambdas5', '1.29511000e+00[1/s]');
model.variable('var_xs_CRCC6').set('lambdas6', '8.02767000e+00[1/s]');
model.variable('var_xs_CRCC6').set('nsf1', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC6').set('nsf2', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC6').set('nsf3', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC6').set('nsf4', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC6').set('nsf5', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC6').set('nsf6', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC6').set('nsf7', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC6').set('nsf8', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC6').set('diff21', '1.30270811e+00[cm]');
model.variable('var_xs_CRCC6').set('diff22', '7.46768050e-01[cm]');
model.variable('var_xs_CRCC6').set('diff23', '9.55299924e-01[cm]');
model.variable('var_xs_CRCC6').set('diff24', '9.66546224e-01[cm]');
model.variable('var_xs_CRCC6').set('diff25', '9.65428540e-01[cm]');
model.variable('var_xs_CRCC6').set('diff26', '9.56796391e-01[cm]');
model.variable('var_xs_CRCC6').set('diff27', '9.38782514e-01[cm]');
model.variable('var_xs_CRCC6').set('diff28', '8.60323185e-01[cm]');
model.variable('var_xs_CRCC6').set('rem1', '5.38541000e-02[1/cm]');
model.variable('var_xs_CRCC6').set('rem2', '1.49707000e-02[1/cm]');
model.variable('var_xs_CRCC6').set('rem3', '6.72838000e-03[1/cm]');
model.variable('var_xs_CRCC6').set('rem4', '1.53269000e-02[1/cm]');
model.variable('var_xs_CRCC6').set('rem5', '3.68997000e-02[1/cm]');
model.variable('var_xs_CRCC6').set('rem6', '6.16232000e-02[1/cm]');
model.variable('var_xs_CRCC6').set('rem7', '6.73110000e-02[1/cm]');
model.variable('var_xs_CRCC6').set('rem8', '1.04905000e-01[1/cm]');
model.variable('var_xs_CRCC6').set('scat11', '1.43536000e-01[1/cm]');
model.variable('var_xs_CRCC6').set('scat12', '5.22759000e-02[1/cm]');
model.variable('var_xs_CRCC6').set('scat13', '4.50973000e-05[1/cm]');
model.variable('var_xs_CRCC6').set('scat14', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC6').set('scat15', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC6').set('scat16', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC6').set('scat17', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC6').set('scat18', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC6').set('scat21', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC6').set('scat22', '3.29371000e-01[1/cm]');
model.variable('var_xs_CRCC6').set('scat23', '1.49096000e-02[1/cm]');
model.variable('var_xs_CRCC6').set('scat24', '3.87118000e-08[1/cm]');
model.variable('var_xs_CRCC6').set('scat25', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC6').set('scat26', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC6').set('scat27', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC6').set('scat28', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC6').set('scat31', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC6').set('scat32', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC6').set('scat33', '2.62447000e-01[1/cm]');
model.variable('var_xs_CRCC6').set('scat34', '6.71212000e-03[1/cm]');
model.variable('var_xs_CRCC6').set('scat35', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC6').set('scat36', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC6').set('scat37', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC6').set('scat38', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC6').set('scat41', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC6').set('scat42', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC6').set('scat43', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC6').set('scat44', '2.50716000e-01[1/cm]');
model.variable('var_xs_CRCC6').set('scat45', '1.52398000e-02[1/cm]');
model.variable('var_xs_CRCC6').set('scat46', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC6').set('scat47', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC6').set('scat48', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC6').set('scat51', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC6').set('scat52', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC6').set('scat53', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC6').set('scat54', '1.75392000e-04[1/cm]');
model.variable('var_xs_CRCC6').set('scat55', '2.29452000e-01[1/cm]');
model.variable('var_xs_CRCC6').set('scat56', '3.60384000e-02[1/cm]');
model.variable('var_xs_CRCC6').set('scat57', '3.84119000e-04[1/cm]');
model.variable('var_xs_CRCC6').set('scat58', '3.11739000e-06[1/cm]');
model.variable('var_xs_CRCC6').set('scat61', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC6').set('scat62', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC6').set('scat63', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC6').set('scat64', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC6').set('scat65', '7.25462000e-03[1/cm]');
model.variable('var_xs_CRCC6').set('scat66', '2.07131000e-01[1/cm]');
model.variable('var_xs_CRCC6').set('scat67', '5.27642000e-02[1/cm]');
model.variable('var_xs_CRCC6').set('scat68', '1.03121000e-03[1/cm]');
model.variable('var_xs_CRCC6').set('scat71', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC6').set('scat72', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC6').set('scat73', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC6').set('scat74', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC6').set('scat75', '4.72401000e-05[1/cm]');
model.variable('var_xs_CRCC6').set('scat76', '3.73205000e-02[1/cm]');
model.variable('var_xs_CRCC6').set('scat77', '2.06600000e-01[1/cm]');
model.variable('var_xs_CRCC6').set('scat78', '2.90417000e-02[1/cm]');
model.variable('var_xs_CRCC6').set('scat81', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC6').set('scat82', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC6').set('scat83', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC6').set('scat84', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC6').set('scat85', '1.22308000e-06[1/cm]');
model.variable('var_xs_CRCC6').set('scat86', '2.46773000e-03[1/cm]');
model.variable('var_xs_CRCC6').set('scat87', '1.00699000e-01[1/cm]');
model.variable('var_xs_CRCC6').set('scat88', '1.93986000e-01[1/cm]');
model.variable('var_xs_CRCC6').set('tot1', '1.97391000e-01[1/cm]');
model.variable('var_xs_CRCC6').set('tot2', '3.44341000e-01[1/cm]');
model.variable('var_xs_CRCC6').set('tot3', '2.69175000e-01[1/cm]');
model.variable('var_xs_CRCC6').set('tot4', '2.66043000e-01[1/cm]');
model.variable('var_xs_CRCC6').set('tot5', '2.66351000e-01[1/cm]');
model.variable('var_xs_CRCC6').set('tot6', '2.68754000e-01[1/cm]');
model.variable('var_xs_CRCC6').set('tot7', '2.73911000e-01[1/cm]');
model.variable('var_xs_CRCC6').set('tot8', '2.98891000e-01[1/cm]');
model.variable('var_xs_CRCC6').selection.geom('geom1', 3);
model.variable('var_xs_CRCC6').selection.set([17]);
model.variable.create('var_xs_CRCC7');
model.variable('var_xs_CRCC7').model('mod1');
model.variable('var_xs_CRCC7').set('beta1', '5.38313000e-03');
model.variable('var_xs_CRCC7').set('betas1', '1.65619000e-04');
model.variable('var_xs_CRCC7').set('betas2', '9.84868000e-04');
model.variable('var_xs_CRCC7').set('betas3', '8.77782000e-04');
model.variable('var_xs_CRCC7').set('betas4', '2.37174000e-03');
model.variable('var_xs_CRCC7').set('betas5', '7.31647000e-04');
model.variable('var_xs_CRCC7').set('betas6', '2.51474000e-04');
model.variable('var_xs_CRCC7').set('chid1', '0.00000000e+00');
model.variable('var_xs_CRCC7').set('chid2', '0.00000000e+00');
model.variable('var_xs_CRCC7').set('chid3', '0.00000000e+00');
model.variable('var_xs_CRCC7').set('chid4', '0.00000000e+00');
model.variable('var_xs_CRCC7').set('chid5', '0.00000000e+00');
model.variable('var_xs_CRCC7').set('chid6', '0.00000000e+00');
model.variable('var_xs_CRCC7').set('chid7', '0.00000000e+00');
model.variable('var_xs_CRCC7').set('chid8', '0.00000000e+00');
model.variable('var_xs_CRCC7').set('chip1', '0.00000000e+00');
model.variable('var_xs_CRCC7').set('chip2', '0.00000000e+00');
model.variable('var_xs_CRCC7').set('chip3', '0.00000000e+00');
model.variable('var_xs_CRCC7').set('chip4', '0.00000000e+00');
model.variable('var_xs_CRCC7').set('chip5', '0.00000000e+00');
model.variable('var_xs_CRCC7').set('chip6', '0.00000000e+00');
model.variable('var_xs_CRCC7').set('chip7', '0.00000000e+00');
model.variable('var_xs_CRCC7').set('chip8', '0.00000000e+00');
model.variable('var_xs_CRCC7').set('chit1', '0.00000000e+00');
model.variable('var_xs_CRCC7').set('chit2', '0.00000000e+00');
model.variable('var_xs_CRCC7').set('chit3', '0.00000000e+00');
model.variable('var_xs_CRCC7').set('chit4', '0.00000000e+00');
model.variable('var_xs_CRCC7').set('chit5', '0.00000000e+00');
model.variable('var_xs_CRCC7').set('chit6', '0.00000000e+00');
model.variable('var_xs_CRCC7').set('chit7', '0.00000000e+00');
model.variable('var_xs_CRCC7').set('chit8', '0.00000000e+00');
model.variable('var_xs_CRCC7').set('diff11', '2.21407000e+00[cm]');
model.variable('var_xs_CRCC7').set('diff12', '1.09602000e+00[cm]');
model.variable('var_xs_CRCC7').set('diff13', '1.30610000e+00[cm]');
model.variable('var_xs_CRCC7').set('diff14', '1.32069000e+00[cm]');
model.variable('var_xs_CRCC7').set('diff15', '1.31919000e+00[cm]');
model.variable('var_xs_CRCC7').set('diff16', '1.30639000e+00[cm]');
model.variable('var_xs_CRCC7').set('diff17', '1.27999000e+00[cm]');
model.variable('var_xs_CRCC7').set('diff18', '1.17085000e+00[cm]');
model.variable('var_xs_CRCC7').set('fiss1', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC7').set('fiss2', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC7').set('fiss3', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC7').set('fiss4', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC7').set('fiss5', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC7').set('fiss6', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC7').set('fiss7', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC7').set('fiss8', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC7').set('invV1', '4.83782000e-10[s/cm]');
model.variable('var_xs_CRCC7').set('invV2', '2.09139000e-09[s/cm]');
model.variable('var_xs_CRCC7').set('invV3', '3.30696000e-08[s/cm]');
model.variable('var_xs_CRCC7').set('invV4', '2.07310000e-07[s/cm]');
model.variable('var_xs_CRCC7').set('invV5', '7.07869000e-07[s/cm]');
model.variable('var_xs_CRCC7').set('invV6', '1.37466000e-06[s/cm]');
model.variable('var_xs_CRCC7').set('invV7', '2.16717000e-06[s/cm]');
model.variable('var_xs_CRCC7').set('invV8', '4.18367000e-06[s/cm]');
model.variable('var_xs_CRCC7').set('kappa1', '0.00000000e+00[MeV]');
model.variable('var_xs_CRCC7').set('kappa2', '0.00000000e+00[MeV]');
model.variable('var_xs_CRCC7').set('kappa3', '0.00000000e+00[MeV]');
model.variable('var_xs_CRCC7').set('kappa4', '0.00000000e+00[MeV]');
model.variable('var_xs_CRCC7').set('kappa5', '0.00000000e+00[MeV]');
model.variable('var_xs_CRCC7').set('kappa6', '0.00000000e+00[MeV]');
model.variable('var_xs_CRCC7').set('kappa7', '0.00000000e+00[MeV]');
model.variable('var_xs_CRCC7').set('kappa8', '0.00000000e+00[MeV]');
model.variable('var_xs_CRCC7').set('lambdas1', '1.25423000e-02[1/s]');
model.variable('var_xs_CRCC7').set('lambdas2', '3.13254000e-02[1/s]');
model.variable('var_xs_CRCC7').set('lambdas3', '1.09681000e-01[1/s]');
model.variable('var_xs_CRCC7').set('lambdas4', '3.16567000e-01[1/s]');
model.variable('var_xs_CRCC7').set('lambdas5', '1.29511000e+00[1/s]');
model.variable('var_xs_CRCC7').set('lambdas6', '8.02767000e+00[1/s]');
model.variable('var_xs_CRCC7').set('nsf1', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC7').set('nsf2', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC7').set('nsf3', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC7').set('nsf4', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC7').set('nsf5', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC7').set('nsf6', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC7').set('nsf7', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC7').set('nsf8', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC7').set('diff21', '1.30270811e+00[cm]');
model.variable('var_xs_CRCC7').set('diff22', '7.46768050e-01[cm]');
model.variable('var_xs_CRCC7').set('diff23', '9.55299924e-01[cm]');
model.variable('var_xs_CRCC7').set('diff24', '9.66546224e-01[cm]');
model.variable('var_xs_CRCC7').set('diff25', '9.65428540e-01[cm]');
model.variable('var_xs_CRCC7').set('diff26', '9.56796391e-01[cm]');
model.variable('var_xs_CRCC7').set('diff27', '9.38782514e-01[cm]');
model.variable('var_xs_CRCC7').set('diff28', '8.60323185e-01[cm]');
model.variable('var_xs_CRCC7').set('rem1', '5.38541000e-02[1/cm]');
model.variable('var_xs_CRCC7').set('rem2', '1.49707000e-02[1/cm]');
model.variable('var_xs_CRCC7').set('rem3', '6.72838000e-03[1/cm]');
model.variable('var_xs_CRCC7').set('rem4', '1.53269000e-02[1/cm]');
model.variable('var_xs_CRCC7').set('rem5', '3.68997000e-02[1/cm]');
model.variable('var_xs_CRCC7').set('rem6', '6.16232000e-02[1/cm]');
model.variable('var_xs_CRCC7').set('rem7', '6.73110000e-02[1/cm]');
model.variable('var_xs_CRCC7').set('rem8', '1.04905000e-01[1/cm]');
model.variable('var_xs_CRCC7').set('scat11', '1.43536000e-01[1/cm]');
model.variable('var_xs_CRCC7').set('scat12', '5.22759000e-02[1/cm]');
model.variable('var_xs_CRCC7').set('scat13', '4.50973000e-05[1/cm]');
model.variable('var_xs_CRCC7').set('scat14', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC7').set('scat15', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC7').set('scat16', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC7').set('scat17', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC7').set('scat18', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC7').set('scat21', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC7').set('scat22', '3.29371000e-01[1/cm]');
model.variable('var_xs_CRCC7').set('scat23', '1.49096000e-02[1/cm]');
model.variable('var_xs_CRCC7').set('scat24', '3.87118000e-08[1/cm]');
model.variable('var_xs_CRCC7').set('scat25', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC7').set('scat26', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC7').set('scat27', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC7').set('scat28', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC7').set('scat31', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC7').set('scat32', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC7').set('scat33', '2.62447000e-01[1/cm]');
model.variable('var_xs_CRCC7').set('scat34', '6.71212000e-03[1/cm]');
model.variable('var_xs_CRCC7').set('scat35', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC7').set('scat36', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC7').set('scat37', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC7').set('scat38', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC7').set('scat41', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC7').set('scat42', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC7').set('scat43', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC7').set('scat44', '2.50716000e-01[1/cm]');
model.variable('var_xs_CRCC7').set('scat45', '1.52398000e-02[1/cm]');
model.variable('var_xs_CRCC7').set('scat46', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC7').set('scat47', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC7').set('scat48', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC7').set('scat51', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC7').set('scat52', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC7').set('scat53', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC7').set('scat54', '1.75392000e-04[1/cm]');
model.variable('var_xs_CRCC7').set('scat55', '2.29452000e-01[1/cm]');
model.variable('var_xs_CRCC7').set('scat56', '3.60384000e-02[1/cm]');
model.variable('var_xs_CRCC7').set('scat57', '3.84119000e-04[1/cm]');
model.variable('var_xs_CRCC7').set('scat58', '3.11739000e-06[1/cm]');
model.variable('var_xs_CRCC7').set('scat61', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC7').set('scat62', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC7').set('scat63', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC7').set('scat64', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC7').set('scat65', '7.25462000e-03[1/cm]');
model.variable('var_xs_CRCC7').set('scat66', '2.07131000e-01[1/cm]');
model.variable('var_xs_CRCC7').set('scat67', '5.27642000e-02[1/cm]');
model.variable('var_xs_CRCC7').set('scat68', '1.03121000e-03[1/cm]');
model.variable('var_xs_CRCC7').set('scat71', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC7').set('scat72', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC7').set('scat73', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC7').set('scat74', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC7').set('scat75', '4.72401000e-05[1/cm]');
model.variable('var_xs_CRCC7').set('scat76', '3.73205000e-02[1/cm]');
model.variable('var_xs_CRCC7').set('scat77', '2.06600000e-01[1/cm]');
model.variable('var_xs_CRCC7').set('scat78', '2.90417000e-02[1/cm]');
model.variable('var_xs_CRCC7').set('scat81', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC7').set('scat82', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC7').set('scat83', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC7').set('scat84', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC7').set('scat85', '1.22308000e-06[1/cm]');
model.variable('var_xs_CRCC7').set('scat86', '2.46773000e-03[1/cm]');
model.variable('var_xs_CRCC7').set('scat87', '1.00699000e-01[1/cm]');
model.variable('var_xs_CRCC7').set('scat88', '1.93986000e-01[1/cm]');
model.variable('var_xs_CRCC7').set('tot1', '1.97391000e-01[1/cm]');
model.variable('var_xs_CRCC7').set('tot2', '3.44341000e-01[1/cm]');
model.variable('var_xs_CRCC7').set('tot3', '2.69175000e-01[1/cm]');
model.variable('var_xs_CRCC7').set('tot4', '2.66043000e-01[1/cm]');
model.variable('var_xs_CRCC7').set('tot5', '2.66351000e-01[1/cm]');
model.variable('var_xs_CRCC7').set('tot6', '2.68754000e-01[1/cm]');
model.variable('var_xs_CRCC7').set('tot7', '2.73911000e-01[1/cm]');
model.variable('var_xs_CRCC7').set('tot8', '2.98891000e-01[1/cm]');
model.variable('var_xs_CRCC7').selection.geom('geom1', 3);
model.variable('var_xs_CRCC7').selection.set([18]);
model.variable.create('var_xs_CRCC8_1');
model.variable('var_xs_CRCC8_1').model('mod1');
model.variable('var_xs_CRCC8_1').set('beta1', '5.38313000e-03');
model.variable('var_xs_CRCC8_1').set('betas1', '1.65619000e-04');
model.variable('var_xs_CRCC8_1').set('betas2', '9.84868000e-04');
model.variable('var_xs_CRCC8_1').set('betas3', '8.77782000e-04');
model.variable('var_xs_CRCC8_1').set('betas4', '2.37174000e-03');
model.variable('var_xs_CRCC8_1').set('betas5', '7.31647000e-04');
model.variable('var_xs_CRCC8_1').set('betas6', '2.51474000e-04');
model.variable('var_xs_CRCC8_1').set('chid1', '0.00000000e+00');
model.variable('var_xs_CRCC8_1').set('chid2', '0.00000000e+00');
model.variable('var_xs_CRCC8_1').set('chid3', '0.00000000e+00');
model.variable('var_xs_CRCC8_1').set('chid4', '0.00000000e+00');
model.variable('var_xs_CRCC8_1').set('chid5', '0.00000000e+00');
model.variable('var_xs_CRCC8_1').set('chid6', '0.00000000e+00');
model.variable('var_xs_CRCC8_1').set('chid7', '0.00000000e+00');
model.variable('var_xs_CRCC8_1').set('chid8', '0.00000000e+00');
model.variable('var_xs_CRCC8_1').set('chip1', '0.00000000e+00');
model.variable('var_xs_CRCC8_1').set('chip2', '0.00000000e+00');
model.variable('var_xs_CRCC8_1').set('chip3', '0.00000000e+00');
model.variable('var_xs_CRCC8_1').set('chip4', '0.00000000e+00');
model.variable('var_xs_CRCC8_1').set('chip5', '0.00000000e+00');
model.variable('var_xs_CRCC8_1').set('chip6', '0.00000000e+00');
model.variable('var_xs_CRCC8_1').set('chip7', '0.00000000e+00');
model.variable('var_xs_CRCC8_1').set('chip8', '0.00000000e+00');
model.variable('var_xs_CRCC8_1').set('chit1', '0.00000000e+00');
model.variable('var_xs_CRCC8_1').set('chit2', '0.00000000e+00');
model.variable('var_xs_CRCC8_1').set('chit3', '0.00000000e+00');
model.variable('var_xs_CRCC8_1').set('chit4', '0.00000000e+00');
model.variable('var_xs_CRCC8_1').set('chit5', '0.00000000e+00');
model.variable('var_xs_CRCC8_1').set('chit6', '0.00000000e+00');
model.variable('var_xs_CRCC8_1').set('chit7', '0.00000000e+00');
model.variable('var_xs_CRCC8_1').set('chit8', '0.00000000e+00');
model.variable('var_xs_CRCC8_1').set('diff11', '2.21407000e+00[cm]');
model.variable('var_xs_CRCC8_1').set('diff12', '1.09602000e+00[cm]');
model.variable('var_xs_CRCC8_1').set('diff13', '1.30610000e+00[cm]');
model.variable('var_xs_CRCC8_1').set('diff14', '1.32069000e+00[cm]');
model.variable('var_xs_CRCC8_1').set('diff15', '1.31919000e+00[cm]');
model.variable('var_xs_CRCC8_1').set('diff16', '1.30639000e+00[cm]');
model.variable('var_xs_CRCC8_1').set('diff17', '1.27999000e+00[cm]');
model.variable('var_xs_CRCC8_1').set('diff18', '1.17085000e+00[cm]');
model.variable('var_xs_CRCC8_1').set('fiss1', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC8_1').set('fiss2', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC8_1').set('fiss3', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC8_1').set('fiss4', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC8_1').set('fiss5', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC8_1').set('fiss6', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC8_1').set('fiss7', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC8_1').set('fiss8', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC8_1').set('invV1', '4.83782000e-10[s/cm]');
model.variable('var_xs_CRCC8_1').set('invV2', '2.09139000e-09[s/cm]');
model.variable('var_xs_CRCC8_1').set('invV3', '3.30696000e-08[s/cm]');
model.variable('var_xs_CRCC8_1').set('invV4', '2.07310000e-07[s/cm]');
model.variable('var_xs_CRCC8_1').set('invV5', '7.07869000e-07[s/cm]');
model.variable('var_xs_CRCC8_1').set('invV6', '1.37466000e-06[s/cm]');
model.variable('var_xs_CRCC8_1').set('invV7', '2.16717000e-06[s/cm]');
model.variable('var_xs_CRCC8_1').set('invV8', '4.18367000e-06[s/cm]');
model.variable('var_xs_CRCC8_1').set('kappa1', '0.00000000e+00[MeV]');
model.variable('var_xs_CRCC8_1').set('kappa2', '0.00000000e+00[MeV]');
model.variable('var_xs_CRCC8_1').set('kappa3', '0.00000000e+00[MeV]');
model.variable('var_xs_CRCC8_1').set('kappa4', '0.00000000e+00[MeV]');
model.variable('var_xs_CRCC8_1').set('kappa5', '0.00000000e+00[MeV]');
model.variable('var_xs_CRCC8_1').set('kappa6', '0.00000000e+00[MeV]');
model.variable('var_xs_CRCC8_1').set('kappa7', '0.00000000e+00[MeV]');
model.variable('var_xs_CRCC8_1').set('kappa8', '0.00000000e+00[MeV]');
model.variable('var_xs_CRCC8_1').set('lambdas1', '1.25423000e-02[1/s]');
model.variable('var_xs_CRCC8_1').set('lambdas2', '3.13254000e-02[1/s]');
model.variable('var_xs_CRCC8_1').set('lambdas3', '1.09681000e-01[1/s]');
model.variable('var_xs_CRCC8_1').set('lambdas4', '3.16567000e-01[1/s]');
model.variable('var_xs_CRCC8_1').set('lambdas5', '1.29511000e+00[1/s]');
model.variable('var_xs_CRCC8_1').set('lambdas6', '8.02767000e+00[1/s]');
model.variable('var_xs_CRCC8_1').set('nsf1', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC8_1').set('nsf2', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC8_1').set('nsf3', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC8_1').set('nsf4', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC8_1').set('nsf5', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC8_1').set('nsf6', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC8_1').set('nsf7', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC8_1').set('nsf8', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC8_1').set('diff21', '1.30270811e+00[cm]');
model.variable('var_xs_CRCC8_1').set('diff22', '7.46768050e-01[cm]');
model.variable('var_xs_CRCC8_1').set('diff23', '9.55299924e-01[cm]');
model.variable('var_xs_CRCC8_1').set('diff24', '9.66546224e-01[cm]');
model.variable('var_xs_CRCC8_1').set('diff25', '9.65428540e-01[cm]');
model.variable('var_xs_CRCC8_1').set('diff26', '9.56796391e-01[cm]');
model.variable('var_xs_CRCC8_1').set('diff27', '9.38782514e-01[cm]');
model.variable('var_xs_CRCC8_1').set('diff28', '8.60323185e-01[cm]');
model.variable('var_xs_CRCC8_1').set('rem1', '5.38541000e-02[1/cm]');
model.variable('var_xs_CRCC8_1').set('rem2', '1.49707000e-02[1/cm]');
model.variable('var_xs_CRCC8_1').set('rem3', '6.72838000e-03[1/cm]');
model.variable('var_xs_CRCC8_1').set('rem4', '1.53269000e-02[1/cm]');
model.variable('var_xs_CRCC8_1').set('rem5', '3.68997000e-02[1/cm]');
model.variable('var_xs_CRCC8_1').set('rem6', '6.16232000e-02[1/cm]');
model.variable('var_xs_CRCC8_1').set('rem7', '6.73110000e-02[1/cm]');
model.variable('var_xs_CRCC8_1').set('rem8', '1.04905000e-01[1/cm]');
model.variable('var_xs_CRCC8_1').set('scat11', '1.43536000e-01[1/cm]');
model.variable('var_xs_CRCC8_1').set('scat12', '5.22759000e-02[1/cm]');
model.variable('var_xs_CRCC8_1').set('scat13', '4.50973000e-05[1/cm]');
model.variable('var_xs_CRCC8_1').set('scat14', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC8_1').set('scat15', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC8_1').set('scat16', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC8_1').set('scat17', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC8_1').set('scat18', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC8_1').set('scat21', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC8_1').set('scat22', '3.29371000e-01[1/cm]');
model.variable('var_xs_CRCC8_1').set('scat23', '1.49096000e-02[1/cm]');
model.variable('var_xs_CRCC8_1').set('scat24', '3.87118000e-08[1/cm]');
model.variable('var_xs_CRCC8_1').set('scat25', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC8_1').set('scat26', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC8_1').set('scat27', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC8_1').set('scat28', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC8_1').set('scat31', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC8_1').set('scat32', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC8_1').set('scat33', '2.62447000e-01[1/cm]');
model.variable('var_xs_CRCC8_1').set('scat34', '6.71212000e-03[1/cm]');
model.variable('var_xs_CRCC8_1').set('scat35', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC8_1').set('scat36', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC8_1').set('scat37', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC8_1').set('scat38', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC8_1').set('scat41', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC8_1').set('scat42', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC8_1').set('scat43', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC8_1').set('scat44', '2.50716000e-01[1/cm]');
model.variable('var_xs_CRCC8_1').set('scat45', '1.52398000e-02[1/cm]');
model.variable('var_xs_CRCC8_1').set('scat46', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC8_1').set('scat47', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC8_1').set('scat48', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC8_1').set('scat51', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC8_1').set('scat52', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC8_1').set('scat53', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC8_1').set('scat54', '1.75392000e-04[1/cm]');
model.variable('var_xs_CRCC8_1').set('scat55', '2.29452000e-01[1/cm]');
model.variable('var_xs_CRCC8_1').set('scat56', '3.60384000e-02[1/cm]');
model.variable('var_xs_CRCC8_1').set('scat57', '3.84119000e-04[1/cm]');
model.variable('var_xs_CRCC8_1').set('scat58', '3.11739000e-06[1/cm]');
model.variable('var_xs_CRCC8_1').set('scat61', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC8_1').set('scat62', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC8_1').set('scat63', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC8_1').set('scat64', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC8_1').set('scat65', '7.25462000e-03[1/cm]');
model.variable('var_xs_CRCC8_1').set('scat66', '2.07131000e-01[1/cm]');
model.variable('var_xs_CRCC8_1').set('scat67', '5.27642000e-02[1/cm]');
model.variable('var_xs_CRCC8_1').set('scat68', '1.03121000e-03[1/cm]');
model.variable('var_xs_CRCC8_1').set('scat71', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC8_1').set('scat72', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC8_1').set('scat73', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC8_1').set('scat74', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC8_1').set('scat75', '4.72401000e-05[1/cm]');
model.variable('var_xs_CRCC8_1').set('scat76', '3.73205000e-02[1/cm]');
model.variable('var_xs_CRCC8_1').set('scat77', '2.06600000e-01[1/cm]');
model.variable('var_xs_CRCC8_1').set('scat78', '2.90417000e-02[1/cm]');
model.variable('var_xs_CRCC8_1').set('scat81', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC8_1').set('scat82', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC8_1').set('scat83', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC8_1').set('scat84', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC8_1').set('scat85', '1.22308000e-06[1/cm]');
model.variable('var_xs_CRCC8_1').set('scat86', '2.46773000e-03[1/cm]');
model.variable('var_xs_CRCC8_1').set('scat87', '1.00699000e-01[1/cm]');
model.variable('var_xs_CRCC8_1').set('scat88', '1.93986000e-01[1/cm]');
model.variable('var_xs_CRCC8_1').set('tot1', '1.97391000e-01[1/cm]');
model.variable('var_xs_CRCC8_1').set('tot2', '3.44341000e-01[1/cm]');
model.variable('var_xs_CRCC8_1').set('tot3', '2.69175000e-01[1/cm]');
model.variable('var_xs_CRCC8_1').set('tot4', '2.66043000e-01[1/cm]');
model.variable('var_xs_CRCC8_1').set('tot5', '2.66351000e-01[1/cm]');
model.variable('var_xs_CRCC8_1').set('tot6', '2.68754000e-01[1/cm]');
model.variable('var_xs_CRCC8_1').set('tot7', '2.73911000e-01[1/cm]');
model.variable('var_xs_CRCC8_1').set('tot8', '2.98891000e-01[1/cm]');
model.variable('var_xs_CRCC8_1').selection.geom('geom1', 3);
model.variable('var_xs_CRCC8_1').selection.set([19]);
model.variable.create('var_xs_CRCC8_2');
model.variable('var_xs_CRCC8_2').model('mod1');
model.variable('var_xs_CRCC8_2').set('beta1', '5.38313000e-03');
model.variable('var_xs_CRCC8_2').set('betas1', '1.65619000e-04');
model.variable('var_xs_CRCC8_2').set('betas2', '9.84868000e-04');
model.variable('var_xs_CRCC8_2').set('betas3', '8.77782000e-04');
model.variable('var_xs_CRCC8_2').set('betas4', '2.37174000e-03');
model.variable('var_xs_CRCC8_2').set('betas5', '7.31647000e-04');
model.variable('var_xs_CRCC8_2').set('betas6', '2.51474000e-04');
model.variable('var_xs_CRCC8_2').set('chid1', '0.00000000e+00');
model.variable('var_xs_CRCC8_2').set('chid2', '0.00000000e+00');
model.variable('var_xs_CRCC8_2').set('chid3', '0.00000000e+00');
model.variable('var_xs_CRCC8_2').set('chid4', '0.00000000e+00');
model.variable('var_xs_CRCC8_2').set('chid5', '0.00000000e+00');
model.variable('var_xs_CRCC8_2').set('chid6', '0.00000000e+00');
model.variable('var_xs_CRCC8_2').set('chid7', '0.00000000e+00');
model.variable('var_xs_CRCC8_2').set('chid8', '0.00000000e+00');
model.variable('var_xs_CRCC8_2').set('chip1', '0.00000000e+00');
model.variable('var_xs_CRCC8_2').set('chip2', '0.00000000e+00');
model.variable('var_xs_CRCC8_2').set('chip3', '0.00000000e+00');
model.variable('var_xs_CRCC8_2').set('chip4', '0.00000000e+00');
model.variable('var_xs_CRCC8_2').set('chip5', '0.00000000e+00');
model.variable('var_xs_CRCC8_2').set('chip6', '0.00000000e+00');
model.variable('var_xs_CRCC8_2').set('chip7', '0.00000000e+00');
model.variable('var_xs_CRCC8_2').set('chip8', '0.00000000e+00');
model.variable('var_xs_CRCC8_2').set('chit1', '0.00000000e+00');
model.variable('var_xs_CRCC8_2').set('chit2', '0.00000000e+00');
model.variable('var_xs_CRCC8_2').set('chit3', '0.00000000e+00');
model.variable('var_xs_CRCC8_2').set('chit4', '0.00000000e+00');
model.variable('var_xs_CRCC8_2').set('chit5', '0.00000000e+00');
model.variable('var_xs_CRCC8_2').set('chit6', '0.00000000e+00');
model.variable('var_xs_CRCC8_2').set('chit7', '0.00000000e+00');
model.variable('var_xs_CRCC8_2').set('chit8', '0.00000000e+00');
model.variable('var_xs_CRCC8_2').set('diff11', '2.21407000e+00[cm]');
model.variable('var_xs_CRCC8_2').set('diff12', '1.09602000e+00[cm]');
model.variable('var_xs_CRCC8_2').set('diff13', '1.30610000e+00[cm]');
model.variable('var_xs_CRCC8_2').set('diff14', '1.32069000e+00[cm]');
model.variable('var_xs_CRCC8_2').set('diff15', '1.31919000e+00[cm]');
model.variable('var_xs_CRCC8_2').set('diff16', '1.30639000e+00[cm]');
model.variable('var_xs_CRCC8_2').set('diff17', '1.27999000e+00[cm]');
model.variable('var_xs_CRCC8_2').set('diff18', '1.17085000e+00[cm]');
model.variable('var_xs_CRCC8_2').set('fiss1', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC8_2').set('fiss2', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC8_2').set('fiss3', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC8_2').set('fiss4', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC8_2').set('fiss5', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC8_2').set('fiss6', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC8_2').set('fiss7', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC8_2').set('fiss8', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC8_2').set('invV1', '4.83782000e-10[s/cm]');
model.variable('var_xs_CRCC8_2').set('invV2', '2.09139000e-09[s/cm]');
model.variable('var_xs_CRCC8_2').set('invV3', '3.30696000e-08[s/cm]');
model.variable('var_xs_CRCC8_2').set('invV4', '2.07310000e-07[s/cm]');
model.variable('var_xs_CRCC8_2').set('invV5', '7.07869000e-07[s/cm]');
model.variable('var_xs_CRCC8_2').set('invV6', '1.37466000e-06[s/cm]');
model.variable('var_xs_CRCC8_2').set('invV7', '2.16717000e-06[s/cm]');
model.variable('var_xs_CRCC8_2').set('invV8', '4.18367000e-06[s/cm]');
model.variable('var_xs_CRCC8_2').set('kappa1', '0.00000000e+00[MeV]');
model.variable('var_xs_CRCC8_2').set('kappa2', '0.00000000e+00[MeV]');
model.variable('var_xs_CRCC8_2').set('kappa3', '0.00000000e+00[MeV]');
model.variable('var_xs_CRCC8_2').set('kappa4', '0.00000000e+00[MeV]');
model.variable('var_xs_CRCC8_2').set('kappa5', '0.00000000e+00[MeV]');
model.variable('var_xs_CRCC8_2').set('kappa6', '0.00000000e+00[MeV]');
model.variable('var_xs_CRCC8_2').set('kappa7', '0.00000000e+00[MeV]');
model.variable('var_xs_CRCC8_2').set('kappa8', '0.00000000e+00[MeV]');
model.variable('var_xs_CRCC8_2').set('lambdas1', '1.25423000e-02[1/s]');
model.variable('var_xs_CRCC8_2').set('lambdas2', '3.13254000e-02[1/s]');
model.variable('var_xs_CRCC8_2').set('lambdas3', '1.09681000e-01[1/s]');
model.variable('var_xs_CRCC8_2').set('lambdas4', '3.16567000e-01[1/s]');
model.variable('var_xs_CRCC8_2').set('lambdas5', '1.29511000e+00[1/s]');
model.variable('var_xs_CRCC8_2').set('lambdas6', '8.02767000e+00[1/s]');
model.variable('var_xs_CRCC8_2').set('nsf1', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC8_2').set('nsf2', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC8_2').set('nsf3', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC8_2').set('nsf4', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC8_2').set('nsf5', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC8_2').set('nsf6', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC8_2').set('nsf7', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC8_2').set('nsf8', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC8_2').set('diff21', '1.30270811e+00[cm]');
model.variable('var_xs_CRCC8_2').set('diff22', '7.46768050e-01[cm]');
model.variable('var_xs_CRCC8_2').set('diff23', '9.55299924e-01[cm]');
model.variable('var_xs_CRCC8_2').set('diff24', '9.66546224e-01[cm]');
model.variable('var_xs_CRCC8_2').set('diff25', '9.65428540e-01[cm]');
model.variable('var_xs_CRCC8_2').set('diff26', '9.56796391e-01[cm]');
model.variable('var_xs_CRCC8_2').set('diff27', '9.38782514e-01[cm]');
model.variable('var_xs_CRCC8_2').set('diff28', '8.60323185e-01[cm]');
model.variable('var_xs_CRCC8_2').set('rem1', '5.38541000e-02[1/cm]');
model.variable('var_xs_CRCC8_2').set('rem2', '1.49707000e-02[1/cm]');
model.variable('var_xs_CRCC8_2').set('rem3', '6.72838000e-03[1/cm]');
model.variable('var_xs_CRCC8_2').set('rem4', '1.53269000e-02[1/cm]');
model.variable('var_xs_CRCC8_2').set('rem5', '3.68997000e-02[1/cm]');
model.variable('var_xs_CRCC8_2').set('rem6', '6.16232000e-02[1/cm]');
model.variable('var_xs_CRCC8_2').set('rem7', '6.73110000e-02[1/cm]');
model.variable('var_xs_CRCC8_2').set('rem8', '1.04905000e-01[1/cm]');
model.variable('var_xs_CRCC8_2').set('scat11', '1.43536000e-01[1/cm]');
model.variable('var_xs_CRCC8_2').set('scat12', '5.22759000e-02[1/cm]');
model.variable('var_xs_CRCC8_2').set('scat13', '4.50973000e-05[1/cm]');
model.variable('var_xs_CRCC8_2').set('scat14', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC8_2').set('scat15', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC8_2').set('scat16', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC8_2').set('scat17', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC8_2').set('scat18', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC8_2').set('scat21', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC8_2').set('scat22', '3.29371000e-01[1/cm]');
model.variable('var_xs_CRCC8_2').set('scat23', '1.49096000e-02[1/cm]');
model.variable('var_xs_CRCC8_2').set('scat24', '3.87118000e-08[1/cm]');
model.variable('var_xs_CRCC8_2').set('scat25', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC8_2').set('scat26', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC8_2').set('scat27', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC8_2').set('scat28', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC8_2').set('scat31', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC8_2').set('scat32', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC8_2').set('scat33', '2.62447000e-01[1/cm]');
model.variable('var_xs_CRCC8_2').set('scat34', '6.71212000e-03[1/cm]');
model.variable('var_xs_CRCC8_2').set('scat35', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC8_2').set('scat36', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC8_2').set('scat37', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC8_2').set('scat38', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC8_2').set('scat41', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC8_2').set('scat42', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC8_2').set('scat43', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC8_2').set('scat44', '2.50716000e-01[1/cm]');
model.variable('var_xs_CRCC8_2').set('scat45', '1.52398000e-02[1/cm]');
model.variable('var_xs_CRCC8_2').set('scat46', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC8_2').set('scat47', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC8_2').set('scat48', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC8_2').set('scat51', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC8_2').set('scat52', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC8_2').set('scat53', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC8_2').set('scat54', '1.75392000e-04[1/cm]');
model.variable('var_xs_CRCC8_2').set('scat55', '2.29452000e-01[1/cm]');
model.variable('var_xs_CRCC8_2').set('scat56', '3.60384000e-02[1/cm]');
model.variable('var_xs_CRCC8_2').set('scat57', '3.84119000e-04[1/cm]');
model.variable('var_xs_CRCC8_2').set('scat58', '3.11739000e-06[1/cm]');
model.variable('var_xs_CRCC8_2').set('scat61', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC8_2').set('scat62', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC8_2').set('scat63', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC8_2').set('scat64', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC8_2').set('scat65', '7.25462000e-03[1/cm]');
model.variable('var_xs_CRCC8_2').set('scat66', '2.07131000e-01[1/cm]');
model.variable('var_xs_CRCC8_2').set('scat67', '5.27642000e-02[1/cm]');
model.variable('var_xs_CRCC8_2').set('scat68', '1.03121000e-03[1/cm]');
model.variable('var_xs_CRCC8_2').set('scat71', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC8_2').set('scat72', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC8_2').set('scat73', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC8_2').set('scat74', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC8_2').set('scat75', '4.72401000e-05[1/cm]');
model.variable('var_xs_CRCC8_2').set('scat76', '3.73205000e-02[1/cm]');
model.variable('var_xs_CRCC8_2').set('scat77', '2.06600000e-01[1/cm]');
model.variable('var_xs_CRCC8_2').set('scat78', '2.90417000e-02[1/cm]');
model.variable('var_xs_CRCC8_2').set('scat81', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC8_2').set('scat82', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC8_2').set('scat83', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC8_2').set('scat84', '0.00000000e+00[1/cm]');
model.variable('var_xs_CRCC8_2').set('scat85', '1.22308000e-06[1/cm]');
model.variable('var_xs_CRCC8_2').set('scat86', '2.46773000e-03[1/cm]');
model.variable('var_xs_CRCC8_2').set('scat87', '1.00699000e-01[1/cm]');
model.variable('var_xs_CRCC8_2').set('scat88', '1.93986000e-01[1/cm]');
model.variable('var_xs_CRCC8_2').set('tot1', '1.97391000e-01[1/cm]');
model.variable('var_xs_CRCC8_2').set('tot2', '3.44341000e-01[1/cm]');
model.variable('var_xs_CRCC8_2').set('tot3', '2.69175000e-01[1/cm]');
model.variable('var_xs_CRCC8_2').set('tot4', '2.66043000e-01[1/cm]');
model.variable('var_xs_CRCC8_2').set('tot5', '2.66351000e-01[1/cm]');
model.variable('var_xs_CRCC8_2').set('tot6', '2.68754000e-01[1/cm]');
model.variable('var_xs_CRCC8_2').set('tot7', '2.73911000e-01[1/cm]');
model.variable('var_xs_CRCC8_2').set('tot8', '2.98891000e-01[1/cm]');
model.variable('var_xs_CRCC8_2').selection.geom('geom1', 3);
model.variable('var_xs_CRCC8_2').selection.set([20]);
model.variable.create('var16');
model.variable('var16').model('mod1');
model.variable('var16').set('beta1', '5.40133000e-03');
model.variable('var16').set('betas1', '1.61913000e-04');
model.variable('var16').set('betas2', '9.87709000e-04');
model.variable('var16').set('betas3', '8.72014000e-04');
model.variable('var16').set('betas4', '2.39282000e-03');
model.variable('var16').set('betas5', '7.36574000e-04');
model.variable('var16').set('betas6', '2.50301000e-04');
model.variable('var16').set('chid1', '0.00000000e+00');
model.variable('var16').set('chid2', '0.00000000e+00');
model.variable('var16').set('chid3', '0.00000000e+00');
model.variable('var16').set('chid4', '0.00000000e+00');
model.variable('var16').set('chid5', '0.00000000e+00');
model.variable('var16').set('chid6', '0.00000000e+00');
model.variable('var16').set('chid7', '0.00000000e+00');
model.variable('var16').set('chid8', '0.00000000e+00');
model.variable('var16').set('chip1', '0.00000000e+00');
model.variable('var16').set('chip2', '0.00000000e+00');
model.variable('var16').set('chip3', '0.00000000e+00');
model.variable('var16').set('chip4', '0.00000000e+00');
model.variable('var16').set('chip5', '0.00000000e+00');
model.variable('var16').set('chip6', '0.00000000e+00');
model.variable('var16').set('chip7', '0.00000000e+00');
model.variable('var16').set('chip8', '0.00000000e+00');
model.variable('var16').set('chit1', '0.00000000e+00');
model.variable('var16').set('chit2', '0.00000000e+00');
model.variable('var16').set('chit3', '0.00000000e+00');
model.variable('var16').set('chit4', '0.00000000e+00');
model.variable('var16').set('chit5', '0.00000000e+00');
model.variable('var16').set('chit6', '0.00000000e+00');
model.variable('var16').set('chit7', '0.00000000e+00');
model.variable('var16').set('chit8', '0.00000000e+00');
model.variable('var16').set('diff11', '2.07873000e+00[cm]');
model.variable('var16').set('diff12', '1.01710000e+00[cm]');
model.variable('var16').set('diff13', '1.22153000e+00[cm]');
model.variable('var16').set('diff14', '1.23466000e+00[cm]');
model.variable('var16').set('diff15', '1.23460000e+00[cm]');
model.variable('var16').set('diff16', '1.22580000e+00[cm]');
model.variable('var16').set('diff17', '1.20724000e+00[cm]');
model.variable('var16').set('diff18', '1.12931000e+00[cm]');
model.variable('var16').set('fiss1', '0.00000000e+00[1/cm]');
model.variable('var16').set('fiss2', '0.00000000e+00[1/cm]');
model.variable('var16').set('fiss3', '0.00000000e+00[1/cm]');
model.variable('var16').set('fiss4', '0.00000000e+00[1/cm]');
model.variable('var16').set('fiss5', '0.00000000e+00[1/cm]');
model.variable('var16').set('fiss6', '0.00000000e+00[1/cm]');
model.variable('var16').set('fiss7', '0.00000000e+00[1/cm]');
model.variable('var16').set('fiss8', '0.00000000e+00[1/cm]');
model.variable('var16').set('invV1', '4.78634000e-10[s/cm]');
model.variable('var16').set('invV2', '1.96096000e-09[s/cm]');
model.variable('var16').set('invV3', '3.02529000e-08[s/cm]');
model.variable('var16').set('invV4', '2.00313000e-07[s/cm]');
model.variable('var16').set('invV5', '6.54832000e-07[s/cm]');
model.variable('var16').set('invV6', '1.35741000e-06[s/cm]');
model.variable('var16').set('invV7', '2.16765000e-06[s/cm]');
model.variable('var16').set('invV8', '4.15492000e-06[s/cm]');
model.variable('var16').set('kappa1', '0.00000000e+00[MeV]');
model.variable('var16').set('kappa2', '0.00000000e+00[MeV]');
model.variable('var16').set('kappa3', '0.00000000e+00[MeV]');
model.variable('var16').set('kappa4', '0.00000000e+00[MeV]');
model.variable('var16').set('kappa5', '0.00000000e+00[MeV]');
model.variable('var16').set('kappa6', '0.00000000e+00[MeV]');
model.variable('var16').set('kappa7', '0.00000000e+00[MeV]');
model.variable('var16').set('kappa8', '0.00000000e+00[MeV]');
model.variable('var16').set('lambdas1', '1.25452000e-02[1/s]');
model.variable('var16').set('lambdas2', '3.13334000e-02[1/s]');
model.variable('var16').set('lambdas3', '1.09676000e-01[1/s]');
model.variable('var16').set('lambdas4', '3.16575000e-01[1/s]');
model.variable('var16').set('lambdas5', '1.29384000e+00[1/s]');
model.variable('var16').set('lambdas6', '8.01455000e+00[1/s]');
model.variable('var16').set('nsf1', '0[1/cm]');
model.variable('var16').set('nsf2', '0[1/cm]');
model.variable('var16').set('nsf3', '0[1/cm]');
model.variable('var16').set('nsf4', '0[1/cm]');
model.variable('var16').set('nsf5', '0[1/cm]');
model.variable('var16').set('nsf6', '0[1/cm]');
model.variable('var16').set('nsf7', '0[1/cm]');
model.variable('var16').set('nsf8', '0[1/cm]');
model.variable('var16').set('diff21', '(1.72294762e+00 +( log(T_fuel) [1/K]*( -1.29723867e-01 )) +( T_flibe [1/K]*( 3.13309461e-04 )) ) [cm]');
model.variable('var16').set('diff22', '(8.69505578e-01 +( log(T_fuel) [1/K]*( -3.53730606e-02 )) +( T_flibe [1/K]*( 3.69119319e-05 )) ) [cm]');
model.variable('var16').set('diff23', '(2.38535194e+00 +( log(T_fuel) [1/K]*( -3.79024722e-01 )) +( T_flibe [1/K]*( 7.66280621e-04 )) ) [cm]');
model.variable('var16').set('diff24', '(2.42520083e+00 +( log(T_fuel) [1/K]*( -3.89227804e-01 )) +( T_flibe [1/K]*( 7.95985539e-04 )) ) [cm]');
model.variable('var16').set('diff25', '(2.44572255e+00 +( log(T_fuel) [1/K]*( -3.94083472e-01 )) +( T_flibe [1/K]*( 8.04408472e-04 )) ) [cm]');
model.variable('var16').set('diff26', '(2.43600860e+00 +( log(T_fuel) [1/K]*( -3.93362688e-01 )) +( T_flibe [1/K]*( 8.03434155e-04 )) ) [cm]');
model.variable('var16').set('diff27', '(2.41803009e+00 +( log(T_fuel) [1/K]*( -3.91638909e-01 )) +( T_flibe [1/K]*( 7.97027192e-04 )) ) [cm]');
model.variable('var16').set('diff28', '(2.27806725e+00 +( log(T_fuel) [1/K]*( -3.67877172e-01 )) +( T_flibe [1/K]*( 7.34951530e-04 )) ) [cm]');
model.variable('var16').set('rem1', '(5.13633203e-02 +( log(T_fuel) [1/K]*( -5.04069185e-04 )) +( T_flibe [1/K]*( 4.21915040e-06 )) ) [1/cm]');
model.variable('var16').set('rem2', '(1.51511475e-02 +( log(T_fuel) [1/K]*( -1.16286016e-03 )) +( T_flibe [1/K]*( 8.69904896e-06 )) ) [1/cm]');
model.variable('var16').set('rem3', '(-2.44706124e-02 +( log(T_fuel) [1/K]*( 6.78436022e-03 )) +( T_flibe [1/K]*( -8.75126496e-06 )) ) [1/cm]');
model.variable('var16').set('rem4', '(-4.87837542e-02 +( log(T_fuel) [1/K]*( 1.48298658e-02 )) +( T_flibe [1/K]*( -2.36317416e-05 )) ) [1/cm]');
model.variable('var16').set('rem5', '(-3.54121444e-01 +( log(T_fuel) [1/K]*( 8.97565773e-02 )) +( T_flibe [1/K]*( -1.48205795e-04 )) ) [1/cm]');
model.variable('var16').set('rem6', '(-1.74725773e-01 +( log(T_fuel) [1/K]*( 5.97915549e-02 )) +( T_flibe [1/K]*( -1.21664110e-04 )) ) [1/cm]');
model.variable('var16').set('rem7', '(-2.32269236e-01 +( log(T_fuel) [1/K]*( 7.61695276e-02 )) +( T_flibe [1/K]*( -1.62673336e-04 )) ) [1/cm]');
model.variable('var16').set('rem8', '(-4.08715474e-01 +( log(T_fuel) [1/K]*( 1.32078300e-01 )) +( T_flibe [1/K]*( -2.91812288e-04 )) ) [1/cm]');
model.variable('var16').set('scat11', '(4.42740466e-02 +( log(T_fuel) [1/K]*( 3.07973241e-02 )) +( T_flibe [1/K]*( -7.73333600e-05 )) ) [1/cm]');
model.variable('var16').set('scat21', '0[1/cm]');
model.variable('var16').set('scat31', '0[1/cm]');
model.variable('var16').set('scat41', '0[1/cm]');
model.variable('var16').set('scat51', '0[1/cm]');
model.variable('var16').set('scat61', '0[1/cm]');
model.variable('var16').set('scat71', '0[1/cm]');
model.variable('var16').set('scat81', '0[1/cm]');
model.variable('var16').set('scat12', '(5.03019560e-02 +( log(T_fuel) [1/K]*( -5.25043418e-04 )) +( T_flibe [1/K]*( 3.85139360e-06 )) ) [1/cm]');
model.variable('var16').set('scat22', '(2.53476397e-01 +( log(T_fuel) [1/K]*( 2.28285276e-02 )) +( T_flibe [1/K]*( -3.51159920e-05 )) ) [1/cm]');
model.variable('var16').set('scat32', '0[1/cm]');
model.variable('var16').set('scat42', '0[1/cm]');
model.variable('var16').set('scat52', '0[1/cm]');
model.variable('var16').set('scat62', '0[1/cm]');
model.variable('var16').set('scat72', '0[1/cm]');
model.variable('var16').set('scat82', '0[1/cm]');
model.variable('var16').set('scat13', '(-6.89274847e-05 +( log(T_fuel) [1/K]*( 6.85664524e-06 )) +( T_flibe [1/K]*( 5.08671143e-08 )) ) [1/cm]');
model.variable('var16').set('scat23', '(1.56215206e-02 +( log(T_fuel) [1/K]*( -1.34525090e-03 )) +( T_flibe [1/K]*( 9.25129904e-06 )) ) [1/cm]');
model.variable('var16').set('scat33', '(-9.04521431e-01 +( log(T_fuel) [1/K]*( 3.09288985e-01 )) +( T_flibe [1/K]*( -6.65848672e-04 )) ) [1/cm]');
model.variable('var16').set('scat43', '0[1/cm]');
model.variable('var16').set('scat53', '0[1/cm]');
model.variable('var16').set('scat63', '0[1/cm]');
model.variable('var16').set('scat73', '0[1/cm]');
model.variable('var16').set('scat83', '0[1/cm]');
model.variable('var16').set('scat14', '(8.78299665e-09 +( log(T_fuel) [1/K]*( -1.27202064e-09 )) +( T_flibe [1/K]*( -9.28473882e-28 )) ) [1/cm]');
model.variable('var16').set('scat24', '(1.32187044e-07 +( log(T_fuel) [1/K]*( -1.86695979e-08 )) +( T_flibe [1/K]*( -1.07826203e-27 )) ) [1/cm]');
model.variable('var16').set('scat34', '(-1.48138733e-02 +( log(T_fuel) [1/K]*( 4.24244943e-03 )) +( T_flibe [1/K]*( -2.99322608e-06 )) ) [1/cm]');
model.variable('var16').set('scat44', '(-8.95910016e-01 +( log(T_fuel) [1/K]*( 3.11415173e-01 )) +( T_flibe [1/K]*( -6.96235456e-04 )) ) [1/cm]');
model.variable('var16').set('scat54', '(5.07659648e-05 +( log(T_fuel) [1/K]*( 7.22536633e-05 )) +( T_flibe [1/K]*( -3.14993459e-07 )) ) [1/cm]');
model.variable('var16').set('scat64', '0[1/cm]');
model.variable('var16').set('scat74', '0[1/cm]');
model.variable('var16').set('scat84', '0[1/cm]');
model.variable('var16').set('scat15', '(1.74360770e-08 +( log(T_fuel) [1/K]*( -2.52522581e-09 )) +( T_flibe [1/K]*( -1.86019163e-27 )) ) [1/cm]');
model.variable('var16').set('scat25', '(3.58885384e-09 +( log(T_fuel) [1/K]*( -4.88382060e-10 )) +( T_flibe [1/K]*( -5.80635980e-28 )) ) [1/cm]');
model.variable('var16').set('scat35', '0[1/cm]');
model.variable('var16').set('scat45', '(-2.26473787e-02 +( log(T_fuel) [1/K]*( 7.94637135e-03 )) +( T_flibe [1/K]*( -8.06312640e-06 )) ) [1/cm]');
model.variable('var16').set('scat55', '(-6.48244672e-01 +( log(T_fuel) [1/K]*( 2.51607916e-01 )) +( T_flibe [1/K]*( -6.05449888e-04 )) ) [1/cm]');
model.variable('var16').set('scat65', '(-9.49883913e-03 +( log(T_fuel) [1/K]*( 4.00476533e-03 )) +( T_flibe [1/K]*( -7.39217032e-06 )) ) [1/cm]');
model.variable('var16').set('scat75', '(-1.87657638e-04 +( log(T_fuel) [1/K]*( 3.88787476e-05 )) +( T_flibe [1/K]*( -1.07563008e-08 )) ) [1/cm]');
model.variable('var16').set('scat85', '(1.65666793e-08 +( log(T_fuel) [1/K]*( -1.81970398e-07 )) +( T_flibe [1/K]*( 1.47795680e-09 )) ) [1/cm]');
model.variable('var16').set('scat16', '0[1/cm]');
model.variable('var16').set('scat26', '0[1/cm]');
model.variable('var16').set('scat36', '0[1/cm]');
model.variable('var16').set('scat46', '0[1/cm]');
model.variable('var16').set('scat56', '(-2.78113617e-01 +( log(T_fuel) [1/K]*( 6.92055236e-02 )) +( T_flibe [1/K]*( -1.00591830e-04 )) ) [1/cm]');
model.variable('var16').set('scat66', '(-8.64599525e-01 +( log(T_fuel) [1/K]*( 2.92589495e-01 )) +( T_flibe [1/K]*( -6.59326064e-04 )) ) [1/cm]');
model.variable('var16').set('scat76', '(-6.40867473e-02 +( log(T_fuel) [1/K]*( 2.32405235e-02 )) +( T_flibe [1/K]*( -4.02763480e-05 )) ) [1/cm]');
model.variable('var16').set('scat86', '(-1.00187440e-02 +( log(T_fuel) [1/K]*( 2.26672317e-03 )) +( T_flibe [1/K]*( -1.29827461e-06 )) ) [1/cm]');
model.variable('var16').set('scat17', '0[1/cm]');
model.variable('var16').set('scat27', '0[1/cm]');
model.variable('var16').set('scat37', '0[1/cm]');
model.variable('var16').set('scat47', '0[1/cm]');
model.variable('var16').set('scat57', '(-1.23557574e-03 +( log(T_fuel) [1/K]*( 2.87743808e-04 )) +( T_flibe [1/K]*( -6.11864160e-08 )) ) [1/cm]');
model.variable('var16').set('scat67', '(-4.96237013e-02 +( log(T_fuel) [1/K]*( 2.39236432e-02 )) +( T_flibe [1/K]*( -3.88961864e-05 )) ) [1/cm]');
model.variable('var16').set('scat77', '(-8.77387588e-01 +( log(T_fuel) [1/K]*( 2.95870260e-01 )) +( T_flibe [1/K]*( -6.61724584e-04 )) ) [1/cm]');
model.variable('var16').set('scat87', '(-6.74529873e-02 +( log(T_fuel) [1/K]*( 3.90811370e-02 )) +( T_flibe [1/K]*( -7.42150400e-05 )) ) [1/cm]');
model.variable('var16').set('scat18', '0[1/cm]');
model.variable('var16').set('scat28', '0[1/cm]');
model.variable('var16').set('scat38', '0[1/cm]');
model.variable('var16').set('scat48', '0[1/cm]');
model.variable('var16').set('scat58', '(-1.88215221e-06 +( log(T_fuel) [1/K]*( -4.46010654e-07 )) +( T_flibe [1/K]*( 5.94323976e-09 )) ) [1/cm]');
model.variable('var16').set('scat68', '(-3.25942377e-03 +( log(T_fuel) [1/K]*( 8.43698960e-04 )) +( T_flibe [1/K]*( -6.23348157e-07 )) ) [1/cm]');
model.variable('var16').set('scat78', '(9.17195923e-03 +( log(T_fuel) [1/K]*( 4.13251941e-03 )) +( T_flibe [1/K]*( -5.39078960e-06 )) ) [1/cm]');
model.variable('var16').set('scat88', '(-8.53023967e-01 +( log(T_fuel) [1/K]*( 2.84055857e-01 )) +( T_flibe [1/K]*( -6.24991360e-04 )) ) [1/cm]');
model.variable('var16').set('tot1', '(9.56373488e-02 +( log(T_fuel) [1/K]*( 3.02933917e-02 )) +( T_flibe [1/K]*( -7.31150880e-05 )) ) [1/cm]');
model.variable('var16').set('tot2', '(2.68630273e-01 +( log(T_fuel) [1/K]*( 2.16653679e-02 )) +( T_flibe [1/K]*( -2.64173920e-05 )) ) [1/cm]');
model.variable('var16').set('tot3', '(-9.28994855e-01 +( log(T_fuel) [1/K]*( 3.16073780e-01 )) +( T_flibe [1/K]*( -6.74599976e-04 )) ) [1/cm]');
model.variable('var16').set('tot4', '(-9.44696114e-01 +( log(T_fuel) [1/K]*( 3.26245411e-01 )) +( T_flibe [1/K]*( -7.19867344e-04 )) ) [1/cm]');
model.variable('var16').set('tot5', '(-1.00236883e+00 +( log(T_fuel) [1/K]*( 3.41364729e-01 )) +( T_flibe [1/K]*( -7.53654512e-04 )) ) [1/cm]');
model.variable('var16').set('tot6', '(-1.03932531e+00 +( log(T_fuel) [1/K]*( 3.52381009e-01 )) +( T_flibe [1/K]*( -7.80989832e-04 )) ) [1/cm]');
model.variable('var16').set('tot7', '(-1.10965439e+00 +( log(T_fuel) [1/K]*( 3.72039290e-01 )) +( T_flibe [1/K]*( -8.24396944e-04 )) ) [1/cm]');
model.variable('var16').set('tot8', '(-1.26175040e+00 +( log(T_fuel) [1/K]*( 4.16136069e-01 )) +( T_flibe [1/K]*( -9.16805112e-04 )) ) [1/cm]');
model.variable('var16').selection.geom('geom1', 3);
model.variable('var16').selection.set([9]);
model.variable.create('var18');
model.variable('var18').model('mod1');
model.variable('var18').set('Pdensity', 'kappa1*fiss1*Flux1+kappa2*fiss2*Flux2+kappa3*fiss3*Flux3+kappa4*fiss4*Flux4+kappa5*fiss5*Flux5+kappa6*fiss6*Flux6+kappa7*fiss7*Flux7+kappa8*fiss8*Flux8', 'power density');
model.variable('var18').set('PdensityN', 'Pdensity*Pop/Pint', 'power density normalized to Pop');
model.variable('var18').set('Pint', 'intop1(Pdensity)', 'integrated total core power');
model.variable('var18').set('PintN', 'intop1(PdensityN)', 'integrated total core power normalized to Pop, should be equal to Pop');
model.variable('var18').selection.geom('geom1', 3);
model.variable('var18').selection.set([1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20]);
model.variable.create('var22');
model.variable('var22').model('mod1');
model.variable('var22').set('sumDelayedN', 'lambdas1*Conc1+lambdas2*Conc2+lambdas3*Conc3+lambdas4*Conc4+lambdas5*Conc5+lambdas6*Conc6', 'sum of lambda*C_i, for diffusion equation');
model.variable('var22').set('sumN', 'nsf1*Flux1+nsf2*Flux2+nsf3*Flux3+nsf4*Flux4+nsf5*Flux5+nsf6*Flux6+nsf7*Flux7+nsf8*Flux8', 'sum of nuSigmafPhi_g, for delayed neutrons equations');
model.variable('var22').selection.geom('geom1', 3);
model.variable('var22').selection.set([1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20]);

model.material.create('mat1', 'Common', 'mod1');

model.material('mat1').selection.set([6 7 8 9 11]);

model.cpl.create('intop1', 'Integration', 'geom1');
model.cpl.create('aveop1', 'Average', 'geom1');
model.cpl('intop1').selection.set([9]);
model.cpl('aveop1').selection.set([9]);

model.physics.create('br', 'Brinkman', 'geom1');
model.physics('br').selection.set([6 7 8 9 11]);
model.physics('br').feature('fmp1').create('fd1', 'Forchheimer', 3);
model.physics('br').feature('fmp1').feature('fd1').selection.set([6 7 8 9 11]);
model.physics('br').create('out1', 'Outlet', 2);
model.physics('br').feature('out1').selection.set([35 36 41 42 140 143 204 211]);
model.physics('br').create('inl2', 'Inlet', 2);
model.physics('br').feature('inl2').selection.set([93 94 169 181]);
model.physics('br').create('inl3', 'InletBoundary', 2);
model.physics('br').feature('inl3').selection.set([45 64 69 70 154 157 190 193]);
model.physics.create('ht', 'HeatTransferInFluids', 'geom1');
model.physics('ht').field('temperature').field('T_flibe');
model.physics('ht').selection.set([8 9]);
model.physics('ht').create('temp1', 'TemperatureBoundary', 2);
model.physics('ht').feature('temp1').selection.set([9 10 17 18 19 20 27 28 29 32 34 35]);
model.physics('ht').create('hs1', 'HeatSource', 3);
model.physics('ht').feature('hs1').selection.set([9]);
model.physics('ht').create('hs2', 'HeatSource', 3);
model.physics('ht').feature('hs2').selection.set([9]);
model.physics('ht').create('ofl1', 'ConvectiveOutflow', 2);
model.physics('ht').feature('ofl1').selection.set([15 16 23 24 43 44 48 49]);
model.physics.create('ht3', 'HeatTransferInFluids', 'geom1');
model.physics('ht3').identifier('ht3');
model.physics('ht3').field('temperature').field('T_fuel');
model.physics('ht3').selection.set([9]);
model.physics('ht3').create('solid1', 'SolidHeatTransferModel', 3);
model.physics('ht3').feature('solid1').selection.set([9]);
model.physics('ht3').create('hs1', 'HeatSource', 3);
model.physics('ht3').feature('hs1').selection.set([9]);
model.physics('ht3').create('hs2', 'HeatSource', 3);
model.physics('ht3').feature('hs2').selection.set([9]);
model.physics('ht3').create('hs3', 'HeatSource', 3);
model.physics('ht3').feature('hs3').selection.set([9]);
model.physics('ht3').create('temp1', 'TemperatureBoundary', 2);
model.physics('ht3').feature('temp1').selection.set([4 5 9 10 13]);
model.physics.create('neutrondiffusion', 'CoefficientFormPDE', 'geom1');
model.physics('neutrondiffusion').identifier('neutrondiffusion');
model.physics('neutrondiffusion').field('dimensionless').field('Flux');
model.physics('neutrondiffusion').field('dimensionless').component({'Flux1' 'Flux2' 'Flux3' 'Flux4' 'Flux5' 'Flux6' 'Flux7' 'Flux8' 'Conc1' 'Conc2'  ...
'Conc3' 'Conc4' 'Conc5' 'Conc6'});
model.physics('neutrondiffusion').create('dir1', 'DirichletBoundary', 2);
model.physics('neutrondiffusion').feature('dir1').selection.set([1 2 3 4 5 6 9 10 11 12 15 16 17 18 21 22 23 24 33 34 61 62 63 64 67 68 69 70 75 76 79 80 97 98 99 100 105 106 109 110 117 118 121 122 123 124 125 127 128 130 131 133 134 139 153 154 156 157 160 162 171 172 175 176 178 179 190 192 193 197 199 203 215 217 218 220 221 223 224 225 228 229 232 233 241 242 243 244]);
model.physics('neutrondiffusion').create('flux1', 'FluxBoundary', 2);

model.result.table.create('tbl1', 'Table');

model.probe.create('dom1', 'Domain');
model.probe.create('dom2', 'Domain');
model.probe.create('dom3', 'Domain');
model.probe.create('dom4', 'Domain');
model.probe.create('dom5', 'Domain');
model.probe('dom1').model('mod1');
model.probe('dom2').model('mod1');
model.probe('dom2').selection.set([9]);
model.probe('dom3').model('mod1');
model.probe('dom3').selection.set([9]);
model.probe('dom4').model('mod1');
model.probe('dom4').selection.set([9]);
model.probe('dom5').model('mod1');
model.probe('dom5').selection.set([9]);

model.variable('var4').label('fuel properties');
model.variable('var_xs_inlet').label('xs_inlet');
model.variable('var_xs_outlet_high').label('xs_outlet_high');
model.variable('var_xs_outlet_low').label('xs_outlet_low');
model.variable('var_xs_CR').label('xs_CR');
model.variable('var_xs_Blanket').label('xs_Blanket');
model.variable('var_xs_ORCC').label('xs_ORCC');
model.variable('var_xs_OR').label('xs_OR');
model.variable('var_xs_CB').label('xs_CB');
model.variable('var_xs_DC').label('xs_DC');
model.variable('var_xs_VS').label('xs_VS');
model.variable('var_xs_CRCC1').label('xs_CRCC1');
model.variable('var_xs_CRCC2').label('xs_CRCC2');
model.variable('var_xs_CRCC3').label('xs_CRCC3');
model.variable('var_xs_CRCC4').label('xs_CRCC4');
model.variable('var_xs_CRCC5').label('xs_CRCC5');
model.variable('var_xs_CRCC6').label('xs_CRCC6');
model.variable('var_xs_CRCC7').label('xs_CRCC7');
model.variable('var_xs_CRCC8_1').label('xs_CRCC8_1');
model.variable('var_xs_CRCC8_2').label('xs_CRCC8_2');
model.variable('var16').label('XS_pb');
model.variable('var18').label('power');
model.variable('var22').label('delayed');

model.material('mat1').label('Salt-with porosity and permeability');
model.material('mat1').propertyGroup('def').func.label('Functions');
model.material('mat1').propertyGroup('def').set('ratioofspecificheat', '1');
model.material('mat1').propertyGroup('def').set('dynamicviscosity', 'mu_flibe(T_flibe)');
model.material('mat1').propertyGroup('def').set('hydraulicpermeability', {'Kbr' '0' '0' '0' 'Kbr' '0' '0' '0' 'Kbr'});
model.material('mat1').propertyGroup('def').set('porosity', 'ep');
model.material('mat1').propertyGroup('def').set('thermalconductivity', {'1.1' '0' '0' '0' '1.1' '0' '0' '0' '1.1'});
model.material('mat1').propertyGroup('def').set('density', 'rho_flibe(T_flibe)');
model.material('mat1').propertyGroup('def').set('heatcapacity', '2386');



model.cpl('intop1').label('Integration 1a');

model.physics('br').feature('fmp1').feature('fd1').set('betaF', 'bF');

model.physics('br').feature('init1').set('u_init', {'0'; '0'; 'vel_in'});


;
model.physics('br').feature('inl2').label('Inlet 1');
model.physics('br').feature('inl3').set('BoundaryCondition', 'MassFlow');
model.physics('br').feature('inl3').set('mfr', 'mL*bottomInletFraction');
model.physics('br').feature('inl3').label('Inlet 2');
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
model.physics('ht').feature('fluid1').set('minput_velocity', {'0'; 'v_inlet'; '0'});
model.physics('ht').feature('fluid1').set('minput_strainreferencetemperature', '0');
model.physics('ht').feature('fluid1').label('Fluid');
model.physics('ht').feature('init1').set('Tinit', 'T0_flibe');
model.physics('ht').feature('init1').label('Initial Temperature');
model.physics('ht').feature('ins1').label('Thermal Insulation');
model.physics('ht').feature('temp1').set('T0', 'T_inlet');
model.physics('ht').feature('temp1').label('Inlet Temperature');
model.physics('ht').feature('hs1').set('Q0', 'h_conv*pb_area/fuel_v*T_fuel');
model.physics('ht').feature('hs1').label('heat transfer from fuel-cst term');
model.physics('ht').feature('hs2').set('heatSourceType', 'LinearSource');
model.physics('ht').feature('hs2').set('qs', '-h_conv*pb_area/fuel_v');
model.physics('ht').feature('hs2').label('heat transfer from fuel - linear term');
model.physics('ht').feature('ofl1').label('Outflow');
model.physics('ht3').label('Heat Transfer in Fuel Pebble');
model.physics('ht3').comments('fuel temperature');
model.physics('ht3').prop('ConsistentStabilization').set('glim', '(0.01[K])/ht3.helem');
model.physics('ht3').feature('fluid1').label('overridden');
model.physics('ht3').feature('init1').set('Tinit', 'T0_fuel');
model.physics('ht3').feature('solid1').set('k', {'k_fuel'; '0'; '0'; '0'; 'k_fuel'; '0'; '0'; '0'; 'k_fuel'});
model.physics('ht3').feature('solid1').set('rho', 'rho_fuel*(1-porosity)');
model.physics('ht3').feature('solid1').set('Cp', 'cp_fuel');
model.physics('ht3').feature('solid1').label('Heat Transfer in Solids(smeared fuel pebbles)');
model.physics('ht3').feature('hs1').set('P0', '1E7');
model.physics('ht3').feature('hs1').set('Q0', 'Pdensity*Pop/Pint');
model.physics('ht3').feature('hs1').label('Nuclear heat generation');
model.physics('ht3').feature('hs2').set('heatSourceType', 'LinearSource');
model.physics('ht3').feature('hs2').set('qs', '-h_conv*pb_area/fuel_v');
model.physics('ht3').feature('hs2').label('heat tranfer to flibe - linear term');
model.physics('ht3').feature('hs3').set('Q0', 'h_conv*pb_area/fuel_v*T_flibe');
model.physics('ht3').feature('hs3').label('heat transfer to flibe - cst term');
model.physics('neutrondiffusion').prop('Units').set('SourceTermQuantity', 'productionrate');
model.physics('neutrondiffusion').prop('Units').set('DependentVariableQuantity', 'particleflux');
model.physics('neutrondiffusion').feature('cfeq1').set('c', {'diff11' '0' '0' '0' 'diff11' '0' '0' '0' 'diff11';  ...
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
model.physics('neutrondiffusion').feature('cfeq1').set('a', {'(rem1-(1-beta1)*chip1*nsf1*lambda)';  ...
'(-scat12-(1-beta1)*chip2*nsf1*lambda)';  ...
'(-scat13-(1-beta1)*chip3*nsf1*lambda)';  ...
'(-scat14-(1-beta1)*chip4*nsf1*lambda)';  ...
'(-scat15-(1-beta1)*chip5*nsf1*lambda)';  ...
'(-scat16-(1-beta1)*chip6*nsf1*lambda)';  ...
'(-scat17-(1-beta1)*chip7*nsf1*lambda)';  ...
'(-scat18-(1-beta1)*chip8*nsf1*lambda)';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'(-scat21-(1-beta1)*chip1*nsf2*lambda)';  ...
'(rem2-(1-beta1)*chip2*nsf2*lambda)';  ...
'(-scat23-(1-beta1)*chip3*nsf2*lambda)';  ...
'(-scat24-(1-beta1)*chip4*nsf2*lambda)';  ...
'(-scat25-(1-beta1)*chip5*nsf2*lambda)';  ...
'(-scat26-(1-beta1)*chip6*nsf2*lambda)';  ...
'(-scat27-(1-beta1)*chip7*nsf2*lambda)';  ...
'(-scat28-(1-beta1)*chip8*nsf2*lambda)';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'(-scat31-(1-beta1)*chip1*nsf3*lambda)';  ...
'(-scat32-(1-beta1)*chip2*nsf3*lambda)';  ...
'(rem3-(1-beta1)*chip3*nsf3*lambda)';  ...
'(-scat34-(1-beta1)*chip4*nsf3*lambda)';  ...
'(-scat35-(1-beta1)*chip5*nsf3*lambda)';  ...
'(-scat36-(1-beta1)*chip6*nsf3*lambda)';  ...
'(-scat37-(1-beta1)*chip7*nsf3*lambda)';  ...
'(-scat38-(1-beta1)*chip8*nsf3*lambda)';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'(-scat41-(1-beta1)*chip1*nsf4*lambda)';  ...
'(-scat42-(1-beta1)*chip2*nsf4*lambda)';  ...
'(-scat43-(1-beta1)*chip3*nsf4*lambda)';  ...
'(rem4-(1-beta1)*chip4*nsf4*lambda)';  ...
'(-scat45-(1-beta1)*chip5*nsf4*lambda)';  ...
'(-scat46-(1-beta1)*chip6*nsf4*lambda)';  ...
'(-scat47-(1-beta1)*chip7*nsf4*lambda)';  ...
'(-scat48-(1-beta1)*chip8*nsf4*lambda)';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'(-scat51-(1-beta1)*chip1*nsf5*lambda)';  ...
'(-scat52-(1-beta1)*chip2*nsf5*lambda)';  ...
'(-scat53-(1-beta1)*chip3*nsf5*lambda)';  ...
'(-scat54-(1-beta1)*chip4*nsf5*lambda)';  ...
'(rem5-(1-beta1)*chip5*nsf5*lambda)';  ...
'(-scat56-(1-beta1)*chip6*nsf5*lambda)';  ...
'(-scat57-(1-beta1)*chip7*nsf5*lambda)';  ...
'(-scat58-(1-beta1)*chip8*nsf5*lambda)';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'(-scat61-(1-beta1)*chip1*nsf6*lambda)';  ...
'(-scat62-(1-beta1)*chip2*nsf6*lambda)';  ...
'(-scat63-(1-beta1)*chip3*nsf6*lambda)';  ...
'(-scat64-(1-beta1)*chip4*nsf6*lambda)';  ...
'(-scat65-(1-beta1)*chip5*nsf6*lambda)';  ...
'(rem6-(1-beta1)*chip6*nsf6*lambda)';  ...
'(-scat67-(1-beta1)*chip7*nsf6*lambda)';  ...
'(-scat68-(1-beta1)*chip8*nsf6*lambda)';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'(-scat71-(1-beta1)*chip1*nsf7*lambda)';  ...
'(-scat72-(1-beta1)*chip2*nsf7*lambda)';  ...
'(-scat73-(1-beta1)*chip3*nsf7*lambda)';  ...
'(-scat74-(1-beta1)*chip4*nsf7*lambda)';  ...
'(-scat75-(1-beta1)*chip5*nsf7*lambda)';  ...
'(-scat76-(1-beta1)*chip6*nsf7*lambda)';  ...
'(rem7-(1-beta1)*chip7*nsf7*lambda)';  ...
'(-scat78-(1-beta1)*chip8*nsf7*lambda)';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'0';  ...
'(-scat81-(1-beta1)*chip1*nsf8*lambda)';  ...
'(-scat82-(1-beta1)*chip2*nsf8*lambda)';  ...
'(-scat83-(1-beta1)*chip3*nsf8*lambda)';  ...
'(-scat84-(1-beta1)*chip4*nsf8*lambda)';  ...
'(-scat85-(1-beta1)*chip5*nsf8*lambda)';  ...
'(-scat86-(1-beta1)*chip6*nsf8*lambda)';  ...
'(-scat87-(1-beta1)*chip7*nsf8*lambda)';  ...
'(rem8-(1-beta1)*chip8*nsf8*lambda)';  ...
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
'lambdas1';  ...
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
'lambdas2';  ...
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
'lambdas3';  ...
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
'lambdas4';  ...
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
'lambdas5';  ...
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
'lambdas6'});
model.physics('neutrondiffusion').feature('cfeq1').set('f', {'chid1*lambda*sumDelayedN';  ...
'chid2*lambda*sumDelayedN';  ...
'chid3*lambda*sumDelayedN';  ...
'chid4*lambda*sumDelayedN';  ...
'chid5*lambda*sumDelayedN';  ...
'chid6*lambda*sumDelayedN';  ...
'chid7*lambda*sumDelayedN';  ...
'chid8*lambda*sumDelayedN';  ...
'betas1*sumN';  ...
'betas2*sumN';  ...
'betas3*sumN';  ...
'betas4*sumN';  ...
'betas5*sumN';  ...
'betas6*sumN'});
model.physics('neutrondiffusion').feature('cfeq1').set('da', {'invV1*eigenMode';  ...
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
model.physics('neutrondiffusion').feature('init1').set('Flux1', '1');
model.physics('neutrondiffusion').feature('init1').set('Flux2', '1');
model.physics('neutrondiffusion').feature('init1').set('Flux3', '1');
model.physics('neutrondiffusion').feature('init1').set('Flux4', '1');
model.physics('neutrondiffusion').feature('init1').set('Flux5', '1');
model.physics('neutrondiffusion').feature('init1').set('Flux6', '1');
model.physics('neutrondiffusion').feature('init1').set('Flux7', '1');
model.physics('neutrondiffusion').feature('init1').set('Flux8', '1');
model.physics('neutrondiffusion').feature('init1').set('Conc1', '1');
model.physics('neutrondiffusion').feature('init1').set('Conc2', '1');
model.physics('neutrondiffusion').feature('init1').set('Conc3', '1');
model.physics('neutrondiffusion').feature('init1').set('Conc4', '1');
model.physics('neutrondiffusion').feature('init1').set('Conc5', '1');
model.physics('neutrondiffusion').feature('init1').set('Conc6', '1');

model.mesh('mesh1').run;

model.probe('dom1').label('Probe Pint');
model.probe('dom1').set('table', 'tbl1');
model.probe('dom1').set('descr', 'integrated total core power');
model.probe('dom1').set('window', 'window1');
model.probe('dom1').set('expr', 'Pint');
model.probe('dom1').set('unit', 'W*m');
model.probe('dom2').label('average_fuel_temp_probe');
model.probe('dom2').set('table', 'tbl1');
model.probe('dom2').set('descr', 'Temperature');
model.probe('dom2').set('window', 'window2');
model.probe('dom2').set('expr', 'T_fuel');
model.probe('dom2').set('unit', 'degC');
model.probe('dom3').label('average_flibe_temp_probe');
model.probe('dom3').set('table', 'tbl1');
model.probe('dom3').set('descr', 'Temperature');
model.probe('dom3').set('window', 'window2');
model.probe('dom3').set('expr', 'T_flibe');
model.probe('dom3').set('unit', 'degC');
model.probe('dom4').label('max fuel temp');
model.probe('dom4').set('table', 'tbl1');
model.probe('dom4').set('descr', 'Temperature');
model.probe('dom4').set('window', 'window3');
model.probe('dom4').set('expr', 'T_fuel');
model.probe('dom4').set('type', 'maximum');
model.probe('dom4').set('unit', 'degC');
model.probe('dom4').set('probename', 'T_fuel_max');
model.probe('dom5').label('max flibe temp');
model.probe('dom5').set('table', 'tbl1');
model.probe('dom5').set('descr', 'Temperature');
model.probe('dom5').set('window', 'window3');
model.probe('dom5').set('expr', 'T_flibe');
model.probe('dom5').set('type', 'maximum');
model.probe('dom5').set('unit', 'degC');
model.probe('dom5').set('probename', 'T_flibe_max');

model.physics('ht3').feature('solid1').set('k_mat', 'userdef');
model.physics('ht3').feature('solid1').set('rho_mat', 'userdef');
model.physics('ht3').feature('solid1').set('Cp_mat', 'userdef');

model.study.create('std2');
model.study('std2').create('eigv', 'Eigenvalue');
model.study('std2').feature('eigv').set('activate', {'ht' 'off' 'ht3' 'off' 'neutrondiffusion' 'on'});

model.sol.create('sol16');
model.sol('sol16').study('std2');
model.sol('sol16').attach('std2');
model.sol('sol16').create('st1', 'StudyStep');
model.sol('sol16').create('v1', 'Variables');
model.sol('sol16').create('e1', 'Eigenvalue');
model.sol('sol16').feature('e1').create('d1', 'Direct');
model.sol('sol16').feature('e1').create('i1', 'Iterative');

model.probe('dom1').genResult([]);
model.probe('dom2').genResult([]);
model.probe('dom3').genResult([]);
model.probe('dom4').genResult([]);
model.probe('dom5').genResult([]);

model.study('std2').label('Eigenvalue study');
model.study('std2').feature('eigv').set('eigwhich', 'sr');
model.study('std2').feature('eigv').set('neigsactive', true);
model.study('std2').feature('eigv').set('useinitsol', 'on');
model.study('std2').feature('eigv').set('shiftactive', true);
model.study('std2').feature('eigv').set('shift', '1');
model.study('std2').feature('eigv').set('neigs', '1');

model.sol('sol16').attach('std2');
model.sol('sol16').feature('e1').set('krylovdim', '5');
model.sol('sol16').feature('e1').set('maxeigit', '100');
model.sol('sol16').feature('e1').set('shift', '1');
model.sol('sol16').feature('e1').set('keeplog', true);
model.sol('sol16').feature('e1').set('neigs', '1');
model.sol('sol16').feature('e1').set('eigwhich', 'sr');
model.sol('sol16').feature('e1').feature('i1').set('maxlinit', '1000');
model.sol('sol16').feature('e1').feature('i1').feature('ilDef').set('prefun', 'spooles');

model.result.dataset.remove('dset2');
model.result.remove('pg1');
model.result.remove('pg2');
model.result.remove('pg3');

out = model;
