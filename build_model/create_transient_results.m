model.view.create('view2', 3);
model.view.create('view3', 3);
model.view.create('view4', 3);
model.view.create('view5', 3);
model.view.create('view6', 3);
model.view.create('view7', 3);
model.view.create('view8', 3);
model.view('view1').axis.set('abstractviewxscale', '0.0036291556898504496');
model.view('view1').axis.set('ymin', '-0.07149994373321533');
model.view('view1').axis.set('xmax', '2.654843330383301');
model.view('view1').axis.set('abstractviewyscale', '0.003629155922681093');
model.view('view1').axis.set('abstractviewbratio', '-0.049999963492155075');
model.view('view1').axis.set('manualgrid', 'on');
model.view('view1').axis.set('abstractviewtratio', '0.049999963492155075');
model.view('view1').axis.set('abstractviewrratio', '0.32630401849746704');
model.view('view1').axis.set('xmin', '-1.3548434972763062');
model.view('view1').axis.set('abstractviewlratio', '-0.32630401849746704');
model.view('view1').axis.set('ymax', '2.93149995803833');

%model.result.dataset.create('dset3', 'Solution');
%model.result.dataset.create('dset4', 'Solution');
%model.result.dataset.create('cpt1', 'CutPoint2D');

% T flibe surface plot
model.result.create('pg8', 'PlotGroup2D');
model.result('pg8').set('data', 'dset3');
model.result('pg8').create('surf1', 'Surface');
model.result('pg8').set('title', 'Surface: Temperature (K)');
model.result('pg8').label('T_flibe');

% T fuel surface plot
model.result.create('pg9', 'PlotGroup2D');
model.result('pg9').set('data', 'dset3');
model.result('pg9').create('surf1', 'Surface');
model.result('pg9').feature('surf1').set('expr', 'T_fuel');
model.result('pg9').label('T_fuel');

% power density surface plot
model.result.duplicate('pg27', 'pg9');
model.result('pg27').feature('surf1').set('expr', 'Pdensity');
model.result('pg27').label('Power density');

%fast flux surface plot
model.result.create('pg23', 2);
model.result('pg23').set('data', 'dset3');
model.result('pg23').create('surf1', 'Surface');
model.result('pg23').feature('surf1').set('expr', 'FluxN1+FluxN2+FluxN3+FluxN4');
model.result('pg23').feature('surf1').set('unit', '1/(m^2*s)');
model.result('pg23').label('fast flux(steady state)');
model.result('pg23').run;

% thermal flux surface plot
model.result.duplicate('pg26', 'pg23');
model.result('pg26').feature('surf1').set('expr', 'FluxN5+FluxN6+FluxN7+FluxN8');
model.result('pg26').label('thermal flux(steady state)');
model.result('pg26').feature('surf1').set('unit', '1/(m^2*s)');
model.result('pg26').run;


%% export animation of T flibe



%% export animation of T fuel


%% plot power distribution on centerline and middleline




model.result.dataset.create('dset5', 'Solution');
model.result.dataset('dset5').set('probetag', 'dom5');
model.result.dataset('dset5').set('solution', 'sol4');
model.result.dataset('dset5').label('Probe Solution 5');

model.result.dataset.create('avh1', 'Average');
model.result.dataset.create('avh2', 'Average');
model.result.dataset.create('avh3', 'Average');
model.result.dataset.create('max1', 'Maximum');
model.result.dataset.create('max2', 'Maximum');


model.result.dataset('avh1').set('probetag', 'dom1');
model.result.dataset('avh1').set('data', 'dset5');
model.result.dataset('avh1').selection.geom('geom1', 2);
model.result.dataset('avh1').selection.set([1 2 3]);

model.result.dataset('avh2').set('probetag', 'dom2');
model.result.dataset('avh2').set('data', 'dset5');
model.result.dataset('avh2').selection.geom('geom1', 2);
model.result.dataset('avh2').selection.set([2]);

model.result.dataset('avh3').set('probetag', 'dom3');
model.result.dataset('avh3').set('data', 'dset5');
model.result.dataset('avh3').selection.geom('geom1', 2);
model.result.dataset('avh3').selection.set([2]);

model.result.dataset('max1').set('probetag', 'dom4');
model.result.dataset('max1').set('data', 'dset5');
model.result.dataset('max1').selection.geom('geom1', 2);
model.result.dataset('max1').selection.set([2]);

model.result.dataset('max2').set('probetag', 'dom5');
model.result.dataset('max2').set('data', 'dset5');
model.result.dataset('max2').selection.geom('geom1', 2);
model.result.dataset('max2').selection.set([2]);

model.result.numerical.create('pev1', 'EvalPoint');
model.result.numerical.create('pev2', 'EvalPoint');
model.result.numerical.create('pev3', 'EvalPoint');
model.result.numerical.create('pev4', 'EvalPoint');
model.result.numerical.create('pev5', 'EvalPoint');
model.result.numerical('pev1').set('probetag', 'dom1');
model.result.numerical('pev2').set('probetag', 'dom2');
model.result.numerical('pev3').set('probetag', 'dom3');
model.result.numerical('pev4').set('probetag', 'dom4');
model.result.numerical('pev5').set('probetag', 'dom5');



% model.result.numerical('pev1').setResult;
% model.result.numerical('pev2').appendResult;
% model.result.numerical('pev3').appendResult;
% model.result.numerical('pev4').appendResult;
% model.result.numerical('pev5').appendResult;


model.probe('dom1').genResult([]);
model.probe('dom2').genResult([]);
model.probe('dom3').genResult([]);
model.probe('dom4').genResult([]);
model.probe('dom5').genResult([]);

%model.result.create('pg28', 'PlotGroup1D');

model.result('pg28').set('probetag', 'window1');
%model.result('pg28').create('tblp1', 'Table');
model.result('pg28').feature('tblp1').set('probetag', 'dom1');
model.result('pg28').label('Probe Plot Group 28');
model.result('pg28').set('data', 'none');
model.result('pg28').set('window', 'window1');
model.result('pg28').set('windowtitle', '');
%model.result('pg28').create('tblp1', 'Table');
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


model.probe('dom1').genResult('none');
model.probe('dom2').genResult('none');
model.probe('dom3').genResult('none');
model.probe('dom4').genResult('none');
model.probe('dom5').genResult('none');
%model.sol('sol4').runAll;
