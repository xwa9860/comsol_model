%{
 Create steady state results: tables and plots
%}

%% change the dataset for cp11 from eigenvalue solution to steady state solution
model.result.dataset('cpl1').set('data', 'dset2');


%% evaluate mass flow rate at inlets
model.result.table.create('tbl2', 'Table');
model.result.numerical.create('int1', 'IntSurface');
model.result.numerical.create('int2', 'IntSurface');
model.result.numerical('int1').set('data', 'dset2');
model.result.numerical('int1').selection.set(in_bound2);
model.result.numerical('int1').set('probetag', 'none');
model.result.numerical('int2').set('data', 'dset2');
model.result.numerical('int2').selection.set(in_bound3);
model.result.numerical('int2').set('probetag', 'none');
model.result.numerical('int1').label('center inlet mass flow rate');
model.result.numerical('int1').set('table', 'tbl2');
model.result.numerical('int1').set('expr', {'(u*nx+v*ny+w*nz)*rhoL'});
model.result.numerical('int1').set('unit', {'kg/s'});
model.result.numerical('int1').set('descr', {''});
model.result.numerical('int2').label('upper inlet mass flow rate');
model.result.numerical('int2').set('table', 'tbl2');
model.result.numerical('int2').set('expr', {'(u*nx+v*ny+w*nz)*rhoL'});
model.result.numerical('int2').set('unit', {'kg/s'});
model.result.numerical('int2').set('descr', {''});
model.result.numerical('int1').setResult;
model.result.numerical('int2').appendResult;

%% plots
model = create_a_surf_plot(model, 'cpl1', 'T_flibe', 'T_flibe(steady state)', 'degC');
model = create_a_surf_plot(model, 'cpl1', 'T_fuel', 'T_fuel(steady state)', 'degC');
model = create_a_surf_plot(model, 'cpl1', 'T_fuel-T_flibe', 'T_fuel-T_flibe(steady state)', 'degC');
model = create_a_surf_plot(model, 'cpl1', 'Pdensity', 'Pdensity(steady state)(W/m<sup>3</sup>)','W/m^3');

%fast flux surface plot
model = create_a_surf_plot(model, 'cpl1', 'FluxN1+FluxN2+FluxN3+FluxN4', 'fast flux(steady state)');

% thermal flux surface plot
model = create_a_surf_plot(model, 'cpl1', 'FluxN5+FluxN6+FluxN7+FluxN8', ...
                           'thermal flux(steady state)');

model = create_a_surf_plot(model, 'cpl1', 'h_conv',...
                           'h_conv', 'W/(m^2*K)',...
                           '(2+1.1*Pr^(1/3)*(rhoL*d*br.U/muL)^0.6)*kL/d',...
                           'hconv(wakao)(W/m2.K)');

model = create_a_surf_plot(model, 'cpl1', 'rhoL*d*br.U/muL', ...
                           'Re', '1',...
                           'Re',...
                           'Re');
    
% % Streamline
model = create_streamline_plot(model);



% % exports
% %model = export_image(model, 'img1', 'pg8');
% 
% 
% % model.result.export.create('img2', 'Image2D');
% % model.result.export.create('img3', 'Image2D');
% % model.result.export.create('img4', 'Image2D');
% % model.result.export.create('img5', 'Image2D');
% % model.result.export.create('img6', 'Image2D');
% % model.result.export.create('img7', 'Image2D');
% % model.result.export.create('img8', 'Image1D');
% % model.result.export.create('img9', 'Image2D');
% 
% 
% 
% % model.result.export('img2').label('thermal flux');
% % model.result.export('img2').set('plotgroup', 'pg13');
% % model.result.export('img2').set('printlockratio', false);
% % model.result.export('img2').set('pngfilename', 'thermal_flux');
% % model.result.export('img2').set('printunit', 'mm');
% % model.result.export('img2').set('webunit', 'px');
% % model.result.export('img2').set('printheight', '90');
% % model.result.export('img2').set('webheight', '600');
% % model.result.export('img2').set('printwidth', '120');
% % model.result.export('img2').set('webwidth', '800');
% % model.result.export('img2').set('printlockratio', 'off');
% % model.result.export('img2').set('weblockratio', 'off');
% % model.result.export('img2').set('printresolution', '300');
% % model.result.export('img2').set('webresolution', '96');
% % model.result.export('img2').set('size', 'manualprint');
% % model.result.export('img2').set('antialias', 'on');
% % model.result.export('img2').set('zoomextents', 'off');
% % model.result.export('img2').set('title', 'on');
% % model.result.export('img2').set('legend', 'on');
% % model.result.export('img2').set('logo', 'off');
% % model.result.export('img2').set('options', 'on');
% % model.result.export('img2').set('fontsize', '9');
% % model.result.export('img2').set('customcolor', [1 1 1]);
% % model.result.export('img2').set('background', 'current');
% % model.result.export('img2').set('axes', 'on');
% % model.result.export('img2').set('qualitylevel', '92');
% % model.result.export('img2').set('qualityactive', 'off');
% % model.result.export('img2').set('imagetype', 'png');
% % 
% % model.result.export('img3').label('fast flux');
% % model.result.export('img3').set('plotgroup', 'pg9');
% % model.result.export('img3').set('printlockratio', false);
% % model.result.export('img3').set('pngfilename', 'fast_flux');
% % model.result.export('img3').set('printunit', 'mm');
% % model.result.export('img3').set('webunit', 'px');
% % model.result.export('img3').set('printheight', '90');
% % model.result.export('img3').set('webheight', '600');
% % model.result.export('img3').set('printwidth', '120');
% % model.result.export('img3').set('webwidth', '800');
% % model.result.export('img3').set('printlockratio', 'off');
% % model.result.export('img3').set('weblockratio', 'off');
% % model.result.export('img3').set('printresolution', '300');
% % model.result.export('img3').set('webresolution', '96');
% % model.result.export('img3').set('size', 'manualprint');
% % model.result.export('img3').set('antialias', 'on');
% % model.result.export('img3').set('zoomextents', 'off');
% % model.result.export('img3').set('title', 'on');
% % model.result.export('img3').set('legend', 'on');
% % model.result.export('img3').set('logo', 'off');
% % model.result.export('img3').set('options', 'on');
% % model.result.export('img3').set('fontsize', '9');
% % model.result.export('img3').set('customcolor', [1 1 1]);
% % model.result.export('img3').set('background', 'current');
% % model.result.export('img3').set('axes', 'on');
% % model.result.export('img3').set('qualitylevel', '92');
% % model.result.export('img3').set('qualityactive', 'off');
% % model.result.export('img3').set('imagetype', 'png');
% % 
% % model.result.export('img4').label('fuel T');
% % model.result.export('img4').set('plotgroup', 'pg7');
% % model.result.export('img4').set('printlockratio', false);
% % model.result.export('img4').set('pngfilename', 'T_fuel');
% % model.result.export('img4').set('printunit', 'mm');
% % model.result.export('img4').set('webunit', 'px');
% % model.result.export('img4').set('printheight', '90');
% % model.result.export('img4').set('webheight', '600');
% % model.result.export('img4').set('printwidth', '120');
% % model.result.export('img4').set('webwidth', '800');
% % model.result.export('img4').set('printlockratio', 'off');
% % model.result.export('img4').set('weblockratio', 'off');
% % model.result.export('img4').set('printresolution', '300');
% % model.result.export('img4').set('webresolution', '96');
% % model.result.export('img4').set('size', 'manualprint');
% % model.result.export('img4').set('antialias', 'on');
% % model.result.export('img4').set('zoomextents', 'off');
% % model.result.export('img4').set('title', 'on');
% % model.result.export('img4').set('legend', 'on');
% % model.result.export('img4').set('logo', 'off');
% % model.result.export('img4').set('options', 'on');
% % model.result.export('img4').set('fontsize', '9');
% % model.result.export('img4').set('customcolor', [1 1 1]);
% % model.result.export('img4').set('background', 'current');
% % model.result.export('img4').set('axes', 'on');
% % model.result.export('img4').set('qualitylevel', '92');
% % model.result.export('img4').set('qualityactive', 'off');
% % model.result.export('img4').set('imagetype', 'png');
% % 
% % model.result.export('img5').label('flibe T');
% % model.result.export('img5').set('printlockratio', false);
% % model.result.export('img5').set('pngfilename', 'T_flibe');
% % model.result.export('img5').set('printunit', 'mm');
% % model.result.export('img5').set('webunit', 'px');
% % model.result.export('img5').set('printheight', '90');
% % model.result.export('img5').set('webheight', '600');
% % model.result.export('img5').set('printwidth', '120');
% % model.result.export('img5').set('webwidth', '800');
% % model.result.export('img5').set('printlockratio', 'off');
% % model.result.export('img5').set('weblockratio', 'off');
% model.result.export('img5').set('printresolution', '300');
% model.result.export('img5').set('webresolution', '96');
% model.result.export('img5').set('size', 'manualprint');
% model.result.export('img5').set('antialias', 'on');
% model.result.export('img5').set('zoomextents', 'off');
% model.result.export('img5').set('title', 'on');
% model.result.export('img5').set('legend', 'on');
% model.result.export('img5').set('logo', 'off');
% model.result.export('img5').set('options', 'on');
% model.result.export('img5').set('fontsize', '9');
% model.result.export('img5').set('customcolor', [1 1 1]);
% model.result.export('img5').set('background', 'current');
% model.result.export('img5').set('axes', 'on');
% model.result.export('img5').set('qualitylevel', '92');
% model.result.export('img5').set('qualityactive', 'off');
% model.result.export('img5').set('imagetype', 'png');
% 
% model.result.export('img6').label('flow');
% model.result.export('img6').set('plotgroup', 'pg11');
% model.result.export('img6').set('printlockratio', false);
% model.result.export('img6').set('pngfilename', 'flow');
% model.result.export('img6').set('printunit', 'mm');
% model.result.export('img6').set('webunit', 'px');
% model.result.export('img6').set('printheight', '90');
% model.result.export('img6').set('webheight', '600');
% model.result.export('img6').set('printwidth', '120');
% model.result.export('img6').set('webwidth', '800');
% model.result.export('img6').set('printlockratio', 'off');
% model.result.export('img6').set('weblockratio', 'off');
% model.result.export('img6').set('printresolution', '300');
% model.result.export('img6').set('webresolution', '96');
% model.result.export('img6').set('size', 'manualprint');
% model.result.export('img6').set('antialias', 'on');
% model.result.export('img6').set('zoomextents', 'off');
% model.result.export('img6').set('title', 'on');
% model.result.export('img6').set('legend', 'on');
% model.result.export('img6').set('logo', 'off');
% model.result.export('img6').set('options', 'on');
% model.result.export('img6').set('fontsize', '9');
% model.result.export('img6').set('customcolor', [1 1 1]);
% model.result.export('img6').set('background', 'current');
% model.result.export('img6').set('axes', 'on');
% model.result.export('img6').set('qualitylevel', '92');
% model.result.export('img6').set('qualityactive', 'off');
% model.result.export('img6').set('imagetype', 'png');
% model.result.export('img7').label('deltaT');
% model.result.export('img7').set('plotgroup', 'pg23');
% model.result.export('img7').set('pngfilename', 'deltaT');
% model.result.export('img7').set('printunit', 'mm');
% model.result.export('img7').set('webunit', 'px');
% model.result.export('img7').set('printheight', '90');
% model.result.export('img7').set('webheight', '600');
% model.result.export('img7').set('printwidth', '120');
% model.result.export('img7').set('webwidth', '800');
% model.result.export('img7').set('printlockratio', 'off');
% model.result.export('img7').set('weblockratio', 'off');
% model.result.export('img7').set('printresolution', '300');
% model.result.export('img7').set('webresolution', '96');
% model.result.export('img7').set('size', 'manualprint');
% model.result.export('img7').set('antialias', 'on');
% model.result.export('img7').set('zoomextents', 'off');
% model.result.export('img7').set('title', 'on');
% model.result.export('img7').set('legend', 'on');
% model.result.export('img7').set('logo', 'off');
% model.result.export('img7').set('options', 'on');
% model.result.export('img7').set('fontsize', '9');
% model.result.export('img7').set('customcolor', [1 1 1]);
% model.result.export('img7').set('background', 'current');
% model.result.export('img7').set('axes', 'on');
% model.result.export('img7').set('qualitylevel', '92');
% model.result.export('img7').set('qualityactive', 'off');
% model.result.export('img7').set('imagetype', 'png');
% model.result.export('img8').label('outlet_T_flibe');
% model.result.export('img8').set('plotgroup', 'pg18');
% model.result.export('img8').set('pngfilename', 'outlet_T_flibe');
% model.result.export('img8').set('printunit', 'mm');
% model.result.export('img8').set('webunit', 'px');
% model.result.export('img8').set('printheight', '90');
% model.result.export('img8').set('webheight', '600');
% model.result.export('img8').set('printwidth', '120');
% model.result.export('img8').set('webwidth', '800');
% model.result.export('img8').set('printlockratio', 'off');
% model.result.export('img8').set('weblockratio', 'off');
% model.result.export('img8').set('printresolution', '300');
% model.result.export('img8').set('webresolution', '96');
% model.result.export('img8').set('size', 'manualprint');
% model.result.export('img8').set('antialias', 'on');
% model.result.export('img8').set('zoomextents', 'off');
% model.result.export('img8').set('title', 'on');
% model.result.export('img8').set('legend', 'on');
% model.result.export('img8').set('logo', 'off');
% model.result.export('img8').set('options', 'on');
% model.result.export('img8').set('fontsize', '9');
% model.result.export('img8').set('customcolor', [1 1 1]);
% model.result.export('img8').set('background', 'current');
% model.result.export('img8').set('axes', 'on');
% model.result.export('img8').set('showgrid', 'on');
% model.result.export('img8').set('qualitylevel', '92');
% model.result.export('img8').set('qualityactive', 'off');
% model.result.export('img8').set('imagetype', 'png');
% model.result.export('img9').label('h_conv');
% model.result.export('img9').set('plotgroup', 'pg19');
% model.result.export('img9').set('pngfilename', 'h_conv');
% model.result.export('img9').set('printunit', 'mm');
% model.result.export('img9').set('webunit', 'px');
% model.result.export('img9').set('printheight', '90');
% model.result.export('img9').set('webheight', '600');
% model.result.export('img9').set('printwidth', '120');
% model.result.export('img9').set('webwidth', '800');
% model.result.export('img9').set('printlockratio', 'off');
% model.result.export('img9').set('weblockratio', 'off');
% model.result.export('img9').set('printresolution', '300');
% model.result.export('img9').set('webresolution', '96');
% model.result.export('img9').set('size', 'manualprint');
% model.result.export('img9').set('antialias', 'on');
% model.result.export('img9').set('zoomextents', 'off');
% model.result.export('img9').set('title', 'on');
% model.result.export('img9').set('legend', 'on');
% model.result.export('img9').set('logo', 'off');
% model.result.export('img9').set('options', 'on');
% model.result.export('img9').set('fontsize', '9');
% model.result.export('img9').set('customcolor', [1 1 1]);
% model.result.export('img9').set('background', 'current');
% model.result.export('img9').set('axes', 'on');
% model.result.export('img9').set('qualitylevel', '92');
% model.result.export('img9').set('qualityactive', 'off');
% model.result.export('img9').set('imagetype', 'png');
% 
% 
