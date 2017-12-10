
fprintf('creating a model object in the server\n')
run('create_comsol_model.m');

fprintf('creating global variables\n')
% common ones for TMSR and Mk1, avoiding duplication of code
run('create_common_global_vars.m');
% specific for Mk1 or TMSR
run('create_global_vars.m');

fprintf('creating function, such as step, ramp, ... functions\n')
run('create_fcns.m');

fprintf('creating geometry\n')
run('create_geom.m');
run('create_mesh.m');
tic
fprintf('creating variables\n')
run('create_vars.m');
toc

fprintf('creating materials\n')
run('create_mats.m');

fprintf('creating physics\n')
if ~isTMSR
    run('create_porous_media');
end
%Heat transfer modules
run('create_ht_flibe.m');

if isMultiScale
    run('create_ht_fuel_resistance.m');
    model.variable.create('var25');
    model.variable('var25').model('mod1');
    model.variable('var25').set('T_fuel', 'Tp44');
else
    run('create_ht_fuel.m');
end 
%Neutronics module
run('create_neutron_diffusion.m');

%Math operatoins, such as integration, for probes
run('create_operations.m');
%Probes to get desired variable values during transient
run('create_probes.m');
