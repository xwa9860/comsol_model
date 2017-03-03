close all;
%% load data
M = csvread('data/benchmark/ss_power/pdensity_data.txt');
R = M(:, 1);
Z = M(:, 2);
comsol_power = reshape(M(:, 3), [34, 143])'; 
comsol_power = comsol_power(143:-1:1, :);
MC_power = load('data/benchmark/ss_power/power.dat');

MC_uncert = load('data/benchmark/ss_power/unc.dat');

%% normalization of power
r = 0.02:0.02:0.68;
weight = (r.^2 - (r-0.02).^2)';
sum_comsol = sum(sum(comsol_power*weight));
comsol_power =  comsol_power./sum_comsol;

sum_MC = sum(sum(MC_power*weight));
MC_power = MC_power./sum_MC;

sum_comsol = sum(sum(comsol_power*weight));
sum_MC = sum(sum(MC_power*weight));

%% error bt the methods
diff_rel = (comsol_power - MC_power)./(MC_power);

diff_abs = abs((comsol_power - MC_power));

%% plot the distribution

image(R, Z, comsol_power, 'CDataMapping', 'scaled');
title('COMSOL power');
caxis([0 0.05])
colormap(jet);
hcb=colorbar;
%title(hcb,'Normalized power density');
fig = gcf;
fig.PaperUnits = 'inches';
fig.PaperPosition = [0 0 3 6];
saveas(gcf,'figures/benchmark/SS_power/comsol_power.png')

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
saveas(gcf,'figures/benchmark/SS_power/MC_power.png')

figure;
image(R, Z, MC_uncert, 'CDataMapping', 'scaled');
title('MC stat error');
caxis([-1 1])
colormap(jet);
colorbar;
fig = gcf;
fig.PaperUnits = 'inches';
fig.PaperPosition = [0 0 3 6];
saveas(gcf,'figures/benchmark/SS_power/MC_power_error.png')

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
saveas(gcf,'figures/benchmark/SS_power/diff_rel.png')

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
saveas(gcf,'figures/benchmark/SS_power/diff_abs.png')

%% axial distribution
comsol_axial = sum(comsol_power*weight,2);
MC_axial = sum(MC_power*weight,2);
figure;
fig = gcf;
fig.PaperUnits = 'inches';
fig.PaperPosition = [0 0 6 3];

plot(0.01:0.02:2.85, comsol_axial, 'k--+')
hold on;
stairs(0:0.02:2.84, MC_axial, 'k-*')
title('Axial power distribution');
xlabel('Height(m)');
ylabel('power density(normalized)');
legend('Comsol', 'Ref');
print('figures/benchmark/SS_power/axial_power.png','-dpng','-r0')
%% radial distribution
comsol_radial = sum(comsol_power,1);
MC_radial = sum(MC_power,1);
figure;
fig = gcf;
fig.PaperUnits = 'inches';
fig.PaperPosition = [0 0 6 3];
plot(0.01:0.02:0.67, comsol_radial, 'k--+')
hold on;
stairs(0:0.02:0.66, MC_radial, 'k-*')
title('Radial power distribution');
xlabel('Radius(m)');
ylabel('power density(normalized)');
legend('Comsol', 'Ref');
saveas(gcf,'figures/benchmark/SS_power/radial_power.png')

%% plot the centerline(1st column)
figure;
plot(0.01:0.02:2.85, comsol_power(:,1))
hold on;
stairs(0.01:0.02:2.85, MC_power(:,1))
title('Compare power distribution on the centerline');
xlabel('Z');
ylabel('power density(normalized)');

%% plot the mid-height(1.41m from the bottom)
figure;
plot(0.01:0.02:0.67, comsol_power(71,:))
hold on;
stairs(0.01:0.02:0.67, MC_power(71,:))
title('Compare power distribution on the middleline');
xlabel('R');
ylabel('power density(normalized)');