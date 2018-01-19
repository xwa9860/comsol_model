%{
 plot and compare power profile and keff from serpent and comsol
 Serpent outputs volume average in the bins
 COMSOL outputs point estimation on the specified points 
%}
close all;

% mk1
R = 0.025:0.05:1.755; % center of the bins
Z = 0.48:0.14:5.66; % center of the bins

%% no rod at all
diffusion_output = 'Mk1_rods_572/1st_eig_power_mesh.txt';
serpent_output = 'serpent_ref_rods_572/serp_full_core_det0.m';
read_and_plot(diffusion_output, serpent_output, R, Z, ' (no rods)')
keff_no_rod_comsol =1/1.0529933038098347;
keff_no_rod_serpent = 9.67163E-01; %'IMP_KEFF stat error=0.00018

% rods at middle height
diffusion_output = 'Mk1_rods_272/1st_eig_power_mesh.txt';
serpent_output = 'serpent_ref_rods_272/serp_full_core_det0.m';
read_and_plot(diffusion_output, serpent_output, R, Z, '(rods half inserted)')
keff_mid_comsol = 1/1.0920871346208365 ;
keff_middle_serpent = 9.28562E-01; % stats error 0.00019
% rods at down 
diffusion_output = 'Mk1_rods_112/1st_eig_power_mesh.txt';
serpent_output = 'serpent_ref_rods_112/serp_full_core_det0.m';
read_and_plot(diffusion_output, serpent_output, R, Z, '(rods fully inserted)')
keff_down_comsol = 1/1.2062840892314577 ;
keff_down_serpent = 8.42169E-01; % stat error = 0.00022
% 
% tmsr
% rbin = 34;
% zbin = 143;
% R = 0.01:0.02:0.67;
% Z = 0.01:0.02:2.85;
% diffusion_output = 'power_comsol_TMSR.txt';
% read_and_plot(diffusion_output, 'isTMSR', R, Z, 'TMSR')
