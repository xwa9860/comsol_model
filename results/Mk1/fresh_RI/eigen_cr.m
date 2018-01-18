function out = model
%
% eigen_cr.m
%
% Model exported on Jan 16 2018, 11:45 by COMSOL 5.3.1.180.

import com.comsol.model.*
import com.comsol.model.util.*

model = ModelUtil.create('Model');

model.modelPath('D:\diffusion_models\model\m_files\results\Mk1\fresh_RI');

model.label('eigen_cr.mph');

model.param.set('eigenMode', '0', 'binary value for NON engenvalue mode(value = 1 if not eigenvalue mode, value =0 if eigenvalue mode)');
model.param.set('plotNb', '110', 'tracks plot number, increment as new plot are added');
model.param.set('U', '0.000055[m/s]', 'upwards velocity');
model.param.set('Po', '0 [atm]', 'pressure');
model.param.set('Ochuteout', '0.8', 'defueling chute pressure multiplier');
model.param.set('T0_flibe', '650[degC]', 'inlet temperature');
model.param.set('T0_fuel', '800[degC]', 'initial temperature');
model.param.set('T_inlet', '600[degC]', 'nominal value is 600');
model.param.set('pb_area', 'pb_nb*4*(pb_diam/2)^2*pi', 'heat transfer area between flibe and pebbles');
model.param.set('pb_nb', '44000', 'number of pebbles in the core');
model.param.set('pb_v', 'pb_nb*4/3*(pb_diam/2)^3*pi', 'volume of fuel pebbles');
model.param.set('fuel_v', 'pb_v/0.6');
model.param.set('porosity', '0.4');
model.param.set('pb_diam', '3[cm]');
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
model.param.set('Pop', 'Pnominal');
model.param.set('Pnominal', '234*10^6[W]', 'Total nominal power');
model.param.set('h_CRCC1', '-286.9708');
model.param.set('h_CRCC2', '-286.9708');
model.param.set('h_CRCC3', '-286.9708');
model.param.set('h_CRCC4', '-286.9708');
model.param.set('h_CRCC5', '-286.9708');
model.param.set('h_CRCC6', '-286.9708');
model.param.set('h_CRCC7', '-286.9708');
model.param.set('h_CRCC8_1', '-286.9708');
model.param.set('h_CRCC8_2', '-286.9708');
model.param.set('lambda_critical', '0.8759947781389897', 'lambda_engeinvalue to get to criticality');

model.component.create('mod1', false);

model.component('mod1').geom.create('geom1', 3);

model.component('mod1').label('FHR');

model.component('mod1').defineLocalCoord(false);

model.result.table.create('tbl1', 'Table');
model.result.table.create('tbl2', 'Table');

model.func.create('an4', 'Analytic');
model.func.create('an6', 'Analytic');
model.func.create('str', 'Step');
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
model.func('str').set('smooth', 0);

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
model.component('mod1').geom('geom1').feature('wp1').geom.feature('pol2').set('table', [0.45 0.416; 0.7541 0.416; 0.7541 1.125; 1.05 1.805; 1.05 4.305; 0.8 4.9285; 0.8 5.7285; 0.71 5.7285; 0.71 4.9285; 0.35 4.305; 0.35 1.4482; 0.45 1.275]);
model.component('mod1').geom('geom1').feature('wp1').geom.create('r4', 'Rectangle');
model.component('mod1').geom('geom1').feature('wp1').geom.feature('r4').label('FuelA1');
model.component('mod1').geom('geom1').feature('wp1').geom.feature('r4').set('pos', [0.35 1.805]);
model.component('mod1').geom('geom1').feature('wp1').geom.feature('r4').set('size', {'0.461-0.35' '4.305-1.805'});
model.component('mod1').geom('geom1').feature('wp1').geom.create('r5', 'Rectangle');
model.component('mod1').geom('geom1').feature('wp1').geom.feature('r5').label('FuelA2');
model.component('mod1').geom('geom1').feature('wp1').geom.feature('r5').set('pos', [0.461 1.805]);
model.component('mod1').geom('geom1').feature('wp1').geom.feature('r5').set('size', {'0.583-0.461' '4.305-1.805'});
model.component('mod1').geom('geom1').feature('wp1').geom.create('r6', 'Rectangle');
model.component('mod1').geom('geom1').feature('wp1').geom.feature('r6').label('FuelA3');
model.component('mod1').geom('geom1').feature('wp1').geom.feature('r6').set('pos', [0.583 1.805]);
model.component('mod1').geom('geom1').feature('wp1').geom.feature('r6').set('size', {'0.96-0.583' '4.305-1.805'});
model.component('mod1').geom('geom1').feature('wp1').geom.create('r7', 'Rectangle');
model.component('mod1').geom('geom1').feature('wp1').geom.feature('r7').label('FuelA4');
model.component('mod1').geom('geom1').feature('wp1').geom.feature('r7').set('pos', {'.96' '1.805'});
model.component('mod1').geom('geom1').feature('wp1').geom.feature('r7').set('size', {'1.05-0.96' '4.305-1.805'});
model.component('mod1').geom('geom1').feature('wp1').geom.create('pol3', 'Polygon');
model.component('mod1').geom('geom1').feature('wp1').geom.feature('pol3').label('blanket');
model.component('mod1').geom('geom1').feature('wp1').geom.feature('pol3').set('source', 'table');
model.component('mod1').geom('geom1').feature('wp1').geom.feature('pol3').set('table', [0.7541 0.416; 0.8574 0.416; 1.25 1.805; 1.25 4.305; 0.89 4.9285; 0.89 5.7285; 0.8 5.7285; 0.8 4.9285; 1.05 4.305; 1.05 1.805; 0.7541 1.125; 0.7541 0.416; 0.45 0.416]);
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
model.component('mod1').geom('geom1').feature('wp1').geom.create('b1', 'BezierPolygon');
model.component('mod1').geom('geom1').feature('wp1').geom.feature('b1').set('p', [0.342 0.575 0.71 0.35; 4.3 4.58 4.9285 4.305]);
model.component('mod1').geom('geom1').feature('wp1').geom.feature('b1').set('degree', [2 1]);
model.component('mod1').geom('geom1').feature('wp1').geom.feature('b1').set('w', [1 1 1 1 1]);
model.component('mod1').geom('geom1').feature('wp1').geom.create('dif1', 'Difference');
model.component('mod1').geom('geom1').feature('wp1').geom.feature('dif1').set('selresult', true);
model.component('mod1').geom('geom1').feature('wp1').geom.feature('dif1').set('intbnd', false);
model.component('mod1').geom('geom1').feature('wp1').geom.feature('dif1').selection('input').set({'pol2'});
model.component('mod1').geom('geom1').feature('wp1').geom.feature('dif1').selection('input2').set({'b1'});
model.component('mod1').geom('geom1').feature('wp1').geom.create('b5', 'BezierPolygon');
model.component('mod1').geom('geom1').feature('wp1').geom.feature('b5').set('p', [0.342 0.575 0.71 0.35; 4.3 4.58 4.9285 4.305]);
model.component('mod1').geom('geom1').feature('wp1').geom.feature('b5').set('degree', [2 1]);
model.component('mod1').geom('geom1').feature('wp1').geom.feature('b5').set('w', [1 1 1 1 1]);
model.component('mod1').geom('geom1').feature('wp1').geom.create('uni1', 'Union');
model.component('mod1').geom('geom1').feature('wp1').geom.feature('uni1').set('selresult', true);
model.component('mod1').geom('geom1').feature('wp1').geom.feature('uni1').set('intbnd', false);
model.component('mod1').geom('geom1').feature('wp1').geom.feature('uni1').selection('input').set({'b5' 'pol1'});
model.component('mod1').geom('geom1').feature('wp1').geom.create('b3', 'BezierPolygon');
model.component('mod1').geom('geom1').feature('wp1').geom.feature('b3').set('p', [0.45 0.45 0.35 0.45; 1.2 1.275 1.4482 1.275]);
model.component('mod1').geom('geom1').feature('wp1').geom.feature('b3').set('degree', [2 1]);
model.component('mod1').geom('geom1').feature('wp1').geom.feature('b3').set('w', [1 1 1 1 1]);
model.component('mod1').geom('geom1').feature('wp1').geom.create('dif2', 'Difference');
model.component('mod1').geom('geom1').feature('wp1').geom.feature('dif2').set('intbnd', false);
model.component('mod1').geom('geom1').feature('wp1').geom.feature('dif2').selection('input').set({'uni1'});
model.component('mod1').geom('geom1').feature('wp1').geom.feature('dif2').selection('input2').set({'b3'});
model.component('mod1').geom('geom1').feature('wp1').geom.create('b4', 'BezierPolygon');
model.component('mod1').geom('geom1').feature('wp1').geom.feature('b4').set('p', [0.45 0.45 0.35 0.45; 1.2 1.275 1.4482 1.275]);
model.component('mod1').geom('geom1').feature('wp1').geom.feature('b4').set('degree', [2 1]);
model.component('mod1').geom('geom1').feature('wp1').geom.feature('b4').set('w', [1 1 1 1 1]);
model.component('mod1').geom('geom1').feature('wp1').geom.create('uni2', 'Union');
model.component('mod1').geom('geom1').feature('wp1').geom.feature('uni2').set('selresult', true);
model.component('mod1').geom('geom1').feature('wp1').geom.feature('uni2').set('selresultshow', 'all');
model.component('mod1').geom('geom1').feature('wp1').geom.feature('uni2').set('intbnd', false);
model.component('mod1').geom('geom1').feature('wp1').geom.feature('uni2').selection('input').set({'b4' 'dif1'});
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
model.component('mod1').variable('var3').set('Pr', 'muL*cpL/kL');
model.component('mod1').variable('var3').set('h_conv', '(2+1.1*(Pr^(1.0/3))*(Re^(3.0/5)))*kL/d', '(2+1.1*Pr^(1/3)*(rhoL*d*br.U/muL)^0.6)*kL/d');
model.component('mod1').variable('var3').set('Re', '(rhoL*d*br.U/muL)');
model.component('mod1').variable.create('var4');
model.component('mod1').variable('var4').set('rho_fuel', '1810[kg/m^3]', 'sinap ppt(Overview of TMSR-SF1 & SF0)');
model.component('mod1').variable('var4').set('k_fuel', '15[W/m/K]');
model.component('mod1').variable('var4').set('cp_fuel', '1744[J/kg/K]', 'graphite fuel heat capacity');
model.component('mod1').variable('var4').selection.geom('geom1', 3);
model.component('mod1').variable('var4').selection.set([7 8 9 10 12 13]);
model.component('mod1').variable.create('var_xsCRCC1');
model.component('mod1').variable('var_xsCRCC1').set('beta1', '(6.696930e-03*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*6.696930e-03 + str(h_CRCC1-z[1/m])*6.696930e-03) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*6.696930e-03 + str(h_CRCC1-z[1/m])*6.696930e-03) + 6.696930e-03*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC1').set('betas1', '(2.073830e-04*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*2.073830e-04 + str(h_CRCC1-z[1/m])*2.073830e-04) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*2.073830e-04 + str(h_CRCC1-z[1/m])*2.073830e-04) + 2.073830e-04*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC1').set('betas2', '(1.113340e-03*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*1.113340e-03 + str(h_CRCC1-z[1/m])*1.113340e-03) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*1.113340e-03 + str(h_CRCC1-z[1/m])*1.113340e-03) + 1.113340e-03*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC1').set('betas3', '(1.083350e-03*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*1.083350e-03 + str(h_CRCC1-z[1/m])*1.083350e-03) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*1.083350e-03 + str(h_CRCC1-z[1/m])*1.083350e-03) + 1.083350e-03*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC1').set('betas4', '(3.064820e-03*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*3.064820e-03 + str(h_CRCC1-z[1/m])*3.064820e-03) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*3.064820e-03 + str(h_CRCC1-z[1/m])*3.064820e-03) + 3.064820e-03*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC1').set('betas5', '(9.107700e-04*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*9.107700e-04 + str(h_CRCC1-z[1/m])*9.107700e-04) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*9.107700e-04 + str(h_CRCC1-z[1/m])*9.107700e-04) + 9.107700e-04*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC1').set('betas6', '(3.172650e-04*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*3.172650e-04 + str(h_CRCC1-z[1/m])*3.172650e-04) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*3.172650e-04 + str(h_CRCC1-z[1/m])*3.172650e-04) + 3.172650e-04*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC1').set('chid1', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*0.000000e+00 + str(h_CRCC1-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*0.000000e+00 + str(h_CRCC1-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC1').set('chid2', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*0.000000e+00 + str(h_CRCC1-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*0.000000e+00 + str(h_CRCC1-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC1').set('chid3', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*0.000000e+00 + str(h_CRCC1-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*0.000000e+00 + str(h_CRCC1-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC1').set('chid4', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*0.000000e+00 + str(h_CRCC1-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*0.000000e+00 + str(h_CRCC1-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC1').set('chid5', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*0.000000e+00 + str(h_CRCC1-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*0.000000e+00 + str(h_CRCC1-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC1').set('chid6', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*0.000000e+00 + str(h_CRCC1-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*0.000000e+00 + str(h_CRCC1-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC1').set('chid7', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*0.000000e+00 + str(h_CRCC1-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*0.000000e+00 + str(h_CRCC1-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC1').set('chid8', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*0.000000e+00 + str(h_CRCC1-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*0.000000e+00 + str(h_CRCC1-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC1').set('chip1', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*0.000000e+00 + str(h_CRCC1-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*0.000000e+00 + str(h_CRCC1-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC1').set('chip2', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*0.000000e+00 + str(h_CRCC1-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*0.000000e+00 + str(h_CRCC1-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC1').set('chip3', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*0.000000e+00 + str(h_CRCC1-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*0.000000e+00 + str(h_CRCC1-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC1').set('chip4', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*0.000000e+00 + str(h_CRCC1-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*0.000000e+00 + str(h_CRCC1-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC1').set('chip5', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*0.000000e+00 + str(h_CRCC1-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*0.000000e+00 + str(h_CRCC1-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC1').set('chip6', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*0.000000e+00 + str(h_CRCC1-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*0.000000e+00 + str(h_CRCC1-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC1').set('chip7', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*0.000000e+00 + str(h_CRCC1-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*0.000000e+00 + str(h_CRCC1-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC1').set('chip8', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*0.000000e+00 + str(h_CRCC1-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*0.000000e+00 + str(h_CRCC1-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC1').set('chit1', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*0.000000e+00 + str(h_CRCC1-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*0.000000e+00 + str(h_CRCC1-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC1').set('chit2', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*0.000000e+00 + str(h_CRCC1-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*0.000000e+00 + str(h_CRCC1-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC1').set('chit3', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*0.000000e+00 + str(h_CRCC1-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*0.000000e+00 + str(h_CRCC1-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC1').set('chit4', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*0.000000e+00 + str(h_CRCC1-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*0.000000e+00 + str(h_CRCC1-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC1').set('chit5', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*0.000000e+00 + str(h_CRCC1-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*0.000000e+00 + str(h_CRCC1-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC1').set('chit6', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*0.000000e+00 + str(h_CRCC1-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*0.000000e+00 + str(h_CRCC1-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC1').set('chit7', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*0.000000e+00 + str(h_CRCC1-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*0.000000e+00 + str(h_CRCC1-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC1').set('chit8', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*0.000000e+00 + str(h_CRCC1-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*0.000000e+00 + str(h_CRCC1-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC1').set('diff11', '(2.484840e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*2.339710e+00 + str(h_CRCC1-z[1/m])*2.200870e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*2.414630e+00 + str(h_CRCC1-z[1/m])*2.331510e+00) + 2.261660e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC1').set('diff12', '(1.107680e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*1.067740e+00 + str(h_CRCC1-z[1/m])*1.045820e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*1.131350e+00 + str(h_CRCC1-z[1/m])*1.037380e+00) + 1.038690e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC1').set('diff13', '(8.557780e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*9.958500e-01 + str(h_CRCC1-z[1/m])*8.464810e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*8.567050e-01 + str(h_CRCC1-z[1/m])*8.454370e-01) + 8.457890e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC1').set('diff14', '(8.532600e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*9.969800e-01 + str(h_CRCC1-z[1/m])*8.351450e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*8.527250e-01 + str(h_CRCC1-z[1/m])*8.339070e-01) + 8.356690e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC1').set('diff15', '(8.484360e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*9.934540e-01 + str(h_CRCC1-z[1/m])*8.327330e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*8.498900e-01 + str(h_CRCC1-z[1/m])*8.379880e-01) + 8.357400e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC1').set('diff16', '(8.393000e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*9.828500e-01 + str(h_CRCC1-z[1/m])*8.233360e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*8.397180e-01 + str(h_CRCC1-z[1/m])*8.261060e-01) + 8.248720e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC1').set('diff17', '(8.050840e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*9.492230e-01 + str(h_CRCC1-z[1/m])*7.948120e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*8.058330e-01 + str(h_CRCC1-z[1/m])*7.957680e-01) + 7.951570e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC1').set('diff18', '(7.194070e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*8.556820e-01 + str(h_CRCC1-z[1/m])*7.181650e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*7.196690e-01 + str(h_CRCC1-z[1/m])*7.235190e-01) + 7.174000e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC1').set('fiss1', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*0.000000e+00 + str(h_CRCC1-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*0.000000e+00 + str(h_CRCC1-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('fiss2', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*0.000000e+00 + str(h_CRCC1-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*0.000000e+00 + str(h_CRCC1-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('fiss3', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*0.000000e+00 + str(h_CRCC1-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*0.000000e+00 + str(h_CRCC1-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('fiss4', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*0.000000e+00 + str(h_CRCC1-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*0.000000e+00 + str(h_CRCC1-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('fiss5', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*0.000000e+00 + str(h_CRCC1-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*0.000000e+00 + str(h_CRCC1-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('fiss6', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*0.000000e+00 + str(h_CRCC1-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*0.000000e+00 + str(h_CRCC1-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('fiss7', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*0.000000e+00 + str(h_CRCC1-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*0.000000e+00 + str(h_CRCC1-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('fiss8', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*0.000000e+00 + str(h_CRCC1-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*0.000000e+00 + str(h_CRCC1-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('invV1', '(4.786430e-10*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*4.837380e-10 + str(h_CRCC1-z[1/m])*4.832550e-10) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*4.833600e-10 + str(h_CRCC1-z[1/m])*4.826690e-10) + 4.811490e-10*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC1').set('invV2', '(2.082440e-09*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*2.181670e-09 + str(h_CRCC1-z[1/m])*2.001170e-09) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*1.982020e-09 + str(h_CRCC1-z[1/m])*2.018060e-09) + 2.020330e-09*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC1').set('invV3', '(3.867390e-08*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*3.692540e-08 + str(h_CRCC1-z[1/m])*2.916520e-08) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*3.262790e-08 + str(h_CRCC1-z[1/m])*3.086990e-08) + 3.106400e-08*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC1').set('invV4', '(2.127600e-07*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*2.105600e-07 + str(h_CRCC1-z[1/m])*2.024270e-07) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*2.057070e-07 + str(h_CRCC1-z[1/m])*2.057540e-07) + 2.061540e-07*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC1').set('invV5', '(7.878220e-07*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*7.291550e-07 + str(h_CRCC1-z[1/m])*6.672700e-07) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*6.879420e-07 + str(h_CRCC1-z[1/m])*6.749300e-07) + 6.944360e-07*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC1').set('invV6', '(1.383110e-06*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*1.382130e-06 + str(h_CRCC1-z[1/m])*1.348700e-06) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*1.365850e-06 + str(h_CRCC1-z[1/m])*1.359270e-06) + 1.369630e-06*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC1').set('invV7', '(2.170220e-06*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*2.173670e-06 + str(h_CRCC1-z[1/m])*2.149620e-06) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*2.161900e-06 + str(h_CRCC1-z[1/m])*2.157920e-06) + 2.164240e-06*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC1').set('invV8', '(4.160500e-06*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*4.188080e-06 + str(h_CRCC1-z[1/m])*4.142870e-06) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*4.150400e-06 + str(h_CRCC1-z[1/m])*4.162100e-06) + 4.165470e-06*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC1').set('kappa1', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*0.000000e+00 + str(h_CRCC1-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*0.000000e+00 + str(h_CRCC1-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC1').set('kappa2', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*0.000000e+00 + str(h_CRCC1-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*0.000000e+00 + str(h_CRCC1-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC1').set('kappa3', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*0.000000e+00 + str(h_CRCC1-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*0.000000e+00 + str(h_CRCC1-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC1').set('kappa4', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*0.000000e+00 + str(h_CRCC1-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*0.000000e+00 + str(h_CRCC1-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC1').set('kappa5', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*0.000000e+00 + str(h_CRCC1-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*0.000000e+00 + str(h_CRCC1-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC1').set('kappa6', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*0.000000e+00 + str(h_CRCC1-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*0.000000e+00 + str(h_CRCC1-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC1').set('kappa7', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*0.000000e+00 + str(h_CRCC1-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*0.000000e+00 + str(h_CRCC1-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC1').set('kappa8', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*0.000000e+00 + str(h_CRCC1-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*0.000000e+00 + str(h_CRCC1-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC1').set('lambdas1', '(1.092920e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*1.092920e-02 + str(h_CRCC1-z[1/m])*1.092920e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*1.092920e-02 + str(h_CRCC1-z[1/m])*1.092920e-02) + 1.092920e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/s]');
model.component('mod1').variable('var_xsCRCC1').set('lambdas2', '(3.181930e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*3.181930e-02 + str(h_CRCC1-z[1/m])*3.181930e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*3.181930e-02 + str(h_CRCC1-z[1/m])*3.181930e-02) + 3.181930e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/s]');
model.component('mod1').variable('var_xsCRCC1').set('lambdas3', '(1.094020e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*1.094020e-01 + str(h_CRCC1-z[1/m])*1.094020e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*1.094020e-01 + str(h_CRCC1-z[1/m])*1.094020e-01) + 1.094020e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/s]');
model.component('mod1').variable('var_xsCRCC1').set('lambdas4', '(3.171150e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*3.171150e-01 + str(h_CRCC1-z[1/m])*3.171150e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*3.171150e-01 + str(h_CRCC1-z[1/m])*3.171150e-01) + 3.171150e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/s]');
model.component('mod1').variable('var_xsCRCC1').set('lambdas5', '(1.353010e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*1.353010e+00 + str(h_CRCC1-z[1/m])*1.353010e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*1.353010e+00 + str(h_CRCC1-z[1/m])*1.353010e+00) + 1.353010e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/s]');
model.component('mod1').variable('var_xsCRCC1').set('lambdas6', '(8.339770e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*8.339770e+00 + str(h_CRCC1-z[1/m])*8.339770e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*8.339770e+00 + str(h_CRCC1-z[1/m])*8.339770e+00) + 8.339770e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/s]');
model.component('mod1').variable('var_xsCRCC1').set('nsf1', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*0.000000e+00 + str(h_CRCC1-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*0.000000e+00 + str(h_CRCC1-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('nsf2', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*0.000000e+00 + str(h_CRCC1-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*0.000000e+00 + str(h_CRCC1-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('nsf3', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*0.000000e+00 + str(h_CRCC1-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*0.000000e+00 + str(h_CRCC1-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('nsf4', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*0.000000e+00 + str(h_CRCC1-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*0.000000e+00 + str(h_CRCC1-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('nsf5', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*0.000000e+00 + str(h_CRCC1-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*0.000000e+00 + str(h_CRCC1-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('nsf6', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*0.000000e+00 + str(h_CRCC1-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*0.000000e+00 + str(h_CRCC1-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('nsf7', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*0.000000e+00 + str(h_CRCC1-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*0.000000e+00 + str(h_CRCC1-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('nsf8', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*0.000000e+00 + str(h_CRCC1-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*0.000000e+00 + str(h_CRCC1-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('rem1', '(3.543990e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*4.376830e-02 + str(h_CRCC1-z[1/m])*4.297750e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*3.521190e-02 + str(h_CRCC1-z[1/m])*4.416890e-02) + 4.352830e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('rem2', '(1.992510e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*2.085290e-02 + str(h_CRCC1-z[1/m])*2.115970e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*1.710040e-02 + str(h_CRCC1-z[1/m])*2.145260e-02) + 2.142710e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('rem3', '(1.541150e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*1.164790e-02 + str(h_CRCC1-z[1/m])*2.637880e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*1.073420e-02 + str(h_CRCC1-z[1/m])*2.767580e-02) + 2.799930e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('rem4', '(2.922250e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*2.326230e-02 + str(h_CRCC1-z[1/m])*4.937480e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*2.516690e-02 + str(h_CRCC1-z[1/m])*5.131830e-02) + 5.116410e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('rem5', '(8.702380e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*5.518020e-02 + str(h_CRCC1-z[1/m])*6.617640e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*4.784460e-02 + str(h_CRCC1-z[1/m])*6.972580e-02) + 7.545060e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('rem6', '(7.920120e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*7.188340e-02 + str(h_CRCC1-z[1/m])*1.010020e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*7.716480e-02 + str(h_CRCC1-z[1/m])*1.017170e-01) + 1.028550e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('rem7', '(6.657510e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*6.455870e-02 + str(h_CRCC1-z[1/m])*9.618640e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*6.697830e-02 + str(h_CRCC1-z[1/m])*9.474250e-02) + 9.407990e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('rem8', '(8.173720e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*8.675590e-02 + str(h_CRCC1-z[1/m])*1.135520e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*8.190050e-02 + str(h_CRCC1-z[1/m])*1.121540e-01) + 1.115720e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat11', '(1.20571000e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*1.29658000e-01+str(h_CRCC1-z[1/m])*1.35922000e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*1.22458000e-01+str(h_CRCC1-z[1/m])*1.33634000e-01) + 1.34655000e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat12', '(3.53429000e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*4.30616000e-02+str(h_CRCC1-z[1/m])*4.16527000e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*3.51274000e-02+str(h_CRCC1-z[1/m])*4.27961000e-02) + 4.22138000e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat13', '(1.63476000e-06*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*1.93864000e-05+str(h_CRCC1-z[1/m])*1.39544000e-05) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*1.01755000e-06+str(h_CRCC1-z[1/m])*0.00000000e+00) + 7.41492000e-06*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat14', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat15', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat16', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat17', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat18', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat21', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat22', '(3.23741000e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*3.32764000e-01+str(h_CRCC1-z[1/m])*3.43906000e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*3.21243000e-01+str(h_CRCC1-z[1/m])*3.45745000e-01) + 3.45589000e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat23', '(1.99250000e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*2.08177000e-02+str(h_CRCC1-z[1/m])*1.76012000e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*1.71003000e-02+str(h_CRCC1-z[1/m])*1.78666000e-02) + 1.78505000e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat24', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat25', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat26', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat27', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat28', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat31', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat32', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat33', '(3.97399000e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*3.42625000e-01+str(h_CRCC1-z[1/m])*3.89902000e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*4.01737000e-01+str(h_CRCC1-z[1/m])*3.88915000e-01) + 3.88526000e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat34', '(1.54088000e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*1.16399000e-02+str(h_CRCC1-z[1/m])*8.03539000e-03) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*1.07322000e-02+str(h_CRCC1-z[1/m])*9.27060000e-03) + 9.37282000e-03*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat35', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat36', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat37', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat38', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat41', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat42', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat43', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat44', '(3.84700000e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*3.30393000e-01+str(h_CRCC1-z[1/m])*3.71803000e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*3.88745000e-01+str(h_CRCC1-z[1/m])*3.69901000e-01) + 3.69547000e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat45', '(2.92067000e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*2.32200000e-02+str(h_CRCC1-z[1/m])*2.19827000e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*2.51526000e-02+str(h_CRCC1-z[1/m])*2.42185000e-02) + 2.38722000e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat46', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat47', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat48', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat51', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat52', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat53', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat54', '(1.10752000e-04*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*1.45597000e-04+str(h_CRCC1-z[1/m])*2.16421000e-04) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*2.01503000e-04+str(h_CRCC1-z[1/m])*2.59684000e-04) + 1.58079000e-04*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat55', '(3.27789000e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*2.99033000e-01+str(h_CRCC1-z[1/m])*3.55443000e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*3.66737000e-01+str(h_CRCC1-z[1/m])*3.51937000e-01) + 3.46215000e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat56', '(8.55070000e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*5.41523000e-02+str(h_CRCC1-z[1/m])*3.73808000e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*4.68897000e-02+str(h_CRCC1-z[1/m])*4.07327000e-02) + 4.69555000e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat57', '(1.34811000e-03*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*7.28531000e-04+str(h_CRCC1-z[1/m])*5.13374000e-04) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*7.07524000e-04+str(h_CRCC1-z[1/m])*5.74652000e-04) + 6.46338000e-04*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat58', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*9.17304000e-07+str(h_CRCC1-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z[1/m])*0.00000000e+00) + 3.13438000e-06*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat61', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat62', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat63', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat64', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat65', '(9.59454000e-03*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*8.02864000e-03+str(h_CRCC1-z[1/m])*1.25858000e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*1.14832000e-02+str(h_CRCC1-z[1/m])*1.17071000e-02) + 1.04665000e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat66', '(3.37439000e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*2.84333000e-01+str(h_CRCC1-z[1/m])*3.22474000e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*3.39403000e-01+str(h_CRCC1-z[1/m])*3.22205000e-01) + 3.20628000e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat67', '(6.59970000e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*6.11258000e-02+str(h_CRCC1-z[1/m])*5.75048000e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*6.23252000e-02+str(h_CRCC1-z[1/m])*5.91323000e-02) + 6.16947000e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat68', '(3.50787000e-03*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*2.44400000e-03+str(h_CRCC1-z[1/m])*2.63730000e-03) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*3.26781000e-03+str(h_CRCC1-z[1/m])*2.78319000e-03) + 2.90856000e-03*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat71', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat72', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat73', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat74', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat75', '(1.20984000e-04*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*7.96657000e-05+str(h_CRCC1-z[1/m])*1.10312000e-04) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*1.23669000e-04+str(h_CRCC1-z[1/m])*1.06893000e-04) + 1.12434000e-04*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat76', '(4.48832000e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*3.94922000e-02+str(h_CRCC1-z[1/m])*4.50996000e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*4.56330000e-02+str(h_CRCC1-z[1/m])*4.42402000e-02) + 4.35263000e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat77', '(3.58806000e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*2.98736000e-01+str(h_CRCC1-z[1/m])*3.35290000e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*3.58226000e-01+str(h_CRCC1-z[1/m])*3.36328000e-01) + 3.37502000e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat78', '(2.14117000e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*2.45381000e-02+str(h_CRCC1-z[1/m])*2.19868000e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*2.10815000e-02+str(h_CRCC1-z[1/m])*2.23639000e-02) + 2.25449000e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat81', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat82', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat83', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat84', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat85', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*8.69984000e-08+str(h_CRCC1-z[1/m])*1.18280000e-06) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*0.00000000e+00+str(h_CRCC1-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat86', '(7.70782000e-03*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*5.20050000e-03+str(h_CRCC1-z[1/m])*6.77801000e-03) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*7.73877000e-03+str(h_CRCC1-z[1/m])*6.64676000e-03) + 6.93206000e-03*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat87', '(7.37246000e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*8.06958000e-02+str(h_CRCC1-z[1/m])*7.77715000e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*7.38891000e-02+str(h_CRCC1-z[1/m])*7.77713000e-02) + 7.72772000e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('scat88', '(3.68502000e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*2.99976000e-01+str(h_CRCC1-z[1/m])*3.42190000e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*3.68298000e-01+str(h_CRCC1-z[1/m])*3.43483000e-01) + 3.43666000e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('tot1', '(1.560110e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*1.734270e-01 + str(h_CRCC1-z[1/m])*1.789000e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*1.576700e-01 + str(h_CRCC1-z[1/m])*1.778030e-01) + 1.781840e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('tot2', '(3.436660e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*3.536170e-01 + str(h_CRCC1-z[1/m])*3.650660e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*3.383440e-01 + str(h_CRCC1-z[1/m])*3.671970e-01) + 3.670160e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('tot3', '(4.128100e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*3.542730e-01 + str(h_CRCC1-z[1/m])*4.162810e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*4.124710e-01 + str(h_CRCC1-z[1/m])*4.165910e-01) + 4.165250e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('tot4', '(4.139220e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*3.536550e-01 + str(h_CRCC1-z[1/m])*4.211780e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*4.139120e-01 + str(h_CRCC1-z[1/m])*4.212190e-01) + 4.207110e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('tot5', '(4.148130e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*3.542130e-01 + str(h_CRCC1-z[1/m])*4.216190e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*4.145820e-01 + str(h_CRCC1-z[1/m])*4.216630e-01) + 4.216660e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('tot6', '(4.166400e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*3.562170e-01 + str(h_CRCC1-z[1/m])*4.234760e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*4.165680e-01 + str(h_CRCC1-z[1/m])*4.239220e-01) + 4.234830e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('tot7', '(4.253810e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*3.632950e-01 + str(h_CRCC1-z[1/m])*4.314770e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*4.252040e-01 + str(h_CRCC1-z[1/m])*4.310700e-01) + 4.315820e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('tot8', '(4.502400e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC1)*3.867320e-01 + str(h_CRCC1-z[1/m])*4.557420e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC1)*4.501990e-01 + str(h_CRCC1-z[1/m])*4.556380e-01) + 4.552380e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('diff21', '2.57142857e-01*tot1[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('diff22', '2.57142857e-01*tot2[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('diff23', '2.57142857e-01*tot3[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('diff24', '2.57142857e-01*tot4[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('diff25', '2.57142857e-01*tot5[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('diff26', '2.57142857e-01*tot6[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('diff27', '2.57142857e-01*tot7[1/cm]');
model.component('mod1').variable('var_xsCRCC1').set('diff28', '2.57142857e-01*tot8[1/cm]');
model.component('mod1').variable('var_xsCRCC1').selection.geom('geom1', 3);
model.component('mod1').variable('var_xsCRCC1').selection.set([18]);
model.component('mod1').variable.create('var_xsCRCC2');
model.component('mod1').variable('var_xsCRCC2').set('beta1', '(6.696930e-03*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*6.696930e-03 + str(h_CRCC2-z[1/m])*6.696930e-03) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*6.696930e-03 + str(h_CRCC2-z[1/m])*6.696930e-03) + 6.696930e-03*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC2').set('betas1', '(2.073830e-04*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*2.073830e-04 + str(h_CRCC2-z[1/m])*2.073830e-04) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*2.073830e-04 + str(h_CRCC2-z[1/m])*2.073830e-04) + 2.073830e-04*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC2').set('betas2', '(1.113340e-03*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*1.113340e-03 + str(h_CRCC2-z[1/m])*1.113340e-03) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*1.113340e-03 + str(h_CRCC2-z[1/m])*1.113340e-03) + 1.113340e-03*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC2').set('betas3', '(1.083350e-03*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*1.083350e-03 + str(h_CRCC2-z[1/m])*1.083350e-03) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*1.083350e-03 + str(h_CRCC2-z[1/m])*1.083350e-03) + 1.083350e-03*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC2').set('betas4', '(3.064820e-03*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*3.064820e-03 + str(h_CRCC2-z[1/m])*3.064820e-03) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*3.064820e-03 + str(h_CRCC2-z[1/m])*3.064820e-03) + 3.064820e-03*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC2').set('betas5', '(9.107700e-04*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*9.107700e-04 + str(h_CRCC2-z[1/m])*9.107700e-04) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*9.107700e-04 + str(h_CRCC2-z[1/m])*9.107700e-04) + 9.107700e-04*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC2').set('betas6', '(3.172650e-04*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*3.172650e-04 + str(h_CRCC2-z[1/m])*3.172650e-04) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*3.172650e-04 + str(h_CRCC2-z[1/m])*3.172650e-04) + 3.172650e-04*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC2').set('chid1', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*0.000000e+00 + str(h_CRCC2-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*0.000000e+00 + str(h_CRCC2-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC2').set('chid2', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*0.000000e+00 + str(h_CRCC2-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*0.000000e+00 + str(h_CRCC2-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC2').set('chid3', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*0.000000e+00 + str(h_CRCC2-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*0.000000e+00 + str(h_CRCC2-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC2').set('chid4', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*0.000000e+00 + str(h_CRCC2-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*0.000000e+00 + str(h_CRCC2-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC2').set('chid5', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*0.000000e+00 + str(h_CRCC2-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*0.000000e+00 + str(h_CRCC2-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC2').set('chid6', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*0.000000e+00 + str(h_CRCC2-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*0.000000e+00 + str(h_CRCC2-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC2').set('chid7', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*0.000000e+00 + str(h_CRCC2-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*0.000000e+00 + str(h_CRCC2-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC2').set('chid8', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*0.000000e+00 + str(h_CRCC2-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*0.000000e+00 + str(h_CRCC2-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC2').set('chip1', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*0.000000e+00 + str(h_CRCC2-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*0.000000e+00 + str(h_CRCC2-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC2').set('chip2', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*0.000000e+00 + str(h_CRCC2-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*0.000000e+00 + str(h_CRCC2-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC2').set('chip3', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*0.000000e+00 + str(h_CRCC2-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*0.000000e+00 + str(h_CRCC2-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC2').set('chip4', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*0.000000e+00 + str(h_CRCC2-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*0.000000e+00 + str(h_CRCC2-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC2').set('chip5', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*0.000000e+00 + str(h_CRCC2-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*0.000000e+00 + str(h_CRCC2-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC2').set('chip6', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*0.000000e+00 + str(h_CRCC2-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*0.000000e+00 + str(h_CRCC2-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC2').set('chip7', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*0.000000e+00 + str(h_CRCC2-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*0.000000e+00 + str(h_CRCC2-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC2').set('chip8', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*0.000000e+00 + str(h_CRCC2-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*0.000000e+00 + str(h_CRCC2-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC2').set('chit1', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*0.000000e+00 + str(h_CRCC2-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*0.000000e+00 + str(h_CRCC2-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC2').set('chit2', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*0.000000e+00 + str(h_CRCC2-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*0.000000e+00 + str(h_CRCC2-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC2').set('chit3', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*0.000000e+00 + str(h_CRCC2-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*0.000000e+00 + str(h_CRCC2-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC2').set('chit4', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*0.000000e+00 + str(h_CRCC2-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*0.000000e+00 + str(h_CRCC2-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC2').set('chit5', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*0.000000e+00 + str(h_CRCC2-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*0.000000e+00 + str(h_CRCC2-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC2').set('chit6', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*0.000000e+00 + str(h_CRCC2-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*0.000000e+00 + str(h_CRCC2-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC2').set('chit7', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*0.000000e+00 + str(h_CRCC2-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*0.000000e+00 + str(h_CRCC2-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC2').set('chit8', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*0.000000e+00 + str(h_CRCC2-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*0.000000e+00 + str(h_CRCC2-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC2').set('diff11', '(2.484840e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*2.339710e+00 + str(h_CRCC2-z[1/m])*2.200870e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*2.414630e+00 + str(h_CRCC2-z[1/m])*2.331510e+00) + 2.261660e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC2').set('diff12', '(1.107680e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*1.067740e+00 + str(h_CRCC2-z[1/m])*1.045820e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*1.131350e+00 + str(h_CRCC2-z[1/m])*1.037380e+00) + 1.038690e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC2').set('diff13', '(8.557780e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*9.958500e-01 + str(h_CRCC2-z[1/m])*8.464810e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*8.567050e-01 + str(h_CRCC2-z[1/m])*8.454370e-01) + 8.457890e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC2').set('diff14', '(8.532600e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*9.969800e-01 + str(h_CRCC2-z[1/m])*8.351450e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*8.527250e-01 + str(h_CRCC2-z[1/m])*8.339070e-01) + 8.356690e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC2').set('diff15', '(8.484360e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*9.934540e-01 + str(h_CRCC2-z[1/m])*8.327330e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*8.498900e-01 + str(h_CRCC2-z[1/m])*8.379880e-01) + 8.357400e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC2').set('diff16', '(8.393000e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*9.828500e-01 + str(h_CRCC2-z[1/m])*8.233360e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*8.397180e-01 + str(h_CRCC2-z[1/m])*8.261060e-01) + 8.248720e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC2').set('diff17', '(8.050840e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*9.492230e-01 + str(h_CRCC2-z[1/m])*7.948120e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*8.058330e-01 + str(h_CRCC2-z[1/m])*7.957680e-01) + 7.951570e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC2').set('diff18', '(7.194070e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*8.556820e-01 + str(h_CRCC2-z[1/m])*7.181650e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*7.196690e-01 + str(h_CRCC2-z[1/m])*7.235190e-01) + 7.174000e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC2').set('fiss1', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*0.000000e+00 + str(h_CRCC2-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*0.000000e+00 + str(h_CRCC2-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('fiss2', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*0.000000e+00 + str(h_CRCC2-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*0.000000e+00 + str(h_CRCC2-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('fiss3', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*0.000000e+00 + str(h_CRCC2-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*0.000000e+00 + str(h_CRCC2-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('fiss4', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*0.000000e+00 + str(h_CRCC2-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*0.000000e+00 + str(h_CRCC2-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('fiss5', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*0.000000e+00 + str(h_CRCC2-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*0.000000e+00 + str(h_CRCC2-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('fiss6', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*0.000000e+00 + str(h_CRCC2-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*0.000000e+00 + str(h_CRCC2-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('fiss7', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*0.000000e+00 + str(h_CRCC2-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*0.000000e+00 + str(h_CRCC2-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('fiss8', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*0.000000e+00 + str(h_CRCC2-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*0.000000e+00 + str(h_CRCC2-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('invV1', '(4.786430e-10*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*4.837380e-10 + str(h_CRCC2-z[1/m])*4.832550e-10) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*4.833600e-10 + str(h_CRCC2-z[1/m])*4.826690e-10) + 4.811490e-10*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC2').set('invV2', '(2.082440e-09*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*2.181670e-09 + str(h_CRCC2-z[1/m])*2.001170e-09) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*1.982020e-09 + str(h_CRCC2-z[1/m])*2.018060e-09) + 2.020330e-09*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC2').set('invV3', '(3.867390e-08*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*3.692540e-08 + str(h_CRCC2-z[1/m])*2.916520e-08) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*3.262790e-08 + str(h_CRCC2-z[1/m])*3.086990e-08) + 3.106400e-08*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC2').set('invV4', '(2.127600e-07*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*2.105600e-07 + str(h_CRCC2-z[1/m])*2.024270e-07) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*2.057070e-07 + str(h_CRCC2-z[1/m])*2.057540e-07) + 2.061540e-07*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC2').set('invV5', '(7.878220e-07*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*7.291550e-07 + str(h_CRCC2-z[1/m])*6.672700e-07) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*6.879420e-07 + str(h_CRCC2-z[1/m])*6.749300e-07) + 6.944360e-07*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC2').set('invV6', '(1.383110e-06*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*1.382130e-06 + str(h_CRCC2-z[1/m])*1.348700e-06) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*1.365850e-06 + str(h_CRCC2-z[1/m])*1.359270e-06) + 1.369630e-06*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC2').set('invV7', '(2.170220e-06*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*2.173670e-06 + str(h_CRCC2-z[1/m])*2.149620e-06) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*2.161900e-06 + str(h_CRCC2-z[1/m])*2.157920e-06) + 2.164240e-06*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC2').set('invV8', '(4.160500e-06*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*4.188080e-06 + str(h_CRCC2-z[1/m])*4.142870e-06) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*4.150400e-06 + str(h_CRCC2-z[1/m])*4.162100e-06) + 4.165470e-06*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC2').set('kappa1', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*0.000000e+00 + str(h_CRCC2-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*0.000000e+00 + str(h_CRCC2-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC2').set('kappa2', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*0.000000e+00 + str(h_CRCC2-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*0.000000e+00 + str(h_CRCC2-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC2').set('kappa3', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*0.000000e+00 + str(h_CRCC2-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*0.000000e+00 + str(h_CRCC2-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC2').set('kappa4', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*0.000000e+00 + str(h_CRCC2-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*0.000000e+00 + str(h_CRCC2-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC2').set('kappa5', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*0.000000e+00 + str(h_CRCC2-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*0.000000e+00 + str(h_CRCC2-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC2').set('kappa6', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*0.000000e+00 + str(h_CRCC2-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*0.000000e+00 + str(h_CRCC2-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC2').set('kappa7', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*0.000000e+00 + str(h_CRCC2-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*0.000000e+00 + str(h_CRCC2-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC2').set('kappa8', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*0.000000e+00 + str(h_CRCC2-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*0.000000e+00 + str(h_CRCC2-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC2').set('lambdas1', '(1.092920e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*1.092920e-02 + str(h_CRCC2-z[1/m])*1.092920e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*1.092920e-02 + str(h_CRCC2-z[1/m])*1.092920e-02) + 1.092920e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/s]');
model.component('mod1').variable('var_xsCRCC2').set('lambdas2', '(3.181930e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*3.181930e-02 + str(h_CRCC2-z[1/m])*3.181930e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*3.181930e-02 + str(h_CRCC2-z[1/m])*3.181930e-02) + 3.181930e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/s]');
model.component('mod1').variable('var_xsCRCC2').set('lambdas3', '(1.094020e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*1.094020e-01 + str(h_CRCC2-z[1/m])*1.094020e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*1.094020e-01 + str(h_CRCC2-z[1/m])*1.094020e-01) + 1.094020e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/s]');
model.component('mod1').variable('var_xsCRCC2').set('lambdas4', '(3.171150e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*3.171150e-01 + str(h_CRCC2-z[1/m])*3.171150e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*3.171150e-01 + str(h_CRCC2-z[1/m])*3.171150e-01) + 3.171150e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/s]');
model.component('mod1').variable('var_xsCRCC2').set('lambdas5', '(1.353010e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*1.353010e+00 + str(h_CRCC2-z[1/m])*1.353010e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*1.353010e+00 + str(h_CRCC2-z[1/m])*1.353010e+00) + 1.353010e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/s]');
model.component('mod1').variable('var_xsCRCC2').set('lambdas6', '(8.339770e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*8.339770e+00 + str(h_CRCC2-z[1/m])*8.339770e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*8.339770e+00 + str(h_CRCC2-z[1/m])*8.339770e+00) + 8.339770e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/s]');
model.component('mod1').variable('var_xsCRCC2').set('nsf1', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*0.000000e+00 + str(h_CRCC2-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*0.000000e+00 + str(h_CRCC2-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('nsf2', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*0.000000e+00 + str(h_CRCC2-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*0.000000e+00 + str(h_CRCC2-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('nsf3', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*0.000000e+00 + str(h_CRCC2-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*0.000000e+00 + str(h_CRCC2-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('nsf4', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*0.000000e+00 + str(h_CRCC2-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*0.000000e+00 + str(h_CRCC2-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('nsf5', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*0.000000e+00 + str(h_CRCC2-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*0.000000e+00 + str(h_CRCC2-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('nsf6', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*0.000000e+00 + str(h_CRCC2-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*0.000000e+00 + str(h_CRCC2-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('nsf7', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*0.000000e+00 + str(h_CRCC2-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*0.000000e+00 + str(h_CRCC2-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('nsf8', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*0.000000e+00 + str(h_CRCC2-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*0.000000e+00 + str(h_CRCC2-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('rem1', '(3.543990e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*4.376830e-02 + str(h_CRCC2-z[1/m])*4.297750e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*3.521190e-02 + str(h_CRCC2-z[1/m])*4.416890e-02) + 4.352830e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('rem2', '(1.992510e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*2.085290e-02 + str(h_CRCC2-z[1/m])*2.115970e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*1.710040e-02 + str(h_CRCC2-z[1/m])*2.145260e-02) + 2.142710e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('rem3', '(1.541150e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*1.164790e-02 + str(h_CRCC2-z[1/m])*2.637880e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*1.073420e-02 + str(h_CRCC2-z[1/m])*2.767580e-02) + 2.799930e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('rem4', '(2.922250e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*2.326230e-02 + str(h_CRCC2-z[1/m])*4.937480e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*2.516690e-02 + str(h_CRCC2-z[1/m])*5.131830e-02) + 5.116410e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('rem5', '(8.702380e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*5.518020e-02 + str(h_CRCC2-z[1/m])*6.617640e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*4.784460e-02 + str(h_CRCC2-z[1/m])*6.972580e-02) + 7.545060e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('rem6', '(7.920120e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*7.188340e-02 + str(h_CRCC2-z[1/m])*1.010020e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*7.716480e-02 + str(h_CRCC2-z[1/m])*1.017170e-01) + 1.028550e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('rem7', '(6.657510e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*6.455870e-02 + str(h_CRCC2-z[1/m])*9.618640e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*6.697830e-02 + str(h_CRCC2-z[1/m])*9.474250e-02) + 9.407990e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('rem8', '(8.173720e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*8.675590e-02 + str(h_CRCC2-z[1/m])*1.135520e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*8.190050e-02 + str(h_CRCC2-z[1/m])*1.121540e-01) + 1.115720e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat11', '(1.20571000e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*1.29658000e-01+str(h_CRCC2-z[1/m])*1.35922000e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*1.22458000e-01+str(h_CRCC2-z[1/m])*1.33634000e-01) + 1.34655000e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat12', '(3.53429000e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*4.30616000e-02+str(h_CRCC2-z[1/m])*4.16527000e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*3.51274000e-02+str(h_CRCC2-z[1/m])*4.27961000e-02) + 4.22138000e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat13', '(1.63476000e-06*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*1.93864000e-05+str(h_CRCC2-z[1/m])*1.39544000e-05) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*1.01755000e-06+str(h_CRCC2-z[1/m])*0.00000000e+00) + 7.41492000e-06*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat14', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat15', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat16', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat17', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat18', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat21', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat22', '(3.23741000e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*3.32764000e-01+str(h_CRCC2-z[1/m])*3.43906000e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*3.21243000e-01+str(h_CRCC2-z[1/m])*3.45745000e-01) + 3.45589000e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat23', '(1.99250000e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*2.08177000e-02+str(h_CRCC2-z[1/m])*1.76012000e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*1.71003000e-02+str(h_CRCC2-z[1/m])*1.78666000e-02) + 1.78505000e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat24', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat25', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat26', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat27', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat28', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat31', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat32', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat33', '(3.97399000e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*3.42625000e-01+str(h_CRCC2-z[1/m])*3.89902000e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*4.01737000e-01+str(h_CRCC2-z[1/m])*3.88915000e-01) + 3.88526000e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat34', '(1.54088000e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*1.16399000e-02+str(h_CRCC2-z[1/m])*8.03539000e-03) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*1.07322000e-02+str(h_CRCC2-z[1/m])*9.27060000e-03) + 9.37282000e-03*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat35', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat36', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat37', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat38', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat41', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat42', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat43', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat44', '(3.84700000e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*3.30393000e-01+str(h_CRCC2-z[1/m])*3.71803000e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*3.88745000e-01+str(h_CRCC2-z[1/m])*3.69901000e-01) + 3.69547000e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat45', '(2.92067000e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*2.32200000e-02+str(h_CRCC2-z[1/m])*2.19827000e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*2.51526000e-02+str(h_CRCC2-z[1/m])*2.42185000e-02) + 2.38722000e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat46', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat47', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat48', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat51', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat52', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat53', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat54', '(1.10752000e-04*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*1.45597000e-04+str(h_CRCC2-z[1/m])*2.16421000e-04) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*2.01503000e-04+str(h_CRCC2-z[1/m])*2.59684000e-04) + 1.58079000e-04*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat55', '(3.27789000e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*2.99033000e-01+str(h_CRCC2-z[1/m])*3.55443000e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*3.66737000e-01+str(h_CRCC2-z[1/m])*3.51937000e-01) + 3.46215000e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat56', '(8.55070000e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*5.41523000e-02+str(h_CRCC2-z[1/m])*3.73808000e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*4.68897000e-02+str(h_CRCC2-z[1/m])*4.07327000e-02) + 4.69555000e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat57', '(1.34811000e-03*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*7.28531000e-04+str(h_CRCC2-z[1/m])*5.13374000e-04) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*7.07524000e-04+str(h_CRCC2-z[1/m])*5.74652000e-04) + 6.46338000e-04*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat58', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*9.17304000e-07+str(h_CRCC2-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z[1/m])*0.00000000e+00) + 3.13438000e-06*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat61', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat62', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat63', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat64', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat65', '(9.59454000e-03*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*8.02864000e-03+str(h_CRCC2-z[1/m])*1.25858000e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*1.14832000e-02+str(h_CRCC2-z[1/m])*1.17071000e-02) + 1.04665000e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat66', '(3.37439000e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*2.84333000e-01+str(h_CRCC2-z[1/m])*3.22474000e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*3.39403000e-01+str(h_CRCC2-z[1/m])*3.22205000e-01) + 3.20628000e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat67', '(6.59970000e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*6.11258000e-02+str(h_CRCC2-z[1/m])*5.75048000e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*6.23252000e-02+str(h_CRCC2-z[1/m])*5.91323000e-02) + 6.16947000e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat68', '(3.50787000e-03*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*2.44400000e-03+str(h_CRCC2-z[1/m])*2.63730000e-03) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*3.26781000e-03+str(h_CRCC2-z[1/m])*2.78319000e-03) + 2.90856000e-03*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat71', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat72', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat73', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat74', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat75', '(1.20984000e-04*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*7.96657000e-05+str(h_CRCC2-z[1/m])*1.10312000e-04) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*1.23669000e-04+str(h_CRCC2-z[1/m])*1.06893000e-04) + 1.12434000e-04*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat76', '(4.48832000e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*3.94922000e-02+str(h_CRCC2-z[1/m])*4.50996000e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*4.56330000e-02+str(h_CRCC2-z[1/m])*4.42402000e-02) + 4.35263000e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat77', '(3.58806000e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*2.98736000e-01+str(h_CRCC2-z[1/m])*3.35290000e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*3.58226000e-01+str(h_CRCC2-z[1/m])*3.36328000e-01) + 3.37502000e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat78', '(2.14117000e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*2.45381000e-02+str(h_CRCC2-z[1/m])*2.19868000e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*2.10815000e-02+str(h_CRCC2-z[1/m])*2.23639000e-02) + 2.25449000e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat81', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat82', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat83', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat84', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat85', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*8.69984000e-08+str(h_CRCC2-z[1/m])*1.18280000e-06) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*0.00000000e+00+str(h_CRCC2-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat86', '(7.70782000e-03*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*5.20050000e-03+str(h_CRCC2-z[1/m])*6.77801000e-03) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*7.73877000e-03+str(h_CRCC2-z[1/m])*6.64676000e-03) + 6.93206000e-03*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat87', '(7.37246000e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*8.06958000e-02+str(h_CRCC2-z[1/m])*7.77715000e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*7.38891000e-02+str(h_CRCC2-z[1/m])*7.77713000e-02) + 7.72772000e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('scat88', '(3.68502000e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*2.99976000e-01+str(h_CRCC2-z[1/m])*3.42190000e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*3.68298000e-01+str(h_CRCC2-z[1/m])*3.43483000e-01) + 3.43666000e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('tot1', '(1.560110e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*1.734270e-01 + str(h_CRCC2-z[1/m])*1.789000e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*1.576700e-01 + str(h_CRCC2-z[1/m])*1.778030e-01) + 1.781840e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('tot2', '(3.436660e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*3.536170e-01 + str(h_CRCC2-z[1/m])*3.650660e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*3.383440e-01 + str(h_CRCC2-z[1/m])*3.671970e-01) + 3.670160e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('tot3', '(4.128100e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*3.542730e-01 + str(h_CRCC2-z[1/m])*4.162810e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*4.124710e-01 + str(h_CRCC2-z[1/m])*4.165910e-01) + 4.165250e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('tot4', '(4.139220e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*3.536550e-01 + str(h_CRCC2-z[1/m])*4.211780e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*4.139120e-01 + str(h_CRCC2-z[1/m])*4.212190e-01) + 4.207110e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('tot5', '(4.148130e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*3.542130e-01 + str(h_CRCC2-z[1/m])*4.216190e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*4.145820e-01 + str(h_CRCC2-z[1/m])*4.216630e-01) + 4.216660e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('tot6', '(4.166400e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*3.562170e-01 + str(h_CRCC2-z[1/m])*4.234760e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*4.165680e-01 + str(h_CRCC2-z[1/m])*4.239220e-01) + 4.234830e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('tot7', '(4.253810e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*3.632950e-01 + str(h_CRCC2-z[1/m])*4.314770e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*4.252040e-01 + str(h_CRCC2-z[1/m])*4.310700e-01) + 4.315820e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('tot8', '(4.502400e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC2)*3.867320e-01 + str(h_CRCC2-z[1/m])*4.557420e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC2)*4.501990e-01 + str(h_CRCC2-z[1/m])*4.556380e-01) + 4.552380e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('diff21', '2.57142857e-01*tot1[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('diff22', '2.57142857e-01*tot2[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('diff23', '2.57142857e-01*tot3[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('diff24', '2.57142857e-01*tot4[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('diff25', '2.57142857e-01*tot5[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('diff26', '2.57142857e-01*tot6[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('diff27', '2.57142857e-01*tot7[1/cm]');
model.component('mod1').variable('var_xsCRCC2').set('diff28', '2.57142857e-01*tot8[1/cm]');
model.component('mod1').variable('var_xsCRCC2').selection.geom('geom1', 3);
model.component('mod1').variable('var_xsCRCC2').selection.set([19]);
model.component('mod1').variable.create('var_xsCRCC3');
model.component('mod1').variable('var_xsCRCC3').set('beta1', '(6.696930e-03*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*6.696930e-03 + str(h_CRCC3-z[1/m])*6.696930e-03) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*6.696930e-03 + str(h_CRCC3-z[1/m])*6.696930e-03) + 6.696930e-03*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC3').set('betas1', '(2.073830e-04*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*2.073830e-04 + str(h_CRCC3-z[1/m])*2.073830e-04) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*2.073830e-04 + str(h_CRCC3-z[1/m])*2.073830e-04) + 2.073830e-04*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC3').set('betas2', '(1.113340e-03*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*1.113340e-03 + str(h_CRCC3-z[1/m])*1.113340e-03) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*1.113340e-03 + str(h_CRCC3-z[1/m])*1.113340e-03) + 1.113340e-03*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC3').set('betas3', '(1.083350e-03*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*1.083350e-03 + str(h_CRCC3-z[1/m])*1.083350e-03) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*1.083350e-03 + str(h_CRCC3-z[1/m])*1.083350e-03) + 1.083350e-03*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC3').set('betas4', '(3.064820e-03*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*3.064820e-03 + str(h_CRCC3-z[1/m])*3.064820e-03) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*3.064820e-03 + str(h_CRCC3-z[1/m])*3.064820e-03) + 3.064820e-03*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC3').set('betas5', '(9.107700e-04*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*9.107700e-04 + str(h_CRCC3-z[1/m])*9.107700e-04) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*9.107700e-04 + str(h_CRCC3-z[1/m])*9.107700e-04) + 9.107700e-04*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC3').set('betas6', '(3.172650e-04*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*3.172650e-04 + str(h_CRCC3-z[1/m])*3.172650e-04) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*3.172650e-04 + str(h_CRCC3-z[1/m])*3.172650e-04) + 3.172650e-04*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC3').set('chid1', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*0.000000e+00 + str(h_CRCC3-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*0.000000e+00 + str(h_CRCC3-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC3').set('chid2', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*0.000000e+00 + str(h_CRCC3-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*0.000000e+00 + str(h_CRCC3-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC3').set('chid3', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*0.000000e+00 + str(h_CRCC3-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*0.000000e+00 + str(h_CRCC3-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC3').set('chid4', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*0.000000e+00 + str(h_CRCC3-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*0.000000e+00 + str(h_CRCC3-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC3').set('chid5', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*0.000000e+00 + str(h_CRCC3-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*0.000000e+00 + str(h_CRCC3-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC3').set('chid6', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*0.000000e+00 + str(h_CRCC3-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*0.000000e+00 + str(h_CRCC3-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC3').set('chid7', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*0.000000e+00 + str(h_CRCC3-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*0.000000e+00 + str(h_CRCC3-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC3').set('chid8', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*0.000000e+00 + str(h_CRCC3-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*0.000000e+00 + str(h_CRCC3-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC3').set('chip1', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*0.000000e+00 + str(h_CRCC3-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*0.000000e+00 + str(h_CRCC3-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC3').set('chip2', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*0.000000e+00 + str(h_CRCC3-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*0.000000e+00 + str(h_CRCC3-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC3').set('chip3', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*0.000000e+00 + str(h_CRCC3-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*0.000000e+00 + str(h_CRCC3-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC3').set('chip4', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*0.000000e+00 + str(h_CRCC3-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*0.000000e+00 + str(h_CRCC3-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC3').set('chip5', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*0.000000e+00 + str(h_CRCC3-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*0.000000e+00 + str(h_CRCC3-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC3').set('chip6', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*0.000000e+00 + str(h_CRCC3-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*0.000000e+00 + str(h_CRCC3-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC3').set('chip7', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*0.000000e+00 + str(h_CRCC3-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*0.000000e+00 + str(h_CRCC3-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC3').set('chip8', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*0.000000e+00 + str(h_CRCC3-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*0.000000e+00 + str(h_CRCC3-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC3').set('chit1', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*0.000000e+00 + str(h_CRCC3-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*0.000000e+00 + str(h_CRCC3-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC3').set('chit2', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*0.000000e+00 + str(h_CRCC3-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*0.000000e+00 + str(h_CRCC3-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC3').set('chit3', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*0.000000e+00 + str(h_CRCC3-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*0.000000e+00 + str(h_CRCC3-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC3').set('chit4', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*0.000000e+00 + str(h_CRCC3-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*0.000000e+00 + str(h_CRCC3-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC3').set('chit5', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*0.000000e+00 + str(h_CRCC3-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*0.000000e+00 + str(h_CRCC3-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC3').set('chit6', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*0.000000e+00 + str(h_CRCC3-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*0.000000e+00 + str(h_CRCC3-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC3').set('chit7', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*0.000000e+00 + str(h_CRCC3-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*0.000000e+00 + str(h_CRCC3-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC3').set('chit8', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*0.000000e+00 + str(h_CRCC3-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*0.000000e+00 + str(h_CRCC3-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC3').set('diff11', '(2.484840e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*2.339710e+00 + str(h_CRCC3-z[1/m])*2.200870e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*2.414630e+00 + str(h_CRCC3-z[1/m])*2.331510e+00) + 2.261660e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC3').set('diff12', '(1.107680e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*1.067740e+00 + str(h_CRCC3-z[1/m])*1.045820e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*1.131350e+00 + str(h_CRCC3-z[1/m])*1.037380e+00) + 1.038690e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC3').set('diff13', '(8.557780e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*9.958500e-01 + str(h_CRCC3-z[1/m])*8.464810e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*8.567050e-01 + str(h_CRCC3-z[1/m])*8.454370e-01) + 8.457890e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC3').set('diff14', '(8.532600e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*9.969800e-01 + str(h_CRCC3-z[1/m])*8.351450e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*8.527250e-01 + str(h_CRCC3-z[1/m])*8.339070e-01) + 8.356690e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC3').set('diff15', '(8.484360e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*9.934540e-01 + str(h_CRCC3-z[1/m])*8.327330e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*8.498900e-01 + str(h_CRCC3-z[1/m])*8.379880e-01) + 8.357400e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC3').set('diff16', '(8.393000e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*9.828500e-01 + str(h_CRCC3-z[1/m])*8.233360e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*8.397180e-01 + str(h_CRCC3-z[1/m])*8.261060e-01) + 8.248720e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC3').set('diff17', '(8.050840e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*9.492230e-01 + str(h_CRCC3-z[1/m])*7.948120e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*8.058330e-01 + str(h_CRCC3-z[1/m])*7.957680e-01) + 7.951570e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC3').set('diff18', '(7.194070e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*8.556820e-01 + str(h_CRCC3-z[1/m])*7.181650e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*7.196690e-01 + str(h_CRCC3-z[1/m])*7.235190e-01) + 7.174000e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC3').set('fiss1', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*0.000000e+00 + str(h_CRCC3-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*0.000000e+00 + str(h_CRCC3-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('fiss2', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*0.000000e+00 + str(h_CRCC3-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*0.000000e+00 + str(h_CRCC3-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('fiss3', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*0.000000e+00 + str(h_CRCC3-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*0.000000e+00 + str(h_CRCC3-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('fiss4', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*0.000000e+00 + str(h_CRCC3-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*0.000000e+00 + str(h_CRCC3-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('fiss5', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*0.000000e+00 + str(h_CRCC3-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*0.000000e+00 + str(h_CRCC3-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('fiss6', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*0.000000e+00 + str(h_CRCC3-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*0.000000e+00 + str(h_CRCC3-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('fiss7', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*0.000000e+00 + str(h_CRCC3-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*0.000000e+00 + str(h_CRCC3-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('fiss8', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*0.000000e+00 + str(h_CRCC3-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*0.000000e+00 + str(h_CRCC3-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('invV1', '(4.786430e-10*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*4.837380e-10 + str(h_CRCC3-z[1/m])*4.832550e-10) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*4.833600e-10 + str(h_CRCC3-z[1/m])*4.826690e-10) + 4.811490e-10*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC3').set('invV2', '(2.082440e-09*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*2.181670e-09 + str(h_CRCC3-z[1/m])*2.001170e-09) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*1.982020e-09 + str(h_CRCC3-z[1/m])*2.018060e-09) + 2.020330e-09*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC3').set('invV3', '(3.867390e-08*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*3.692540e-08 + str(h_CRCC3-z[1/m])*2.916520e-08) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*3.262790e-08 + str(h_CRCC3-z[1/m])*3.086990e-08) + 3.106400e-08*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC3').set('invV4', '(2.127600e-07*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*2.105600e-07 + str(h_CRCC3-z[1/m])*2.024270e-07) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*2.057070e-07 + str(h_CRCC3-z[1/m])*2.057540e-07) + 2.061540e-07*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC3').set('invV5', '(7.878220e-07*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*7.291550e-07 + str(h_CRCC3-z[1/m])*6.672700e-07) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*6.879420e-07 + str(h_CRCC3-z[1/m])*6.749300e-07) + 6.944360e-07*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC3').set('invV6', '(1.383110e-06*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*1.382130e-06 + str(h_CRCC3-z[1/m])*1.348700e-06) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*1.365850e-06 + str(h_CRCC3-z[1/m])*1.359270e-06) + 1.369630e-06*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC3').set('invV7', '(2.170220e-06*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*2.173670e-06 + str(h_CRCC3-z[1/m])*2.149620e-06) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*2.161900e-06 + str(h_CRCC3-z[1/m])*2.157920e-06) + 2.164240e-06*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC3').set('invV8', '(4.160500e-06*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*4.188080e-06 + str(h_CRCC3-z[1/m])*4.142870e-06) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*4.150400e-06 + str(h_CRCC3-z[1/m])*4.162100e-06) + 4.165470e-06*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC3').set('kappa1', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*0.000000e+00 + str(h_CRCC3-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*0.000000e+00 + str(h_CRCC3-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC3').set('kappa2', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*0.000000e+00 + str(h_CRCC3-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*0.000000e+00 + str(h_CRCC3-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC3').set('kappa3', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*0.000000e+00 + str(h_CRCC3-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*0.000000e+00 + str(h_CRCC3-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC3').set('kappa4', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*0.000000e+00 + str(h_CRCC3-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*0.000000e+00 + str(h_CRCC3-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC3').set('kappa5', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*0.000000e+00 + str(h_CRCC3-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*0.000000e+00 + str(h_CRCC3-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC3').set('kappa6', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*0.000000e+00 + str(h_CRCC3-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*0.000000e+00 + str(h_CRCC3-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC3').set('kappa7', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*0.000000e+00 + str(h_CRCC3-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*0.000000e+00 + str(h_CRCC3-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC3').set('kappa8', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*0.000000e+00 + str(h_CRCC3-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*0.000000e+00 + str(h_CRCC3-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC3').set('lambdas1', '(1.092920e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*1.092920e-02 + str(h_CRCC3-z[1/m])*1.092920e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*1.092920e-02 + str(h_CRCC3-z[1/m])*1.092920e-02) + 1.092920e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/s]');
model.component('mod1').variable('var_xsCRCC3').set('lambdas2', '(3.181930e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*3.181930e-02 + str(h_CRCC3-z[1/m])*3.181930e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*3.181930e-02 + str(h_CRCC3-z[1/m])*3.181930e-02) + 3.181930e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/s]');
model.component('mod1').variable('var_xsCRCC3').set('lambdas3', '(1.094020e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*1.094020e-01 + str(h_CRCC3-z[1/m])*1.094020e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*1.094020e-01 + str(h_CRCC3-z[1/m])*1.094020e-01) + 1.094020e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/s]');
model.component('mod1').variable('var_xsCRCC3').set('lambdas4', '(3.171150e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*3.171150e-01 + str(h_CRCC3-z[1/m])*3.171150e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*3.171150e-01 + str(h_CRCC3-z[1/m])*3.171150e-01) + 3.171150e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/s]');
model.component('mod1').variable('var_xsCRCC3').set('lambdas5', '(1.353010e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*1.353010e+00 + str(h_CRCC3-z[1/m])*1.353010e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*1.353010e+00 + str(h_CRCC3-z[1/m])*1.353010e+00) + 1.353010e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/s]');
model.component('mod1').variable('var_xsCRCC3').set('lambdas6', '(8.339770e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*8.339770e+00 + str(h_CRCC3-z[1/m])*8.339770e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*8.339770e+00 + str(h_CRCC3-z[1/m])*8.339770e+00) + 8.339770e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/s]');
model.component('mod1').variable('var_xsCRCC3').set('nsf1', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*0.000000e+00 + str(h_CRCC3-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*0.000000e+00 + str(h_CRCC3-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('nsf2', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*0.000000e+00 + str(h_CRCC3-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*0.000000e+00 + str(h_CRCC3-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('nsf3', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*0.000000e+00 + str(h_CRCC3-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*0.000000e+00 + str(h_CRCC3-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('nsf4', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*0.000000e+00 + str(h_CRCC3-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*0.000000e+00 + str(h_CRCC3-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('nsf5', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*0.000000e+00 + str(h_CRCC3-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*0.000000e+00 + str(h_CRCC3-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('nsf6', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*0.000000e+00 + str(h_CRCC3-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*0.000000e+00 + str(h_CRCC3-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('nsf7', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*0.000000e+00 + str(h_CRCC3-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*0.000000e+00 + str(h_CRCC3-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('nsf8', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*0.000000e+00 + str(h_CRCC3-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*0.000000e+00 + str(h_CRCC3-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('rem1', '(3.543990e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*4.376830e-02 + str(h_CRCC3-z[1/m])*4.297750e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*3.521190e-02 + str(h_CRCC3-z[1/m])*4.416890e-02) + 4.352830e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('rem2', '(1.992510e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*2.085290e-02 + str(h_CRCC3-z[1/m])*2.115970e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*1.710040e-02 + str(h_CRCC3-z[1/m])*2.145260e-02) + 2.142710e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('rem3', '(1.541150e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*1.164790e-02 + str(h_CRCC3-z[1/m])*2.637880e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*1.073420e-02 + str(h_CRCC3-z[1/m])*2.767580e-02) + 2.799930e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('rem4', '(2.922250e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*2.326230e-02 + str(h_CRCC3-z[1/m])*4.937480e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*2.516690e-02 + str(h_CRCC3-z[1/m])*5.131830e-02) + 5.116410e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('rem5', '(8.702380e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*5.518020e-02 + str(h_CRCC3-z[1/m])*6.617640e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*4.784460e-02 + str(h_CRCC3-z[1/m])*6.972580e-02) + 7.545060e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('rem6', '(7.920120e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*7.188340e-02 + str(h_CRCC3-z[1/m])*1.010020e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*7.716480e-02 + str(h_CRCC3-z[1/m])*1.017170e-01) + 1.028550e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('rem7', '(6.657510e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*6.455870e-02 + str(h_CRCC3-z[1/m])*9.618640e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*6.697830e-02 + str(h_CRCC3-z[1/m])*9.474250e-02) + 9.407990e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('rem8', '(8.173720e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*8.675590e-02 + str(h_CRCC3-z[1/m])*1.135520e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*8.190050e-02 + str(h_CRCC3-z[1/m])*1.121540e-01) + 1.115720e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat11', '(1.20571000e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*1.29658000e-01+str(h_CRCC3-z[1/m])*1.35922000e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*1.22458000e-01+str(h_CRCC3-z[1/m])*1.33634000e-01) + 1.34655000e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat12', '(3.53429000e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*4.30616000e-02+str(h_CRCC3-z[1/m])*4.16527000e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*3.51274000e-02+str(h_CRCC3-z[1/m])*4.27961000e-02) + 4.22138000e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat13', '(1.63476000e-06*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*1.93864000e-05+str(h_CRCC3-z[1/m])*1.39544000e-05) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*1.01755000e-06+str(h_CRCC3-z[1/m])*0.00000000e+00) + 7.41492000e-06*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat14', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat15', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat16', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat17', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat18', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat21', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat22', '(3.23741000e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*3.32764000e-01+str(h_CRCC3-z[1/m])*3.43906000e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*3.21243000e-01+str(h_CRCC3-z[1/m])*3.45745000e-01) + 3.45589000e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat23', '(1.99250000e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*2.08177000e-02+str(h_CRCC3-z[1/m])*1.76012000e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*1.71003000e-02+str(h_CRCC3-z[1/m])*1.78666000e-02) + 1.78505000e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat24', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat25', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat26', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat27', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat28', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat31', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat32', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat33', '(3.97399000e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*3.42625000e-01+str(h_CRCC3-z[1/m])*3.89902000e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*4.01737000e-01+str(h_CRCC3-z[1/m])*3.88915000e-01) + 3.88526000e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat34', '(1.54088000e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*1.16399000e-02+str(h_CRCC3-z[1/m])*8.03539000e-03) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*1.07322000e-02+str(h_CRCC3-z[1/m])*9.27060000e-03) + 9.37282000e-03*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat35', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat36', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat37', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat38', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat41', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat42', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat43', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat44', '(3.84700000e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*3.30393000e-01+str(h_CRCC3-z[1/m])*3.71803000e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*3.88745000e-01+str(h_CRCC3-z[1/m])*3.69901000e-01) + 3.69547000e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat45', '(2.92067000e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*2.32200000e-02+str(h_CRCC3-z[1/m])*2.19827000e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*2.51526000e-02+str(h_CRCC3-z[1/m])*2.42185000e-02) + 2.38722000e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat46', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat47', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat48', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat51', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat52', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat53', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat54', '(1.10752000e-04*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*1.45597000e-04+str(h_CRCC3-z[1/m])*2.16421000e-04) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*2.01503000e-04+str(h_CRCC3-z[1/m])*2.59684000e-04) + 1.58079000e-04*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat55', '(3.27789000e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*2.99033000e-01+str(h_CRCC3-z[1/m])*3.55443000e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*3.66737000e-01+str(h_CRCC3-z[1/m])*3.51937000e-01) + 3.46215000e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat56', '(8.55070000e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*5.41523000e-02+str(h_CRCC3-z[1/m])*3.73808000e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*4.68897000e-02+str(h_CRCC3-z[1/m])*4.07327000e-02) + 4.69555000e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat57', '(1.34811000e-03*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*7.28531000e-04+str(h_CRCC3-z[1/m])*5.13374000e-04) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*7.07524000e-04+str(h_CRCC3-z[1/m])*5.74652000e-04) + 6.46338000e-04*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat58', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*9.17304000e-07+str(h_CRCC3-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z[1/m])*0.00000000e+00) + 3.13438000e-06*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat61', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat62', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat63', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat64', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat65', '(9.59454000e-03*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*8.02864000e-03+str(h_CRCC3-z[1/m])*1.25858000e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*1.14832000e-02+str(h_CRCC3-z[1/m])*1.17071000e-02) + 1.04665000e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat66', '(3.37439000e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*2.84333000e-01+str(h_CRCC3-z[1/m])*3.22474000e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*3.39403000e-01+str(h_CRCC3-z[1/m])*3.22205000e-01) + 3.20628000e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat67', '(6.59970000e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*6.11258000e-02+str(h_CRCC3-z[1/m])*5.75048000e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*6.23252000e-02+str(h_CRCC3-z[1/m])*5.91323000e-02) + 6.16947000e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat68', '(3.50787000e-03*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*2.44400000e-03+str(h_CRCC3-z[1/m])*2.63730000e-03) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*3.26781000e-03+str(h_CRCC3-z[1/m])*2.78319000e-03) + 2.90856000e-03*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat71', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat72', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat73', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat74', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat75', '(1.20984000e-04*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*7.96657000e-05+str(h_CRCC3-z[1/m])*1.10312000e-04) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*1.23669000e-04+str(h_CRCC3-z[1/m])*1.06893000e-04) + 1.12434000e-04*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat76', '(4.48832000e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*3.94922000e-02+str(h_CRCC3-z[1/m])*4.50996000e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*4.56330000e-02+str(h_CRCC3-z[1/m])*4.42402000e-02) + 4.35263000e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat77', '(3.58806000e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*2.98736000e-01+str(h_CRCC3-z[1/m])*3.35290000e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*3.58226000e-01+str(h_CRCC3-z[1/m])*3.36328000e-01) + 3.37502000e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat78', '(2.14117000e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*2.45381000e-02+str(h_CRCC3-z[1/m])*2.19868000e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*2.10815000e-02+str(h_CRCC3-z[1/m])*2.23639000e-02) + 2.25449000e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat81', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat82', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat83', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat84', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat85', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*8.69984000e-08+str(h_CRCC3-z[1/m])*1.18280000e-06) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*0.00000000e+00+str(h_CRCC3-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat86', '(7.70782000e-03*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*5.20050000e-03+str(h_CRCC3-z[1/m])*6.77801000e-03) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*7.73877000e-03+str(h_CRCC3-z[1/m])*6.64676000e-03) + 6.93206000e-03*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat87', '(7.37246000e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*8.06958000e-02+str(h_CRCC3-z[1/m])*7.77715000e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*7.38891000e-02+str(h_CRCC3-z[1/m])*7.77713000e-02) + 7.72772000e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('scat88', '(3.68502000e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*2.99976000e-01+str(h_CRCC3-z[1/m])*3.42190000e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*3.68298000e-01+str(h_CRCC3-z[1/m])*3.43483000e-01) + 3.43666000e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('tot1', '(1.560110e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*1.734270e-01 + str(h_CRCC3-z[1/m])*1.789000e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*1.576700e-01 + str(h_CRCC3-z[1/m])*1.778030e-01) + 1.781840e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('tot2', '(3.436660e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*3.536170e-01 + str(h_CRCC3-z[1/m])*3.650660e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*3.383440e-01 + str(h_CRCC3-z[1/m])*3.671970e-01) + 3.670160e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('tot3', '(4.128100e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*3.542730e-01 + str(h_CRCC3-z[1/m])*4.162810e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*4.124710e-01 + str(h_CRCC3-z[1/m])*4.165910e-01) + 4.165250e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('tot4', '(4.139220e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*3.536550e-01 + str(h_CRCC3-z[1/m])*4.211780e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*4.139120e-01 + str(h_CRCC3-z[1/m])*4.212190e-01) + 4.207110e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('tot5', '(4.148130e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*3.542130e-01 + str(h_CRCC3-z[1/m])*4.216190e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*4.145820e-01 + str(h_CRCC3-z[1/m])*4.216630e-01) + 4.216660e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('tot6', '(4.166400e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*3.562170e-01 + str(h_CRCC3-z[1/m])*4.234760e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*4.165680e-01 + str(h_CRCC3-z[1/m])*4.239220e-01) + 4.234830e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('tot7', '(4.253810e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*3.632950e-01 + str(h_CRCC3-z[1/m])*4.314770e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*4.252040e-01 + str(h_CRCC3-z[1/m])*4.310700e-01) + 4.315820e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('tot8', '(4.502400e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC3)*3.867320e-01 + str(h_CRCC3-z[1/m])*4.557420e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC3)*4.501990e-01 + str(h_CRCC3-z[1/m])*4.556380e-01) + 4.552380e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('diff21', '2.57142857e-01*tot1[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('diff22', '2.57142857e-01*tot2[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('diff23', '2.57142857e-01*tot3[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('diff24', '2.57142857e-01*tot4[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('diff25', '2.57142857e-01*tot5[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('diff26', '2.57142857e-01*tot6[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('diff27', '2.57142857e-01*tot7[1/cm]');
model.component('mod1').variable('var_xsCRCC3').set('diff28', '2.57142857e-01*tot8[1/cm]');
model.component('mod1').variable('var_xsCRCC3').selection.geom('geom1', 3);
model.component('mod1').variable('var_xsCRCC3').selection.set([20]);
model.component('mod1').variable.create('var_xsCRCC4');
model.component('mod1').variable('var_xsCRCC4').set('beta1', '(6.696930e-03*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*6.696930e-03 + str(h_CRCC4-z[1/m])*6.696930e-03) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*6.696930e-03 + str(h_CRCC4-z[1/m])*6.696930e-03) + 6.696930e-03*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC4').set('betas1', '(2.073830e-04*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*2.073830e-04 + str(h_CRCC4-z[1/m])*2.073830e-04) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*2.073830e-04 + str(h_CRCC4-z[1/m])*2.073830e-04) + 2.073830e-04*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC4').set('betas2', '(1.113340e-03*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*1.113340e-03 + str(h_CRCC4-z[1/m])*1.113340e-03) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*1.113340e-03 + str(h_CRCC4-z[1/m])*1.113340e-03) + 1.113340e-03*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC4').set('betas3', '(1.083350e-03*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*1.083350e-03 + str(h_CRCC4-z[1/m])*1.083350e-03) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*1.083350e-03 + str(h_CRCC4-z[1/m])*1.083350e-03) + 1.083350e-03*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC4').set('betas4', '(3.064820e-03*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*3.064820e-03 + str(h_CRCC4-z[1/m])*3.064820e-03) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*3.064820e-03 + str(h_CRCC4-z[1/m])*3.064820e-03) + 3.064820e-03*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC4').set('betas5', '(9.107700e-04*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*9.107700e-04 + str(h_CRCC4-z[1/m])*9.107700e-04) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*9.107700e-04 + str(h_CRCC4-z[1/m])*9.107700e-04) + 9.107700e-04*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC4').set('betas6', '(3.172650e-04*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*3.172650e-04 + str(h_CRCC4-z[1/m])*3.172650e-04) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*3.172650e-04 + str(h_CRCC4-z[1/m])*3.172650e-04) + 3.172650e-04*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC4').set('chid1', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*0.000000e+00 + str(h_CRCC4-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*0.000000e+00 + str(h_CRCC4-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC4').set('chid2', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*0.000000e+00 + str(h_CRCC4-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*0.000000e+00 + str(h_CRCC4-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC4').set('chid3', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*0.000000e+00 + str(h_CRCC4-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*0.000000e+00 + str(h_CRCC4-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC4').set('chid4', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*0.000000e+00 + str(h_CRCC4-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*0.000000e+00 + str(h_CRCC4-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC4').set('chid5', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*0.000000e+00 + str(h_CRCC4-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*0.000000e+00 + str(h_CRCC4-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC4').set('chid6', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*0.000000e+00 + str(h_CRCC4-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*0.000000e+00 + str(h_CRCC4-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC4').set('chid7', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*0.000000e+00 + str(h_CRCC4-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*0.000000e+00 + str(h_CRCC4-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC4').set('chid8', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*0.000000e+00 + str(h_CRCC4-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*0.000000e+00 + str(h_CRCC4-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC4').set('chip1', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*0.000000e+00 + str(h_CRCC4-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*0.000000e+00 + str(h_CRCC4-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC4').set('chip2', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*0.000000e+00 + str(h_CRCC4-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*0.000000e+00 + str(h_CRCC4-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC4').set('chip3', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*0.000000e+00 + str(h_CRCC4-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*0.000000e+00 + str(h_CRCC4-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC4').set('chip4', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*0.000000e+00 + str(h_CRCC4-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*0.000000e+00 + str(h_CRCC4-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC4').set('chip5', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*0.000000e+00 + str(h_CRCC4-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*0.000000e+00 + str(h_CRCC4-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC4').set('chip6', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*0.000000e+00 + str(h_CRCC4-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*0.000000e+00 + str(h_CRCC4-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC4').set('chip7', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*0.000000e+00 + str(h_CRCC4-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*0.000000e+00 + str(h_CRCC4-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC4').set('chip8', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*0.000000e+00 + str(h_CRCC4-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*0.000000e+00 + str(h_CRCC4-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC4').set('chit1', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*0.000000e+00 + str(h_CRCC4-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*0.000000e+00 + str(h_CRCC4-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC4').set('chit2', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*0.000000e+00 + str(h_CRCC4-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*0.000000e+00 + str(h_CRCC4-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC4').set('chit3', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*0.000000e+00 + str(h_CRCC4-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*0.000000e+00 + str(h_CRCC4-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC4').set('chit4', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*0.000000e+00 + str(h_CRCC4-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*0.000000e+00 + str(h_CRCC4-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC4').set('chit5', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*0.000000e+00 + str(h_CRCC4-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*0.000000e+00 + str(h_CRCC4-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC4').set('chit6', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*0.000000e+00 + str(h_CRCC4-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*0.000000e+00 + str(h_CRCC4-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC4').set('chit7', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*0.000000e+00 + str(h_CRCC4-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*0.000000e+00 + str(h_CRCC4-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC4').set('chit8', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*0.000000e+00 + str(h_CRCC4-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*0.000000e+00 + str(h_CRCC4-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC4').set('diff11', '(2.484840e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*2.339710e+00 + str(h_CRCC4-z[1/m])*2.200870e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*2.414630e+00 + str(h_CRCC4-z[1/m])*2.331510e+00) + 2.261660e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC4').set('diff12', '(1.107680e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*1.067740e+00 + str(h_CRCC4-z[1/m])*1.045820e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*1.131350e+00 + str(h_CRCC4-z[1/m])*1.037380e+00) + 1.038690e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC4').set('diff13', '(8.557780e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*9.958500e-01 + str(h_CRCC4-z[1/m])*8.464810e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*8.567050e-01 + str(h_CRCC4-z[1/m])*8.454370e-01) + 8.457890e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC4').set('diff14', '(8.532600e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*9.969800e-01 + str(h_CRCC4-z[1/m])*8.351450e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*8.527250e-01 + str(h_CRCC4-z[1/m])*8.339070e-01) + 8.356690e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC4').set('diff15', '(8.484360e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*9.934540e-01 + str(h_CRCC4-z[1/m])*8.327330e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*8.498900e-01 + str(h_CRCC4-z[1/m])*8.379880e-01) + 8.357400e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC4').set('diff16', '(8.393000e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*9.828500e-01 + str(h_CRCC4-z[1/m])*8.233360e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*8.397180e-01 + str(h_CRCC4-z[1/m])*8.261060e-01) + 8.248720e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC4').set('diff17', '(8.050840e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*9.492230e-01 + str(h_CRCC4-z[1/m])*7.948120e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*8.058330e-01 + str(h_CRCC4-z[1/m])*7.957680e-01) + 7.951570e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC4').set('diff18', '(7.194070e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*8.556820e-01 + str(h_CRCC4-z[1/m])*7.181650e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*7.196690e-01 + str(h_CRCC4-z[1/m])*7.235190e-01) + 7.174000e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC4').set('fiss1', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*0.000000e+00 + str(h_CRCC4-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*0.000000e+00 + str(h_CRCC4-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('fiss2', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*0.000000e+00 + str(h_CRCC4-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*0.000000e+00 + str(h_CRCC4-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('fiss3', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*0.000000e+00 + str(h_CRCC4-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*0.000000e+00 + str(h_CRCC4-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('fiss4', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*0.000000e+00 + str(h_CRCC4-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*0.000000e+00 + str(h_CRCC4-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('fiss5', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*0.000000e+00 + str(h_CRCC4-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*0.000000e+00 + str(h_CRCC4-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('fiss6', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*0.000000e+00 + str(h_CRCC4-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*0.000000e+00 + str(h_CRCC4-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('fiss7', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*0.000000e+00 + str(h_CRCC4-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*0.000000e+00 + str(h_CRCC4-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('fiss8', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*0.000000e+00 + str(h_CRCC4-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*0.000000e+00 + str(h_CRCC4-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('invV1', '(4.786430e-10*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*4.837380e-10 + str(h_CRCC4-z[1/m])*4.832550e-10) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*4.833600e-10 + str(h_CRCC4-z[1/m])*4.826690e-10) + 4.811490e-10*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC4').set('invV2', '(2.082440e-09*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*2.181670e-09 + str(h_CRCC4-z[1/m])*2.001170e-09) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*1.982020e-09 + str(h_CRCC4-z[1/m])*2.018060e-09) + 2.020330e-09*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC4').set('invV3', '(3.867390e-08*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*3.692540e-08 + str(h_CRCC4-z[1/m])*2.916520e-08) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*3.262790e-08 + str(h_CRCC4-z[1/m])*3.086990e-08) + 3.106400e-08*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC4').set('invV4', '(2.127600e-07*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*2.105600e-07 + str(h_CRCC4-z[1/m])*2.024270e-07) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*2.057070e-07 + str(h_CRCC4-z[1/m])*2.057540e-07) + 2.061540e-07*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC4').set('invV5', '(7.878220e-07*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*7.291550e-07 + str(h_CRCC4-z[1/m])*6.672700e-07) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*6.879420e-07 + str(h_CRCC4-z[1/m])*6.749300e-07) + 6.944360e-07*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC4').set('invV6', '(1.383110e-06*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*1.382130e-06 + str(h_CRCC4-z[1/m])*1.348700e-06) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*1.365850e-06 + str(h_CRCC4-z[1/m])*1.359270e-06) + 1.369630e-06*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC4').set('invV7', '(2.170220e-06*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*2.173670e-06 + str(h_CRCC4-z[1/m])*2.149620e-06) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*2.161900e-06 + str(h_CRCC4-z[1/m])*2.157920e-06) + 2.164240e-06*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC4').set('invV8', '(4.160500e-06*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*4.188080e-06 + str(h_CRCC4-z[1/m])*4.142870e-06) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*4.150400e-06 + str(h_CRCC4-z[1/m])*4.162100e-06) + 4.165470e-06*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC4').set('kappa1', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*0.000000e+00 + str(h_CRCC4-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*0.000000e+00 + str(h_CRCC4-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC4').set('kappa2', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*0.000000e+00 + str(h_CRCC4-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*0.000000e+00 + str(h_CRCC4-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC4').set('kappa3', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*0.000000e+00 + str(h_CRCC4-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*0.000000e+00 + str(h_CRCC4-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC4').set('kappa4', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*0.000000e+00 + str(h_CRCC4-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*0.000000e+00 + str(h_CRCC4-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC4').set('kappa5', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*0.000000e+00 + str(h_CRCC4-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*0.000000e+00 + str(h_CRCC4-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC4').set('kappa6', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*0.000000e+00 + str(h_CRCC4-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*0.000000e+00 + str(h_CRCC4-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC4').set('kappa7', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*0.000000e+00 + str(h_CRCC4-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*0.000000e+00 + str(h_CRCC4-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC4').set('kappa8', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*0.000000e+00 + str(h_CRCC4-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*0.000000e+00 + str(h_CRCC4-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC4').set('lambdas1', '(1.092920e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*1.092920e-02 + str(h_CRCC4-z[1/m])*1.092920e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*1.092920e-02 + str(h_CRCC4-z[1/m])*1.092920e-02) + 1.092920e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/s]');
model.component('mod1').variable('var_xsCRCC4').set('lambdas2', '(3.181930e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*3.181930e-02 + str(h_CRCC4-z[1/m])*3.181930e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*3.181930e-02 + str(h_CRCC4-z[1/m])*3.181930e-02) + 3.181930e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/s]');
model.component('mod1').variable('var_xsCRCC4').set('lambdas3', '(1.094020e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*1.094020e-01 + str(h_CRCC4-z[1/m])*1.094020e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*1.094020e-01 + str(h_CRCC4-z[1/m])*1.094020e-01) + 1.094020e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/s]');
model.component('mod1').variable('var_xsCRCC4').set('lambdas4', '(3.171150e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*3.171150e-01 + str(h_CRCC4-z[1/m])*3.171150e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*3.171150e-01 + str(h_CRCC4-z[1/m])*3.171150e-01) + 3.171150e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/s]');
model.component('mod1').variable('var_xsCRCC4').set('lambdas5', '(1.353010e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*1.353010e+00 + str(h_CRCC4-z[1/m])*1.353010e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*1.353010e+00 + str(h_CRCC4-z[1/m])*1.353010e+00) + 1.353010e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/s]');
model.component('mod1').variable('var_xsCRCC4').set('lambdas6', '(8.339770e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*8.339770e+00 + str(h_CRCC4-z[1/m])*8.339770e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*8.339770e+00 + str(h_CRCC4-z[1/m])*8.339770e+00) + 8.339770e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/s]');
model.component('mod1').variable('var_xsCRCC4').set('nsf1', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*0.000000e+00 + str(h_CRCC4-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*0.000000e+00 + str(h_CRCC4-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('nsf2', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*0.000000e+00 + str(h_CRCC4-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*0.000000e+00 + str(h_CRCC4-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('nsf3', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*0.000000e+00 + str(h_CRCC4-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*0.000000e+00 + str(h_CRCC4-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('nsf4', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*0.000000e+00 + str(h_CRCC4-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*0.000000e+00 + str(h_CRCC4-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('nsf5', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*0.000000e+00 + str(h_CRCC4-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*0.000000e+00 + str(h_CRCC4-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('nsf6', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*0.000000e+00 + str(h_CRCC4-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*0.000000e+00 + str(h_CRCC4-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('nsf7', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*0.000000e+00 + str(h_CRCC4-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*0.000000e+00 + str(h_CRCC4-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('nsf8', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*0.000000e+00 + str(h_CRCC4-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*0.000000e+00 + str(h_CRCC4-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('rem1', '(3.543990e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*4.376830e-02 + str(h_CRCC4-z[1/m])*4.297750e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*3.521190e-02 + str(h_CRCC4-z[1/m])*4.416890e-02) + 4.352830e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('rem2', '(1.992510e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*2.085290e-02 + str(h_CRCC4-z[1/m])*2.115970e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*1.710040e-02 + str(h_CRCC4-z[1/m])*2.145260e-02) + 2.142710e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('rem3', '(1.541150e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*1.164790e-02 + str(h_CRCC4-z[1/m])*2.637880e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*1.073420e-02 + str(h_CRCC4-z[1/m])*2.767580e-02) + 2.799930e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('rem4', '(2.922250e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*2.326230e-02 + str(h_CRCC4-z[1/m])*4.937480e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*2.516690e-02 + str(h_CRCC4-z[1/m])*5.131830e-02) + 5.116410e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('rem5', '(8.702380e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*5.518020e-02 + str(h_CRCC4-z[1/m])*6.617640e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*4.784460e-02 + str(h_CRCC4-z[1/m])*6.972580e-02) + 7.545060e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('rem6', '(7.920120e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*7.188340e-02 + str(h_CRCC4-z[1/m])*1.010020e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*7.716480e-02 + str(h_CRCC4-z[1/m])*1.017170e-01) + 1.028550e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('rem7', '(6.657510e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*6.455870e-02 + str(h_CRCC4-z[1/m])*9.618640e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*6.697830e-02 + str(h_CRCC4-z[1/m])*9.474250e-02) + 9.407990e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('rem8', '(8.173720e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*8.675590e-02 + str(h_CRCC4-z[1/m])*1.135520e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*8.190050e-02 + str(h_CRCC4-z[1/m])*1.121540e-01) + 1.115720e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat11', '(1.20571000e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*1.29658000e-01+str(h_CRCC4-z[1/m])*1.35922000e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*1.22458000e-01+str(h_CRCC4-z[1/m])*1.33634000e-01) + 1.34655000e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat12', '(3.53429000e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*4.30616000e-02+str(h_CRCC4-z[1/m])*4.16527000e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*3.51274000e-02+str(h_CRCC4-z[1/m])*4.27961000e-02) + 4.22138000e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat13', '(1.63476000e-06*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*1.93864000e-05+str(h_CRCC4-z[1/m])*1.39544000e-05) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*1.01755000e-06+str(h_CRCC4-z[1/m])*0.00000000e+00) + 7.41492000e-06*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat14', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat15', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat16', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat17', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat18', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat21', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat22', '(3.23741000e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*3.32764000e-01+str(h_CRCC4-z[1/m])*3.43906000e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*3.21243000e-01+str(h_CRCC4-z[1/m])*3.45745000e-01) + 3.45589000e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat23', '(1.99250000e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*2.08177000e-02+str(h_CRCC4-z[1/m])*1.76012000e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*1.71003000e-02+str(h_CRCC4-z[1/m])*1.78666000e-02) + 1.78505000e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat24', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat25', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat26', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat27', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat28', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat31', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat32', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat33', '(3.97399000e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*3.42625000e-01+str(h_CRCC4-z[1/m])*3.89902000e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*4.01737000e-01+str(h_CRCC4-z[1/m])*3.88915000e-01) + 3.88526000e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat34', '(1.54088000e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*1.16399000e-02+str(h_CRCC4-z[1/m])*8.03539000e-03) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*1.07322000e-02+str(h_CRCC4-z[1/m])*9.27060000e-03) + 9.37282000e-03*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat35', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat36', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat37', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat38', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat41', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat42', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat43', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat44', '(3.84700000e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*3.30393000e-01+str(h_CRCC4-z[1/m])*3.71803000e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*3.88745000e-01+str(h_CRCC4-z[1/m])*3.69901000e-01) + 3.69547000e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat45', '(2.92067000e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*2.32200000e-02+str(h_CRCC4-z[1/m])*2.19827000e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*2.51526000e-02+str(h_CRCC4-z[1/m])*2.42185000e-02) + 2.38722000e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat46', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat47', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat48', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat51', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat52', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat53', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat54', '(1.10752000e-04*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*1.45597000e-04+str(h_CRCC4-z[1/m])*2.16421000e-04) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*2.01503000e-04+str(h_CRCC4-z[1/m])*2.59684000e-04) + 1.58079000e-04*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat55', '(3.27789000e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*2.99033000e-01+str(h_CRCC4-z[1/m])*3.55443000e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*3.66737000e-01+str(h_CRCC4-z[1/m])*3.51937000e-01) + 3.46215000e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat56', '(8.55070000e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*5.41523000e-02+str(h_CRCC4-z[1/m])*3.73808000e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*4.68897000e-02+str(h_CRCC4-z[1/m])*4.07327000e-02) + 4.69555000e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat57', '(1.34811000e-03*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*7.28531000e-04+str(h_CRCC4-z[1/m])*5.13374000e-04) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*7.07524000e-04+str(h_CRCC4-z[1/m])*5.74652000e-04) + 6.46338000e-04*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat58', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*9.17304000e-07+str(h_CRCC4-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z[1/m])*0.00000000e+00) + 3.13438000e-06*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat61', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat62', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat63', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat64', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat65', '(9.59454000e-03*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*8.02864000e-03+str(h_CRCC4-z[1/m])*1.25858000e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*1.14832000e-02+str(h_CRCC4-z[1/m])*1.17071000e-02) + 1.04665000e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat66', '(3.37439000e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*2.84333000e-01+str(h_CRCC4-z[1/m])*3.22474000e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*3.39403000e-01+str(h_CRCC4-z[1/m])*3.22205000e-01) + 3.20628000e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat67', '(6.59970000e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*6.11258000e-02+str(h_CRCC4-z[1/m])*5.75048000e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*6.23252000e-02+str(h_CRCC4-z[1/m])*5.91323000e-02) + 6.16947000e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat68', '(3.50787000e-03*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*2.44400000e-03+str(h_CRCC4-z[1/m])*2.63730000e-03) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*3.26781000e-03+str(h_CRCC4-z[1/m])*2.78319000e-03) + 2.90856000e-03*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat71', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat72', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat73', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat74', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat75', '(1.20984000e-04*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*7.96657000e-05+str(h_CRCC4-z[1/m])*1.10312000e-04) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*1.23669000e-04+str(h_CRCC4-z[1/m])*1.06893000e-04) + 1.12434000e-04*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat76', '(4.48832000e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*3.94922000e-02+str(h_CRCC4-z[1/m])*4.50996000e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*4.56330000e-02+str(h_CRCC4-z[1/m])*4.42402000e-02) + 4.35263000e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat77', '(3.58806000e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*2.98736000e-01+str(h_CRCC4-z[1/m])*3.35290000e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*3.58226000e-01+str(h_CRCC4-z[1/m])*3.36328000e-01) + 3.37502000e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat78', '(2.14117000e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*2.45381000e-02+str(h_CRCC4-z[1/m])*2.19868000e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*2.10815000e-02+str(h_CRCC4-z[1/m])*2.23639000e-02) + 2.25449000e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat81', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat82', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat83', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat84', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat85', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*8.69984000e-08+str(h_CRCC4-z[1/m])*1.18280000e-06) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*0.00000000e+00+str(h_CRCC4-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat86', '(7.70782000e-03*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*5.20050000e-03+str(h_CRCC4-z[1/m])*6.77801000e-03) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*7.73877000e-03+str(h_CRCC4-z[1/m])*6.64676000e-03) + 6.93206000e-03*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat87', '(7.37246000e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*8.06958000e-02+str(h_CRCC4-z[1/m])*7.77715000e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*7.38891000e-02+str(h_CRCC4-z[1/m])*7.77713000e-02) + 7.72772000e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('scat88', '(3.68502000e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*2.99976000e-01+str(h_CRCC4-z[1/m])*3.42190000e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*3.68298000e-01+str(h_CRCC4-z[1/m])*3.43483000e-01) + 3.43666000e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('tot1', '(1.560110e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*1.734270e-01 + str(h_CRCC4-z[1/m])*1.789000e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*1.576700e-01 + str(h_CRCC4-z[1/m])*1.778030e-01) + 1.781840e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('tot2', '(3.436660e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*3.536170e-01 + str(h_CRCC4-z[1/m])*3.650660e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*3.383440e-01 + str(h_CRCC4-z[1/m])*3.671970e-01) + 3.670160e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('tot3', '(4.128100e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*3.542730e-01 + str(h_CRCC4-z[1/m])*4.162810e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*4.124710e-01 + str(h_CRCC4-z[1/m])*4.165910e-01) + 4.165250e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('tot4', '(4.139220e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*3.536550e-01 + str(h_CRCC4-z[1/m])*4.211780e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*4.139120e-01 + str(h_CRCC4-z[1/m])*4.212190e-01) + 4.207110e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('tot5', '(4.148130e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*3.542130e-01 + str(h_CRCC4-z[1/m])*4.216190e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*4.145820e-01 + str(h_CRCC4-z[1/m])*4.216630e-01) + 4.216660e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('tot6', '(4.166400e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*3.562170e-01 + str(h_CRCC4-z[1/m])*4.234760e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*4.165680e-01 + str(h_CRCC4-z[1/m])*4.239220e-01) + 4.234830e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('tot7', '(4.253810e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*3.632950e-01 + str(h_CRCC4-z[1/m])*4.314770e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*4.252040e-01 + str(h_CRCC4-z[1/m])*4.310700e-01) + 4.315820e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('tot8', '(4.502400e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC4)*3.867320e-01 + str(h_CRCC4-z[1/m])*4.557420e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC4)*4.501990e-01 + str(h_CRCC4-z[1/m])*4.556380e-01) + 4.552380e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('diff21', '2.57142857e-01*tot1[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('diff22', '2.57142857e-01*tot2[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('diff23', '2.57142857e-01*tot3[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('diff24', '2.57142857e-01*tot4[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('diff25', '2.57142857e-01*tot5[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('diff26', '2.57142857e-01*tot6[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('diff27', '2.57142857e-01*tot7[1/cm]');
model.component('mod1').variable('var_xsCRCC4').set('diff28', '2.57142857e-01*tot8[1/cm]');
model.component('mod1').variable('var_xsCRCC4').selection.geom('geom1', 3);
model.component('mod1').variable('var_xsCRCC4').selection.set([14]);
model.component('mod1').variable.create('var_xsCRCC5');
model.component('mod1').variable('var_xsCRCC5').set('beta1', '(6.696930e-03*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*6.696930e-03 + str(h_CRCC5-z[1/m])*6.696930e-03) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*6.696930e-03 + str(h_CRCC5-z[1/m])*6.696930e-03) + 6.696930e-03*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC5').set('betas1', '(2.073830e-04*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*2.073830e-04 + str(h_CRCC5-z[1/m])*2.073830e-04) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*2.073830e-04 + str(h_CRCC5-z[1/m])*2.073830e-04) + 2.073830e-04*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC5').set('betas2', '(1.113340e-03*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*1.113340e-03 + str(h_CRCC5-z[1/m])*1.113340e-03) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*1.113340e-03 + str(h_CRCC5-z[1/m])*1.113340e-03) + 1.113340e-03*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC5').set('betas3', '(1.083350e-03*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*1.083350e-03 + str(h_CRCC5-z[1/m])*1.083350e-03) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*1.083350e-03 + str(h_CRCC5-z[1/m])*1.083350e-03) + 1.083350e-03*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC5').set('betas4', '(3.064820e-03*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*3.064820e-03 + str(h_CRCC5-z[1/m])*3.064820e-03) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*3.064820e-03 + str(h_CRCC5-z[1/m])*3.064820e-03) + 3.064820e-03*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC5').set('betas5', '(9.107700e-04*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*9.107700e-04 + str(h_CRCC5-z[1/m])*9.107700e-04) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*9.107700e-04 + str(h_CRCC5-z[1/m])*9.107700e-04) + 9.107700e-04*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC5').set('betas6', '(3.172650e-04*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*3.172650e-04 + str(h_CRCC5-z[1/m])*3.172650e-04) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*3.172650e-04 + str(h_CRCC5-z[1/m])*3.172650e-04) + 3.172650e-04*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC5').set('chid1', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*0.000000e+00 + str(h_CRCC5-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*0.000000e+00 + str(h_CRCC5-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC5').set('chid2', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*0.000000e+00 + str(h_CRCC5-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*0.000000e+00 + str(h_CRCC5-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC5').set('chid3', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*0.000000e+00 + str(h_CRCC5-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*0.000000e+00 + str(h_CRCC5-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC5').set('chid4', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*0.000000e+00 + str(h_CRCC5-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*0.000000e+00 + str(h_CRCC5-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC5').set('chid5', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*0.000000e+00 + str(h_CRCC5-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*0.000000e+00 + str(h_CRCC5-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC5').set('chid6', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*0.000000e+00 + str(h_CRCC5-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*0.000000e+00 + str(h_CRCC5-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC5').set('chid7', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*0.000000e+00 + str(h_CRCC5-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*0.000000e+00 + str(h_CRCC5-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC5').set('chid8', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*0.000000e+00 + str(h_CRCC5-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*0.000000e+00 + str(h_CRCC5-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC5').set('chip1', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*0.000000e+00 + str(h_CRCC5-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*0.000000e+00 + str(h_CRCC5-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC5').set('chip2', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*0.000000e+00 + str(h_CRCC5-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*0.000000e+00 + str(h_CRCC5-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC5').set('chip3', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*0.000000e+00 + str(h_CRCC5-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*0.000000e+00 + str(h_CRCC5-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC5').set('chip4', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*0.000000e+00 + str(h_CRCC5-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*0.000000e+00 + str(h_CRCC5-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC5').set('chip5', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*0.000000e+00 + str(h_CRCC5-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*0.000000e+00 + str(h_CRCC5-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC5').set('chip6', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*0.000000e+00 + str(h_CRCC5-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*0.000000e+00 + str(h_CRCC5-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC5').set('chip7', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*0.000000e+00 + str(h_CRCC5-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*0.000000e+00 + str(h_CRCC5-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC5').set('chip8', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*0.000000e+00 + str(h_CRCC5-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*0.000000e+00 + str(h_CRCC5-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC5').set('chit1', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*0.000000e+00 + str(h_CRCC5-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*0.000000e+00 + str(h_CRCC5-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC5').set('chit2', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*0.000000e+00 + str(h_CRCC5-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*0.000000e+00 + str(h_CRCC5-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC5').set('chit3', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*0.000000e+00 + str(h_CRCC5-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*0.000000e+00 + str(h_CRCC5-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC5').set('chit4', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*0.000000e+00 + str(h_CRCC5-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*0.000000e+00 + str(h_CRCC5-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC5').set('chit5', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*0.000000e+00 + str(h_CRCC5-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*0.000000e+00 + str(h_CRCC5-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC5').set('chit6', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*0.000000e+00 + str(h_CRCC5-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*0.000000e+00 + str(h_CRCC5-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC5').set('chit7', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*0.000000e+00 + str(h_CRCC5-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*0.000000e+00 + str(h_CRCC5-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC5').set('chit8', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*0.000000e+00 + str(h_CRCC5-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*0.000000e+00 + str(h_CRCC5-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC5').set('diff11', '(2.484840e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*2.339710e+00 + str(h_CRCC5-z[1/m])*2.200870e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*2.414630e+00 + str(h_CRCC5-z[1/m])*2.331510e+00) + 2.261660e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC5').set('diff12', '(1.107680e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*1.067740e+00 + str(h_CRCC5-z[1/m])*1.045820e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*1.131350e+00 + str(h_CRCC5-z[1/m])*1.037380e+00) + 1.038690e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC5').set('diff13', '(8.557780e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*9.958500e-01 + str(h_CRCC5-z[1/m])*8.464810e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*8.567050e-01 + str(h_CRCC5-z[1/m])*8.454370e-01) + 8.457890e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC5').set('diff14', '(8.532600e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*9.969800e-01 + str(h_CRCC5-z[1/m])*8.351450e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*8.527250e-01 + str(h_CRCC5-z[1/m])*8.339070e-01) + 8.356690e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC5').set('diff15', '(8.484360e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*9.934540e-01 + str(h_CRCC5-z[1/m])*8.327330e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*8.498900e-01 + str(h_CRCC5-z[1/m])*8.379880e-01) + 8.357400e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC5').set('diff16', '(8.393000e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*9.828500e-01 + str(h_CRCC5-z[1/m])*8.233360e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*8.397180e-01 + str(h_CRCC5-z[1/m])*8.261060e-01) + 8.248720e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC5').set('diff17', '(8.050840e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*9.492230e-01 + str(h_CRCC5-z[1/m])*7.948120e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*8.058330e-01 + str(h_CRCC5-z[1/m])*7.957680e-01) + 7.951570e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC5').set('diff18', '(7.194070e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*8.556820e-01 + str(h_CRCC5-z[1/m])*7.181650e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*7.196690e-01 + str(h_CRCC5-z[1/m])*7.235190e-01) + 7.174000e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC5').set('fiss1', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*0.000000e+00 + str(h_CRCC5-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*0.000000e+00 + str(h_CRCC5-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('fiss2', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*0.000000e+00 + str(h_CRCC5-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*0.000000e+00 + str(h_CRCC5-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('fiss3', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*0.000000e+00 + str(h_CRCC5-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*0.000000e+00 + str(h_CRCC5-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('fiss4', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*0.000000e+00 + str(h_CRCC5-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*0.000000e+00 + str(h_CRCC5-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('fiss5', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*0.000000e+00 + str(h_CRCC5-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*0.000000e+00 + str(h_CRCC5-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('fiss6', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*0.000000e+00 + str(h_CRCC5-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*0.000000e+00 + str(h_CRCC5-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('fiss7', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*0.000000e+00 + str(h_CRCC5-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*0.000000e+00 + str(h_CRCC5-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('fiss8', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*0.000000e+00 + str(h_CRCC5-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*0.000000e+00 + str(h_CRCC5-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('invV1', '(4.786430e-10*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*4.837380e-10 + str(h_CRCC5-z[1/m])*4.832550e-10) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*4.833600e-10 + str(h_CRCC5-z[1/m])*4.826690e-10) + 4.811490e-10*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC5').set('invV2', '(2.082440e-09*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*2.181670e-09 + str(h_CRCC5-z[1/m])*2.001170e-09) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*1.982020e-09 + str(h_CRCC5-z[1/m])*2.018060e-09) + 2.020330e-09*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC5').set('invV3', '(3.867390e-08*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*3.692540e-08 + str(h_CRCC5-z[1/m])*2.916520e-08) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*3.262790e-08 + str(h_CRCC5-z[1/m])*3.086990e-08) + 3.106400e-08*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC5').set('invV4', '(2.127600e-07*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*2.105600e-07 + str(h_CRCC5-z[1/m])*2.024270e-07) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*2.057070e-07 + str(h_CRCC5-z[1/m])*2.057540e-07) + 2.061540e-07*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC5').set('invV5', '(7.878220e-07*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*7.291550e-07 + str(h_CRCC5-z[1/m])*6.672700e-07) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*6.879420e-07 + str(h_CRCC5-z[1/m])*6.749300e-07) + 6.944360e-07*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC5').set('invV6', '(1.383110e-06*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*1.382130e-06 + str(h_CRCC5-z[1/m])*1.348700e-06) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*1.365850e-06 + str(h_CRCC5-z[1/m])*1.359270e-06) + 1.369630e-06*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC5').set('invV7', '(2.170220e-06*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*2.173670e-06 + str(h_CRCC5-z[1/m])*2.149620e-06) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*2.161900e-06 + str(h_CRCC5-z[1/m])*2.157920e-06) + 2.164240e-06*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC5').set('invV8', '(4.160500e-06*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*4.188080e-06 + str(h_CRCC5-z[1/m])*4.142870e-06) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*4.150400e-06 + str(h_CRCC5-z[1/m])*4.162100e-06) + 4.165470e-06*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC5').set('kappa1', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*0.000000e+00 + str(h_CRCC5-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*0.000000e+00 + str(h_CRCC5-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC5').set('kappa2', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*0.000000e+00 + str(h_CRCC5-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*0.000000e+00 + str(h_CRCC5-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC5').set('kappa3', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*0.000000e+00 + str(h_CRCC5-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*0.000000e+00 + str(h_CRCC5-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC5').set('kappa4', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*0.000000e+00 + str(h_CRCC5-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*0.000000e+00 + str(h_CRCC5-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC5').set('kappa5', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*0.000000e+00 + str(h_CRCC5-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*0.000000e+00 + str(h_CRCC5-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC5').set('kappa6', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*0.000000e+00 + str(h_CRCC5-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*0.000000e+00 + str(h_CRCC5-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC5').set('kappa7', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*0.000000e+00 + str(h_CRCC5-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*0.000000e+00 + str(h_CRCC5-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC5').set('kappa8', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*0.000000e+00 + str(h_CRCC5-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*0.000000e+00 + str(h_CRCC5-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC5').set('lambdas1', '(1.092920e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*1.092920e-02 + str(h_CRCC5-z[1/m])*1.092920e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*1.092920e-02 + str(h_CRCC5-z[1/m])*1.092920e-02) + 1.092920e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/s]');
model.component('mod1').variable('var_xsCRCC5').set('lambdas2', '(3.181930e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*3.181930e-02 + str(h_CRCC5-z[1/m])*3.181930e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*3.181930e-02 + str(h_CRCC5-z[1/m])*3.181930e-02) + 3.181930e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/s]');
model.component('mod1').variable('var_xsCRCC5').set('lambdas3', '(1.094020e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*1.094020e-01 + str(h_CRCC5-z[1/m])*1.094020e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*1.094020e-01 + str(h_CRCC5-z[1/m])*1.094020e-01) + 1.094020e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/s]');
model.component('mod1').variable('var_xsCRCC5').set('lambdas4', '(3.171150e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*3.171150e-01 + str(h_CRCC5-z[1/m])*3.171150e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*3.171150e-01 + str(h_CRCC5-z[1/m])*3.171150e-01) + 3.171150e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/s]');
model.component('mod1').variable('var_xsCRCC5').set('lambdas5', '(1.353010e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*1.353010e+00 + str(h_CRCC5-z[1/m])*1.353010e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*1.353010e+00 + str(h_CRCC5-z[1/m])*1.353010e+00) + 1.353010e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/s]');
model.component('mod1').variable('var_xsCRCC5').set('lambdas6', '(8.339770e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*8.339770e+00 + str(h_CRCC5-z[1/m])*8.339770e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*8.339770e+00 + str(h_CRCC5-z[1/m])*8.339770e+00) + 8.339770e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/s]');
model.component('mod1').variable('var_xsCRCC5').set('nsf1', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*0.000000e+00 + str(h_CRCC5-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*0.000000e+00 + str(h_CRCC5-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('nsf2', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*0.000000e+00 + str(h_CRCC5-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*0.000000e+00 + str(h_CRCC5-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('nsf3', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*0.000000e+00 + str(h_CRCC5-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*0.000000e+00 + str(h_CRCC5-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('nsf4', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*0.000000e+00 + str(h_CRCC5-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*0.000000e+00 + str(h_CRCC5-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('nsf5', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*0.000000e+00 + str(h_CRCC5-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*0.000000e+00 + str(h_CRCC5-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('nsf6', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*0.000000e+00 + str(h_CRCC5-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*0.000000e+00 + str(h_CRCC5-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('nsf7', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*0.000000e+00 + str(h_CRCC5-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*0.000000e+00 + str(h_CRCC5-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('nsf8', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*0.000000e+00 + str(h_CRCC5-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*0.000000e+00 + str(h_CRCC5-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('rem1', '(3.543990e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*4.376830e-02 + str(h_CRCC5-z[1/m])*4.297750e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*3.521190e-02 + str(h_CRCC5-z[1/m])*4.416890e-02) + 4.352830e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('rem2', '(1.992510e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*2.085290e-02 + str(h_CRCC5-z[1/m])*2.115970e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*1.710040e-02 + str(h_CRCC5-z[1/m])*2.145260e-02) + 2.142710e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('rem3', '(1.541150e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*1.164790e-02 + str(h_CRCC5-z[1/m])*2.637880e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*1.073420e-02 + str(h_CRCC5-z[1/m])*2.767580e-02) + 2.799930e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('rem4', '(2.922250e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*2.326230e-02 + str(h_CRCC5-z[1/m])*4.937480e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*2.516690e-02 + str(h_CRCC5-z[1/m])*5.131830e-02) + 5.116410e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('rem5', '(8.702380e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*5.518020e-02 + str(h_CRCC5-z[1/m])*6.617640e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*4.784460e-02 + str(h_CRCC5-z[1/m])*6.972580e-02) + 7.545060e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('rem6', '(7.920120e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*7.188340e-02 + str(h_CRCC5-z[1/m])*1.010020e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*7.716480e-02 + str(h_CRCC5-z[1/m])*1.017170e-01) + 1.028550e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('rem7', '(6.657510e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*6.455870e-02 + str(h_CRCC5-z[1/m])*9.618640e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*6.697830e-02 + str(h_CRCC5-z[1/m])*9.474250e-02) + 9.407990e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('rem8', '(8.173720e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*8.675590e-02 + str(h_CRCC5-z[1/m])*1.135520e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*8.190050e-02 + str(h_CRCC5-z[1/m])*1.121540e-01) + 1.115720e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat11', '(1.20571000e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*1.29658000e-01+str(h_CRCC5-z[1/m])*1.35922000e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*1.22458000e-01+str(h_CRCC5-z[1/m])*1.33634000e-01) + 1.34655000e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat12', '(3.53429000e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*4.30616000e-02+str(h_CRCC5-z[1/m])*4.16527000e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*3.51274000e-02+str(h_CRCC5-z[1/m])*4.27961000e-02) + 4.22138000e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat13', '(1.63476000e-06*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*1.93864000e-05+str(h_CRCC5-z[1/m])*1.39544000e-05) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*1.01755000e-06+str(h_CRCC5-z[1/m])*0.00000000e+00) + 7.41492000e-06*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat14', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat15', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat16', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat17', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat18', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat21', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat22', '(3.23741000e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*3.32764000e-01+str(h_CRCC5-z[1/m])*3.43906000e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*3.21243000e-01+str(h_CRCC5-z[1/m])*3.45745000e-01) + 3.45589000e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat23', '(1.99250000e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*2.08177000e-02+str(h_CRCC5-z[1/m])*1.76012000e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*1.71003000e-02+str(h_CRCC5-z[1/m])*1.78666000e-02) + 1.78505000e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat24', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat25', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat26', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat27', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat28', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat31', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat32', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat33', '(3.97399000e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*3.42625000e-01+str(h_CRCC5-z[1/m])*3.89902000e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*4.01737000e-01+str(h_CRCC5-z[1/m])*3.88915000e-01) + 3.88526000e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat34', '(1.54088000e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*1.16399000e-02+str(h_CRCC5-z[1/m])*8.03539000e-03) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*1.07322000e-02+str(h_CRCC5-z[1/m])*9.27060000e-03) + 9.37282000e-03*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat35', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat36', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat37', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat38', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat41', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat42', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat43', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat44', '(3.84700000e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*3.30393000e-01+str(h_CRCC5-z[1/m])*3.71803000e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*3.88745000e-01+str(h_CRCC5-z[1/m])*3.69901000e-01) + 3.69547000e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat45', '(2.92067000e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*2.32200000e-02+str(h_CRCC5-z[1/m])*2.19827000e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*2.51526000e-02+str(h_CRCC5-z[1/m])*2.42185000e-02) + 2.38722000e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat46', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat47', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat48', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat51', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat52', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat53', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat54', '(1.10752000e-04*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*1.45597000e-04+str(h_CRCC5-z[1/m])*2.16421000e-04) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*2.01503000e-04+str(h_CRCC5-z[1/m])*2.59684000e-04) + 1.58079000e-04*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat55', '(3.27789000e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*2.99033000e-01+str(h_CRCC5-z[1/m])*3.55443000e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*3.66737000e-01+str(h_CRCC5-z[1/m])*3.51937000e-01) + 3.46215000e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat56', '(8.55070000e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*5.41523000e-02+str(h_CRCC5-z[1/m])*3.73808000e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*4.68897000e-02+str(h_CRCC5-z[1/m])*4.07327000e-02) + 4.69555000e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat57', '(1.34811000e-03*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*7.28531000e-04+str(h_CRCC5-z[1/m])*5.13374000e-04) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*7.07524000e-04+str(h_CRCC5-z[1/m])*5.74652000e-04) + 6.46338000e-04*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat58', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*9.17304000e-07+str(h_CRCC5-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z[1/m])*0.00000000e+00) + 3.13438000e-06*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat61', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat62', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat63', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat64', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat65', '(9.59454000e-03*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*8.02864000e-03+str(h_CRCC5-z[1/m])*1.25858000e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*1.14832000e-02+str(h_CRCC5-z[1/m])*1.17071000e-02) + 1.04665000e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat66', '(3.37439000e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*2.84333000e-01+str(h_CRCC5-z[1/m])*3.22474000e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*3.39403000e-01+str(h_CRCC5-z[1/m])*3.22205000e-01) + 3.20628000e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat67', '(6.59970000e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*6.11258000e-02+str(h_CRCC5-z[1/m])*5.75048000e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*6.23252000e-02+str(h_CRCC5-z[1/m])*5.91323000e-02) + 6.16947000e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat68', '(3.50787000e-03*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*2.44400000e-03+str(h_CRCC5-z[1/m])*2.63730000e-03) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*3.26781000e-03+str(h_CRCC5-z[1/m])*2.78319000e-03) + 2.90856000e-03*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat71', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat72', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat73', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat74', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat75', '(1.20984000e-04*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*7.96657000e-05+str(h_CRCC5-z[1/m])*1.10312000e-04) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*1.23669000e-04+str(h_CRCC5-z[1/m])*1.06893000e-04) + 1.12434000e-04*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat76', '(4.48832000e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*3.94922000e-02+str(h_CRCC5-z[1/m])*4.50996000e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*4.56330000e-02+str(h_CRCC5-z[1/m])*4.42402000e-02) + 4.35263000e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat77', '(3.58806000e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*2.98736000e-01+str(h_CRCC5-z[1/m])*3.35290000e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*3.58226000e-01+str(h_CRCC5-z[1/m])*3.36328000e-01) + 3.37502000e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat78', '(2.14117000e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*2.45381000e-02+str(h_CRCC5-z[1/m])*2.19868000e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*2.10815000e-02+str(h_CRCC5-z[1/m])*2.23639000e-02) + 2.25449000e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat81', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat82', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat83', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat84', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat85', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*8.69984000e-08+str(h_CRCC5-z[1/m])*1.18280000e-06) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*0.00000000e+00+str(h_CRCC5-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat86', '(7.70782000e-03*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*5.20050000e-03+str(h_CRCC5-z[1/m])*6.77801000e-03) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*7.73877000e-03+str(h_CRCC5-z[1/m])*6.64676000e-03) + 6.93206000e-03*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat87', '(7.37246000e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*8.06958000e-02+str(h_CRCC5-z[1/m])*7.77715000e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*7.38891000e-02+str(h_CRCC5-z[1/m])*7.77713000e-02) + 7.72772000e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('scat88', '(3.68502000e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*2.99976000e-01+str(h_CRCC5-z[1/m])*3.42190000e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*3.68298000e-01+str(h_CRCC5-z[1/m])*3.43483000e-01) + 3.43666000e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('tot1', '(1.560110e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*1.734270e-01 + str(h_CRCC5-z[1/m])*1.789000e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*1.576700e-01 + str(h_CRCC5-z[1/m])*1.778030e-01) + 1.781840e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('tot2', '(3.436660e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*3.536170e-01 + str(h_CRCC5-z[1/m])*3.650660e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*3.383440e-01 + str(h_CRCC5-z[1/m])*3.671970e-01) + 3.670160e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('tot3', '(4.128100e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*3.542730e-01 + str(h_CRCC5-z[1/m])*4.162810e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*4.124710e-01 + str(h_CRCC5-z[1/m])*4.165910e-01) + 4.165250e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('tot4', '(4.139220e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*3.536550e-01 + str(h_CRCC5-z[1/m])*4.211780e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*4.139120e-01 + str(h_CRCC5-z[1/m])*4.212190e-01) + 4.207110e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('tot5', '(4.148130e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*3.542130e-01 + str(h_CRCC5-z[1/m])*4.216190e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*4.145820e-01 + str(h_CRCC5-z[1/m])*4.216630e-01) + 4.216660e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('tot6', '(4.166400e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*3.562170e-01 + str(h_CRCC5-z[1/m])*4.234760e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*4.165680e-01 + str(h_CRCC5-z[1/m])*4.239220e-01) + 4.234830e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('tot7', '(4.253810e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*3.632950e-01 + str(h_CRCC5-z[1/m])*4.314770e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*4.252040e-01 + str(h_CRCC5-z[1/m])*4.310700e-01) + 4.315820e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('tot8', '(4.502400e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC5)*3.867320e-01 + str(h_CRCC5-z[1/m])*4.557420e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC5)*4.501990e-01 + str(h_CRCC5-z[1/m])*4.556380e-01) + 4.552380e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('diff21', '2.57142857e-01*tot1[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('diff22', '2.57142857e-01*tot2[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('diff23', '2.57142857e-01*tot3[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('diff24', '2.57142857e-01*tot4[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('diff25', '2.57142857e-01*tot5[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('diff26', '2.57142857e-01*tot6[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('diff27', '2.57142857e-01*tot7[1/cm]');
model.component('mod1').variable('var_xsCRCC5').set('diff28', '2.57142857e-01*tot8[1/cm]');
model.component('mod1').variable('var_xsCRCC5').selection.geom('geom1', 3);
model.component('mod1').variable('var_xsCRCC5').selection.set([15]);
model.component('mod1').variable.create('var_xsCRCC6');
model.component('mod1').variable('var_xsCRCC6').set('beta1', '(6.696930e-03*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*6.696930e-03 + str(h_CRCC6-z[1/m])*6.696930e-03) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*6.696930e-03 + str(h_CRCC6-z[1/m])*6.696930e-03) + 6.696930e-03*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC6').set('betas1', '(2.073830e-04*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*2.073830e-04 + str(h_CRCC6-z[1/m])*2.073830e-04) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*2.073830e-04 + str(h_CRCC6-z[1/m])*2.073830e-04) + 2.073830e-04*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC6').set('betas2', '(1.113340e-03*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*1.113340e-03 + str(h_CRCC6-z[1/m])*1.113340e-03) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*1.113340e-03 + str(h_CRCC6-z[1/m])*1.113340e-03) + 1.113340e-03*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC6').set('betas3', '(1.083350e-03*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*1.083350e-03 + str(h_CRCC6-z[1/m])*1.083350e-03) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*1.083350e-03 + str(h_CRCC6-z[1/m])*1.083350e-03) + 1.083350e-03*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC6').set('betas4', '(3.064820e-03*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*3.064820e-03 + str(h_CRCC6-z[1/m])*3.064820e-03) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*3.064820e-03 + str(h_CRCC6-z[1/m])*3.064820e-03) + 3.064820e-03*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC6').set('betas5', '(9.107700e-04*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*9.107700e-04 + str(h_CRCC6-z[1/m])*9.107700e-04) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*9.107700e-04 + str(h_CRCC6-z[1/m])*9.107700e-04) + 9.107700e-04*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC6').set('betas6', '(3.172650e-04*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*3.172650e-04 + str(h_CRCC6-z[1/m])*3.172650e-04) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*3.172650e-04 + str(h_CRCC6-z[1/m])*3.172650e-04) + 3.172650e-04*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC6').set('chid1', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*0.000000e+00 + str(h_CRCC6-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*0.000000e+00 + str(h_CRCC6-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC6').set('chid2', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*0.000000e+00 + str(h_CRCC6-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*0.000000e+00 + str(h_CRCC6-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC6').set('chid3', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*0.000000e+00 + str(h_CRCC6-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*0.000000e+00 + str(h_CRCC6-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC6').set('chid4', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*0.000000e+00 + str(h_CRCC6-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*0.000000e+00 + str(h_CRCC6-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC6').set('chid5', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*0.000000e+00 + str(h_CRCC6-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*0.000000e+00 + str(h_CRCC6-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC6').set('chid6', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*0.000000e+00 + str(h_CRCC6-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*0.000000e+00 + str(h_CRCC6-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC6').set('chid7', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*0.000000e+00 + str(h_CRCC6-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*0.000000e+00 + str(h_CRCC6-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC6').set('chid8', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*0.000000e+00 + str(h_CRCC6-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*0.000000e+00 + str(h_CRCC6-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC6').set('chip1', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*0.000000e+00 + str(h_CRCC6-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*0.000000e+00 + str(h_CRCC6-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC6').set('chip2', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*0.000000e+00 + str(h_CRCC6-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*0.000000e+00 + str(h_CRCC6-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC6').set('chip3', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*0.000000e+00 + str(h_CRCC6-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*0.000000e+00 + str(h_CRCC6-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC6').set('chip4', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*0.000000e+00 + str(h_CRCC6-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*0.000000e+00 + str(h_CRCC6-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC6').set('chip5', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*0.000000e+00 + str(h_CRCC6-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*0.000000e+00 + str(h_CRCC6-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC6').set('chip6', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*0.000000e+00 + str(h_CRCC6-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*0.000000e+00 + str(h_CRCC6-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC6').set('chip7', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*0.000000e+00 + str(h_CRCC6-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*0.000000e+00 + str(h_CRCC6-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC6').set('chip8', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*0.000000e+00 + str(h_CRCC6-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*0.000000e+00 + str(h_CRCC6-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC6').set('chit1', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*0.000000e+00 + str(h_CRCC6-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*0.000000e+00 + str(h_CRCC6-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC6').set('chit2', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*0.000000e+00 + str(h_CRCC6-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*0.000000e+00 + str(h_CRCC6-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC6').set('chit3', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*0.000000e+00 + str(h_CRCC6-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*0.000000e+00 + str(h_CRCC6-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC6').set('chit4', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*0.000000e+00 + str(h_CRCC6-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*0.000000e+00 + str(h_CRCC6-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC6').set('chit5', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*0.000000e+00 + str(h_CRCC6-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*0.000000e+00 + str(h_CRCC6-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC6').set('chit6', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*0.000000e+00 + str(h_CRCC6-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*0.000000e+00 + str(h_CRCC6-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC6').set('chit7', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*0.000000e+00 + str(h_CRCC6-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*0.000000e+00 + str(h_CRCC6-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC6').set('chit8', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*0.000000e+00 + str(h_CRCC6-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*0.000000e+00 + str(h_CRCC6-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC6').set('diff11', '(2.484840e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*2.339710e+00 + str(h_CRCC6-z[1/m])*2.200870e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*2.414630e+00 + str(h_CRCC6-z[1/m])*2.331510e+00) + 2.261660e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC6').set('diff12', '(1.107680e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*1.067740e+00 + str(h_CRCC6-z[1/m])*1.045820e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*1.131350e+00 + str(h_CRCC6-z[1/m])*1.037380e+00) + 1.038690e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC6').set('diff13', '(8.557780e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*9.958500e-01 + str(h_CRCC6-z[1/m])*8.464810e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*8.567050e-01 + str(h_CRCC6-z[1/m])*8.454370e-01) + 8.457890e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC6').set('diff14', '(8.532600e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*9.969800e-01 + str(h_CRCC6-z[1/m])*8.351450e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*8.527250e-01 + str(h_CRCC6-z[1/m])*8.339070e-01) + 8.356690e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC6').set('diff15', '(8.484360e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*9.934540e-01 + str(h_CRCC6-z[1/m])*8.327330e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*8.498900e-01 + str(h_CRCC6-z[1/m])*8.379880e-01) + 8.357400e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC6').set('diff16', '(8.393000e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*9.828500e-01 + str(h_CRCC6-z[1/m])*8.233360e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*8.397180e-01 + str(h_CRCC6-z[1/m])*8.261060e-01) + 8.248720e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC6').set('diff17', '(8.050840e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*9.492230e-01 + str(h_CRCC6-z[1/m])*7.948120e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*8.058330e-01 + str(h_CRCC6-z[1/m])*7.957680e-01) + 7.951570e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC6').set('diff18', '(7.194070e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*8.556820e-01 + str(h_CRCC6-z[1/m])*7.181650e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*7.196690e-01 + str(h_CRCC6-z[1/m])*7.235190e-01) + 7.174000e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC6').set('fiss1', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*0.000000e+00 + str(h_CRCC6-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*0.000000e+00 + str(h_CRCC6-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('fiss2', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*0.000000e+00 + str(h_CRCC6-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*0.000000e+00 + str(h_CRCC6-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('fiss3', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*0.000000e+00 + str(h_CRCC6-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*0.000000e+00 + str(h_CRCC6-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('fiss4', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*0.000000e+00 + str(h_CRCC6-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*0.000000e+00 + str(h_CRCC6-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('fiss5', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*0.000000e+00 + str(h_CRCC6-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*0.000000e+00 + str(h_CRCC6-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('fiss6', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*0.000000e+00 + str(h_CRCC6-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*0.000000e+00 + str(h_CRCC6-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('fiss7', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*0.000000e+00 + str(h_CRCC6-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*0.000000e+00 + str(h_CRCC6-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('fiss8', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*0.000000e+00 + str(h_CRCC6-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*0.000000e+00 + str(h_CRCC6-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('invV1', '(4.786430e-10*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*4.837380e-10 + str(h_CRCC6-z[1/m])*4.832550e-10) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*4.833600e-10 + str(h_CRCC6-z[1/m])*4.826690e-10) + 4.811490e-10*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC6').set('invV2', '(2.082440e-09*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*2.181670e-09 + str(h_CRCC6-z[1/m])*2.001170e-09) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*1.982020e-09 + str(h_CRCC6-z[1/m])*2.018060e-09) + 2.020330e-09*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC6').set('invV3', '(3.867390e-08*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*3.692540e-08 + str(h_CRCC6-z[1/m])*2.916520e-08) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*3.262790e-08 + str(h_CRCC6-z[1/m])*3.086990e-08) + 3.106400e-08*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC6').set('invV4', '(2.127600e-07*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*2.105600e-07 + str(h_CRCC6-z[1/m])*2.024270e-07) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*2.057070e-07 + str(h_CRCC6-z[1/m])*2.057540e-07) + 2.061540e-07*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC6').set('invV5', '(7.878220e-07*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*7.291550e-07 + str(h_CRCC6-z[1/m])*6.672700e-07) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*6.879420e-07 + str(h_CRCC6-z[1/m])*6.749300e-07) + 6.944360e-07*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC6').set('invV6', '(1.383110e-06*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*1.382130e-06 + str(h_CRCC6-z[1/m])*1.348700e-06) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*1.365850e-06 + str(h_CRCC6-z[1/m])*1.359270e-06) + 1.369630e-06*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC6').set('invV7', '(2.170220e-06*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*2.173670e-06 + str(h_CRCC6-z[1/m])*2.149620e-06) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*2.161900e-06 + str(h_CRCC6-z[1/m])*2.157920e-06) + 2.164240e-06*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC6').set('invV8', '(4.160500e-06*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*4.188080e-06 + str(h_CRCC6-z[1/m])*4.142870e-06) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*4.150400e-06 + str(h_CRCC6-z[1/m])*4.162100e-06) + 4.165470e-06*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC6').set('kappa1', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*0.000000e+00 + str(h_CRCC6-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*0.000000e+00 + str(h_CRCC6-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC6').set('kappa2', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*0.000000e+00 + str(h_CRCC6-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*0.000000e+00 + str(h_CRCC6-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC6').set('kappa3', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*0.000000e+00 + str(h_CRCC6-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*0.000000e+00 + str(h_CRCC6-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC6').set('kappa4', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*0.000000e+00 + str(h_CRCC6-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*0.000000e+00 + str(h_CRCC6-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC6').set('kappa5', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*0.000000e+00 + str(h_CRCC6-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*0.000000e+00 + str(h_CRCC6-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC6').set('kappa6', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*0.000000e+00 + str(h_CRCC6-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*0.000000e+00 + str(h_CRCC6-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC6').set('kappa7', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*0.000000e+00 + str(h_CRCC6-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*0.000000e+00 + str(h_CRCC6-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC6').set('kappa8', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*0.000000e+00 + str(h_CRCC6-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*0.000000e+00 + str(h_CRCC6-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC6').set('lambdas1', '(1.092920e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*1.092920e-02 + str(h_CRCC6-z[1/m])*1.092920e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*1.092920e-02 + str(h_CRCC6-z[1/m])*1.092920e-02) + 1.092920e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/s]');
model.component('mod1').variable('var_xsCRCC6').set('lambdas2', '(3.181930e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*3.181930e-02 + str(h_CRCC6-z[1/m])*3.181930e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*3.181930e-02 + str(h_CRCC6-z[1/m])*3.181930e-02) + 3.181930e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/s]');
model.component('mod1').variable('var_xsCRCC6').set('lambdas3', '(1.094020e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*1.094020e-01 + str(h_CRCC6-z[1/m])*1.094020e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*1.094020e-01 + str(h_CRCC6-z[1/m])*1.094020e-01) + 1.094020e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/s]');
model.component('mod1').variable('var_xsCRCC6').set('lambdas4', '(3.171150e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*3.171150e-01 + str(h_CRCC6-z[1/m])*3.171150e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*3.171150e-01 + str(h_CRCC6-z[1/m])*3.171150e-01) + 3.171150e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/s]');
model.component('mod1').variable('var_xsCRCC6').set('lambdas5', '(1.353010e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*1.353010e+00 + str(h_CRCC6-z[1/m])*1.353010e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*1.353010e+00 + str(h_CRCC6-z[1/m])*1.353010e+00) + 1.353010e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/s]');
model.component('mod1').variable('var_xsCRCC6').set('lambdas6', '(8.339770e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*8.339770e+00 + str(h_CRCC6-z[1/m])*8.339770e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*8.339770e+00 + str(h_CRCC6-z[1/m])*8.339770e+00) + 8.339770e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/s]');
model.component('mod1').variable('var_xsCRCC6').set('nsf1', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*0.000000e+00 + str(h_CRCC6-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*0.000000e+00 + str(h_CRCC6-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('nsf2', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*0.000000e+00 + str(h_CRCC6-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*0.000000e+00 + str(h_CRCC6-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('nsf3', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*0.000000e+00 + str(h_CRCC6-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*0.000000e+00 + str(h_CRCC6-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('nsf4', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*0.000000e+00 + str(h_CRCC6-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*0.000000e+00 + str(h_CRCC6-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('nsf5', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*0.000000e+00 + str(h_CRCC6-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*0.000000e+00 + str(h_CRCC6-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('nsf6', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*0.000000e+00 + str(h_CRCC6-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*0.000000e+00 + str(h_CRCC6-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('nsf7', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*0.000000e+00 + str(h_CRCC6-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*0.000000e+00 + str(h_CRCC6-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('nsf8', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*0.000000e+00 + str(h_CRCC6-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*0.000000e+00 + str(h_CRCC6-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('rem1', '(3.543990e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*4.376830e-02 + str(h_CRCC6-z[1/m])*4.297750e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*3.521190e-02 + str(h_CRCC6-z[1/m])*4.416890e-02) + 4.352830e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('rem2', '(1.992510e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*2.085290e-02 + str(h_CRCC6-z[1/m])*2.115970e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*1.710040e-02 + str(h_CRCC6-z[1/m])*2.145260e-02) + 2.142710e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('rem3', '(1.541150e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*1.164790e-02 + str(h_CRCC6-z[1/m])*2.637880e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*1.073420e-02 + str(h_CRCC6-z[1/m])*2.767580e-02) + 2.799930e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('rem4', '(2.922250e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*2.326230e-02 + str(h_CRCC6-z[1/m])*4.937480e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*2.516690e-02 + str(h_CRCC6-z[1/m])*5.131830e-02) + 5.116410e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('rem5', '(8.702380e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*5.518020e-02 + str(h_CRCC6-z[1/m])*6.617640e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*4.784460e-02 + str(h_CRCC6-z[1/m])*6.972580e-02) + 7.545060e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('rem6', '(7.920120e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*7.188340e-02 + str(h_CRCC6-z[1/m])*1.010020e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*7.716480e-02 + str(h_CRCC6-z[1/m])*1.017170e-01) + 1.028550e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('rem7', '(6.657510e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*6.455870e-02 + str(h_CRCC6-z[1/m])*9.618640e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*6.697830e-02 + str(h_CRCC6-z[1/m])*9.474250e-02) + 9.407990e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('rem8', '(8.173720e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*8.675590e-02 + str(h_CRCC6-z[1/m])*1.135520e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*8.190050e-02 + str(h_CRCC6-z[1/m])*1.121540e-01) + 1.115720e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat11', '(1.20571000e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*1.29658000e-01+str(h_CRCC6-z[1/m])*1.35922000e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*1.22458000e-01+str(h_CRCC6-z[1/m])*1.33634000e-01) + 1.34655000e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat12', '(3.53429000e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*4.30616000e-02+str(h_CRCC6-z[1/m])*4.16527000e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*3.51274000e-02+str(h_CRCC6-z[1/m])*4.27961000e-02) + 4.22138000e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat13', '(1.63476000e-06*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*1.93864000e-05+str(h_CRCC6-z[1/m])*1.39544000e-05) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*1.01755000e-06+str(h_CRCC6-z[1/m])*0.00000000e+00) + 7.41492000e-06*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat14', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat15', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat16', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat17', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat18', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat21', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat22', '(3.23741000e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*3.32764000e-01+str(h_CRCC6-z[1/m])*3.43906000e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*3.21243000e-01+str(h_CRCC6-z[1/m])*3.45745000e-01) + 3.45589000e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat23', '(1.99250000e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*2.08177000e-02+str(h_CRCC6-z[1/m])*1.76012000e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*1.71003000e-02+str(h_CRCC6-z[1/m])*1.78666000e-02) + 1.78505000e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat24', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat25', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat26', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat27', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat28', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat31', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat32', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat33', '(3.97399000e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*3.42625000e-01+str(h_CRCC6-z[1/m])*3.89902000e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*4.01737000e-01+str(h_CRCC6-z[1/m])*3.88915000e-01) + 3.88526000e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat34', '(1.54088000e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*1.16399000e-02+str(h_CRCC6-z[1/m])*8.03539000e-03) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*1.07322000e-02+str(h_CRCC6-z[1/m])*9.27060000e-03) + 9.37282000e-03*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat35', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat36', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat37', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat38', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat41', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat42', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat43', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat44', '(3.84700000e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*3.30393000e-01+str(h_CRCC6-z[1/m])*3.71803000e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*3.88745000e-01+str(h_CRCC6-z[1/m])*3.69901000e-01) + 3.69547000e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat45', '(2.92067000e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*2.32200000e-02+str(h_CRCC6-z[1/m])*2.19827000e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*2.51526000e-02+str(h_CRCC6-z[1/m])*2.42185000e-02) + 2.38722000e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat46', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat47', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat48', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat51', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat52', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat53', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat54', '(1.10752000e-04*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*1.45597000e-04+str(h_CRCC6-z[1/m])*2.16421000e-04) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*2.01503000e-04+str(h_CRCC6-z[1/m])*2.59684000e-04) + 1.58079000e-04*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat55', '(3.27789000e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*2.99033000e-01+str(h_CRCC6-z[1/m])*3.55443000e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*3.66737000e-01+str(h_CRCC6-z[1/m])*3.51937000e-01) + 3.46215000e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat56', '(8.55070000e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*5.41523000e-02+str(h_CRCC6-z[1/m])*3.73808000e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*4.68897000e-02+str(h_CRCC6-z[1/m])*4.07327000e-02) + 4.69555000e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat57', '(1.34811000e-03*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*7.28531000e-04+str(h_CRCC6-z[1/m])*5.13374000e-04) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*7.07524000e-04+str(h_CRCC6-z[1/m])*5.74652000e-04) + 6.46338000e-04*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat58', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*9.17304000e-07+str(h_CRCC6-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z[1/m])*0.00000000e+00) + 3.13438000e-06*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat61', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat62', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat63', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat64', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat65', '(9.59454000e-03*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*8.02864000e-03+str(h_CRCC6-z[1/m])*1.25858000e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*1.14832000e-02+str(h_CRCC6-z[1/m])*1.17071000e-02) + 1.04665000e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat66', '(3.37439000e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*2.84333000e-01+str(h_CRCC6-z[1/m])*3.22474000e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*3.39403000e-01+str(h_CRCC6-z[1/m])*3.22205000e-01) + 3.20628000e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat67', '(6.59970000e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*6.11258000e-02+str(h_CRCC6-z[1/m])*5.75048000e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*6.23252000e-02+str(h_CRCC6-z[1/m])*5.91323000e-02) + 6.16947000e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat68', '(3.50787000e-03*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*2.44400000e-03+str(h_CRCC6-z[1/m])*2.63730000e-03) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*3.26781000e-03+str(h_CRCC6-z[1/m])*2.78319000e-03) + 2.90856000e-03*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat71', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat72', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat73', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat74', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat75', '(1.20984000e-04*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*7.96657000e-05+str(h_CRCC6-z[1/m])*1.10312000e-04) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*1.23669000e-04+str(h_CRCC6-z[1/m])*1.06893000e-04) + 1.12434000e-04*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat76', '(4.48832000e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*3.94922000e-02+str(h_CRCC6-z[1/m])*4.50996000e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*4.56330000e-02+str(h_CRCC6-z[1/m])*4.42402000e-02) + 4.35263000e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat77', '(3.58806000e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*2.98736000e-01+str(h_CRCC6-z[1/m])*3.35290000e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*3.58226000e-01+str(h_CRCC6-z[1/m])*3.36328000e-01) + 3.37502000e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat78', '(2.14117000e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*2.45381000e-02+str(h_CRCC6-z[1/m])*2.19868000e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*2.10815000e-02+str(h_CRCC6-z[1/m])*2.23639000e-02) + 2.25449000e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat81', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat82', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat83', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat84', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat85', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*8.69984000e-08+str(h_CRCC6-z[1/m])*1.18280000e-06) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*0.00000000e+00+str(h_CRCC6-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat86', '(7.70782000e-03*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*5.20050000e-03+str(h_CRCC6-z[1/m])*6.77801000e-03) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*7.73877000e-03+str(h_CRCC6-z[1/m])*6.64676000e-03) + 6.93206000e-03*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat87', '(7.37246000e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*8.06958000e-02+str(h_CRCC6-z[1/m])*7.77715000e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*7.38891000e-02+str(h_CRCC6-z[1/m])*7.77713000e-02) + 7.72772000e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('scat88', '(3.68502000e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*2.99976000e-01+str(h_CRCC6-z[1/m])*3.42190000e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*3.68298000e-01+str(h_CRCC6-z[1/m])*3.43483000e-01) + 3.43666000e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('tot1', '(1.560110e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*1.734270e-01 + str(h_CRCC6-z[1/m])*1.789000e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*1.576700e-01 + str(h_CRCC6-z[1/m])*1.778030e-01) + 1.781840e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('tot2', '(3.436660e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*3.536170e-01 + str(h_CRCC6-z[1/m])*3.650660e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*3.383440e-01 + str(h_CRCC6-z[1/m])*3.671970e-01) + 3.670160e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('tot3', '(4.128100e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*3.542730e-01 + str(h_CRCC6-z[1/m])*4.162810e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*4.124710e-01 + str(h_CRCC6-z[1/m])*4.165910e-01) + 4.165250e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('tot4', '(4.139220e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*3.536550e-01 + str(h_CRCC6-z[1/m])*4.211780e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*4.139120e-01 + str(h_CRCC6-z[1/m])*4.212190e-01) + 4.207110e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('tot5', '(4.148130e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*3.542130e-01 + str(h_CRCC6-z[1/m])*4.216190e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*4.145820e-01 + str(h_CRCC6-z[1/m])*4.216630e-01) + 4.216660e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('tot6', '(4.166400e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*3.562170e-01 + str(h_CRCC6-z[1/m])*4.234760e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*4.165680e-01 + str(h_CRCC6-z[1/m])*4.239220e-01) + 4.234830e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('tot7', '(4.253810e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*3.632950e-01 + str(h_CRCC6-z[1/m])*4.314770e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*4.252040e-01 + str(h_CRCC6-z[1/m])*4.310700e-01) + 4.315820e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('tot8', '(4.502400e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC6)*3.867320e-01 + str(h_CRCC6-z[1/m])*4.557420e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC6)*4.501990e-01 + str(h_CRCC6-z[1/m])*4.556380e-01) + 4.552380e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('diff21', '2.57142857e-01*tot1[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('diff22', '2.57142857e-01*tot2[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('diff23', '2.57142857e-01*tot3[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('diff24', '2.57142857e-01*tot4[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('diff25', '2.57142857e-01*tot5[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('diff26', '2.57142857e-01*tot6[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('diff27', '2.57142857e-01*tot7[1/cm]');
model.component('mod1').variable('var_xsCRCC6').set('diff28', '2.57142857e-01*tot8[1/cm]');
model.component('mod1').variable('var_xsCRCC6').selection.geom('geom1', 3);
model.component('mod1').variable('var_xsCRCC6').selection.set([16]);
model.component('mod1').variable.create('var_xsCRCC7');
model.component('mod1').variable('var_xsCRCC7').set('beta1', '(6.696930e-03*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*6.696930e-03 + str(h_CRCC7-z[1/m])*6.696930e-03) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*6.696930e-03 + str(h_CRCC7-z[1/m])*6.696930e-03) + 6.696930e-03*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC7').set('betas1', '(2.073830e-04*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*2.073830e-04 + str(h_CRCC7-z[1/m])*2.073830e-04) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*2.073830e-04 + str(h_CRCC7-z[1/m])*2.073830e-04) + 2.073830e-04*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC7').set('betas2', '(1.113340e-03*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*1.113340e-03 + str(h_CRCC7-z[1/m])*1.113340e-03) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*1.113340e-03 + str(h_CRCC7-z[1/m])*1.113340e-03) + 1.113340e-03*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC7').set('betas3', '(1.083350e-03*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*1.083350e-03 + str(h_CRCC7-z[1/m])*1.083350e-03) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*1.083350e-03 + str(h_CRCC7-z[1/m])*1.083350e-03) + 1.083350e-03*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC7').set('betas4', '(3.064820e-03*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*3.064820e-03 + str(h_CRCC7-z[1/m])*3.064820e-03) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*3.064820e-03 + str(h_CRCC7-z[1/m])*3.064820e-03) + 3.064820e-03*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC7').set('betas5', '(9.107700e-04*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*9.107700e-04 + str(h_CRCC7-z[1/m])*9.107700e-04) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*9.107700e-04 + str(h_CRCC7-z[1/m])*9.107700e-04) + 9.107700e-04*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC7').set('betas6', '(3.172650e-04*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*3.172650e-04 + str(h_CRCC7-z[1/m])*3.172650e-04) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*3.172650e-04 + str(h_CRCC7-z[1/m])*3.172650e-04) + 3.172650e-04*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC7').set('chid1', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*0.000000e+00 + str(h_CRCC7-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*0.000000e+00 + str(h_CRCC7-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC7').set('chid2', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*0.000000e+00 + str(h_CRCC7-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*0.000000e+00 + str(h_CRCC7-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC7').set('chid3', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*0.000000e+00 + str(h_CRCC7-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*0.000000e+00 + str(h_CRCC7-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC7').set('chid4', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*0.000000e+00 + str(h_CRCC7-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*0.000000e+00 + str(h_CRCC7-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC7').set('chid5', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*0.000000e+00 + str(h_CRCC7-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*0.000000e+00 + str(h_CRCC7-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC7').set('chid6', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*0.000000e+00 + str(h_CRCC7-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*0.000000e+00 + str(h_CRCC7-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC7').set('chid7', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*0.000000e+00 + str(h_CRCC7-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*0.000000e+00 + str(h_CRCC7-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC7').set('chid8', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*0.000000e+00 + str(h_CRCC7-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*0.000000e+00 + str(h_CRCC7-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC7').set('chip1', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*0.000000e+00 + str(h_CRCC7-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*0.000000e+00 + str(h_CRCC7-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC7').set('chip2', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*0.000000e+00 + str(h_CRCC7-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*0.000000e+00 + str(h_CRCC7-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC7').set('chip3', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*0.000000e+00 + str(h_CRCC7-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*0.000000e+00 + str(h_CRCC7-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC7').set('chip4', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*0.000000e+00 + str(h_CRCC7-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*0.000000e+00 + str(h_CRCC7-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC7').set('chip5', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*0.000000e+00 + str(h_CRCC7-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*0.000000e+00 + str(h_CRCC7-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC7').set('chip6', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*0.000000e+00 + str(h_CRCC7-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*0.000000e+00 + str(h_CRCC7-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC7').set('chip7', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*0.000000e+00 + str(h_CRCC7-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*0.000000e+00 + str(h_CRCC7-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC7').set('chip8', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*0.000000e+00 + str(h_CRCC7-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*0.000000e+00 + str(h_CRCC7-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC7').set('chit1', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*0.000000e+00 + str(h_CRCC7-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*0.000000e+00 + str(h_CRCC7-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC7').set('chit2', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*0.000000e+00 + str(h_CRCC7-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*0.000000e+00 + str(h_CRCC7-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC7').set('chit3', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*0.000000e+00 + str(h_CRCC7-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*0.000000e+00 + str(h_CRCC7-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC7').set('chit4', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*0.000000e+00 + str(h_CRCC7-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*0.000000e+00 + str(h_CRCC7-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC7').set('chit5', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*0.000000e+00 + str(h_CRCC7-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*0.000000e+00 + str(h_CRCC7-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC7').set('chit6', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*0.000000e+00 + str(h_CRCC7-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*0.000000e+00 + str(h_CRCC7-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC7').set('chit7', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*0.000000e+00 + str(h_CRCC7-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*0.000000e+00 + str(h_CRCC7-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC7').set('chit8', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*0.000000e+00 + str(h_CRCC7-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*0.000000e+00 + str(h_CRCC7-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC7').set('diff11', '(2.484840e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*2.339710e+00 + str(h_CRCC7-z[1/m])*2.200870e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*2.414630e+00 + str(h_CRCC7-z[1/m])*2.331510e+00) + 2.261660e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC7').set('diff12', '(1.107680e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*1.067740e+00 + str(h_CRCC7-z[1/m])*1.045820e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*1.131350e+00 + str(h_CRCC7-z[1/m])*1.037380e+00) + 1.038690e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC7').set('diff13', '(8.557780e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*9.958500e-01 + str(h_CRCC7-z[1/m])*8.464810e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*8.567050e-01 + str(h_CRCC7-z[1/m])*8.454370e-01) + 8.457890e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC7').set('diff14', '(8.532600e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*9.969800e-01 + str(h_CRCC7-z[1/m])*8.351450e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*8.527250e-01 + str(h_CRCC7-z[1/m])*8.339070e-01) + 8.356690e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC7').set('diff15', '(8.484360e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*9.934540e-01 + str(h_CRCC7-z[1/m])*8.327330e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*8.498900e-01 + str(h_CRCC7-z[1/m])*8.379880e-01) + 8.357400e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC7').set('diff16', '(8.393000e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*9.828500e-01 + str(h_CRCC7-z[1/m])*8.233360e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*8.397180e-01 + str(h_CRCC7-z[1/m])*8.261060e-01) + 8.248720e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC7').set('diff17', '(8.050840e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*9.492230e-01 + str(h_CRCC7-z[1/m])*7.948120e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*8.058330e-01 + str(h_CRCC7-z[1/m])*7.957680e-01) + 7.951570e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC7').set('diff18', '(7.194070e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*8.556820e-01 + str(h_CRCC7-z[1/m])*7.181650e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*7.196690e-01 + str(h_CRCC7-z[1/m])*7.235190e-01) + 7.174000e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC7').set('fiss1', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*0.000000e+00 + str(h_CRCC7-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*0.000000e+00 + str(h_CRCC7-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('fiss2', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*0.000000e+00 + str(h_CRCC7-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*0.000000e+00 + str(h_CRCC7-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('fiss3', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*0.000000e+00 + str(h_CRCC7-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*0.000000e+00 + str(h_CRCC7-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('fiss4', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*0.000000e+00 + str(h_CRCC7-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*0.000000e+00 + str(h_CRCC7-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('fiss5', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*0.000000e+00 + str(h_CRCC7-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*0.000000e+00 + str(h_CRCC7-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('fiss6', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*0.000000e+00 + str(h_CRCC7-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*0.000000e+00 + str(h_CRCC7-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('fiss7', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*0.000000e+00 + str(h_CRCC7-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*0.000000e+00 + str(h_CRCC7-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('fiss8', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*0.000000e+00 + str(h_CRCC7-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*0.000000e+00 + str(h_CRCC7-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('invV1', '(4.786430e-10*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*4.837380e-10 + str(h_CRCC7-z[1/m])*4.832550e-10) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*4.833600e-10 + str(h_CRCC7-z[1/m])*4.826690e-10) + 4.811490e-10*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC7').set('invV2', '(2.082440e-09*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*2.181670e-09 + str(h_CRCC7-z[1/m])*2.001170e-09) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*1.982020e-09 + str(h_CRCC7-z[1/m])*2.018060e-09) + 2.020330e-09*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC7').set('invV3', '(3.867390e-08*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*3.692540e-08 + str(h_CRCC7-z[1/m])*2.916520e-08) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*3.262790e-08 + str(h_CRCC7-z[1/m])*3.086990e-08) + 3.106400e-08*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC7').set('invV4', '(2.127600e-07*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*2.105600e-07 + str(h_CRCC7-z[1/m])*2.024270e-07) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*2.057070e-07 + str(h_CRCC7-z[1/m])*2.057540e-07) + 2.061540e-07*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC7').set('invV5', '(7.878220e-07*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*7.291550e-07 + str(h_CRCC7-z[1/m])*6.672700e-07) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*6.879420e-07 + str(h_CRCC7-z[1/m])*6.749300e-07) + 6.944360e-07*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC7').set('invV6', '(1.383110e-06*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*1.382130e-06 + str(h_CRCC7-z[1/m])*1.348700e-06) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*1.365850e-06 + str(h_CRCC7-z[1/m])*1.359270e-06) + 1.369630e-06*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC7').set('invV7', '(2.170220e-06*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*2.173670e-06 + str(h_CRCC7-z[1/m])*2.149620e-06) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*2.161900e-06 + str(h_CRCC7-z[1/m])*2.157920e-06) + 2.164240e-06*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC7').set('invV8', '(4.160500e-06*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*4.188080e-06 + str(h_CRCC7-z[1/m])*4.142870e-06) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*4.150400e-06 + str(h_CRCC7-z[1/m])*4.162100e-06) + 4.165470e-06*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC7').set('kappa1', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*0.000000e+00 + str(h_CRCC7-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*0.000000e+00 + str(h_CRCC7-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC7').set('kappa2', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*0.000000e+00 + str(h_CRCC7-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*0.000000e+00 + str(h_CRCC7-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC7').set('kappa3', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*0.000000e+00 + str(h_CRCC7-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*0.000000e+00 + str(h_CRCC7-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC7').set('kappa4', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*0.000000e+00 + str(h_CRCC7-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*0.000000e+00 + str(h_CRCC7-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC7').set('kappa5', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*0.000000e+00 + str(h_CRCC7-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*0.000000e+00 + str(h_CRCC7-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC7').set('kappa6', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*0.000000e+00 + str(h_CRCC7-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*0.000000e+00 + str(h_CRCC7-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC7').set('kappa7', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*0.000000e+00 + str(h_CRCC7-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*0.000000e+00 + str(h_CRCC7-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC7').set('kappa8', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*0.000000e+00 + str(h_CRCC7-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*0.000000e+00 + str(h_CRCC7-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC7').set('lambdas1', '(1.092920e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*1.092920e-02 + str(h_CRCC7-z[1/m])*1.092920e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*1.092920e-02 + str(h_CRCC7-z[1/m])*1.092920e-02) + 1.092920e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/s]');
model.component('mod1').variable('var_xsCRCC7').set('lambdas2', '(3.181930e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*3.181930e-02 + str(h_CRCC7-z[1/m])*3.181930e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*3.181930e-02 + str(h_CRCC7-z[1/m])*3.181930e-02) + 3.181930e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/s]');
model.component('mod1').variable('var_xsCRCC7').set('lambdas3', '(1.094020e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*1.094020e-01 + str(h_CRCC7-z[1/m])*1.094020e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*1.094020e-01 + str(h_CRCC7-z[1/m])*1.094020e-01) + 1.094020e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/s]');
model.component('mod1').variable('var_xsCRCC7').set('lambdas4', '(3.171150e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*3.171150e-01 + str(h_CRCC7-z[1/m])*3.171150e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*3.171150e-01 + str(h_CRCC7-z[1/m])*3.171150e-01) + 3.171150e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/s]');
model.component('mod1').variable('var_xsCRCC7').set('lambdas5', '(1.353010e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*1.353010e+00 + str(h_CRCC7-z[1/m])*1.353010e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*1.353010e+00 + str(h_CRCC7-z[1/m])*1.353010e+00) + 1.353010e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/s]');
model.component('mod1').variable('var_xsCRCC7').set('lambdas6', '(8.339770e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*8.339770e+00 + str(h_CRCC7-z[1/m])*8.339770e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*8.339770e+00 + str(h_CRCC7-z[1/m])*8.339770e+00) + 8.339770e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/s]');
model.component('mod1').variable('var_xsCRCC7').set('nsf1', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*0.000000e+00 + str(h_CRCC7-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*0.000000e+00 + str(h_CRCC7-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('nsf2', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*0.000000e+00 + str(h_CRCC7-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*0.000000e+00 + str(h_CRCC7-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('nsf3', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*0.000000e+00 + str(h_CRCC7-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*0.000000e+00 + str(h_CRCC7-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('nsf4', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*0.000000e+00 + str(h_CRCC7-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*0.000000e+00 + str(h_CRCC7-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('nsf5', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*0.000000e+00 + str(h_CRCC7-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*0.000000e+00 + str(h_CRCC7-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('nsf6', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*0.000000e+00 + str(h_CRCC7-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*0.000000e+00 + str(h_CRCC7-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('nsf7', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*0.000000e+00 + str(h_CRCC7-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*0.000000e+00 + str(h_CRCC7-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('nsf8', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*0.000000e+00 + str(h_CRCC7-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*0.000000e+00 + str(h_CRCC7-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('rem1', '(3.543990e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*4.376830e-02 + str(h_CRCC7-z[1/m])*4.297750e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*3.521190e-02 + str(h_CRCC7-z[1/m])*4.416890e-02) + 4.352830e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('rem2', '(1.992510e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*2.085290e-02 + str(h_CRCC7-z[1/m])*2.115970e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*1.710040e-02 + str(h_CRCC7-z[1/m])*2.145260e-02) + 2.142710e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('rem3', '(1.541150e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*1.164790e-02 + str(h_CRCC7-z[1/m])*2.637880e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*1.073420e-02 + str(h_CRCC7-z[1/m])*2.767580e-02) + 2.799930e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('rem4', '(2.922250e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*2.326230e-02 + str(h_CRCC7-z[1/m])*4.937480e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*2.516690e-02 + str(h_CRCC7-z[1/m])*5.131830e-02) + 5.116410e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('rem5', '(8.702380e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*5.518020e-02 + str(h_CRCC7-z[1/m])*6.617640e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*4.784460e-02 + str(h_CRCC7-z[1/m])*6.972580e-02) + 7.545060e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('rem6', '(7.920120e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*7.188340e-02 + str(h_CRCC7-z[1/m])*1.010020e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*7.716480e-02 + str(h_CRCC7-z[1/m])*1.017170e-01) + 1.028550e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('rem7', '(6.657510e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*6.455870e-02 + str(h_CRCC7-z[1/m])*9.618640e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*6.697830e-02 + str(h_CRCC7-z[1/m])*9.474250e-02) + 9.407990e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('rem8', '(8.173720e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*8.675590e-02 + str(h_CRCC7-z[1/m])*1.135520e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*8.190050e-02 + str(h_CRCC7-z[1/m])*1.121540e-01) + 1.115720e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat11', '(1.20571000e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*1.29658000e-01+str(h_CRCC7-z[1/m])*1.35922000e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*1.22458000e-01+str(h_CRCC7-z[1/m])*1.33634000e-01) + 1.34655000e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat12', '(3.53429000e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*4.30616000e-02+str(h_CRCC7-z[1/m])*4.16527000e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*3.51274000e-02+str(h_CRCC7-z[1/m])*4.27961000e-02) + 4.22138000e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat13', '(1.63476000e-06*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*1.93864000e-05+str(h_CRCC7-z[1/m])*1.39544000e-05) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*1.01755000e-06+str(h_CRCC7-z[1/m])*0.00000000e+00) + 7.41492000e-06*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat14', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat15', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat16', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat17', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat18', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat21', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat22', '(3.23741000e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*3.32764000e-01+str(h_CRCC7-z[1/m])*3.43906000e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*3.21243000e-01+str(h_CRCC7-z[1/m])*3.45745000e-01) + 3.45589000e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat23', '(1.99250000e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*2.08177000e-02+str(h_CRCC7-z[1/m])*1.76012000e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*1.71003000e-02+str(h_CRCC7-z[1/m])*1.78666000e-02) + 1.78505000e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat24', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat25', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat26', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat27', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat28', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat31', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat32', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat33', '(3.97399000e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*3.42625000e-01+str(h_CRCC7-z[1/m])*3.89902000e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*4.01737000e-01+str(h_CRCC7-z[1/m])*3.88915000e-01) + 3.88526000e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat34', '(1.54088000e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*1.16399000e-02+str(h_CRCC7-z[1/m])*8.03539000e-03) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*1.07322000e-02+str(h_CRCC7-z[1/m])*9.27060000e-03) + 9.37282000e-03*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat35', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat36', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat37', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat38', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat41', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat42', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat43', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat44', '(3.84700000e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*3.30393000e-01+str(h_CRCC7-z[1/m])*3.71803000e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*3.88745000e-01+str(h_CRCC7-z[1/m])*3.69901000e-01) + 3.69547000e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat45', '(2.92067000e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*2.32200000e-02+str(h_CRCC7-z[1/m])*2.19827000e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*2.51526000e-02+str(h_CRCC7-z[1/m])*2.42185000e-02) + 2.38722000e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat46', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat47', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat48', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat51', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat52', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat53', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat54', '(1.10752000e-04*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*1.45597000e-04+str(h_CRCC7-z[1/m])*2.16421000e-04) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*2.01503000e-04+str(h_CRCC7-z[1/m])*2.59684000e-04) + 1.58079000e-04*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat55', '(3.27789000e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*2.99033000e-01+str(h_CRCC7-z[1/m])*3.55443000e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*3.66737000e-01+str(h_CRCC7-z[1/m])*3.51937000e-01) + 3.46215000e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat56', '(8.55070000e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*5.41523000e-02+str(h_CRCC7-z[1/m])*3.73808000e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*4.68897000e-02+str(h_CRCC7-z[1/m])*4.07327000e-02) + 4.69555000e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat57', '(1.34811000e-03*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*7.28531000e-04+str(h_CRCC7-z[1/m])*5.13374000e-04) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*7.07524000e-04+str(h_CRCC7-z[1/m])*5.74652000e-04) + 6.46338000e-04*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat58', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*9.17304000e-07+str(h_CRCC7-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z[1/m])*0.00000000e+00) + 3.13438000e-06*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat61', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat62', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat63', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat64', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat65', '(9.59454000e-03*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*8.02864000e-03+str(h_CRCC7-z[1/m])*1.25858000e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*1.14832000e-02+str(h_CRCC7-z[1/m])*1.17071000e-02) + 1.04665000e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat66', '(3.37439000e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*2.84333000e-01+str(h_CRCC7-z[1/m])*3.22474000e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*3.39403000e-01+str(h_CRCC7-z[1/m])*3.22205000e-01) + 3.20628000e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat67', '(6.59970000e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*6.11258000e-02+str(h_CRCC7-z[1/m])*5.75048000e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*6.23252000e-02+str(h_CRCC7-z[1/m])*5.91323000e-02) + 6.16947000e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat68', '(3.50787000e-03*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*2.44400000e-03+str(h_CRCC7-z[1/m])*2.63730000e-03) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*3.26781000e-03+str(h_CRCC7-z[1/m])*2.78319000e-03) + 2.90856000e-03*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat71', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat72', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat73', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat74', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat75', '(1.20984000e-04*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*7.96657000e-05+str(h_CRCC7-z[1/m])*1.10312000e-04) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*1.23669000e-04+str(h_CRCC7-z[1/m])*1.06893000e-04) + 1.12434000e-04*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat76', '(4.48832000e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*3.94922000e-02+str(h_CRCC7-z[1/m])*4.50996000e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*4.56330000e-02+str(h_CRCC7-z[1/m])*4.42402000e-02) + 4.35263000e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat77', '(3.58806000e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*2.98736000e-01+str(h_CRCC7-z[1/m])*3.35290000e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*3.58226000e-01+str(h_CRCC7-z[1/m])*3.36328000e-01) + 3.37502000e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat78', '(2.14117000e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*2.45381000e-02+str(h_CRCC7-z[1/m])*2.19868000e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*2.10815000e-02+str(h_CRCC7-z[1/m])*2.23639000e-02) + 2.25449000e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat81', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat82', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat83', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat84', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat85', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*8.69984000e-08+str(h_CRCC7-z[1/m])*1.18280000e-06) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*0.00000000e+00+str(h_CRCC7-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat86', '(7.70782000e-03*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*5.20050000e-03+str(h_CRCC7-z[1/m])*6.77801000e-03) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*7.73877000e-03+str(h_CRCC7-z[1/m])*6.64676000e-03) + 6.93206000e-03*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat87', '(7.37246000e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*8.06958000e-02+str(h_CRCC7-z[1/m])*7.77715000e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*7.38891000e-02+str(h_CRCC7-z[1/m])*7.77713000e-02) + 7.72772000e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('scat88', '(3.68502000e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*2.99976000e-01+str(h_CRCC7-z[1/m])*3.42190000e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*3.68298000e-01+str(h_CRCC7-z[1/m])*3.43483000e-01) + 3.43666000e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('tot1', '(1.560110e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*1.734270e-01 + str(h_CRCC7-z[1/m])*1.789000e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*1.576700e-01 + str(h_CRCC7-z[1/m])*1.778030e-01) + 1.781840e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('tot2', '(3.436660e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*3.536170e-01 + str(h_CRCC7-z[1/m])*3.650660e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*3.383440e-01 + str(h_CRCC7-z[1/m])*3.671970e-01) + 3.670160e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('tot3', '(4.128100e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*3.542730e-01 + str(h_CRCC7-z[1/m])*4.162810e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*4.124710e-01 + str(h_CRCC7-z[1/m])*4.165910e-01) + 4.165250e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('tot4', '(4.139220e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*3.536550e-01 + str(h_CRCC7-z[1/m])*4.211780e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*4.139120e-01 + str(h_CRCC7-z[1/m])*4.212190e-01) + 4.207110e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('tot5', '(4.148130e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*3.542130e-01 + str(h_CRCC7-z[1/m])*4.216190e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*4.145820e-01 + str(h_CRCC7-z[1/m])*4.216630e-01) + 4.216660e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('tot6', '(4.166400e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*3.562170e-01 + str(h_CRCC7-z[1/m])*4.234760e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*4.165680e-01 + str(h_CRCC7-z[1/m])*4.239220e-01) + 4.234830e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('tot7', '(4.253810e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*3.632950e-01 + str(h_CRCC7-z[1/m])*4.314770e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*4.252040e-01 + str(h_CRCC7-z[1/m])*4.310700e-01) + 4.315820e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('tot8', '(4.502400e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC7)*3.867320e-01 + str(h_CRCC7-z[1/m])*4.557420e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC7)*4.501990e-01 + str(h_CRCC7-z[1/m])*4.556380e-01) + 4.552380e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('diff21', '2.57142857e-01*tot1[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('diff22', '2.57142857e-01*tot2[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('diff23', '2.57142857e-01*tot3[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('diff24', '2.57142857e-01*tot4[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('diff25', '2.57142857e-01*tot5[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('diff26', '2.57142857e-01*tot6[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('diff27', '2.57142857e-01*tot7[1/cm]');
model.component('mod1').variable('var_xsCRCC7').set('diff28', '2.57142857e-01*tot8[1/cm]');
model.component('mod1').variable('var_xsCRCC7').selection.geom('geom1', 3);
model.component('mod1').variable('var_xsCRCC7').selection.set([17]);
model.component('mod1').variable.create('var_xsCRCC8_1');
model.component('mod1').variable('var_xsCRCC8_1').set('beta1', '(6.696930e-03*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*6.696930e-03 + str(h_CRCC8_1-z[1/m])*6.696930e-03) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*6.696930e-03 + str(h_CRCC8_1-z[1/m])*6.696930e-03) + 6.696930e-03*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC8_1').set('betas1', '(2.073830e-04*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*2.073830e-04 + str(h_CRCC8_1-z[1/m])*2.073830e-04) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*2.073830e-04 + str(h_CRCC8_1-z[1/m])*2.073830e-04) + 2.073830e-04*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC8_1').set('betas2', '(1.113340e-03*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*1.113340e-03 + str(h_CRCC8_1-z[1/m])*1.113340e-03) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*1.113340e-03 + str(h_CRCC8_1-z[1/m])*1.113340e-03) + 1.113340e-03*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC8_1').set('betas3', '(1.083350e-03*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*1.083350e-03 + str(h_CRCC8_1-z[1/m])*1.083350e-03) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*1.083350e-03 + str(h_CRCC8_1-z[1/m])*1.083350e-03) + 1.083350e-03*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC8_1').set('betas4', '(3.064820e-03*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*3.064820e-03 + str(h_CRCC8_1-z[1/m])*3.064820e-03) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*3.064820e-03 + str(h_CRCC8_1-z[1/m])*3.064820e-03) + 3.064820e-03*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC8_1').set('betas5', '(9.107700e-04*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*9.107700e-04 + str(h_CRCC8_1-z[1/m])*9.107700e-04) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*9.107700e-04 + str(h_CRCC8_1-z[1/m])*9.107700e-04) + 9.107700e-04*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC8_1').set('betas6', '(3.172650e-04*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*3.172650e-04 + str(h_CRCC8_1-z[1/m])*3.172650e-04) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*3.172650e-04 + str(h_CRCC8_1-z[1/m])*3.172650e-04) + 3.172650e-04*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC8_1').set('chid1', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*0.000000e+00 + str(h_CRCC8_1-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*0.000000e+00 + str(h_CRCC8_1-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC8_1').set('chid2', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*0.000000e+00 + str(h_CRCC8_1-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*0.000000e+00 + str(h_CRCC8_1-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC8_1').set('chid3', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*0.000000e+00 + str(h_CRCC8_1-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*0.000000e+00 + str(h_CRCC8_1-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC8_1').set('chid4', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*0.000000e+00 + str(h_CRCC8_1-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*0.000000e+00 + str(h_CRCC8_1-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC8_1').set('chid5', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*0.000000e+00 + str(h_CRCC8_1-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*0.000000e+00 + str(h_CRCC8_1-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC8_1').set('chid6', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*0.000000e+00 + str(h_CRCC8_1-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*0.000000e+00 + str(h_CRCC8_1-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC8_1').set('chid7', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*0.000000e+00 + str(h_CRCC8_1-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*0.000000e+00 + str(h_CRCC8_1-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC8_1').set('chid8', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*0.000000e+00 + str(h_CRCC8_1-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*0.000000e+00 + str(h_CRCC8_1-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC8_1').set('chip1', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*0.000000e+00 + str(h_CRCC8_1-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*0.000000e+00 + str(h_CRCC8_1-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC8_1').set('chip2', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*0.000000e+00 + str(h_CRCC8_1-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*0.000000e+00 + str(h_CRCC8_1-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC8_1').set('chip3', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*0.000000e+00 + str(h_CRCC8_1-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*0.000000e+00 + str(h_CRCC8_1-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC8_1').set('chip4', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*0.000000e+00 + str(h_CRCC8_1-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*0.000000e+00 + str(h_CRCC8_1-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC8_1').set('chip5', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*0.000000e+00 + str(h_CRCC8_1-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*0.000000e+00 + str(h_CRCC8_1-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC8_1').set('chip6', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*0.000000e+00 + str(h_CRCC8_1-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*0.000000e+00 + str(h_CRCC8_1-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC8_1').set('chip7', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*0.000000e+00 + str(h_CRCC8_1-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*0.000000e+00 + str(h_CRCC8_1-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC8_1').set('chip8', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*0.000000e+00 + str(h_CRCC8_1-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*0.000000e+00 + str(h_CRCC8_1-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC8_1').set('chit1', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*0.000000e+00 + str(h_CRCC8_1-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*0.000000e+00 + str(h_CRCC8_1-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC8_1').set('chit2', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*0.000000e+00 + str(h_CRCC8_1-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*0.000000e+00 + str(h_CRCC8_1-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC8_1').set('chit3', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*0.000000e+00 + str(h_CRCC8_1-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*0.000000e+00 + str(h_CRCC8_1-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC8_1').set('chit4', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*0.000000e+00 + str(h_CRCC8_1-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*0.000000e+00 + str(h_CRCC8_1-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC8_1').set('chit5', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*0.000000e+00 + str(h_CRCC8_1-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*0.000000e+00 + str(h_CRCC8_1-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC8_1').set('chit6', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*0.000000e+00 + str(h_CRCC8_1-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*0.000000e+00 + str(h_CRCC8_1-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC8_1').set('chit7', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*0.000000e+00 + str(h_CRCC8_1-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*0.000000e+00 + str(h_CRCC8_1-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC8_1').set('chit8', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*0.000000e+00 + str(h_CRCC8_1-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*0.000000e+00 + str(h_CRCC8_1-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC8_1').set('diff11', '(2.484840e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*2.339710e+00 + str(h_CRCC8_1-z[1/m])*2.200870e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*2.414630e+00 + str(h_CRCC8_1-z[1/m])*2.331510e+00) + 2.261660e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('diff12', '(1.107680e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*1.067740e+00 + str(h_CRCC8_1-z[1/m])*1.045820e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*1.131350e+00 + str(h_CRCC8_1-z[1/m])*1.037380e+00) + 1.038690e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('diff13', '(8.557780e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*9.958500e-01 + str(h_CRCC8_1-z[1/m])*8.464810e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*8.567050e-01 + str(h_CRCC8_1-z[1/m])*8.454370e-01) + 8.457890e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('diff14', '(8.532600e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*9.969800e-01 + str(h_CRCC8_1-z[1/m])*8.351450e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*8.527250e-01 + str(h_CRCC8_1-z[1/m])*8.339070e-01) + 8.356690e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('diff15', '(8.484360e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*9.934540e-01 + str(h_CRCC8_1-z[1/m])*8.327330e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*8.498900e-01 + str(h_CRCC8_1-z[1/m])*8.379880e-01) + 8.357400e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('diff16', '(8.393000e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*9.828500e-01 + str(h_CRCC8_1-z[1/m])*8.233360e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*8.397180e-01 + str(h_CRCC8_1-z[1/m])*8.261060e-01) + 8.248720e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('diff17', '(8.050840e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*9.492230e-01 + str(h_CRCC8_1-z[1/m])*7.948120e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*8.058330e-01 + str(h_CRCC8_1-z[1/m])*7.957680e-01) + 7.951570e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('diff18', '(7.194070e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*8.556820e-01 + str(h_CRCC8_1-z[1/m])*7.181650e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*7.196690e-01 + str(h_CRCC8_1-z[1/m])*7.235190e-01) + 7.174000e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('fiss1', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*0.000000e+00 + str(h_CRCC8_1-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*0.000000e+00 + str(h_CRCC8_1-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('fiss2', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*0.000000e+00 + str(h_CRCC8_1-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*0.000000e+00 + str(h_CRCC8_1-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('fiss3', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*0.000000e+00 + str(h_CRCC8_1-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*0.000000e+00 + str(h_CRCC8_1-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('fiss4', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*0.000000e+00 + str(h_CRCC8_1-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*0.000000e+00 + str(h_CRCC8_1-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('fiss5', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*0.000000e+00 + str(h_CRCC8_1-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*0.000000e+00 + str(h_CRCC8_1-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('fiss6', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*0.000000e+00 + str(h_CRCC8_1-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*0.000000e+00 + str(h_CRCC8_1-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('fiss7', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*0.000000e+00 + str(h_CRCC8_1-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*0.000000e+00 + str(h_CRCC8_1-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('fiss8', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*0.000000e+00 + str(h_CRCC8_1-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*0.000000e+00 + str(h_CRCC8_1-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('invV1', '(4.786430e-10*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*4.837380e-10 + str(h_CRCC8_1-z[1/m])*4.832550e-10) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*4.833600e-10 + str(h_CRCC8_1-z[1/m])*4.826690e-10) + 4.811490e-10*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('invV2', '(2.082440e-09*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*2.181670e-09 + str(h_CRCC8_1-z[1/m])*2.001170e-09) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*1.982020e-09 + str(h_CRCC8_1-z[1/m])*2.018060e-09) + 2.020330e-09*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('invV3', '(3.867390e-08*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*3.692540e-08 + str(h_CRCC8_1-z[1/m])*2.916520e-08) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*3.262790e-08 + str(h_CRCC8_1-z[1/m])*3.086990e-08) + 3.106400e-08*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('invV4', '(2.127600e-07*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*2.105600e-07 + str(h_CRCC8_1-z[1/m])*2.024270e-07) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*2.057070e-07 + str(h_CRCC8_1-z[1/m])*2.057540e-07) + 2.061540e-07*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('invV5', '(7.878220e-07*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*7.291550e-07 + str(h_CRCC8_1-z[1/m])*6.672700e-07) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*6.879420e-07 + str(h_CRCC8_1-z[1/m])*6.749300e-07) + 6.944360e-07*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('invV6', '(1.383110e-06*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*1.382130e-06 + str(h_CRCC8_1-z[1/m])*1.348700e-06) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*1.365850e-06 + str(h_CRCC8_1-z[1/m])*1.359270e-06) + 1.369630e-06*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('invV7', '(2.170220e-06*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*2.173670e-06 + str(h_CRCC8_1-z[1/m])*2.149620e-06) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*2.161900e-06 + str(h_CRCC8_1-z[1/m])*2.157920e-06) + 2.164240e-06*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('invV8', '(4.160500e-06*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*4.188080e-06 + str(h_CRCC8_1-z[1/m])*4.142870e-06) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*4.150400e-06 + str(h_CRCC8_1-z[1/m])*4.162100e-06) + 4.165470e-06*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('kappa1', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*0.000000e+00 + str(h_CRCC8_1-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*0.000000e+00 + str(h_CRCC8_1-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC8_1').set('kappa2', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*0.000000e+00 + str(h_CRCC8_1-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*0.000000e+00 + str(h_CRCC8_1-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC8_1').set('kappa3', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*0.000000e+00 + str(h_CRCC8_1-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*0.000000e+00 + str(h_CRCC8_1-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC8_1').set('kappa4', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*0.000000e+00 + str(h_CRCC8_1-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*0.000000e+00 + str(h_CRCC8_1-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC8_1').set('kappa5', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*0.000000e+00 + str(h_CRCC8_1-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*0.000000e+00 + str(h_CRCC8_1-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC8_1').set('kappa6', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*0.000000e+00 + str(h_CRCC8_1-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*0.000000e+00 + str(h_CRCC8_1-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC8_1').set('kappa7', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*0.000000e+00 + str(h_CRCC8_1-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*0.000000e+00 + str(h_CRCC8_1-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC8_1').set('kappa8', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*0.000000e+00 + str(h_CRCC8_1-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*0.000000e+00 + str(h_CRCC8_1-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC8_1').set('lambdas1', '(1.092920e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*1.092920e-02 + str(h_CRCC8_1-z[1/m])*1.092920e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*1.092920e-02 + str(h_CRCC8_1-z[1/m])*1.092920e-02) + 1.092920e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/s]');
model.component('mod1').variable('var_xsCRCC8_1').set('lambdas2', '(3.181930e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*3.181930e-02 + str(h_CRCC8_1-z[1/m])*3.181930e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*3.181930e-02 + str(h_CRCC8_1-z[1/m])*3.181930e-02) + 3.181930e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/s]');
model.component('mod1').variable('var_xsCRCC8_1').set('lambdas3', '(1.094020e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*1.094020e-01 + str(h_CRCC8_1-z[1/m])*1.094020e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*1.094020e-01 + str(h_CRCC8_1-z[1/m])*1.094020e-01) + 1.094020e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/s]');
model.component('mod1').variable('var_xsCRCC8_1').set('lambdas4', '(3.171150e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*3.171150e-01 + str(h_CRCC8_1-z[1/m])*3.171150e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*3.171150e-01 + str(h_CRCC8_1-z[1/m])*3.171150e-01) + 3.171150e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/s]');
model.component('mod1').variable('var_xsCRCC8_1').set('lambdas5', '(1.353010e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*1.353010e+00 + str(h_CRCC8_1-z[1/m])*1.353010e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*1.353010e+00 + str(h_CRCC8_1-z[1/m])*1.353010e+00) + 1.353010e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/s]');
model.component('mod1').variable('var_xsCRCC8_1').set('lambdas6', '(8.339770e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*8.339770e+00 + str(h_CRCC8_1-z[1/m])*8.339770e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*8.339770e+00 + str(h_CRCC8_1-z[1/m])*8.339770e+00) + 8.339770e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/s]');
model.component('mod1').variable('var_xsCRCC8_1').set('nsf1', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*0.000000e+00 + str(h_CRCC8_1-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*0.000000e+00 + str(h_CRCC8_1-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('nsf2', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*0.000000e+00 + str(h_CRCC8_1-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*0.000000e+00 + str(h_CRCC8_1-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('nsf3', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*0.000000e+00 + str(h_CRCC8_1-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*0.000000e+00 + str(h_CRCC8_1-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('nsf4', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*0.000000e+00 + str(h_CRCC8_1-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*0.000000e+00 + str(h_CRCC8_1-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('nsf5', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*0.000000e+00 + str(h_CRCC8_1-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*0.000000e+00 + str(h_CRCC8_1-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('nsf6', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*0.000000e+00 + str(h_CRCC8_1-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*0.000000e+00 + str(h_CRCC8_1-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('nsf7', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*0.000000e+00 + str(h_CRCC8_1-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*0.000000e+00 + str(h_CRCC8_1-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('nsf8', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*0.000000e+00 + str(h_CRCC8_1-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*0.000000e+00 + str(h_CRCC8_1-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('rem1', '(3.543990e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*4.376830e-02 + str(h_CRCC8_1-z[1/m])*4.297750e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*3.521190e-02 + str(h_CRCC8_1-z[1/m])*4.416890e-02) + 4.352830e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('rem2', '(1.992510e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*2.085290e-02 + str(h_CRCC8_1-z[1/m])*2.115970e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*1.710040e-02 + str(h_CRCC8_1-z[1/m])*2.145260e-02) + 2.142710e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('rem3', '(1.541150e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*1.164790e-02 + str(h_CRCC8_1-z[1/m])*2.637880e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*1.073420e-02 + str(h_CRCC8_1-z[1/m])*2.767580e-02) + 2.799930e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('rem4', '(2.922250e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*2.326230e-02 + str(h_CRCC8_1-z[1/m])*4.937480e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*2.516690e-02 + str(h_CRCC8_1-z[1/m])*5.131830e-02) + 5.116410e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('rem5', '(8.702380e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*5.518020e-02 + str(h_CRCC8_1-z[1/m])*6.617640e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*4.784460e-02 + str(h_CRCC8_1-z[1/m])*6.972580e-02) + 7.545060e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('rem6', '(7.920120e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*7.188340e-02 + str(h_CRCC8_1-z[1/m])*1.010020e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*7.716480e-02 + str(h_CRCC8_1-z[1/m])*1.017170e-01) + 1.028550e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('rem7', '(6.657510e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*6.455870e-02 + str(h_CRCC8_1-z[1/m])*9.618640e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*6.697830e-02 + str(h_CRCC8_1-z[1/m])*9.474250e-02) + 9.407990e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('rem8', '(8.173720e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*8.675590e-02 + str(h_CRCC8_1-z[1/m])*1.135520e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*8.190050e-02 + str(h_CRCC8_1-z[1/m])*1.121540e-01) + 1.115720e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat11', '(1.20571000e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*1.29658000e-01+str(h_CRCC8_1-z[1/m])*1.35922000e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*1.22458000e-01+str(h_CRCC8_1-z[1/m])*1.33634000e-01) + 1.34655000e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat12', '(3.53429000e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*4.30616000e-02+str(h_CRCC8_1-z[1/m])*4.16527000e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*3.51274000e-02+str(h_CRCC8_1-z[1/m])*4.27961000e-02) + 4.22138000e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat13', '(1.63476000e-06*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*1.93864000e-05+str(h_CRCC8_1-z[1/m])*1.39544000e-05) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*1.01755000e-06+str(h_CRCC8_1-z[1/m])*0.00000000e+00) + 7.41492000e-06*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat14', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat15', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat16', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat17', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat18', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat21', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat22', '(3.23741000e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*3.32764000e-01+str(h_CRCC8_1-z[1/m])*3.43906000e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*3.21243000e-01+str(h_CRCC8_1-z[1/m])*3.45745000e-01) + 3.45589000e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat23', '(1.99250000e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*2.08177000e-02+str(h_CRCC8_1-z[1/m])*1.76012000e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*1.71003000e-02+str(h_CRCC8_1-z[1/m])*1.78666000e-02) + 1.78505000e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat24', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat25', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat26', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat27', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat28', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat31', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat32', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat33', '(3.97399000e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*3.42625000e-01+str(h_CRCC8_1-z[1/m])*3.89902000e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*4.01737000e-01+str(h_CRCC8_1-z[1/m])*3.88915000e-01) + 3.88526000e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat34', '(1.54088000e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*1.16399000e-02+str(h_CRCC8_1-z[1/m])*8.03539000e-03) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*1.07322000e-02+str(h_CRCC8_1-z[1/m])*9.27060000e-03) + 9.37282000e-03*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat35', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat36', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat37', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat38', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat41', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat42', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat43', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat44', '(3.84700000e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*3.30393000e-01+str(h_CRCC8_1-z[1/m])*3.71803000e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*3.88745000e-01+str(h_CRCC8_1-z[1/m])*3.69901000e-01) + 3.69547000e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat45', '(2.92067000e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*2.32200000e-02+str(h_CRCC8_1-z[1/m])*2.19827000e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*2.51526000e-02+str(h_CRCC8_1-z[1/m])*2.42185000e-02) + 2.38722000e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat46', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat47', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat48', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat51', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat52', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat53', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat54', '(1.10752000e-04*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*1.45597000e-04+str(h_CRCC8_1-z[1/m])*2.16421000e-04) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*2.01503000e-04+str(h_CRCC8_1-z[1/m])*2.59684000e-04) + 1.58079000e-04*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat55', '(3.27789000e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*2.99033000e-01+str(h_CRCC8_1-z[1/m])*3.55443000e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*3.66737000e-01+str(h_CRCC8_1-z[1/m])*3.51937000e-01) + 3.46215000e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat56', '(8.55070000e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*5.41523000e-02+str(h_CRCC8_1-z[1/m])*3.73808000e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*4.68897000e-02+str(h_CRCC8_1-z[1/m])*4.07327000e-02) + 4.69555000e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat57', '(1.34811000e-03*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*7.28531000e-04+str(h_CRCC8_1-z[1/m])*5.13374000e-04) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*7.07524000e-04+str(h_CRCC8_1-z[1/m])*5.74652000e-04) + 6.46338000e-04*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat58', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*9.17304000e-07+str(h_CRCC8_1-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z[1/m])*0.00000000e+00) + 3.13438000e-06*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat61', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat62', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat63', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat64', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat65', '(9.59454000e-03*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*8.02864000e-03+str(h_CRCC8_1-z[1/m])*1.25858000e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*1.14832000e-02+str(h_CRCC8_1-z[1/m])*1.17071000e-02) + 1.04665000e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat66', '(3.37439000e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*2.84333000e-01+str(h_CRCC8_1-z[1/m])*3.22474000e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*3.39403000e-01+str(h_CRCC8_1-z[1/m])*3.22205000e-01) + 3.20628000e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat67', '(6.59970000e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*6.11258000e-02+str(h_CRCC8_1-z[1/m])*5.75048000e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*6.23252000e-02+str(h_CRCC8_1-z[1/m])*5.91323000e-02) + 6.16947000e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat68', '(3.50787000e-03*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*2.44400000e-03+str(h_CRCC8_1-z[1/m])*2.63730000e-03) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*3.26781000e-03+str(h_CRCC8_1-z[1/m])*2.78319000e-03) + 2.90856000e-03*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat71', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat72', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat73', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat74', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat75', '(1.20984000e-04*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*7.96657000e-05+str(h_CRCC8_1-z[1/m])*1.10312000e-04) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*1.23669000e-04+str(h_CRCC8_1-z[1/m])*1.06893000e-04) + 1.12434000e-04*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat76', '(4.48832000e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*3.94922000e-02+str(h_CRCC8_1-z[1/m])*4.50996000e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*4.56330000e-02+str(h_CRCC8_1-z[1/m])*4.42402000e-02) + 4.35263000e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat77', '(3.58806000e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*2.98736000e-01+str(h_CRCC8_1-z[1/m])*3.35290000e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*3.58226000e-01+str(h_CRCC8_1-z[1/m])*3.36328000e-01) + 3.37502000e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat78', '(2.14117000e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*2.45381000e-02+str(h_CRCC8_1-z[1/m])*2.19868000e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*2.10815000e-02+str(h_CRCC8_1-z[1/m])*2.23639000e-02) + 2.25449000e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat81', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat82', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat83', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat84', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat85', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*8.69984000e-08+str(h_CRCC8_1-z[1/m])*1.18280000e-06) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*0.00000000e+00+str(h_CRCC8_1-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat86', '(7.70782000e-03*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*5.20050000e-03+str(h_CRCC8_1-z[1/m])*6.77801000e-03) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*7.73877000e-03+str(h_CRCC8_1-z[1/m])*6.64676000e-03) + 6.93206000e-03*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat87', '(7.37246000e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*8.06958000e-02+str(h_CRCC8_1-z[1/m])*7.77715000e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*7.38891000e-02+str(h_CRCC8_1-z[1/m])*7.77713000e-02) + 7.72772000e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('scat88', '(3.68502000e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*2.99976000e-01+str(h_CRCC8_1-z[1/m])*3.42190000e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*3.68298000e-01+str(h_CRCC8_1-z[1/m])*3.43483000e-01) + 3.43666000e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('tot1', '(1.560110e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*1.734270e-01 + str(h_CRCC8_1-z[1/m])*1.789000e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*1.576700e-01 + str(h_CRCC8_1-z[1/m])*1.778030e-01) + 1.781840e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('tot2', '(3.436660e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*3.536170e-01 + str(h_CRCC8_1-z[1/m])*3.650660e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*3.383440e-01 + str(h_CRCC8_1-z[1/m])*3.671970e-01) + 3.670160e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('tot3', '(4.128100e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*3.542730e-01 + str(h_CRCC8_1-z[1/m])*4.162810e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*4.124710e-01 + str(h_CRCC8_1-z[1/m])*4.165910e-01) + 4.165250e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('tot4', '(4.139220e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*3.536550e-01 + str(h_CRCC8_1-z[1/m])*4.211780e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*4.139120e-01 + str(h_CRCC8_1-z[1/m])*4.212190e-01) + 4.207110e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('tot5', '(4.148130e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*3.542130e-01 + str(h_CRCC8_1-z[1/m])*4.216190e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*4.145820e-01 + str(h_CRCC8_1-z[1/m])*4.216630e-01) + 4.216660e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('tot6', '(4.166400e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*3.562170e-01 + str(h_CRCC8_1-z[1/m])*4.234760e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*4.165680e-01 + str(h_CRCC8_1-z[1/m])*4.239220e-01) + 4.234830e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('tot7', '(4.253810e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*3.632950e-01 + str(h_CRCC8_1-z[1/m])*4.314770e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*4.252040e-01 + str(h_CRCC8_1-z[1/m])*4.310700e-01) + 4.315820e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('tot8', '(4.502400e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_1)*3.867320e-01 + str(h_CRCC8_1-z[1/m])*4.557420e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_1)*4.501990e-01 + str(h_CRCC8_1-z[1/m])*4.556380e-01) + 4.552380e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('diff21', '2.57142857e-01*tot1[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('diff22', '2.57142857e-01*tot2[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('diff23', '2.57142857e-01*tot3[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('diff24', '2.57142857e-01*tot4[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('diff25', '2.57142857e-01*tot5[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('diff26', '2.57142857e-01*tot6[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('diff27', '2.57142857e-01*tot7[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').set('diff28', '2.57142857e-01*tot8[1/cm]');
model.component('mod1').variable('var_xsCRCC8_1').selection.geom('geom1', 3);
model.component('mod1').variable('var_xsCRCC8_1').selection.set([21]);
model.component('mod1').variable.create('var_xsCRCC8_2');
model.component('mod1').variable('var_xsCRCC8_2').set('beta1', '(6.696930e-03*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*6.696930e-03 + str(h_CRCC8_2-z[1/m])*6.696930e-03) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*6.696930e-03 + str(h_CRCC8_2-z[1/m])*6.696930e-03) + 6.696930e-03*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC8_2').set('betas1', '(2.073830e-04*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*2.073830e-04 + str(h_CRCC8_2-z[1/m])*2.073830e-04) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*2.073830e-04 + str(h_CRCC8_2-z[1/m])*2.073830e-04) + 2.073830e-04*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC8_2').set('betas2', '(1.113340e-03*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*1.113340e-03 + str(h_CRCC8_2-z[1/m])*1.113340e-03) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*1.113340e-03 + str(h_CRCC8_2-z[1/m])*1.113340e-03) + 1.113340e-03*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC8_2').set('betas3', '(1.083350e-03*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*1.083350e-03 + str(h_CRCC8_2-z[1/m])*1.083350e-03) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*1.083350e-03 + str(h_CRCC8_2-z[1/m])*1.083350e-03) + 1.083350e-03*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC8_2').set('betas4', '(3.064820e-03*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*3.064820e-03 + str(h_CRCC8_2-z[1/m])*3.064820e-03) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*3.064820e-03 + str(h_CRCC8_2-z[1/m])*3.064820e-03) + 3.064820e-03*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC8_2').set('betas5', '(9.107700e-04*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*9.107700e-04 + str(h_CRCC8_2-z[1/m])*9.107700e-04) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*9.107700e-04 + str(h_CRCC8_2-z[1/m])*9.107700e-04) + 9.107700e-04*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC8_2').set('betas6', '(3.172650e-04*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*3.172650e-04 + str(h_CRCC8_2-z[1/m])*3.172650e-04) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*3.172650e-04 + str(h_CRCC8_2-z[1/m])*3.172650e-04) + 3.172650e-04*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC8_2').set('chid1', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*0.000000e+00 + str(h_CRCC8_2-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*0.000000e+00 + str(h_CRCC8_2-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC8_2').set('chid2', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*0.000000e+00 + str(h_CRCC8_2-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*0.000000e+00 + str(h_CRCC8_2-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC8_2').set('chid3', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*0.000000e+00 + str(h_CRCC8_2-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*0.000000e+00 + str(h_CRCC8_2-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC8_2').set('chid4', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*0.000000e+00 + str(h_CRCC8_2-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*0.000000e+00 + str(h_CRCC8_2-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC8_2').set('chid5', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*0.000000e+00 + str(h_CRCC8_2-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*0.000000e+00 + str(h_CRCC8_2-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC8_2').set('chid6', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*0.000000e+00 + str(h_CRCC8_2-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*0.000000e+00 + str(h_CRCC8_2-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC8_2').set('chid7', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*0.000000e+00 + str(h_CRCC8_2-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*0.000000e+00 + str(h_CRCC8_2-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC8_2').set('chid8', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*0.000000e+00 + str(h_CRCC8_2-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*0.000000e+00 + str(h_CRCC8_2-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC8_2').set('chip1', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*0.000000e+00 + str(h_CRCC8_2-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*0.000000e+00 + str(h_CRCC8_2-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC8_2').set('chip2', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*0.000000e+00 + str(h_CRCC8_2-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*0.000000e+00 + str(h_CRCC8_2-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC8_2').set('chip3', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*0.000000e+00 + str(h_CRCC8_2-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*0.000000e+00 + str(h_CRCC8_2-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC8_2').set('chip4', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*0.000000e+00 + str(h_CRCC8_2-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*0.000000e+00 + str(h_CRCC8_2-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC8_2').set('chip5', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*0.000000e+00 + str(h_CRCC8_2-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*0.000000e+00 + str(h_CRCC8_2-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC8_2').set('chip6', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*0.000000e+00 + str(h_CRCC8_2-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*0.000000e+00 + str(h_CRCC8_2-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC8_2').set('chip7', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*0.000000e+00 + str(h_CRCC8_2-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*0.000000e+00 + str(h_CRCC8_2-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC8_2').set('chip8', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*0.000000e+00 + str(h_CRCC8_2-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*0.000000e+00 + str(h_CRCC8_2-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC8_2').set('chit1', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*0.000000e+00 + str(h_CRCC8_2-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*0.000000e+00 + str(h_CRCC8_2-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC8_2').set('chit2', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*0.000000e+00 + str(h_CRCC8_2-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*0.000000e+00 + str(h_CRCC8_2-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC8_2').set('chit3', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*0.000000e+00 + str(h_CRCC8_2-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*0.000000e+00 + str(h_CRCC8_2-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC8_2').set('chit4', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*0.000000e+00 + str(h_CRCC8_2-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*0.000000e+00 + str(h_CRCC8_2-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC8_2').set('chit5', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*0.000000e+00 + str(h_CRCC8_2-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*0.000000e+00 + str(h_CRCC8_2-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC8_2').set('chit6', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*0.000000e+00 + str(h_CRCC8_2-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*0.000000e+00 + str(h_CRCC8_2-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC8_2').set('chit7', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*0.000000e+00 + str(h_CRCC8_2-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*0.000000e+00 + str(h_CRCC8_2-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC8_2').set('chit8', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*0.000000e+00 + str(h_CRCC8_2-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*0.000000e+00 + str(h_CRCC8_2-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))');
model.component('mod1').variable('var_xsCRCC8_2').set('diff11', '(2.484840e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*2.339710e+00 + str(h_CRCC8_2-z[1/m])*2.200870e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*2.414630e+00 + str(h_CRCC8_2-z[1/m])*2.331510e+00) + 2.261660e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('diff12', '(1.107680e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*1.067740e+00 + str(h_CRCC8_2-z[1/m])*1.045820e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*1.131350e+00 + str(h_CRCC8_2-z[1/m])*1.037380e+00) + 1.038690e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('diff13', '(8.557780e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*9.958500e-01 + str(h_CRCC8_2-z[1/m])*8.464810e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*8.567050e-01 + str(h_CRCC8_2-z[1/m])*8.454370e-01) + 8.457890e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('diff14', '(8.532600e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*9.969800e-01 + str(h_CRCC8_2-z[1/m])*8.351450e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*8.527250e-01 + str(h_CRCC8_2-z[1/m])*8.339070e-01) + 8.356690e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('diff15', '(8.484360e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*9.934540e-01 + str(h_CRCC8_2-z[1/m])*8.327330e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*8.498900e-01 + str(h_CRCC8_2-z[1/m])*8.379880e-01) + 8.357400e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('diff16', '(8.393000e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*9.828500e-01 + str(h_CRCC8_2-z[1/m])*8.233360e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*8.397180e-01 + str(h_CRCC8_2-z[1/m])*8.261060e-01) + 8.248720e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('diff17', '(8.050840e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*9.492230e-01 + str(h_CRCC8_2-z[1/m])*7.948120e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*8.058330e-01 + str(h_CRCC8_2-z[1/m])*7.957680e-01) + 7.951570e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('diff18', '(7.194070e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*8.556820e-01 + str(h_CRCC8_2-z[1/m])*7.181650e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*7.196690e-01 + str(h_CRCC8_2-z[1/m])*7.235190e-01) + 7.174000e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('fiss1', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*0.000000e+00 + str(h_CRCC8_2-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*0.000000e+00 + str(h_CRCC8_2-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('fiss2', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*0.000000e+00 + str(h_CRCC8_2-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*0.000000e+00 + str(h_CRCC8_2-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('fiss3', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*0.000000e+00 + str(h_CRCC8_2-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*0.000000e+00 + str(h_CRCC8_2-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('fiss4', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*0.000000e+00 + str(h_CRCC8_2-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*0.000000e+00 + str(h_CRCC8_2-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('fiss5', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*0.000000e+00 + str(h_CRCC8_2-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*0.000000e+00 + str(h_CRCC8_2-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('fiss6', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*0.000000e+00 + str(h_CRCC8_2-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*0.000000e+00 + str(h_CRCC8_2-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('fiss7', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*0.000000e+00 + str(h_CRCC8_2-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*0.000000e+00 + str(h_CRCC8_2-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('fiss8', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*0.000000e+00 + str(h_CRCC8_2-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*0.000000e+00 + str(h_CRCC8_2-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('invV1', '(4.786430e-10*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*4.837380e-10 + str(h_CRCC8_2-z[1/m])*4.832550e-10) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*4.833600e-10 + str(h_CRCC8_2-z[1/m])*4.826690e-10) + 4.811490e-10*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('invV2', '(2.082440e-09*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*2.181670e-09 + str(h_CRCC8_2-z[1/m])*2.001170e-09) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*1.982020e-09 + str(h_CRCC8_2-z[1/m])*2.018060e-09) + 2.020330e-09*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('invV3', '(3.867390e-08*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*3.692540e-08 + str(h_CRCC8_2-z[1/m])*2.916520e-08) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*3.262790e-08 + str(h_CRCC8_2-z[1/m])*3.086990e-08) + 3.106400e-08*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('invV4', '(2.127600e-07*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*2.105600e-07 + str(h_CRCC8_2-z[1/m])*2.024270e-07) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*2.057070e-07 + str(h_CRCC8_2-z[1/m])*2.057540e-07) + 2.061540e-07*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('invV5', '(7.878220e-07*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*7.291550e-07 + str(h_CRCC8_2-z[1/m])*6.672700e-07) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*6.879420e-07 + str(h_CRCC8_2-z[1/m])*6.749300e-07) + 6.944360e-07*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('invV6', '(1.383110e-06*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*1.382130e-06 + str(h_CRCC8_2-z[1/m])*1.348700e-06) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*1.365850e-06 + str(h_CRCC8_2-z[1/m])*1.359270e-06) + 1.369630e-06*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('invV7', '(2.170220e-06*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*2.173670e-06 + str(h_CRCC8_2-z[1/m])*2.149620e-06) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*2.161900e-06 + str(h_CRCC8_2-z[1/m])*2.157920e-06) + 2.164240e-06*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('invV8', '(4.160500e-06*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*4.188080e-06 + str(h_CRCC8_2-z[1/m])*4.142870e-06) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*4.150400e-06 + str(h_CRCC8_2-z[1/m])*4.162100e-06) + 4.165470e-06*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[s/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('kappa1', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*0.000000e+00 + str(h_CRCC8_2-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*0.000000e+00 + str(h_CRCC8_2-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC8_2').set('kappa2', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*0.000000e+00 + str(h_CRCC8_2-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*0.000000e+00 + str(h_CRCC8_2-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC8_2').set('kappa3', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*0.000000e+00 + str(h_CRCC8_2-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*0.000000e+00 + str(h_CRCC8_2-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC8_2').set('kappa4', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*0.000000e+00 + str(h_CRCC8_2-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*0.000000e+00 + str(h_CRCC8_2-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC8_2').set('kappa5', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*0.000000e+00 + str(h_CRCC8_2-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*0.000000e+00 + str(h_CRCC8_2-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC8_2').set('kappa6', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*0.000000e+00 + str(h_CRCC8_2-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*0.000000e+00 + str(h_CRCC8_2-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC8_2').set('kappa7', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*0.000000e+00 + str(h_CRCC8_2-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*0.000000e+00 + str(h_CRCC8_2-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC8_2').set('kappa8', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*0.000000e+00 + str(h_CRCC8_2-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*0.000000e+00 + str(h_CRCC8_2-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[MeV]');
model.component('mod1').variable('var_xsCRCC8_2').set('lambdas1', '(1.092920e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*1.092920e-02 + str(h_CRCC8_2-z[1/m])*1.092920e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*1.092920e-02 + str(h_CRCC8_2-z[1/m])*1.092920e-02) + 1.092920e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/s]');
model.component('mod1').variable('var_xsCRCC8_2').set('lambdas2', '(3.181930e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*3.181930e-02 + str(h_CRCC8_2-z[1/m])*3.181930e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*3.181930e-02 + str(h_CRCC8_2-z[1/m])*3.181930e-02) + 3.181930e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/s]');
model.component('mod1').variable('var_xsCRCC8_2').set('lambdas3', '(1.094020e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*1.094020e-01 + str(h_CRCC8_2-z[1/m])*1.094020e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*1.094020e-01 + str(h_CRCC8_2-z[1/m])*1.094020e-01) + 1.094020e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/s]');
model.component('mod1').variable('var_xsCRCC8_2').set('lambdas4', '(3.171150e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*3.171150e-01 + str(h_CRCC8_2-z[1/m])*3.171150e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*3.171150e-01 + str(h_CRCC8_2-z[1/m])*3.171150e-01) + 3.171150e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/s]');
model.component('mod1').variable('var_xsCRCC8_2').set('lambdas5', '(1.353010e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*1.353010e+00 + str(h_CRCC8_2-z[1/m])*1.353010e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*1.353010e+00 + str(h_CRCC8_2-z[1/m])*1.353010e+00) + 1.353010e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/s]');
model.component('mod1').variable('var_xsCRCC8_2').set('lambdas6', '(8.339770e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*8.339770e+00 + str(h_CRCC8_2-z[1/m])*8.339770e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*8.339770e+00 + str(h_CRCC8_2-z[1/m])*8.339770e+00) + 8.339770e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/s]');
model.component('mod1').variable('var_xsCRCC8_2').set('nsf1', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*0.000000e+00 + str(h_CRCC8_2-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*0.000000e+00 + str(h_CRCC8_2-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('nsf2', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*0.000000e+00 + str(h_CRCC8_2-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*0.000000e+00 + str(h_CRCC8_2-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('nsf3', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*0.000000e+00 + str(h_CRCC8_2-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*0.000000e+00 + str(h_CRCC8_2-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('nsf4', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*0.000000e+00 + str(h_CRCC8_2-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*0.000000e+00 + str(h_CRCC8_2-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('nsf5', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*0.000000e+00 + str(h_CRCC8_2-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*0.000000e+00 + str(h_CRCC8_2-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('nsf6', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*0.000000e+00 + str(h_CRCC8_2-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*0.000000e+00 + str(h_CRCC8_2-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('nsf7', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*0.000000e+00 + str(h_CRCC8_2-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*0.000000e+00 + str(h_CRCC8_2-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('nsf8', '(0.000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*0.000000e+00 + str(h_CRCC8_2-z[1/m])*0.000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*0.000000e+00 + str(h_CRCC8_2-z[1/m])*0.000000e+00) + 0.000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('rem1', '(3.543990e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*4.376830e-02 + str(h_CRCC8_2-z[1/m])*4.297750e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*3.521190e-02 + str(h_CRCC8_2-z[1/m])*4.416890e-02) + 4.352830e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('rem2', '(1.992510e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*2.085290e-02 + str(h_CRCC8_2-z[1/m])*2.115970e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*1.710040e-02 + str(h_CRCC8_2-z[1/m])*2.145260e-02) + 2.142710e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('rem3', '(1.541150e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*1.164790e-02 + str(h_CRCC8_2-z[1/m])*2.637880e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*1.073420e-02 + str(h_CRCC8_2-z[1/m])*2.767580e-02) + 2.799930e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('rem4', '(2.922250e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*2.326230e-02 + str(h_CRCC8_2-z[1/m])*4.937480e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*2.516690e-02 + str(h_CRCC8_2-z[1/m])*5.131830e-02) + 5.116410e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('rem5', '(8.702380e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*5.518020e-02 + str(h_CRCC8_2-z[1/m])*6.617640e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*4.784460e-02 + str(h_CRCC8_2-z[1/m])*6.972580e-02) + 7.545060e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('rem6', '(7.920120e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*7.188340e-02 + str(h_CRCC8_2-z[1/m])*1.010020e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*7.716480e-02 + str(h_CRCC8_2-z[1/m])*1.017170e-01) + 1.028550e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('rem7', '(6.657510e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*6.455870e-02 + str(h_CRCC8_2-z[1/m])*9.618640e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*6.697830e-02 + str(h_CRCC8_2-z[1/m])*9.474250e-02) + 9.407990e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('rem8', '(8.173720e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*8.675590e-02 + str(h_CRCC8_2-z[1/m])*1.135520e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*8.190050e-02 + str(h_CRCC8_2-z[1/m])*1.121540e-01) + 1.115720e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat11', '(1.20571000e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*1.29658000e-01+str(h_CRCC8_2-z[1/m])*1.35922000e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*1.22458000e-01+str(h_CRCC8_2-z[1/m])*1.33634000e-01) + 1.34655000e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat12', '(3.53429000e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*4.30616000e-02+str(h_CRCC8_2-z[1/m])*4.16527000e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*3.51274000e-02+str(h_CRCC8_2-z[1/m])*4.27961000e-02) + 4.22138000e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat13', '(1.63476000e-06*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*1.93864000e-05+str(h_CRCC8_2-z[1/m])*1.39544000e-05) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*1.01755000e-06+str(h_CRCC8_2-z[1/m])*0.00000000e+00) + 7.41492000e-06*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat14', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat15', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat16', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat17', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat18', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat21', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat22', '(3.23741000e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*3.32764000e-01+str(h_CRCC8_2-z[1/m])*3.43906000e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*3.21243000e-01+str(h_CRCC8_2-z[1/m])*3.45745000e-01) + 3.45589000e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat23', '(1.99250000e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*2.08177000e-02+str(h_CRCC8_2-z[1/m])*1.76012000e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*1.71003000e-02+str(h_CRCC8_2-z[1/m])*1.78666000e-02) + 1.78505000e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat24', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat25', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat26', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat27', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat28', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat31', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat32', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat33', '(3.97399000e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*3.42625000e-01+str(h_CRCC8_2-z[1/m])*3.89902000e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*4.01737000e-01+str(h_CRCC8_2-z[1/m])*3.88915000e-01) + 3.88526000e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat34', '(1.54088000e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*1.16399000e-02+str(h_CRCC8_2-z[1/m])*8.03539000e-03) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*1.07322000e-02+str(h_CRCC8_2-z[1/m])*9.27060000e-03) + 9.37282000e-03*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat35', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat36', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat37', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat38', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat41', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat42', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat43', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat44', '(3.84700000e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*3.30393000e-01+str(h_CRCC8_2-z[1/m])*3.71803000e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*3.88745000e-01+str(h_CRCC8_2-z[1/m])*3.69901000e-01) + 3.69547000e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat45', '(2.92067000e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*2.32200000e-02+str(h_CRCC8_2-z[1/m])*2.19827000e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*2.51526000e-02+str(h_CRCC8_2-z[1/m])*2.42185000e-02) + 2.38722000e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat46', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat47', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat48', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat51', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat52', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat53', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat54', '(1.10752000e-04*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*1.45597000e-04+str(h_CRCC8_2-z[1/m])*2.16421000e-04) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*2.01503000e-04+str(h_CRCC8_2-z[1/m])*2.59684000e-04) + 1.58079000e-04*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat55', '(3.27789000e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*2.99033000e-01+str(h_CRCC8_2-z[1/m])*3.55443000e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*3.66737000e-01+str(h_CRCC8_2-z[1/m])*3.51937000e-01) + 3.46215000e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat56', '(8.55070000e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*5.41523000e-02+str(h_CRCC8_2-z[1/m])*3.73808000e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*4.68897000e-02+str(h_CRCC8_2-z[1/m])*4.07327000e-02) + 4.69555000e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat57', '(1.34811000e-03*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*7.28531000e-04+str(h_CRCC8_2-z[1/m])*5.13374000e-04) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*7.07524000e-04+str(h_CRCC8_2-z[1/m])*5.74652000e-04) + 6.46338000e-04*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat58', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*9.17304000e-07+str(h_CRCC8_2-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z[1/m])*0.00000000e+00) + 3.13438000e-06*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat61', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat62', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat63', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat64', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat65', '(9.59454000e-03*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*8.02864000e-03+str(h_CRCC8_2-z[1/m])*1.25858000e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*1.14832000e-02+str(h_CRCC8_2-z[1/m])*1.17071000e-02) + 1.04665000e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat66', '(3.37439000e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*2.84333000e-01+str(h_CRCC8_2-z[1/m])*3.22474000e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*3.39403000e-01+str(h_CRCC8_2-z[1/m])*3.22205000e-01) + 3.20628000e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat67', '(6.59970000e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*6.11258000e-02+str(h_CRCC8_2-z[1/m])*5.75048000e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*6.23252000e-02+str(h_CRCC8_2-z[1/m])*5.91323000e-02) + 6.16947000e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat68', '(3.50787000e-03*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*2.44400000e-03+str(h_CRCC8_2-z[1/m])*2.63730000e-03) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*3.26781000e-03+str(h_CRCC8_2-z[1/m])*2.78319000e-03) + 2.90856000e-03*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat71', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat72', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat73', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat74', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat75', '(1.20984000e-04*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*7.96657000e-05+str(h_CRCC8_2-z[1/m])*1.10312000e-04) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*1.23669000e-04+str(h_CRCC8_2-z[1/m])*1.06893000e-04) + 1.12434000e-04*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat76', '(4.48832000e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*3.94922000e-02+str(h_CRCC8_2-z[1/m])*4.50996000e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*4.56330000e-02+str(h_CRCC8_2-z[1/m])*4.42402000e-02) + 4.35263000e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat77', '(3.58806000e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*2.98736000e-01+str(h_CRCC8_2-z[1/m])*3.35290000e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*3.58226000e-01+str(h_CRCC8_2-z[1/m])*3.36328000e-01) + 3.37502000e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat78', '(2.14117000e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*2.45381000e-02+str(h_CRCC8_2-z[1/m])*2.19868000e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*2.10815000e-02+str(h_CRCC8_2-z[1/m])*2.23639000e-02) + 2.25449000e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat81', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat82', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat83', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat84', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z[1/m])*0.00000000e+00) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat85', '(0.00000000e+00*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*8.69984000e-08+str(h_CRCC8_2-z[1/m])*1.18280000e-06) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*0.00000000e+00+str(h_CRCC8_2-z[1/m])*0.00000000e+00) + 0.00000000e+00*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat86', '(7.70782000e-03*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*5.20050000e-03+str(h_CRCC8_2-z[1/m])*6.77801000e-03) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*7.73877000e-03+str(h_CRCC8_2-z[1/m])*6.64676000e-03) + 6.93206000e-03*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat87', '(7.37246000e-02*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*8.06958000e-02+str(h_CRCC8_2-z[1/m])*7.77715000e-02) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*7.38891000e-02+str(h_CRCC8_2-z[1/m])*7.77713000e-02) + 7.72772000e-02*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('scat88', '(3.68502000e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*2.99976000e-01+str(h_CRCC8_2-z[1/m])*3.42190000e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*3.68298000e-01+str(h_CRCC8_2-z[1/m])*3.43483000e-01) + 3.43666000e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('tot1', '(1.560110e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*1.734270e-01 + str(h_CRCC8_2-z[1/m])*1.789000e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*1.576700e-01 + str(h_CRCC8_2-z[1/m])*1.778030e-01) + 1.781840e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('tot2', '(3.436660e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*3.536170e-01 + str(h_CRCC8_2-z[1/m])*3.650660e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*3.383440e-01 + str(h_CRCC8_2-z[1/m])*3.671970e-01) + 3.670160e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('tot3', '(4.128100e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*3.542730e-01 + str(h_CRCC8_2-z[1/m])*4.162810e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*4.124710e-01 + str(h_CRCC8_2-z[1/m])*4.165910e-01) + 4.165250e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('tot4', '(4.139220e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*3.536550e-01 + str(h_CRCC8_2-z[1/m])*4.211780e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*4.139120e-01 + str(h_CRCC8_2-z[1/m])*4.212190e-01) + 4.207110e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('tot5', '(4.148130e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*3.542130e-01 + str(h_CRCC8_2-z[1/m])*4.216190e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*4.145820e-01 + str(h_CRCC8_2-z[1/m])*4.216630e-01) + 4.216660e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('tot6', '(4.166400e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*3.562170e-01 + str(h_CRCC8_2-z[1/m])*4.234760e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*4.165680e-01 + str(h_CRCC8_2-z[1/m])*4.239220e-01) + 4.234830e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('tot7', '(4.253810e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*3.632950e-01 + str(h_CRCC8_2-z[1/m])*4.314770e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*4.252040e-01 + str(h_CRCC8_2-z[1/m])*4.310700e-01) + 4.315820e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('tot8', '(4.502400e-01*str(5.728500-z[1/m])*str(z[1/m]-4.308500) + str(4.308500-z[1/m])*str(z[1/m]-2.720000)*(str(z[1/m]-h_CRCC8_2)*3.867320e-01 + str(h_CRCC8_2-z[1/m])*4.557420e-01) + str(2.720000-z[1/m])*str(z[1/m]-1.125000)*(str(z[1/m]-h_CRCC8_2)*4.501990e-01 + str(h_CRCC8_2-z[1/m])*4.556380e-01) + 4.552380e-01*str(1.125000-z[1/m])*str(z[1/m]-0.416000))[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('diff21', '2.57142857e-01*tot1[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('diff22', '2.57142857e-01*tot2[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('diff23', '2.57142857e-01*tot3[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('diff24', '2.57142857e-01*tot4[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('diff25', '2.57142857e-01*tot5[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('diff26', '2.57142857e-01*tot6[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('diff27', '2.57142857e-01*tot7[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').set('diff28', '2.57142857e-01*tot8[1/cm]');
model.component('mod1').variable('var_xsCRCC8_2').selection.geom('geom1', 3);
model.component('mod1').variable('var_xsCRCC8_2').selection.set([22]);
model.component('mod1').variable.create('fuel_xs_var1');
model.component('mod1').variable('fuel_xs_var1').set('beta1', '6.578860e-03');
model.component('mod1').variable('fuel_xs_var1').set('betas1', '2.019570e-04');
model.component('mod1').variable('fuel_xs_var1').set('betas2', '1.089270e-03');
model.component('mod1').variable('fuel_xs_var1').set('betas3', '1.061300e-03');
model.component('mod1').variable('fuel_xs_var1').set('betas4', '3.025810e-03');
model.component('mod1').variable('fuel_xs_var1').set('betas5', '8.839130e-04');
model.component('mod1').variable('fuel_xs_var1').set('betas6', '3.166050e-04');
model.component('mod1').variable('fuel_xs_var1').set('chid1', '3.816450e-02');
model.component('mod1').variable('fuel_xs_var1').set('chid2', '9.397500e-01');
model.component('mod1').variable('fuel_xs_var1').set('chid3', '2.208540e-02');
model.component('mod1').variable('fuel_xs_var1').set('chid4', '0.000000e+00');
model.component('mod1').variable('fuel_xs_var1').set('chid5', '0.000000e+00');
model.component('mod1').variable('fuel_xs_var1').set('chid6', '0.000000e+00');
model.component('mod1').variable('fuel_xs_var1').set('chid7', '0.000000e+00');
model.component('mod1').variable('fuel_xs_var1').set('chid8', '0.000000e+00');
model.component('mod1').variable('fuel_xs_var1').set('chip1', '5.733200e-01');
model.component('mod1').variable('fuel_xs_var1').set('chip2', '4.251800e-01');
model.component('mod1').variable('fuel_xs_var1').set('chip3', '1.500420e-03');
model.component('mod1').variable('fuel_xs_var1').set('chip4', '0.000000e+00');
model.component('mod1').variable('fuel_xs_var1').set('chip5', '0.000000e+00');
model.component('mod1').variable('fuel_xs_var1').set('chip6', '0.000000e+00');
model.component('mod1').variable('fuel_xs_var1').set('chip7', '0.000000e+00');
model.component('mod1').variable('fuel_xs_var1').set('chip8', '0.000000e+00');
model.component('mod1').variable('fuel_xs_var1').set('chit1', '5.698180e-01');
model.component('mod1').variable('fuel_xs_var1').set('chit2', '4.285470e-01');
model.component('mod1').variable('fuel_xs_var1').set('chit3', '1.634530e-03');
model.component('mod1').variable('fuel_xs_var1').set('chit4', '0.000000e+00');
model.component('mod1').variable('fuel_xs_var1').set('chit5', '0.000000e+00');
model.component('mod1').variable('fuel_xs_var1').set('chit6', '0.000000e+00');
model.component('mod1').variable('fuel_xs_var1').set('chit7', '0.000000e+00');
model.component('mod1').variable('fuel_xs_var1').set('chit8', '0.000000e+00');
model.component('mod1').variable('fuel_xs_var1').set('diff11', '2.350940e+00[cm]');
model.component('mod1').variable('fuel_xs_var1').set('diff12', '1.145210e+00[cm]');
model.component('mod1').variable('fuel_xs_var1').set('diff13', '1.024310e+00[cm]');
model.component('mod1').variable('fuel_xs_var1').set('diff14', '1.005100e+00[cm]');
model.component('mod1').variable('fuel_xs_var1').set('diff15', '1.022970e+00[cm]');
model.component('mod1').variable('fuel_xs_var1').set('diff16', '9.984410e-01[cm]');
model.component('mod1').variable('fuel_xs_var1').set('diff17', '9.583720e-01[cm]');
model.component('mod1').variable('fuel_xs_var1').set('diff18', '8.397760e-01[cm]');
model.component('mod1').variable('fuel_xs_var1').set('fiss1', '1.083650e-04[1/cm]');
model.component('mod1').variable('fuel_xs_var1').set('fiss2', '4.435410e-05[1/cm]');
model.component('mod1').variable('fuel_xs_var1').set('fiss3', '3.319190e-04[1/cm]');
model.component('mod1').variable('fuel_xs_var1').set('fiss4', '1.234590e-03[1/cm]');
model.component('mod1').variable('fuel_xs_var1').set('fiss5', '1.340010e-03[1/cm]');
model.component('mod1').variable('fuel_xs_var1').set('fiss6', '4.676170e-03[1/cm]');
model.component('mod1').variable('fuel_xs_var1').set('fiss7', '6.698330e-03[1/cm]');
model.component('mod1').variable('fuel_xs_var1').set('fiss8', '1.429930e-02[1/cm]');
model.component('mod1').variable('fuel_xs_var1').set('invV1', '4.789290e-10[s/cm]');
model.component('mod1').variable('fuel_xs_var1').set('invV2', '1.942500e-09[s/cm]');
model.component('mod1').variable('fuel_xs_var1').set('invV3', '2.991820e-08[s/cm]');
model.component('mod1').variable('fuel_xs_var1').set('invV4', '2.005150e-07[s/cm]');
model.component('mod1').variable('fuel_xs_var1').set('invV5', '6.862670e-07[s/cm]');
model.component('mod1').variable('fuel_xs_var1').set('invV6', '1.345610e-06[s/cm]');
model.component('mod1').variable('fuel_xs_var1').set('invV7', '2.141300e-06[s/cm]');
model.component('mod1').variable('fuel_xs_var1').set('invV8', '4.102670e-06[s/cm]');
model.component('mod1').variable('fuel_xs_var1').set('kappa1', '2.052230e+02[MeV]');
model.component('mod1').variable('fuel_xs_var1').set('kappa2', '2.023490e+02[MeV]');
model.component('mod1').variable('fuel_xs_var1').set('kappa3', '2.022710e+02[MeV]');
model.component('mod1').variable('fuel_xs_var1').set('kappa4', '2.022700e+02[MeV]');
model.component('mod1').variable('fuel_xs_var1').set('kappa5', '2.022700e+02[MeV]');
model.component('mod1').variable('fuel_xs_var1').set('kappa6', '2.022700e+02[MeV]');
model.component('mod1').variable('fuel_xs_var1').set('kappa7', '2.022700e+02[MeV]');
model.component('mod1').variable('fuel_xs_var1').set('kappa8', '2.022700e+02[MeV]');
model.component('mod1').variable('fuel_xs_var1').set('lambdas1', '1.087300e-02[1/s]');
model.component('mod1').variable('fuel_xs_var1').set('lambdas2', '3.181920e-02[1/s]');
model.component('mod1').variable('fuel_xs_var1').set('lambdas3', '1.093960e-01[1/s]');
model.component('mod1').variable('fuel_xs_var1').set('lambdas4', '3.170910e-01[1/s]');
model.component('mod1').variable('fuel_xs_var1').set('lambdas5', '1.353750e+00[1/s]');
model.component('mod1').variable('fuel_xs_var1').set('lambdas6', '8.281150e+00[1/s]');
model.component('mod1').variable('fuel_xs_var1').set('nsf1', '(2.91576780e-04 +( log(T_fuel_1[1/K]) *( 1.50407311e-07 )) +( log(T_fuel_2[1/K]) *( 3.43861372e-07 )) +( log(T_fuel_3[1/K]) *( 4.90741196e-07 )) +( T_flibe *( 3.50011508e-10 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var1').set('nsf2', '(1.09266258e-04 +( log(T_fuel_1[1/K]) *( 8.09186681e-09 )) +( log(T_fuel_2[1/K]) *( 4.66542692e-08 )) +( log(T_fuel_3[1/K]) *( -7.43655469e-08 )) +( T_flibe *( -3.80164323e-11 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var1').set('nsf3', '(8.16679679e-04 +( log(T_fuel_1[1/K]) *( -6.14371327e-07 )) +( log(T_fuel_2[1/K]) *( -5.82201982e-07 )) +( log(T_fuel_3[1/K]) *( 1.67461563e-07 )) +( T_flibe *( -5.86067627e-10 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var1').set('nsf4', '(2.82225775e-03 +( log(T_fuel_1[1/K]) *( 6.84406666e-06 )) +( log(T_fuel_2[1/K]) *( 1.11131919e-05 )) +( log(T_fuel_3[1/K]) *( 7.84239125e-06 )) +( T_flibe *( 2.54302588e-09 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var1').set('nsf5', '(2.79686365e-03 +( log(T_fuel_1[1/K]) *( 1.18794167e-05 )) +( log(T_fuel_2[1/K]) *( 3.52454265e-05 )) +( log(T_fuel_3[1/K]) *( 5.98515275e-06 )) +( T_flibe *( 2.42592533e-09 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var1').set('nsf6', '(1.16014709e-02 +( log(T_fuel_1[1/K]) *( -4.56909890e-06 )) +( log(T_fuel_2[1/K]) *( -1.55272585e-05 )) +( log(T_fuel_3[1/K]) *( -4.83042761e-06 )) +( T_flibe *( -2.75657963e-09 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var1').set('nsf7', '(1.68944418e-02 +( log(T_fuel_1[1/K]) *( -1.34496252e-05 )) +( log(T_fuel_2[1/K]) *( -4.60668538e-05 )) +( log(T_fuel_3[1/K]) *( -3.01540788e-06 )) +( T_flibe *( -1.03105212e-08 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var1').set('nsf8', '(3.64243121e-02 +( log(T_fuel_1[1/K]) *( -4.23882374e-05 )) +( log(T_fuel_2[1/K]) *( -1.26498610e-04 )) +( log(T_fuel_3[1/K]) *( -1.04869189e-05 )) +( T_flibe *( -4.97321096e-09 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var1').set('rem1', '(3.92153074e-02 +( log(T_fuel_1[1/K]) *( -8.32083438e-06 )) +( log(T_fuel_2[1/K]) *( 1.07385601e-06 )) +( log(T_fuel_3[1/K]) *( -7.19112357e-06 )) +( T_flibe *( -4.33616213e-09 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var1').set('rem2', '(1.42426116e-02 +( log(T_fuel_1[1/K]) *( -3.23579649e-06 )) +( log(T_fuel_2[1/K]) *( 1.42687278e-07 )) +( log(T_fuel_3[1/K]) *( -3.73310778e-06 )) +( T_flibe *( 6.44208254e-10 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var1').set('rem3', '(8.12964554e-03 +( log(T_fuel_1[1/K]) *( 1.34708669e-06 )) +( log(T_fuel_2[1/K]) *( 2.15344388e-06 )) +( log(T_fuel_3[1/K]) *( 2.14053398e-06 )) +( T_flibe *( -2.65926760e-10 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var1').set('rem4', '(2.09786498e-02 +( log(T_fuel_1[1/K]) *( 1.65729210e-04 )) +( log(T_fuel_2[1/K]) *( 1.75912412e-04 )) +( log(T_fuel_3[1/K]) *( 1.71012964e-04 )) +( T_flibe *( -1.24333213e-08 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var1').set('rem5', '(2.51352067e-02 +( log(T_fuel_1[1/K]) *( 3.12357978e-04 )) +( log(T_fuel_2[1/K]) *( 1.20907038e-03 )) +( log(T_fuel_3[1/K]) *( 1.52979744e-04 )) +( T_flibe *( 2.49601421e-07 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var1').set('rem6', '(6.71066840e-02 +( log(T_fuel_1[1/K]) *( 1.37826194e-04 )) +( log(T_fuel_2[1/K]) *( 6.26830029e-04 )) +( log(T_fuel_3[1/K]) *( 5.44925538e-05 )) +( T_flibe *( 1.43951266e-07 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var1').set('rem7', '(5.37714235e-02 +( log(T_fuel_1[1/K]) *( 5.01395707e-04 )) +( log(T_fuel_2[1/K]) *( 2.24649865e-03 )) +( log(T_fuel_3[1/K]) *( 1.69720222e-04 )) +( T_flibe *( 5.95991564e-07 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var1').set('rem8', '(7.74557714e-02 +( log(T_fuel_1[1/K]) *( 7.32983344e-04 )) +( log(T_fuel_2[1/K]) *( 3.33951335e-03 )) +( log(T_fuel_3[1/K]) *( 2.93357319e-04 )) +( T_flibe *( 8.70146637e-07 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var1').set('scat11', '(1.32877480e-01 +( log(T_fuel_1[1/K]) *( 5.65634232e-06 )) +( log(T_fuel_2[1/K]) *( 2.49295449e-06 )) +( log(T_fuel_3[1/K]) *( 6.09152689e-06 )) +( T_flibe *( 7.30542885e-09 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var1').set('scat21', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var1').set('scat31', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var1').set('scat41', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var1').set('scat51', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var1').set('scat61', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var1').set('scat71', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var1').set('scat81', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var1').set('scat12', '(3.84327247e-02 +( log(T_fuel_1[1/K]) *( -8.77447778e-06 )) +( log(T_fuel_2[1/K]) *( -1.22928103e-06 )) +( log(T_fuel_3[1/K]) *( -8.27189341e-06 )) +( T_flibe *( -6.25369846e-09 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var1').set('scat22', '(3.19922757e-01 +( log(T_fuel_1[1/K]) *( 2.38146820e-06 )) +( log(T_fuel_2[1/K]) *( -2.36712558e-06 )) +( log(T_fuel_3[1/K]) *( 7.23981617e-07 )) +( T_flibe *( -4.42002574e-09 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var1').set('scat32', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var1').set('scat42', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var1').set('scat52', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var1').set('scat62', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var1').set('scat72', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var1').set('scat82', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var1').set('scat13', '(2.63209149e-05 +( log(T_fuel_1[1/K]) *( -1.32162250e-07 )) +( log(T_fuel_2[1/K]) *( -3.58245907e-07 )) +( log(T_fuel_3[1/K]) *( -1.59804005e-07 )) +( T_flibe *( 1.58563602e-10 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var1').set('scat23', '(1.41328728e-02 +( log(T_fuel_1[1/K]) *( -3.16182286e-06 )) +( log(T_fuel_2[1/K]) *( 5.13354931e-07 )) +( log(T_fuel_3[1/K]) *( -3.68232895e-06 )) +( T_flibe *( 5.75142937e-10 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var1').set('scat33', '(3.34821549e-01 +( log(T_fuel_1[1/K]) *( 5.16790990e-05 )) +( log(T_fuel_2[1/K]) *( 5.28420936e-05 )) +( log(T_fuel_3[1/K]) *( 5.23240864e-05 )) +( T_flibe *( -1.56847481e-09 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var1').set('scat43', '(-2.06139463e-06 +( log(T_fuel_1[1/K]) *( 8.03877967e-08 )) +( log(T_fuel_2[1/K]) *( 1.94561686e-07 )) +( log(T_fuel_3[1/K]) *( 7.77073644e-08 )) +( T_flibe *( -6.22282644e-11 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var1').set('scat53', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var1').set('scat63', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var1').set('scat73', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var1').set('scat83', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var1').set('scat14', '(-4.43865923e-08 +( log(T_fuel_1[1/K]) *( 3.54754283e-09 )) +( log(T_fuel_2[1/K]) *( -1.05267069e-09 )) +( log(T_fuel_3[1/K]) *( 4.12104532e-09 )) +( T_flibe *( 2.93420386e-12 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var1').set('scat24', '(1.21672728e-08 +( log(T_fuel_1[1/K]) *( -5.95719366e-10 )) +( log(T_fuel_2[1/K]) *( -2.40223708e-10 )) +( log(T_fuel_3[1/K]) *( -2.01319128e-10 )) +( T_flibe *( 2.19674022e-12 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var1').set('scat34', '(7.50143191e-03 +( log(T_fuel_1[1/K]) *( -1.40363585e-05 )) +( log(T_fuel_2[1/K]) *( -1.42029183e-05 )) +( log(T_fuel_3[1/K]) *( -1.29428887e-05 )) +( T_flibe *( 1.04383289e-09 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var1').set('scat44', '(3.20339743e-01 +( log(T_fuel_1[1/K]) *( 2.24707472e-04 )) +( log(T_fuel_2[1/K]) *( 2.48330587e-04 )) +( log(T_fuel_3[1/K]) *( 2.43285327e-04 )) +( T_flibe *( -1.50447237e-08 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var1').set('scat54', '(6.03255405e-05 +( log(T_fuel_1[1/K]) *( 3.35101317e-06 )) +( log(T_fuel_2[1/K]) *( 1.66701438e-05 )) +( log(T_fuel_3[1/K]) *( 2.87847031e-06 )) +( T_flibe *( 2.01808019e-09 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var1').set('scat64', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var1').set('scat74', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var1').set('scat84', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var1').set('scat15', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var1').set('scat25', '(4.48740473e-10 +( log(T_fuel_1[1/K]) *( -1.66217191e-10 )) +( log(T_fuel_2[1/K]) *( 6.86382526e-11 )) +( log(T_fuel_3[1/K]) *( 1.16921178e-10 )) +( T_flibe *( -3.11241057e-13 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var1').set('scat35', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var1').set('scat45', '(2.00714572e-02 +( log(T_fuel_1[1/K]) *( -9.63282410e-05 )) +( log(T_fuel_2[1/K]) *( -1.03974270e-04 )) +( log(T_fuel_3[1/K]) *( -1.03643605e-04 )) +( T_flibe *( 6.36358550e-09 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var1').set('scat55', '(3.17798443e-01 +( log(T_fuel_1[1/K]) *( -2.95670406e-04 )) +( log(T_fuel_2[1/K]) *( -1.14089200e-03 )) +( log(T_fuel_3[1/K]) *( -1.41601082e-04 )) +( T_flibe *( -2.29272786e-07 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var1').set('scat65', '(2.73471970e-03 +( log(T_fuel_1[1/K]) *( 2.02042026e-04 )) +( log(T_fuel_2[1/K]) *( 9.32950574e-04 )) +( log(T_fuel_3[1/K]) *( 8.15204606e-05 )) +( T_flibe *( 1.85720319e-07 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var1').set('scat75', '(-3.54138503e-04 +( log(T_fuel_1[1/K]) *( 1.10197954e-05 )) +( log(T_fuel_2[1/K]) *( 5.56196743e-05 )) +( log(T_fuel_3[1/K]) *( 7.04962127e-06 )) +( T_flibe *( 1.93752043e-09 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var1').set('scat85', '(-1.14981614e-04 +( log(T_fuel_1[1/K]) *( 4.34880128e-06 )) +( log(T_fuel_2[1/K]) *( 1.17824453e-05 )) +( log(T_fuel_3[1/K]) *( 2.51341436e-06 )) +( T_flibe *( 7.35768106e-09 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var1').set('scat16', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var1').set('scat26', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var1').set('scat36', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var1').set('scat46', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var1').set('scat56', '(2.33423625e-02 +( log(T_fuel_1[1/K]) *( 2.92312047e-04 )) +( log(T_fuel_2[1/K]) *( 1.13739622e-03 )) +( log(T_fuel_3[1/K]) *( 1.43440940e-04 )) +( T_flibe *( 2.38056571e-07 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var1').set('scat66', '(2.81474906e-01 +( log(T_fuel_1[1/K]) *( -1.09157037e-04 )) +( log(T_fuel_2[1/K]) *( -4.78466439e-04 )) +( log(T_fuel_3[1/K]) *( -4.07200933e-05 )) +( T_flibe *( -1.15048121e-07 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var1').set('scat76', '(2.29778668e-02 +( log(T_fuel_1[1/K]) *( 4.74483994e-04 )) +( log(T_fuel_2[1/K]) *( 2.11347479e-03 )) +( log(T_fuel_3[1/K]) *( 1.58797510e-04 )) +( T_flibe *( 5.59391223e-07 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var1').set('scat86', '(-1.26601479e-03 +( log(T_fuel_1[1/K]) *( 1.53673232e-04 )) +( log(T_fuel_2[1/K]) *( 8.10647989e-04 )) +( log(T_fuel_3[1/K]) *( 6.50854940e-05 )) +( T_flibe *( 1.08659336e-07 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var1').set('scat17', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var1').set('scat27', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var1').set('scat37', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var1').set('scat47', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var1').set('scat57', '(9.78205428e-05 +( log(T_fuel_1[1/K]) *( 1.03896303e-05 )) +( log(T_fuel_2[1/K]) *( 3.90943423e-05 )) +( log(T_fuel_3[1/K]) *( 4.85129948e-06 )) +( T_flibe *( 8.85073624e-09 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var1').set('scat67', '(5.61881909e-02 +( log(T_fuel_1[1/K]) *( -6.23627134e-05 )) +( log(T_fuel_2[1/K]) *( -3.08494528e-04 )) +( log(T_fuel_3[1/K]) *( -2.51951042e-05 )) +( T_flibe *( -4.29099698e-08 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var1').set('scat77', '(3.02304538e-01 +( log(T_fuel_1[1/K]) *( -4.32559447e-04 )) +( log(T_fuel_2[1/K]) *( -1.93023150e-03 )) +( log(T_fuel_3[1/K]) *( -1.35935023e-04 )) +( T_flibe *( -5.30852813e-07 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var1').set('scat87', '(6.01508401e-02 +( log(T_fuel_1[1/K]) *( 5.95864249e-04 )) +( log(T_fuel_2[1/K]) *( 2.57698824e-03 )) +( log(T_fuel_3[1/K]) *( 2.32628876e-04 )) +( T_flibe *( 7.55795496e-07 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var1').set('scat18', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var1').set('scat28', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var1').set('scat38', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var1').set('scat48', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var1').set('scat58', '(-4.68379577e-06 +( log(T_fuel_1[1/K]) *( -1.90358277e-08 )) +( log(T_fuel_2[1/K]) *( 9.10416727e-07 )) +( log(T_fuel_3[1/K]) *( 9.99381228e-08 )) +( T_flibe *( -4.65969967e-10 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var1').set('scat68', '(1.96928021e-03 +( log(T_fuel_1[1/K]) *( 2.10072075e-06 )) +( log(T_fuel_2[1/K]) *( 1.19192127e-05 )) +( log(T_fuel_3[1/K]) *( 1.99101449e-06 )) +( T_flibe *( 2.73732062e-09 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var1').set('scat78', '(2.23631253e-02 +( log(T_fuel_1[1/K]) *( 2.35861207e-05 )) +( log(T_fuel_2[1/K]) *( 9.96562429e-05 )) +( log(T_fuel_3[1/K]) *( 4.58059641e-06 )) +( T_flibe *( 3.89958275e-08 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var1').set('scat88', '(3.01481298e-01 +( log(T_fuel_1[1/K]) *( -4.28498053e-04 )) +( log(T_fuel_2[1/K]) *( -1.93515356e-03 )) +( log(T_fuel_3[1/K]) *( -1.71176298e-04 )) +( T_flibe *( -5.18382523e-07 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var1').set('tot1', '(1.72094617e-01 +( log(T_fuel_1[1/K]) *( -2.70081926e-06 )) +( log(T_fuel_2[1/K]) *( 3.40734639e-06 )) +( log(T_fuel_3[1/K]) *( -1.15840212e-06 )) +( T_flibe *( 2.87827818e-09 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var1').set('tot2', '(3.34166960e-01 +( log(T_fuel_1[1/K]) *( -8.82306336e-07 )) +( log(T_fuel_2[1/K]) *( -2.29387205e-06 )) +( log(T_fuel_3[1/K]) *( -3.12076929e-06 )) +( T_flibe *( -3.93260991e-09 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var1').set('tot3', '(3.42952432e-01 +( log(T_fuel_1[1/K]) *( 5.30240384e-05 )) +( log(T_fuel_2[1/K]) *( 5.48905495e-05 )) +( log(T_fuel_3[1/K]) *( 5.43868182e-05 )) +( T_flibe *( -1.79193243e-09 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var1').set('tot4', '(3.41320137e-01 +( log(T_fuel_1[1/K]) *( 3.90393359e-04 )) +( log(T_fuel_2[1/K]) *( 4.24141813e-04 )) +( log(T_fuel_3[1/K]) *( 4.14231149e-04 )) +( T_flibe *( -2.78171757e-08 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var1').set('tot5', '(3.42932675e-01 +( log(T_fuel_1[1/K]) *( 1.66844178e-05 )) +( log(T_fuel_2[1/K]) *( 6.83267978e-05 )) +( log(T_fuel_3[1/K]) *( 1.13480821e-05 )) +( T_flibe *( 2.05225413e-08 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var1').set('tot6', '(3.48579317e-01 +( log(T_fuel_1[1/K]) *( 2.87913338e-05 )) +( log(T_fuel_2[1/K]) *( 1.48462667e-04 )) +( log(T_fuel_3[1/K]) *( 1.38617106e-05 )) +( T_flibe *( 2.89933356e-08 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var1').set('tot7', '(3.56076139e-01 +( log(T_fuel_1[1/K]) *( 6.87660199e-05 )) +( log(T_fuel_2[1/K]) *( 3.16399838e-04 )) +( log(T_fuel_3[1/K]) *( 3.37135226e-05 )) +( T_flibe *( 6.50943881e-08 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var1').set('tot8', '(3.78934014e-01 +( log(T_fuel_1[1/K]) *( 3.04495200e-04 )) +( log(T_fuel_2[1/K]) *( 1.40447738e-03 )) +( log(T_fuel_3[1/K]) *( 1.22477013e-04 )) +( T_flibe *( 3.51871324e-07 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var1').set('diff21', '2.57142857e-01*tot1[1/cm]');
model.component('mod1').variable('fuel_xs_var1').set('diff22', '2.57142857e-01*tot2[1/cm]');
model.component('mod1').variable('fuel_xs_var1').set('diff23', '2.57142857e-01*tot3[1/cm]');
model.component('mod1').variable('fuel_xs_var1').set('diff24', '2.57142857e-01*tot4[1/cm]');
model.component('mod1').variable('fuel_xs_var1').set('diff25', '2.57142857e-01*tot5[1/cm]');
model.component('mod1').variable('fuel_xs_var1').set('diff26', '2.57142857e-01*tot6[1/cm]');
model.component('mod1').variable('fuel_xs_var1').set('diff27', '2.57142857e-01*tot7[1/cm]');
model.component('mod1').variable('fuel_xs_var1').set('diff28', '2.57142857e-01*tot8[1/cm]');
model.component('mod1').variable('fuel_xs_var1').selection.geom('geom1', 3);
model.component('mod1').variable('fuel_xs_var1').selection.set([9]);
model.component('mod1').variable.create('fuel_xs_var2');
model.component('mod1').variable('fuel_xs_var2').set('beta1', '6.578860e-03');
model.component('mod1').variable('fuel_xs_var2').set('betas1', '2.019570e-04');
model.component('mod1').variable('fuel_xs_var2').set('betas2', '1.089270e-03');
model.component('mod1').variable('fuel_xs_var2').set('betas3', '1.061300e-03');
model.component('mod1').variable('fuel_xs_var2').set('betas4', '3.025810e-03');
model.component('mod1').variable('fuel_xs_var2').set('betas5', '8.839130e-04');
model.component('mod1').variable('fuel_xs_var2').set('betas6', '3.166050e-04');
model.component('mod1').variable('fuel_xs_var2').set('chid1', '3.816450e-02');
model.component('mod1').variable('fuel_xs_var2').set('chid2', '9.397500e-01');
model.component('mod1').variable('fuel_xs_var2').set('chid3', '2.208540e-02');
model.component('mod1').variable('fuel_xs_var2').set('chid4', '0.000000e+00');
model.component('mod1').variable('fuel_xs_var2').set('chid5', '0.000000e+00');
model.component('mod1').variable('fuel_xs_var2').set('chid6', '0.000000e+00');
model.component('mod1').variable('fuel_xs_var2').set('chid7', '0.000000e+00');
model.component('mod1').variable('fuel_xs_var2').set('chid8', '0.000000e+00');
model.component('mod1').variable('fuel_xs_var2').set('chip1', '5.733200e-01');
model.component('mod1').variable('fuel_xs_var2').set('chip2', '4.251800e-01');
model.component('mod1').variable('fuel_xs_var2').set('chip3', '1.500420e-03');
model.component('mod1').variable('fuel_xs_var2').set('chip4', '0.000000e+00');
model.component('mod1').variable('fuel_xs_var2').set('chip5', '0.000000e+00');
model.component('mod1').variable('fuel_xs_var2').set('chip6', '0.000000e+00');
model.component('mod1').variable('fuel_xs_var2').set('chip7', '0.000000e+00');
model.component('mod1').variable('fuel_xs_var2').set('chip8', '0.000000e+00');
model.component('mod1').variable('fuel_xs_var2').set('chit1', '5.698180e-01');
model.component('mod1').variable('fuel_xs_var2').set('chit2', '4.285470e-01');
model.component('mod1').variable('fuel_xs_var2').set('chit3', '1.634530e-03');
model.component('mod1').variable('fuel_xs_var2').set('chit4', '0.000000e+00');
model.component('mod1').variable('fuel_xs_var2').set('chit5', '0.000000e+00');
model.component('mod1').variable('fuel_xs_var2').set('chit6', '0.000000e+00');
model.component('mod1').variable('fuel_xs_var2').set('chit7', '0.000000e+00');
model.component('mod1').variable('fuel_xs_var2').set('chit8', '0.000000e+00');
model.component('mod1').variable('fuel_xs_var2').set('diff11', '2.350940e+00[cm]');
model.component('mod1').variable('fuel_xs_var2').set('diff12', '1.145210e+00[cm]');
model.component('mod1').variable('fuel_xs_var2').set('diff13', '1.024310e+00[cm]');
model.component('mod1').variable('fuel_xs_var2').set('diff14', '1.005100e+00[cm]');
model.component('mod1').variable('fuel_xs_var2').set('diff15', '1.022970e+00[cm]');
model.component('mod1').variable('fuel_xs_var2').set('diff16', '9.984410e-01[cm]');
model.component('mod1').variable('fuel_xs_var2').set('diff17', '9.583720e-01[cm]');
model.component('mod1').variable('fuel_xs_var2').set('diff18', '8.397760e-01[cm]');
model.component('mod1').variable('fuel_xs_var2').set('fiss1', '1.083650e-04[1/cm]');
model.component('mod1').variable('fuel_xs_var2').set('fiss2', '4.435410e-05[1/cm]');
model.component('mod1').variable('fuel_xs_var2').set('fiss3', '3.319190e-04[1/cm]');
model.component('mod1').variable('fuel_xs_var2').set('fiss4', '1.234590e-03[1/cm]');
model.component('mod1').variable('fuel_xs_var2').set('fiss5', '1.340010e-03[1/cm]');
model.component('mod1').variable('fuel_xs_var2').set('fiss6', '4.676170e-03[1/cm]');
model.component('mod1').variable('fuel_xs_var2').set('fiss7', '6.698330e-03[1/cm]');
model.component('mod1').variable('fuel_xs_var2').set('fiss8', '1.429930e-02[1/cm]');
model.component('mod1').variable('fuel_xs_var2').set('invV1', '4.789290e-10[s/cm]');
model.component('mod1').variable('fuel_xs_var2').set('invV2', '1.942500e-09[s/cm]');
model.component('mod1').variable('fuel_xs_var2').set('invV3', '2.991820e-08[s/cm]');
model.component('mod1').variable('fuel_xs_var2').set('invV4', '2.005150e-07[s/cm]');
model.component('mod1').variable('fuel_xs_var2').set('invV5', '6.862670e-07[s/cm]');
model.component('mod1').variable('fuel_xs_var2').set('invV6', '1.345610e-06[s/cm]');
model.component('mod1').variable('fuel_xs_var2').set('invV7', '2.141300e-06[s/cm]');
model.component('mod1').variable('fuel_xs_var2').set('invV8', '4.102670e-06[s/cm]');
model.component('mod1').variable('fuel_xs_var2').set('kappa1', '2.052230e+02[MeV]');
model.component('mod1').variable('fuel_xs_var2').set('kappa2', '2.023490e+02[MeV]');
model.component('mod1').variable('fuel_xs_var2').set('kappa3', '2.022710e+02[MeV]');
model.component('mod1').variable('fuel_xs_var2').set('kappa4', '2.022700e+02[MeV]');
model.component('mod1').variable('fuel_xs_var2').set('kappa5', '2.022700e+02[MeV]');
model.component('mod1').variable('fuel_xs_var2').set('kappa6', '2.022700e+02[MeV]');
model.component('mod1').variable('fuel_xs_var2').set('kappa7', '2.022700e+02[MeV]');
model.component('mod1').variable('fuel_xs_var2').set('kappa8', '2.022700e+02[MeV]');
model.component('mod1').variable('fuel_xs_var2').set('lambdas1', '1.087300e-02[1/s]');
model.component('mod1').variable('fuel_xs_var2').set('lambdas2', '3.181920e-02[1/s]');
model.component('mod1').variable('fuel_xs_var2').set('lambdas3', '1.093960e-01[1/s]');
model.component('mod1').variable('fuel_xs_var2').set('lambdas4', '3.170910e-01[1/s]');
model.component('mod1').variable('fuel_xs_var2').set('lambdas5', '1.353750e+00[1/s]');
model.component('mod1').variable('fuel_xs_var2').set('lambdas6', '8.281150e+00[1/s]');
model.component('mod1').variable('fuel_xs_var2').set('nsf1', '(2.91576780e-04 +( log(T_fuel_1[1/K]) *( 1.50407311e-07 )) +( log(T_fuel_2[1/K]) *( 3.43861372e-07 )) +( log(T_fuel_3[1/K]) *( 4.90741196e-07 )) +( T_flibe *( 3.50011508e-10 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var2').set('nsf2', '(1.09266258e-04 +( log(T_fuel_1[1/K]) *( 8.09186681e-09 )) +( log(T_fuel_2[1/K]) *( 4.66542692e-08 )) +( log(T_fuel_3[1/K]) *( -7.43655469e-08 )) +( T_flibe *( -3.80164323e-11 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var2').set('nsf3', '(8.16679679e-04 +( log(T_fuel_1[1/K]) *( -6.14371327e-07 )) +( log(T_fuel_2[1/K]) *( -5.82201982e-07 )) +( log(T_fuel_3[1/K]) *( 1.67461563e-07 )) +( T_flibe *( -5.86067627e-10 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var2').set('nsf4', '(2.82225775e-03 +( log(T_fuel_1[1/K]) *( 6.84406666e-06 )) +( log(T_fuel_2[1/K]) *( 1.11131919e-05 )) +( log(T_fuel_3[1/K]) *( 7.84239125e-06 )) +( T_flibe *( 2.54302588e-09 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var2').set('nsf5', '(2.79686365e-03 +( log(T_fuel_1[1/K]) *( 1.18794167e-05 )) +( log(T_fuel_2[1/K]) *( 3.52454265e-05 )) +( log(T_fuel_3[1/K]) *( 5.98515275e-06 )) +( T_flibe *( 2.42592533e-09 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var2').set('nsf6', '(1.16014709e-02 +( log(T_fuel_1[1/K]) *( -4.56909890e-06 )) +( log(T_fuel_2[1/K]) *( -1.55272585e-05 )) +( log(T_fuel_3[1/K]) *( -4.83042761e-06 )) +( T_flibe *( -2.75657963e-09 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var2').set('nsf7', '(1.68944418e-02 +( log(T_fuel_1[1/K]) *( -1.34496252e-05 )) +( log(T_fuel_2[1/K]) *( -4.60668538e-05 )) +( log(T_fuel_3[1/K]) *( -3.01540788e-06 )) +( T_flibe *( -1.03105212e-08 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var2').set('nsf8', '(3.64243121e-02 +( log(T_fuel_1[1/K]) *( -4.23882374e-05 )) +( log(T_fuel_2[1/K]) *( -1.26498610e-04 )) +( log(T_fuel_3[1/K]) *( -1.04869189e-05 )) +( T_flibe *( -4.97321096e-09 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var2').set('rem1', '(3.92153074e-02 +( log(T_fuel_1[1/K]) *( -8.32083438e-06 )) +( log(T_fuel_2[1/K]) *( 1.07385601e-06 )) +( log(T_fuel_3[1/K]) *( -7.19112357e-06 )) +( T_flibe *( -4.33616213e-09 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var2').set('rem2', '(1.42426116e-02 +( log(T_fuel_1[1/K]) *( -3.23579649e-06 )) +( log(T_fuel_2[1/K]) *( 1.42687278e-07 )) +( log(T_fuel_3[1/K]) *( -3.73310778e-06 )) +( T_flibe *( 6.44208254e-10 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var2').set('rem3', '(8.12964554e-03 +( log(T_fuel_1[1/K]) *( 1.34708669e-06 )) +( log(T_fuel_2[1/K]) *( 2.15344388e-06 )) +( log(T_fuel_3[1/K]) *( 2.14053398e-06 )) +( T_flibe *( -2.65926760e-10 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var2').set('rem4', '(2.09786498e-02 +( log(T_fuel_1[1/K]) *( 1.65729210e-04 )) +( log(T_fuel_2[1/K]) *( 1.75912412e-04 )) +( log(T_fuel_3[1/K]) *( 1.71012964e-04 )) +( T_flibe *( -1.24333213e-08 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var2').set('rem5', '(2.51352067e-02 +( log(T_fuel_1[1/K]) *( 3.12357978e-04 )) +( log(T_fuel_2[1/K]) *( 1.20907038e-03 )) +( log(T_fuel_3[1/K]) *( 1.52979744e-04 )) +( T_flibe *( 2.49601421e-07 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var2').set('rem6', '(6.71066840e-02 +( log(T_fuel_1[1/K]) *( 1.37826194e-04 )) +( log(T_fuel_2[1/K]) *( 6.26830029e-04 )) +( log(T_fuel_3[1/K]) *( 5.44925538e-05 )) +( T_flibe *( 1.43951266e-07 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var2').set('rem7', '(5.37714235e-02 +( log(T_fuel_1[1/K]) *( 5.01395707e-04 )) +( log(T_fuel_2[1/K]) *( 2.24649865e-03 )) +( log(T_fuel_3[1/K]) *( 1.69720222e-04 )) +( T_flibe *( 5.95991564e-07 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var2').set('rem8', '(7.74557714e-02 +( log(T_fuel_1[1/K]) *( 7.32983344e-04 )) +( log(T_fuel_2[1/K]) *( 3.33951335e-03 )) +( log(T_fuel_3[1/K]) *( 2.93357319e-04 )) +( T_flibe *( 8.70146637e-07 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var2').set('scat11', '(1.32877480e-01 +( log(T_fuel_1[1/K]) *( 5.65634232e-06 )) +( log(T_fuel_2[1/K]) *( 2.49295449e-06 )) +( log(T_fuel_3[1/K]) *( 6.09152689e-06 )) +( T_flibe *( 7.30542885e-09 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var2').set('scat21', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var2').set('scat31', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var2').set('scat41', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var2').set('scat51', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var2').set('scat61', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var2').set('scat71', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var2').set('scat81', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var2').set('scat12', '(3.84327247e-02 +( log(T_fuel_1[1/K]) *( -8.77447778e-06 )) +( log(T_fuel_2[1/K]) *( -1.22928103e-06 )) +( log(T_fuel_3[1/K]) *( -8.27189341e-06 )) +( T_flibe *( -6.25369846e-09 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var2').set('scat22', '(3.19922757e-01 +( log(T_fuel_1[1/K]) *( 2.38146820e-06 )) +( log(T_fuel_2[1/K]) *( -2.36712558e-06 )) +( log(T_fuel_3[1/K]) *( 7.23981617e-07 )) +( T_flibe *( -4.42002574e-09 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var2').set('scat32', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var2').set('scat42', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var2').set('scat52', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var2').set('scat62', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var2').set('scat72', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var2').set('scat82', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var2').set('scat13', '(2.63209149e-05 +( log(T_fuel_1[1/K]) *( -1.32162250e-07 )) +( log(T_fuel_2[1/K]) *( -3.58245907e-07 )) +( log(T_fuel_3[1/K]) *( -1.59804005e-07 )) +( T_flibe *( 1.58563602e-10 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var2').set('scat23', '(1.41328728e-02 +( log(T_fuel_1[1/K]) *( -3.16182286e-06 )) +( log(T_fuel_2[1/K]) *( 5.13354931e-07 )) +( log(T_fuel_3[1/K]) *( -3.68232895e-06 )) +( T_flibe *( 5.75142937e-10 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var2').set('scat33', '(3.34821549e-01 +( log(T_fuel_1[1/K]) *( 5.16790990e-05 )) +( log(T_fuel_2[1/K]) *( 5.28420936e-05 )) +( log(T_fuel_3[1/K]) *( 5.23240864e-05 )) +( T_flibe *( -1.56847481e-09 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var2').set('scat43', '(-2.06139463e-06 +( log(T_fuel_1[1/K]) *( 8.03877967e-08 )) +( log(T_fuel_2[1/K]) *( 1.94561686e-07 )) +( log(T_fuel_3[1/K]) *( 7.77073644e-08 )) +( T_flibe *( -6.22282644e-11 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var2').set('scat53', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var2').set('scat63', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var2').set('scat73', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var2').set('scat83', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var2').set('scat14', '(-4.43865923e-08 +( log(T_fuel_1[1/K]) *( 3.54754283e-09 )) +( log(T_fuel_2[1/K]) *( -1.05267069e-09 )) +( log(T_fuel_3[1/K]) *( 4.12104532e-09 )) +( T_flibe *( 2.93420386e-12 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var2').set('scat24', '(1.21672728e-08 +( log(T_fuel_1[1/K]) *( -5.95719366e-10 )) +( log(T_fuel_2[1/K]) *( -2.40223708e-10 )) +( log(T_fuel_3[1/K]) *( -2.01319128e-10 )) +( T_flibe *( 2.19674022e-12 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var2').set('scat34', '(7.50143191e-03 +( log(T_fuel_1[1/K]) *( -1.40363585e-05 )) +( log(T_fuel_2[1/K]) *( -1.42029183e-05 )) +( log(T_fuel_3[1/K]) *( -1.29428887e-05 )) +( T_flibe *( 1.04383289e-09 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var2').set('scat44', '(3.20339743e-01 +( log(T_fuel_1[1/K]) *( 2.24707472e-04 )) +( log(T_fuel_2[1/K]) *( 2.48330587e-04 )) +( log(T_fuel_3[1/K]) *( 2.43285327e-04 )) +( T_flibe *( -1.50447237e-08 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var2').set('scat54', '(6.03255405e-05 +( log(T_fuel_1[1/K]) *( 3.35101317e-06 )) +( log(T_fuel_2[1/K]) *( 1.66701438e-05 )) +( log(T_fuel_3[1/K]) *( 2.87847031e-06 )) +( T_flibe *( 2.01808019e-09 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var2').set('scat64', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var2').set('scat74', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var2').set('scat84', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var2').set('scat15', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var2').set('scat25', '(4.48740473e-10 +( log(T_fuel_1[1/K]) *( -1.66217191e-10 )) +( log(T_fuel_2[1/K]) *( 6.86382526e-11 )) +( log(T_fuel_3[1/K]) *( 1.16921178e-10 )) +( T_flibe *( -3.11241057e-13 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var2').set('scat35', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var2').set('scat45', '(2.00714572e-02 +( log(T_fuel_1[1/K]) *( -9.63282410e-05 )) +( log(T_fuel_2[1/K]) *( -1.03974270e-04 )) +( log(T_fuel_3[1/K]) *( -1.03643605e-04 )) +( T_flibe *( 6.36358550e-09 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var2').set('scat55', '(3.17798443e-01 +( log(T_fuel_1[1/K]) *( -2.95670406e-04 )) +( log(T_fuel_2[1/K]) *( -1.14089200e-03 )) +( log(T_fuel_3[1/K]) *( -1.41601082e-04 )) +( T_flibe *( -2.29272786e-07 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var2').set('scat65', '(2.73471970e-03 +( log(T_fuel_1[1/K]) *( 2.02042026e-04 )) +( log(T_fuel_2[1/K]) *( 9.32950574e-04 )) +( log(T_fuel_3[1/K]) *( 8.15204606e-05 )) +( T_flibe *( 1.85720319e-07 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var2').set('scat75', '(-3.54138503e-04 +( log(T_fuel_1[1/K]) *( 1.10197954e-05 )) +( log(T_fuel_2[1/K]) *( 5.56196743e-05 )) +( log(T_fuel_3[1/K]) *( 7.04962127e-06 )) +( T_flibe *( 1.93752043e-09 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var2').set('scat85', '(-1.14981614e-04 +( log(T_fuel_1[1/K]) *( 4.34880128e-06 )) +( log(T_fuel_2[1/K]) *( 1.17824453e-05 )) +( log(T_fuel_3[1/K]) *( 2.51341436e-06 )) +( T_flibe *( 7.35768106e-09 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var2').set('scat16', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var2').set('scat26', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var2').set('scat36', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var2').set('scat46', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var2').set('scat56', '(2.33423625e-02 +( log(T_fuel_1[1/K]) *( 2.92312047e-04 )) +( log(T_fuel_2[1/K]) *( 1.13739622e-03 )) +( log(T_fuel_3[1/K]) *( 1.43440940e-04 )) +( T_flibe *( 2.38056571e-07 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var2').set('scat66', '(2.81474906e-01 +( log(T_fuel_1[1/K]) *( -1.09157037e-04 )) +( log(T_fuel_2[1/K]) *( -4.78466439e-04 )) +( log(T_fuel_3[1/K]) *( -4.07200933e-05 )) +( T_flibe *( -1.15048121e-07 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var2').set('scat76', '(2.29778668e-02 +( log(T_fuel_1[1/K]) *( 4.74483994e-04 )) +( log(T_fuel_2[1/K]) *( 2.11347479e-03 )) +( log(T_fuel_3[1/K]) *( 1.58797510e-04 )) +( T_flibe *( 5.59391223e-07 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var2').set('scat86', '(-1.26601479e-03 +( log(T_fuel_1[1/K]) *( 1.53673232e-04 )) +( log(T_fuel_2[1/K]) *( 8.10647989e-04 )) +( log(T_fuel_3[1/K]) *( 6.50854940e-05 )) +( T_flibe *( 1.08659336e-07 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var2').set('scat17', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var2').set('scat27', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var2').set('scat37', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var2').set('scat47', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var2').set('scat57', '(9.78205428e-05 +( log(T_fuel_1[1/K]) *( 1.03896303e-05 )) +( log(T_fuel_2[1/K]) *( 3.90943423e-05 )) +( log(T_fuel_3[1/K]) *( 4.85129948e-06 )) +( T_flibe *( 8.85073624e-09 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var2').set('scat67', '(5.61881909e-02 +( log(T_fuel_1[1/K]) *( -6.23627134e-05 )) +( log(T_fuel_2[1/K]) *( -3.08494528e-04 )) +( log(T_fuel_3[1/K]) *( -2.51951042e-05 )) +( T_flibe *( -4.29099698e-08 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var2').set('scat77', '(3.02304538e-01 +( log(T_fuel_1[1/K]) *( -4.32559447e-04 )) +( log(T_fuel_2[1/K]) *( -1.93023150e-03 )) +( log(T_fuel_3[1/K]) *( -1.35935023e-04 )) +( T_flibe *( -5.30852813e-07 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var2').set('scat87', '(6.01508401e-02 +( log(T_fuel_1[1/K]) *( 5.95864249e-04 )) +( log(T_fuel_2[1/K]) *( 2.57698824e-03 )) +( log(T_fuel_3[1/K]) *( 2.32628876e-04 )) +( T_flibe *( 7.55795496e-07 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var2').set('scat18', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var2').set('scat28', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var2').set('scat38', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var2').set('scat48', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var2').set('scat58', '(-4.68379577e-06 +( log(T_fuel_1[1/K]) *( -1.90358277e-08 )) +( log(T_fuel_2[1/K]) *( 9.10416727e-07 )) +( log(T_fuel_3[1/K]) *( 9.99381228e-08 )) +( T_flibe *( -4.65969967e-10 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var2').set('scat68', '(1.96928021e-03 +( log(T_fuel_1[1/K]) *( 2.10072075e-06 )) +( log(T_fuel_2[1/K]) *( 1.19192127e-05 )) +( log(T_fuel_3[1/K]) *( 1.99101449e-06 )) +( T_flibe *( 2.73732062e-09 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var2').set('scat78', '(2.23631253e-02 +( log(T_fuel_1[1/K]) *( 2.35861207e-05 )) +( log(T_fuel_2[1/K]) *( 9.96562429e-05 )) +( log(T_fuel_3[1/K]) *( 4.58059641e-06 )) +( T_flibe *( 3.89958275e-08 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var2').set('scat88', '(3.01481298e-01 +( log(T_fuel_1[1/K]) *( -4.28498053e-04 )) +( log(T_fuel_2[1/K]) *( -1.93515356e-03 )) +( log(T_fuel_3[1/K]) *( -1.71176298e-04 )) +( T_flibe *( -5.18382523e-07 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var2').set('tot1', '(1.72094617e-01 +( log(T_fuel_1[1/K]) *( -2.70081926e-06 )) +( log(T_fuel_2[1/K]) *( 3.40734639e-06 )) +( log(T_fuel_3[1/K]) *( -1.15840212e-06 )) +( T_flibe *( 2.87827818e-09 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var2').set('tot2', '(3.34166960e-01 +( log(T_fuel_1[1/K]) *( -8.82306336e-07 )) +( log(T_fuel_2[1/K]) *( -2.29387205e-06 )) +( log(T_fuel_3[1/K]) *( -3.12076929e-06 )) +( T_flibe *( -3.93260991e-09 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var2').set('tot3', '(3.42952432e-01 +( log(T_fuel_1[1/K]) *( 5.30240384e-05 )) +( log(T_fuel_2[1/K]) *( 5.48905495e-05 )) +( log(T_fuel_3[1/K]) *( 5.43868182e-05 )) +( T_flibe *( -1.79193243e-09 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var2').set('tot4', '(3.41320137e-01 +( log(T_fuel_1[1/K]) *( 3.90393359e-04 )) +( log(T_fuel_2[1/K]) *( 4.24141813e-04 )) +( log(T_fuel_3[1/K]) *( 4.14231149e-04 )) +( T_flibe *( -2.78171757e-08 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var2').set('tot5', '(3.42932675e-01 +( log(T_fuel_1[1/K]) *( 1.66844178e-05 )) +( log(T_fuel_2[1/K]) *( 6.83267978e-05 )) +( log(T_fuel_3[1/K]) *( 1.13480821e-05 )) +( T_flibe *( 2.05225413e-08 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var2').set('tot6', '(3.48579317e-01 +( log(T_fuel_1[1/K]) *( 2.87913338e-05 )) +( log(T_fuel_2[1/K]) *( 1.48462667e-04 )) +( log(T_fuel_3[1/K]) *( 1.38617106e-05 )) +( T_flibe *( 2.89933356e-08 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var2').set('tot7', '(3.56076139e-01 +( log(T_fuel_1[1/K]) *( 6.87660199e-05 )) +( log(T_fuel_2[1/K]) *( 3.16399838e-04 )) +( log(T_fuel_3[1/K]) *( 3.37135226e-05 )) +( T_flibe *( 6.50943881e-08 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var2').set('tot8', '(3.78934014e-01 +( log(T_fuel_1[1/K]) *( 3.04495200e-04 )) +( log(T_fuel_2[1/K]) *( 1.40447738e-03 )) +( log(T_fuel_3[1/K]) *( 1.22477013e-04 )) +( T_flibe *( 3.51871324e-07 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var2').set('diff21', '2.57142857e-01*tot1[1/cm]');
model.component('mod1').variable('fuel_xs_var2').set('diff22', '2.57142857e-01*tot2[1/cm]');
model.component('mod1').variable('fuel_xs_var2').set('diff23', '2.57142857e-01*tot3[1/cm]');
model.component('mod1').variable('fuel_xs_var2').set('diff24', '2.57142857e-01*tot4[1/cm]');
model.component('mod1').variable('fuel_xs_var2').set('diff25', '2.57142857e-01*tot5[1/cm]');
model.component('mod1').variable('fuel_xs_var2').set('diff26', '2.57142857e-01*tot6[1/cm]');
model.component('mod1').variable('fuel_xs_var2').set('diff27', '2.57142857e-01*tot7[1/cm]');
model.component('mod1').variable('fuel_xs_var2').set('diff28', '2.57142857e-01*tot8[1/cm]');
model.component('mod1').variable('fuel_xs_var2').selection.geom('geom1', 3);
model.component('mod1').variable('fuel_xs_var2').selection.set([8]);
model.component('mod1').variable.create('fuel_xs_var3');
model.component('mod1').variable('fuel_xs_var3').set('beta1', '6.578860e-03');
model.component('mod1').variable('fuel_xs_var3').set('betas1', '2.019570e-04');
model.component('mod1').variable('fuel_xs_var3').set('betas2', '1.089270e-03');
model.component('mod1').variable('fuel_xs_var3').set('betas3', '1.061300e-03');
model.component('mod1').variable('fuel_xs_var3').set('betas4', '3.025810e-03');
model.component('mod1').variable('fuel_xs_var3').set('betas5', '8.839130e-04');
model.component('mod1').variable('fuel_xs_var3').set('betas6', '3.166050e-04');
model.component('mod1').variable('fuel_xs_var3').set('chid1', '3.787110e-02');
model.component('mod1').variable('fuel_xs_var3').set('chid2', '9.407890e-01');
model.component('mod1').variable('fuel_xs_var3').set('chid3', '2.127880e-02');
model.component('mod1').variable('fuel_xs_var3').set('chid4', '0.000000e+00');
model.component('mod1').variable('fuel_xs_var3').set('chid5', '6.071210e-05');
model.component('mod1').variable('fuel_xs_var3').set('chid6', '0.000000e+00');
model.component('mod1').variable('fuel_xs_var3').set('chid7', '0.000000e+00');
model.component('mod1').variable('fuel_xs_var3').set('chid8', '0.000000e+00');
model.component('mod1').variable('fuel_xs_var3').set('chip1', '5.736450e-01');
model.component('mod1').variable('fuel_xs_var3').set('chip2', '4.248420e-01');
model.component('mod1').variable('fuel_xs_var3').set('chip3', '1.512170e-03');
model.component('mod1').variable('fuel_xs_var3').set('chip4', '0.000000e+00');
model.component('mod1').variable('fuel_xs_var3').set('chip5', '0.000000e+00');
model.component('mod1').variable('fuel_xs_var3').set('chip6', '0.000000e+00');
model.component('mod1').variable('fuel_xs_var3').set('chip7', '0.000000e+00');
model.component('mod1').variable('fuel_xs_var3').set('chip8', '0.000000e+00');
model.component('mod1').variable('fuel_xs_var3').set('chit1', '5.701160e-01');
model.component('mod1').variable('fuel_xs_var3').set('chit2', '4.282420e-01');
model.component('mod1').variable('fuel_xs_var3').set('chit3', '1.641730e-03');
model.component('mod1').variable('fuel_xs_var3').set('chit4', '0.000000e+00');
model.component('mod1').variable('fuel_xs_var3').set('chit5', '4.266190e-07');
model.component('mod1').variable('fuel_xs_var3').set('chit6', '0.000000e+00');
model.component('mod1').variable('fuel_xs_var3').set('chit7', '0.000000e+00');
model.component('mod1').variable('fuel_xs_var3').set('chit8', '0.000000e+00');
model.component('mod1').variable('fuel_xs_var3').set('diff11', '2.349400e+00[cm]');
model.component('mod1').variable('fuel_xs_var3').set('diff12', '1.147970e+00[cm]');
model.component('mod1').variable('fuel_xs_var3').set('diff13', '1.024380e+00[cm]');
model.component('mod1').variable('fuel_xs_var3').set('diff14', '1.004910e+00[cm]');
model.component('mod1').variable('fuel_xs_var3').set('diff15', '1.022750e+00[cm]');
model.component('mod1').variable('fuel_xs_var3').set('diff16', '9.985660e-01[cm]');
model.component('mod1').variable('fuel_xs_var3').set('diff17', '9.582340e-01[cm]');
model.component('mod1').variable('fuel_xs_var3').set('diff18', '8.395770e-01[cm]');
model.component('mod1').variable('fuel_xs_var3').set('fiss1', '1.093350e-04[1/cm]');
model.component('mod1').variable('fuel_xs_var3').set('fiss2', '4.443300e-05[1/cm]');
model.component('mod1').variable('fuel_xs_var3').set('fiss3', '3.356530e-04[1/cm]');
model.component('mod1').variable('fuel_xs_var3').set('fiss4', '1.232250e-03[1/cm]');
model.component('mod1').variable('fuel_xs_var3').set('fiss5', '1.349000e-03[1/cm]');
model.component('mod1').variable('fuel_xs_var3').set('fiss6', '4.670340e-03[1/cm]');
model.component('mod1').variable('fuel_xs_var3').set('fiss7', '6.707770e-03[1/cm]');
model.component('mod1').variable('fuel_xs_var3').set('fiss8', '1.434570e-02[1/cm]');
model.component('mod1').variable('fuel_xs_var3').set('invV1', '4.784330e-10[s/cm]');
model.component('mod1').variable('fuel_xs_var3').set('invV2', '1.924900e-09[s/cm]');
model.component('mod1').variable('fuel_xs_var3').set('invV3', '3.023880e-08[s/cm]');
model.component('mod1').variable('fuel_xs_var3').set('invV4', '2.014500e-07[s/cm]');
model.component('mod1').variable('fuel_xs_var3').set('invV5', '6.891780e-07[s/cm]');
model.component('mod1').variable('fuel_xs_var3').set('invV6', '1.348060e-06[s/cm]');
model.component('mod1').variable('fuel_xs_var3').set('invV7', '2.143930e-06[s/cm]');
model.component('mod1').variable('fuel_xs_var3').set('invV8', '4.106420e-06[s/cm]');
model.component('mod1').variable('fuel_xs_var3').set('kappa1', '2.052260e+02[MeV]');
model.component('mod1').variable('fuel_xs_var3').set('kappa2', '2.023510e+02[MeV]');
model.component('mod1').variable('fuel_xs_var3').set('kappa3', '2.022710e+02[MeV]');
model.component('mod1').variable('fuel_xs_var3').set('kappa4', '2.022700e+02[MeV]');
model.component('mod1').variable('fuel_xs_var3').set('kappa5', '2.022700e+02[MeV]');
model.component('mod1').variable('fuel_xs_var3').set('kappa6', '2.022700e+02[MeV]');
model.component('mod1').variable('fuel_xs_var3').set('kappa7', '2.022700e+02[MeV]');
model.component('mod1').variable('fuel_xs_var3').set('kappa8', '2.022700e+02[MeV]');
model.component('mod1').variable('fuel_xs_var3').set('lambdas1', '1.087300e-02[1/s]');
model.component('mod1').variable('fuel_xs_var3').set('lambdas2', '3.181920e-02[1/s]');
model.component('mod1').variable('fuel_xs_var3').set('lambdas3', '1.093960e-01[1/s]');
model.component('mod1').variable('fuel_xs_var3').set('lambdas4', '3.170910e-01[1/s]');
model.component('mod1').variable('fuel_xs_var3').set('lambdas5', '1.353750e+00[1/s]');
model.component('mod1').variable('fuel_xs_var3').set('lambdas6', '8.281150e+00[1/s]');
model.component('mod1').variable('fuel_xs_var3').set('nsf1', '(3.01102331e-04 +( log(T_fuel_1[1/K]) *( 5.12503496e-07 )) +( log(T_fuel_2[1/K]) *( -3.42278421e-07 )) +( log(T_fuel_3[1/K]) *( 1.99172431e-07 )) +( T_flibe *( -3.51430302e-10 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var3').set('nsf2', '(1.10067318e-04 +( log(T_fuel_1[1/K]) *( -6.29562676e-09 )) +( log(T_fuel_2[1/K]) *( -1.82512004e-08 )) +( log(T_fuel_3[1/K]) *( -7.64489545e-08 )) +( T_flibe *( -1.06484109e-11 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var3').set('nsf3', '(8.23634962e-04 +( log(T_fuel_1[1/K]) *( -2.18286813e-08 )) +( log(T_fuel_2[1/K]) *( -3.06895186e-07 )) +( log(T_fuel_3[1/K]) *( -5.40197138e-07 )) +( T_flibe *( 1.76744120e-10 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var3').set('nsf4', '(2.81417253e-03 +( log(T_fuel_1[1/K]) *( 7.65132322e-06 )) +( log(T_fuel_2[1/K]) *( 8.88248153e-06 )) +( log(T_fuel_3[1/K]) *( 1.01256578e-05 )) +( T_flibe *( 3.32106487e-10 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var3').set('nsf5', '(2.87867542e-03 +( log(T_fuel_1[1/K]) *( 8.24610693e-06 )) +( log(T_fuel_2[1/K]) *( 3.13597016e-05 )) +( log(T_fuel_3[1/K]) *( 4.91062841e-06 )) +( T_flibe *( 6.59718117e-09 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var3').set('nsf6', '(1.17791852e-02 +( log(T_fuel_1[1/K]) *( -5.90775424e-06 )) +( log(T_fuel_2[1/K]) *( -2.50732830e-05 )) +( log(T_fuel_3[1/K]) *( -1.34675119e-05 )) +( T_flibe *( -7.86086441e-09 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var3').set('nsf7', '(1.67904199e-02 +( log(T_fuel_1[1/K]) *( -3.16659847e-06 )) +( log(T_fuel_2[1/K]) *( -5.23951543e-05 )) +( log(T_fuel_3[1/K]) *( 1.14109225e-05 )) +( T_flibe *( 7.12789692e-10 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var3').set('nsf8', '(3.66239093e-02 +( log(T_fuel_1[1/K]) *( -3.86785768e-05 )) +( log(T_fuel_2[1/K]) *( -1.30808688e-04 )) +( log(T_fuel_3[1/K]) *( -2.53213490e-05 )) +( T_flibe *( -6.05424502e-09 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var3').set('rem1', '(3.90849851e-02 +( log(T_fuel_1[1/K]) *( -1.00927212e-05 )) +( log(T_fuel_2[1/K]) *( -4.56106376e-06 )) +( log(T_fuel_3[1/K]) *( -2.46032586e-05 )) +( T_flibe *( -3.33775249e-09 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var3').set('rem2', '(1.39955039e-02 +( log(T_fuel_1[1/K]) *( -8.23035902e-06 )) +( log(T_fuel_2[1/K]) *( -7.13067526e-07 )) +( log(T_fuel_3[1/K]) *( -7.26352761e-06 )) +( T_flibe *( -4.89574402e-10 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var3').set('rem3', '(8.31102335e-03 +( log(T_fuel_1[1/K]) *( 2.88204077e-06 )) +( log(T_fuel_2[1/K]) *( -1.38333232e-07 )) +( log(T_fuel_3[1/K]) *( 5.95679179e-06 )) +( T_flibe *( 3.50277527e-09 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var3').set('rem4', '(2.12562268e-02 +( log(T_fuel_1[1/K]) *( 1.71631196e-04 )) +( log(T_fuel_2[1/K]) *( 1.88042343e-04 )) +( log(T_fuel_3[1/K]) *( 1.75885426e-04 )) +( T_flibe *( -1.72754654e-08 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var3').set('rem5', '(2.62429811e-02 +( log(T_fuel_1[1/K]) *( 2.94460150e-04 )) +( log(T_fuel_2[1/K]) *( 1.19804015e-03 )) +( log(T_fuel_3[1/K]) *( 1.46915319e-04 )) +( T_flibe *( 2.44350288e-07 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var3').set('rem6', '(6.72765173e-02 +( log(T_fuel_1[1/K]) *( 1.48289754e-04 )) +( log(T_fuel_2[1/K]) *( 6.35039252e-04 )) +( log(T_fuel_3[1/K]) *( 5.45959547e-05 )) +( T_flibe *( 1.30443754e-07 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var3').set('rem7', '(5.35687808e-02 +( log(T_fuel_1[1/K]) *( 4.94982604e-04 )) +( log(T_fuel_2[1/K]) *( 2.24066467e-03 )) +( log(T_fuel_3[1/K]) *( 2.03401800e-04 )) +( T_flibe *( 5.97208825e-07 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var3').set('rem8', '(7.72156995e-02 +( log(T_fuel_1[1/K]) *( 7.41393220e-04 )) +( log(T_fuel_2[1/K]) *( 3.36198748e-03 )) +( log(T_fuel_3[1/K]) *( 2.97668070e-04 )) +( T_flibe *( 8.40250028e-07 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var3').set('scat11', '(1.33026128e-01 +( log(T_fuel_1[1/K]) *( 5.93449347e-06 )) +( log(T_fuel_2[1/K]) *( 1.13805438e-05 )) +( log(T_fuel_3[1/K]) *( 1.15991023e-05 )) +( T_flibe *( 1.39906490e-08 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var3').set('scat21', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var3').set('scat31', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var3').set('scat41', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var3').set('scat51', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var3').set('scat61', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var3').set('scat71', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var3').set('scat81', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var3').set('scat12', '(3.82749800e-02 +( log(T_fuel_1[1/K]) *( -9.64126112e-06 )) +( log(T_fuel_2[1/K]) *( -4.83690934e-06 )) +( log(T_fuel_3[1/K]) *( -2.58225114e-05 )) +( T_flibe *( -1.67088137e-09 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var3').set('scat22', '(3.19812769e-01 +( log(T_fuel_1[1/K]) *( -3.00094360e-07 )) +( log(T_fuel_2[1/K]) *( 4.37465132e-06 )) +( log(T_fuel_3[1/K]) *( -7.86528862e-06 )) +( T_flibe *( -2.14669468e-09 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var3').set('scat32', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var3').set('scat42', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var3').set('scat52', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var3').set('scat62', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var3').set('scat72', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var3').set('scat82', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var3').set('scat13', '(1.54018405e-05 +( log(T_fuel_1[1/K]) *( 7.44962498e-08 )) +( log(T_fuel_2[1/K]) *( 1.78424271e-07 )) +( log(T_fuel_3[1/K]) *( 6.16859896e-07 )) +( T_flibe *( 4.58056227e-10 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var3').set('scat23', '(1.38839195e-02 +( log(T_fuel_1[1/K]) *( -8.42574993e-06 )) +( log(T_fuel_2[1/K]) *( 4.55115761e-08 )) +( log(T_fuel_3[1/K]) *( -7.06795301e-06 )) +( T_flibe *( -2.62214904e-10 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var3').set('scat33', '(3.34731140e-01 +( log(T_fuel_1[1/K]) *( 5.15999470e-05 )) +( log(T_fuel_2[1/K]) *( 5.12334840e-05 )) +( log(T_fuel_3[1/K]) *( 4.42077738e-05 )) +( T_flibe *( -4.43082215e-09 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var3').set('scat43', '(-2.71772288e-06 +( log(T_fuel_1[1/K]) *( 1.15376112e-07 )) +( log(T_fuel_2[1/K]) *( 2.05034850e-07 )) +( log(T_fuel_3[1/K]) *( 1.26580959e-07 )) +( T_flibe *( -5.86303830e-11 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var3').set('scat53', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var3').set('scat63', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var3').set('scat73', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var3').set('scat83', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var3').set('scat14', '(3.84318709e-08 +( log(T_fuel_1[1/K]) *( -2.45218824e-09 )) +( log(T_fuel_2[1/K]) *( -2.82119273e-09 )) +( log(T_fuel_3[1/K]) *( 1.76024732e-10 )) +( T_flibe *( -9.02923154e-13 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var3').set('scat24', '(-2.72505553e-08 +( log(T_fuel_1[1/K]) *( 8.62025203e-10 )) +( log(T_fuel_2[1/K]) *( 2.79601790e-09 )) +( log(T_fuel_3[1/K]) *( 9.85960440e-10 )) +( T_flibe *( 2.41163540e-12 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var3').set('scat34', '(7.69694631e-03 +( log(T_fuel_1[1/K]) *( -1.45857972e-05 )) +( log(T_fuel_2[1/K]) *( -1.65502617e-05 )) +( log(T_fuel_3[1/K]) *( -1.08155646e-05 )) +( T_flibe *( 3.64058230e-09 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var3').set('scat44', '(3.20154841e-01 +( log(T_fuel_1[1/K]) *( 2.24291695e-04 )) +( log(T_fuel_2[1/K]) *( 2.27144259e-04 )) +( log(T_fuel_3[1/K]) *( 2.33171287e-04 )) +( T_flibe *( -1.45143772e-08 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var3').set('scat54', '(6.70590747e-05 +( log(T_fuel_1[1/K]) *( 3.29692789e-06 )) +( log(T_fuel_2[1/K]) *( 1.60279494e-05 )) +( log(T_fuel_3[1/K]) *( 1.94963788e-06 )) +( T_flibe *( 2.25021130e-09 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var3').set('scat64', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var3').set('scat74', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var3').set('scat84', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var3').set('scat15', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var3').set('scat25', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var3').set('scat35', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var3').set('scat45', '(2.02651717e-02 +( log(T_fuel_1[1/K]) *( -9.18943738e-05 )) +( log(T_fuel_2[1/K]) *( -8.89294129e-05 )) +( log(T_fuel_3[1/K]) *( -9.39394394e-05 )) +( T_flibe *( 3.61682253e-09 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var3').set('scat55', '(3.16657641e-01 +( log(T_fuel_1[1/K]) *( -2.72672008e-04 )) +( log(T_fuel_2[1/K]) *( -1.12741766e-03 )) +( log(T_fuel_3[1/K]) *( -1.33972969e-04 )) +( T_flibe *( -2.36378853e-07 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var3').set('scat65', '(2.51142886e-03 +( log(T_fuel_1[1/K]) *( 2.02167023e-04 )) +( log(T_fuel_2[1/K]) *( 9.24664313e-04 )) +( log(T_fuel_3[1/K]) *( 9.12617850e-05 )) +( T_flibe *( 1.78052747e-07 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var3').set('scat75', '(-3.43259426e-04 +( log(T_fuel_1[1/K]) *( 9.99750732e-06 )) +( log(T_fuel_2[1/K]) *( 5.53748868e-05 )) +( log(T_fuel_3[1/K]) *( 6.77168982e-06 )) +( T_flibe *( 1.40884626e-09 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var3').set('scat85', '(-1.13229763e-04 +( log(T_fuel_1[1/K]) *( 4.01289381e-06 )) +( log(T_fuel_2[1/K]) *( 1.20070484e-05 )) +( log(T_fuel_3[1/K]) *( 2.40371816e-06 )) +( T_flibe *( 7.25425729e-09 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var3').set('scat16', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var3').set('scat26', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var3').set('scat36', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var3').set('scat46', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var3').set('scat56', '(2.44325974e-02 +( log(T_fuel_1[1/K]) *( 2.76730118e-04 )) +( log(T_fuel_2[1/K]) *( 1.12497146e-03 )) +( log(T_fuel_3[1/K]) *( 1.36322041e-04 )) +( T_flibe *( 2.30459376e-07 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var3').set('scat66', '(2.81506933e-01 +( log(T_fuel_1[1/K]) *( -1.21189180e-04 )) +( log(T_fuel_2[1/K]) *( -4.91252286e-04 )) +( log(T_fuel_3[1/K]) *( -6.07463724e-05 )) +( T_flibe *( -1.16631659e-07 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var3').set('scat76', '(2.29883383e-02 +( log(T_fuel_1[1/K]) *( 4.54257635e-04 )) +( log(T_fuel_2[1/K]) *( 2.09570079e-03 )) +( log(T_fuel_3[1/K]) *( 1.71537701e-04 )) +( T_flibe *( 5.55773074e-07 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var3').set('scat86', '(-1.21407454e-03 +( log(T_fuel_1[1/K]) *( 1.53406792e-04 )) +( log(T_fuel_2[1/K]) *( 8.00699621e-04 )) +( log(T_fuel_3[1/K]) *( 6.59613773e-05 )) +( T_flibe *( 1.14844753e-07 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var3').set('scat17', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var3').set('scat27', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var3').set('scat37', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var3').set('scat47', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var3').set('scat57', '(8.17842055e-05 +( log(T_fuel_1[1/K]) *( 1.15829120e-05 )) +( log(T_fuel_2[1/K]) *( 4.05599909e-05 )) +( log(T_fuel_3[1/K]) *( 6.11653839e-06 )) +( T_flibe *( 1.02661988e-08 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var3').set('scat67', '(5.64365493e-02 +( log(T_fuel_1[1/K]) *( -4.98577952e-05 )) +( log(T_fuel_2[1/K]) *( -2.86628299e-04 )) +( log(T_fuel_3[1/K]) *( -2.68962120e-05 )) +( T_flibe *( -4.88400727e-08 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var3').set('scat77', '(3.02439040e-01 +( log(T_fuel_1[1/K]) *( -4.10611432e-04 )) +( log(T_fuel_2[1/K]) *( -1.92747634e-03 )) +( log(T_fuel_3[1/K]) *( -1.71871207e-04 )) +( T_flibe *( -5.24272905e-07 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var3').set('scat87', '(5.98198787e-02 +( log(T_fuel_1[1/K]) *( 5.97286712e-04 )) +( log(T_fuel_2[1/K]) *( 2.60706179e-03 )) +( log(T_fuel_3[1/K]) *( 2.43323290e-04 )) +( T_flibe *( 7.24841571e-07 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var3').set('scat18', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var3').set('scat28', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var3').set('scat38', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var3').set('scat48', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var3').set('scat58', '(-6.64409187e-06 +( log(T_fuel_1[1/K]) *( 1.52355337e-07 )) +( log(T_fuel_2[1/K]) *( 9.94022811e-07 )) +( log(T_fuel_3[1/K]) *( 1.58428196e-07 )) +( T_flibe *( -5.77440399e-10 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var3').set('scat68', '(2.01010120e-03 +( log(T_fuel_1[1/K]) *( 1.32793657e-06 )) +( log(T_fuel_2[1/K]) *( 1.21836873e-05 )) +( log(T_fuel_3[1/K]) *( -1.29131709e-06 )) +( T_flibe *( 7.10625249e-09 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var3').set('scat78', '(2.22023658e-02 +( log(T_fuel_1[1/K]) *( 3.01285933e-05 )) +( log(T_fuel_2[1/K]) *( 1.14163687e-04 )) +( log(T_fuel_3[1/K]) *( 2.05010918e-05 )) +( T_flibe *( 4.32730915e-08 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var3').set('scat88', '(3.01765916e-01 +( log(T_fuel_1[1/K]) *( -4.51331036e-04 )) +( log(T_fuel_2[1/K]) *( -1.94515651e-03 )) +( log(T_fuel_3[1/K]) *( -1.74053594e-04 )) +( T_flibe *( -4.72100255e-07 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var3').set('tot1', '(1.72109656e-01 +( log(T_fuel_1[1/K]) *( -4.00107782e-06 )) +( log(T_fuel_2[1/K]) *( 6.90828427e-06 )) +( log(T_fuel_3[1/K]) *( -1.30067911e-05 )) +( T_flibe *( 1.05377362e-08 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var3').set('tot2', '(3.33808229e-01 +( log(T_fuel_1[1/K]) *( -8.37765980e-06 )) +( log(T_fuel_2[1/K]) *( 3.67455166e-06 )) +( log(T_fuel_3[1/K]) *( -1.52809914e-05 )) +( T_flibe *( -2.72192973e-09 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var3').set('tot3', '(3.43043647e-01 +( log(T_fuel_1[1/K]) *( 5.43844969e-05 )) +( log(T_fuel_2[1/K]) *( 5.09332776e-05 )) +( log(T_fuel_3[1/K]) *( 5.01551905e-05 )) +( T_flibe *( -8.00919233e-10 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var3').set('tot4', '(3.41412239e-01 +( log(T_fuel_1[1/K]) *( 3.95971684e-04 )) +( log(T_fuel_2[1/K]) *( 4.15224403e-04 )) +( log(T_fuel_3[1/K]) *( 4.08829523e-04 )) +( T_flibe *( -3.18998138e-08 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var3').set('tot5', '(3.42897338e-01 +( log(T_fuel_1[1/K]) *( 2.19070362e-05 )) +( log(T_fuel_2[1/K]) *( 7.07352090e-05 )) +( log(T_fuel_3[1/K]) *( 1.31657209e-05 )) +( T_flibe *( 8.11420354e-09 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var3').set('tot6', '(3.48785174e-01 +( log(T_fuel_1[1/K]) *( 2.70932731e-05 )) +( log(T_fuel_2[1/K]) *( 1.43640595e-04 )) +( log(T_fuel_3[1/K]) *( -6.21254948e-06 )) +( T_flibe *( 1.36057069e-08 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var3').set('tot7', '(3.56005877e-01 +( log(T_fuel_1[1/K]) *( 8.43166531e-05 )) +( log(T_fuel_2[1/K]) *( 3.13306383e-04 )) +( log(T_fuel_3[1/K]) *( 3.17355344e-05 )) +( T_flibe *( 7.30635953e-08 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var3').set('tot8', '(3.78980619e-01 +( log(T_fuel_1[1/K]) *( 2.90113123e-04 )) +( log(T_fuel_2[1/K]) *( 1.41695573e-03 )) +( log(T_fuel_3[1/K]) *( 1.23634692e-04 )) +( T_flibe *( 3.67839134e-07 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var3').set('diff21', '2.57142857e-01*tot1[1/cm]');
model.component('mod1').variable('fuel_xs_var3').set('diff22', '2.57142857e-01*tot2[1/cm]');
model.component('mod1').variable('fuel_xs_var3').set('diff23', '2.57142857e-01*tot3[1/cm]');
model.component('mod1').variable('fuel_xs_var3').set('diff24', '2.57142857e-01*tot4[1/cm]');
model.component('mod1').variable('fuel_xs_var3').set('diff25', '2.57142857e-01*tot5[1/cm]');
model.component('mod1').variable('fuel_xs_var3').set('diff26', '2.57142857e-01*tot6[1/cm]');
model.component('mod1').variable('fuel_xs_var3').set('diff27', '2.57142857e-01*tot7[1/cm]');
model.component('mod1').variable('fuel_xs_var3').set('diff28', '2.57142857e-01*tot8[1/cm]');
model.component('mod1').variable('fuel_xs_var3').selection.geom('geom1', 3);
model.component('mod1').variable('fuel_xs_var3').selection.set([13]);
model.component('mod1').variable.create('fuel_xs_var4');
model.component('mod1').variable('fuel_xs_var4').set('beta1', '6.578860e-03');
model.component('mod1').variable('fuel_xs_var4').set('betas1', '2.019570e-04');
model.component('mod1').variable('fuel_xs_var4').set('betas2', '1.089270e-03');
model.component('mod1').variable('fuel_xs_var4').set('betas3', '1.061300e-03');
model.component('mod1').variable('fuel_xs_var4').set('betas4', '3.025810e-03');
model.component('mod1').variable('fuel_xs_var4').set('betas5', '8.839130e-04');
model.component('mod1').variable('fuel_xs_var4').set('betas6', '3.166050e-04');
model.component('mod1').variable('fuel_xs_var4').set('chid1', '3.968140e-02');
model.component('mod1').variable('fuel_xs_var4').set('chid2', '9.378790e-01');
model.component('mod1').variable('fuel_xs_var4').set('chid3', '2.243940e-02');
model.component('mod1').variable('fuel_xs_var4').set('chid4', '0.000000e+00');
model.component('mod1').variable('fuel_xs_var4').set('chid5', '0.000000e+00');
model.component('mod1').variable('fuel_xs_var4').set('chid6', '0.000000e+00');
model.component('mod1').variable('fuel_xs_var4').set('chid7', '0.000000e+00');
model.component('mod1').variable('fuel_xs_var4').set('chid8', '0.000000e+00');
model.component('mod1').variable('fuel_xs_var4').set('chip1', '5.728180e-01');
model.component('mod1').variable('fuel_xs_var4').set('chip2', '4.256420e-01');
model.component('mod1').variable('fuel_xs_var4').set('chip3', '1.539530e-03');
model.component('mod1').variable('fuel_xs_var4').set('chip4', '0.000000e+00');
model.component('mod1').variable('fuel_xs_var4').set('chip5', '0.000000e+00');
model.component('mod1').variable('fuel_xs_var4').set('chip6', '0.000000e+00');
model.component('mod1').variable('fuel_xs_var4').set('chip7', '0.000000e+00');
model.component('mod1').variable('fuel_xs_var4').set('chip8', '0.000000e+00');
model.component('mod1').variable('fuel_xs_var4').set('chit1', '5.693120e-01');
model.component('mod1').variable('fuel_xs_var4').set('chit2', '4.290110e-01');
model.component('mod1').variable('fuel_xs_var4').set('chit3', '1.676470e-03');
model.component('mod1').variable('fuel_xs_var4').set('chit4', '0.000000e+00');
model.component('mod1').variable('fuel_xs_var4').set('chit5', '0.000000e+00');
model.component('mod1').variable('fuel_xs_var4').set('chit6', '0.000000e+00');
model.component('mod1').variable('fuel_xs_var4').set('chit7', '0.000000e+00');
model.component('mod1').variable('fuel_xs_var4').set('chit8', '0.000000e+00');
model.component('mod1').variable('fuel_xs_var4').set('diff11', '2.350800e+00[cm]');
model.component('mod1').variable('fuel_xs_var4').set('diff12', '1.140880e+00[cm]');
model.component('mod1').variable('fuel_xs_var4').set('diff13', '1.024420e+00[cm]');
model.component('mod1').variable('fuel_xs_var4').set('diff14', '1.005070e+00[cm]');
model.component('mod1').variable('fuel_xs_var4').set('diff15', '1.023090e+00[cm]');
model.component('mod1').variable('fuel_xs_var4').set('diff16', '9.991020e-01[cm]');
model.component('mod1').variable('fuel_xs_var4').set('diff17', '9.588600e-01[cm]');
model.component('mod1').variable('fuel_xs_var4').set('diff18', '8.399930e-01[cm]');
model.component('mod1').variable('fuel_xs_var4').set('fiss1', '1.065430e-04[1/cm]');
model.component('mod1').variable('fuel_xs_var4').set('fiss2', '4.440060e-05[1/cm]');
model.component('mod1').variable('fuel_xs_var4').set('fiss3', '3.344910e-04[1/cm]');
model.component('mod1').variable('fuel_xs_var4').set('fiss4', '1.237880e-03[1/cm]');
model.component('mod1').variable('fuel_xs_var4').set('fiss5', '1.317420e-03[1/cm]');
model.component('mod1').variable('fuel_xs_var4').set('fiss6', '4.631460e-03[1/cm]');
model.component('mod1').variable('fuel_xs_var4').set('fiss7', '6.671600e-03[1/cm]');
model.component('mod1').variable('fuel_xs_var4').set('fiss8', '1.428390e-02[1/cm]');
model.component('mod1').variable('fuel_xs_var4').set('invV1', '4.797590e-10[s/cm]');
model.component('mod1').variable('fuel_xs_var4').set('invV2', '1.963520e-09[s/cm]');
model.component('mod1').variable('fuel_xs_var4').set('invV3', '3.004830e-08[s/cm]');
model.component('mod1').variable('fuel_xs_var4').set('invV4', '2.001410e-07[s/cm]');
model.component('mod1').variable('fuel_xs_var4').set('invV5', '6.800340e-07[s/cm]');
model.component('mod1').variable('fuel_xs_var4').set('invV6', '1.337330e-06[s/cm]');
model.component('mod1').variable('fuel_xs_var4').set('invV7', '2.133830e-06[s/cm]');
model.component('mod1').variable('fuel_xs_var4').set('invV8', '4.090840e-06[s/cm]');
model.component('mod1').variable('fuel_xs_var4').set('kappa1', '2.052200e+02[MeV]');
model.component('mod1').variable('fuel_xs_var4').set('kappa2', '2.023460e+02[MeV]');
model.component('mod1').variable('fuel_xs_var4').set('kappa3', '2.022710e+02[MeV]');
model.component('mod1').variable('fuel_xs_var4').set('kappa4', '2.022700e+02[MeV]');
model.component('mod1').variable('fuel_xs_var4').set('kappa5', '2.022700e+02[MeV]');
model.component('mod1').variable('fuel_xs_var4').set('kappa6', '2.022700e+02[MeV]');
model.component('mod1').variable('fuel_xs_var4').set('kappa7', '2.022700e+02[MeV]');
model.component('mod1').variable('fuel_xs_var4').set('kappa8', '2.022700e+02[MeV]');
model.component('mod1').variable('fuel_xs_var4').set('lambdas1', '1.087300e-02[1/s]');
model.component('mod1').variable('fuel_xs_var4').set('lambdas2', '3.181920e-02[1/s]');
model.component('mod1').variable('fuel_xs_var4').set('lambdas3', '1.093960e-01[1/s]');
model.component('mod1').variable('fuel_xs_var4').set('lambdas4', '3.170910e-01[1/s]');
model.component('mod1').variable('fuel_xs_var4').set('lambdas5', '1.353750e+00[1/s]');
model.component('mod1').variable('fuel_xs_var4').set('lambdas6', '8.281150e+00[1/s]');
model.component('mod1').variable('fuel_xs_var4').set('nsf1', '(2.90382982e-04 +( log(T_fuel_1[1/K]) *( 2.45569658e-07 )) +( log(T_fuel_2[1/K]) *( 1.22916677e-07 )) +( log(T_fuel_3[1/K]) *( -3.42048130e-08 )) +( T_flibe *( 5.52266232e-10 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var4').set('nsf2', '(1.09724328e-04 +( log(T_fuel_1[1/K]) *( -3.78504981e-08 )) +( log(T_fuel_2[1/K]) *( -7.55139641e-08 )) +( log(T_fuel_3[1/K]) *( 3.99418731e-08 )) +( T_flibe *( 7.04961519e-12 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var4').set('nsf3', '(8.15409920e-04 +( log(T_fuel_1[1/K]) *( -3.19554178e-07 )) +( log(T_fuel_2[1/K]) *( 5.88969012e-07 )) +( log(T_fuel_3[1/K]) *( -4.69698495e-07 )) +( T_flibe *( -2.99761938e-11 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var4').set('nsf4', '(2.86291180e-03 +( log(T_fuel_1[1/K]) *( 8.72015739e-06 )) +( log(T_fuel_2[1/K]) *( 6.70657387e-06 )) +( log(T_fuel_3[1/K]) *( 6.58139809e-06 )) +( T_flibe *( -2.73505320e-09 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var4').set('nsf5', '(2.81640990e-03 +( log(T_fuel_1[1/K]) *( 9.68992222e-06 )) +( log(T_fuel_2[1/K]) *( 2.90813535e-05 )) +( log(T_fuel_3[1/K]) *( 6.19664595e-06 )) +( T_flibe *( 5.13063216e-09 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var4').set('nsf6', '(1.15327379e-02 +( log(T_fuel_1[1/K]) *( -7.53878372e-06 )) +( log(T_fuel_2[1/K]) *( -2.18140213e-05 )) +( log(T_fuel_3[1/K]) *( 1.97037642e-06 )) +( T_flibe *( -2.15134581e-09 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var4').set('nsf7', '(1.67994674e-02 +( log(T_fuel_1[1/K]) *( -6.32387923e-06 )) +( log(T_fuel_2[1/K]) *( -5.13589851e-05 )) +( log(T_fuel_3[1/K]) *( 3.98864215e-06 )) +( T_flibe *( -1.46608525e-08 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var4').set('nsf8', '(3.62627007e-02 +( log(T_fuel_1[1/K]) *( -2.12381475e-05 )) +( log(T_fuel_2[1/K]) *( -1.08153238e-04 )) +( log(T_fuel_3[1/K]) *( -2.59545325e-05 )) +( T_flibe *( -3.26117590e-08 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var4').set('rem1', '(3.94715121e-02 +( log(T_fuel_1[1/K]) *( 1.55021212e-05 )) +( log(T_fuel_2[1/K]) *( -9.97955519e-06 )) +( log(T_fuel_3[1/K]) *( -3.00664160e-06 )) +( T_flibe *( 8.49436476e-09 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var4').set('rem2', '(1.46182592e-02 +( log(T_fuel_1[1/K]) *( -2.97721753e-07 )) +( log(T_fuel_2[1/K]) *( -1.69189896e-06 )) +( log(T_fuel_3[1/K]) *( 2.87330713e-07 )) +( T_flibe *( 1.25734696e-09 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var4').set('rem3', '(8.17514950e-03 +( log(T_fuel_1[1/K]) *( 4.48960079e-06 )) +( log(T_fuel_2[1/K]) *( 3.95913570e-06 )) +( log(T_fuel_3[1/K]) *( -2.42949816e-07 )) +( T_flibe *( -3.69358375e-09 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var4').set('rem4', '(2.09807390e-02 +( log(T_fuel_1[1/K]) *( 1.60194393e-04 )) +( log(T_fuel_2[1/K]) *( 1.66073766e-04 )) +( log(T_fuel_3[1/K]) *( 1.54082140e-04 )) +( T_flibe *( -1.44158541e-08 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var4').set('rem5', '(2.44343431e-02 +( log(T_fuel_1[1/K]) *( 2.60432978e-04 )) +( log(T_fuel_2[1/K]) *( 1.11069277e-03 )) +( log(T_fuel_3[1/K]) *( 1.30735123e-04 )) +( T_flibe *( 2.40939036e-07 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var4').set('rem6', '(6.56869831e-02 +( log(T_fuel_1[1/K]) *( 1.43510083e-04 )) +( log(T_fuel_2[1/K]) *( 6.61292224e-04 )) +( log(T_fuel_3[1/K]) *( 7.53505304e-05 )) +( T_flibe *( 1.55742224e-07 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var4').set('rem7', '(5.35980787e-02 +( log(T_fuel_1[1/K]) *( 5.04499721e-04 )) +( log(T_fuel_2[1/K]) *( 2.27847948e-03 )) +( log(T_fuel_3[1/K]) *( 1.92496940e-04 )) +( T_flibe *( 5.92890327e-07 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var4').set('rem8', '(7.74402202e-02 +( log(T_fuel_1[1/K]) *( 7.38681468e-04 )) +( log(T_fuel_2[1/K]) *( 3.36780390e-03 )) +( log(T_fuel_3[1/K]) *( 3.00106049e-04 )) +( T_flibe *( 8.27150106e-07 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var4').set('scat11', '(1.32566933e-01 +( log(T_fuel_1[1/K]) *( -7.33168200e-06 )) +( log(T_fuel_2[1/K]) *( 1.14651329e-05 )) +( log(T_fuel_3[1/K]) *( 7.91796002e-06 )) +( T_flibe *( 2.21191809e-09 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var4').set('scat21', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var4').set('scat31', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var4').set('scat41', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var4').set('scat51', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var4').set('scat61', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var4').set('scat71', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var4').set('scat81', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var4').set('scat12', '(3.86532470e-02 +( log(T_fuel_1[1/K]) *( 1.55805920e-05 )) +( log(T_fuel_2[1/K]) *( -7.29690639e-06 )) +( log(T_fuel_3[1/K]) *( -3.92501737e-06 )) +( T_flibe *( 8.67552209e-09 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var4').set('scat22', '(3.20257442e-01 +( log(T_fuel_1[1/K]) *( 2.10114253e-07 )) +( log(T_fuel_2[1/K]) *( 1.57577748e-06 )) +( log(T_fuel_3[1/K]) *( 6.80910717e-06 )) +( T_flibe *( -3.85370760e-09 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var4').set('scat32', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var4').set('scat42', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var4').set('scat52', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var4').set('scat62', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var4').set('scat72', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var4').set('scat82', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var4').set('scat13', '(2.50174440e-05 +( log(T_fuel_1[1/K]) *( -2.11145318e-07 )) +( log(T_fuel_2[1/K]) *( -1.47442069e-07 )) +( log(T_fuel_3[1/K]) *( -9.04678598e-08 )) +( T_flibe *( -6.16691499e-11 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var4').set('scat23', '(1.45119465e-02 +( log(T_fuel_1[1/K]) *( -1.20848142e-07 )) +( log(T_fuel_2[1/K]) *( -2.06745998e-06 )) +( log(T_fuel_3[1/K]) *( 3.42939861e-07 )) +( T_flibe *( 1.19552784e-09 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var4').set('scat33', '(3.34748107e-01 +( log(T_fuel_1[1/K]) *( 5.28656767e-05 )) +( log(T_fuel_2[1/K]) *( 5.43364218e-05 )) +( log(T_fuel_3[1/K]) *( 5.16247652e-05 )) +( T_flibe *( -1.18567495e-09 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var4').set('scat43', '(-2.36227081e-06 +( log(T_fuel_1[1/K]) *( 7.01514960e-08 )) +( log(T_fuel_2[1/K]) *( 2.06347195e-07 )) +( log(T_fuel_3[1/K]) *( 1.21966501e-07 )) +( T_flibe *( -5.87539913e-11 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var4').set('scat53', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var4').set('scat63', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var4').set('scat73', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var4').set('scat83', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var4').set('scat14', '(-3.44036305e-08 +( log(T_fuel_1[1/K]) *( 1.88652893e-10 )) +( log(T_fuel_2[1/K]) *( 2.49393665e-09 )) +( log(T_fuel_3[1/K]) *( 2.86939801e-09 )) +( T_flibe *( -1.68794506e-12 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var4').set('scat24', '(-1.11970394e-08 +( log(T_fuel_1[1/K]) *( 2.27524661e-09 )) +( log(T_fuel_2[1/K]) *( -7.36265350e-10 )) +( log(T_fuel_3[1/K]) *( 1.70872993e-09 )) +( T_flibe *( -2.97003403e-12 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var4').set('scat34', '(7.56443559e-03 +( log(T_fuel_1[1/K]) *( -1.26187841e-05 )) +( log(T_fuel_2[1/K]) *( -1.33667715e-05 )) +( log(T_fuel_3[1/K]) *( -1.58597973e-05 )) +( T_flibe *( -3.17354173e-09 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var4').set('scat44', '(3.20478817e-01 +( log(T_fuel_1[1/K]) *( 2.32601818e-04 )) +( log(T_fuel_2[1/K]) *( 2.52090799e-04 )) +( log(T_fuel_3[1/K]) *( 2.41584561e-04 )) +( T_flibe *( -3.23086925e-08 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var4').set('scat54', '(6.36336745e-05 +( log(T_fuel_1[1/K]) *( 2.79112999e-06 )) +( log(T_fuel_2[1/K]) *( 1.70669046e-05 )) +( log(T_fuel_3[1/K]) *( 3.39972917e-06 )) +( T_flibe *( 1.63288498e-09 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var4').set('scat64', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var4').set('scat74', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var4').set('scat84', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var4').set('scat15', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var4').set('scat25', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var4').set('scat35', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var4').set('scat45', '(2.00570810e-02 +( log(T_fuel_1[1/K]) *( -1.07830245e-04 )) +( log(T_fuel_2[1/K]) *( -1.07050167e-04 )) +( log(T_fuel_3[1/K]) *( -1.17105216e-04 )) +( T_flibe *( 1.13569006e-08 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var4').set('scat55', '(3.18532166e-01 +( log(T_fuel_1[1/K]) *( -2.40644103e-04 )) +( log(T_fuel_2[1/K]) *( -1.04726138e-03 )) +( log(T_fuel_3[1/K]) *( -1.28894793e-04 )) +( T_flibe *( -2.27646459e-07 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var4').set('scat65', '(3.22358526e-03 +( log(T_fuel_1[1/K]) *( 2.06950420e-04 )) +( log(T_fuel_2[1/K]) *( 9.62369333e-04 )) +( log(T_fuel_3[1/K]) *( 8.99453547e-05 )) +( T_flibe *( 1.95418851e-07 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var4').set('scat75', '(-3.58526242e-04 +( log(T_fuel_1[1/K]) *( 1.13330261e-05 )) +( log(T_fuel_2[1/K]) *( 5.63506391e-05 )) +( log(T_fuel_3[1/K]) *( 6.90604460e-06 )) +( T_flibe *( 2.62835060e-09 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var4').set('scat85', '(-1.13303522e-04 +( log(T_fuel_1[1/K]) *( 4.66436604e-06 )) +( log(T_fuel_2[1/K]) *( 1.19235222e-05 )) +( log(T_fuel_3[1/K]) *( 1.91010955e-06 )) +( T_flibe *( 7.06410431e-09 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var4').set('scat16', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var4').set('scat26', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var4').set('scat36', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var4').set('scat46', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var4').set('scat56', '(2.26299231e-02 +( log(T_fuel_1[1/K]) *( 2.43887937e-04 )) +( log(T_fuel_2[1/K]) *( 1.04494734e-03 )) +( log(T_fuel_3[1/K]) *( 1.19420326e-04 )) +( T_flibe *( 2.26315759e-07 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var4').set('scat66', '(2.82861918e-01 +( log(T_fuel_1[1/K]) *( -1.11110341e-04 )) +( log(T_fuel_2[1/K]) *( -5.19529172e-04 )) +( log(T_fuel_3[1/K]) *( -6.98704634e-05 )) +( T_flibe *( -1.24262041e-07 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var4').set('scat76', '(2.29288107e-02 +( log(T_fuel_1[1/K]) *( 4.73401509e-04 )) +( log(T_fuel_2[1/K]) *( 2.17694648e-03 )) +( log(T_fuel_3[1/K]) *( 1.79466602e-04 )) +( T_flibe *( 5.68243248e-07 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var4').set('scat86', '(-1.34079885e-03 +( log(T_fuel_1[1/K]) *( 1.67073778e-04 )) +( log(T_fuel_2[1/K]) *( 8.08953502e-04 )) +( log(T_fuel_3[1/K]) *( 6.60852813e-05 )) +( T_flibe *( 1.04805131e-07 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var4').set('scat17', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var4').set('scat27', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var4').set('scat37', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var4').set('scat47', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var4').set('scat57', '(1.05427745e-04 +( log(T_fuel_1[1/K]) *( 9.92876341e-06 )) +( log(T_fuel_2[1/K]) *( 3.52968494e-05 )) +( log(T_fuel_3[1/K]) *( 3.85497598e-06 )) +( T_flibe *( 8.24830643e-09 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var4').set('scat67', '(5.43764147e-02 +( log(T_fuel_1[1/K]) *( -5.68152594e-05 )) +( log(T_fuel_2[1/K]) *( -2.99380794e-04 )) +( log(T_fuel_3[1/K]) *( -1.71630380e-05 )) +( T_flibe *( -4.47733964e-08 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var4').set('scat77', '(3.02349374e-01 +( log(T_fuel_1[1/K]) *( -4.32336859e-04 )) +( log(T_fuel_2[1/K]) *( -1.97292804e-03 )) +( log(T_fuel_3[1/K]) *( -1.48404353e-04 )) +( T_flibe *( -5.32264823e-07 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var4').set('scat87', '(6.02417437e-02 +( log(T_fuel_1[1/K]) *( 5.77166836e-04 )) +( log(T_fuel_2[1/K]) *( 2.60232263e-03 )) +( log(T_fuel_3[1/K]) *( 2.49512597e-04 )) +( T_flibe *( 7.32541652e-07 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var4').set('scat18', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var4').set('scat28', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var4').set('scat38', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var4').set('scat48', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var4').set('scat58', '(-4.27526744e-06 +( log(T_fuel_1[1/K]) *( -6.25892302e-08 )) +( log(T_fuel_2[1/K]) *( 8.45129533e-07 )) +( log(T_fuel_3[1/K]) *( 1.13950168e-07 )) +( T_flibe *( -3.88906278e-10 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var4').set('scat68', '(1.91724151e-03 +( log(T_fuel_1[1/K]) *( 9.77821488e-07 )) +( log(T_fuel_2[1/K]) *( 1.03979362e-05 )) +( log(T_fuel_3[1/K]) *( 1.02689717e-06 )) +( T_flibe *( 4.53604878e-09 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var4').set('scat78', '(2.23413524e-02 +( log(T_fuel_1[1/K]) *( 2.00600445e-05 )) +( log(T_fuel_2[1/K]) *( 7.10705402e-05 )) +( log(T_fuel_3[1/K]) *( -1.02823548e-06 )) +( T_flibe *( 2.67882778e-08 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var4').set('scat88', '(3.01353047e-01 +( log(T_fuel_1[1/K]) *( -4.36636598e-04 )) +( log(T_fuel_2[1/K]) *( -1.94442409e-03 )) +( log(T_fuel_3[1/K]) *( -1.84247853e-04 )) +( T_flibe *( -5.09156269e-07 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var4').set('tot1', '(1.72036959e-01 +( log(T_fuel_1[1/K]) *( 8.36679111e-06 )) +( log(T_fuel_2[1/K]) *( 1.44370327e-06 )) +( log(T_fuel_3[1/K]) *( 4.93942830e-06 )) +( T_flibe *( 1.09753242e-08 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var4').set('tot2', '(3.34874462e-01 +( log(T_fuel_1[1/K]) *( 2.57151642e-08 )) +( log(T_fuel_2[1/K]) *( -4.59758794e-08 )) +( log(T_fuel_3[1/K]) *( 7.08742923e-06 )) +( T_flibe *( -2.54712980e-09 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var4').set('tot3', '(3.42923171e-01 +( log(T_fuel_1[1/K]) *( 5.73858702e-05 )) +( log(T_fuel_2[1/K]) *( 5.79680465e-05 )) +( log(T_fuel_3[1/K]) *( 5.16684551e-05 )) +( T_flibe *( -4.77965653e-09 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var4').set('tot4', '(3.41457359e-01 +( log(T_fuel_1[1/K]) *( 3.92841320e-04 )) +( log(T_fuel_2[1/K]) *( 4.18007444e-04 )) +( log(T_fuel_3[1/K]) *( 3.96073163e-04 )) +( T_flibe *( -4.65591428e-08 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var4').set('tot5', '(3.42967679e-01 +( log(T_fuel_1[1/K]) *( 1.98506360e-05 )) +( log(T_fuel_2[1/K]) *( 6.32740953e-05 )) +( log(T_fuel_3[1/K]) *( 1.75564217e-06 )) +( T_flibe *( 1.33169119e-08 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var4').set('tot6', '(3.48550588e-01 +( log(T_fuel_1[1/K]) *( 3.21724444e-05 )) +( log(T_fuel_2[1/K]) *( 1.41734121e-04 )) +( log(T_fuel_3[1/K]) *( 5.46380642e-06 )) +( T_flibe *( 3.16047366e-08 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var4').set('tot7', '(3.55943063e-01 +( log(T_fuel_1[1/K]) *( 7.24229213e-05 )) +( log(T_fuel_2[1/K]) *( 3.05644362e-04 )) +( log(T_fuel_3[1/K]) *( 4.43805896e-05 )) +( T_flibe *( 6.06743803e-08 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var4').set('tot8', '(3.78794595e-01 +( log(T_fuel_1[1/K]) *( 3.01964472e-04 )) +( log(T_fuel_2[1/K]) *( 1.42340937e-03 )) +( log(T_fuel_3[1/K]) *( 1.15706867e-04 )) +( T_flibe *( 3.18067818e-07 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var4').set('diff21', '2.57142857e-01*tot1[1/cm]');
model.component('mod1').variable('fuel_xs_var4').set('diff22', '2.57142857e-01*tot2[1/cm]');
model.component('mod1').variable('fuel_xs_var4').set('diff23', '2.57142857e-01*tot3[1/cm]');
model.component('mod1').variable('fuel_xs_var4').set('diff24', '2.57142857e-01*tot4[1/cm]');
model.component('mod1').variable('fuel_xs_var4').set('diff25', '2.57142857e-01*tot5[1/cm]');
model.component('mod1').variable('fuel_xs_var4').set('diff26', '2.57142857e-01*tot6[1/cm]');
model.component('mod1').variable('fuel_xs_var4').set('diff27', '2.57142857e-01*tot7[1/cm]');
model.component('mod1').variable('fuel_xs_var4').set('diff28', '2.57142857e-01*tot8[1/cm]');
model.component('mod1').variable('fuel_xs_var4').selection.geom('geom1', 3);
model.component('mod1').variable('fuel_xs_var4').selection.set([12]);
model.component('mod1').variable.create('fuel_xs_var5');
model.component('mod1').variable('fuel_xs_var5').set('beta1', '6.578860e-03');
model.component('mod1').variable('fuel_xs_var5').set('betas1', '2.019570e-04');
model.component('mod1').variable('fuel_xs_var5').set('betas2', '1.089270e-03');
model.component('mod1').variable('fuel_xs_var5').set('betas3', '1.061300e-03');
model.component('mod1').variable('fuel_xs_var5').set('betas4', '3.025810e-03');
model.component('mod1').variable('fuel_xs_var5').set('betas5', '8.839130e-04');
model.component('mod1').variable('fuel_xs_var5').set('betas6', '3.166050e-04');
model.component('mod1').variable('fuel_xs_var5').set('chid1', '3.885190e-02');
model.component('mod1').variable('fuel_xs_var5').set('chid2', '9.384410e-01');
model.component('mod1').variable('fuel_xs_var5').set('chid3', '2.269090e-02');
model.component('mod1').variable('fuel_xs_var5').set('chid4', '1.660900e-05');
model.component('mod1').variable('fuel_xs_var5').set('chid5', '0.000000e+00');
model.component('mod1').variable('fuel_xs_var5').set('chid6', '0.000000e+00');
model.component('mod1').variable('fuel_xs_var5').set('chid7', '0.000000e+00');
model.component('mod1').variable('fuel_xs_var5').set('chid8', '0.000000e+00');
model.component('mod1').variable('fuel_xs_var5').set('chip1', '5.732340e-01');
model.component('mod1').variable('fuel_xs_var5').set('chip2', '4.252160e-01');
model.component('mod1').variable('fuel_xs_var5').set('chip3', '1.549410e-03');
model.component('mod1').variable('fuel_xs_var5').set('chip4', '0.000000e+00');
model.component('mod1').variable('fuel_xs_var5').set('chip5', '0.000000e+00');
model.component('mod1').variable('fuel_xs_var5').set('chip6', '0.000000e+00');
model.component('mod1').variable('fuel_xs_var5').set('chip7', '0.000000e+00');
model.component('mod1').variable('fuel_xs_var5').set('chip8', '0.000000e+00');
model.component('mod1').variable('fuel_xs_var5').set('chit1', '5.697540e-01');
model.component('mod1').variable('fuel_xs_var5').set('chit2', '4.285590e-01');
model.component('mod1').variable('fuel_xs_var5').set('chit3', '1.687080e-03');
model.component('mod1').variable('fuel_xs_var5').set('chit4', '1.218190e-07');
model.component('mod1').variable('fuel_xs_var5').set('chit5', '0.000000e+00');
model.component('mod1').variable('fuel_xs_var5').set('chit6', '0.000000e+00');
model.component('mod1').variable('fuel_xs_var5').set('chit7', '0.000000e+00');
model.component('mod1').variable('fuel_xs_var5').set('chit8', '0.000000e+00');
model.component('mod1').variable('fuel_xs_var5').set('diff11', '2.349340e+00[cm]');
model.component('mod1').variable('fuel_xs_var5').set('diff12', '1.139760e+00[cm]');
model.component('mod1').variable('fuel_xs_var5').set('diff13', '1.024210e+00[cm]');
model.component('mod1').variable('fuel_xs_var5').set('diff14', '1.005170e+00[cm]');
model.component('mod1').variable('fuel_xs_var5').set('diff15', '1.023000e+00[cm]');
model.component('mod1').variable('fuel_xs_var5').set('diff16', '9.989160e-01[cm]');
model.component('mod1').variable('fuel_xs_var5').set('diff17', '9.589060e-01[cm]');
model.component('mod1').variable('fuel_xs_var5').set('diff18', '8.399300e-01[cm]');
model.component('mod1').variable('fuel_xs_var5').set('fiss1', '1.062620e-04[1/cm]');
model.component('mod1').variable('fuel_xs_var5').set('fiss2', '4.434360e-05[1/cm]');
model.component('mod1').variable('fuel_xs_var5').set('fiss3', '3.367520e-04[1/cm]');
model.component('mod1').variable('fuel_xs_var5').set('fiss4', '1.238350e-03[1/cm]');
model.component('mod1').variable('fuel_xs_var5').set('fiss5', '1.310300e-03[1/cm]');
model.component('mod1').variable('fuel_xs_var5').set('fiss6', '4.614420e-03[1/cm]');
model.component('mod1').variable('fuel_xs_var5').set('fiss7', '6.667480e-03[1/cm]');
model.component('mod1').variable('fuel_xs_var5').set('fiss8', '1.432700e-02[1/cm]');
model.component('mod1').variable('fuel_xs_var5').set('invV1', '4.798120e-10[s/cm]');
model.component('mod1').variable('fuel_xs_var5').set('invV2', '1.970420e-09[s/cm]');
model.component('mod1').variable('fuel_xs_var5').set('invV3', '3.030690e-08[s/cm]');
model.component('mod1').variable('fuel_xs_var5').set('invV4', '2.000890e-07[s/cm]');
model.component('mod1').variable('fuel_xs_var5').set('invV5', '6.772290e-07[s/cm]');
model.component('mod1').variable('fuel_xs_var5').set('invV6', '1.335220e-06[s/cm]');
model.component('mod1').variable('fuel_xs_var5').set('invV7', '2.132700e-06[s/cm]');
model.component('mod1').variable('fuel_xs_var5').set('invV8', '4.091100e-06[s/cm]');
model.component('mod1').variable('fuel_xs_var5').set('kappa1', '2.052210e+02[MeV]');
model.component('mod1').variable('fuel_xs_var5').set('kappa2', '2.023450e+02[MeV]');
model.component('mod1').variable('fuel_xs_var5').set('kappa3', '2.022710e+02[MeV]');
model.component('mod1').variable('fuel_xs_var5').set('kappa4', '2.022700e+02[MeV]');
model.component('mod1').variable('fuel_xs_var5').set('kappa5', '2.022700e+02[MeV]');
model.component('mod1').variable('fuel_xs_var5').set('kappa6', '2.022700e+02[MeV]');
model.component('mod1').variable('fuel_xs_var5').set('kappa7', '2.022700e+02[MeV]');
model.component('mod1').variable('fuel_xs_var5').set('kappa8', '2.022700e+02[MeV]');
model.component('mod1').variable('fuel_xs_var5').set('lambdas1', '1.087300e-02[1/s]');
model.component('mod1').variable('fuel_xs_var5').set('lambdas2', '3.181920e-02[1/s]');
model.component('mod1').variable('fuel_xs_var5').set('lambdas3', '1.093960e-01[1/s]');
model.component('mod1').variable('fuel_xs_var5').set('lambdas4', '3.170910e-01[1/s]');
model.component('mod1').variable('fuel_xs_var5').set('lambdas5', '1.353750e+00[1/s]');
model.component('mod1').variable('fuel_xs_var5').set('lambdas6', '8.281150e+00[1/s]');
model.component('mod1').variable('fuel_xs_var5').set('nsf1', '(2.95372873e-04 +( log(T_fuel_1[1/K]) *( -2.70160483e-07 )) +( log(T_fuel_2[1/K]) *( -1.27539481e-07 )) +( log(T_fuel_3[1/K]) *( -8.99901539e-08 )) +( T_flibe *( 4.18834281e-10 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var5').set('nsf2', '(1.09919208e-04 +( log(T_fuel_1[1/K]) *( -5.09799653e-08 )) +( log(T_fuel_2[1/K]) *( -2.69312431e-09 )) +( log(T_fuel_3[1/K]) *( -5.58695551e-08 )) +( T_flibe *( 3.10259551e-11 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var5').set('nsf3', '(8.22025927e-04 +( log(T_fuel_1[1/K]) *( -5.05876050e-08 )) +( log(T_fuel_2[1/K]) *( -9.40956372e-08 )) +( log(T_fuel_3[1/K]) *( -1.32020030e-07 )) +( T_flibe *( -1.11535252e-10 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var5').set('nsf4', '(2.83356597e-03 +( log(T_fuel_1[1/K]) *( 9.30786513e-06 )) +( log(T_fuel_2[1/K]) *( 7.68797919e-06 )) +( log(T_fuel_3[1/K]) *( 8.73923501e-06 )) +( T_flibe *( -1.84954532e-09 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var5').set('nsf5', '(2.84539088e-03 +( log(T_fuel_1[1/K]) *( 8.44084910e-06 )) +( log(T_fuel_2[1/K]) *( 2.75216965e-05 )) +( log(T_fuel_3[1/K]) *( 2.68393828e-06 )) +( T_flibe *( 2.89594253e-09 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var5').set('nsf6', '(1.14859927e-02 +( log(T_fuel_1[1/K]) *( -3.27154563e-06 )) +( log(T_fuel_2[1/K]) *( -2.12515635e-05 )) +( log(T_fuel_3[1/K]) *( -1.33576787e-06 )) +( T_flibe *( -2.83027696e-09 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var5').set('nsf7', '(1.67986517e-02 +( log(T_fuel_1[1/K]) *( -6.67752809e-06 )) +( log(T_fuel_2[1/K]) *( -5.10237117e-05 )) +( log(T_fuel_3[1/K]) *( 1.34018519e-06 )) +( T_flibe *( -1.60625077e-08 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var5').set('nsf8', '(3.64630892e-02 +( log(T_fuel_1[1/K]) *( -3.77574995e-05 )) +( log(T_fuel_2[1/K]) *( -1.12768332e-04 )) +( log(T_fuel_3[1/K]) *( -3.59276386e-05 )) +( T_flibe *( -4.99065955e-08 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var5').set('rem1', '(3.96226915e-02 +( log(T_fuel_1[1/K]) *( -1.14779245e-06 )) +( log(T_fuel_2[1/K]) *( -1.81415526e-06 )) +( log(T_fuel_3[1/K]) *( -5.39143448e-06 )) +( T_flibe *( -2.85088106e-09 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var5').set('rem2', '(1.47690526e-02 +( log(T_fuel_1[1/K]) *( 1.89648454e-06 )) +( log(T_fuel_2[1/K]) *( 4.21119856e-08 )) +( log(T_fuel_3[1/K]) *( 1.56232847e-06 )) +( T_flibe *( 2.15666609e-11 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var5').set('rem3', '(8.26812129e-03 +( log(T_fuel_1[1/K]) *( 4.05259822e-06 )) +( log(T_fuel_2[1/K]) *( 3.08041711e-06 )) +( log(T_fuel_3[1/K]) *( 3.56816555e-06 )) +( T_flibe *( 3.14082967e-10 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var5').set('rem4', '(2.09834338e-02 +( log(T_fuel_1[1/K]) *( 1.54298583e-04 )) +( log(T_fuel_2[1/K]) *( 1.64537540e-04 )) +( log(T_fuel_3[1/K]) *( 1.59262263e-04 )) +( T_flibe *( -1.39513367e-08 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var5').set('rem5', '(2.45116854e-02 +( log(T_fuel_1[1/K]) *( 2.47048190e-04 )) +( log(T_fuel_2[1/K]) *( 1.03647652e-03 )) +( log(T_fuel_3[1/K]) *( 1.20471223e-04 )) +( T_flibe *( 2.21997593e-07 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var5').set('rem6', '(6.52120684e-02 +( log(T_fuel_1[1/K]) *( 1.45642745e-04 )) +( log(T_fuel_2[1/K]) *( 6.90917755e-04 )) +( log(T_fuel_3[1/K]) *( 6.79886331e-05 )) +( T_flibe *( 1.60895422e-07 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var5').set('rem7', '(5.34982822e-02 +( log(T_fuel_1[1/K]) *( 5.15231038e-04 )) +( log(T_fuel_2[1/K]) *( 2.27789407e-03 )) +( log(T_fuel_3[1/K]) *( 2.01388975e-04 )) +( T_flibe *( 6.05649466e-07 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var5').set('rem8', '(7.73158669e-02 +( log(T_fuel_1[1/K]) *( 7.50747822e-04 )) +( log(T_fuel_2[1/K]) *( 3.36832453e-03 )) +( log(T_fuel_3[1/K]) *( 3.00306212e-04 )) +( T_flibe *( 8.53605531e-07 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var5').set('scat11', '(1.32515000e-01 +( log(T_fuel_1[1/K]) *( -1.39648968e-06 )) +( log(T_fuel_2[1/K]) *( 6.12663450e-06 )) +( log(T_fuel_3[1/K]) *( 7.91404649e-07 )) +( T_flibe *( -3.61645234e-10 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var5').set('scat21', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var5').set('scat31', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var5').set('scat41', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var5').set('scat51', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var5').set('scat61', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var5').set('scat71', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var5').set('scat81', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var5').set('scat12', '(3.88127717e-02 +( log(T_fuel_1[1/K]) *( -1.17502397e-06 )) +( log(T_fuel_2[1/K]) *( -2.25641175e-06 )) +( log(T_fuel_3[1/K]) *( -4.21047276e-06 )) +( T_flibe *( -3.15184140e-09 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var5').set('scat22', '(3.20368962e-01 +( log(T_fuel_1[1/K]) *( 3.41637786e-06 )) +( log(T_fuel_2[1/K]) *( 8.77084690e-07 )) +( log(T_fuel_3[1/K]) *( -9.55560103e-07 )) +( T_flibe *( -5.13466673e-10 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var5').set('scat32', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var5').set('scat42', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var5').set('scat52', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var5').set('scat62', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var5').set('scat72', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var5').set('scat82', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var5').set('scat13', '(2.00564618e-05 +( log(T_fuel_1[1/K]) *( -1.00410200e-07 )) +( log(T_fuel_2[1/K]) *( 2.34643924e-07 )) +( log(T_fuel_3[1/K]) *( 1.45053956e-07 )) +( T_flibe *( 2.24524817e-11 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var5').set('scat23', '(1.46632924e-02 +( log(T_fuel_1[1/K]) *( 1.90551406e-06 )) +( log(T_fuel_2[1/K]) *( -8.22681962e-08 )) +( log(T_fuel_3[1/K]) *( 1.43934261e-06 )) +( T_flibe *( -1.10352900e-10 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var5').set('scat33', '(3.34746487e-01 +( log(T_fuel_1[1/K]) *( 5.25169976e-05 )) +( log(T_fuel_2[1/K]) *( 5.18029204e-05 )) +( log(T_fuel_3[1/K]) *( 4.83053414e-05 )) +( T_flibe *( -4.12119874e-09 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var5').set('scat43', '(-2.06777726e-06 +( log(T_fuel_1[1/K]) *( 6.11697640e-08 )) +( log(T_fuel_2[1/K]) *( 1.95369799e-07 )) +( log(T_fuel_3[1/K]) *( 9.90189798e-08 )) +( T_flibe *( -7.21010776e-11 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var5').set('scat53', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var5').set('scat63', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var5').set('scat73', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var5').set('scat83', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var5').set('scat14', '(-6.01415146e-09 +( log(T_fuel_1[1/K]) *( -3.56422459e-10 )) +( log(T_fuel_2[1/K]) *( 5.11244528e-10 )) +( log(T_fuel_3[1/K]) *( 1.04616301e-09 )) +( T_flibe *( 5.43521562e-13 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var5').set('scat24', '(-1.98946311e-08 +( log(T_fuel_1[1/K]) *( 4.65792401e-10 )) +( log(T_fuel_2[1/K]) *( 6.24476313e-10 )) +( log(T_fuel_3[1/K]) *( 2.63478897e-09 )) +( T_flibe *( 2.80411815e-12 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var5').set('scat34', '(7.64421208e-03 +( log(T_fuel_1[1/K]) *( -1.31420972e-05 )) +( log(T_fuel_2[1/K]) *( -1.33202908e-05 )) +( log(T_fuel_3[1/K]) *( -1.21485846e-05 )) +( T_flibe *( 1.25260470e-09 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var5').set('scat44', '(3.20320294e-01 +( log(T_fuel_1[1/K]) *( 2.48599925e-04 )) +( log(T_fuel_2[1/K]) *( 2.49955257e-04 )) +( log(T_fuel_3[1/K]) *( 2.54865900e-04 )) +( T_flibe *( -1.33800003e-08 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var5').set('scat54', '(6.09303952e-05 +( log(T_fuel_1[1/K]) *( 2.54705855e-06 )) +( log(T_fuel_2[1/K]) *( 1.81641128e-05 )) +( log(T_fuel_3[1/K]) *( 3.19389602e-06 )) +( T_flibe *( 2.23342893e-09 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var5').set('scat64', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var5').set('scat74', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var5').set('scat84', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var5').set('scat15', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var5').set('scat25', '(1.45586052e-09 +( log(T_fuel_1[1/K]) *( -3.10582974e-10 )) +( log(T_fuel_2[1/K]) *( 2.55209085e-10 )) +( log(T_fuel_3[1/K]) *( -7.77262602e-11 )) +( T_flibe *( -2.60956012e-13 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var5').set('scat35', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var5').set('scat45', '(2.00451410e-02 +( log(T_fuel_1[1/K]) *( -1.09929117e-04 )) +( log(T_fuel_2[1/K]) *( -1.08758820e-04 )) +( log(T_fuel_3[1/K]) *( -1.12555721e-04 )) +( T_flibe *( 8.35748369e-09 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var5').set('scat55', '(3.18435164e-01 +( log(T_fuel_1[1/K]) *( -2.31479841e-04 )) +( log(T_fuel_2[1/K]) *( -9.69512239e-04 )) +( log(T_fuel_3[1/K]) *( -1.12044988e-04 )) +( T_flibe *( -2.03940716e-07 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var5').set('scat65', '(3.53158384e-03 +( log(T_fuel_1[1/K]) *( 2.06313529e-04 )) +( log(T_fuel_2[1/K]) *( 9.57095215e-04 )) +( log(T_fuel_3[1/K]) *( 8.69847843e-05 )) +( T_flibe *( 1.93819181e-07 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var5').set('scat75', '(-3.56516127e-04 +( log(T_fuel_1[1/K]) *( 1.08174327e-05 )) +( log(T_fuel_2[1/K]) *( 5.61218291e-05 )) +( log(T_fuel_3[1/K]) *( 7.46657965e-06 )) +( T_flibe *( 2.70006872e-09 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var5').set('scat85', '(-1.18409435e-04 +( log(T_fuel_1[1/K]) *( 4.54145419e-06 )) +( log(T_fuel_2[1/K]) *( 1.19806491e-05 )) +( log(T_fuel_3[1/K]) *( 2.67555075e-06 )) +( T_flibe *( 7.32281012e-09 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var5').set('scat16', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var5').set('scat26', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var5').set('scat36', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var5').set('scat46', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var5').set('scat56', '(2.26702800e-02 +( log(T_fuel_1[1/K]) *( 2.33054158e-04 )) +( log(T_fuel_2[1/K]) *( 9.71656255e-04 )) +( log(T_fuel_3[1/K]) *( 1.12559041e-04 )) +( T_flibe *( 2.10109473e-07 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var5').set('scat66', '(2.83293231e-01 +( log(T_fuel_1[1/K]) *( -1.14610438e-04 )) +( log(T_fuel_2[1/K]) *( -5.50550206e-04 )) +( log(T_fuel_3[1/K]) *( -5.08537518e-05 )) +( T_flibe *( -1.28028255e-07 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var5').set('scat76', '(2.29696424e-02 +( log(T_fuel_1[1/K]) *( 4.84670097e-04 )) +( log(T_fuel_2[1/K]) *( 2.17093069e-03 )) +( log(T_fuel_3[1/K]) *( 1.86041933e-04 )) +( T_flibe *( 5.85031545e-07 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var5').set('scat86', '(-1.35744619e-03 +( log(T_fuel_1[1/K]) *( 1.62016084e-04 )) +( log(T_fuel_2[1/K]) *( 8.10133537e-04 )) +( log(T_fuel_3[1/K]) *( 7.26084553e-05 )) +( T_flibe *( 1.09829146e-07 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var5').set('scat17', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var5').set('scat27', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var5').set('scat37', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var5').set('scat47', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var5').set('scat57', '(1.06376302e-04 +( log(T_fuel_1[1/K]) *( 8.92227448e-06 )) +( log(T_fuel_2[1/K]) *( 3.47228783e-05 )) +( log(T_fuel_3[1/K]) *( 4.09418774e-06 )) +( T_flibe *( 7.68725293e-09 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var5').set('scat67', '(5.36584458e-02 +( log(T_fuel_1[1/K]) *( -5.93626425e-05 )) +( log(T_fuel_2[1/K]) *( -2.64450172e-04 )) +( log(T_fuel_3[1/K]) *( -1.95942359e-05 )) +( T_flibe *( -3.55004912e-08 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var5').set('scat77', '(3.02543949e-01 +( log(T_fuel_1[1/K]) *( -4.45739106e-04 )) +( log(T_fuel_2[1/K]) *( -1.97190287e-03 )) +( log(T_fuel_3[1/K]) *( -1.65719328e-04 )) +( T_flibe *( -5.43996935e-07 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var5').set('scat87', '(6.00535584e-02 +( log(T_fuel_1[1/K]) *( 6.00306948e-04 )) +( log(T_fuel_2[1/K]) *( 2.60567506e-03 )) +( log(T_fuel_3[1/K]) *( 2.45640898e-04 )) +( T_flibe *( 7.62574047e-07 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var5').set('scat18', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var5').set('scat28', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var5').set('scat38', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var5').set('scat48', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var5').set('scat58', '(-4.10005204e-06 +( log(T_fuel_1[1/K]) *( -6.88412177e-09 )) +( log(T_fuel_2[1/K]) *( 8.62221190e-07 )) +( log(T_fuel_3[1/K]) *( 2.79716087e-08 )) +( T_flibe *( -4.70037047e-10 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var5').set('scat68', '(1.88649814e-03 +( log(T_fuel_1[1/K]) *( 1.30991820e-06 )) +( log(T_fuel_2[1/K]) *( 1.06296171e-05 )) +( log(T_fuel_3[1/K]) *( 1.64927338e-06 )) +( T_flibe *( 4.44443086e-09 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var5').set('scat78', '(2.21614483e-02 +( log(T_fuel_1[1/K]) *( 2.21414449e-05 )) +( log(T_fuel_2[1/K]) *( 7.37560778e-05 )) +( log(T_fuel_3[1/K]) *( 7.90926021e-06 )) +( T_flibe *( 2.77323636e-08 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var5').set('scat88', '(3.01776028e-01 +( log(T_fuel_1[1/K]) *( -4.58737061e-04 )) +( log(T_fuel_2[1/K]) *( -1.95983835e-03 )) +( log(T_fuel_3[1/K]) *( -1.98143449e-04 )) +( T_flibe *( -5.37895307e-07 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var5').set('tot1', '(1.72134420e-01 +( log(T_fuel_1[1/K]) *( -2.42041834e-06 )) +( log(T_fuel_2[1/K]) *( 4.46848726e-06 )) +( log(T_fuel_3[1/K]) *( -4.41747727e-06 )) +( T_flibe *( -3.05228649e-09 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var5').set('tot2', '(3.35139647e-01 +( log(T_fuel_1[1/K]) *( 5.20234284e-06 )) +( log(T_fuel_2[1/K]) *( 9.76159123e-07 )) +( log(T_fuel_3[1/K]) *( 3.95856668e-07 )) +( T_flibe *( -3.85152853e-10 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var5').set('tot3', '(3.43016867e-01 +( log(T_fuel_1[1/K]) *( 5.64520804e-05 )) +( log(T_fuel_2[1/K]) *( 5.48302992e-05 )) +( log(T_fuel_3[1/K]) *( 5.17409351e-05 )) +( T_flibe *( -3.98862239e-09 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var5').set('tot4', '(3.41302299e-01 +( log(T_fuel_1[1/K]) *( 4.02949367e-04 )) +( log(T_fuel_2[1/K]) *( 4.14582115e-04 )) +( log(T_fuel_3[1/K]) *( 4.14194610e-04 )) +( T_flibe *( -2.73504062e-08 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var5').set('tot5', '(3.42943086e-01 +( log(T_fuel_1[1/K]) *( 1.57213735e-05 )) +( log(T_fuel_2[1/K]) *( 6.71117811e-05 )) +( log(T_fuel_3[1/K]) *( 8.66875467e-06 )) +( T_flibe *( 1.81174117e-08 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var5').set('tot6', '(3.48503808e-01 +( log(T_fuel_1[1/K]) *( 3.11526094e-05 )) +( log(T_fuel_2[1/K]) *( 1.40473205e-04 )) +( log(T_fuel_3[1/K]) *( 1.71017489e-05 )) +( T_flibe *( 3.29741149e-08 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var5').set('tot7', '(3.56042393e-01 +( log(T_fuel_1[1/K]) *( 6.93533904e-05 )) +( log(T_fuel_2[1/K]) *( 3.06009372e-04 )) +( log(T_fuel_3[1/K]) *( 3.57348903e-05 )) +( T_flibe *( 6.17360826e-08 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var5').set('tot8', '(3.79089210e-01 +( log(T_fuel_1[1/K]) *( 2.92046057e-04 )) +( log(T_fuel_2[1/K]) *( 1.40861610e-03 )) +( log(T_fuel_3[1/K]) *( 1.02398276e-04 )) +( T_flibe *( 3.15557158e-07 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var5').set('diff21', '2.57142857e-01*tot1[1/cm]');
model.component('mod1').variable('fuel_xs_var5').set('diff22', '2.57142857e-01*tot2[1/cm]');
model.component('mod1').variable('fuel_xs_var5').set('diff23', '2.57142857e-01*tot3[1/cm]');
model.component('mod1').variable('fuel_xs_var5').set('diff24', '2.57142857e-01*tot4[1/cm]');
model.component('mod1').variable('fuel_xs_var5').set('diff25', '2.57142857e-01*tot5[1/cm]');
model.component('mod1').variable('fuel_xs_var5').set('diff26', '2.57142857e-01*tot6[1/cm]');
model.component('mod1').variable('fuel_xs_var5').set('diff27', '2.57142857e-01*tot7[1/cm]');
model.component('mod1').variable('fuel_xs_var5').set('diff28', '2.57142857e-01*tot8[1/cm]');
model.component('mod1').variable('fuel_xs_var5').selection.geom('geom1', 3);
model.component('mod1').variable('fuel_xs_var5').selection.set([10]);
model.component('mod1').variable.create('fuel_xs_var6');
model.component('mod1').variable('fuel_xs_var6').set('beta1', '6.578860e-03');
model.component('mod1').variable('fuel_xs_var6').set('betas1', '2.019570e-04');
model.component('mod1').variable('fuel_xs_var6').set('betas2', '1.089270e-03');
model.component('mod1').variable('fuel_xs_var6').set('betas3', '1.061300e-03');
model.component('mod1').variable('fuel_xs_var6').set('betas4', '3.025810e-03');
model.component('mod1').variable('fuel_xs_var6').set('betas5', '8.839130e-04');
model.component('mod1').variable('fuel_xs_var6').set('betas6', '3.166050e-04');
model.component('mod1').variable('fuel_xs_var6').set('chid1', '4.039920e-02');
model.component('mod1').variable('fuel_xs_var6').set('chid2', '9.363430e-01');
model.component('mod1').variable('fuel_xs_var6').set('chid3', '2.320380e-02');
model.component('mod1').variable('fuel_xs_var6').set('chid4', '5.393070e-05');
model.component('mod1').variable('fuel_xs_var6').set('chid5', '0.000000e+00');
model.component('mod1').variable('fuel_xs_var6').set('chid6', '0.000000e+00');
model.component('mod1').variable('fuel_xs_var6').set('chid7', '0.000000e+00');
model.component('mod1').variable('fuel_xs_var6').set('chid8', '0.000000e+00');
model.component('mod1').variable('fuel_xs_var6').set('chip1', '5.733250e-01');
model.component('mod1').variable('fuel_xs_var6').set('chip2', '4.251490e-01');
model.component('mod1').variable('fuel_xs_var6').set('chip3', '1.526010e-03');
model.component('mod1').variable('fuel_xs_var6').set('chip4', '0.000000e+00');
model.component('mod1').variable('fuel_xs_var6').set('chip5', '0.000000e+00');
model.component('mod1').variable('fuel_xs_var6').set('chip6', '0.000000e+00');
model.component('mod1').variable('fuel_xs_var6').set('chip7', '0.000000e+00');
model.component('mod1').variable('fuel_xs_var6').set('chip8', '0.000000e+00');
model.component('mod1').variable('fuel_xs_var6').set('chit1', '5.698250e-01');
model.component('mod1').variable('fuel_xs_var6').set('chit2', '4.285060e-01');
model.component('mod1').variable('fuel_xs_var6').set('chit3', '1.668450e-03');
model.component('mod1').variable('fuel_xs_var6').set('chit4', '3.600570e-07');
model.component('mod1').variable('fuel_xs_var6').set('chit5', '0.000000e+00');
model.component('mod1').variable('fuel_xs_var6').set('chit6', '0.000000e+00');
model.component('mod1').variable('fuel_xs_var6').set('chit7', '0.000000e+00');
model.component('mod1').variable('fuel_xs_var6').set('chit8', '0.000000e+00');
model.component('mod1').variable('fuel_xs_var6').set('diff11', '2.351300e+00[cm]');
model.component('mod1').variable('fuel_xs_var6').set('diff12', '1.148400e+00[cm]');
model.component('mod1').variable('fuel_xs_var6').set('diff13', '1.024240e+00[cm]');
model.component('mod1').variable('fuel_xs_var6').set('diff14', '1.004950e+00[cm]');
model.component('mod1').variable('fuel_xs_var6').set('diff15', '1.022900e+00[cm]');
model.component('mod1').variable('fuel_xs_var6').set('diff16', '9.984410e-01[cm]');
model.component('mod1').variable('fuel_xs_var6').set('diff17', '9.582600e-01[cm]');
model.component('mod1').variable('fuel_xs_var6').set('diff18', '8.392310e-01[cm]');
model.component('mod1').variable('fuel_xs_var6').set('fiss1', '1.115060e-04[1/cm]');
model.component('mod1').variable('fuel_xs_var6').set('fiss2', '4.441420e-05[1/cm]');
model.component('mod1').variable('fuel_xs_var6').set('fiss3', '3.376620e-04[1/cm]');
model.component('mod1').variable('fuel_xs_var6').set('fiss4', '1.231740e-03[1/cm]');
model.component('mod1').variable('fuel_xs_var6').set('fiss5', '1.345140e-03[1/cm]');
model.component('mod1').variable('fuel_xs_var6').set('fiss6', '4.674740e-03[1/cm]');
model.component('mod1').variable('fuel_xs_var6').set('fiss7', '6.718230e-03[1/cm]');
model.component('mod1').variable('fuel_xs_var6').set('fiss8', '1.434970e-02[1/cm]');
model.component('mod1').variable('fuel_xs_var6').set('invV1', '4.780630e-10[s/cm]');
model.component('mod1').variable('fuel_xs_var6').set('invV2', '1.930440e-09[s/cm]');
model.component('mod1').variable('fuel_xs_var6').set('invV3', '3.037840e-08[s/cm]');
model.component('mod1').variable('fuel_xs_var6').set('invV4', '2.016690e-07[s/cm]');
model.component('mod1').variable('fuel_xs_var6').set('invV5', '6.885510e-07[s/cm]');
model.component('mod1').variable('fuel_xs_var6').set('invV6', '1.348980e-06[s/cm]');
model.component('mod1').variable('fuel_xs_var6').set('invV7', '2.145240e-06[s/cm]');
model.component('mod1').variable('fuel_xs_var6').set('invV8', '4.109630e-06[s/cm]');
model.component('mod1').variable('fuel_xs_var6').set('kappa1', '2.052250e+02[MeV]');
model.component('mod1').variable('fuel_xs_var6').set('kappa2', '2.023530e+02[MeV]');
model.component('mod1').variable('fuel_xs_var6').set('kappa3', '2.022710e+02[MeV]');
model.component('mod1').variable('fuel_xs_var6').set('kappa4', '2.022700e+02[MeV]');
model.component('mod1').variable('fuel_xs_var6').set('kappa5', '2.022700e+02[MeV]');
model.component('mod1').variable('fuel_xs_var6').set('kappa6', '2.022700e+02[MeV]');
model.component('mod1').variable('fuel_xs_var6').set('kappa7', '2.022700e+02[MeV]');
model.component('mod1').variable('fuel_xs_var6').set('kappa8', '2.022700e+02[MeV]');
model.component('mod1').variable('fuel_xs_var6').set('lambdas1', '1.087300e-02[1/s]');
model.component('mod1').variable('fuel_xs_var6').set('lambdas2', '3.181920e-02[1/s]');
model.component('mod1').variable('fuel_xs_var6').set('lambdas3', '1.093960e-01[1/s]');
model.component('mod1').variable('fuel_xs_var6').set('lambdas4', '3.170910e-01[1/s]');
model.component('mod1').variable('fuel_xs_var6').set('lambdas5', '1.353750e+00[1/s]');
model.component('mod1').variable('fuel_xs_var6').set('lambdas6', '8.281150e+00[1/s]');
model.component('mod1').variable('fuel_xs_var6').set('nsf1', '(3.01205842e-04 +( log(T_fuel_1[1/K]) *( 3.16019099e-07 )) +( log(T_fuel_2[1/K]) *( 2.07450312e-07 )) +( log(T_fuel_3[1/K]) *( 2.05488006e-07 )) +( T_flibe *( -6.45482182e-10 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var6').set('nsf2', '(1.10068044e-04 +( log(T_fuel_1[1/K]) *( 1.70431852e-08 )) +( log(T_fuel_2[1/K]) *( -1.11087144e-07 )) +( log(T_fuel_3[1/K]) *( 5.13704210e-09 )) +( T_flibe *( 3.96418510e-11 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var6').set('nsf3', '(8.19303136e-04 +( log(T_fuel_1[1/K]) *( -2.84055225e-07 )) +( log(T_fuel_2[1/K]) *( 1.73896815e-07 )) +( log(T_fuel_3[1/K]) *( 3.04149446e-07 )) +( T_flibe *( 6.64477244e-10 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var6').set('nsf4', '(2.86022092e-03 +( log(T_fuel_1[1/K]) *( 7.43496179e-06 )) +( log(T_fuel_2[1/K]) *( 6.68302404e-06 )) +( log(T_fuel_3[1/K]) *( 6.28933580e-06 )) +( T_flibe *( -2.30321253e-09 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var6').set('nsf5', '(2.90966754e-03 +( log(T_fuel_1[1/K]) *( 9.27225440e-06 )) +( log(T_fuel_2[1/K]) *( 2.96525222e-05 )) +( log(T_fuel_3[1/K]) *( 1.08156444e-06 )) +( T_flibe *( 8.86188879e-10 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var6').set('nsf6', '(1.15962031e-02 +( log(T_fuel_1[1/K]) *( -5.32769258e-06 )) +( log(T_fuel_2[1/K]) *( -8.79136851e-06 )) +( log(T_fuel_3[1/K]) *( -4.79994918e-06 )) +( T_flibe *( -4.46730640e-10 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var6').set('nsf7', '(1.67994144e-02 +( log(T_fuel_1[1/K]) *( -6.20810059e-06 )) +( log(T_fuel_2[1/K]) *( -3.46270201e-05 )) +( log(T_fuel_3[1/K]) *( -1.48357101e-06 )) +( T_flibe *( -1.70586212e-08 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var6').set('nsf8', '(3.63221691e-02 +( log(T_fuel_1[1/K]) *( -1.61108472e-05 )) +( log(T_fuel_2[1/K]) *( -1.29950484e-04 )) +( log(T_fuel_3[1/K]) *( -3.92777373e-07 )) +( T_flibe *( -2.45045344e-08 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var6').set('rem1', '(3.89067412e-02 +( log(T_fuel_1[1/K]) *( -1.40493075e-05 )) +( log(T_fuel_2[1/K]) *( 2.35089946e-06 )) +( log(T_fuel_3[1/K]) *( -1.48887074e-05 )) +( T_flibe *( -1.27450229e-08 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var6').set('rem2', '(1.40540724e-02 +( log(T_fuel_1[1/K]) *( -3.04102803e-06 )) +( log(T_fuel_2[1/K]) *( -1.23971397e-06 )) +( log(T_fuel_3[1/K]) *( -4.91039175e-06 )) +( T_flibe *( -6.78623705e-09 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var6').set('rem3', '(8.32944666e-03 +( log(T_fuel_1[1/K]) *( 2.59991415e-06 )) +( log(T_fuel_2[1/K]) *( 9.88403340e-06 )) +( log(T_fuel_3[1/K]) *( 4.71894099e-06 )) +( T_flibe *( 1.78376393e-09 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var6').set('rem4', '(2.12672193e-02 +( log(T_fuel_1[1/K]) *( 1.76743371e-04 )) +( log(T_fuel_2[1/K]) *( 1.87802533e-04 )) +( log(T_fuel_3[1/K]) *( 1.87258974e-04 )) +( T_flibe *( -1.79918170e-08 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var6').set('rem5', '(2.68154353e-02 +( log(T_fuel_1[1/K]) *( 2.79112014e-04 )) +( log(T_fuel_2[1/K]) *( 1.12777679e-03 )) +( log(T_fuel_3[1/K]) *( 1.42924782e-04 )) +( T_flibe *( 2.43709779e-07 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var6').set('rem6', '(6.72277094e-02 +( log(T_fuel_1[1/K]) *( 1.51177557e-04 )) +( log(T_fuel_2[1/K]) *( 6.61483205e-04 )) +( log(T_fuel_3[1/K]) *( 4.03124880e-05 )) +( T_flibe *( 1.52473923e-07 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var6').set('rem7', '(5.37863894e-02 +( log(T_fuel_1[1/K]) *( 4.99451921e-04 )) +( log(T_fuel_2[1/K]) *( 2.22927533e-03 )) +( log(T_fuel_3[1/K]) *( 1.75271664e-04 )) +( T_flibe *( 5.90234117e-07 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var6').set('rem8', '(7.72919372e-02 +( log(T_fuel_1[1/K]) *( 7.34516216e-04 )) +( log(T_fuel_2[1/K]) *( 3.30920406e-03 )) +( log(T_fuel_3[1/K]) *( 3.33934935e-04 )) +( T_flibe *( 8.69507328e-07 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var6').set('scat11', '(1.33310056e-01 +( log(T_fuel_1[1/K]) *( 9.60760729e-06 )) +( log(T_fuel_2[1/K]) *( -2.26220263e-06 )) +( log(T_fuel_3[1/K]) *( -2.16169342e-06 )) +( T_flibe *( 6.74397701e-09 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var6').set('scat21', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var6').set('scat31', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var6').set('scat41', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var6').set('scat51', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var6').set('scat61', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var6').set('scat71', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var6').set('scat81', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var6').set('scat12', '(3.80747744e-02 +( log(T_fuel_1[1/K]) *( -1.26723087e-05 )) +( log(T_fuel_2[1/K]) *( 3.24616158e-09 )) +( log(T_fuel_3[1/K]) *( -1.25084177e-05 )) +( T_flibe *( -1.06475907e-08 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var6').set('scat22', '(3.19553177e-01 +( log(T_fuel_1[1/K]) *( -1.31679921e-05 )) +( log(T_fuel_2[1/K]) *( -6.66116664e-06 )) +( log(T_fuel_3[1/K]) *( -1.09630653e-06 )) +( T_flibe *( 1.17174835e-08 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var6').set('scat32', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var6').set('scat42', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var6').set('scat52', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var6').set('scat62', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var6').set('scat72', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var6').set('scat82', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var6').set('scat13', '(1.87651211e-05 +( log(T_fuel_1[1/K]) *( 1.06240089e-07 )) +( log(T_fuel_2[1/K]) *( -1.30629763e-07 )) +( log(T_fuel_3[1/K]) *( 4.26019402e-07 )) +( T_flibe *( 2.41674750e-10 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var6').set('scat23', '(1.39513940e-02 +( log(T_fuel_1[1/K]) *( -3.23923045e-06 )) +( log(T_fuel_2[1/K]) *( -1.14941982e-06 )) +( log(T_fuel_3[1/K]) *( -5.20755105e-06 )) +( T_flibe *( -7.34823937e-09 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var6').set('scat33', '(3.34622034e-01 +( log(T_fuel_1[1/K]) *( 5.28403935e-05 )) +( log(T_fuel_2[1/K]) *( 5.03118848e-05 )) +( log(T_fuel_3[1/K]) *( 4.64405173e-05 )) +( T_flibe *( -4.50749699e-09 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var6').set('scat43', '(-2.39906076e-06 +( log(T_fuel_1[1/K]) *( 4.09360634e-08 )) +( log(T_fuel_2[1/K]) *( 2.01043175e-07 )) +( log(T_fuel_3[1/K]) *( 1.48574688e-07 )) +( T_flibe *( 9.62233117e-12 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var6').set('scat53', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var6').set('scat63', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var6').set('scat73', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var6').set('scat83', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var6').set('scat14', '(-4.74160660e-08 +( log(T_fuel_1[1/K]) *( 5.86210405e-10 )) +( log(T_fuel_2[1/K]) *( 9.56615390e-10 )) +( log(T_fuel_3[1/K]) *( 4.64035714e-09 )) +( T_flibe *( 6.23373112e-12 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var6').set('scat24', '(-2.13595198e-08 +( log(T_fuel_1[1/K]) *( 3.32967586e-09 )) +( log(T_fuel_2[1/K]) *( -9.76984664e-10 )) +( log(T_fuel_3[1/K]) *( 1.88386405e-09 )) +( T_flibe *( 1.12373037e-12 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var6').set('scat34', '(7.70663481e-03 +( log(T_fuel_1[1/K]) *( -1.43310352e-05 )) +( log(T_fuel_2[1/K]) *( -8.47679738e-06 )) +( log(T_fuel_3[1/K]) *( -1.01531053e-05 )) +( T_flibe *( 2.88613052e-09 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var6').set('scat44', '(3.20068915e-01 +( log(T_fuel_1[1/K]) *( 2.21872867e-04 )) +( log(T_fuel_2[1/K]) *( 2.35041812e-04 )) +( log(T_fuel_3[1/K]) *( 2.19952248e-04 )) +( T_flibe *( -1.21793564e-08 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var6').set('scat54', '(5.83464059e-05 +( log(T_fuel_1[1/K]) *( 2.68143363e-06 )) +( log(T_fuel_2[1/K]) *( 1.72622232e-05 )) +( log(T_fuel_3[1/K]) *( 2.65643681e-06 )) +( T_flibe *( 2.43835788e-09 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var6').set('scat64', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var6').set('scat74', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var6').set('scat84', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var6').set('scat15', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var6').set('scat25', '(-1.78073126e-09 +( log(T_fuel_1[1/K]) *( 9.70273548e-11 )) +( log(T_fuel_2[1/K]) *( 1.39826321e-10 )) +( log(T_fuel_3[1/K]) *( 8.45047763e-11 )) +( T_flibe *( -2.27711635e-13 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var6').set('scat35', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var6').set('scat45', '(2.03006413e-02 +( log(T_fuel_1[1/K]) *( -8.66529194e-05 )) +( log(T_fuel_2[1/K]) *( -8.79058565e-05 )) +( log(T_fuel_3[1/K]) *( -9.00139883e-05 )) +( T_flibe *( 6.80825397e-09 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var6').set('scat55', '(3.16104587e-01 +( log(T_fuel_1[1/K]) *( -2.64426723e-04 )) +( log(T_fuel_2[1/K]) *( -1.05677892e-03 )) +( log(T_fuel_3[1/K]) *( -1.30479133e-04 )) +( T_flibe *( -2.28964391e-07 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var6').set('scat65', '(2.59884899e-03 +( log(T_fuel_1[1/K]) *( 2.00772210e-04 )) +( log(T_fuel_2[1/K]) *( 9.09114730e-04 )) +( log(T_fuel_3[1/K]) *( 8.78050163e-05 )) +( T_flibe *( 1.81536045e-07 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var6').set('scat75', '(-3.41877011e-04 +( log(T_fuel_1[1/K]) *( 9.85317374e-06 )) +( log(T_fuel_2[1/K]) *( 5.50030277e-05 )) +( log(T_fuel_3[1/K]) *( 6.96864740e-06 )) +( T_flibe *( 1.57208817e-09 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var6').set('scat85', '(-1.16864989e-04 +( log(T_fuel_1[1/K]) *( 4.93464303e-06 )) +( log(T_fuel_2[1/K]) *( 1.14945969e-05 )) +( log(T_fuel_3[1/K]) *( 2.56991784e-06 )) +( T_flibe *( 6.90926772e-09 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var6').set('scat16', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var6').set('scat26', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var6').set('scat36', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var6').set('scat46', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var6').set('scat56', '(2.49651188e-02 +( log(T_fuel_1[1/K]) *( 2.59934601e-04 )) +( log(T_fuel_2[1/K]) *( 1.05812269e-03 )) +( log(T_fuel_3[1/K]) *( 1.35877498e-04 )) +( T_flibe *( 2.33157798e-07 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var6').set('scat66', '(2.81353414e-01 +( log(T_fuel_1[1/K]) *( -1.18794159e-04 )) +( log(T_fuel_2[1/K]) *( -5.09255288e-04 )) +( log(T_fuel_3[1/K]) *( -3.40565594e-05 )) +( T_flibe *( -1.11923291e-07 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var6').set('scat76', '(2.31051984e-02 +( log(T_fuel_1[1/K]) *( 4.64964571e-04 )) +( log(T_fuel_2[1/K]) *( 2.07222009e-03 )) +( log(T_fuel_3[1/K]) *( 1.56255551e-04 )) +( T_flibe *( 5.49156102e-07 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var6').set('scat86', '(-1.29454146e-03 +( log(T_fuel_1[1/K]) *( 1.53228684e-04 )) +( log(T_fuel_2[1/K]) *( 8.01224526e-04 )) +( log(T_fuel_3[1/K]) *( 7.70689525e-05 )) +( T_flibe *( 1.15458601e-07 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var6').set('scat17', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var6').set('scat27', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var6').set('scat37', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var6').set('scat47', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var6').set('scat57', '(9.57886879e-05 +( log(T_fuel_1[1/K]) *( 1.21126563e-05 )) +( log(T_fuel_2[1/K]) *( 3.96781639e-05 )) +( log(T_fuel_3[1/K]) *( 4.84840303e-06 )) +( T_flibe *( 7.49984852e-09 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var6').set('scat67', '(5.64279430e-02 +( log(T_fuel_1[1/K]) *( -5.00299004e-05 )) +( log(T_fuel_2[1/K]) *( -2.51787866e-04 )) +( log(T_fuel_3[1/K]) *( -4.59030321e-05 )) +( T_flibe *( -2.98833746e-08 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var6').set('scat77', '(3.02138814e-01 +( log(T_fuel_1[1/K]) *( -4.23755550e-04 )) +( log(T_fuel_2[1/K]) *( -1.89749565e-03 )) +( log(T_fuel_3[1/K]) *( -1.36318833e-04 )) +( T_flibe *( -5.27507000e-07 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var6').set('scat87', '(6.01603643e-02 +( log(T_fuel_1[1/K]) *( 5.79036885e-04 )) +( log(T_fuel_2[1/K]) *( 2.56220970e-03 )) +( log(T_fuel_3[1/K]) *( 2.43342432e-04 )) +( T_flibe *( 7.57135632e-07 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var6').set('scat18', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var6').set('scat28', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var6').set('scat38', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var6').set('scat48', '0[1/cm]');
model.component('mod1').variable('fuel_xs_var6').set('scat58', '(-5.35585095e-06 +( log(T_fuel_1[1/K]) *( -3.85382801e-08 )) +( log(T_fuel_2[1/K]) *( 9.96256895e-07 )) +( log(T_fuel_3[1/K]) *( 1.38880107e-07 )) +( T_flibe *( -5.15742132e-10 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var6').set('scat68', '(1.99273037e-03 +( log(T_fuel_1[1/K]) *( 3.99747668e-06 )) +( log(T_fuel_2[1/K]) *( 1.15619905e-05 )) +( log(T_fuel_3[1/K]) *( 9.05652720e-07 )) +( T_flibe *( 1.97195271e-09 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var6').set('scat78', '(2.22759853e-02 +( log(T_fuel_1[1/K]) *( 2.61461814e-05 )) +( log(T_fuel_2[1/K]) *( 1.18853117e-04 )) +( log(T_fuel_3[1/K]) *( 1.53604968e-05 )) +( T_flibe *( 5.01856571e-08 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var6').set('scat88', '(3.01325588e-01 +( log(T_fuel_1[1/K]) *( -4.04333199e-04 )) +( log(T_fuel_2[1/K]) *( -1.87517042e-03 )) +( log(T_fuel_3[1/K]) *( -1.99826353e-04 )) +( T_flibe *( -5.50375075e-07 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var6').set('tot1', '(1.72213407e-01 +( log(T_fuel_1[1/K]) *( -4.28005411e-06 )) +( log(T_fuel_2[1/K]) *( 2.89659939e-07 )) +( log(T_fuel_3[1/K]) *( -1.69019587e-05 )) +( T_flibe *( -6.07225182e-09 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var6').set('tot2', '(3.33608356e-01 +( log(T_fuel_1[1/K]) *( -1.62509738e-05 )) +( log(T_fuel_2[1/K]) *( -7.93010082e-06 )) +( log(T_fuel_3[1/K]) *( -6.07393127e-06 )) +( T_flibe *( 4.71939034e-09 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var6').set('tot3', '(3.42949912e-01 +( log(T_fuel_1[1/K]) *( 5.53869491e-05 )) +( log(T_fuel_2[1/K]) *( 6.03528452e-05 )) +( log(T_fuel_3[1/K]) *( 5.12475692e-05 )) +( T_flibe *( -2.55011463e-09 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var6').set('tot4', '(3.41335499e-01 +( log(T_fuel_1[1/K]) *( 3.98566171e-04 )) +( log(T_fuel_2[1/K]) *( 4.22933888e-04 )) +( log(T_fuel_3[1/K]) *( 4.07285163e-04 )) +( T_flibe *( -3.02725836e-08 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var6').set('tot5', '(3.42917552e-01 +( log(T_fuel_1[1/K]) *( 1.47581122e-05 )) +( log(T_fuel_2[1/K]) *( 7.11903551e-05 )) +( log(T_fuel_3[1/K]) *( 1.25166189e-05 )) +( T_flibe *( 1.47775102e-08 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var6').set('tot6', '(3.48579715e-01 +( log(T_fuel_1[1/K]) *( 3.23069294e-05 )) +( log(T_fuel_2[1/K]) *( 1.52178763e-04 )) +( log(T_fuel_3[1/K]) *( 6.56321377e-06 )) +( T_flibe *( 4.07328905e-08 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var6').set('tot7', '(3.55924388e-01 +( log(T_fuel_1[1/K]) *( 7.58189479e-05 )) +( log(T_fuel_2[1/K]) *( 3.31737054e-04 )) +( log(T_fuel_3[1/K]) *( 3.89919340e-05 )) +( T_flibe *( 6.27805541e-08 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var6').set('tot8', '(3.78617691e-01 +( log(T_fuel_1[1/K]) *( 3.30139157e-04 )) +( log(T_fuel_2[1/K]) *( 1.43422342e-03 )) +( log(T_fuel_3[1/K]) *( 1.33967340e-04 )) +( T_flibe *( 3.18982137e-07 )) ) [1/cm]');
model.component('mod1').variable('fuel_xs_var6').set('diff21', '2.57142857e-01*tot1[1/cm]');
model.component('mod1').variable('fuel_xs_var6').set('diff22', '2.57142857e-01*tot2[1/cm]');
model.component('mod1').variable('fuel_xs_var6').set('diff23', '2.57142857e-01*tot3[1/cm]');
model.component('mod1').variable('fuel_xs_var6').set('diff24', '2.57142857e-01*tot4[1/cm]');
model.component('mod1').variable('fuel_xs_var6').set('diff25', '2.57142857e-01*tot5[1/cm]');
model.component('mod1').variable('fuel_xs_var6').set('diff26', '2.57142857e-01*tot6[1/cm]');
model.component('mod1').variable('fuel_xs_var6').set('diff27', '2.57142857e-01*tot7[1/cm]');
model.component('mod1').variable('fuel_xs_var6').set('diff28', '2.57142857e-01*tot8[1/cm]');
model.component('mod1').variable('fuel_xs_var6').selection.geom('geom1', 3);
model.component('mod1').variable('fuel_xs_var6').selection.set([7]);
model.component('mod1').variable.create('var_xs_CR');
model.component('mod1').variable('var_xs_CR').set('beta1', '6.578860e-03');
model.component('mod1').variable('var_xs_CR').set('betas1', '2.019570e-04');
model.component('mod1').variable('var_xs_CR').set('betas2', '1.089270e-03');
model.component('mod1').variable('var_xs_CR').set('betas3', '1.061300e-03');
model.component('mod1').variable('var_xs_CR').set('betas4', '3.025810e-03');
model.component('mod1').variable('var_xs_CR').set('betas5', '8.839130e-04');
model.component('mod1').variable('var_xs_CR').set('betas6', '3.166050e-04');
model.component('mod1').variable('var_xs_CR').set('chid1', '0.000000e+00');
model.component('mod1').variable('var_xs_CR').set('chid2', '0.000000e+00');
model.component('mod1').variable('var_xs_CR').set('chid3', '0.000000e+00');
model.component('mod1').variable('var_xs_CR').set('chid4', '0.000000e+00');
model.component('mod1').variable('var_xs_CR').set('chid5', '0.000000e+00');
model.component('mod1').variable('var_xs_CR').set('chid6', '0.000000e+00');
model.component('mod1').variable('var_xs_CR').set('chid7', '0.000000e+00');
model.component('mod1').variable('var_xs_CR').set('chid8', '0.000000e+00');
model.component('mod1').variable('var_xs_CR').set('chip1', '0.000000e+00');
model.component('mod1').variable('var_xs_CR').set('chip2', '0.000000e+00');
model.component('mod1').variable('var_xs_CR').set('chip3', '0.000000e+00');
model.component('mod1').variable('var_xs_CR').set('chip4', '0.000000e+00');
model.component('mod1').variable('var_xs_CR').set('chip5', '0.000000e+00');
model.component('mod1').variable('var_xs_CR').set('chip6', '0.000000e+00');
model.component('mod1').variable('var_xs_CR').set('chip7', '0.000000e+00');
model.component('mod1').variable('var_xs_CR').set('chip8', '0.000000e+00');
model.component('mod1').variable('var_xs_CR').set('chit1', '0.000000e+00');
model.component('mod1').variable('var_xs_CR').set('chit2', '0.000000e+00');
model.component('mod1').variable('var_xs_CR').set('chit3', '0.000000e+00');
model.component('mod1').variable('var_xs_CR').set('chit4', '0.000000e+00');
model.component('mod1').variable('var_xs_CR').set('chit5', '0.000000e+00');
model.component('mod1').variable('var_xs_CR').set('chit6', '0.000000e+00');
model.component('mod1').variable('var_xs_CR').set('chit7', '0.000000e+00');
model.component('mod1').variable('var_xs_CR').set('chit8', '0.000000e+00');
model.component('mod1').variable('var_xs_CR').set('diff11', '2.409900e+00[cm]');
model.component('mod1').variable('var_xs_CR').set('diff12', '1.131300e+00[cm]');
model.component('mod1').variable('var_xs_CR').set('diff13', '8.564850e-01[cm]');
model.component('mod1').variable('var_xs_CR').set('diff14', '8.528310e-01[cm]');
model.component('mod1').variable('var_xs_CR').set('diff15', '8.491670e-01[cm]');
model.component('mod1').variable('var_xs_CR').set('diff16', '8.393540e-01[cm]');
model.component('mod1').variable('var_xs_CR').set('diff17', '8.053490e-01[cm]');
model.component('mod1').variable('var_xs_CR').set('diff18', '7.194910e-01[cm]');
model.component('mod1').variable('var_xs_CR').set('fiss1', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('fiss2', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('fiss3', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('fiss4', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('fiss5', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('fiss6', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('fiss7', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('fiss8', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('invV1', '4.832820e-10[s/cm]');
model.component('mod1').variable('var_xs_CR').set('invV2', '1.986420e-09[s/cm]');
model.component('mod1').variable('var_xs_CR').set('invV3', '3.391150e-08[s/cm]');
model.component('mod1').variable('var_xs_CR').set('invV4', '2.078890e-07[s/cm]');
model.component('mod1').variable('var_xs_CR').set('invV5', '7.187510e-07[s/cm]');
model.component('mod1').variable('var_xs_CR').set('invV6', '1.375540e-06[s/cm]');
model.component('mod1').variable('var_xs_CR').set('invV7', '2.167050e-06[s/cm]');
model.component('mod1').variable('var_xs_CR').set('invV8', '4.157660e-06[s/cm]');
model.component('mod1').variable('var_xs_CR').set('kappa1', '0.000000e+00[MeV]');
model.component('mod1').variable('var_xs_CR').set('kappa2', '0.000000e+00[MeV]');
model.component('mod1').variable('var_xs_CR').set('kappa3', '0.000000e+00[MeV]');
model.component('mod1').variable('var_xs_CR').set('kappa4', '0.000000e+00[MeV]');
model.component('mod1').variable('var_xs_CR').set('kappa5', '0.000000e+00[MeV]');
model.component('mod1').variable('var_xs_CR').set('kappa6', '0.000000e+00[MeV]');
model.component('mod1').variable('var_xs_CR').set('kappa7', '0.000000e+00[MeV]');
model.component('mod1').variable('var_xs_CR').set('kappa8', '0.000000e+00[MeV]');
model.component('mod1').variable('var_xs_CR').set('lambdas1', '1.087300e-02[1/s]');
model.component('mod1').variable('var_xs_CR').set('lambdas2', '3.181920e-02[1/s]');
model.component('mod1').variable('var_xs_CR').set('lambdas3', '1.093960e-01[1/s]');
model.component('mod1').variable('var_xs_CR').set('lambdas4', '3.170910e-01[1/s]');
model.component('mod1').variable('var_xs_CR').set('lambdas5', '1.353750e+00[1/s]');
model.component('mod1').variable('var_xs_CR').set('lambdas6', '8.281150e+00[1/s]');
model.component('mod1').variable('var_xs_CR').set('nsf1', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('nsf2', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('nsf3', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('nsf4', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('nsf5', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('nsf6', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('nsf7', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('nsf8', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('rem1', '3.501620e-02[1/cm]');
model.component('mod1').variable('var_xs_CR').set('rem2', '1.732360e-02[1/cm]');
model.component('mod1').variable('var_xs_CR').set('rem3', '1.179000e-02[1/cm]');
model.component('mod1').variable('var_xs_CR').set('rem4', '2.643440e-02[1/cm]');
model.component('mod1').variable('var_xs_CR').set('rem5', '5.967720e-02[1/cm]');
model.component('mod1').variable('var_xs_CR').set('rem6', '7.836650e-02[1/cm]');
model.component('mod1').variable('var_xs_CR').set('rem7', '6.673880e-02[1/cm]');
model.component('mod1').variable('var_xs_CR').set('rem8', '8.180810e-02[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat11', '1.226730e-01[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat12', '3.492990e-02[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat13', '1.430540e-06[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat14', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat15', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat16', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat17', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat18', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat21', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat22', '3.210240e-01[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat23', '1.732340e-02[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat24', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat25', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat26', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat27', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat28', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat31', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat32', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat33', '4.007460e-01[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat34', '1.178770e-02[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat35', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat36', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat37', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat38', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat41', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat42', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat43', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat44', '3.874800e-01[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat45', '2.642160e-02[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat46', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat47', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat48', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat51', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat52', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat53', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat54', '1.735740e-04[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat55', '3.549740e-01[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat56', '5.855490e-02[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat57', '9.015160e-04[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat58', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat61', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat62', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat63', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat64', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat65', '1.043070e-02[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat66', '3.382360e-01[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat67', '6.444040e-02[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat68', '3.406620e-03[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat71', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat72', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat73', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat74', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat75', '1.227040e-04[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat76', '4.517390e-02[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat77', '3.585640e-01[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat78', '2.129950e-02[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat81', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat82', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat83', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat84', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat85', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat86', '7.700120e-03[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat87', '7.383560e-02[1/cm]');
model.component('mod1').variable('var_xs_CR').set('scat88', '3.683960e-01[1/cm]');
model.component('mod1').variable('var_xs_CR').set('tot1', '1.576890e-01[1/cm]');
model.component('mod1').variable('var_xs_CR').set('tot2', '3.383470e-01[1/cm]');
model.component('mod1').variable('var_xs_CR').set('tot3', '4.125360e-01[1/cm]');
model.component('mod1').variable('var_xs_CR').set('tot4', '4.139150e-01[1/cm]');
model.component('mod1').variable('var_xs_CR').set('tot5', '4.146510e-01[1/cm]');
model.component('mod1').variable('var_xs_CR').set('tot6', '4.166020e-01[1/cm]');
model.component('mod1').variable('var_xs_CR').set('tot7', '4.253030e-01[1/cm]');
model.component('mod1').variable('var_xs_CR').set('tot8', '4.502050e-01[1/cm]');
model.component('mod1').variable('var_xs_CR').set('diff21', '2.57142857e-01*tot1[1/cm]');
model.component('mod1').variable('var_xs_CR').set('diff22', '2.57142857e-01*tot2[1/cm]');
model.component('mod1').variable('var_xs_CR').set('diff23', '2.57142857e-01*tot3[1/cm]');
model.component('mod1').variable('var_xs_CR').set('diff24', '2.57142857e-01*tot4[1/cm]');
model.component('mod1').variable('var_xs_CR').set('diff25', '2.57142857e-01*tot5[1/cm]');
model.component('mod1').variable('var_xs_CR').set('diff26', '2.57142857e-01*tot6[1/cm]');
model.component('mod1').variable('var_xs_CR').set('diff27', '2.57142857e-01*tot7[1/cm]');
model.component('mod1').variable('var_xs_CR').set('diff28', '2.57142857e-01*tot8[1/cm]');
model.component('mod1').variable('var_xs_CR').selection.geom('geom1', 3);
model.component('mod1').variable('var_xs_CR').selection.set([11]);
model.component('mod1').variable.create('var_xs_Blanket');
model.component('mod1').variable('var_xs_Blanket').set('beta1', '6.578860e-03');
model.component('mod1').variable('var_xs_Blanket').set('betas1', '2.019570e-04');
model.component('mod1').variable('var_xs_Blanket').set('betas2', '1.089270e-03');
model.component('mod1').variable('var_xs_Blanket').set('betas3', '1.061300e-03');
model.component('mod1').variable('var_xs_Blanket').set('betas4', '3.025810e-03');
model.component('mod1').variable('var_xs_Blanket').set('betas5', '8.839130e-04');
model.component('mod1').variable('var_xs_Blanket').set('betas6', '3.166050e-04');
model.component('mod1').variable('var_xs_Blanket').set('chid1', '0.000000e+00');
model.component('mod1').variable('var_xs_Blanket').set('chid2', '0.000000e+00');
model.component('mod1').variable('var_xs_Blanket').set('chid3', '0.000000e+00');
model.component('mod1').variable('var_xs_Blanket').set('chid4', '0.000000e+00');
model.component('mod1').variable('var_xs_Blanket').set('chid5', '0.000000e+00');
model.component('mod1').variable('var_xs_Blanket').set('chid6', '0.000000e+00');
model.component('mod1').variable('var_xs_Blanket').set('chid7', '0.000000e+00');
model.component('mod1').variable('var_xs_Blanket').set('chid8', '0.000000e+00');
model.component('mod1').variable('var_xs_Blanket').set('chip1', '0.000000e+00');
model.component('mod1').variable('var_xs_Blanket').set('chip2', '0.000000e+00');
model.component('mod1').variable('var_xs_Blanket').set('chip3', '0.000000e+00');
model.component('mod1').variable('var_xs_Blanket').set('chip4', '0.000000e+00');
model.component('mod1').variable('var_xs_Blanket').set('chip5', '0.000000e+00');
model.component('mod1').variable('var_xs_Blanket').set('chip6', '0.000000e+00');
model.component('mod1').variable('var_xs_Blanket').set('chip7', '0.000000e+00');
model.component('mod1').variable('var_xs_Blanket').set('chip8', '0.000000e+00');
model.component('mod1').variable('var_xs_Blanket').set('chit1', '0.000000e+00');
model.component('mod1').variable('var_xs_Blanket').set('chit2', '0.000000e+00');
model.component('mod1').variable('var_xs_Blanket').set('chit3', '0.000000e+00');
model.component('mod1').variable('var_xs_Blanket').set('chit4', '0.000000e+00');
model.component('mod1').variable('var_xs_Blanket').set('chit5', '0.000000e+00');
model.component('mod1').variable('var_xs_Blanket').set('chit6', '0.000000e+00');
model.component('mod1').variable('var_xs_Blanket').set('chit7', '0.000000e+00');
model.component('mod1').variable('var_xs_Blanket').set('chit8', '0.000000e+00');
model.component('mod1').variable('var_xs_Blanket').set('diff11', '2.282420e+00[cm]');
model.component('mod1').variable('var_xs_Blanket').set('diff12', '1.084030e+00[cm]');
model.component('mod1').variable('var_xs_Blanket').set('diff13', '9.876270e-01[cm]');
model.component('mod1').variable('var_xs_Blanket').set('diff14', '9.877900e-01[cm]');
model.component('mod1').variable('var_xs_Blanket').set('diff15', '9.845880e-01[cm]');
model.component('mod1').variable('var_xs_Blanket').set('diff16', '9.738470e-01[cm]');
model.component('mod1').variable('var_xs_Blanket').set('diff17', '9.407380e-01[cm]');
model.component('mod1').variable('var_xs_Blanket').set('diff18', '8.470490e-01[cm]');
model.component('mod1').variable('var_xs_Blanket').set('fiss1', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('fiss2', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('fiss3', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('fiss4', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('fiss5', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('fiss6', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('fiss7', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('fiss8', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('invV1', '4.841560e-10[s/cm]');
model.component('mod1').variable('var_xs_Blanket').set('invV2', '2.066990e-09[s/cm]');
model.component('mod1').variable('var_xs_Blanket').set('invV3', '3.279680e-08[s/cm]');
model.component('mod1').variable('var_xs_Blanket').set('invV4', '2.064820e-07[s/cm]');
model.component('mod1').variable('var_xs_Blanket').set('invV5', '6.960640e-07[s/cm]');
model.component('mod1').variable('var_xs_Blanket').set('invV6', '1.371890e-06[s/cm]');
model.component('mod1').variable('var_xs_Blanket').set('invV7', '2.167380e-06[s/cm]');
model.component('mod1').variable('var_xs_Blanket').set('invV8', '4.178410e-06[s/cm]');
model.component('mod1').variable('var_xs_Blanket').set('kappa1', '0.000000e+00[MeV]');
model.component('mod1').variable('var_xs_Blanket').set('kappa2', '0.000000e+00[MeV]');
model.component('mod1').variable('var_xs_Blanket').set('kappa3', '0.000000e+00[MeV]');
model.component('mod1').variable('var_xs_Blanket').set('kappa4', '0.000000e+00[MeV]');
model.component('mod1').variable('var_xs_Blanket').set('kappa5', '0.000000e+00[MeV]');
model.component('mod1').variable('var_xs_Blanket').set('kappa6', '0.000000e+00[MeV]');
model.component('mod1').variable('var_xs_Blanket').set('kappa7', '0.000000e+00[MeV]');
model.component('mod1').variable('var_xs_Blanket').set('kappa8', '0.000000e+00[MeV]');
model.component('mod1').variable('var_xs_Blanket').set('lambdas1', '1.087300e-02[1/s]');
model.component('mod1').variable('var_xs_Blanket').set('lambdas2', '3.181920e-02[1/s]');
model.component('mod1').variable('var_xs_Blanket').set('lambdas3', '1.093960e-01[1/s]');
model.component('mod1').variable('var_xs_Blanket').set('lambdas4', '3.170910e-01[1/s]');
model.component('mod1').variable('var_xs_Blanket').set('lambdas5', '1.353750e+00[1/s]');
model.component('mod1').variable('var_xs_Blanket').set('lambdas6', '8.281150e+00[1/s]');
model.component('mod1').variable('var_xs_Blanket').set('nsf1', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('nsf2', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('nsf3', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('nsf4', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('nsf5', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('nsf6', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('nsf7', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('nsf8', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('rem1', '4.281600e-02[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('rem2', '1.767580e-02[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('rem3', '9.296960e-03[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('rem4', '2.147860e-02[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('rem5', '4.435500e-02[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('rem6', '7.144110e-02[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('rem7', '6.625350e-02[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('rem8', '8.948400e-02[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat11', '1.332860e-01[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat12', '4.215390e-02[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat13', '1.784740e-05[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat14', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat15', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat16', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat17', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat18', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat21', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat22', '3.325490e-01[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat23', '1.764460e-02[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat24', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat25', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat26', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat27', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat28', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat31', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat32', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat33', '3.479000e-01[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat34', '9.289100e-03[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat35', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat36', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat37', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat38', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat41', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat42', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat43', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat44', '3.353830e-01[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat45', '2.143590e-02[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat46', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat47', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat48', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat51', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat52', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat53', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat54', '1.974990e-04[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat55', '3.130740e-01[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat56', '4.343040e-02[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat57', '5.807210e-04[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat58', '7.878540e-07[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat61', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat62', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat63', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat64', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat65', '9.248130e-03[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat66', '2.880870e-01[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat67', '5.952190e-02[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat68', '2.386170e-03[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat71', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat72', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat73', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat74', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat75', '8.576550e-05[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat76', '4.116450e-02[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat77', '3.003960e-01[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat78', '2.455110e-02[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat81', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat82', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat83', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat84', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat85', '2.866120e-07[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat86', '5.386470e-03[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat87', '8.322620e-02[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('scat88', '3.013350e-01[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('tot1', '1.761020e-01[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('tot2', '3.502250e-01[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('tot3', '3.571960e-01[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('tot4', '3.568610e-01[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('tot5', '3.574290e-01[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('tot6', '3.595290e-01[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('tot7', '3.666500e-01[1/cm]');
model.component('mod1').variable('var_xs_Blanket').set('tot8', '3.908190e-01[1/cm]');
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
model.component('mod1').variable('var_xs_ORCC').set('beta1', '6.578860e-03');
model.component('mod1').variable('var_xs_ORCC').set('betas1', '2.019570e-04');
model.component('mod1').variable('var_xs_ORCC').set('betas2', '1.089270e-03');
model.component('mod1').variable('var_xs_ORCC').set('betas3', '1.061300e-03');
model.component('mod1').variable('var_xs_ORCC').set('betas4', '3.025810e-03');
model.component('mod1').variable('var_xs_ORCC').set('betas5', '8.839130e-04');
model.component('mod1').variable('var_xs_ORCC').set('betas6', '3.166050e-04');
model.component('mod1').variable('var_xs_ORCC').set('chid1', '0.000000e+00');
model.component('mod1').variable('var_xs_ORCC').set('chid2', '0.000000e+00');
model.component('mod1').variable('var_xs_ORCC').set('chid3', '0.000000e+00');
model.component('mod1').variable('var_xs_ORCC').set('chid4', '0.000000e+00');
model.component('mod1').variable('var_xs_ORCC').set('chid5', '0.000000e+00');
model.component('mod1').variable('var_xs_ORCC').set('chid6', '0.000000e+00');
model.component('mod1').variable('var_xs_ORCC').set('chid7', '0.000000e+00');
model.component('mod1').variable('var_xs_ORCC').set('chid8', '0.000000e+00');
model.component('mod1').variable('var_xs_ORCC').set('chip1', '0.000000e+00');
model.component('mod1').variable('var_xs_ORCC').set('chip2', '0.000000e+00');
model.component('mod1').variable('var_xs_ORCC').set('chip3', '0.000000e+00');
model.component('mod1').variable('var_xs_ORCC').set('chip4', '0.000000e+00');
model.component('mod1').variable('var_xs_ORCC').set('chip5', '0.000000e+00');
model.component('mod1').variable('var_xs_ORCC').set('chip6', '0.000000e+00');
model.component('mod1').variable('var_xs_ORCC').set('chip7', '0.000000e+00');
model.component('mod1').variable('var_xs_ORCC').set('chip8', '0.000000e+00');
model.component('mod1').variable('var_xs_ORCC').set('chit1', '0.000000e+00');
model.component('mod1').variable('var_xs_ORCC').set('chit2', '0.000000e+00');
model.component('mod1').variable('var_xs_ORCC').set('chit3', '0.000000e+00');
model.component('mod1').variable('var_xs_ORCC').set('chit4', '0.000000e+00');
model.component('mod1').variable('var_xs_ORCC').set('chit5', '0.000000e+00');
model.component('mod1').variable('var_xs_ORCC').set('chit6', '0.000000e+00');
model.component('mod1').variable('var_xs_ORCC').set('chit7', '0.000000e+00');
model.component('mod1').variable('var_xs_ORCC').set('chit8', '0.000000e+00');
model.component('mod1').variable('var_xs_ORCC').set('diff11', '2.340720e+00[cm]');
model.component('mod1').variable('var_xs_ORCC').set('diff12', '1.069140e+00[cm]');
model.component('mod1').variable('var_xs_ORCC').set('diff13', '9.958760e-01[cm]');
model.component('mod1').variable('var_xs_ORCC').set('diff14', '9.969920e-01[cm]');
model.component('mod1').variable('var_xs_ORCC').set('diff15', '9.931830e-01[cm]');
model.component('mod1').variable('var_xs_ORCC').set('diff16', '9.827760e-01[cm]');
model.component('mod1').variable('var_xs_ORCC').set('diff17', '9.492720e-01[cm]');
model.component('mod1').variable('var_xs_ORCC').set('diff18', '8.555930e-01[cm]');
model.component('mod1').variable('var_xs_ORCC').set('fiss1', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('fiss2', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('fiss3', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('fiss4', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('fiss5', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('fiss6', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('fiss7', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('fiss8', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('invV1', '4.835500e-10[s/cm]');
model.component('mod1').variable('var_xs_ORCC').set('invV2', '2.179600e-09[s/cm]');
model.component('mod1').variable('var_xs_ORCC').set('invV3', '3.692220e-08[s/cm]');
model.component('mod1').variable('var_xs_ORCC').set('invV4', '2.106320e-07[s/cm]');
model.component('mod1').variable('var_xs_ORCC').set('invV5', '7.315000e-07[s/cm]');
model.component('mod1').variable('var_xs_ORCC').set('invV6', '1.382520e-06[s/cm]');
model.component('mod1').variable('var_xs_ORCC').set('invV7', '2.173870e-06[s/cm]');
model.component('mod1').variable('var_xs_ORCC').set('invV8', '4.188470e-06[s/cm]');
model.component('mod1').variable('var_xs_ORCC').set('kappa1', '0.000000e+00[MeV]');
model.component('mod1').variable('var_xs_ORCC').set('kappa2', '0.000000e+00[MeV]');
model.component('mod1').variable('var_xs_ORCC').set('kappa3', '0.000000e+00[MeV]');
model.component('mod1').variable('var_xs_ORCC').set('kappa4', '0.000000e+00[MeV]');
model.component('mod1').variable('var_xs_ORCC').set('kappa5', '0.000000e+00[MeV]');
model.component('mod1').variable('var_xs_ORCC').set('kappa6', '0.000000e+00[MeV]');
model.component('mod1').variable('var_xs_ORCC').set('kappa7', '0.000000e+00[MeV]');
model.component('mod1').variable('var_xs_ORCC').set('kappa8', '0.000000e+00[MeV]');
model.component('mod1').variable('var_xs_ORCC').set('lambdas1', '1.087300e-02[1/s]');
model.component('mod1').variable('var_xs_ORCC').set('lambdas2', '3.181920e-02[1/s]');
model.component('mod1').variable('var_xs_ORCC').set('lambdas3', '1.093960e-01[1/s]');
model.component('mod1').variable('var_xs_ORCC').set('lambdas4', '3.170910e-01[1/s]');
model.component('mod1').variable('var_xs_ORCC').set('lambdas5', '1.353750e+00[1/s]');
model.component('mod1').variable('var_xs_ORCC').set('lambdas6', '8.281150e+00[1/s]');
model.component('mod1').variable('var_xs_ORCC').set('nsf1', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('nsf2', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('nsf3', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('nsf4', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('nsf5', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('nsf6', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('nsf7', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('nsf8', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('rem1', '4.382650e-02[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('rem2', '2.075210e-02[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('rem3', '1.165110e-02[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('rem4', '2.328710e-02[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('rem5', '5.597670e-02[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('rem6', '7.191680e-02[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('rem7', '6.456670e-02[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('rem8', '8.671390e-02[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat11', '1.295580e-01[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat12', '4.311730e-02[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat13', '2.144460e-05[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat14', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat15', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat16', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat17', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat18', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat21', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat22', '3.328050e-01[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat23', '2.071650e-02[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat24', '8.029590e-08[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat25', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat26', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat27', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat28', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat31', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat32', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat33', '3.426210e-01[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat34', '1.164290e-02[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat35', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat36', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat37', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat38', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat41', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat42', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat43', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat44', '3.303680e-01[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat45', '2.324290e-02[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat46', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat47', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat48', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat51', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat52', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat53', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat54', '1.412030e-04[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat55', '2.982420e-01[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat56', '5.495290e-02[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat57', '7.337060e-04[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat58', '8.717980e-07[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat61', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat62', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat63', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat64', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat65', '7.990310e-03[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat66', '2.843010e-01[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat67', '6.119510e-02[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat68', '2.446850e-03[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat71', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat72', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat73', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat74', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat75', '7.944750e-05[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat76', '3.946710e-02[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat77', '2.987310e-01[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat78', '2.457500e-02[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat81', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat82', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat83', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat84', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat85', '1.258620e-07[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat86', '5.180620e-03[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat87', '8.067520e-02[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('scat88', '3.000140e-01[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('tot1', '1.733850e-01[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('tot2', '3.535570e-01[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('tot3', '3.542720e-01[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('tot4', '3.536550e-01[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('tot5', '3.542180e-01[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('tot6', '3.562180e-01[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('tot7', '3.632980e-01[1/cm]');
model.component('mod1').variable('var_xs_ORCC').set('tot8', '3.867280e-01[1/cm]');
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
model.component('mod1').variable('var_xs_OR').set('beta1', '6.578860e-03');
model.component('mod1').variable('var_xs_OR').set('betas1', '2.019570e-04');
model.component('mod1').variable('var_xs_OR').set('betas2', '1.089270e-03');
model.component('mod1').variable('var_xs_OR').set('betas3', '1.061300e-03');
model.component('mod1').variable('var_xs_OR').set('betas4', '3.025810e-03');
model.component('mod1').variable('var_xs_OR').set('betas5', '8.839130e-04');
model.component('mod1').variable('var_xs_OR').set('betas6', '3.166050e-04');
model.component('mod1').variable('var_xs_OR').set('chid1', '0.000000e+00');
model.component('mod1').variable('var_xs_OR').set('chid2', '0.000000e+00');
model.component('mod1').variable('var_xs_OR').set('chid3', '0.000000e+00');
model.component('mod1').variable('var_xs_OR').set('chid4', '0.000000e+00');
model.component('mod1').variable('var_xs_OR').set('chid5', '0.000000e+00');
model.component('mod1').variable('var_xs_OR').set('chid6', '0.000000e+00');
model.component('mod1').variable('var_xs_OR').set('chid7', '0.000000e+00');
model.component('mod1').variable('var_xs_OR').set('chid8', '0.000000e+00');
model.component('mod1').variable('var_xs_OR').set('chip1', '0.000000e+00');
model.component('mod1').variable('var_xs_OR').set('chip2', '0.000000e+00');
model.component('mod1').variable('var_xs_OR').set('chip3', '0.000000e+00');
model.component('mod1').variable('var_xs_OR').set('chip4', '0.000000e+00');
model.component('mod1').variable('var_xs_OR').set('chip5', '0.000000e+00');
model.component('mod1').variable('var_xs_OR').set('chip6', '0.000000e+00');
model.component('mod1').variable('var_xs_OR').set('chip7', '0.000000e+00');
model.component('mod1').variable('var_xs_OR').set('chip8', '0.000000e+00');
model.component('mod1').variable('var_xs_OR').set('chit1', '0.000000e+00');
model.component('mod1').variable('var_xs_OR').set('chit2', '0.000000e+00');
model.component('mod1').variable('var_xs_OR').set('chit3', '0.000000e+00');
model.component('mod1').variable('var_xs_OR').set('chit4', '0.000000e+00');
model.component('mod1').variable('var_xs_OR').set('chit5', '0.000000e+00');
model.component('mod1').variable('var_xs_OR').set('chit6', '0.000000e+00');
model.component('mod1').variable('var_xs_OR').set('chit7', '0.000000e+00');
model.component('mod1').variable('var_xs_OR').set('chit8', '0.000000e+00');
model.component('mod1').variable('var_xs_OR').set('diff11', '2.474600e+00[cm]');
model.component('mod1').variable('var_xs_OR').set('diff12', '1.110320e+00[cm]');
model.component('mod1').variable('var_xs_OR').set('diff13', '8.556230e-01[cm]');
model.component('mod1').variable('var_xs_OR').set('diff14', '8.531500e-01[cm]');
model.component('mod1').variable('var_xs_OR').set('diff15', '8.486260e-01[cm]');
model.component('mod1').variable('var_xs_OR').set('diff16', '8.392910e-01[cm]');
model.component('mod1').variable('var_xs_OR').set('diff17', '8.050850e-01[cm]');
model.component('mod1').variable('var_xs_OR').set('diff18', '7.193240e-01[cm]');
model.component('mod1').variable('var_xs_OR').set('fiss1', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('fiss2', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('fiss3', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('fiss4', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('fiss5', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('fiss6', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('fiss7', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('fiss8', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('invV1', '4.793180e-10[s/cm]');
model.component('mod1').variable('var_xs_OR').set('invV2', '2.078030e-09[s/cm]');
model.component('mod1').variable('var_xs_OR').set('invV3', '3.842680e-08[s/cm]');
model.component('mod1').variable('var_xs_OR').set('invV4', '2.125340e-07[s/cm]');
model.component('mod1').variable('var_xs_OR').set('invV5', '7.886800e-07[s/cm]');
model.component('mod1').variable('var_xs_OR').set('invV6', '1.383110e-06[s/cm]');
model.component('mod1').variable('var_xs_OR').set('invV7', '2.170230e-06[s/cm]');
model.component('mod1').variable('var_xs_OR').set('invV8', '4.160300e-06[s/cm]');
model.component('mod1').variable('var_xs_OR').set('kappa1', '0.000000e+00[MeV]');
model.component('mod1').variable('var_xs_OR').set('kappa2', '0.000000e+00[MeV]');
model.component('mod1').variable('var_xs_OR').set('kappa3', '0.000000e+00[MeV]');
model.component('mod1').variable('var_xs_OR').set('kappa4', '0.000000e+00[MeV]');
model.component('mod1').variable('var_xs_OR').set('kappa5', '0.000000e+00[MeV]');
model.component('mod1').variable('var_xs_OR').set('kappa6', '0.000000e+00[MeV]');
model.component('mod1').variable('var_xs_OR').set('kappa7', '0.000000e+00[MeV]');
model.component('mod1').variable('var_xs_OR').set('kappa8', '0.000000e+00[MeV]');
model.component('mod1').variable('var_xs_OR').set('lambdas1', '1.087300e-02[1/s]');
model.component('mod1').variable('var_xs_OR').set('lambdas2', '3.181920e-02[1/s]');
model.component('mod1').variable('var_xs_OR').set('lambdas3', '1.093960e-01[1/s]');
model.component('mod1').variable('var_xs_OR').set('lambdas4', '3.170910e-01[1/s]');
model.component('mod1').variable('var_xs_OR').set('lambdas5', '1.353750e+00[1/s]');
model.component('mod1').variable('var_xs_OR').set('lambdas6', '8.281150e+00[1/s]');
model.component('mod1').variable('var_xs_OR').set('nsf1', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('nsf2', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('nsf3', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('nsf4', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('nsf5', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('nsf6', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('nsf7', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('nsf8', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('rem1', '3.553710e-02[1/cm]');
model.component('mod1').variable('var_xs_OR').set('rem2', '1.982530e-02[1/cm]');
model.component('mod1').variable('var_xs_OR').set('rem3', '1.522140e-02[1/cm]');
model.component('mod1').variable('var_xs_OR').set('rem4', '2.911240e-02[1/cm]');
model.component('mod1').variable('var_xs_OR').set('rem5', '8.735260e-02[1/cm]');
model.component('mod1').variable('var_xs_OR').set('rem6', '7.921350e-02[1/cm]');
model.component('mod1').variable('var_xs_OR').set('rem7', '6.657860e-02[1/cm]');
model.component('mod1').variable('var_xs_OR').set('rem8', '8.172610e-02[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat11', '1.206790e-01[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat12', '3.544690e-02[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat13', '1.035080e-06[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat14', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat15', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat16', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat17', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat18', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat21', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat22', '3.236170e-01[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat23', '1.982490e-02[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat24', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat25', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat26', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat27', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat28', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat31', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat32', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat33', '3.975750e-01[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat34', '1.521830e-02[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat35', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat36', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat37', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat38', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat41', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat42', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat43', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat44', '3.848100e-01[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat45', '2.909590e-02[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat46', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat47', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat48', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat51', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat52', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat53', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat54', '1.159050e-04[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat55', '3.274620e-01[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat56', '8.582860e-02[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat57', '1.351120e-03[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat58', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat61', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat62', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat63', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat64', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat65', '9.592910e-03[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat66', '3.374270e-01[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat67', '6.600890e-02[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat68', '3.509410e-03[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat71', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat72', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat73', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat74', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat75', '1.211190e-04[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat76', '4.488110e-02[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat77', '3.588020e-01[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat78', '2.141600e-02[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat81', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat82', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat83', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat84', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat85', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat86', '7.692010e-03[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat87', '7.373030e-02[1/cm]');
model.component('mod1').variable('var_xs_OR').set('scat88', '3.685220e-01[1/cm]');
model.component('mod1').variable('var_xs_OR').set('tot1', '1.562160e-01[1/cm]');
model.component('mod1').variable('var_xs_OR').set('tot2', '3.434420e-01[1/cm]');
model.component('mod1').variable('var_xs_OR').set('tot3', '4.127970e-01[1/cm]');
model.component('mod1').variable('var_xs_OR').set('tot4', '4.139220e-01[1/cm]');
model.component('mod1').variable('var_xs_OR').set('tot5', '4.148150e-01[1/cm]');
model.component('mod1').variable('var_xs_OR').set('tot6', '4.166400e-01[1/cm]');
model.component('mod1').variable('var_xs_OR').set('tot7', '4.253810e-01[1/cm]');
model.component('mod1').variable('var_xs_OR').set('tot8', '4.502480e-01[1/cm]');
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
model.component('mod1').variable('var_xs_CB').set('beta1', '6.578860e-03');
model.component('mod1').variable('var_xs_CB').set('betas1', '2.019570e-04');
model.component('mod1').variable('var_xs_CB').set('betas2', '1.089270e-03');
model.component('mod1').variable('var_xs_CB').set('betas3', '1.061300e-03');
model.component('mod1').variable('var_xs_CB').set('betas4', '3.025810e-03');
model.component('mod1').variable('var_xs_CB').set('betas5', '8.839130e-04');
model.component('mod1').variable('var_xs_CB').set('betas6', '3.166050e-04');
model.component('mod1').variable('var_xs_CB').set('chid1', '0.000000e+00');
model.component('mod1').variable('var_xs_CB').set('chid2', '0.000000e+00');
model.component('mod1').variable('var_xs_CB').set('chid3', '0.000000e+00');
model.component('mod1').variable('var_xs_CB').set('chid4', '0.000000e+00');
model.component('mod1').variable('var_xs_CB').set('chid5', '0.000000e+00');
model.component('mod1').variable('var_xs_CB').set('chid6', '0.000000e+00');
model.component('mod1').variable('var_xs_CB').set('chid7', '0.000000e+00');
model.component('mod1').variable('var_xs_CB').set('chid8', '0.000000e+00');
model.component('mod1').variable('var_xs_CB').set('chip1', '0.000000e+00');
model.component('mod1').variable('var_xs_CB').set('chip2', '0.000000e+00');
model.component('mod1').variable('var_xs_CB').set('chip3', '0.000000e+00');
model.component('mod1').variable('var_xs_CB').set('chip4', '0.000000e+00');
model.component('mod1').variable('var_xs_CB').set('chip5', '0.000000e+00');
model.component('mod1').variable('var_xs_CB').set('chip6', '0.000000e+00');
model.component('mod1').variable('var_xs_CB').set('chip7', '0.000000e+00');
model.component('mod1').variable('var_xs_CB').set('chip8', '0.000000e+00');
model.component('mod1').variable('var_xs_CB').set('chit1', '0.000000e+00');
model.component('mod1').variable('var_xs_CB').set('chit2', '0.000000e+00');
model.component('mod1').variable('var_xs_CB').set('chit3', '0.000000e+00');
model.component('mod1').variable('var_xs_CB').set('chit4', '0.000000e+00');
model.component('mod1').variable('var_xs_CB').set('chit5', '0.000000e+00');
model.component('mod1').variable('var_xs_CB').set('chit6', '0.000000e+00');
model.component('mod1').variable('var_xs_CB').set('chit7', '0.000000e+00');
model.component('mod1').variable('var_xs_CB').set('chit8', '0.000000e+00');
model.component('mod1').variable('var_xs_CB').set('diff11', '2.489850e+00[cm]');
model.component('mod1').variable('var_xs_CB').set('diff12', '1.126840e+00[cm]');
model.component('mod1').variable('var_xs_CB').set('diff13', '3.940810e-01[cm]');
model.component('mod1').variable('var_xs_CB').set('diff14', '3.743520e-01[cm]');
model.component('mod1').variable('var_xs_CB').set('diff15', '3.618570e-01[cm]');
model.component('mod1').variable('var_xs_CB').set('diff16', '3.486480e-01[cm]');
model.component('mod1').variable('var_xs_CB').set('diff17', '3.321310e-01[cm]');
model.component('mod1').variable('var_xs_CB').set('diff18', '2.975410e-01[cm]');
model.component('mod1').variable('var_xs_CB').set('fiss1', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('fiss2', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('fiss3', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('fiss4', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('fiss5', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('fiss6', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('fiss7', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('fiss8', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('invV1', '4.623690e-10[s/cm]');
model.component('mod1').variable('var_xs_CB').set('invV2', '2.009980e-09[s/cm]');
model.component('mod1').variable('var_xs_CB').set('invV3', '3.999290e-08[s/cm]');
model.component('mod1').variable('var_xs_CB').set('invV4', '2.176570e-07[s/cm]');
model.component('mod1').variable('var_xs_CB').set('invV5', '8.351470e-07[s/cm]');
model.component('mod1').variable('var_xs_CB').set('invV6', '1.379570e-06[s/cm]');
model.component('mod1').variable('var_xs_CB').set('invV7', '2.144280e-06[s/cm]');
model.component('mod1').variable('var_xs_CB').set('invV8', '4.000020e-06[s/cm]');
model.component('mod1').variable('var_xs_CB').set('kappa1', '0.000000e+00[MeV]');
model.component('mod1').variable('var_xs_CB').set('kappa2', '0.000000e+00[MeV]');
model.component('mod1').variable('var_xs_CB').set('kappa3', '0.000000e+00[MeV]');
model.component('mod1').variable('var_xs_CB').set('kappa4', '0.000000e+00[MeV]');
model.component('mod1').variable('var_xs_CB').set('kappa5', '0.000000e+00[MeV]');
model.component('mod1').variable('var_xs_CB').set('kappa6', '0.000000e+00[MeV]');
model.component('mod1').variable('var_xs_CB').set('kappa7', '0.000000e+00[MeV]');
model.component('mod1').variable('var_xs_CB').set('kappa8', '0.000000e+00[MeV]');
model.component('mod1').variable('var_xs_CB').set('lambdas1', '1.087300e-02[1/s]');
model.component('mod1').variable('var_xs_CB').set('lambdas2', '3.181920e-02[1/s]');
model.component('mod1').variable('var_xs_CB').set('lambdas3', '1.093960e-01[1/s]');
model.component('mod1').variable('var_xs_CB').set('lambdas4', '3.170910e-01[1/s]');
model.component('mod1').variable('var_xs_CB').set('lambdas5', '1.353750e+00[1/s]');
model.component('mod1').variable('var_xs_CB').set('lambdas6', '8.281150e+00[1/s]');
model.component('mod1').variable('var_xs_CB').set('nsf1', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('nsf2', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('nsf3', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('nsf4', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('nsf5', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('nsf6', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('nsf7', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('nsf8', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('rem1', '6.028370e-02[1/cm]');
model.component('mod1').variable('var_xs_CB').set('rem2', '7.026400e-03[1/cm]');
model.component('mod1').variable('var_xs_CB').set('rem3', '1.475000e-02[1/cm]');
model.component('mod1').variable('var_xs_CB').set('rem4', '3.368910e-02[1/cm]');
model.component('mod1').variable('var_xs_CB').set('rem5', '1.689570e-01[1/cm]');
model.component('mod1').variable('var_xs_CB').set('rem6', '1.774450e-01[1/cm]');
model.component('mod1').variable('var_xs_CB').set('rem7', '2.287480e-01[1/cm]');
model.component('mod1').variable('var_xs_CB').set('rem8', '4.044700e-01[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat11', '2.275230e-01[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat12', '5.863260e-02[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat13', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat14', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat15', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat16', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat17', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat18', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat21', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat22', '3.788580e-01[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat23', '6.110170e-03[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat24', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat25', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat26', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat27', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat28', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat31', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat32', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat33', '8.767280e-01[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat34', '8.322200e-03[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat35', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat36', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat37', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat38', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat41', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat42', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat43', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat44', '8.678130e-01[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat45', '1.675060e-02[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat46', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat47', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat48', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat51', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat52', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat53', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat54', '4.154100e-04[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat55', '7.656430e-01[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat56', '1.202850e-01[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat57', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat58', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat61', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat62', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat63', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat64', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat65', '1.072170e-02[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat66', '7.894170e-01[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat67', '8.843500e-02[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat68', '2.588190e-06[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat71', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat72', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat73', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat74', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat75', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat76', '6.304550e-02[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat77', '7.863740e-01[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat78', '4.264120e-02[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat81', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat82', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat83', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat84', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat85', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat86', '1.288270e-05[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat87', '1.741120e-01[1/cm]');
model.component('mod1').variable('var_xs_CB').set('scat88', '7.326020e-01[1/cm]');
model.component('mod1').variable('var_xs_CB').set('tot1', '2.878070e-01[1/cm]');
model.component('mod1').variable('var_xs_CB').set('tot2', '3.858840e-01[1/cm]');
model.component('mod1').variable('var_xs_CB').set('tot3', '8.914780e-01[1/cm]');
model.component('mod1').variable('var_xs_CB').set('tot4', '9.015020e-01[1/cm]');
model.component('mod1').variable('var_xs_CB').set('tot5', '9.346000e-01[1/cm]');
model.component('mod1').variable('var_xs_CB').set('tot6', '9.668630e-01[1/cm]');
model.component('mod1').variable('var_xs_CB').set('tot7', '1.015120e+00[1/cm]');
model.component('mod1').variable('var_xs_CB').set('tot8', '1.137070e+00[1/cm]');
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
model.component('mod1').variable('var_xs_DC').set('beta1', '6.578860e-03');
model.component('mod1').variable('var_xs_DC').set('betas1', '2.019570e-04');
model.component('mod1').variable('var_xs_DC').set('betas2', '1.089270e-03');
model.component('mod1').variable('var_xs_DC').set('betas3', '1.061300e-03');
model.component('mod1').variable('var_xs_DC').set('betas4', '3.025810e-03');
model.component('mod1').variable('var_xs_DC').set('betas5', '8.839130e-04');
model.component('mod1').variable('var_xs_DC').set('betas6', '3.166050e-04');
model.component('mod1').variable('var_xs_DC').set('chid1', '0.000000e+00');
model.component('mod1').variable('var_xs_DC').set('chid2', '0.000000e+00');
model.component('mod1').variable('var_xs_DC').set('chid3', '0.000000e+00');
model.component('mod1').variable('var_xs_DC').set('chid4', '0.000000e+00');
model.component('mod1').variable('var_xs_DC').set('chid5', '0.000000e+00');
model.component('mod1').variable('var_xs_DC').set('chid6', '0.000000e+00');
model.component('mod1').variable('var_xs_DC').set('chid7', '0.000000e+00');
model.component('mod1').variable('var_xs_DC').set('chid8', '0.000000e+00');
model.component('mod1').variable('var_xs_DC').set('chip1', '0.000000e+00');
model.component('mod1').variable('var_xs_DC').set('chip2', '0.000000e+00');
model.component('mod1').variable('var_xs_DC').set('chip3', '0.000000e+00');
model.component('mod1').variable('var_xs_DC').set('chip4', '0.000000e+00');
model.component('mod1').variable('var_xs_DC').set('chip5', '0.000000e+00');
model.component('mod1').variable('var_xs_DC').set('chip6', '0.000000e+00');
model.component('mod1').variable('var_xs_DC').set('chip7', '0.000000e+00');
model.component('mod1').variable('var_xs_DC').set('chip8', '0.000000e+00');
model.component('mod1').variable('var_xs_DC').set('chit1', '0.000000e+00');
model.component('mod1').variable('var_xs_DC').set('chit2', '0.000000e+00');
model.component('mod1').variable('var_xs_DC').set('chit3', '0.000000e+00');
model.component('mod1').variable('var_xs_DC').set('chit4', '0.000000e+00');
model.component('mod1').variable('var_xs_DC').set('chit5', '0.000000e+00');
model.component('mod1').variable('var_xs_DC').set('chit6', '0.000000e+00');
model.component('mod1').variable('var_xs_DC').set('chit7', '0.000000e+00');
model.component('mod1').variable('var_xs_DC').set('chit8', '0.000000e+00');
model.component('mod1').variable('var_xs_DC').set('diff11', '3.396450e+00[cm]');
model.component('mod1').variable('var_xs_DC').set('diff12', '1.080420e+00[cm]');
model.component('mod1').variable('var_xs_DC').set('diff13', '1.281040e+00[cm]');
model.component('mod1').variable('var_xs_DC').set('diff14', '1.293180e+00[cm]');
model.component('mod1').variable('var_xs_DC').set('diff15', '1.294120e+00[cm]');
model.component('mod1').variable('var_xs_DC').set('diff16', '1.267330e+00[cm]');
model.component('mod1').variable('var_xs_DC').set('diff17', '1.246690e+00[cm]');
model.component('mod1').variable('var_xs_DC').set('diff18', '1.158150e+00[cm]');
model.component('mod1').variable('var_xs_DC').set('fiss1', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('fiss2', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('fiss3', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('fiss4', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('fiss5', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('fiss6', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('fiss7', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('fiss8', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('invV1', '4.613410e-10[s/cm]');
model.component('mod1').variable('var_xs_DC').set('invV2', '2.065660e-09[s/cm]');
model.component('mod1').variable('var_xs_DC').set('invV3', '3.980090e-08[s/cm]');
model.component('mod1').variable('var_xs_DC').set('invV4', '2.188690e-07[s/cm]');
model.component('mod1').variable('var_xs_DC').set('invV5', '8.148600e-07[s/cm]');
model.component('mod1').variable('var_xs_DC').set('invV6', '1.378800e-06[s/cm]');
model.component('mod1').variable('var_xs_DC').set('invV7', '2.142860e-06[s/cm]');
model.component('mod1').variable('var_xs_DC').set('invV8', '4.061180e-06[s/cm]');
model.component('mod1').variable('var_xs_DC').set('kappa1', '0.000000e+00[MeV]');
model.component('mod1').variable('var_xs_DC').set('kappa2', '0.000000e+00[MeV]');
model.component('mod1').variable('var_xs_DC').set('kappa3', '0.000000e+00[MeV]');
model.component('mod1').variable('var_xs_DC').set('kappa4', '0.000000e+00[MeV]');
model.component('mod1').variable('var_xs_DC').set('kappa5', '0.000000e+00[MeV]');
model.component('mod1').variable('var_xs_DC').set('kappa6', '0.000000e+00[MeV]');
model.component('mod1').variable('var_xs_DC').set('kappa7', '0.000000e+00[MeV]');
model.component('mod1').variable('var_xs_DC').set('kappa8', '0.000000e+00[MeV]');
model.component('mod1').variable('var_xs_DC').set('lambdas1', '1.087300e-02[1/s]');
model.component('mod1').variable('var_xs_DC').set('lambdas2', '3.181920e-02[1/s]');
model.component('mod1').variable('var_xs_DC').set('lambdas3', '1.093960e-01[1/s]');
model.component('mod1').variable('var_xs_DC').set('lambdas4', '3.170910e-01[1/s]');
model.component('mod1').variable('var_xs_DC').set('lambdas5', '1.353750e+00[1/s]');
model.component('mod1').variable('var_xs_DC').set('lambdas6', '8.281150e+00[1/s]');
model.component('mod1').variable('var_xs_DC').set('nsf1', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('nsf2', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('nsf3', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('nsf4', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('nsf5', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('nsf6', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('nsf7', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('nsf8', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('rem1', '5.412510e-02[1/cm]');
model.component('mod1').variable('var_xs_DC').set('rem2', '1.366560e-02[1/cm]');
model.component('mod1').variable('var_xs_DC').set('rem3', '1.076760e-02[1/cm]');
model.component('mod1').variable('var_xs_DC').set('rem4', '1.895360e-02[1/cm]');
model.component('mod1').variable('var_xs_DC').set('rem5', '6.899680e-02[1/cm]');
model.component('mod1').variable('var_xs_DC').set('rem6', '6.213740e-02[1/cm]');
model.component('mod1').variable('var_xs_DC').set('rem7', '6.429890e-02[1/cm]');
model.component('mod1').variable('var_xs_DC').set('rem8', '1.012370e-01[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat11', '1.453200e-01[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat12', '5.146940e-02[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat13', '1.599320e-04[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat14', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat15', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat16', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat17', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat18', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat21', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat22', '3.466140e-01[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat23', '1.361400e-02[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat24', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat25', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat26', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat27', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat28', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat31', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat32', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat33', '2.673190e-01[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat34', '1.073290e-02[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat35', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat36', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat37', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat38', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat41', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat42', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat43', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat44', '2.555800e-01[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat45', '1.882200e-02[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat46', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat47', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat48', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat51', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat52', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat53', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat54', '8.253380e-05[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat55', '2.060540e-01[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat56', '6.796490e-02[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat57', '5.996390e-04[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat58', '4.279080e-06[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat61', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat62', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat63', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat64', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat65', '5.620310e-03[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat66', '2.148640e-01[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat67', '5.501000e-02[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat68', '9.091910e-04[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat71', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat72', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat73', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat74', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat75', '1.755250e-05[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat76', '3.560640e-02[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat77', '2.171910e-01[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat78', '2.778210e-02[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat81', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat82', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat83', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat84', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat85', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat86', '1.602490e-03[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat87', '9.798970e-02[1/cm]');
model.component('mod1').variable('var_xs_DC').set('scat88', '2.012180e-01[1/cm]');
model.component('mod1').variable('var_xs_DC').set('tot1', '1.994450e-01[1/cm]');
model.component('mod1').variable('var_xs_DC').set('tot2', '3.602790e-01[1/cm]');
model.component('mod1').variable('var_xs_DC').set('tot3', '2.780860e-01[1/cm]');
model.component('mod1').variable('var_xs_DC').set('tot4', '2.745330e-01[1/cm]');
model.component('mod1').variable('var_xs_DC').set('tot5', '2.750510e-01[1/cm]');
model.component('mod1').variable('var_xs_DC').set('tot6', '2.770010e-01[1/cm]');
model.component('mod1').variable('var_xs_DC').set('tot7', '2.814900e-01[1/cm]');
model.component('mod1').variable('var_xs_DC').set('tot8', '3.024550e-01[1/cm]');
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
model.component('mod1').variable('var_xs_VS').set('beta1', '6.578860e-03');
model.component('mod1').variable('var_xs_VS').set('betas1', '2.019570e-04');
model.component('mod1').variable('var_xs_VS').set('betas2', '1.089270e-03');
model.component('mod1').variable('var_xs_VS').set('betas3', '1.061300e-03');
model.component('mod1').variable('var_xs_VS').set('betas4', '3.025810e-03');
model.component('mod1').variable('var_xs_VS').set('betas5', '8.839130e-04');
model.component('mod1').variable('var_xs_VS').set('betas6', '3.166050e-04');
model.component('mod1').variable('var_xs_VS').set('chid1', '0.000000e+00');
model.component('mod1').variable('var_xs_VS').set('chid2', '0.000000e+00');
model.component('mod1').variable('var_xs_VS').set('chid3', '0.000000e+00');
model.component('mod1').variable('var_xs_VS').set('chid4', '0.000000e+00');
model.component('mod1').variable('var_xs_VS').set('chid5', '0.000000e+00');
model.component('mod1').variable('var_xs_VS').set('chid6', '0.000000e+00');
model.component('mod1').variable('var_xs_VS').set('chid7', '0.000000e+00');
model.component('mod1').variable('var_xs_VS').set('chid8', '0.000000e+00');
model.component('mod1').variable('var_xs_VS').set('chip1', '0.000000e+00');
model.component('mod1').variable('var_xs_VS').set('chip2', '0.000000e+00');
model.component('mod1').variable('var_xs_VS').set('chip3', '0.000000e+00');
model.component('mod1').variable('var_xs_VS').set('chip4', '0.000000e+00');
model.component('mod1').variable('var_xs_VS').set('chip5', '0.000000e+00');
model.component('mod1').variable('var_xs_VS').set('chip6', '0.000000e+00');
model.component('mod1').variable('var_xs_VS').set('chip7', '0.000000e+00');
model.component('mod1').variable('var_xs_VS').set('chip8', '0.000000e+00');
model.component('mod1').variable('var_xs_VS').set('chit1', '0.000000e+00');
model.component('mod1').variable('var_xs_VS').set('chit2', '0.000000e+00');
model.component('mod1').variable('var_xs_VS').set('chit3', '0.000000e+00');
model.component('mod1').variable('var_xs_VS').set('chit4', '0.000000e+00');
model.component('mod1').variable('var_xs_VS').set('chit5', '0.000000e+00');
model.component('mod1').variable('var_xs_VS').set('chit6', '0.000000e+00');
model.component('mod1').variable('var_xs_VS').set('chit7', '0.000000e+00');
model.component('mod1').variable('var_xs_VS').set('chit8', '0.000000e+00');
model.component('mod1').variable('var_xs_VS').set('diff11', '2.657400e+00[cm]');
model.component('mod1').variable('var_xs_VS').set('diff12', '1.159940e+00[cm]');
model.component('mod1').variable('var_xs_VS').set('diff13', '4.095630e-01[cm]');
model.component('mod1').variable('var_xs_VS').set('diff14', '3.759700e-01[cm]');
model.component('mod1').variable('var_xs_VS').set('diff15', '3.635150e-01[cm]');
model.component('mod1').variable('var_xs_VS').set('diff16', '3.488920e-01[cm]');
model.component('mod1').variable('var_xs_VS').set('diff17', '3.328500e-01[cm]');
model.component('mod1').variable('var_xs_VS').set('diff18', '2.996620e-01[cm]');
model.component('mod1').variable('var_xs_VS').set('fiss1', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('fiss2', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('fiss3', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('fiss4', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('fiss5', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('fiss6', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('fiss7', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('fiss8', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('invV1', '4.517760e-10[s/cm]');
model.component('mod1').variable('var_xs_VS').set('invV2', '2.016880e-09[s/cm]');
model.component('mod1').variable('var_xs_VS').set('invV3', '3.958750e-08[s/cm]');
model.component('mod1').variable('var_xs_VS').set('invV4', '2.175860e-07[s/cm]');
model.component('mod1').variable('var_xs_VS').set('invV5', '7.922030e-07[s/cm]');
model.component('mod1').variable('var_xs_VS').set('invV6', '1.372710e-06[s/cm]');
model.component('mod1').variable('var_xs_VS').set('invV7', '2.118840e-06[s/cm]');
model.component('mod1').variable('var_xs_VS').set('invV8', '3.910110e-06[s/cm]');
model.component('mod1').variable('var_xs_VS').set('kappa1', '0.000000e+00[MeV]');
model.component('mod1').variable('var_xs_VS').set('kappa2', '0.000000e+00[MeV]');
model.component('mod1').variable('var_xs_VS').set('kappa3', '0.000000e+00[MeV]');
model.component('mod1').variable('var_xs_VS').set('kappa4', '0.000000e+00[MeV]');
model.component('mod1').variable('var_xs_VS').set('kappa5', '0.000000e+00[MeV]');
model.component('mod1').variable('var_xs_VS').set('kappa6', '0.000000e+00[MeV]');
model.component('mod1').variable('var_xs_VS').set('kappa7', '0.000000e+00[MeV]');
model.component('mod1').variable('var_xs_VS').set('kappa8', '0.000000e+00[MeV]');
model.component('mod1').variable('var_xs_VS').set('lambdas1', '1.087300e-02[1/s]');
model.component('mod1').variable('var_xs_VS').set('lambdas2', '3.181920e-02[1/s]');
model.component('mod1').variable('var_xs_VS').set('lambdas3', '1.093960e-01[1/s]');
model.component('mod1').variable('var_xs_VS').set('lambdas4', '3.170910e-01[1/s]');
model.component('mod1').variable('var_xs_VS').set('lambdas5', '1.353750e+00[1/s]');
model.component('mod1').variable('var_xs_VS').set('lambdas6', '8.281150e+00[1/s]');
model.component('mod1').variable('var_xs_VS').set('nsf1', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('nsf2', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('nsf3', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('nsf4', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('nsf5', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('nsf6', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('nsf7', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('nsf8', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('rem1', '5.953640e-02[1/cm]');
model.component('mod1').variable('var_xs_VS').set('rem2', '7.149820e-03[1/cm]');
model.component('mod1').variable('var_xs_VS').set('rem3', '1.505630e-02[1/cm]');
model.component('mod1').variable('var_xs_VS').set('rem4', '3.309110e-02[1/cm]');
model.component('mod1').variable('var_xs_VS').set('rem5', '1.459390e-01[1/cm]');
model.component('mod1').variable('var_xs_VS').set('rem6', '1.737820e-01[1/cm]');
model.component('mod1').variable('var_xs_VS').set('rem7', '2.289700e-01[1/cm]');
model.component('mod1').variable('var_xs_VS').set('rem8', '4.089380e-01[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat11', '2.286350e-01[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat12', '5.736790e-02[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat13', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat14', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat15', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat16', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat17', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat18', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat21', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat22', '3.599040e-01[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat23', '6.115880e-03[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat24', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat25', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat26', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat27', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat28', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat31', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat32', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat33', '8.518390e-01[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat34', '8.494350e-03[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat35', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat36', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat37', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat38', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat41', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat42', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat43', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat44', '8.681680e-01[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat45', '1.684990e-02[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat46', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat47', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat48', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat51', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat52', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat53', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat54', '6.331200e-04[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat55', '7.861080e-01[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat56', '9.984020e-02[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat57', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat58', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat61', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat62', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat63', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat64', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat65', '1.149240e-02[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat66', '7.926620e-01[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat67', '8.460400e-02[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat68', '7.388480e-06[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat71', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat72', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat73', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat74', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat75', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat76', '6.851090e-02[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat77', '7.845320e-01[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat78', '3.832950e-02[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat81', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat82', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat83', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat84', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat85', '0.000000e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat86', '1.926970e-05[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat87', '1.843570e-01[1/cm]');
model.component('mod1').variable('var_xs_VS').set('scat88', '7.218560e-01[1/cm]');
model.component('mod1').variable('var_xs_VS').set('tot1', '2.881710e-01[1/cm]');
model.component('mod1').variable('var_xs_VS').set('tot2', '3.670540e-01[1/cm]');
model.component('mod1').variable('var_xs_VS').set('tot3', '8.668950e-01[1/cm]');
model.component('mod1').variable('var_xs_VS').set('tot4', '9.012590e-01[1/cm]');
model.component('mod1').variable('var_xs_VS').set('tot5', '9.320480e-01[1/cm]');
model.component('mod1').variable('var_xs_VS').set('tot6', '9.664440e-01[1/cm]');
model.component('mod1').variable('var_xs_VS').set('tot7', '1.013500e+00[1/cm]');
model.component('mod1').variable('var_xs_VS').set('tot8', '1.130790e+00[1/cm]');
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
model.component('mod1').variable.create('var18');
model.component('mod1').variable('var18').set('Pdensity', 'kappa1*fiss1*Flux1+kappa2*fiss2*Flux2+kappa3*fiss3*Flux3+kappa4*fiss4*Flux4+kappa5*fiss5*Flux5+kappa6*fiss6*Flux6+kappa7*fiss7*Flux7+kappa8*fiss8*Flux8', 'power density');
model.component('mod1').variable('var18').set('PdensityN', 'Pdensity*Pop/Pint', 'power density normalized to Pop');
model.component('mod1').variable('var18').set('Pint', 'intop1(Pdensity)', 'integrated total core power');
model.component('mod1').variable('var18').set('PintN', 'intop1(PdensityN)', 'integrated total core power normalized to Pop, should be equal to Pop');
model.component('mod1').variable('var18').selection.geom('geom1', 3);
model.component('mod1').variable('var18').selection.set([1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22]);
model.component('mod1').variable.create('var19');
model.component('mod1').variable('var19').set('lambda', 'lambda_critical');
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

model.view.create('view4', 2);

model.component('mod1').material.create('mat1', 'Common');
model.component('mod1').material.create('mat2', 'Common');
model.component('mod1').material.create('mat4', 'Common');
model.component('mod1').material('mat1').selection.set([6 7 8 9 10 12 13]);
model.component('mod1').material('mat2').selection.set([1 2 3 4 5 11 14 15 16 17 18 19 20 21 22]);
model.component('mod1').material('mat4').propertyGroup.create('Enu', 'Young''s modulus and Poisson''s ratio');
model.component('mod1').material('mat4').propertyGroup.create('Murnaghan', 'Murnaghan');
model.component('mod1').material('mat4').propertyGroup.create('Lame', ['Lam' native2unicode(hex2dec({'00' 'e9'}), 'unicode') ' parameters']);

model.component('mod1').cpl.create('intop1', 'Integration');
model.component('mod1').cpl.create('aveop1', 'Average');
model.component('mod1').cpl('intop1').selection.set([7 8 9 10 12 13]);
model.component('mod1').cpl('aveop1').selection.set([7 8 9 10 12 13]);

model.component('mod1').physics.create('br', 'Brinkman', 'geom1');
model.component('mod1').physics('br').selection.set([6 7 8 9 10 12 13]);
model.component('mod1').physics('br').feature('fmp1').create('fd1', 'Forchheimer', 3);
model.component('mod1').physics('br').feature('fmp1').feature('fd1').selection.set([6 7 8 9 10 12 13]);
model.component('mod1').physics('br').create('out1', 'OutletBoundary', 2);
model.component('mod1').physics('br').feature('out1').selection.set([39 40 191 272]);
model.component('mod1').physics('br').create('out2', 'OutletBoundary', 2);
model.component('mod1').physics('br').feature('out2').selection.set([41 42 192 264]);
model.component('mod1').physics('br').create('out3', 'OutletBoundary', 2);
model.component('mod1').physics('br').feature('out3').selection.set([61 62 67 68 202 205 254 260]);
model.component('mod1').physics('br').create('inl1', 'InletBoundary', 2);
model.component('mod1').physics('br').feature('inl1').selection.set([63 64 71 72 203 207 246 256]);
model.component('mod1').physics('br').create('inl2', 'InletBoundary', 2);
model.component('mod1').physics('br').feature('inl2').selection.set([107 108 118 123 130 139 147 151 158 167 225 238 290 294 305 312 326 330 335 341]);
model.component('mod1').physics.create('ht_flibe', 'HeatTransferInFluids', 'geom1');
model.component('mod1').physics('ht_flibe').identifier('ht_flibe');
model.component('mod1').physics('ht_flibe').field('temperature').field('T_flibe');
model.component('mod1').physics('ht_flibe').selection.set([6 7 8 9 10 12 13]);
model.component('mod1').physics('ht_flibe').create('temp1', 'TemperatureBoundary', 2);
model.component('mod1').physics('ht_flibe').feature('temp1').selection.set([63 64 71 72 107 108 118 123 130 139 147 151 158 167 203 207 225 238 246 256 290 294 305 312 326 330 335 341]);
model.component('mod1').physics('ht_flibe').create('hs1', 'HeatSource', 3);
model.component('mod1').physics('ht_flibe').feature('hs1').selection.set([7 8 9 10 12 13]);
model.component('mod1').physics('ht_flibe').create('hs2', 'HeatSource', 3);
model.component('mod1').physics('ht_flibe').feature('hs2').selection.set([7 8 9 10 12 13]);
model.component('mod1').physics.create('ht_fuel', 'HeatTransferInFluids', 'geom1');
model.component('mod1').physics('ht_fuel').identifier('ht_fuel');
model.component('mod1').physics('ht_fuel').field('temperature').field('T_fuel');
model.component('mod1').physics('ht_fuel').selection.set([7 8 9 10 12 13]);
model.component('mod1').physics('ht_fuel').create('solid1', 'SolidHeatTransferModel', 3);
model.component('mod1').physics('ht_fuel').feature('solid1').selection.set([7 8 9 10 12 13]);
model.component('mod1').physics('ht_fuel').create('hs1', 'HeatSource', 3);
model.component('mod1').physics('ht_fuel').feature('hs1').selection.set([7 8 9 10 12 13]);
model.component('mod1').physics('ht_fuel').create('hs2', 'HeatSource', 3);
model.component('mod1').physics('ht_fuel').feature('hs2').selection.set([7 8 9 10 12 13]);
model.component('mod1').physics('ht_fuel').create('hs3', 'HeatSource', 3);
model.component('mod1').physics('ht_fuel').feature('hs3').selection.set([7 8 9 10 12 13]);
model.component('mod1').physics.create('neutrondiffusion', 'CoefficientFormPDE', 'geom1');
model.component('mod1').physics('neutrondiffusion').identifier('neutrondiffusion');
model.component('mod1').physics('neutrondiffusion').field('dimensionless').field('Flux');
model.component('mod1').physics('neutrondiffusion').field('dimensionless').component({'Flux1' 'Flux2' 'Flux3' 'Flux4' 'Flux5' 'Flux6' 'Flux7' 'Flux8' 'Conc1' 'Conc2'  ...
'Conc3' 'Conc4' 'Conc5' 'Conc6'});
model.component('mod1').physics('neutrondiffusion').create('dir1', 'DirichletBoundary', 2);
model.component('mod1').physics('neutrondiffusion').feature('dir1').selection.set([1 2 3 4 5 6 9 10 11 12 15 16 17 18 21 22 23 24 33 34 61 62 63 64 67 68 71 72 77 78 93 94 101 102 113 114 127 133 136 142 155 161 164 170 172 173 174 176 177 179 180 182 183 188 202 203 205 207 210 218 222 228 230 231 232 233 246 254 256 260 262 265 276 278 279 281 282 284 285 286 298 299 302 308 318 319 320 321]);
model.component('mod1').physics('neutrondiffusion').create('flux1', 'FluxBoundary', 2);

model.component('mod1').mesh('mesh1').create('ftet2', 'FreeTet');
model.component('mod1').mesh('mesh1').create('ftet3', 'FreeTet');
model.component('mod1').mesh('mesh1').create('ftet4', 'FreeTet');
model.component('mod1').mesh('mesh1').create('ftet6', 'FreeTet');
model.component('mod1').mesh('mesh1').create('ftet5', 'FreeTet');
model.component('mod1').mesh('mesh1').feature('ftet2').selection.geom('geom1', 3);
model.component('mod1').mesh('mesh1').feature('ftet2').selection.set([1 2]);
model.component('mod1').mesh('mesh1').feature('ftet2').create('size1', 'Size');
model.component('mod1').mesh('mesh1').feature('ftet3').selection.geom('geom1', 3);
model.component('mod1').mesh('mesh1').feature('ftet3').selection.set([11]);
model.component('mod1').mesh('mesh1').feature('ftet3').create('size1', 'Size');
model.component('mod1').mesh('mesh1').feature('ftet4').selection.geom('geom1', 3);
model.component('mod1').mesh('mesh1').feature('ftet4').selection.set([3]);
model.component('mod1').mesh('mesh1').feature('ftet4').create('size1', 'Size');
model.component('mod1').mesh('mesh1').feature('ftet6').selection.geom('geom1', 3);
model.component('mod1').mesh('mesh1').feature('ftet6').selection.set([9]);
model.component('mod1').mesh('mesh1').feature('ftet6').create('size1', 'Size');
model.component('mod1').mesh('mesh1').feature('ftet5').create('size1', 'Size');

model.component('mod1').probe.create('dom1', 'Domain');
model.component('mod1').probe.create('dom2', 'Domain');
model.component('mod1').probe.create('dom3', 'Domain');
model.component('mod1').probe.create('dom4', 'Domain');
model.component('mod1').probe.create('dom5', 'Domain');
model.component('mod1').probe.create('bnd1', 'Boundary');
model.component('mod1').probe.create('bnd2', 'Boundary');
model.component('mod1').probe('dom2').selection.set([7 8 9 10 12 13]);
model.component('mod1').probe('dom3').selection.set([7 8 9 10 12 13]);
model.component('mod1').probe('dom4').selection.set([7 8 9 10 12 13]);
model.component('mod1').probe('dom5').selection.set([7 8 9 10 12 13]);
model.component('mod1').probe('bnd1').selection.set([61 62 67 68 202 205 254 260]);
model.component('mod1').probe('bnd2').selection.set([63 64 71 72 203 207 246 256]);

model.component('mod1').variable('var1').label('Geometric properties');
model.component('mod1').variable('var2').label('Porous media properties');
model.component('mod1').variable('var3').label('Salt thermal-hydraulics properties');
model.component('mod1').variable('var4').label('fuel thermal properties');
model.component('mod1').variable('var_xsCRCC1').label('xs_rodCRCC1');
model.component('mod1').variable('var_xsCRCC2').label('xs_rodCRCC2');
model.component('mod1').variable('var_xsCRCC3').label('xs_rodCRCC3');
model.component('mod1').variable('var_xsCRCC4').label('xs_rodCRCC4');
model.component('mod1').variable('var_xsCRCC5').label('xs_rodCRCC5');
model.component('mod1').variable('var_xsCRCC6').label('xs_rodCRCC6');
model.component('mod1').variable('var_xsCRCC7').label('xs_rodCRCC7');
model.component('mod1').variable('var_xsCRCC8_1').label('xs_rodCRCC8_1');
model.component('mod1').variable('var_xsCRCC8_2').label('xs_rodCRCC8_2');
model.component('mod1').variable('fuel_xs_var1').label('XS_pb1');
model.component('mod1').variable('fuel_xs_var2').label('XS_pb2');
model.component('mod1').variable('fuel_xs_var3').label('XS_pb3');
model.component('mod1').variable('fuel_xs_var4').label('XS_pb4');
model.component('mod1').variable('fuel_xs_var5').label('XS_pb5');
model.component('mod1').variable('fuel_xs_var6').label('XS_pb6');
model.component('mod1').variable('var_xs_CR').label('xs_CR');
model.component('mod1').variable('var_xs_Blanket').label('xs_Blanket');
model.component('mod1').variable('var_xs_ORCC').label('xs_ORCC');
model.component('mod1').variable('var_xs_OR').label('xs_OR');
model.component('mod1').variable('var_xs_CB').label('xs_CB');
model.component('mod1').variable('var_xs_DC').label('xs_DC');
model.component('mod1').variable('var_xs_VS').label('xs_VS');
model.component('mod1').variable('var18').label('power');
model.component('mod1').variable('var19').active(false);
model.component('mod1').variable('var19').label('lambda');
model.component('mod1').variable('var_T_fuel').label('Variables');

model.view('view4').axis.set('xmin', -5.758706092834473);
model.view('view4').axis.set('xmax', 5.758706092834473);
model.view('view4').axis.set('ymin', 0.1503748893737793);
model.view('view4').axis.set('ymax', 5.994124889373779);
model.view('view4').axis.set('abstractviewlratio', -1.1285933256149292);
model.view('view4').axis.set('abstractviewrratio', 1.1285933256149292);
model.view('view4').axis.set('abstractviewbratio', -0.05000000074505806);
model.view('view4').axis.set('abstractviewtratio', 0.05000000074505806);
model.view('view4').axis.set('abstractviewxscale', 0.012149169109761715);
model.view('view4').axis.set('abstractviewyscale', 0.01214916817843914);

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
model.component('mod1').physics('br').prop('PhysicalModelProperty').set('IncludeGravity', true);
model.component('mod1').physics('br').prop('PhysicalModelProperty').set('UseReducedPressure', true);
model.component('mod1').physics('br').prop('TurbulenceModelProperty').set('TurbulenceModel', 'keps');
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
model.component('mod1').physics('br').feature('out3').set('p0', '-0.1*rhoL*g');
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
model.component('mod1').physics('ht_flibe').label('Heat Transfer - Flibe');
model.component('mod1').physics('ht_flibe').prop('ShapeProperty').set('boundaryFlux_temperature', false);
model.component('mod1').physics('ht_flibe').prop('ShapeProperty').set('valueType', 'complex');
model.component('mod1').physics('ht_flibe').prop('ConsistentStabilization').set('heatCrosswindDiffusion', false);
model.component('mod1').physics('ht_flibe').prop('ConsistentStabilization').set('glim', '0.01[K]/ht_flibe.helem');
model.component('mod1').physics('ht_flibe').prop('ConsistentStabilization').set('StreamlineDiffusionOldForm', true);
model.component('mod1').physics('ht_flibe').prop('RadiationProperty').set('fieldName', 'root.J');
model.component('mod1').physics('ht_flibe').feature('fluid1').set('k', {'0.6*'; '0'; '0'; '0'; '0.6*'; '0'; '0'; '0'; '0.6*'});
model.component('mod1').physics('ht_flibe').feature('fluid1').set('minput_strainreferencetemperature', 0);
model.component('mod1').physics('ht_flibe').feature('fluid1').label('Fluid');
model.component('mod1').physics('ht_flibe').feature('init1').set('Tinit', 'T0_flibe');
model.component('mod1').physics('ht_flibe').feature('init1').label('Initial Temperature');
model.component('mod1').physics('ht_flibe').feature('ins1').label('Thermal Insulation');
model.component('mod1').physics('ht_flibe').feature('temp1').set('T0', 'T_inlet');
model.component('mod1').physics('ht_flibe').feature('temp1').label('Inlet Temperature');
model.component('mod1').physics('ht_flibe').feature('hs1').set('Q0', 'h_conv*pb_area/fuel_v*T_fuel');
model.component('mod1').physics('ht_flibe').feature('hs1').label('heat transfer from fuel-cst term');
model.component('mod1').physics('ht_flibe').feature('hs2').set('heatSourceType', 'LinearSource');
model.component('mod1').physics('ht_flibe').feature('hs2').set('qs', '-h_conv*pb_area/fuel_v');
model.component('mod1').physics('ht_flibe').feature('hs2').label('heat transfer from fuel - linear term');
model.component('mod1').physics('ht_fuel').label('Heat Transfer in Fuel Pebble');
model.component('mod1').physics('ht_fuel').comments('fuel temperature');
model.component('mod1').physics('ht_fuel').prop('ConsistentStabilization').set('glim', '(0.01[K])/ht_fuel.helem');
model.component('mod1').physics('ht_fuel').feature('fluid1').label('overridden');
model.component('mod1').physics('ht_fuel').feature('init1').set('Tinit', 'T0_fuel');
model.component('mod1').physics('ht_fuel').feature('solid1').set('k', {'k_fuel'; '0'; '0'; '0'; 'k_fuel'; '0'; '0'; '0'; 'k_fuel'});
model.component('mod1').physics('ht_fuel').feature('solid1').set('rho', 'rho_fuel*(1-porosity)');
model.component('mod1').physics('ht_fuel').feature('solid1').set('Cp', 'cp_fuel');
model.component('mod1').physics('ht_fuel').feature('solid1').label('Heat Transfer in Solids(smeared fuel pebbles)');
model.component('mod1').physics('ht_fuel').feature('hs1').set('P0', '1E7');
model.component('mod1').physics('ht_fuel').feature('hs1').set('Q0', 'PdensityN');
model.component('mod1').physics('ht_fuel').feature('hs1').label('Nuclear heat generation');
model.component('mod1').physics('ht_fuel').feature('hs2').set('heatSourceType', 'LinearSource');
model.component('mod1').physics('ht_fuel').feature('hs2').set('qs', '-h_conv*pb_area/fuel_v');
model.component('mod1').physics('ht_fuel').feature('hs2').label('heat tranfer to flibe - linear term');
model.component('mod1').physics('ht_fuel').feature('hs3').set('Q0', 'h_conv*pb_area/fuel_v*T_flibe');
model.component('mod1').physics('ht_fuel').feature('hs3').label('heat transfer to flibe - cst term');
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

model.component('mod1').mesh('mesh1').feature('size').set('hauto', 7);
model.component('mod1').mesh('mesh1').feature('ftet2').feature('size1').set('hauto', 7);
model.component('mod1').mesh('mesh1').feature('ftet5').feature('size1').set('hauto', 7);
model.component('mod1').mesh('mesh1').run;

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
model.component('mod1').probe('bnd1').label('TL_out');
model.component('mod1').probe('bnd1').set('probename', 'TL_out');
model.component('mod1').probe('bnd1').set('expr', 'T_flibe');
model.component('mod1').probe('bnd1').set('unit', 'degC');
model.component('mod1').probe('bnd1').set('descr', 'Temperature');
model.component('mod1').probe('bnd2').label('TL_in');
model.component('mod1').probe('bnd2').set('expr', 'T_flibe');
model.component('mod1').probe('bnd2').set('unit', 'degC');
model.component('mod1').probe('bnd2').set('descr', 'Temperature');
model.component('mod1').probe('bnd2').set('window', 'window4');

model.component('mod1').physics('ht_flibe').feature('fluid1').set('minput_pressure_src', 'root.mod1.br.pA');
model.component('mod1').physics('ht_flibe').feature('fluid1').set('minput_velocity_src', 'root.mod1.u');
model.component('mod1').physics('ht_fuel').feature('solid1').set('k_mat', 'userdef');
model.component('mod1').physics('ht_fuel').feature('solid1').set('rho_mat', 'userdef');
model.component('mod1').physics('ht_fuel').feature('solid1').set('Cp_mat', 'userdef');

model.study.create('std2');
model.study('std2').create('eigv', 'Eigenvalue');
model.study('std2').feature('eigv').set('activate', {'br' 'off' 'ht_fuel' 'off' 'ht_flibe' 'off' 'neutrondiffusion' 'on'});
model.study.create('std5');
model.study('std5').create('stat', 'Stationary');
model.study('std5').feature('stat').set('activate', {'br' 'on' 'ht_fuel' 'on' 'ht_flibe' 'on' 'neutrondiffusion' 'off'});

model.sol.create('sol16');
model.sol('sol16').study('std2');
model.sol('sol16').attach('std2');
model.sol('sol16').create('st1', 'StudyStep');
model.sol('sol16').create('v1', 'Variables');
model.sol('sol16').create('e1', 'Eigenvalue');
model.sol.create('sol13');
model.sol('sol13').study('std5');
model.sol('sol13').attach('std5');
model.sol('sol13').create('st1', 'StudyStep');
model.sol('sol13').create('v1', 'Variables');
model.sol('sol13').create('s1', 'Stationary');
model.sol('sol13').feature('s1').create('fc1', 'FullyCoupled');
model.sol('sol13').feature('s1').create('d1', 'Direct');
model.sol('sol13').feature('s1').feature.remove('fcDef');

model.result.dataset.create('cpl1', 'CutPlane');
model.result.dataset.create('surf1', 'Surface');
model.result.dataset('surf1').set('data', 'dset2');
model.result.dataset('surf1').selection.set([39 40 41 42 61 62 67 68 191 192 202 205 254 260 264 272]);
model.result.numerical.create('int1', 'IntSurface');
model.result.numerical('int1').set('data', 'dset2');
model.result.numerical('int1').selection.set([107 108 118 123 130 139 147 151 158 167 225 238 290 294 305 312 326 330 335 341]);
model.result.numerical('int1').set('probetag', 'none');
model.result.create('pg101', 'PlotGroup2D');
model.result.create('pg102', 'PlotGroup2D');
model.result.create('pg103', 'PlotGroup2D');
model.result.create('pg104', 'PlotGroup2D');
model.result.create('pg105', 'PlotGroup2D');
model.result.create('pg106', 'PlotGroup2D');
model.result.create('pg107', 'PlotGroup2D');
model.result.create('pg108', 'PlotGroup2D');
model.result.create('pg109', 'PlotGroup2D');
model.result.create('pg110', 'PlotGroup1D');
model.result('pg101').create('surf1', 'Surface');
model.result('pg102').create('surf1', 'Surface');
model.result('pg103').create('surf1', 'Surface');
model.result('pg104').create('surf1', 'Surface');
model.result('pg105').create('surf1', 'Surface');
model.result('pg106').create('surf1', 'Surface');
model.result('pg107').create('surf1', 'Surface');
model.result('pg108').create('surf1', 'Surface');
model.result('pg109').create('str1', 'Streamline');
model.result('pg109').create('con1', 'Contour');
model.result('pg109').feature('str1').create('col1', 'Color');
model.result('pg110').create('hist1', 'Histogram');
model.result.export.create('data1', 'Data');
model.result.export.create('pg101', 'Image2D');
model.result.export.create('pg102', 'Image2D');
model.result.export.create('pg103', 'Image2D');
model.result.export.create('pg104', 'Image2D');
model.result.export.create('pg105', 'Image2D');
model.result.export.create('pg106', 'Image2D');
model.result.export.create('pg107', 'Image2D');
model.result.export.create('pg108', 'Image2D');
model.result.export.create('pg109', 'Image2D');
model.result.export.create('pg110', 'Image1D');

model.component('mod1').probe('dom1').genResult([]);
model.component('mod1').probe('dom2').genResult([]);
model.component('mod1').probe('dom3').genResult([]);
model.component('mod1').probe('dom4').genResult([]);
model.component('mod1').probe('dom5').genResult([]);
model.component('mod1').probe('bnd1').genResult([]);
model.component('mod1').probe('bnd2').genResult([]);

model.study('std2').label('Eigenvalue study');
model.study('std2').feature('eigv').set('neigs', 1);
model.study('std2').feature('eigv').set('shift', '0.8');
model.study('std2').feature('eigv').set('shiftactive', true);
model.study('std2').feature('eigv').set('eigwhich', 'sr');
model.study('std2').feature('eigv').set('useinitsol', true);
model.study('std2').feature('eigv').set('usesol', true);
model.study('std2').feature('eigv').set('notsolmethod', 'sol');
model.study('std2').feature('eigv').set('notstudy', 'std5');
model.study('std2').feature('eigv').set('notsolnum', 'auto');
model.study('std2').feature('eigv').set('neigsactive', false);
model.study('std5').label('Steady state study');

model.sol('sol16').attach('std2');
model.sol('sol16').feature('v1').set('notsolmethod', 'sol');
model.sol('sol16').feature('v1').set('notsol', 'sol13');
model.sol('sol16').feature('v1').set('notsolnum', 'auto');
model.sol('sol16').feature('e1').set('control', 'user');
model.sol('sol16').feature('e1').set('neigs', 1);
model.sol('sol16').feature('e1').set('shift', '0.8');
model.sol('sol16').feature('e1').set('maxeigit', 100);
model.sol('sol16').feature('e1').set('krylovdim', 10);
model.sol('sol16').feature('e1').set('keeplog', true);
model.sol('sol16').runAll;
model.sol('sol13').attach('std5');
model.sol('sol13').feature('v1').set('control', 'user');
model.sol('sol13').feature('v1').set('notsolmethod', 'sol');
model.sol('sol13').feature('v1').set('notsol', 'sol16');
model.sol('sol13').feature('v1').set('notsolnum', 'auto');
model.sol('sol13').feature('s1').feature('fc1').set('initstep', 0.01);
model.sol('sol13').feature('s1').feature('fc1').set('minstep', 1.0E-6);
model.sol('sol13').feature('s1').feature('fc1').set('maxiter', 500);
model.sol('sol13').runAll;

model.result.dataset.remove('dset3');
model.result.numerical('int1').label('center inlet mass flow rate');
model.result.numerical('int1').set('table', 'tbl2');
model.result.numerical('int1').set('expr', {'(u*nx+v*ny+w*nz)*rhoL'});
model.result.numerical('int1').set('unit', {'kg/s'});
model.result.numerical('int1').set('descr', {''});
model.result.numerical('int1').setResult;
model.result('pg101').label('T_flibe(steady state)');
model.result('pg101').feature('surf1').set('expr', 'T_flibe');
model.result('pg101').feature('surf1').set('unit', 'degC');
model.result('pg101').feature('surf1').set('descr', 'Temperature');
model.result('pg101').feature('surf1').set('resolution', 'normal');
model.result('pg102').label('T_fuel(steady state)');
model.result('pg102').feature('surf1').set('expr', 'T_fuel');
model.result('pg102').feature('surf1').set('unit', 'degC');
model.result('pg102').feature('surf1').set('descr', 'Temperature');
model.result('pg102').feature('surf1').set('resolution', 'normal');
model.result('pg103').label('T_fuel-T_flibe(steady state)');
model.result('pg103').feature('surf1').set('expr', 'T_fuel-T_flibe');
model.result('pg103').feature('surf1').set('unit', 'degC');
model.result('pg103').feature('surf1').set('descr', 'T_fuel-T_flibe');
model.result('pg103').feature('surf1').set('resolution', 'normal');
model.result('pg104').label('Pdensity(steady state)(W/m3)');
model.result('pg104').feature('surf1').set('expr', 'Pdensity');
model.result('pg104').feature('surf1').set('unit', 'W/m^3');
model.result('pg104').feature('surf1').set('descr', 'power density');
model.result('pg104').feature('surf1').set('resolution', 'normal');
model.result('pg105').label('fast flux(steady state)');
model.result('pg105').feature('surf1').set('expr', 'Flux1+Flux2+Flux3+Flux4');
model.result('pg105').feature('surf1').set('unit', '1/(m^2*s)');
model.result('pg105').feature('surf1').set('descr', 'Flux1+Flux2+Flux3+Flux4');
model.result('pg105').feature('surf1').set('resolution', 'normal');
model.result('pg106').label('thermal flux(steady state)');
model.result('pg106').feature('surf1').set('expr', 'Flux5+Flux6+Flux7+Flux8');
model.result('pg106').feature('surf1').set('unit', '1/(m^2*s)');
model.result('pg106').feature('surf1').set('descr', 'Flux5+Flux6+Flux7+Flux8');
model.result('pg106').feature('surf1').set('resolution', 'normal');
model.result('pg107').label('h_conv');
model.result('pg107').feature('surf1').set('expr', 'h_conv');
model.result('pg107').feature('surf1').set('unit', 'W/(m^2*K)');
model.result('pg107').feature('surf1').set('descr', '(2+1.1*Pr^(1/3)*(rhoL*d*br.U/muL)^0.6)*kL/d');
model.result('pg107').feature('surf1').set('titletype', 'manual');
model.result('pg107').feature('surf1').set('title', 'hconv(wakao)(W/m2.K)');
model.result('pg107').feature('surf1').set('resolution', 'normal');
model.result('pg108').label('Re');
model.result('pg108').feature('surf1').set('expr', 'rhoL*d*br.U/muL');
model.result('pg108').feature('surf1').set('unit', '1');
model.result('pg108').feature('surf1').set('descr', 'Re');
model.result('pg108').feature('surf1').set('titletype', 'manual');
model.result('pg108').feature('surf1').set('title', 'Re');
model.result('pg108').feature('surf1').set('resolution', 'normal');
model.result('pg109').label('Flow field');
model.result('pg109').set('titletype', 'manual');
model.result('pg109').set('title', 'Streamline: Velocity field and Contour: Pressure(mFlibe)');
model.result('pg109').feature('str1').set('planecoordsys', 'cartesian');
model.result('pg109').feature('str1').set('showzexpr', true);
model.result('pg109').feature('str1').set('expr', {'u' 'v' 'w'});
model.result('pg109').feature('str1').set('posmethod', 'magnitude');
model.result('pg109').feature('str1').set('resolution', 'normal');
model.result('pg109').feature('con1').set('expr', 'p/1900/9.81');
model.result('pg109').feature('con1').set('unit', 'Pa');
model.result('pg109').feature('con1').set('descr', 'p/1900/9.81');
model.result('pg109').feature('con1').set('number', 50);
model.result('pg109').feature('con1').set('coloring', 'uniform');
model.result('pg109').feature('con1').set('color', 'black');
model.result('pg109').feature('con1').set('resolution', 'normal');
model.result('pg110').set('data', 'surf1');
model.result('pg110').set('xlabel', 'Temperature (degC)');
model.result('pg110').set('ylabel', 'Relative area');
model.result('pg110').set('xlabelactive', false);
model.result('pg110').set('ylabelactive', false);
model.result('pg110').feature('hist1').set('expr', 'T_flibe');
model.result('pg110').feature('hist1').set('unit', 'degC');
model.result('pg110').feature('hist1').set('descr', 'Temperature');
model.result('pg110').feature('hist1').set('number', 50);
model.result('pg110').feature('hist1').set('function', 'discrete');
model.result('pg110').feature('hist1').set('normalization', 'integral');
model.result('pg110').feature('hist1').set('resolution', 'normal');
model.result.remove('pg111');
model.result.remove('pg112');
model.result.remove('pg113');
model.result.remove('pg114');
model.result.export('data1').set('data', 'cpl1');
model.result.export('data1').set('expr', {'PdensityN' 'Flux2' 'Flux3' 'Flux4' 'Flux5' 'Flux6' 'Flux7' 'Flux8' 'Conc1' 'Conc2'  ...
'Conc3' 'Conc4' 'Conc5' 'Conc6'});
model.result.export('data1').set('unit', {'W/m^3' '1/(m^2*s)' '1/(m^2*s)' '1/(m^2*s)' '1/(m^2*s)' '1/(m^2*s)' '1/(m^2*s)' '1/(m^2*s)' '1/(m^2*s)' '1/(m^2*s)'  ...
'1/(m^2*s)' '1/(m^2*s)' '1/(m^2*s)' '1/(m^2*s)'});
model.result.export('data1').set('descr', {'' '' '' '' '' '' '' '' '' ''  ...
'' '' '' ''});
model.result.export('data1').set('filename', '1st_eig_power_mesh.txt');
model.result.export('data1').set('location', 'grid');
model.result.export('data1').set('gridx2', 'range(2.5[cm], 5[cm],175.5[cm])');
model.result.export('data1').set('gridy2', 'range(48[cm],14[cm],566[cm])');
model.result.export('pg101').label('T_flibe(steady state)');
model.result.export('pg101').set('size', 'manualprint');
model.result.export('pg101').set('sizedesc', '1417 x 1063 px');
model.result.export('pg101').set('pngfilename', 'T_flibe(steady state)');
model.result.export('pg101').set('options', true);
model.result.export('pg101').set('logo', false);
model.result.export('pg101').set('background', 'current');
model.result.export('pg101').set('printunit', 'mm');
model.result.export('pg101').set('webunit', 'px');
model.result.export('pg101').set('printheight', '90');
model.result.export('pg101').set('webheight', '600');
model.result.export('pg101').set('printwidth', '120');
model.result.export('pg101').set('webwidth', '800');
model.result.export('pg101').set('printlockratio', 'off');
model.result.export('pg101').set('weblockratio', 'off');
model.result.export('pg101').set('printresolution', '300');
model.result.export('pg101').set('webresolution', '96');
model.result.export('pg101').set('size', 'manualprint');
model.result.export('pg101').set('antialias', 'on');
model.result.export('pg101').set('zoomextents', 'off');
model.result.export('pg101').set('title', 'on');
model.result.export('pg101').set('legend', 'on');
model.result.export('pg101').set('logo', 'off');
model.result.export('pg101').set('options', 'on');
model.result.export('pg101').set('fontsize', '9');
model.result.export('pg101').set('customcolor', [1 1 1]);
model.result.export('pg101').set('background', 'current');
model.result.export('pg101').set('axes', 'on');
model.result.export('pg101').set('qualitylevel', '92');
model.result.export('pg101').set('qualityactive', 'off');
model.result.export('pg101').set('imagetype', 'png');
model.result.export('pg102').label('T_fuel(steady state)');
model.result.export('pg102').set('plotgroup', 'pg102');
model.result.export('pg102').set('size', 'manualprint');
model.result.export('pg102').set('sizedesc', '1417 x 1063 px');
model.result.export('pg102').set('pngfilename', 'T_fuel(steady state)');
model.result.export('pg102').set('options', true);
model.result.export('pg102').set('logo', false);
model.result.export('pg102').set('background', 'current');
model.result.export('pg102').set('printunit', 'mm');
model.result.export('pg102').set('webunit', 'px');
model.result.export('pg102').set('printheight', '90');
model.result.export('pg102').set('webheight', '600');
model.result.export('pg102').set('printwidth', '120');
model.result.export('pg102').set('webwidth', '800');
model.result.export('pg102').set('printlockratio', 'off');
model.result.export('pg102').set('weblockratio', 'off');
model.result.export('pg102').set('printresolution', '300');
model.result.export('pg102').set('webresolution', '96');
model.result.export('pg102').set('size', 'manualprint');
model.result.export('pg102').set('antialias', 'on');
model.result.export('pg102').set('zoomextents', 'off');
model.result.export('pg102').set('title', 'on');
model.result.export('pg102').set('legend', 'on');
model.result.export('pg102').set('logo', 'off');
model.result.export('pg102').set('options', 'on');
model.result.export('pg102').set('fontsize', '9');
model.result.export('pg102').set('customcolor', [1 1 1]);
model.result.export('pg102').set('background', 'current');
model.result.export('pg102').set('axes', 'on');
model.result.export('pg102').set('qualitylevel', '92');
model.result.export('pg102').set('qualityactive', 'off');
model.result.export('pg102').set('imagetype', 'png');
model.result.export('pg103').label('T_fuel-T_flibe(steady state)');
model.result.export('pg103').set('plotgroup', 'pg103');
model.result.export('pg103').set('size', 'manualprint');
model.result.export('pg103').set('sizedesc', '1417 x 1063 px');
model.result.export('pg103').set('pngfilename', 'T_fuel-T_flibe(steady state)');
model.result.export('pg103').set('options', true);
model.result.export('pg103').set('logo', false);
model.result.export('pg103').set('background', 'current');
model.result.export('pg103').set('printunit', 'mm');
model.result.export('pg103').set('webunit', 'px');
model.result.export('pg103').set('printheight', '90');
model.result.export('pg103').set('webheight', '600');
model.result.export('pg103').set('printwidth', '120');
model.result.export('pg103').set('webwidth', '800');
model.result.export('pg103').set('printlockratio', 'off');
model.result.export('pg103').set('weblockratio', 'off');
model.result.export('pg103').set('printresolution', '300');
model.result.export('pg103').set('webresolution', '96');
model.result.export('pg103').set('size', 'manualprint');
model.result.export('pg103').set('antialias', 'on');
model.result.export('pg103').set('zoomextents', 'off');
model.result.export('pg103').set('title', 'on');
model.result.export('pg103').set('legend', 'on');
model.result.export('pg103').set('logo', 'off');
model.result.export('pg103').set('options', 'on');
model.result.export('pg103').set('fontsize', '9');
model.result.export('pg103').set('customcolor', [1 1 1]);
model.result.export('pg103').set('background', 'current');
model.result.export('pg103').set('axes', 'on');
model.result.export('pg103').set('qualitylevel', '92');
model.result.export('pg103').set('qualityactive', 'off');
model.result.export('pg103').set('imagetype', 'png');
model.result.export('pg104').label('Pdensity(steady state)(W/m3)');
model.result.export('pg104').set('plotgroup', 'pg104');
model.result.export('pg104').set('size', 'manualprint');
model.result.export('pg104').set('sizedesc', '1417 x 1063 px');
model.result.export('pg104').set('pngfilename', 'Pdensity(steady state)(W/m3)');
model.result.export('pg104').set('options', true);
model.result.export('pg104').set('logo', false);
model.result.export('pg104').set('background', 'current');
model.result.export('pg104').set('printunit', 'mm');
model.result.export('pg104').set('webunit', 'px');
model.result.export('pg104').set('printheight', '90');
model.result.export('pg104').set('webheight', '600');
model.result.export('pg104').set('printwidth', '120');
model.result.export('pg104').set('webwidth', '800');
model.result.export('pg104').set('printlockratio', 'off');
model.result.export('pg104').set('weblockratio', 'off');
model.result.export('pg104').set('printresolution', '300');
model.result.export('pg104').set('webresolution', '96');
model.result.export('pg104').set('size', 'manualprint');
model.result.export('pg104').set('antialias', 'on');
model.result.export('pg104').set('zoomextents', 'off');
model.result.export('pg104').set('title', 'on');
model.result.export('pg104').set('legend', 'on');
model.result.export('pg104').set('logo', 'off');
model.result.export('pg104').set('options', 'on');
model.result.export('pg104').set('fontsize', '9');
model.result.export('pg104').set('customcolor', [1 1 1]);
model.result.export('pg104').set('background', 'current');
model.result.export('pg104').set('axes', 'on');
model.result.export('pg104').set('qualitylevel', '92');
model.result.export('pg104').set('qualityactive', 'off');
model.result.export('pg104').set('imagetype', 'png');
model.result.export('pg105').label('fast flux(steady state)');
model.result.export('pg105').set('plotgroup', 'pg105');
model.result.export('pg105').set('size', 'manualprint');
model.result.export('pg105').set('sizedesc', '1417 x 1063 px');
model.result.export('pg105').set('pngfilename', 'fast flux(steady state)');
model.result.export('pg105').set('options', true);
model.result.export('pg105').set('logo', false);
model.result.export('pg105').set('background', 'current');
model.result.export('pg105').set('printunit', 'mm');
model.result.export('pg105').set('webunit', 'px');
model.result.export('pg105').set('printheight', '90');
model.result.export('pg105').set('webheight', '600');
model.result.export('pg105').set('printwidth', '120');
model.result.export('pg105').set('webwidth', '800');
model.result.export('pg105').set('printlockratio', 'off');
model.result.export('pg105').set('weblockratio', 'off');
model.result.export('pg105').set('printresolution', '300');
model.result.export('pg105').set('webresolution', '96');
model.result.export('pg105').set('size', 'manualprint');
model.result.export('pg105').set('antialias', 'on');
model.result.export('pg105').set('zoomextents', 'off');
model.result.export('pg105').set('title', 'on');
model.result.export('pg105').set('legend', 'on');
model.result.export('pg105').set('logo', 'off');
model.result.export('pg105').set('options', 'on');
model.result.export('pg105').set('fontsize', '9');
model.result.export('pg105').set('customcolor', [1 1 1]);
model.result.export('pg105').set('background', 'current');
model.result.export('pg105').set('axes', 'on');
model.result.export('pg105').set('qualitylevel', '92');
model.result.export('pg105').set('qualityactive', 'off');
model.result.export('pg105').set('imagetype', 'png');
model.result.export('pg106').label('thermal flux(steady state)');
model.result.export('pg106').set('plotgroup', 'pg106');
model.result.export('pg106').set('size', 'manualprint');
model.result.export('pg106').set('sizedesc', '1417 x 1063 px');
model.result.export('pg106').set('pngfilename', 'thermal flux(steady state)');
model.result.export('pg106').set('options', true);
model.result.export('pg106').set('logo', false);
model.result.export('pg106').set('background', 'current');
model.result.export('pg106').set('printunit', 'mm');
model.result.export('pg106').set('webunit', 'px');
model.result.export('pg106').set('printheight', '90');
model.result.export('pg106').set('webheight', '600');
model.result.export('pg106').set('printwidth', '120');
model.result.export('pg106').set('webwidth', '800');
model.result.export('pg106').set('printlockratio', 'off');
model.result.export('pg106').set('weblockratio', 'off');
model.result.export('pg106').set('printresolution', '300');
model.result.export('pg106').set('webresolution', '96');
model.result.export('pg106').set('size', 'manualprint');
model.result.export('pg106').set('antialias', 'on');
model.result.export('pg106').set('zoomextents', 'off');
model.result.export('pg106').set('title', 'on');
model.result.export('pg106').set('legend', 'on');
model.result.export('pg106').set('logo', 'off');
model.result.export('pg106').set('options', 'on');
model.result.export('pg106').set('fontsize', '9');
model.result.export('pg106').set('customcolor', [1 1 1]);
model.result.export('pg106').set('background', 'current');
model.result.export('pg106').set('axes', 'on');
model.result.export('pg106').set('qualitylevel', '92');
model.result.export('pg106').set('qualityactive', 'off');
model.result.export('pg106').set('imagetype', 'png');
model.result.export('pg107').label('h_conv');
model.result.export('pg107').set('plotgroup', 'pg107');
model.result.export('pg107').set('size', 'manualprint');
model.result.export('pg107').set('sizedesc', '1417 x 1063 px');
model.result.export('pg107').set('pngfilename', 'h_conv');
model.result.export('pg107').set('options', true);
model.result.export('pg107').set('logo', false);
model.result.export('pg107').set('background', 'current');
model.result.export('pg107').set('printunit', 'mm');
model.result.export('pg107').set('webunit', 'px');
model.result.export('pg107').set('printheight', '90');
model.result.export('pg107').set('webheight', '600');
model.result.export('pg107').set('printwidth', '120');
model.result.export('pg107').set('webwidth', '800');
model.result.export('pg107').set('printlockratio', 'off');
model.result.export('pg107').set('weblockratio', 'off');
model.result.export('pg107').set('printresolution', '300');
model.result.export('pg107').set('webresolution', '96');
model.result.export('pg107').set('size', 'manualprint');
model.result.export('pg107').set('antialias', 'on');
model.result.export('pg107').set('zoomextents', 'off');
model.result.export('pg107').set('title', 'on');
model.result.export('pg107').set('legend', 'on');
model.result.export('pg107').set('logo', 'off');
model.result.export('pg107').set('options', 'on');
model.result.export('pg107').set('fontsize', '9');
model.result.export('pg107').set('customcolor', [1 1 1]);
model.result.export('pg107').set('background', 'current');
model.result.export('pg107').set('axes', 'on');
model.result.export('pg107').set('qualitylevel', '92');
model.result.export('pg107').set('qualityactive', 'off');
model.result.export('pg107').set('imagetype', 'png');
model.result.export('pg108').label('Re');
model.result.export('pg108').set('plotgroup', 'pg108');
model.result.export('pg108').set('size', 'manualprint');
model.result.export('pg108').set('sizedesc', '1417 x 1063 px');
model.result.export('pg108').set('pngfilename', 'Re');
model.result.export('pg108').set('options', true);
model.result.export('pg108').set('logo', false);
model.result.export('pg108').set('background', 'current');
model.result.export('pg108').set('printunit', 'mm');
model.result.export('pg108').set('webunit', 'px');
model.result.export('pg108').set('printheight', '90');
model.result.export('pg108').set('webheight', '600');
model.result.export('pg108').set('printwidth', '120');
model.result.export('pg108').set('webwidth', '800');
model.result.export('pg108').set('printlockratio', 'off');
model.result.export('pg108').set('weblockratio', 'off');
model.result.export('pg108').set('printresolution', '300');
model.result.export('pg108').set('webresolution', '96');
model.result.export('pg108').set('size', 'manualprint');
model.result.export('pg108').set('antialias', 'on');
model.result.export('pg108').set('zoomextents', 'off');
model.result.export('pg108').set('title', 'on');
model.result.export('pg108').set('legend', 'on');
model.result.export('pg108').set('logo', 'off');
model.result.export('pg108').set('options', 'on');
model.result.export('pg108').set('fontsize', '9');
model.result.export('pg108').set('customcolor', [1 1 1]);
model.result.export('pg108').set('background', 'current');
model.result.export('pg108').set('axes', 'on');
model.result.export('pg108').set('qualitylevel', '92');
model.result.export('pg108').set('qualityactive', 'off');
model.result.export('pg108').set('imagetype', 'png');
model.result.export('pg109').label('Flowfield');
model.result.export('pg109').set('plotgroup', 'pg109');
model.result.export('pg109').set('size', 'manualprint');
model.result.export('pg109').set('sizedesc', '1417 x 1063 px');
model.result.export('pg109').set('pngfilename', 'steamlines');
model.result.export('pg109').set('options', true);
model.result.export('pg109').set('logo', false);
model.result.export('pg109').set('background', 'current');
model.result.export('pg109').set('printunit', 'mm');
model.result.export('pg109').set('webunit', 'px');
model.result.export('pg109').set('printheight', '90');
model.result.export('pg109').set('webheight', '600');
model.result.export('pg109').set('printwidth', '120');
model.result.export('pg109').set('webwidth', '800');
model.result.export('pg109').set('printlockratio', 'off');
model.result.export('pg109').set('weblockratio', 'off');
model.result.export('pg109').set('printresolution', '300');
model.result.export('pg109').set('webresolution', '96');
model.result.export('pg109').set('size', 'manualprint');
model.result.export('pg109').set('antialias', 'on');
model.result.export('pg109').set('zoomextents', 'off');
model.result.export('pg109').set('title', 'on');
model.result.export('pg109').set('legend', 'on');
model.result.export('pg109').set('logo', 'off');
model.result.export('pg109').set('options', 'on');
model.result.export('pg109').set('fontsize', '9');
model.result.export('pg109').set('customcolor', [1 1 1]);
model.result.export('pg109').set('background', 'current');
model.result.export('pg109').set('axes', 'on');
model.result.export('pg109').set('qualitylevel', '92');
model.result.export('pg109').set('qualityactive', 'off');
model.result.export('pg109').set('imagetype', 'png');
model.result.export('pg110').label('hist');
model.result.export('pg110').set('size', 'manualprint');
model.result.export('pg110').set('sizedesc', '1417 x 1063 px');
model.result.export('pg110').set('pngfilename', 'hist');
model.result.export('pg110').set('logo', false);
model.result.export('pg110').set('background', 'current');
model.result.export('pg110').set('printunit', 'mm');
model.result.export('pg110').set('webunit', 'px');
model.result.export('pg110').set('printheight', '90');
model.result.export('pg110').set('webheight', '600');
model.result.export('pg110').set('printwidth', '120');
model.result.export('pg110').set('webwidth', '800');
model.result.export('pg110').set('printlockratio', 'off');
model.result.export('pg110').set('weblockratio', 'off');
model.result.export('pg110').set('printresolution', '300');
model.result.export('pg110').set('webresolution', '96');
model.result.export('pg110').set('size', 'manualprint');
model.result.export('pg110').set('antialias', 'on');
model.result.export('pg110').set('zoomextents', 'off');
model.result.export('pg110').set('title', 'on');
model.result.export('pg110').set('legend', 'on');
model.result.export('pg110').set('logo', 'off');
model.result.export('pg110').set('options', 'on');
model.result.export('pg110').set('fontsize', '9');
model.result.export('pg110').set('customcolor', [1 1 1]);
model.result.export('pg110').set('background', 'current');
model.result.export('pg110').set('axes', 'on');
model.result.export('pg110').set('showgrid', 'on');
model.result.export('pg110').set('qualitylevel', '92');
model.result.export('pg110').set('qualityactive', 'off');
model.result.export('pg110').set('imagetype', 'png');

out = model;
