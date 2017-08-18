model.result.dataset.create('dset5', 'Solution');
model.result.dataset('dset5').set('probetag', 'dom5');
model.result.dataset('dset5').set('solution', 'sol13');

model.result.dataset.create('avh1', 'Average');
model.result.dataset.create('avh2', 'Average');
model.result.dataset.create('avh3', 'Average');
model.result.dataset.create('max1', 'Maximum');
model.result.dataset.create('max2', 'Maximum');

model.result.dataset('avh1').set('probetag', 'dom1');
model.result.dataset('avh1').set('data', 'dset5');
model.result.dataset('avh1').selection.geom('geom1', 3);
model.result.dataset('avh1').selection.set([1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17]);
model.result.dataset('avh2').set('probetag', 'dom2');
model.result.dataset('avh2').set('data', 'dset5');
model.result.dataset('avh2').selection.geom('geom1', 3);
model.result.dataset('avh2').selection.set([7]);
model.result.dataset('avh3').set('probetag', 'dom3');
model.result.dataset('avh3').set('data', 'dset5');
model.result.dataset('avh3').selection.geom('geom1', 3);
model.result.dataset('avh3').selection.set([7]);
model.result.dataset('max1').set('probetag', 'dom4');
model.result.dataset('max1').set('data', 'dset5');
model.result.dataset('max1').selection.geom('geom1', 3);
model.result.dataset('max1').selection.set([7]);
model.result.dataset('max2').set('probetag', 'dom5');
model.result.dataset('max2').set('data', 'dset5');
model.result.dataset('max2').selection.geom('geom1', 3);
model.result.dataset('max2').selection.set([7]);

% cut plane
model.result.dataset.create('cpl1', 'CutPlane');
model.result.dataset('cpl1').set('data', 'dset2');

model.result.numerical.create('int1', 'IntSurface');
model.result.numerical.create('int2', 'IntSurface');
model.result.numerical.create('int3', 'IntSurface');
model.result.numerical.create('gev1', 'EvalGlobal');
model.result.numerical.create('pev1', 'EvalPoint');
model.result.numerical.create('pev2', 'EvalPoint');
model.result.numerical.create('pev3', 'EvalPoint');
model.result.numerical.create('pev4', 'EvalPoint');
model.result.numerical.create('pev5', 'EvalPoint');
model.result.numerical('int1').set('data', 'dset2');
model.result.numerical('int1').selection.set([42 52 58]);
model.result.numerical('int1').set('probetag', 'none');
model.result.numerical('int2').set('data', 'dset2');
model.result.numerical('int2').selection.set([54 60]);
model.result.numerical('int2').set('probetag', 'none');
model.result.numerical('int3').set('data', 'dset2');
model.result.numerical('int3').selection.set([75]);
model.result.numerical('int3').set('probetag', 'none');
model.result.numerical('gev1').set('data', 'dset2');
model.result.numerical('gev1').set('probetag', 'none');
model.result.numerical('pev1').set('probetag', 'dom1');
model.result.numerical('pev2').set('probetag', 'dom2');
model.result.numerical('pev3').set('probetag', 'dom3');
model.result.numerical('pev4').set('probetag', 'dom4');
model.result.numerical('pev5').set('probetag', 'dom5');


model.result.create('pg1', 'PlotGroup3D');
model.result('pg1').set('data', 'dset5');
model.result('pg1').create('surf1', 'Surface');

% probes
model.result.create('pg2', 'PlotGroup1D');

model.result.create('pg3', 'PlotGroup1D');
model.result.create('pg4', 'PlotGroup1D');

model.result('pg2').set('probetag', 'window1');
model.result('pg2').create('tblp1', 'Table');
model.result('pg2').feature('tblp1').set('probetag', 'dom1');
model.result('pg3').set('probetag', 'window2');
model.result('pg3').create('tblp1', 'Table');
model.result('pg3').feature('tblp1').set('probetag', 'dom2,dom3');
model.result('pg4').set('probetag', 'window3');
model.result('pg4').create('tblp1', 'Table');
model.result('pg4').feature('tblp1').set('probetag', 'dom4,dom5');

% 3D streamline
model.result.create('pg5', 'PlotGroup3D');
model.result('pg5').set('data', 'dset2');
model.result('pg5').create('str1', 'Streamline');
model.result('pg5').feature('str1').selection.set([133 136 144]);
model.result('pg5').feature('str1').create('col1', 'Color');

model.result.create('pg6', 'PlotGroup2D');
model.result('pg6').create('surf1', 'Surface');
model.result('pg6').create('con1', 'Contour');

% 2D plots for T, P, ...
model.result.create('pg7', 'PlotGroup2D');
model.result.create('pg8', 'PlotGroup2D');
model.result.create('pg9', 'PlotGroup2D');
model.result.create('pg10', 'PlotGroup2D');
model.result.create('pg11', 'PlotGroup2D');
model.result('pg7').create('surf1', 'Surface');

model.result('pg8').create('surf1', 'Surface');
model.result('pg9').create('surf1', 'Surface');
model.result('pg10').create('surf1', 'Surface');
model.result('pg11').create('str1', 'Streamline');
model.result('pg11').create('con1', 'Contour');
model.result('pg11').feature('str1').create('col1', 'Color');

model.component('mod1').probe('dom1').genResult([]);
model.component('mod1').probe('dom2').genResult([]);
model.component('mod1').probe('dom3').genResult([]);
model.component('mod1').probe('dom4').genResult([]);
model.component('mod1').probe('dom5').genResult([]);

model.result('pg1').label('Temperature (ht)');
model.result('pg1').feature('surf1').label('Surface');
model.result('pg1').feature('surf1').set('expr', 'T_flibe');
model.result('pg1').feature('surf1').set('unit', 'degC');
model.result('pg1').feature('surf1').set('descr', 'Temperature');
model.result('pg1').feature('surf1').set('colortable', 'ThermalLight');
model.result('pg1').feature('surf1').set('resolution', 'normal');

model.result.create('pg2', 'PlotGroup1D');
model.result('pg2').label('Probe Plot Group 2');
model.result('pg2').set('data', 'none');
model.result('pg2').set('xlabel', 'Temperature (W), Probe Pint');
model.result('pg2').set('ylabel', 'Temperature (W), Probe Pint');
model.result('pg2').set('window', 'window1');
model.result('pg2').set('windowtitle', 'Probe Plot 1');
model.result('pg2').set('xlabelactive', false);
model.result('pg2').set('ylabelactive', false);
model.result('pg2').create('tblp1', 'Table');
model.result('pg2').feature('tblp1').label('Probe Table Graph 1');
model.result('pg2').feature('tblp1').set('plotcolumninput', 'manual');

model.result('pg3').label('Probe Plot Group 3');
model.result('pg3').set('xlabel', 'Temperature (W), Probe Pint');
model.result('pg3').set('windowtitle', 'Probe Plot 2');
model.result('pg3').set('xlabelactive', false);
model.result('pg3').feature('tblp1').label('Probe Table Graph 1');

model.result('pg4').label('Probe Plot Group 4');
model.result('pg4').set('xlabel', 'Temperature (W), Probe Pint');
model.result('pg4').set('windowtitle', 'Probe Plot 3');
model.result('pg4').set('xlabelactive', false);
model.result('pg4').feature('tblp1').label('Probe Table Graph 1');

model.result('pg5').feature('str1').set('descractive', true);
model.result('pg5').feature('str1').set('posmethod', 'magnitude');
model.result('pg5').feature('str1').set('mdist', [0.001 0.1]);
model.result('pg5').feature('str1').set('linetype', 'tube');
model.result('pg5').feature('str1').set('tuberadiusscale', 0.021250000000000015);
model.result('pg5').feature('str1').set('tuberadiusscaleactive', false);
model.result('pg5').feature('str1').set('resolution', 'normal');

model.result('pg6').feature('surf1').active(false);
model.result('pg6').feature('surf1').set('expr', 'T_flibe');
model.result('pg6').feature('surf1').set('unit', 'degC');
model.result('pg6').feature('surf1').set('descr', 'Temperature');
model.result('pg6').feature('surf1').set('resolution', 'normal');

model.result('pg6').feature('con1').set('expr', 'T_flibe');
model.result('pg6').feature('con1').set('unit', 'K');
model.result('pg6').feature('con1').set('descr', 'Temperature');
model.result('pg6').feature('con1').set('resolution', 'normal');

model.result('pg7').feature('surf1').set('expr', 'T_fuel');
model.result('pg7').feature('surf1').set('unit', 'degC');
model.result('pg7').feature('surf1').set('descr', 'Temperature');
model.result('pg7').feature('surf1').set('resolution', 'normal');

model.result('pg8').feature('surf1').set('expr', 'PdensityN');
model.result('pg8').feature('surf1').set('unit', 'W/m^3');
model.result('pg8').feature('surf1').set('descr', 'power density normalized to Pop');

model.result('pg8').feature('surf1').set('resolution', 'normal');
model.result('pg9').feature('surf1').set('expr', 'PintN');
model.result('pg9').feature('surf1').set('unit', 'W');
model.result('pg9').feature('surf1').set('descr', 'integrated total core power normalized to Pop, should be equal to Pop');
model.result('pg9').feature('surf1').set('resolution', 'normal');

model.result('pg10').feature('surf1').set('expr', 'w');
model.result('pg10').feature('surf1').set('descr', 'Velocity field, z component');
model.result('pg10').feature('surf1').set('resolution', 'normal');

model.result('pg11').feature('str1').set('data', 'cpl1');
model.result('pg11').feature('str1').set('planecoordsys', 'cartesian');
model.result('pg11').feature('str1').set('showzexpr', true);
model.result('pg11').feature('str1').set('expr', {'u' 'v' 'w'});
model.result('pg11').feature('str1').set('posmethod', 'magnitude');
model.result('pg11').feature('str1').set('resolution', 'normal');
model.result('pg11').feature('con1').set('expr', 'p');
model.result('pg11').feature('con1').set('unit', 'Pa');
model.result('pg11').feature('con1').set('descr', 'Pressure');
model.result('pg11').feature('con1').set('number', 50);
model.result('pg11').feature('con1').set('coloring', 'uniform');
model.result('pg11').feature('con1').set('color', 'black');
model.result('pg11').feature('con1').set('resolution', 'normal');


model.result('pg13').label('Thermal flux');
model.result('pg13').feature('surf1').set('expr', 'Flux5+Flux6+Flux7+Flux8');
model.result('pg13').feature('surf1').set('unit', '1/(m^2*s)');
model.result('pg13').feature('surf1').set('descr', 'Flux5+Flux6+Flux7+Flux8');
model.result('pg13').feature('surf1').set('resolution', 'normal');



model.result.export('img1').set('plotgroup', 'pg8');
model.result.export('img1').set('pngfilename', 'power');
model.result.export('img1').set('printunit', 'mm');
model.result.export('img1').set('webunit', 'px');
model.result.export('img1').set('printheight', '90');
model.result.export('img1').set('webheight', '600');
model.result.export('img1').set('printwidth', '120');
model.result.export('img1').set('webwidth', '800');
model.result.export('img1').set('printlockratio', 'off');
model.result.export('img1').set('weblockratio', 'off');
model.result.export('img1').set('printresolution', '300');
model.result.export('img1').set('webresolution', '96');
model.result.export('img1').set('size', 'manualprint');
model.result.export('img1').set('antialias', 'on');
model.result.export('img1').set('zoomextents', 'off');
model.result.export('img1').set('title', 'off');
model.result.export('img1').set('legend', 'off');
model.result.export('img1').set('logo', 'off');
model.result.export('img1').set('options', 'on');
model.result.export('img1').set('fontsize', '9');
model.result.export('img1').set('customcolor', [1 1 1]);
model.result.export('img1').set('background', 'current');
model.result.export('img1').set('axes', 'on');
model.result.export('img1').set('qualitylevel', '92');
model.result.export('img1').set('qualityactive', 'off');
model.result.export('img1').set('imagetype', 'png');


model.result.export('img2').set('plotgroup', 'pg13');
model.result.export('img2').set('pngfilename', 'thermal_flux');
model.result.export('img2').set('printunit', 'mm');
model.result.export('img2').set('webunit', 'px');
model.result.export('img2').set('printheight', '90');
model.result.export('img2').set('webheight', '600');
model.result.export('img2').set('printwidth', '120');
model.result.export('img2').set('webwidth', '800');
model.result.export('img2').set('printlockratio', 'off');
model.result.export('img2').set('weblockratio', 'off');
model.result.export('img2').set('printresolution', '300');
model.result.export('img2').set('webresolution', '96');
model.result.export('img2').set('size', 'manualprint');
model.result.export('img2').set('antialias', 'on');
model.result.export('img2').set('zoomextents', 'off');
model.result.export('img2').set('title', 'off');
model.result.export('img2').set('legend', 'off');
model.result.export('img2').set('logo', 'off');
model.result.export('img2').set('options', 'on');
model.result.export('img2').set('fontsize', '9');
model.result.export('img2').set('customcolor', [1 1 1]);
model.result.export('img2').set('background', 'current');
model.result.export('img2').set('axes', 'on');
model.result.export('img2').set('qualitylevel', '92');
model.result.export('img2').set('qualityactive', 'off');
model.result.export('img2').set('imagetype', 'png');

