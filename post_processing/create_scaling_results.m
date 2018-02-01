model.result.dataset('dset3').set('solution', 'sol15');
% dset3: scaling study results

%fast flux surface plot
model = plot_surf(model, 'dset3', 'FluxN1+FluxN2+FluxN3+FluxN4', 2, 'fast flux(steady state)');


% thermal flux surface plot
model = plot_surf(model, 'dset3', 'FluxN5+FluxN6+FluxN7+FluxN8', 2, 'thermal flux(steady state)');
