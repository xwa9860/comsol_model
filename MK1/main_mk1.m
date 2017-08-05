clear all;
close all;
format long e;
format longEng

TMSR = false;
data_path = 'MK1\XS_data\';

tic
run('model_attributes.m');
run('create_comsol_model.m');
run('create_common_global_vars.m');
run('create_global_vars.m');
run('create_fcns.m');
run('create_geom.m');
toc
run('create_vars.m');
toc
run('create_mats.m');

run('create_porous_media')
%Heat transfer modules
run('create_ht_flibe.m');
if MultiScale
    run('create_ms_ht_in_pebble.m');
    model.variable.create('var25');
    model.variable('var25').model('mod1');
    model.variable('var25').set('T_fuel', '(Tp2+Tp22+Tp23+Tp24+Tp25+Tp26+Tp27+Tp3+Tp32+Tp33+Tp34+Tp35+Tp36+Tp37+Tp4+Tp42+Tp43+Tp44+Tp45+Tp46+Tp47)/21.0');
else
    run('create_ht_fuel.m');
end 


%Neutronics module
run('create_neutron_diffusion.m');
toc
%Math operatoins
run('create_operations.m');

%Probes to get desired variable values during transient
run('create_probes.m');
% 
%% solvers
%% Eigenvalue calculation with inital values and fixed XS
run('create_eigen_solver.m');
model.physics('ht3').active(false);
model.physics('ht').active(false);
model.physics('br').active(false);
fprintf('Run eigenvalue study');
model.sol('sol16').runAll;

lambda_eigen = mphglobal(model, 'lambda');
fprintf('\nThe eigenvalue with initial temperatures is\n');
fprintf('%.10f \n', lambda_eigen);

% using the fitted XS function for fuel
model.variable('var_xs_fuel').active(false);
 
model.variable.create('var_T_temporary');
model.variable('var_T_temporary').model('mod1');
model.variable('var_T_temporary').set('T_flibe', 'T0_flibe', 'temporary value for T_flibe to compute fuel region XS');
model.variable('var_T_temporary').set('T_fuel', 'T0_fuel', 'temporary value for T_fuel to compute fuel region XS');
model.variable('var_T_temporary').selection.geom('geom1', dimNb);
model.variable('var_T_temporary').selection.set(domains('fuel'));
model.variable('var_T_temporary').label('temporary T');

model.variable.create('var16');
model.variable('var16').model('mod1');
model = process_fuel(model, char(strcat(data_path, universe_names(fuel_univ), "\")), data_units, 'var16', unb, fuel_univ, TMSR);
model.variable('var16').selection.geom('geom1', dimNb);
model.variable('var16').selection.set(fuel_domNb);
model.variable('var16').label('XS_pb');

fprintf('Run eigenvalue study');
%model.sol('sol16').runAll;


% 
% % %% run the following line only if needed
% % %run('calc_temperature_feedback_coefs.m'); 
% % 
% %% steady state calculation
% model.physics('ht3').active(true);
% model.physics('ht').active(true);
% model.physics('br').active(true);
% 
% model.physics('ht').feature('fluid1').setIndex('minput_velocity_src', 'root.mod1.u', 0);
% model.physics('ht').feature('fluid1').setIndex('minput_pressure_src', 'root.mod1.br.pA', 0);
%     
% fprintf('\nRun steady state study\n');
% model.param.set('lambda_critical', lambda_eigen, 'lambda_engeinvalue to get to criticality');
% model.variable.create('var19');
% model.variable('var19').model('mod1');
% model.variable('var19').set('lambda', 'lambda_critical');
% model.variable('var19').label('lambda');
% model.param.set('eigenMode', '1', 'binary value for NON eigenvalue mode(value = 1 if not eigenvalue mode, value =0 if eigenvalue mode)');
% %  
% run('create_steady_state_solver.m');
% model.sol('sol13').runAll;
% 
% %% Rerun eigenvalue calculation with temperature profile from steady state
% % set to eigenvalue mode
% model.physics('ht3').active(false);
% model.physics('ht').active(false);
% model.physics('br').active(false);
% 
% model.param.set('eigenMode', '0', 'binary value for NON engenvalue mode(value = 1 if not eigenvalue mode, value =0 if eigenvalue mode)');
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
% 
% %% Steady state calculation
% fprintf('\nRerun steady state calculation\n');
% model.variable('var19').active(true);
% model.physics('ht3').active(true);
% model.physics('ht').active(true);
% model.physics('br').active(true);
% 
% model.physics('ht').feature('fluid1').setIndex('minput_velocity_src', 'root.mod1.u', 0);
% model.physics('ht').feature('fluid1').setIndex('minput_pressure_src', 'root.mod1.br.pA', 0);
% 
% model.param.set('eigenMode', '1', 'binary value for NON eigenvalue mode(value = 1 if not eigenvalue mode, value =0 if eigenvalue mode)');
% model.sol('sol13').runAll;
% 
% %% Rerun eigenvalue calculation with temperature profile from steady state
% % set to eigenvalue mode
% model.param.set('eigenMode', '0', 'binary value for NON eigenvalue mode(value = 1 if not eigenvalue mode, value =0 if eigenvalue mode)');
% % desable lambda
% model.variable('var19').active(false);
% model.sol('sol16').runAll;
% % get new lambda
% lambda_eigen_new = mphglobal(model, 'lambda');
% fprintf('\nThe new eigenvalue is\n');
% fprintf('%.10f ', lambda_eigen_new)
% model.param.set('lambda_critical', lambda_eigen_new, 'lambda_engeinvalue to get to criticality');
% %% Scale the flux to power
% fprintf('\nScaling the flux and delayed neutron precursor concentration...\n');
% run('create_scaling_study.m')
% model.sol('sol15').runAll; 
% 
% run('create_steady_state_results')
% 
% %% Transient calculation
% fprintf('\nRunning transient...\n');
% run('create_transient_study.m')
% model.physics('ht').feature('temp1').set('T0', 'T_inlet+rm1(t/1[s])');
%model.sol('sol4').runAll;
%run('create_transient_results')

% 
