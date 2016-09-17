model.result.dataset.create('rev1', 'Revolve2D');
model.result.dataset.create('rev2', 'Revolve2D');
model.result.dataset.create('dset3', 'Solution');
model.result.dataset.create('avh1', 'Average');
model.result.dataset.create('avh2', 'Average');
model.result.dataset.create('avh3', 'Average');
model.result.dataset.create('dset4', 'Solution');
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


model.result.create('pg8', 'PlotGroup2D');
model.result.create('pg9', 'PlotGroup2D');

model.result('pg8').set('data', 'dset2');
model.result('pg8').create('surf1', 'Surface');
model.result('pg9').set('data', 'dset2');
model.result('pg9').create('surf1', 'Surface');


model.result('pg9').feature('surf1').set('expr', 'T_fuel');
model.result.remove('pg10');

