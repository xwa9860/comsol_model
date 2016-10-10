clear all;
close all;

run('define_input_parameters.m')
run('create_comsol_model.m')
run('create_global_vars.m');
run('create_fcns.m')
run('create_geom.m')
run('create_vars.m')
run('create_mats.m')
%Heat transfer modules
run('create_ht_flibe.m');
if MultiScale
    run('create_ms_ht_in_pebble.m');
    model.variable.create('var25');
    model.variable('var25').model('mod1');
    model.variable('var25').set('T_fuel', 'Tpn');
else
    run('create_ht_fuel.m');
end

%Neutronics module
run('create_neutron_diffusion.m');
run('create_operations.m')
run('create_probes.m')

%% solvers
%% Eigenvalue calculation
run('create_eigen_solver.m')
model.sol('sol16').runAll;
lambda_eigen = mphglobal(model, 'lambda');
fprintf('\nThe eigenvalue with initial temperatures is\n');
fprintf('%.10f ', lambda_eigen);
% run the following only if needed
% run('calc_temperature_feedback_coefs.m'); 

%% steady state calculation
model.param.set('lambda_critical', lambda_eigen, 'lambda_engeinvalue to get to criticality');
model.variable.create('var19');
model.variable('var19').model('mod1');
model.variable('var19').set('lambda', 'lambda_critical');
model.variable('var19').label('lambda');
model.param.set('engenMode', '1', 'binary value for NON engenvalue mode(value = 1 if not engenvalue mode, value =0 if engenvalue mode)');
 
run('create_steady_state_solver.m')
model.sol('sol13').runAll;

% %% Rerun eigenvalue calculation with temperature profile from steady state
% % set to eigenvalue mode
% model.param.set('engenMode', '0', 'binary value for NON engenvalue mode(value = 1 if not engenvalue mode, value =0 if engenvalue mode)');
% % desable lambda
% model.variable('var19').active(false);
% % set the solver to take initial value from the previous steady state
% % results
% model.study('std2').feature('eigv').set('notsolnum', 'auto');
% model.study('std2').feature('eigv').set('notsolmethod', 'sol');
% model.study('std2').feature('eigv').set('usesol', 'on');
% model.study('std2').feature('eigv').set('eigwhich', 'sr');
% model.study('std2').feature('eigv').set('notstudy', 'std5');
% model.study('std2').feature('eigv').set('shift', '1');
% model.study('std2').feature('eigv').set('useinitsol', 'on');
% model.sol('sol16').runAll;
% 
% % get new lambda
% lambda_eigen_new = mphglobal(model, 'lambda');
% fprintf('\nThe new eigenvalue is\n');
% fprintf('%.10f ', lambda_eigen_new)
% model.param.set('lambda_critical', lambda_eigen_new, 'lambda_engeinvalue to get to criticality');

% %% Steady state calculation
% fprintf('\nRerun steady state calculation\n');
% model.variable('var19').active(true);
% model.param.set('engenMode', '1', 'binary value for NON engenvalue mode(value = 1 if not engenvalue mode, value =0 if engenvalue mode)');
% model.sol('sol13').runAll;
% 
% %% Rerun eigenvalue calculation with temperature profile from steady state
% % set to eigenvalue mode
% model.param.set('engenMode', '0', 'binary value for NON engenvalue mode(value = 1 if not engenvalue mode, value =0 if engenvalue mode)');
% % desable lambda
% model.variable('var19').active(false);
% model.sol('sol16').runAll;
% % get new lambda
% lambda_eigen_new = mphglobal(model, 'lambda');
% fprintf('\nThe new eigenvalue is\n');
% fprintf('%.10f ', lambda_eigen_new)
% model.param.set('lambda_critical', lambda_eigen_new, 'lambda_engeinvalue to get to criticality');
% 
% %% Scale the flux to power
% fprintf('\nScaling the flux and delayed neutron precursor concentration...\n');
% run('create_scaling_study.m')
% model.sol('sol15').runAll;
% 
% %% Transient calculation
% fprintf('\nRunning transient...\n');
% run('create_transient_study.m')
% %run('create_transient_results')
% %model.sol('sol4').runAll;
