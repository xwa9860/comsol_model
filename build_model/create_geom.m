if dimNb == 2
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
elseif dimNb == 3
    model.geom.create('geom1', 3);

    model.mesh.create('mesh1', 'geom1');
    model.mesh('mesh1').label('Mesh');
    model.mesh('mesh1').run;
    model.mesh('mesh1').autoMeshSize(7);

    model.geom('geom1').create('wp1', 'WorkPlane');
    %model.geom('geom1').feature('wp1').set('quickplane', 'yz');
    %model.geom('geom1').runPre('fin');
    model.geom('geom1').feature('wp1').geom.create('imp1', 'Import');
    model.geom('geom1').feature('wp1').geom.feature('imp1').set('filename', [mydir, 'geom_data/tmsr_geom_new.mphbin']);
    model.geom('geom1').feature('wp1').geom.feature('imp1').set('type', 'native');
    model.geom('geom1').feature('wp1').geom.feature('imp1').importData;
    model.geom('geom1').feature('wp1').set('unite', 'on');
    model.geom('geom1').feature('wp1').geom.feature('imp1').importData;
    model.geom('geom1').create('rev1', 'Revolve');
    model.geom('geom1').feature('rev1').set('angtype', 'full');
    model.geom('geom1').feature('rev1').selection('input').set({'wp1'});
    model.geom('geom1').run;
else
    warning('Dimension not supported')
end
