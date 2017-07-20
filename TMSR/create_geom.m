model.geom.create('geom1', dimNb);
   
if dimNb ==2
    model.geom('geom1').axisymmetric(true);
    model.geom('geom1').label('TMSR_core');
    model.geom('geom1').create('pol1', 'Polygon');
    model.geom('geom1').feature('wp1').geom.feature('pol1').label('upper_core');
    model.geom('geom1').feature('wp1').geom.feature('pol1').set('x', '0,0.675,0.675, 0.1, 0.1, 0');
    model.geom('geom1').feature('wp1').geom.feature('pol1').set('y', 'zin,zout,2.33, 2.66, 2.86, 2.86');
    model.geom('geom1').create('pol2', 'Polygon');
    model.geom('geom1').feature('wp1').geom.feature('pol2').label('reflector');
    model.geom('geom1').feature('wp1').geom.feature('pol2').set('x', '0.1, 1.3, 1.3, 0.1, 0.1,0.675,0.675,0.1');
    model.geom('geom1').feature('wp1').geom.feature('pol2').set('y', '0, 0, 2.86, 2.86, 2.66,2.33,0.53,0.2');
    model.geom('geom1').create('pol3', 'Polygon');
    model.geom('geom1').feature('wp1').geom.feature('pol3').label('bottom_core');
    model.geom('geom1').feature('wp1').geom.feature('pol3').set('x', '0,0.1,0.1,0.675,0.675,0');
    model.geom('geom1').feature('wp1').geom.feature('pol3').set('y', '0,0,0.2,0.53,zout,zin');
    model.geom('geom1').run;

else
    model.geom('geom1').create('wp1', 'WorkPlane');
    model.geom('geom1').feature('wp1').geom.create('pol1', 'Polygon');
    model.geom('geom1').feature('wp1').geom.feature('pol1').label('upper_core');
    model.geom('geom1').feature('wp1').geom.feature('pol1').set('x', '0,0.675,0.675, 0.1, 0.1, 0');
    model.geom('geom1').feature('wp1').geom.feature('pol1').set('y', 'zin,zout,2.33, 2.66, 2.86, 2.86');
    model.geom('geom1').feature('wp1').geom.create('pol2', 'Polygon');
    model.geom('geom1').feature('wp1').geom.feature('pol2').label('reflector');
    model.geom('geom1').feature('wp1').geom.feature('pol2').set('x', '0.1, 1.3, 1.3, 0.1, 0.1,0.675,0.675,0.1');
    model.geom('geom1').feature('wp1').geom.feature('pol2').set('y', '0, 0, 2.86, 2.86, 2.66,2.33,0.53,0.2');
    model.geom('geom1').feature('wp1').geom.create('pol3', 'Polygon');
    model.geom('geom1').feature('wp1').geom.feature('pol3').label('bottom_core');
    model.geom('geom1').feature('wp1').geom.feature('pol3').set('x', '0,0.1,0.1,0.675,0.675,0');
    model.geom('geom1').feature('wp1').geom.feature('pol3').set('y', '0,0,0.2,0.53,zout,zin');

    model.geom('geom1').create('rev1', 'Revolve');
    model.geom('geom1').feature('rev1').set('angtype', 'full');
    model.geom('geom1').feature('rev1').selection('input').set({'wp1'});
end

mesh1=model.mesh.create('mesh1', 'geom1');
model.mesh('mesh1').label('Mesh');
mesh1.run;
model.mesh('mesh1').autoMeshSize(7);

mphgeom(model,'geom1','vertexmode','on','facemode', 'off', 'facelabels', 'on')

