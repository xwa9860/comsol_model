model.result.dataset.create('rev1', 'Revolve2D');
model.result.dataset.create('rev2', 'Revolve2D');
%model.result.dataset.create('dset3', 'Solution');
model.result.dataset.create('avh1', 'Average');
model.result.dataset.create('avh2', 'Average');
model.result.dataset.create('avh3', 'Average');
%model.result.dataset.create('dset4', 'Solution');
model.result.dataset.create('cpt1', 'CutPoint2D');

model.result.dataset('rev1').set('data', 'dset2');
model.result.dataset('rev2').set('data', 'dset2');

model.result.numerical.create('pev1', 'EvalPoint');
model.result.numerical.create('pev2', 'EvalPoint');
model.result.numerical.create('pev3', 'EvalPoint');
model.result.numerical.create('pev4', 'EvalPoint');
model.result.numerical.create('pev5', 'EvalPoint');
model.result.numerical.create('pev6', 'EvalPoint');
model.result.numerical.create('pev7', 'EvalPoint');


model.result.create('pg1', 'PlotGroup2D');
model.result.create('pg2', 'PlotGroup2D');

model.result('pg1').set('data', 'dset2');
model.result('pg1').create('surf1', 'Surface');

model.result('pg2').set('data', 'dset2');
model.result('pg2').create('surf1', 'Surface');


model.result('pg1').feature('surf1').set('expr', 'T_fuel');
model.result('pg2').feature('surf1').set('expr', 'T_flibe');

model.result.create('pg3', 'PlotGroup2D');
model.result('pg3').set('data', 'dset2');
model.result('pg3').create('surf1', 'Surface');
model.result('pg3').feature('surf1').set('expr', 'Pdensity');

model.result.export.create('data1', 'Data');
model.result.export('data1').set('data', 'dset2');
model.result.export('data1').remove('unit', 1);
model.result.export('data1').remove('descr', 1);
model.result.export('data1').remove('expr', 1);

model.result.export('data1').remove('unit', 0);
model.result.export('data1').remove('descr', 0);
model.result.export('data1').remove('expr', 0);

model.result.export('data1').setIndex('expr', 'Pdensity', 0);

model.result.export('data1').set('location', 'grid');
model.result.export('data1').set('header', 'on');
model.result.export('data1').set('gridx2', 'range(1[cm], 2[cm],67[cm])');
model.result.export('data1').set('gridy2', 'range(1[cm],2[cm],285[cm])');
model.result.export('data1').set('filename', 'D:\diffusion_models\model\m_files\T_fuel.txt');

%model.result.export('data1').set('solnum', {'2'});
model.result.export('data1').run;