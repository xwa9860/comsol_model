%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
comsol_var_name = 'var17';
% delayed neutron parameters
set_XS_data_to_comsol_model(model, comsol_var_name, 'beta', Res_Betas_flibe(1), '', 'fixed');
set_XS_data_to_comsol_model(model, comsol_var_name, 'betas', Res_Betas_flibe(2:end), '', 'fixed');
set_XS_data_to_comsol_model(model, comsol_var_name, 'lambdas', Res_Lambdas_flibe(2:end), '[1/s]', 'fixed');
set_XS_data_to_comsol_model(model, comsol_var_name,  'kappa', Res_Kappa_flibe, '[MeV]', 'fixed');
% diffusion coefficient for diffusion
set_XS_data_to_comsol_model(model, comsol_var_name,  'diff1', Res_Diff_flibe, '[cm]', 'fixed');
set_XS_data_to_comsol_model(model, comsol_var_name,  'invV', Res_InvV_flibe, '[s/cm]', 'fixed');
set_XS_data_to_comsol_model(model, comsol_var_name,  'chit', Res_ChiT_flibe, '', 'fixed');
set_XS_data_to_comsol_model(model, comsol_var_name,  'chip', Res_ChiP_flibe, '', 'fixed');
set_XS_data_to_comsol_model(model, comsol_var_name,  'chid', Res_ChiD_flibe, '', 'fixed');
set_XS_data_to_comsol_model(model, comsol_var_name,  'fiss', Res_F_flibe, '[1/cm]', 'fixed');  
set_XS_data_to_comsol_model(model, comsol_var_name,  'nsf', Res_NSF_flibe, '[1/cm]', 'fixed');


set_XS_data_to_comsol_model(model, comsol_var_name,  'scat', flibe_scat, '[1/cm]', 'lin_temp_dep');
set_XS_data_to_comsol_model(model, comsol_var_name,  'rem', flibe_Rem, '[1/cm]', 'lin_temp_dep');
set_XS_data_to_comsol_model(model, comsol_var_name,  'tot', flibe_Tot, '[1/cm]', 'lin_temp_dep');
% D2 coefficient in sp3 formulation
set_XS_data_to_comsol_model(model, comsol_var_name,  'diff2', flibe_Diff2, '[1/cm]', 'lin_temp_dep');