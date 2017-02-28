%% get the data
unb = 4; % total universes number
u_gr = 1; % universe number for graphite
folder_name = ['diffusion_cx_data\temp_dep_data\tmsr_11000_19'];
file_name = '\tmsr_sf1_res.m';  
run([folder_name file_name])

 
%% ------temperature independent
Res_Betas_gr = read_array_XS(FWD_ANA_BETA_ZERO, 1, dnb+1);
Res_Lambdas_gr = read_array_XS(FWD_ANA_LAMBDA, 1, dnb+1);
Res_Diff_gr = read_array_XS(INF_DIFFCOEF, u_gr, gnb);
Res_Kappa_gr = read_array_XS(INF_KAPPA, u_gr, gnb);
Res_InvV_gr = read_array_XS(INF_INVV, u_gr, gnb);
Res_ChiT_gr = read_array_XS(INF_CHIT, u_gr, gnb);
Res_ChiP_gr = read_array_XS(INF_CHIP, u_gr, gnb);
Res_ChiD_gr = read_array_XS(INF_CHID, u_gr, gnb);
Res_F_gr = read_array_XS(INF_FISS, u_gr, gnb);
Res_Scat_gr = read_inf_s0(INF_S0, u_gr, gnb);   
Res_Rem_gr = read_array_XS(INF_REMXS, u_gr, gnb);
Res_NSF_gr = read_array_XS(INF_NSF, u_gr, gnb);
Res_Tot_gr = read_array_XS(INF_TOT, u_gr, gnb);
Res_Diff2_gr = 9/35.0./Res_Tot_gr;
% filename = 'gr_data.txt';
% fileID = fopen(filename, 'wt');
% fprintf(fileID, 'univ_gr 1\n');
% fileID = fopen(filename, 'at');
% write_XS_data(fileID,  'kappa', Res_Kappa_gr, '[MeV]', 'fixed')
% write_XS_data(fileID,  'c', Res_Diff_gr, '[cm]', 'fixed')
% write_XS_data(fileID,  'invV', Res_InvV_gr, '[s/cm]', 'fixed')
% write_XS_data(fileID,  'chi', Res_Chi_gr, '', 'fixed')
% write_XS_data(fileID,  'scat', Res_Scat_gr, '[1/cm]', 'fixed')
% write_XS_data(fileID,  'nsf', Res_NSF_gr, '[1/cm]', 'fixed')
% write_XS_data(fileID,  'rem', Res_Rem_gr, '[1/cm]', 'fixed')
comsol_var_name = 'var10';
% delayed neutron parameters
set_XS_data_to_comsol_model(model, comsol_var_name, 'beta', Res_Betas_gr(1), '', 'fixed');
set_XS_data_to_comsol_model(model, comsol_var_name, 'betas', Res_Betas_gr(2:end), '', 'fixed');
set_XS_data_to_comsol_model(model, comsol_var_name, 'lambdas', Res_Lambdas_gr(2:end), '[1/s]', 'fixed');

set_XS_data_to_comsol_model(model, comsol_var_name, 'kappa', Res_Kappa_gr, '[MeV]', 'fixed');
%diffusion coefficient
set_XS_data_to_comsol_model(model, comsol_var_name, 'diff1', Res_Diff_gr, '[cm]', 'fixed');
% D2 for sp3 method
set_XS_data_to_comsol_model(model, comsol_var_name, 'diff2', Res_Diff2_gr, '[cm]', 'fixed');
set_XS_data_to_comsol_model(model, comsol_var_name, 'invV', Res_InvV_gr, '[s/cm]', 'fixed');
set_XS_data_to_comsol_model(model, comsol_var_name, 'chit', Res_ChiT_gr, '', 'fixed');
set_XS_data_to_comsol_model(model, comsol_var_name, 'chip', Res_ChiP_gr, '', 'fixed');
set_XS_data_to_comsol_model(model, comsol_var_name, 'chid', Res_ChiD_gr, '', 'fixed');
set_XS_data_to_comsol_model(model, comsol_var_name, 'fiss', Res_F_gr, '[1/cm]', 'fixed');
set_XS_data_to_comsol_model(model, comsol_var_name, 'scat', Res_Scat_gr, '[1/cm]', 'fixed');
set_XS_data_to_comsol_model(model, comsol_var_name, 'nsf', Res_NSF_gr, '[1/cm]', 'fixed');
set_XS_data_to_comsol_model(model, comsol_var_name, 'nsf0', Res_NSF_gr, '[1/cm]', 'fixed');
set_XS_data_to_comsol_model(model, comsol_var_name, 'rem', Res_Rem_gr, '[1/cm]', 'fixed');
set_XS_data_to_comsol_model(model, comsol_var_name, 'tot', Res_Tot_gr, '[1/cm]', 'fixed');


