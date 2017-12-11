clear all;
close all;

fprintf('Define parameters used in matlab\n')
run('model_attributes.m');

loadSSFromFile = false;
if loadSSFromFile
    model = mphload([output_path, 'ss.mph']);
else
    loadEigenFromFile = false;
    if loadEigenFromFile
        model = mphload([output_path, 'eigen.mph']);
        lambda_eigen = mphglobal(model, 'lambda');
        fprintf('\nThe eigenvalue is\n');
        fprintf('%.10f \n', lambda_eigen);
    else
        run('create_model.m');
        %% solvers
        model = create_eigenvalue_solver(model, isTMSR);
        % Eigenvalue calculation
        isInitialRun = true;
        [model, lambda_eigen] = run_eigen_solver(model, 'eigen.mph', isInitialRun);
    end


    % run the following line only if temperature feedback coefficients are needed
    % run('calc_temperature_feedback_coefs.m'); 

    fprintf('\nRun steady state study\n');
    model = create_steady_state_solver(model);

    model = run_steady_state_solver(model, lambda_eigen, 'ss.mph');    
end

run('create_3d_steady_state_results');

% iterate betwen eigenvalue and steady state computation until the result converges
% new_eigen = 0;
% isInitialRun = false;
% while abs(new_eigen - lambda_eigen) > 0.001
%     fprintf('\nRun steady state study\n');
%     model = run_steady_state_solver(model, lambda_eigen, 'ss.mph');    
%     % Rerun eigenvalue calculation with temperature profile from steady state
%     lambda_eigen = new_eigen;
%     [model, new_eigen] = run_eigen_solver(model, 'eigen.mph', isInitialRun);
% end
% 
% %% Insert control rods because we assume 1.4% excess reactivity
% target_eigen = new_eigen * (1+0.0014);
% rod_height = 4.5; 
% 
% while abs(new_eigen - target_eigen) > 10^-3     
%     for i = 1:length(control_rods)
%             name = control_rods{i};
%             domNb = domains(name);
%             % create a global parameter like h_CRCC1 to denote the current position for
%             % control rod CRCC1
%             model.param.set(sprintf('h_%s',name), num2str(rod_height));
%     end
%     [model, new_eigen] = run_eigen_solver(model, 'eigen.mph', false);
%     % if new_eigen > target_eigen, keff < target_keff, need less control
%     % rods insertion, need to increase the rod_height
%     % The proportional controller 0.0001 is chosen based on control rods
%     % worth in this height region. 
%     rod_height = rod_height + 0.0001 * (new_eigen - target_eigen)
% end
% 
% % model = run_steady_state_solver(model, lambda_eigen, 'ss.mph');    
% % 
% % %% Scale the flux to power
% % fprintf('\nScaling the flux and delayed neutron precursor concentration...\n');
% % run('create_scaling_study.m')
% % model.sol('sol15').runAll; 

% % mphsave(model, [output_path 'scaling.mph']);
% % 
% % % % %% Transient calculation
% % % % % fprintf('\nRunning transient...\n');
% % % % % run('create_transient_study.m')
% % % % % model.physics('ht').feature('temp1').set('T0', 'T_inlet+rm1(t/1[s])');
% % % % %model.sol('sol4').runAll;
% % % % %run('create_transient_results')
% % % % 
