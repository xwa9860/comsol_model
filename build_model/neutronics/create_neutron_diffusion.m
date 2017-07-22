%model.variable('var23').active(true);
% add delayed neutrons 
model.physics.create('neutrondiffusion', 'CoefficientFormPDE', 'geom1');
model.physics('neutrondiffusion').identifier('neutrondiffusion');
model.physics('neutrondiffusion').field('dimensionless').field('Flux');
% add DE model
if sp3
    model.physics('neutrondiffusion').field('dimensionless').component({'Flux1' 'Flux2' 'Flux3' 'Flux4' 'Flux5' 'Flux6' 'Flux7' 'Flux8' ...
    'Flux21' 'Flux22' 'Flux23' 'Flux24' 'Flux25' 'Flux26' 'Flux27' 'Flux28'...    
    'Conc1' 'Conc2' 'Conc3' 'Conc4' 'Conc5' 'Conc6'});
else
    model.physics('neutrondiffusion').field('dimensionless').component({'Flux1' 'Flux2' 'Flux3' 'Flux4' 'Flux5' 'Flux6' 'Flux7' 'Flux8' ... 
    'Conc1' 'Conc2' 'Conc3' 'Conc4' 'Conc5' 'Conc6'});
end

model.physics('neutrondiffusion').create('dir1', 'DirichletBoundary', dimNb-1);
model.physics('neutrondiffusion').feature('dir1').selection.set(dirichelet_b); 
model.physics('neutrondiffusion').create('flux1', 'FluxBoundary', dimNb-1);

% model.physics('neutrondiffusion').label('neutron_diffusion');
model.physics('neutrondiffusion').prop('Units').set('SourceTermQuantity', 'productionrate');
model.physics('neutrondiffusion').prop('Units').set('DependentVariableQuantity', 'particleflux');

% set the comsol PDE parameters
run('set_neutron_diffusion_with_DNP_in_Comsol.m')

