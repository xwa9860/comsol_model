function model = process_fuel(model, data_path, data_units, comsol_var_name, unb, u_fuel, TMSR, MultiScale)
    %{ 
    This function get the neutronics data from serpent output file for fuel 
    and input them in the comsol model 
    %}

    gnb = 8;
    
    fixed_data = read_fixed([data_path, 'case_1.m'], u_fuel);
    model = set_fixed(model, comsol_var_name, fixed_data, data_units);
    
    % temperature dependent parameters
    if TMSR
        if MultiScale
            tot_case_nb = 2*3*3;
            temp_var_pb = [];
            for pnb = 1:3
                for tnb = 1:3
                        temp_var_pb = [temp_var_pb sprintf("log(Tp%d%d[1/K])", pnb, tnb)];
                end
            end
            
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
            %tot_case_nb=9;
            %temp_var_pb = ["log(T_fuel)", "T_flibe"];  % used to set the fuel cross-section variable in comsol
            tot_case_nb = 5;
            temp_var_pb = ["log(T_fuel[1/K])"]; % used to set the fuel cross-section variable in comsol

            %{
            For a sample of size n, temperature varaibles t1, t2, ... tm:
            temp_mat = [1, t11, t12, ... t1m
                        1, t21, t22, ... t2m
                            ...
                        1, tn1, tn2, ... tnm]
            %}
            %temp_mat = csvread([datapath, 'fuel_temp_mat.csv']);
            fuel_temp = [300; 600; 900; 1200; 1500];
            %fuel_temp = [300; 600; 900; 1200; 1500; 900; 900; 900; 900];
            log_fuel_temp = log(fuel_temp);

            %flibe_dens = [19; 19; 19; 19; 19; 17; 18; 20; 21]*100;
            %flibe_temps = (2413-flibe_dens)/0.488;


            %input = [ones(9, 1) log_fuel_temp flibe_temps];
            input = [ones(5, 1) log_fuel_temp];
        end
        
    else
        tot_case_nb = 50;
        temp_var_pb = strings(25, 1);  % name of the comsol variable for fuel temperature
        for i = 1:24
         temp_var_pb(i) = strcat("log(T_fuel_", num2str(i), "[1/K])");
        end
        temp_var_pb(25) = "T_flibe";
        % used to set the fuel cross-section variable in comsol

        raw_temps = load([data_path, 'temp.mat']);        
        raw_fuel_temps = raw_temps.sol;
        % i = burn up number
        fuel_temps = ones(tot_case_nb, 24);
        for i = 0:7
            fuel_temps(:, i*3+1 :i*3+3) = raw_fuel_temps(:, i+1, 1:3);
        end
        raw_flibe_temps = raw_temps.liq;
        
        input = [ones(50, 1) log(fuel_temps) raw_flibe_temps'];
        
    end
    
  
    fuel_data = read_dep(data_path, u_fuel, unb, gnb, tot_case_nb);
    coefs = fit_coef(input, fuel_data);
    model = set_coef(model, comsol_var_name, temp_var_pb, coefs, 'lin_temp_dep', data_units);
   
    
end