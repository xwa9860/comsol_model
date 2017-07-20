function model = process_fuel(model, data_path, data_units, comsol_var_name)
    %{ 
    This function get the neutronics data from serpent output file for fuel 
    and input them in the comsol model 
    %}
    unb = 4; % total universes number
    u_fuel = 3;
    tot_case_nb=5;
    gnb = 8;

    temp_var_pb = "T_fuel";  % name of the comsol variable for fuel temperature
    % used to set the fuel cross-section variable in comsol

    %{
    For a sample of size n, temperature varaibles t1, t2, ... tm:
    temp_mat = [1, t11, t12, ... t1m
                1, t21, t22, ... t2m
                    ...
                1, tn1, tn2, ... tnm]
    %}
    %temp_mat = csvread([datapath, 'fuel_temp_mat.csv']);
    fuel_temp = [exp(1), 300;
                 exp(1), 600;
                 exp(1), 900; 
                 exp(1), 1200;
                 exp(1), 1500];
    log_fuel_temp = log(fuel_temp);
    
    
    fixed_data = read_fixed([data_path, 'case_1.m'], u_fuel);
    model = set_fixed(model, comsol_var_name, fixed_data, data_units);

    fuel_data = read_dep(data_path, u_fuel, unb, gnb, tot_case_nb);
    coefs = fit_coef(log_fuel_temp, fuel_data);
    model = set_coef(model, comsol_var_name, temp_var_pb, coefs, 'log_temp_dep', data_units);
   
    
end