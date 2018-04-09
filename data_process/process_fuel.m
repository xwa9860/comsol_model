function model = process_fuel(model, comsol_var_name, u_fuel)
    %{ 
    This function get the neutronics data from serpent output file for fuel 
    and input them in the comsol model 

    comsol_var_name: name of comsol variable to denote the xs data, also
        used to store the data in .mat format on the path [fuel_data_path,
        comsol_var_name]. If is_get_coef_from_file is true, the program expects
        to find these files under the name comsol_var_name in the
        'fuel_data_path' folder.

    u_fuel: fuel universe nubmer, used to read data from serpent output file
    %}

    global fuel_data_path;
    global isTMSR isMultiScale;
    global is_get_coef_from_file;
    %is_get_coef_from_file: boolean, getting coefficient values from file.
        %if false, compute the coefficients
    
    %% read and set fixed cross-sections
    isCR = false;
    fixed_data = read_fixed({[fuel_data_path, 'case_1.m']}, u_fuel, isCR, '');
    model = set_a_XS_map(model, comsol_var_name, fixed_data, isCR);
    
    %% read and set temperature dependent cross-sections
    % build a list of temperature variable names that will be used to set the XS in COMSOL
    temp_var_xs = build_temp_var();
  
    % either load coefficients from files or compute them
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
                tot_case_nb = 100;
        end
                                        
        %define input variable matrix: X
        input = build_X(tot_case_nb);    
        % read fuel cross-section data from serpent result files
        fuel_data = read_dep(fuel_data_path, u_fuel, tot_case_nb, isCR, '');
        % fit a function to compute the coefficients,
        % so that: fuel_data = input * coefs
        coefs = fit_coef(input, fuel_data);
        
        % save to files
        save([fuel_data_path, comsol_var_name], 'coefs')
    end    

    % set coefficients to comsol model
    model = set_coef(model, comsol_var_name, temp_var_xs, coefs, 'lin_temp_dep');
    model = set_diff2(model, comsol_var_name);
  
end
