 close all;




% mk1
rbin = 89;
zbin = 266;
R = 0.01:0.02:1.77;
%Z = 5.73:-0.02:0.41;
Z = 0.42:0.02:5.72;

%% no rod at all
diffusion_output = 'power_no_rod_atall.txt';
serpent_output = 'no_rod_det0.m';
read_and_plot(diffusion_output, serpent_output, R, Z, 'rods572.85[cm]')
keff_no_rod_comsol =;
keff_no_rod_serpent = 0.986167;

%% rods at middle height
diffusion_output = 'power_all_middle.txt';
serpent_output = 'cr_all_middle_det0.m';
read_and_plot(diffusion_output, serpent_output, R, Z, 'rods272[cm]')
keff_mid_comsol = 1/1.0513637108 ;
%% rods at down 
diffusion_output = 'power_all_down.txt';
serpent_output = 'cr_all_down_det0.m';
read_and_plot(diffusion_output, serpent_output, R, Z, 'rods112[cm]')
keff_down_comsol = 1/1.1599989541 ;
keff_serpent = 0.86949;

%tmsr
rbin = 34;
zbin = 143;
R = 0.01:0.02:0.67;
Z = 0.01:0.02:2.85;
diffusion_output = 'power_comsol_TMSR.txt';
read_and_plot(diffusion_output, 'isTMSR', R, Z, 'TMSR')
