
model.geom.create('geom1', 2);
model.geom('geom1').axisymmetric(true);

model.mesh.create('mesh2', 'geom1');

model.geom('geom1').label('TMSR_core');
model.geom('geom1').create('pol1', 'Polygon');
model.geom('geom1').feature('pol1').label('upper_core');
model.geom('geom1').feature('pol1').set('x', '0,0.675,0.675, 0.1, 0.1, 0');
model.geom('geom1').feature('pol1').set('y', 'zin,zout,2.33, 2.66, 2.86, 2.86');
model.geom('geom1').create('pol2', 'Polygon');
model.geom('geom1').feature('pol2').label('reflector');
model.geom('geom1').feature('pol2').set('x', '0.1, 1.3, 1.3, 0.1, 0.1,0.675,0.675,0.1');
model.geom('geom1').feature('pol2').set('y', '0, 0, 2.86, 2.86, 2.66,2.33,0.53,0.2');
model.geom('geom1').create('pol3', 'Polygon');
model.geom('geom1').feature('pol3').label('bottom_core');
model.geom('geom1').feature('pol3').set('x', '0,0.1,0.1,0.675,0.675,0');
model.geom('geom1').feature('pol3').set('y', '0,0,0.2,0.53,zout,zin');
model.geom('geom1').run;
model.geom('geom1').run('fin');

model.mesh('mesh2').autoMeshSize(4);
model.mesh('mesh2').label('Mesh');
model.mesh('mesh2').run;