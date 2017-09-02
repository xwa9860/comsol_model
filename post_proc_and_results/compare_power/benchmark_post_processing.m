close all;



%tmsr
% rbin = 34;
% zbin = 143;
% r = 0.02:0.02:0.68;
% diffusion_output = 'power_mesh_diffusion.txt';
%MC_power = load('power.dat');
%MC_uncert = load('unc.dat');

% mk1
rbin = 89;
zbin = 266;
R = 0.01:0.02:1.77;
%Z = 5.73:-0.02:0.41;
Z = 0.42:0.02:5.72;

%% no rod at all
diffusion_output = 'power_no_rod_atall.txt';
serpent_output = 'no_rod_det0.m';
read_and_plot(diffusion_output, serpent_output,R, Z, '572.85[cm]')
keff_down_comsol = 1/1.2320410751;
%% rods at middle height
diffusion_output = 'power_all_middle.txt';
serpent_output = 'cr_all_middle_det0.m';
read_and_plot(diffusion_output, serpent_output, R, Z, '272[cm]')
keff_mid_comsol = 1/1.0513637108 ;
%% rods at down 
diffusion_output = 'power_all_down.txt';
serpent_output = 'cr_all_down_det0.m';
read_and_plot(diffusion_output, serpent_output,R, Z, '112[cm]')
keff_down_comsol = 1/1.1599989541 ;




% % %% radial distribution
% % diffusion_radial = sum(diffusion_power,1);
% % sp3_radial = sum(sp3_power,1);
% % MC_radial = sum(MC_power,1);
% % figure;
% % fig = gcf;
% % fig.PaperUnits = 'inches';
% % fig.PaperPosition = [0 0 6 3];
% % stairs(0.01:0.02:0.67, diffusion_radial, 'k.')
% % hold on;
% % plot(0.01:0.02:0.67, sp3_radial, 'r.')
% % stairs(0:0.02:0.66, MC_radial, 'k-')
% % title('Radial power distribution');
% % xlabel('Radius(m)');
% % ylabel('power density(normalized)');
% % legend('diffusion','sp3', 'Ref');
% % saveas(gcf,[folder_name, 'radial_power.png'])
% % 
% % %% plot the centerline(1st column)
% % figure;
% % plot(0.01:0.02:2.85, diffusion_power(:,1))
% % hold on;
% % stairs(0.01:0.02:2.85, MC_power(:,1))
% % title('Compare power distribution on the centerline');
% % xlabel('Z');
% % ylabel('power density(normalized)');
% % 
% % %% plot the mid-height(1.41m from the bottom)
% % figure;
% % plot(0.01:0.02:0.67, diffusion_power(71,:))
% % hold on;
% % stairs(0.01:0.02:0.67, MC_power(71,:))
% % title('Compare power distribution on the middleline');
% % xlabel('R');
% % ylabel('power density(normalized)');