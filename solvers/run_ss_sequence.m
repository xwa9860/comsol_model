function model = run_ss_sequence(start_after)
    %{
    Run the eigenvalue, steady state, scaling solvers sequence to find the
    'final' steady state results
    The function can either run the solvers step-by-step or load some
    intermediate results from files in order to save time. The users can 
    choose to load saved solution file from any of the steps
    to save time from running from the beginning.
    
    start_from: "beginning", "eigen_1st", "ss", "scaling"
    %} 
    global isTMSR reactor; 
    global transient_type;
    
    if ismember(start_after, ["eigen", "ss", "scaling"]) 
        model = load_from_file(start_after);
    end
    
    %% start from the beginning
    if ismember(start_after, ["beginning"])
            fprintf('Running the solvers from the beginning\n');
            model= create_model();
    
            %% solvers
            model = create_eigenvalue_solver(model, isTMSR);
            % Eigenvalue calculation
            isInitialRun = true;
            [model, lambda_eigen] = run_an_eigen_solver(model, 'eigen_1st.mph', isInitialRun);

            % run the following line only if temperature feedback coefficients are needed
            % run('calc_temperature_feedback_coefs.m');                 
    end
    
    %% run steady state solver and iterations
    if ismember(start_after, [ "beginning", "eigen_1st"])
        % 1st steady state solution with eigenvalue power and flux distribution
        % - create steady state solver
        % - run the solver
        % - create steady state results
        fprintf('\nRun steady state study\n');
        model = create_steady_state_solver(model);
        model = run_a_steady_state_solver(model, lambda_eigen, 'ss_1st.mph');    
        switch reactor
            case 'Mk1'
                run('create_3d_steady_state_results');
            case 'TMSR'
                run('create_steady_state_results');
        end

        % Iterate betwen eigenvalue and steady state computation until the result converges
        model = iterate_ss_eigen(model, 'ss.mph', 'eigen.mph');
    
        if string(transient_type) == "control_rods_removal"
            fprintf('Search for control rod positions\n');
            model = search_control_rod_positions(model);    
        end
    end
    
    %% Scale the flux to power    
    if ismember(start_after, ["beginning", "eigen_1st", "ss"])
        fprintf('\nScaling the flux and delayed neutron precursor concentration...\n');
        model = create_and_run_scaling(model, string(transient_type) == "control_rods_removal");            
    end

end


function model = search_control_rod_positions(model)
% Insert control rods until keff = keff_no_rods * (1-1.4%),
% assuming 1.4% excess reactivity during online refueling operation
    global control_rods domains;
    global excess_rho
   
    lambda_eigen = mphglobal(model, 'lambda');
    target_eigen = lambda_eigen * (1+excess_rho);
    fprintf('\nTarget eigenvalue is\n');
    fprintf('%.10f \n', target_eigen);
    rod_height = 4; % initial rod height to start searching

    while abs(lambda_eigen - target_eigen) > 10^-5     
        for i = 1:length(control_rods)
                name = control_rods{i};
                domNb = domains(name);
                % create a global parameter like h_CRCC1 to denote the current position for
                % control rod CRCC1
                model.param.set(sprintf('h_%s',name), num2str(rod_height));
        end
        [model, lambda_eigen] = run_an_eigen_solver(model, 'eigen_cr.mph', false);
        
        % if new_eigen > target_eigen, keff < target_keff, need less control
        % rods insertion, need to increase the rod_height
        % The proportional controller 30 is chosen based on control rods
        % worth in this height region. 
        rod_height = max(rod_height + 30 * (lambda_eigen - target_eigen), 0);
        fprintf('Searching new rod height %f\n', rod_height);
    end

    %% start a new iteration, this time iterate between steady state and eigenvalue 
    model = run_a_steady_state_solver(model, lambda_eigen, 'ss_cr.mph'); 
    model = iterate_ss_eigen(model, 'ss_cr.mph', 'eigen_cr.mph');  
end

function model = iterate_ss_eigen(model, ss_name, eigen_name) 
    %iterate betwen eigenvalue and steady state computation until the result converges
    fprintf('iterate between eigenvalue solver and steady state solver\n');
    new_eigen = 0;
    isInitialRun = false;
    lambda_eigen = mphglobal(model, 'lambda');
    while abs(new_eigen - lambda_eigen) > 0.00001                 
        % Rerun eigenvalue calculation with temperature profile from steady state
        lambda_eigen = new_eigen;
        [model, new_eigen] = run_an_eigen_solver(model, eigen_name, isInitialRun);
        model = run_a_steady_state_solver(model, lambda_eigen, ss_name);  
    end
end

function model = load_from_file(start_after)    
    global transient_type;
    global output_path;

    switch transient_type
        case 'control_rods_removal'
            model = mphload([output_path, char(start_after), '_cr.mph']);
        otherwise
            model = mphload([output_path, char(start_after), '.mph']);
    end   
end