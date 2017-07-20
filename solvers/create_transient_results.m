model.result.dataset('dset4').set('solution', 'sol4');
    %dset4: transient study results

% T flibe surface plot
model.result.create('pg8', 'PlotGroup2D');
model.result('pg8').set('data', 'dset4');
model.result('pg8').create('surf1', 'Surface');
model.result('pg8').set('title', 'Surface: Temperature (K)');
model.result('pg8').label('T_flibe(transient)');
model.result('pg8').setIndex('looplevel', '188', 0);

% T fuel surface plot
model.result.create('pg9', 'PlotGroup2D');
model.result('pg9').set('data', 'dset4');
model.result('pg9').create('surf1', 'Surface');
model.result('pg9').feature('surf1').set('expr', 'T_fuel');
model.result('pg9').label('T_fuel(transient)');
model.result('pg9').setIndex('looplevel', '188', 0);

% power density surface plot
model.result.duplicate('pg10', 'pg9');
model.result('pg10').feature('surf1').set('expr', 'Pdensity');
model.result('pg10').label('Power density(transient)');
model.result('pg10').setIndex('looplevel', '188', 0);



%% export animation of T flibe



%% export animation of T fuel


%% plot power distribution on centerline and middleline




model.result.dataset.create('dset5', 'Solution');
model.result.dataset('dset5').set('probetag', 'dom5');
model.result.dataset('dset5').set('solution', 'sol4');
model.result.dataset('dset5').label('Probe Solution 5');

model.result.dataset.create('avh1', 'Average');
model.result.dataset('avh1').set('probetag', 'dom1');
model.result.dataset('avh1').set('data', 'dset5');
model.result.dataset('avh1').selection.geom('geom1', 2);
model.result.dataset('avh1').selection.set([1 2 3]);

model.result.dataset.create('avh2', 'Average');

model.result.dataset('avh2').set('probetag', 'dom2');
model.result.dataset('avh2').set('data', 'dset5');
model.result.dataset('avh2').selection.geom('geom1', 2);
model.result.dataset('avh2').selection.set([2]);

model.result.dataset.create('avh3', 'Average');
model.result.dataset('avh3').set('probetag', 'dom3');
model.result.dataset('avh3').set('data', 'dset5');
model.result.dataset('avh3').selection.geom('geom1', 2);
model.result.dataset('avh3').selection.set([2]);

model.result.dataset.create('max1', 'Maximum');
model.result.dataset('max1').set('probetag', 'dom4');
model.result.dataset('max1').set('data', 'dset5');
model.result.dataset('max1').selection.geom('geom1', 2);
model.result.dataset('max1').selection.set([2]);

model.result.dataset.create('max2', 'Maximum');
model.result.dataset('max2').set('probetag', 'dom5');
model.result.dataset('max2').set('data', 'dset5');
model.result.dataset('max2').selection.geom('geom1', 2);
model.result.dataset('max2').selection.set([2]);


model.result.create('pg28', 'PlotGroup1D');
model.result('pg28').set('probetag', 'window1');
model.result('pg28').create('tblp1', 'Table');
model.result('pg28').feature('tblp1').set('probetag', 'dom1');
model.result('pg28').label('Probe Plot Group 28');
model.result('pg28').set('data', 'none');
model.result('pg28').set('window', 'window1');
model.result('pg28').set('windowtitle', '');
model.result('pg28').feature('tblp1').label('Probe Table Graph 1');
model.result('pg28').feature('tblp1').set('plotcolumninput', 'manual');


% model.result.create('pg29', 'PlotGroup1D');
% model.result.create('pg30', 'PlotGroup1D');
% 
% model.result('pg29').set('probetag', 'window2');
% model.result('pg29').create('tblp1', 'Table');
% model.result('pg29').feature('tblp1').set('probetag', 'dom2,dom3');
% model.result('pg30').set('probetag', 'window3');
% model.result('pg30').create('tblp1', 'Table');
% model.result('pg30').feature('tblp1').set('probetag', 'dom4,dom5');
% 
% 
% model.result('pg29').label('Probe Plot Group 29');
% model.result('pg29').set('windowtitle', '');
% model.result('pg29').feature('tblp1').label('Probe Table Graph 1');
% 
% model.result('pg30').label('Probe Plot Group 30');
% model.result('pg30').set('windowtitle', '');
% model.result('pg30').feature('tblp1').label('Probe Table Graph 1');

