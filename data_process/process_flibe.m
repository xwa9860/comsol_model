%% get the data from serpent and set the data to comsol for the pure flibe part at the bottom of the core in TMSR

function model = process_flibe(model, data_path,  comsol_var_name, u_flibe)

% unb: total universes number used in Serpent, here is used to determine which row the needed parameter is
% u_flibe: universe number for flibe is 4 in serpent file
temp_var_flibe = "T_flibe[1/K]";
tot_case_nb = 5;

isCR = false;

%% getting the serpent results into the matlab data 'Workspace'
% array for fitting the data from serpent output in the specific folders
flibe_density = [17, 18, 19, 20, 21]*100;
flibe_temp = (2279.92-flibe_density)/0.488+273.15;
flibe_temp = horzcat(ones(5,1), flibe_temp');

fixed_data = read_fixed({[data_path, '19/tmsr_sf1_res.m']}, u_flibe, isCR, '');
model = set_a_XS_map(model, comsol_var_name, fixed_data, isCR);

flibe_data = read_dep(data_path, u_flibe, tot_case_nb, isCR, '');
coefs = fit_coef(flibe_temp, flibe_data);
model = set_coef(model, comsol_var_name, temp_var_flibe, coefs, 'lin_temp_dep');

model = set_diff2(model, comsol_var_name);
end
% %% calculate linear function of rho for flibe cross sections
% [flibe_scat.c1, flibe_scat.c0] = linear_fun_rho(flibe_temp(3), Ref_Scat_flibe, 'scat flibe');
% [flibe_Rem.c1, flibe_Rem.c0] = linear_fun_rho(flibe_temp(3), Ref_Rem_flibe, 'removal flibe');
% [flibe_Tot.c1, flibe_Tot.c0] = linear_fun_rho(flibe_temp(3), Ref_Tot_flibe, 'total flibe');
% [flibe_Diff2.c1, flibe_Diff2.c0] = linear_fun_rho(flibe_temp(3), Ref_Tot_flibe, 'total flibe');
