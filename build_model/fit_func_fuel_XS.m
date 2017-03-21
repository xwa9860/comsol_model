%% This function get the neutronics data from serpent output file for fuel 
% and input them in the comsol model 

% temp_var_pb = matrix of case_nb * variable_nb
% coefs: temp_var_pb * coefs = XS values, dimension variable_nb * 1

format long e

unb = 4; % total universes number
u_fuel = 3;


if MultiScale
    % fuel temperature names in a array
    temp_var_pb = {num2str(1), 'tp11', 'tp12', 'tp13', 'tp21', 'tp22', 'tp23', 'tp31', 'tp32', 'tp33', 'tp00'}; 
    % names of the comsol variable for fuel temperature used to set the fuel cross-section variable in comsol
    % TODO: change these to the real names that is used in the heat
    % transfer module
else
    temp_var_pb = {num2str(1), 'log(T_fuel[1/K])', 'T_flibe[1/K]'};  % name of the comsol variable for fuel temperature
% used to set the fuel cross-section variable in comsol
end

%% create X(temperatures) and Y(cross sections) for linear regression
if MultiScale
    tot_caseNb=19;
    t_option = [600, 1200];
    fuel_temp_lib = ['06'; '12']; % temperature library name, used in file names
    fuel_temp = 900* ones(tot_caseNb, 10);
    l=1; % strat from line 1
    for t_nb = 1:2 % temperature number, 1 for 600K and 2 for 1200K
        k=1;%column that corresponds to the temperature varaibles
        for i = 1:3 %pebble layer
            for j = 1:3 % triso layer
                folder_name = 'diffusion_cx_data/multi_temp_dep_data/';
                file_name = ['tmsr_sf1_' num2str(i) num2str(j) '_' fuel_temp_lib(t_nb,:) '_res.m'];     
                run(strcat(folder_name, file_name));
                %construct the temperature matrix as X for fitting
                fuel_temp(l,k) = t_option(t_nb);   
                k=k+1;  
                l=l+1;
            end
        end
    end
    run([folder_name 'tmsr_sf1_res.m']);
    
    %%
    % an example fuel temp variable is
    %
    % <<fuel_temp.png>>
    % 
    %
    log_fuel_temp = log(fuel_temp);
     
else
    tot_caseNb=9;
    fuel_temp = [300, 600, 1200, 1500];
    flibe_density = [17, 18, 19, 20, 21];
    flibe_temp = (2279.92-flibe_density*100)/0.488+273.15;
    temp_var = ones(tot_caseNb, 3); % three variables 1, T_fuel and T_flibe
    
    
    for caseNb = 1:4
        folder_name = ['diffusion_cx_data/temp_dep_data/tmsr_11000_' num2str(fuel_temp(caseNb))];
        file_name = '/tmsr_sf1_res.m';   
        run([folder_name file_name]);
        temp_var(caseNb, 2) = log(fuel_temp(caseNb));      
        temp_var(caseNb, 3) = flibe_temp(3);
    end
    for caseNb = 5:9
        folder_name = ['diffusion_cx_data/temp_dep_data/tmsr_11000_' num2str(flibe_density(caseNb-4))];
        file_name = '/tmsr_sf1_res.m';    
        run([folder_name file_name]);
        temp_var(caseNb, 2) = log(900);  
        temp_var(caseNb, 3) = flibe_temp(caseNb-4);
    end
end

u=u_fuel+unb;
fprintf('fuel u=%d\n', u);
%% ------read temperature independent parameters from serpent output
if BetaEff 
    Res_Betas_Fuel = read_array_XS(ADJ_MEULEKAMP_BETA_EFF, 1, 1+dnb);
else  % otherwise use analogue beta
    Res_Betas_Fuel = read_array_XS(FWD_ANA_BETA_ZERO, 1, 1+dnb);
end
Res_Lambdas_Fuel = read_array_XS(FWD_ANA_LAMBDA, 1, 1+dnb);
Res_Diff_Fuel = read_array_XS(INF_DIFFCOEF, u, gnb);
Res_Kappa_Fuel = read_array_XS(INF_KAPPA, u, gnb);
Res_InvV_Fuel = read_array_XS(INF_INVV, u, gnb);
%Res_ChiT_Fuel = read_array_XS(INF_CHIT, u, gnb);
Res_ChiP_Fuel = read_array_XS(INF_CHIP, u, gnb);
Res_ChiD_Fuel = read_array_XS(INF_CHID, u, gnb);
beta = Res_Betas_Fuel(1);
Res_ChiT_Fuel = (1-beta)*Res_ChiP_Fuel + beta*Res_ChiD_Fuel;
Res_F_Fuel = read_array_XS(INF_FISS, u, gnb); 

%% ------read temperature dependent parameters from serpent output
for case_nb = 1:tot_caseNb
    %Scattering matrix[n*n] from INF_S0
    Res_Scat_Fuel(case_nb, :, :) = read_inf_s0(INF_S0, u, gnb);  
    Res_Rem_Fuel(case_nb, :)= read_array_XS(INF_REMXS, u, gnb);
    Res_abs_Fuel(case_nb, :)= read_array_XS(INF_ABS, u, gnb);
    Res_NSF_Fuel(case_nb, :) = read_array_XS(INF_NSF, u, gnb);   
    Res_Tot_Fuel(case_nb, :) = read_array_XS(INF_TOT, u, gnb);
    Res_Diff2_Fuel(case_nb, :) = 9/35.0 ./read_array_XS(INF_TOT, u, gnb); % diff2_{i,g} = 9/35/Sigma_tot_{i,g}
    u = u+unb;
    fprintf('fuel u=%d\n', u);
end


% fit a log_linear function XS = temp_var * coefs
fuel_scat.coefs = fit_matrix(temp_var, Res_Scat_Fuel, 'scat fuel', true);
fuel_scat.temp_var = temp_var_pb;
fuel_NSF.coefs = fit_matrix(temp_var, Res_NSF_Fuel, 'NSF fuel', true);
fuel_NSF.temp_var = temp_var_pb;
fuel_Rem.coefs = fit_matrix(temp_var, Res_Rem_Fuel, 'removal fuel', true);
fuel_Rem.temp_var = temp_var_pb;
fuel_Tot.coefs = fit_matrix(temp_var, Res_Tot_Fuel, 'total fuel', true);
fuel_Tot.temp_var = temp_var_pb;
fuel_Diff2.coefs = fit_matrix(temp_var, Res_Diff2_Fuel, 'diff2 fuel', true);
fuel_Diff2.temp_var = temp_var_pb;
%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% This section was used to write the cross sections out into a file,
% which can be then imported into comsol
% filename = 'fuel_data.txt';
% fileID = fopen(filename, 'wt');
% fprintf(fileID, ...
% 'univ_fuel 3\n');
% fileID = fopen(filename, 'at');
% write_XS_data(fileID,  'kp', Res_Kappa_Fuel, '[MeV]', 'fixed')
% write_XS_data(fileID,  'c', Res_Diff_Fuel, '[cm]', 'fixed')
% write_XS_data(fileID,  'invV', Res_InvV_Fuel, '[s/cm]', 'fixed')
% write_XS_data(fileID,  'F', Res_F_Fuel, '[1/cm]', 'fixed')
% write_XS_data(fileID,  'chit', Res_ChiT_Fuel, '', 'fixed')
% write_XS_data(fileID,  'chip', Res_ChiP_Fuel, '', 'fixed')
% write_XS_data(fileID,  'chid', Res_ChiD_Fuel, '', 'fixed')
% write_XS_data(fileID,  'scat', fuel_scat, '[1/cm]', 'log_temp_dep')
% write_XS_data(fileID,  'nsf', fuel_NSF, '[1/cm]', 'log_temp_dep')
% write_XS_data(fileID,  'rem', fuel_Rem, '[1/cm]', 'log_temp_dep')

%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
comsol_var_name = 'var16';
% delayed neutron parameters
set_XS_data_to_comsol_model(model, comsol_var_name, 'beta', Res_Betas_Fuel(1), '', 'fixed');
set_XS_data_to_comsol_model(model, comsol_var_name, 'betas', Res_Betas_Fuel(2:end), '', 'fixed');
set_XS_data_to_comsol_model(model, comsol_var_name, 'lambdas', Res_Lambdas_Fuel(2:end), '[1/s]', 'fixed');
% diffusion parameters and cross-sections
set_XS_data_to_comsol_model(model, comsol_var_name,  'kappa', Res_Kappa_Fuel, '[MeV]', 'fixed');
%diffusion coefficient
set_XS_data_to_comsol_model(model, comsol_var_name,  'diff1', Res_Diff_Fuel, '[cm]', 'fixed');


set_XS_data_to_comsol_model(model, comsol_var_name,  'invV', Res_InvV_Fuel, '[s/cm]', 'fixed');
set_XS_data_to_comsol_model(model, comsol_var_name,  'fiss', Res_F_Fuel, '[1/cm]', 'fixed');
set_XS_data_to_comsol_model(model, comsol_var_name,  'chit', Res_ChiT_Fuel, '', 'fixed');
set_XS_data_to_comsol_model(model, comsol_var_name,  'chip', Res_ChiP_Fuel, '', 'fixed');
set_XS_data_to_comsol_model(model, comsol_var_name,  'chid', Res_ChiD_Fuel, '', 'fixed');
set_XS_data_to_comsol_model(model, comsol_var_name,  'scat', fuel_scat, '[1/cm]', 'temp_dep', true);
set_XS_data_to_comsol_model(model, comsol_var_name,  'nsf', fuel_NSF, '[1/cm]', 'temp_dep', true);
set_XS_data_to_comsol_model(model, comsol_var_name,  'rem', fuel_Rem, '[1/cm]', 'temp_dep', true);
set_XS_data_to_comsol_model(model, comsol_var_name,  'tot', fuel_Tot, '[1/cm]', 'temp_dep', true);
% diffusion coefficient D2 for sp3 (need to define the correct value)
set_XS_data_to_comsol_model(model, comsol_var_name,  'diff2', fuel_Diff2, '[cm]', 'temp_dep', true);

array=[];
for i =1:8
array=strcat(array, ['kp1', num2str(i), '*F1', num2str(i), '*Flux', num2str(i), '+'], 1);
end
