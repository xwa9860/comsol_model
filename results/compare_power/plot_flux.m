function plot_flux()
rbin = 90;
zbin = 267;
R = 0.00:0.02:1.78;
Z = 0.41:0.02:5.73;
serpent_output = 'cr_all_up_for_flux_det0.m';
thermal_flux = read_det_output(serpent_output, rbin, zbin, 'DET2');
fast_flux = read_det_output(serpent_output, rbin, zbin, 'DET3');
plim = max( max(thermal_flux));


% add verticle lines for radial zones
ystart = 0;
yend = 6;
xzones = [0.35, 0.461, 0.583, 0.96, 1.05];

figure;
plot_2d(R, Z, thermal_flux, 'thermal flux', 'thermal_flux.png', plim);
hold on;
for idx = 1 : numel(xzones)
    plot([xzones(idx), xzones(idx)], [ystart, yend], 'k');
end


figure;
plot_2d(R, Z, fast_flux,...
    'fast flux', 'fast_flux.png', plim);
hold on;
for idx = 1 : numel(xzones)
    plot([xzones(idx), xzones(idx)], [ystart, yend], 'k');
end
hold off;
