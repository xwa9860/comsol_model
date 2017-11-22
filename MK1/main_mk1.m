clear all;
close all;
fprintf('define parameters used in matlab\n')
run('model_attributes.m');

run('create_model.m');

%% solvers
%% Eigenvalue calculation with inital values and fixed XS
tic
fprintf('Creating eigenvalue study\n');
run('create_eigen_solver.m');
fprintf('Running eigenvalue study\n');
model.sol('sol16').runAll;
lambda_eigen = mphglobal(model, 'lambda');
fprintf('\nThe eigenvalue with initial temperatures is\n');
fprintf('%.10f \n', lambda_eigen);

run('create_3d_eigen_results.m');
mphsave(model, [output_path, 'Mk1_1st_eig.mph']); % save intermediate solutions
toc
% run the following line only if needed
%run('calc_temperature_feedback_coefs.m'); 
% 
% %% steady state calculation
% tic
% fprintf('\nCreating steady state study\n');
% model.physics('ht').feature('fluid1').setIndex('minput_velocity_src', 'root.mod1.u', 0);
% model.physics('ht').feature('fluid1').setIndex('minput_pressure_src', 'root.mod1.br.pA', 0);
% model.param.set('lambda_critical', lambda_eigen, 'lambda_engeinvalue to get to criticality');
% model.variable.create('var19');
% model.variable('var19').model('mod1');
% model.variable('var19').set('lambda', 'lambda_critical');
% model.variable('var19').label('lambda');
% model.param.set('eigenMode', '1', 'binary value for NON eigenvalue mode(value = 1 if not eigenvalue mode, value =0 if eigenvalue mode)');
%   
% run('create_steady_state_solver.m');
% fprintf('\nRunning steady state study\n');
% model.sol('sol13').runAll;
% mphsave(model, [output_path, 'Mk1_1st_ss.mph']);
% toc
% 
% 
% % Rerun eigenvalue calculation with temperature profile from steady state
% tic
% % set to eigenvalue mode
% model.param.set('eigenMode', '0', 'binary value for NON engenvalue mode(value = 1 if not eigenvalue mode, value =0 if eigenvalue mode)');
% % desable lambda
% model.variable('var19').active(false);
% % set the solver to take initial value from the previous steady state
% % results
% % model.study('std2').feature('eigv').set('notsolnum', 'auto');
% % model.study('std2').feature('eigv').set('notsolmethod', 'sol');
% % model.study('std2').feature('eigv').set('usesol', 'on');
% % model.study('std2').feature('eigv').set('eigwhich', 'sr');
% % model.study('std2').feature('eigv').set('notstudy', 'std5');
% % model.study('std2').feature('eigv').set('shift', '1');
% % model.study('std2').feature('eigv').set('useinitsol', 'on');
% 
% model.study('std2').feature('eigv').set('neigs', 1);
% model.study('std2').feature('eigv').set('eigunit', '');
% model.study('std2').feature('eigv').set('shift', '1');
% model.study('std2').feature('eigv').set('shiftactive', true);
% model.study('std2').feature('eigv').set('useinitsol', true);
% model.study('std2').feature('eigv').set('initmethod', 'sol');
% model.study('std2').feature('eigv').set('initstudy', 'std2');
% model.study('std2').feature('eigv').set('solnum', 'auto');
% model.study('std2').feature('eigv').set('usesol', true);
% model.study('std2').feature('eigv').set('notsolmethod', 'sol');
% model.study('std2').feature('eigv').set('notstudy', 'std5');
% model.study('std2').feature('eigv').set('notsolnum', 'auto');
% model.study('std2').feature('eigv').set('neigsactive', false);
% model.sol('sol16').attach('std2');
% model.sol('sol16').feature('v1').set('initmethod', 'sol');
% model.sol('sol16').feature('v1').set('initsol', 'sol16');
% model.sol('sol16').feature('v1').set('solnum', 'auto');
% model.sol('sol16').feature('v1').set('notsolmethod', 'sol');
% model.sol('sol16').feature('v1').set('notsol', 'sol13');
% model.sol('sol16').feature('v1').set('notsolnum', 'auto');
% model.sol('sol16').feature('e1').set('rtol', 1.0E-4);
% model.sol('sol16').feature('e1').set('neigs', 1);
% model.sol('sol16').feature('e1').set('shift', '1');
% model.sol('sol16').feature('e1').set('maxeigit', 100);
% model.sol('sol16').feature('e1').set('krylovdim', 15);
% model.sol('sol16').feature('e1').set('keeplog', true);
% 
% model.sol('sol16').runAll;
% mphsave(model, [output_path, 'Mk1_2nd_eig.mph']);
% % get new lambda
% lambda_eigen_new = mphglobal(model, 'lambda');
% fprintf('\nThe new eigenvalue is\n');
% fprintf('%.10f ', lambda_eigen_new)
% model.param.set('lambda_critical', lambda_eigen_new, 'lambda_engeinvalue to get to criticality');
% toc
% 
% %% Steady state calculation
% fprintf('\nRerun steady state calculation\n');
% model.variable('var19').active(true);
% 
% model.physics('ht').feature('fluid1').setIndex('minput_velocity_src', 'root.mod1.u', 0);
% model.physics('ht').feature('fluid1').setIndex('minput_pressure_src', 'root.mod1.br.pA', 0);
% 
% model.param.set('eigenMode', '1', 'binary value for NON eigenvalue mode(value = 1 if not eigenvalue mode, value =0 if eigenvalue mode)');
% model.sol('sol13').runAll;
% mphsave(model, [output_path, 'Mk1_2nd_ss.mph']);

% 
% %% Rerun eigenvalue calculation with temperature profile from steady state
% % set to eigenvalue mode
% model.param.set('eigenMode', '0', 'binary value for NON eigenvalue mode(value = 1 if not eigenvalue mode, value =0 if eigenvalue mode)');
% % desable lambda
% model.variable('var19').active(false);
% model.sol('sol16').runAll;
% mphsave(model, 'results\Mk1_steady_state\Mk1_3rd_eig.mph');
% 
% % get new lambda
% lambda_eigen_new = mphglobal(model, 'lambda');
% fprintf('\nThe new eigenvalue is\n');
% fprintf('%.10f ', lambda_eigen_new)
% model.param.set('lambda_critical', lambda_eigen_new, 'lambda_engeinvalue to get to criticality');
% 
% %% Steady state calculation
% fprintf('\nRerun steady state calculation\n');
% model.variable('var19').active(true);
% 
% model.physics('ht').feature('fluid1').setIndex('minput_velocity_src', 'root.mod1.u', 0);
% model.physics('ht').feature('fluid1').setIndex('minput_pressure_src', 'root.mod1.br.pA', 0);
% 
% model.param.set('eigenMode', '1', 'binary value for NON eigenvalue mode(value = 1 if not eigenvalue mode, value =0 if eigenvalue mode)');
% model.sol('sol13').runAll;
% mphsave(model, 'results\Mk1_steady_state\Mk1_3rd_ss.mph');
%%% Rerun eigenvalue calculation with temperature profile from steady state
%% set to eigenvalue mode
% model.param.set('eigenMode', '0', 'binary value for NON eigenvalue mode(value = 1 if not eigenvalue mode, value =0 if eigenvalue mode)');
% % desable lambda
% model.variable('var19').active(false);
% model.sol('sol16').runAll;
% % get new lambda
% lambda_eigen_new = mphglobal(model, 'lambda');
% fprintf('\nThe new eigenvalue is\n');
% fprintf('%.10f ', lambda_eigen_new)
% model.param.set('lambda_critical', lambda_eigen_new, 'lambda_engeinvalue to get to criticality');
% 
% %% Steady state calculation
% fprintf('\nRerun steady state calculation\n');
% model.variable('var19').active(true);
% 
% model.physics('ht').feature('fluid1').setIndex('minput_velocity_src', 'root.mod1.u', 0);
% model.physics('ht').feature('fluid1').setIndex('minput_pressure_src', 'root.mod1.br.pA', 0);
% 
% model.param.set('eigenMode', '1', 'binary value for NON eigenvalue mode(value = 1 if not eigenvalue mode, value =0 if eigenvalue mode)');
% model.sol('sol13').runAll;

% % % %% Rerun eigenvalue calculation with temperature profile from steady state
% % % % set to eigenvalue mode
% % % model.param.set('eigenMode', '0', 'binary value for NON eigenvalue mode(value = 1 if not eigenvalue mode, value =0 if eigenvalue mode)');
% % % % desable lambda
% % % model.variable('var19').active(false);
% % % model.sol('sol16').runAll;
% % % % get new lambda
% % % lambda_eigen_new = mphglobal(model, 'lambda');
% % % fprintf('\nThe new eigenvalue is\n');
% % % fprintf('%.10f ', lambda_eigen_new)
% % % model.param.set('lambda_critical', lambda_eigen_new, 'lambda_engeinvalue to get to criticality');
% model = mphload('results\Mk1_steady_state\Mk1_3rd_ss.mph');
% %Scale the flux to power
% fprintf('\nScaling the flux and delayed neutron precursor concentration...\n');
% run('create_scaling_study.m')
% model.sol('sol15').runAll; 
% 
% run('create_3d_steady_state_results')
% mphsave(model, 'results\Mk1_steady_state\Mk1_scaling.mph');
% % %% Transient calculation
% % % fprintf('\nRunning transient...\n');
% % % run('create_transient_study.m')
% % % model.physics('ht').feature('temp1').set('T0', 'T_inlet+rm1(t/1[s])');
% % %model.sol('sol4').runAll;
% % %run('create_transient_results')
% % 
