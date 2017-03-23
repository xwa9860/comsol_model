%%
%{ 
get the cross section data from serpent for different temperatures for flibe
fit lienar function
input it in comsol
!! It's important to run this script after 'fit_func_fuel_XS.m'
%}

%% get the data
unb = 4; % total universes number used in Serpent, here is used to determine which row the needed parameter is
%% getting the serpent results into the matlab data 'Workspace'
% array for fitting the data from serpent output in the specific folders
flibe_density = 21;
flibe_temp = (2279.92-flibe_density*100)/0.488+273.15;
u_flibe = 4; %universe number for flibe is 4 in serpent file
temp_var_flibe = 'T_flibe';

% run serpent result files

folder_name = ['diffusion_cx_data/temp_dep_data/tmsr_11000_' num2str(flibe_density)];
file_name = '/tmsr_sf1_res.m';    
run([folder_name file_name])



u = u_flibe + u - u_fuel; 
% the last value of u in 'fit_func_fuel_XS' - u_fuel at the end of the for loop + flibe universe number u_flibe
fprintf('Uflibe = %d\n', u)
%% ------temperature independent
Res_Betas_flibe = read_array_XS(FWD_ANA_BETA_ZERO, 1, dnb+1);
Res_Lambdas_flibe = read_array_XS(FWD_ANA_LAMBDA, 1, 1+dnb);
Res_Diff_flibe = read_array_XS(INF_DIFFCOEF, u, gnb);
Res_Kappa_flibe = read_array_XS(INF_KAPPA, u, gnb);
Res_InvV_flibe = read_array_XS(INF_INVV, u, gnb);
Res_ChiT_flibe = read_array_XS(INF_CHIT, u, gnb);
Res_ChiP_flibe = read_array_XS(INF_CHIP, u, gnb);
Res_ChiD_flibe = read_array_XS(INF_CHID, u, gnb);
Res_F_flibe = read_array_XS(INF_FISS, u, gnb); 
Res_NSF_flibe = read_array_XS(INF_NSF, u, gnb);

% %% ------temperature dependent
% for case_nb = 1:5
    % Removal array[n*1] from INF_REMXS
    Res_Rem_flibe= read_array_XS(INF_REMXS, u, gnb);
    % Total array[n*1] from INF_TOT
    Res_Tot_flibe= read_array_XS(INF_TOT, u, gnb);
    %Scattering matrix[n*n] from INF_S0
    Res_Scat_flibe = read_inf_s0(INF_S0, u, gnb);  
      % tested: this function reads the right scattering cxs for flibe
%     if case_nb == 3
%         Ref_Rem_flibe = read_array_XS(INF_REMXS, u, gnb);
%         Ref_Tot_flibe = read_array_XS(INF_TOT, u, gnb);
%         Ref_Scat_flibe = read_inf_s0(INF_S0, u, gnb);
%     end
    
%     u = u+unb;
%     fprintf('Uflibe = %d\n', u)
% end
% Diffusion coefficient diff2 for sp3 algorithm
Res_Diff2_flibe = 9/35.0 ./Res_Tot_flibe;
% 
% % fit a linear function XS = c1*T + c0 from the five cross sections at
% different temperature(density)
% [flibe_scat.c1, flibe_scat.c0] = fit_matrix(flibe_temp, Res_Scat_flibe, 'scat flibe');
% flibe_scat.temp_var = temp_var_flibe;
% [flibe_Rem.c1, flibe_Rem.c0] = fit_matrix(flibe_temp, Res_Rem_flibe, 'removal flibe');
% flibe_Rem.temp_var = temp_var_flibe;

%% calculate linear function of rho for flibe cross sections
% calculate XS(rho) = XS_ref + (rho-rho_ref)/rho_ref* XS_ref, XS_ref =
% XS(rho_ref)
% because the density rho is linear with temperature, XS(T) = 0 +
% XS_ref/T_ref * T
% 
% [flibe_scat.c1, flibe_scat.c0] = linear_fun_rho(flibe_temp(3), Ref_Scat_flibe, 'scat flibe');
% flibe_scat.temp_var = temp_var_flibe;
% [flibe_Rem.c1, flibe_Rem.c0] = linear_fun_rho(flibe_temp(3), Ref_Rem_flibe, 'removal flibe');
% flibe_Rem.temp_var = temp_var_flibe;
% [flibe_Tot.c1, flibe_Tot.c0] = linear_fun_rho(flibe_temp(3), Ref_Tot_flibe, 'total flibe');
% flibe_Tot.temp_var = temp_var_flibe;
% [flibe_Diff2.c1, flibe_Diff2.c0] = linear_fun_rho(flibe_temp(3), Ref_Tot_flibe, 'total flibe');
% flibe_Diff2.temp_var = temp_var_flibe;
%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% This section was used to write the cross sections out into a file,
% which can be then imported into comsol
% filename = 'flibe_data.txt';
% fileID = fopen(filename, 'wt');
% fprintf(fileID, ...
% 'univ_fuel 4\n');
% fileID = fopen(filename, 'at');
% write_XS_data(fileID,  'kappa', Res_Kappa_flibe, '[MeV]', 'fixed')
% write_XS_data(fileID,  'c', Res_Diff_flibe, '[cm]', 'fixed')
% write_XS_data(fileID,  'invV', Res_InvV_flibe, '[s/cm]', 'fixed')
% write_XS_data(fileID,  'chi', Res_Chi_flibe, '', 'fixed')
% write_XS_data(fileID,  'scat', flibe_scat, '[1/cm]', 'lin_temp_dep')
% write_XS_data(fileID,  'nsf', flibe_NSF, '[1/cm]', 'lin_temp_dep')
% write_XS_data(fileID,  'rem', flibe_Rem, '[1/cm]', 'lin_temp_dep')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
comsol_var_name = 'var17';
% delayed neutron parameters
set_XS_data_to_comsol_model(model, comsol_var_name, 'beta', Res_Betas_flibe(1), '', 'fixed');
set_XS_data_to_comsol_model(model, comsol_var_name, 'betas', Res_Betas_flibe(2:end), '', 'fixed');
set_XS_data_to_comsol_model(model, comsol_var_name, 'lambdas', Res_Lambdas_flibe(2:end), '[1/s]', 'fixed');

set_XS_data_to_comsol_model(model, 'var17',  'kappa', Res_Kappa_flibe, '[MeV]', 'fixed');
% diffusion coefficient for diffusion
set_XS_data_to_comsol_model(model, 'var17',  'diff1', Res_Diff_flibe, '[cm]', 'fixed');
set_XS_data_to_comsol_model(model, 'var17',  'invV', Res_InvV_flibe, '[s/cm]', 'fixed');
set_XS_data_to_comsol_model(model, 'var17',  'chit', Res_ChiT_flibe, '', 'fixed');
set_XS_data_to_comsol_model(model, 'var17',  'chip', Res_ChiP_flibe, '', 'fixed');
set_XS_data_to_comsol_model(model, 'var17',  'chid', Res_ChiD_flibe, '', 'fixed');
set_XS_data_to_comsol_model(model, 'var17',  'fiss', Res_F_flibe, '[1/cm]', 'fixed');  
set_XS_data_to_comsol_model(model, 'var17',  'nsf', Res_NSF_flibe, '[1/cm]', 'fixed');
set_XS_data_to_comsol_model(model, 'var17',  'scat', Res_Scat_flibe, '[1/cm]', 'fixed');
set_XS_data_to_comsol_model(model, 'var17',  'rem', Res_Rem_flibe, '[1/cm]', 'fixed');
%set_XS_data_to_comsol_model(model, 'var17',  'tot', flibe_Tot, '[1/cm]', 'fixed');
% D2 coefficient in sp3 formulation
%set_XS_data_to_comsol_model(model, 'var17',  'diff2', flibe_Diff2, '[1/cm]', 'fixed');