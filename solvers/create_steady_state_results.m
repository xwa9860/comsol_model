model.result.dataset('dset2').set('solution', 'sol13');
    % dset2 is the steady state results
model.result.dataset('dset3').set('solution', 'sol15');
    % dset3: scaling study results
%% plot
model.result.create('pg1', 'PlotGroup2D');
model.result('pg1').set('data', 'dset2');
model.result('pg1').create('surf1', 'Surface');
model.result('pg1').feature('surf1').set('expr', 'T_fuel');
model.result('pg1').label('T_fuel(steady state)');

model.result.create('pg2', 'PlotGroup2D');
model.result('pg2').set('data', 'dset2');
model.result('pg2').create('surf1', 'Surface');
model.result('pg2').feature('surf1').set('expr', 'T_flibe');
model.result('pg2').label('T_flibe(steady state)');

model.result.create('pg3', 'PlotGroup2D');
model.result('pg3').set('data', 'dset2');
model.result('pg3').create('surf1', 'Surface');
model.result('pg3').feature('surf1').set('expr', 'Pdensity');
model.result('pg3').label('Pdensity(steady state)');

%fast flux surface plot
model.result.create('pg4', 2);
model.result('pg4').set('data', 'dset3');
model.result('pg4').create('surf1', 'Surface');
model.result('pg4').feature('surf1').set('expr', 'FluxN1+FluxN2+FluxN3+FluxN4');
model.result('pg4').feature('surf1').set('unit', '1/(m^2*s)');
model.result('pg4').label('fast flux(steady state)');
model.result('pg4').run;

% thermal flux surface plot
model.result.duplicate('pg5', 'pg4');
model.result('pg5').feature('surf1').set('expr', 'FluxN5+FluxN6+FluxN7+FluxN8');
model.result('pg5').label('thermal flux(steady state)');
model.result('pg5').feature('surf1').set('unit', '1/(m^2*s)');
model.result('pg5').run;

%% export power density on a mesh
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

%R = 0.005:0.01:1.775; % center of the bins
%Z = 0.415:0.01:5.725; %
model.result.export('data1').set('gridx2', 'range(0.5[cm], 1[cm],177.5[cm])');
model.result.export('data1').set('gridy2', 'range(41,5[cm],1[cm],572.5[cm])');
model.result.export('data1').set('filename', 'power_mesh.txt');

model.result.export('data1').run;