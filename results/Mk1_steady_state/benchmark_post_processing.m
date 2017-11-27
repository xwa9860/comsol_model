 close all;

% mk1
%R = 0.005:0.01:1.745; % center of the bins
%R = 0.0005:0.001:1.7495;
%Z = 0.415:0.01:5.725; %
R = 0.025:0.05:1.755;
Z = 0.48:0.14:5.66;
model.result.export('data1').set('gridx2', 'range(2.5[cm], 5[cm],175.5[cm])');
model.result.export('data1').set('gridy2', 'range(48[cm],14[cm],566[cm])');
%% no rod at all
diffusion_output = 'Mk1_rods_572/1st_eig_power_mesh.txt';
serpent_output = 'serpent_ref_rods_572/serp_full_core_det0.m';
read_and_plot(diffusion_output, serpent_output, R, Z, ' (no rods)')
%keff_no_rod_comsol =;
%keff_no_rod_serpent = 0.986167;

% rods at middle height
diffusion_output = 'Mk1_rods_272/1st_eig_power_mesh.txt';
serpent_output = 'serpent_ref_rods_272/serp_full_core_det0.m';
read_and_plot(diffusion_output, serpent_output, R, Z, '(rods half inserted)')
%keff_mid_comsol = 1/1.0513637108 ; old value, need to be updated

% rods at down 
diffusion_output = 'Mk1_rods_112/1st_eig_power_mesh.txt';
serpent_output = 'serpent_ref_rods_112/serp_full_core_det0.m';
read_and_plot(diffusion_output, serpent_output, R, Z, '(rods fully inserted)')
%keff_down_comsol = 1/1.1599989541 ;
%keff_serpent = 0.86949;
% 
% tmsr
% rbin = 34;
% zbin = 143;
% R = 0.01:0.02:0.67;
% Z = 0.01:0.02:2.85;
% diffusion_output = 'power_comsol_TMSR.txt';
% read_and_plot(diffusion_output, 'isTMSR', R, Z, 'TMSR')
