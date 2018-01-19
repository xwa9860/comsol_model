model.result.dataset.create('cpl2', 'CutPlane');
model.result.dataset('cpl2').set('data', 'dset3');
model.result.dataset('cpl2').set('spacevars', {'cpl1x' 'cpl1y'});
model.result.dataset('cpl2').set('normal', {'cpl1nx' 'cpl1ny' 'cpl1nz'});
model.result.dataset('cpl2').set('spacevars', {'cpl1x' 'cpl1y'});
model.result.dataset('cpl2').set('normal', {'cpl1nx' 'cpl1ny' 'cpl1nz'});
%fast flux surface plot
model = create_a_surf_plot(model, 'cpl1', 'FluxN1+FluxN2+FluxN3+FluxN4', ...
'fast flux(steady state)', '1/(m^2*s)'...
'FluxN1+FluxN2+FluxN3+FluxN4',  'Fast flux (1/(m<sup>2</sup>*s))');

% thermal flux surface plot
model = create_a_surf_plot(model, 'cpl2', 'FluxN5+FluxN6+FluxN7+FluxN8', ...
                           'thermal flux(steady state)', '1/(m^2*s)',...
                           'FluxN5+FluxN6+FluxN7+FluxN8',  'Thermal flux (1/(m<sup>2</sup>*s))');

model = create_a_surf_plot(model, 'cpl2', 'Pdensity', 'Pdensity(steady state)(W/m<sup>3</sup>)','W/m^3');
