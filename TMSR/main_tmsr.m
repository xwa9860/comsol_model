clear all;
close all;


fprintf('Define paramet used in the matlab model\n')
run('model_attributes.m');
run('create_model.m');

%% solvers
model = create_eigenvalue_solver(model, isTMSR);
model = create_steady_state_solver(model);

%% Eigenvalue calculation
isInitialRun = true;
[model, lambda_eigen] = run_eigen_solver(model, 'eigen.mph', isInitialRun);
% run the following line only if needed
%run('calc_temperature_feedback_coefs.m'); 

%% iterate betwen eigenvalue and steady state computation until the result converges
new_eigen = 0;
while abs(new_eigen - lambda_eigen) > 0.001
    % fprintf('\nRun steady state study\n');
    model = run_steady_state_solver(model, lambda_eigen, 'ss.mph');    
    % Rerun eigenvalue calculation with temperature profile from steady state
    lambda_eigen = new_eigen;
    [model, new_eigen] = run_eigen_solver(model, 'eigen.mph', false);
end
model = run_steady_state_solver(model, lambda_eigen, 'ss.mph');    

%% Scale the flux to power
fprintf('\nScaling the flux and delayed neutron precursor concentration...\n');
run('create_scaling_study.m')
model.sol('sol15').runAll; 
run('create_steady_state_results')
mphsave(model, [output_path 'scaling.mph']);

% %%Transient calculation
% fprintf('\nRunning transient...\n');
% run('create_transient_study.m')
% model.physics('ht_flibe').feature('temp1').set('T0', 'T_inlet+rm1(t/1[s])');
% model.sol('sol4').runAll;
% run('create_transient_results');


