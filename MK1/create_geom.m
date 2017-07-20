model.geom.create('geom1', 3);

model.mesh.create('mesh1', 'geom1');

model.geom('geom1').create('wp1', 'WorkPlane');
model.geom('geom1').feature('wp1').set('quickplane', 'xz');
model.geom('geom1').feature('wp1').set('unite', 'on');
model.geom('geom1').feature('wp1').geom.create('imp1', 'Import');
model.geom('geom1').feature('wp1').geom.feature('imp1').set('filename', 'D:\diffusion_models\model\m_files\MK1\MK1_geom_2d.mphbin');
model.geom('geom1').feature('wp1').geom.feature('imp1').set('type', 'native');
model.geom('geom1').feature('wp1').geom.feature('imp1').importData;
model.geom('geom1').create('rev1', 'Revolve');
model.geom('geom1').feature('rev1').set('angtype', 'full');
model.geom('geom1').feature('rev1').selection('input').set({'wp1'});

model.geom('geom1').feature('wp1').geom.run('imp1');
model.geom('geom1').feature('wp1').geom.run('imp1');
model.geom('geom1').feature('wp1').geom.run('imp1');
model.geom('geom1').feature('wp1').geom.run('imp1');
model.geom('geom1').feature('wp1').geom.run('imp1');
model.geom('geom1').feature('wp1').geom.run('imp1');
model.geom('geom1').feature('wp1').geom.run('imp1');
model.geom('geom1').feature('wp1').geom.run('imp1');
model.geom('geom1').feature('wp1').geom.run('imp1');
model.geom('geom1').feature('wp1').geom.run('imp1');
model.geom('geom1').feature('wp1').geom.run('imp1');
model.geom('geom1').feature('wp1').geom.run('imp1');
model.geom('geom1').run('fin');
model.geom('geom1').feature('wp1').geom.run('imp1');
model.geom('geom1').feature('wp1').geom.run('imp1');
model.geom('geom1').feature('wp1').geom.create('pol1', 'Polygon');
model.geom('geom1').feature('wp1').geom.feature('pol1').set('source', 'file');
model.geom('geom1').feature('wp1').geom.feature('pol1').set('filename', 'D:\diffusion_models\model\m_files\MK1\center_ref.txt');
model.geom('geom1').feature('wp1').geom.run('pol1');
model.geom('geom1').feature('wp1').geom.run('pol1');
model.geom('geom1').feature('wp1').geom.run('pol1');
model.geom('geom1').feature('wp1').geom.feature.remove('imp1');
model.geom('geom1').feature('wp1').geom.run('pol1');
model.geom('geom1').feature('wp1').geom.feature('pol1').label('center_ref');
model.geom('geom1').feature('wp1').geom.run('pol1');
model.geom('geom1').feature('wp1').geom.create('pol2', 'Polygon');
model.geom('geom1').feature('wp1').geom.feature('pol2').label('fuel');
model.geom('geom1').feature('wp1').geom.feature('pol2').set('source', 'file');
model.geom('geom1').feature('wp1').geom.feature('pol2').set('filename', 'D:\diffusion_models\model\m_files\MK1\fuel.txt');
model.geom('geom1').feature('wp1').geom.run('pol2');
model.geom('geom1').feature('wp1').geom.run('pol2');
model.geom('geom1').feature('wp1').geom.create('pol3', 'Polygon');
model.geom('geom1').feature('wp1').geom.feature('pol3').label('blanket');
model.geom('geom1').feature('wp1').geom.feature('pol3').set('source', 'file');
model.geom('geom1').feature('wp1').geom.feature('pol3').set('filename', 'D:\diffusion_models\model\m_files\MK1\blanket.txt');
model.geom('geom1').feature('wp1').geom.run('pol3');
model.geom('geom1').feature('wp1').geom.run('pol3');
model.geom('geom1').feature('wp1').geom.create('pol4', 'Polygon');
model.geom('geom1').feature('wp1').geom.feature('pol4').label('outer_ref');
model.geom('geom1').feature('wp1').geom.feature('pol4').set('source', 'file');
model.geom('geom1').feature('wp1').geom.feature('pol4').set('filename', 'D:\diffusion_models\model\m_files\MK1\outer_ref.txt');
model.geom('geom1').feature('wp1').geom.run('pol4');
model.geom('geom1').feature('wp1').geom.run('pol4');
model.geom('geom1').feature('wp1').geom.create('r1', 'Rectangle');
model.geom('geom1').feature('wp1').geom.feature('r1').label('core_barrel');
model.geom('geom1').feature('wp1').geom.feature('r1').set('size', {'0.03' '5.7285-0.416'});
model.geom('geom1').feature('wp1').geom.feature('r1').set('pos', {'1.65' '0.416'});
model.geom('geom1').feature('wp1').geom.run('r1');
model.geom('geom1').feature('wp1').geom.create('r2', 'Rectangle');
model.geom('geom1').feature('wp1').geom.feature('r2').label('downcomer');
model.geom('geom1').feature('wp1').geom.feature('r2').set('size', {'0.028' '5.7285-0.416'});
model.geom('geom1').feature('wp1').geom.feature('r2').set('pos', {'1.68' '0.416'});
model.geom('geom1').feature('wp1').geom.run('r2');
model.geom('geom1').feature('wp1').geom.create('r3', 'Rectangle');
model.geom('geom1').feature('wp1').geom.feature('r3').label('vessel');
model.geom('geom1').feature('wp1').geom.feature('r3').set('size', {'0.06' '5.7285-0.416'});
model.geom('geom1').feature('wp1').geom.feature('r3').set('pos', {'1.708' '0.416'});
model.geom('geom1').feature('wp1').geom.run('r3');
model.geom('geom1').feature('wp1').geom.create('r4', 'Rectangle');
model.geom('geom1').feature('wp1').geom.feature('r4').set('size', {'0.05' '1'});
model.geom('geom1').feature('wp1').geom.feature('r4').set('pos', {'0.3' '1.5'});
model.geom('geom1').feature('wp1').geom.feature('r4').label('inlet');
model.geom('geom1').feature('wp1').geom.run('r4');
model.geom('geom1').feature('wp1').geom.create('r5', 'Rectangle');
model.geom('geom1').feature('wp1').geom.feature('r5').label('outlet');
model.geom('geom1').feature('wp1').geom.feature('r5').label('outlet_low');
model.geom('geom1').feature('wp1').geom.feature('r5').set('size', {'0.05' '0.5'});
model.geom('geom1').feature('wp1').geom.feature('r5').set('pos', {'1.25' '4.305-0.5'});
model.geom('geom1').feature('wp1').geom.run('r5');
model.geom('geom1').feature('wp1').geom.create('pol5', 'Polygon');
model.geom('geom1').feature('wp1').geom.feature('pol5').label('outlet_high');
model.geom('geom1').feature('wp1').geom.feature('pol5').set('source', 'table');
model.geom('geom1').feature('wp1').geom.feature('pol5').setIndex('table', '0.89', 0, 0);
model.geom('geom1').feature('wp1').geom.feature('pol5').setIndex('table', '4.9285', 0, 1);
model.geom('geom1').feature('wp1').geom.feature('pol5').setIndex('table', '1.25', 1, 0);
model.geom('geom1').feature('wp1').geom.feature('pol5').setIndex('table', '4.305', 1, 1);
model.geom('geom1').feature('wp1').geom.feature('pol5').setIndex('table', '1.3', 2, 0);
model.geom('geom1').feature('wp1').geom.feature('pol5').setIndex('table', '4.305', 2, 1);
model.geom('geom1').feature('wp1').geom.feature('pol5').setIndex('table', '0.94', 3, 0);
model.geom('geom1').feature('wp1').geom.feature('pol5').setIndex('table', '4.9285', 3, 1);
model.geom('geom1').feature('wp1').geom.run('pol5');
model.geom('geom1').runPre('fin');

model.view('view1').set('renderwireframe', true);

keySet = {'inlet','outlet_high', 'outlet_low','CR', 'Fuel',...
          'Blanket', 'ORCC','OR', 'CB', 'DC',...
          'VS', 'CRCC1', 'CRCC2', 'CRCC3', 'CRCC4', ...
          'CRCC5', 'CRCC6', 'CRCC7', 'CRCC8_1', 'CRCC8_2'};
valueSet = [11, 7, 6, 10, 9,...
            8, 5, 4, 3, 2, ...
            1, 12, 13, 14, 15,...
            16, 17, 18, 19, 20 ];
% domain 19 and 20 are two halves of the CR8
domains = containers.Map(keySet,valueSet);

