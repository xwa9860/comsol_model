%% This function get the neutronics data from serpent output file for fuel 
% and input them in the comsol model 

format long e

unb = 4; % total universes number
u_fuel = 3;
tot_caseNb=5;
fuel_temp = [300, 600, 900, 1200, 1500];
log_fuel_temp = log(fuel_temp);
if MultiScale
    temp_var_pb = '(Tp1+Tp2+Tpn)/3.0'; % name of the comsol variable for fuel temperature
% used to set the fuel cross-section variable in comsol
else
    temp_var_pb = 'T_fuel';  % name of the comsol variable for fuel temperature
% used to set the fuel cross-section variable in comsol
end

for caseNb = 1:tot_caseNb
    folder_name = ['diffusion_cx_data/temp_dep_data/tmsr_11000_' num2str(fuel_temp(caseNb))];
    file_name = '/tmsr_sf1_res.m';   
 	run([folder_name file_name])
end

u=u_fuel+unb;
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
    u = u+unb;
end

% fit a log_linear function XS = c1*log(T) + c0
fuel_scat.coefs = fit_matrix(log_fuel_temp, Res_Scat_Fuel, 'scat fuel');
fuel_scat.temp_var = temp_var_pb;
fuel_NSF.coefs = fit_matrix(log_fuel_temp, Res_NSF_Fuel, 'NSF fuel');
fuel_NSF.temp_var = temp_var_pb;
fuel_Rem.coefs = fit_matrix(log_fuel_temp, Res_Rem_Fuel, 'removal fuel');
fuel_Rem.temp_var = temp_var_pb;

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
set_XS_data_to_comsol_model(model, comsol_var_name,  'diff', Res_Diff_Fuel, '[cm]', 'fixed');
set_XS_data_to_comsol_model(model, comsol_var_name,  'invV', Res_InvV_Fuel, '[s/cm]', 'fixed');
set_XS_data_to_comsol_model(model, comsol_var_name,  'fiss', Res_F_Fuel, '[1/cm]', 'fixed');
set_XS_data_to_comsol_model(model, comsol_var_name,  'chit', Res_ChiT_Fuel, '', 'fixed');
set_XS_data_to_comsol_model(model, comsol_var_name,  'chip', Res_ChiP_Fuel, '', 'fixed');
set_XS_data_to_comsol_model(model, comsol_var_name,  'chid', Res_ChiD_Fuel, '', 'fixed');
set_XS_data_to_comsol_model(model, comsol_var_name,  'scat', fuel_scat, '[1/cm]', 'log_temp_dep');
set_XS_data_to_comsol_model(model, comsol_var_name,  'nsf', fuel_NSF, '[1/cm]', 'log_temp_dep');
set_XS_data_to_comsol_model(model, comsol_var_name,  'rem', fuel_Rem, '[1/cm]', 'log_temp_dep');


array=[];
for i =1:8
array=strcat(array, ['kp1', num2str(i), '*F1', num2str(i), '*Flux', num2str(i), '+'], 1);
end
