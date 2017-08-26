%create MK1 geometry in 3D
model.geom.create('geom1', 3);

model.mesh.create('mesh1', 'geom1');
model.mesh('mesh1').autoMeshSize(7); % coarser

model.geom('geom1').create('wp1', 'WorkPlane');
model.geom('geom1').feature('wp1').set('quickplane', 'xz');
model.geom('geom1').feature('wp1').set('unite', 'on');
model.geom('geom1').feature('wp1').geom.create('pol1', 'Polygon');

% center ref
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

%fuel
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

%blanket
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

%outer ref
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

% core barrel
model.geom('geom1').feature('wp1').geom.create('r1', 'Rectangle');
model.geom('geom1').feature('wp1').geom.feature('r1').label('core_barrel');
model.geom('geom1').feature('wp1').geom.feature('r1').set('size', {'0.03' '5.7285-0.416'});
model.geom('geom1').feature('wp1').geom.feature('r1').set('pos', {'1.65' '0.416'});
model.geom('geom1').feature('wp1').geom.create('r2', 'Rectangle');

%downcomer
model.geom('geom1').feature('wp1').geom.feature('r2').label('downcomer');
model.geom('geom1').feature('wp1').geom.feature('r2').set('size', {'0.028' '5.7285-0.416'});
model.geom('geom1').feature('wp1').geom.feature('r2').set('pos', {'1.68' '0.416'});

%vessel
model.geom('geom1').feature('wp1').geom.create('r3', 'Rectangle');
model.geom('geom1').feature('wp1').geom.feature('r3').label('vessel');
model.geom('geom1').feature('wp1').geom.feature('r3').set('size', {'0.06' '5.7285-0.416'});
model.geom('geom1').feature('wp1').geom.feature('r3').set('pos', {'1.708' '0.416'});

% %inlet 1
% model.geom('geom1').feature('wp1').geom.create('r4', 'Rectangle');
% model.geom('geom1').feature('wp1').geom.feature('r4').label('inlet');
% model.geom('geom1').feature('wp1').geom.feature('r4').set('size', {'0.01' '1'});
% model.geom('geom1').feature('wp1').geom.feature('r4').set('pos', {'0.35-0.01' '1.5'});
% model.geom('geom1').feature('wp1').geom.feature('r4').active(false);
model.geom('geom1').feature('wp1').geom.create('ic1', 'InterpolationCurve');
model.geom('geom1').feature('wp1').geom.feature('ic1').setIndex('table', '0.35', 0, 0);
model.geom('geom1').feature('wp1').geom.feature('ic1').setIndex('table', '1.5', 0, 1);
model.geom('geom1').feature('wp1').geom.feature('ic1').setIndex('table', '0.35', 1, 0);
model.geom('geom1').feature('wp1').geom.feature('ic1').setIndex('table', '2.5', 1, 1);
model.geom('geom1').feature('wp1').geom.run('ic1');

% outlet low
% model.geom('geom1').feature('wp1').geom.create('r5', 'Rectangle');
% model.geom('geom1').feature('wp1').geom.feature('r5').label('outlet_low');
% model.geom('geom1').feature('wp1').geom.feature('r5').set('size', {'0.05' '0.5'});
% model.geom('geom1').feature('wp1').geom.feature('r5').set('pos', {'1.25' '4.305-0.5'});
% model.geom('geom1').feature('wp1').geom.feature('r5').active(false);

% outlet high
% model.geom('geom1').feature('wp1').geom.create('pol5', 'Polygon');
% model.geom('geom1').feature('wp1').geom.feature('pol5').label('outlet_high');
% model.geom('geom1').feature('wp1').geom.feature('pol5').set('source', 'table');
% model.geom('geom1').feature('wp1').geom.feature('pol5').set('table', {'0.89' '4.9285'; '1.25' '4.305'; '1.3' '4.305'; '0.94' '4.9285'});
% model.geom('geom1').feature('wp1').geom.feature('pol5').active(false);

%ORCC
model.geom('geom1').feature('wp1').geom.create('pol6', 'Polygon');
model.geom('geom1').feature('wp1').geom.feature('pol6').label('ORCC');
model.geom('geom1').feature('wp1').geom.feature('pol6').set('source', 'table');
model.geom('geom1').feature('wp1').geom.feature('pol6').set('table', {'1.25' '1.805';  ...
'1.35' '1.805';  ...
'1.35' '5.7285';  ...
'0.89' '5.7285';  ...
'0.89' '4.9285';  ...
'1.25' '4.305'; ...
'1.25' '4.305-Houtlet'}); %outlet boundary lower limit
model.geom('geom1').create('rev1', 'Revolve');
model.geom('geom1').feature('rev1').set('angtype', 'full');
model.geom('geom1').feature('rev1').selection('input').set({'wp1'});

% control rods
model.geom('geom1').create('wp2', 'WorkPlane');
model.geom('geom1').feature('wp2').set('quickz', '0.416');
model.geom('geom1').feature('wp2').set('unite', true);

% model.geom('geom1').feature('wp2').geom.create('c1', 'Circle');
% model.geom('geom1').feature('wp2').geom.feature('c1').set('selresult', 'on');
% model.geom('geom1').feature('wp2').geom.feature('c1').set('r', '0.05');
% model.geom('geom1').feature('wp2').geom.feature('c1').set('pos', {'0.275' '0'});
% model.geom('geom1').feature('wp2').geom.create('c2', 'Circle');
% model.geom('geom1').feature('wp2').geom.feature('c2').set('selresult', 'on');
% model.geom('geom1').feature('wp2').geom.feature('c2').set('r', '0.05');
% model.geom('geom1').feature('wp2').geom.feature('c2').set('pos', {'-0.275' '0'});
% model.geom('geom1').feature('wp2').geom.create('c3', 'Circle');
% model.geom('geom1').feature('wp2').geom.feature('c3').set('selresult', 'on');
% model.geom('geom1').feature('wp2').geom.feature('c3').set('r', '0.05');
% model.geom('geom1').feature('wp2').geom.feature('c3').set('pos', {'0' '-0.275'});
% model.geom('geom1').feature('wp2').geom.create('c4', 'Circle');
% model.geom('geom1').feature('wp2').geom.feature('c4').set('selresult', 'on');
% model.geom('geom1').feature('wp2').geom.feature('c4').set('r', '0.05');
% model.geom('geom1').feature('wp2').geom.feature('c4').set('pos', {'0' '0.275'});
% model.geom('geom1').feature('wp2').geom.create('c5', 'Circle');
% model.geom('geom1').feature('wp2').geom.feature('c5').set('selresult', 'on');
% model.geom('geom1').feature('wp2').geom.feature('c5').set('r', '0.05');
% model.geom('geom1').feature('wp2').geom.feature('c5').set('pos', {'-0.19445436' '0.19445436'});
% model.geom('geom1').feature('wp2').geom.create('c6', 'Circle');
% model.geom('geom1').feature('wp2').geom.feature('c6').set('selresult', 'on');
% model.geom('geom1').feature('wp2').geom.feature('c6').set('r', '0.05');
% model.geom('geom1').feature('wp2').geom.feature('c6').set('pos', {'0.19445436' '0.19445436'});
% model.geom('geom1').feature('wp2').geom.create('c7', 'Circle');
% model.geom('geom1').feature('wp2').geom.feature('c7').set('selresult', 'on');
% model.geom('geom1').feature('wp2').geom.feature('c7').set('r', '0.05');
% model.geom('geom1').feature('wp2').geom.feature('c7').set('pos', {'-0.19445436' '-0.19445436'});
% model.geom('geom1').feature('wp2').geom.create('c8', 'Circle');
% model.geom('geom1').feature('wp2').geom.feature('c8').set('selresult', 'on');
% model.geom('geom1').feature('wp2').geom.feature('c8').set('r', '0.05');
% model.geom('geom1').feature('wp2').geom.feature('c8').set('pos', {'0.19445436' '-0.19445436'});

model.geom('geom1').feature('wp2').geom.create('c9', 'Circle');
model.geom('geom1').feature('wp2').geom.feature('c9').set('r', 0.35);

for cr = 1:8
    ang = 360/8*cr;
    model.geom('geom1').feature('wp2').geom.create(sprintf('ic%d', cr), 'InterpolationCurve');
    model.geom('geom1').feature('wp2').geom.feature(sprintf('ic%d', cr)).set('type', 'solid');
    model.geom('geom1').feature('wp2').geom.feature(sprintf('ic%d', cr)).set('table', ...
        {sprintf('0.35*cos((%f-15)[deg])', ang) sprintf('0.35*sin((%f-15)[deg])', ang);...
        sprintf('0.2*cos((%f-15)[deg])', ang)  sprintf('0.2*sin((%f-15)[deg])', ang);...
        sprintf('0.2*cos((%f+15)[deg])', ang)  sprintf('0.2*sin((%f+15)[deg])', ang); ...
        sprintf('0.35*cos((%f+15)[deg])', ang) sprintf('0.35*sin((%f+15)[deg])', ang)});   
end

model.component('mod1').geom('geom1').feature('wp2').geom.create('uni1', 'Union');
model.component('mod1').geom('geom1').feature('wp2').geom.feature('uni1').selection('input').set({'ic1' 'ic2' 'ic3' 'ic4' 'ic5' 'ic6' 'ic7' 'ic8'});
model.component('mod1').geom('geom1').feature('wp2').geom.create('int9', 'Intersection');
model.component('mod1').geom('geom1').feature('wp2').geom.feature('int9').selection('input').set({'c9' 'uni1'});

model.geom('geom1').create('ext1', 'Extrude');
model.geom('geom1').feature('ext1').label('contro_rod_channels');
model.geom('geom1').feature('ext1').setIndex('distance', '5.7285-0.416', 0);
model.geom('geom1').feature('ext1').selection('input').set({'wp2'});
model.geom('geom1').run;


