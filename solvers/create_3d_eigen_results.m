model.result.dataset.create('cpl1', 'CutPlane');
model.result.dataset('cpl1').set('data', 'dset1');

model.result.create('pg_pdens', 'PlotGroup3D');
model.result('pg_pdens').create('slc1', 'Slice');
model.result('pg_pdens').feature('slc1').set('expr', 'Pdensity');
model.result('pg_pdens').feature('slc1').set('unit', 'W/m^3');
model.result('pg_pdens').feature('slc1').set('descr', 'power density');
model.result('pg_pdens').feature('slc1').set('quickxnumber', 1);
model.result('pg_pdens').feature('slc1').set('resolution', 'normal');


%% export power density on a mesh
model.result.export.create('data1', 'Data');
model.result.export('data1').set('data', 'cpl1');
model.result.export('data1').remove('unit', 1);
model.result.export('data1').remove('descr', 1);
model.result.export('data1').remove('expr', 1);
model.result.export('data1').remove('unit', 0);
model.result.export('data1').remove('descr', 0);
model.result.export('data1').remove('expr', 0);
model.result.export('data1').setIndex('expr', 'PdensityN', 0);
model.result.export('data1').set('location', 'grid');
model.result.export('data1').set('header', 'on');
model.result.export('data1').set('gridx2', 'range(1[cm], 2[cm],177[cm])');
model.result.export('data1').set('gridy2', 'range(42[cm],2[cm],572[cm])');
%model.result.export('data1').set('gridx2', 'range(1[cm], 2[cm],67[cm])');
%model.result.export('data1').set('gridy2', 'range(1[cm],2[cm],285[cm])');
model.result.export('data1').set('filename', 'D:\diffusion_models\model\m_files\results\power_mesh.txt');
model.result.export('data1').run;

