function model = process_fuel(model, comsol_var_name, u_fuel)
    %{ 
    This function get the neutronics data from serpent output file for fuel 
    and input them in the comsol model 

    is_get_coef_from_file: boolean, getting coefficient values from file.
    if false, compute the coefficients
    coef_file: file name to store or load coefficients, used for MK1
    model to save time from fitting a lot of matrices
    %}

    global fuel_data_path;
    global isTMSR isMultiScale is_get_coef_from_file;
    
    %% read and set fixed cross-sections
    isCR = false;
    fixed_data = read_fixed({[fuel_data_path, 'case_1.m']}, u_fuel, isCR, '');
    model = set_a_XS_map(model, comsol_var_name, fixed_data, isCR);
    
    %% build a list of temperature variable names that will be used to set the XS in COMSOL
    if isTMSR
        temp_var_pb = build_temp_var_TMSR;
    else
        temp_var_pb = build_temp_var_Mk1;
    end
  
    %% either load coefficients from files or compute them
    if is_get_coef_from_file
        coefs_struct = load([fuel_data_path, comsol_var_name]);
        coefs = coefs_struct.coefs;
    else
        
        if isTMSR
            if isMultiScale
                tot_case_nb = 2*3*3;
            else
                tot_case_nb = 5;
            end
        else
                tot_case_nb = 50;
        end
                
                        
        %define input variable matrix for TMSR: X
            if isTMSR
                input = build_X_TMSR;
            else
                input = build_X_Mk1;
            end
            
        % read fuel cross-section data from serpent result files
        fuel_data = read_dep(fuel_data_path, u_fuel, tot_case_nb);
        
        % fit a function to compute the coefficients: fuel_data = input *
        % coefs
        coefs = fit_coef(input, fuel_data);
        
        % save to files
        save([fuel_data_path, comsol_var_name], 'coefs')
    end    

    
    %% set coefficients to comsol model
    model = set_coef(model, comsol_var_name, temp_var_pb, coefs, 'lin_temp_dep');
    model = set_diff2(model, comsol_var_name);
    
    %% nested functions called above
    function input = build_X_TMSR
        if isMultiScale
            input =[ones(tot_case_nb, 1) log(ones(tot_case_nb, 9)*900)];
            row=1;
            col = 2;
            for pnb = 1:3
                for tnb = 1:3
                        input(row, col) = log(600);
                        input(row+1, col)= log(1200);
                        row = row+2;
                        col = col + 1;
                end
            end                                    
        else % not multiscale                        
            fuel_temp = [300; 600; 900; 1200; 1500];
            log_fuel_temp = log(fuel_temp);
            input = [ones(5, 1) log_fuel_temp];
        end  
    end    
    
    function input = build_X_Mk1
        
        % load temperature values in an input matrix
        raw_temps = load([fuel_data_path, 'temp.mat']);    
        raw_fuel_temps = raw_temps.sol;
        fuel_temps = ones(tot_case_nb, 24);
        for i = 0:7
            fuel_temps(:, i*3+1 :i*3+3) = raw_fuel_temps(:, i+1, 1:3);
        end
        raw_flibe_temps = raw_temps.liq;
        
        % adding intercept(column of ones)
        input = [ones(50, 1) log(fuel_temps) raw_flibe_temps'];   
        
    end
    
    
            
    function temp_var_pb = build_temp_var_Mk1        
        % name of the comsol variables for fuel and flibe temperature,
        % named as log(T_fuel_1[1/K]), log(T_fuel_2[1/K]), ..., and T_flibe        
        temp_var_pb = strings(25, 1);  
        for i = 1:24
         temp_var_pb(i) = strcat("log(T_fuel_", num2str(i), "[1/K])");
        end
        temp_var_pb(25) = "T_flibe";
    end

    function temp_var_pb = build_temp_var_TMSR
        if MultiScale
            temp_var_pb = [];
            for pnb = 1:3
                for tnb = 1:3
                        temp_var_pb = [temp_var_pb sprintf("log(Tp%d%d[1/K])", pnb, tnb)];
                end
            end
        else
             temp_var_pb = ["log(T_fuel[1/K])"];
        end                
    end

end
