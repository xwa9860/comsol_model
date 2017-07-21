function model = process_fuel(model, data_path, data_units, comsol_var_name, unb, u_fuel)
    %{ 
    This function get the neutronics data from serpent output file for fuel 
    and input them in the comsol model 
    %}
    tot_case_nb=9;
    gnb = 8;

    temp_var_pb = ["log(T_fuel)", "T_flibe"];  % name of the comsol variable for fuel temperature
    % used to set the fuel cross-section variable in comsol

    %{
    For a sample of size n, temperature varaibles t1, t2, ... tm:
    temp_mat = [1, t11, t12, ... t1m
                1, t21, t22, ... t2m
                    ...
                1, tn1, tn2, ... tnm]
    %}
    %temp_mat = csvread([datapath, 'fuel_temp_mat.csv']);
    fuel_temp = [300; 600; 900; 1200; 1500; 900; 900; 900; 900];
    log_fuel_temp = log(fuel_temp);
    
    flibe_dens = [19; 19; 19; 19; 19; 17; 18; 20; 21];
    flibe_temps = (2279.92-flibe_dens*100)/0.488+273.15;
    input = [ones(9, 1) log_fuel_temp flibe_temps];
    
    
    fixed_data = read_fixed([data_path, 'case_1.m'], u_fuel);
    model = set_fixed(model, comsol_var_name, fixed_data, data_units);

    fuel_data = read_dep(data_path, u_fuel, unb, gnb, tot_case_nb);
    coefs = fit_coef(input, fuel_data);
    model = set_coef(model, comsol_var_name, temp_var_pb, coefs, 'lin_temp_dep', data_units);
   
    
end