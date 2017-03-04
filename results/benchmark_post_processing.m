close all;

folder_name = '';

%% load data
M = csvread('power_mesh_diffusion.txt', 1, 0);
R = M(:, 1);
Z = M(:, 2);
diffusion_power = reshape(M(:, 3), [34, 143])'; 
diffusion_power = diffusion_power(143:-1:1, :);

M = csvread('power_mesh_sp3.txt', 9, 0);
R = M(:, 1);
Z = M(:, 2);
sp3_power = reshape(M(:, 3), [34, 143])'; 
sp3_power = sp3_power(143:-1:1, :);

MC_power = load('power.dat');

MC_uncert = load('unc.dat');

%% normalization of power
r = 0.02:0.02:0.68;
weight = (r.^2 - (r-0.02).^2)';
sum_comsol = sum(sum(diffusion_power*weight));
diffusion_power =  diffusion_power./sum_comsol;

sum_sp3 = sum(sum(sp3_power*weight));
sp3_power =  sp3_power./sum_sp3;

sum_MC = sum(sum(MC_power*weight));
MC_power = MC_power./sum_MC;

sum_comsol = sum(sum(diffusion_power*weight));
sum_MC = sum(sum(MC_power*weight));

%% error bt the methods
diff_rel = (diffusion_power - MC_power)./(MC_power);

diff_abs = abs((diffusion_power - MC_power));

%% plot the distribution
image(R, Z, diffusion_power, 'CDataMapping', 'scaled');
title('COMSOL power');
caxis([0 0.05])
colormap(jet);
hcb=colorbar;
%title(hcb,'Normalized power density');
fig = gcf;
fig.PaperUnits = 'inches';
fig.PaperPosition = [0 0 3 6];
saveas(gcf,[folder_name, 'comsol_power.png']);

image(R, Z, sp3_power, 'CDataMapping', 'scaled');
title('COMSOL sp3 power');
caxis([0 0.05])
colormap(jet);
hcb=colorbar;
%title(hcb,'Normalized power density');
fig = gcf;
fig.PaperUnits = 'inches';
fig.PaperPosition = [0 0 3 6];
saveas(gcf,[folder_name, 'sp3_power.png'])

figure;
image(R, Z, MC_power, 'CDataMapping', 'scaled');
title('MC power');
caxis([0 0.05])
colormap(jet);
hcb=colorbar;
%title(hcb,'Normalized power density');
fig = gcf;
fig.PaperUnits = 'inches';
fig.PaperPosition = [0 0 3 6];
saveas(gcf,[folder_name, 'MC_power.png']);

figure;
image(R, Z, MC_uncert, 'CDataMapping', 'scaled');
title('MC stat error');
caxis([-1 1])
colormap(jet);
colorbar;
fig = gcf;
fig.PaperUnits = 'inches';
fig.PaperPosition = [0 0 3 6];
saveas(gcf,[folder_name, 'MC_power_error.png']);

% relative error
figure;
image(R, Z, diff_rel, 'CDataMapping', 'scaled');
title('relative diff');
caxis([-1 3])
colormap(jet);
colorbar;
fig = gcf;
fig.PaperUnits = 'inches';
fig.PaperPosition = [0 0 3 6];
saveas(gcf, [folder_name, 'diff_rel.png']);

% absolute error
figure;
image(R, Z, diff_abs, 'CDataMapping', 'scaled');
title('absolute diff');
%caxis([-1 3])
colormap(jet);
colorbar;
fig = gcf;
fig.PaperUnits = 'inches';
fig.PaperPosition = [0 0 3 6];
saveas(gcf,[folder_name, 'diff_abs.png']);

%% axial distribution
diffusion_axial = sum(diffusion_power*weight,2);
sp3_axial = sum(sp3_power*weight,2);
MC_axial = sum(MC_power*weight,2);
figure;
fig = gcf;
fig.PaperUnits = 'inches';
fig.PaperPosition = [0 0 6 3];

stairs(0.01:0.02:2.85, diffusion_axial, 'k.')
hold on;
stairs(0.01:0.02:2.85, sp3_axial, 'r.')

stairs(0:0.02:2.84, MC_axial, 'k-')
title('Axial power distribution');
xlabel('Height(m)');
ylabel('power density(normalized)');
legend('diffusion','sp3', 'Ref');
print([folder_name, 'axial_power.png'],'-dpng','-r0');
%% radial distribution
diffusion_radial = sum(diffusion_power,1);
sp3_radial = sum(sp3_power,1);
MC_radial = sum(MC_power,1);
figure;
fig = gcf;
fig.PaperUnits = 'inches';
fig.PaperPosition = [0 0 6 3];
stairs(0.01:0.02:0.67, diffusion_radial, 'k.')
hold on;
plot(0.01:0.02:0.67, sp3_radial, 'r.')
stairs(0:0.02:0.66, MC_radial, 'k-')
title('Radial power distribution');
xlabel('Radius(m)');
ylabel('power density(normalized)');
legend('diffusion','sp3', 'Ref');
saveas(gcf,[folder_name, 'radial_power.png'])

%% plot the centerline(1st column)
figure;
plot(0.01:0.02:2.85, diffusion_power(:,1))
hold on;
stairs(0.01:0.02:2.85, MC_power(:,1))
title('Compare power distribution on the centerline');
xlabel('Z');
ylabel('power density(normalized)');

%% plot the mid-height(1.41m from the bottom)
figure;
plot(0.01:0.02:0.67, diffusion_power(71,:))
hold on;
stairs(0.01:0.02:0.67, MC_power(71,:))
title('Compare power distribution on the middleline');
xlabel('R');
ylabel('power density(normalized)');