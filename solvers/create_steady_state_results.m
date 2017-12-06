model.result.dataset('dset2').set('solution', 'sol13');
    % dset2 is the steady state results
model.result.dataset('dset3').set('solution', 'sol15');
    % dset3: scaling study results
%% plot


model = create_a_surf_plot(model, 'dset2', 'T_fuel', 'T_fuel(steady state)');
% model.result.create('pg1', 'PlotGroup2D');
% model.result('pg1').set('data', 'dset2');
% model.result('pg1').create('surf1', 'Surface');
% model.result('pg1').feature('surf1').set('expr', 'T_fuel');
% model.result('pg1').label('T_fuel(steady state)');

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

% Tp11
model.result.create('pg6', 'PlotGroup2D');
model.result('pg6').set('data', 'dset2');
model.result('pg6').create('surf1', 'Surface');
model.result('pg6').feature('surf1').set('expr', 'Tp11');
model.result('pg6').label('Tp11(steady state)');

% Tp12
model.result.create('pg7', 'PlotGroup2D');
model.result('pg7').set('data', 'dset2');
model.result('pg7').create('surf1', 'Surface');
model.result('pg7').feature('surf1').set('expr', 'Tp12');
model.result('pg7').label('Tp12(steady state)');

% Tp13
model.result.create('pg8', 'PlotGroup2D');
model.result('pg8').set('data', 'dset2');
model.result('pg8').create('surf1', 'Surface');
model.result('pg8').feature('surf1').set('expr', 'Tp13');
model.result('pg8').label('Tp13(steady state)');

% Tp14
model.result.create('pg9', 'PlotGroup2D');
model.result('pg9').set('data', 'dset2');
model.result('pg9').create('surf1', 'Surface');
model.result('pg9').feature('surf1').set('expr', 'Tp14');
model.result('pg9').label('Tp14(steady state)');

% Tp21
model.result.create('pg10', 'PlotGroup2D');
model.result('pg10').set('data', 'dset2');
model.result('pg10').create('surf1', 'Surface');
model.result('pg10').feature('surf1').set('expr', 'Tp21');
model.result('pg10').label('Tp21(steady state)');

% Tp22
model.result.create('pg11', 'PlotGroup2D');
model.result('pg11').set('data', 'dset2');
model.result('pg11').create('surf1', 'Surface');
model.result('pg11').feature('surf1').set('expr', 'Tp22');
model.result('pg11').label('Tp22(steady state)');

% Tp23
model.result.create('pg12', 'PlotGroup2D');
model.result('pg12').set('data', 'dset2');
model.result('pg12').create('surf1', 'Surface');
model.result('pg12').feature('surf1').set('expr', 'Tp23');
model.result('pg12').label('Tp23(steady state)');

% Tp24
model.result.create('pg13', 'PlotGroup2D');
model.result('pg13').set('data', 'dset2');
model.result('pg13').create('surf1', 'Surface');
model.result('pg13').feature('surf1').set('expr', 'Tp24');
model.result('pg13').label('Tp24(steady state)');

% Tp31
model.result.create('pg14', 'PlotGroup2D');
model.result('pg14').set('data', 'dset2');
model.result('pg14').create('surf1', 'Surface');
model.result('pg14').feature('surf1').set('expr', 'Tp31');
model.result('pg14').label('Tp31(steady state)');


% Tp32
model.result.create('pg15', 'PlotGroup2D');
model.result('pg15').set('data', 'dset2');
model.result('pg15').create('surf1', 'Surface');
model.result('pg15').feature('surf1').set('expr', 'Tp32');
model.result('pg15').label('Tp32(steady state)');

% Tp33
model.result.create('pg16', 'PlotGroup2D');
model.result('pg16').set('data', 'dset2');
model.result('pg16').create('surf1', 'Surface');
model.result('pg16').feature('surf1').set('expr', 'Tp33');
model.result('pg16').label('Tp33(steady state)');

% Tp34
model.result.create('pg17', 'PlotGroup2D');
model.result('pg17').set('data', 'dset2');
model.result('pg17').create('surf1', 'Surface');
model.result('pg17').feature('surf1').set('expr', 'Tp34');
model.result('pg17').label('Tp34(steady state)');

% Tp44
model.result.create('pg18', 'PlotGroup2D');
model.result('pg18').set('data', 'dset2');
model.result('pg18').create('surf1', 'Surface');
model.result('pg18').feature('surf1').set('expr', 'Tp44');
model.result('pg18').label('Tp44(steady state)');

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

if ~isTMSR
    %R = 0.005:0.01:1.775; % center of the bins
    %Z = 0.415:0.01:5.725; %
    model.result.export('data1').set('gridx2', 'range(0.5[cm], 1[cm],177.5[cm])');
    model.result.export('data1').set('gridy2', 'range(41,5[cm],1[cm],572.5[cm])');
    model.result.export('data1').set('filename', 'power_mesh.txt');

    model.result.export('data1').run;
end
