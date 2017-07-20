function out = model
%
% mkI_3d_test.m
%
% Model exported on Jul 19 2017, 14:30 by COMSOL 5.2.1.229.

import com.comsol.model.*
import com.comsol.model.util.*

model = ModelUtil.create('Model');

model.modelPath('D:\diffusion_models\model\m_files\MK1');

model.label('mkI_3d_test.mph');

model.comments(['Untitled\n\n']);

model.modelNode.create('comp1');

model.geom.create('geom1', 3);

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
model.geom('geom1').feature('wp1').geom.feature('pol2').set('filename', 'D:\diffusion_models\model\m_files\MK1\fuel.txt');
model.geom('geom1').feature('wp1').geom.feature('pol2').set('source', 'file');
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
model.geom('geom1').feature('wp2').set('unite', 'on');
model.geom('geom1').feature('wp2').set('quickz', '0.416');
model.geom('geom1').feature('wp2').geom.create('c1', 'Circle');
model.geom('geom1').feature('wp2').geom.feature('c1').set('r', '0.05');
model.geom('geom1').feature('wp2').geom.feature('c1').set('selresult', 'on');
model.geom('geom1').feature('wp2').geom.feature('c1').set('pos', {'0.275' '0'});
model.geom('geom1').feature('wp2').geom.create('c2', 'Circle');
model.geom('geom1').feature('wp2').geom.feature('c2').set('r', '0.05');
model.geom('geom1').feature('wp2').geom.feature('c2').set('selresult', 'on');
model.geom('geom1').feature('wp2').geom.feature('c2').set('pos', {'-0.275' '0'});
model.geom('geom1').feature('wp2').geom.create('c3', 'Circle');
model.geom('geom1').feature('wp2').geom.feature('c3').set('r', '0.05');
model.geom('geom1').feature('wp2').geom.feature('c3').set('selresult', 'on');
model.geom('geom1').feature('wp2').geom.feature('c3').set('pos', {'0' '-0.275'});
model.geom('geom1').feature('wp2').geom.create('c4', 'Circle');
model.geom('geom1').feature('wp2').geom.feature('c4').set('r', '0.05');
model.geom('geom1').feature('wp2').geom.feature('c4').set('selresult', 'on');
model.geom('geom1').feature('wp2').geom.feature('c4').set('pos', {'0' '0.275'});
model.geom('geom1').feature('wp2').geom.create('c5', 'Circle');
model.geom('geom1').feature('wp2').geom.feature('c5').set('r', '0.05');
model.geom('geom1').feature('wp2').geom.feature('c5').set('selresult', 'on');
model.geom('geom1').feature('wp2').geom.feature('c5').set('pos', {'-0.19445436' '0.19445436'});
model.geom('geom1').feature('wp2').geom.create('c6', 'Circle');
model.geom('geom1').feature('wp2').geom.feature('c6').set('r', '0.05');
model.geom('geom1').feature('wp2').geom.feature('c6').set('selresult', 'on');
model.geom('geom1').feature('wp2').geom.feature('c6').set('pos', {'0.19445436' '0.19445436'});
model.geom('geom1').feature('wp2').geom.create('c7', 'Circle');
model.geom('geom1').feature('wp2').geom.feature('c7').set('r', '0.05');
model.geom('geom1').feature('wp2').geom.feature('c7').set('selresult', 'on');
model.geom('geom1').feature('wp2').geom.feature('c7').set('pos', {'-0.19445436' '-0.19445436'});
model.geom('geom1').feature('wp2').geom.create('c8', 'Circle');
model.geom('geom1').feature('wp2').geom.feature('c8').set('r', '0.05');
model.geom('geom1').feature('wp2').geom.feature('c8').set('selresult', 'on');
model.geom('geom1').feature('wp2').geom.feature('c8').set('pos', {'0.19445436' '-0.19445436'});
model.geom('geom1').create('ext1', 'Extrude');
model.geom('geom1').feature('ext1').label('contro_rod_channels');
model.geom('geom1').feature('ext1').setIndex('distance', '5.7285-0.416', 0);
model.geom('geom1').feature('ext1').selection('input').set({'wp2'});
model.geom('geom1').run;

model.material.create('mat1', 'Common', 'comp1');
model.material('mat1').selection.set([1 3]);
model.material('mat1').propertyGroup.create('Enu', 'Young''s modulus and Poisson''s ratio');
model.material('mat1').propertyGroup.create('Murnaghan', 'Murnaghan');
model.material('mat1').propertyGroup.create('Lame', ['Lam' native2unicode(hex2dec({'00' 'e9'}), 'unicode') ' parameters']);

model.physics.create('ht', 'PorousMediaHeat', 'geom1');

model.view('view1').set('scenelight', 'off');
model.view('view1').set('transparency', 'on');
model.view('view1').set('renderwireframe', true);
model.view('view2').axis.set('abstractviewrratio', '1.8672831058502197');
model.view('view2').axis.set('abstractviewlratio', '-2.436980724334717');
model.view('view2').axis.set('abstractviewxscale', '0.013590116985142231');
model.view('view2').axis.set('abstractviewbratio', '-0.05000000074505806');
model.view('view2').axis.set('xmax', '4.211813449859619');
model.view('view2').axis.set('xmin', '-3.1894071102142334');
model.view('view2').axis.set('abstractviewyscale', '0.013590116053819656');
model.view('view2').axis.set('ymax', '5.8613128662109375');
model.view('view2').axis.set('ymin', '0.2831871509552002');
model.view('view2').axis.set('abstractviewtratio', '0.05000000074505806');
model.view('view3').axis.set('abstractviewxscale', '0.009486828930675983');
model.view('view3').axis.set('abstractviewtratio', '0.05000000819563866');
model.view('view3').axis.set('abstractviewlratio', '-0.2284146547317505');
model.view('view3').axis.set('abstractviewyscale', '0.009486828930675983');
model.view('view3').axis.set('abstractviewrratio', '0.2284146547317505');
model.view('view3').axis.set('abstractviewbratio', '-0.05000000819563866');
model.view('view3').axis.set('ymax', '1.9447999000549316');
model.view('view3').axis.set('xmax', '2.575674057006836');
model.view('view3').axis.set('ymin', '-1.9447999000549316');
model.view('view3').axis.set('xmin', '-2.575674057006836');

model.material('mat1').label('Structural steel');
model.material('mat1').set('roughness', '0.3');
model.material('mat1').set('noisefreq', '1');
model.material('mat1').set('diffuse', 'custom');
model.material('mat1').set('customdiffuse', {'0.6666666666666666' '0.6666666666666666' '0.6666666666666666'});
model.material('mat1').set('specular', 'custom');
model.material('mat1').set('customspecular', {'0.7843137254901961' '0.7843137254901961' '0.7843137254901961'});
model.material('mat1').set('noise', 'on');
model.material('mat1').set('lighting', 'cooktorrance');
model.material('mat1').set('fresnel', '0.9');
model.material('mat1').set('ambient', 'custom');
model.material('mat1').set('family', 'custom');
model.material('mat1').set('customambient', {'0.6666666666666666' '0.6666666666666666' '0.6666666666666666'});
model.material('mat1').set('roughness', '0.3');
model.material('mat1').set('customdiffuse', {'0.6666666666666666' '0.6666666666666666' '0.6666666666666666'});
model.material('mat1').set('customspecular', {'0.7843137254901961' '0.7843137254901961' '0.7843137254901961'});
model.material('mat1').set('lighting', 'cooktorrance');
model.material('mat1').set('fresnel', '0.9');
model.material('mat1').propertyGroup('def').set('relpermeability', {'1' '0' '0' '0' '1' '0' '0' '0' '1'});
model.material('mat1').propertyGroup('def').set('heatcapacity', '475[J/(kg*K)]');
model.material('mat1').propertyGroup('def').set('thermalconductivity', {'44.5[W/(m*K)]' '0' '0' '0' '44.5[W/(m*K)]' '0' '0' '0' '44.5[W/(m*K)]'});
model.material('mat1').propertyGroup('def').set('electricconductivity', {'4.032e6[S/m]' '0' '0' '0' '4.032e6[S/m]' '0' '0' '0' '4.032e6[S/m]'});
model.material('mat1').propertyGroup('def').set('relpermittivity', {'1' '0' '0' '0' '1' '0' '0' '0' '1'});
model.material('mat1').propertyGroup('def').set('thermalexpansioncoefficient', {'12.3e-6[1/K]' '0' '0' '0' '12.3e-6[1/K]' '0' '0' '0' '12.3e-6[1/K]'});
model.material('mat1').propertyGroup('def').set('density', '7850[kg/m^3]');
model.material('mat1').propertyGroup('Enu').set('youngsmodulus', '200e9[Pa]');
model.material('mat1').propertyGroup('Enu').set('poissonsratio', '0.30');
model.material('mat1').propertyGroup('Murnaghan').set('l', '');
model.material('mat1').propertyGroup('Murnaghan').set('m', '');
model.material('mat1').propertyGroup('Murnaghan').set('n', '');
model.material('mat1').propertyGroup('Murnaghan').set('l', '-3.0e11[Pa]');
model.material('mat1').propertyGroup('Murnaghan').set('m', '-6.2e11[Pa]');
model.material('mat1').propertyGroup('Murnaghan').set('n', '-7.2e11[Pa]');
model.material('mat1').propertyGroup('Lame').set('lambLame', '');
model.material('mat1').propertyGroup('Lame').set('muLame', '');
model.material('mat1').propertyGroup('Lame').set('lambLame', '1.15e11[Pa]');
model.material('mat1').propertyGroup('Lame').set('muLame', '7.69e10[Pa]');

model.mesh('mesh1').run;

model.study.create('std1');

out = model;
