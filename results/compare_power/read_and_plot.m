function res = read_and_plot(diffusion_output, serpent_output, R, Z, config)
    rbin = size(R, 2);
    zbin = size(Z, 2);
    [Rc, Zc, diffusion_power] = read_comsol_power(diffusion_output, rbin, zbin);
    %sp3_power = read_comsol_power('power_mesh_sp3.txt', rbin, zbin);
    
    if strcmp(serpent_output, 'isTMSR')
        MC_power = load('power.dat');
        MC_power = MC_power(zbin:-1:1, :);
        MC_uncert = load('unc.dat');
        MC_uncert = MC_uncert(zbin:-1:1, :);
    else
    MC_power = read_det_output(serpent_output, rbin, zbin, 'DET1');
    end
    
    %% normalization of power
    diffusion_powerN = normalize_power(diffusion_power, R);
    MC_powerN = normalize_power(MC_power, R);
    
    plim = max( max([diffusion_powerN, MC_powerN]));

    %% plot the distribution
    plot_2d(R, Z, diffusion_powerN,...
        ['diffusion power' config], ['diffusion_', config, '.png'], plim);
    plot_2d(R, Z, MC_powerN,...
        ['mc power', config], ['mc_', config, '.png'], plim);
    %plot_image(R, Z, SP3_powerN,...
    %    'sp3 power', 'power_sp3_mk1.png');
    
    %% error bt the methods
    diff_rel = (diffusion_powerN - MC_powerN)./(MC_powerN);
    diff_abs = abs((diffusion_powerN - MC_powerN));
    
    plim = 1; %max(max(diff_rel));
    plot_2d(R, Z, diff_rel,...
        ['rel error power' config], ['rel_error', config, '.png'], plim);  
    
    plim = max(max(diff_abs));
    plot_2d(R, Z, diff_abs,...
        ['abs error power' config], ['abs_error', config, '.png'], plim);

    

    % figure;
    % image(R, Z, MC_uncert, 'CDataMapping', 'scaled');
    % title('MC stat error');
    % caxis([-1 1])
    % colormap(jet);
    % colorbar;
    % fig = gcf;
    % fig.PaperUnits = 'inches';
    % fig.PaperPosition = [0 0 3 6];
    % saveas(gcf,[folder_name, 'MC_power_error.png']);
    % 
    
    % 
    % axial and radial distribution
    [diff_axial, diff_radial] = compute_axial_radial(diffusion_powerN, R);
    [mc_axial, mc_radial] = compute_axial_radial(MC_powerN, R);
    plot_1d(Z, diff_axial, Z, mc_axial, 'Axial', ['axial power ', config], ['axial_', config, '.png'])
    plot_1d(R, diff_radial, R, mc_radial, 'Radial', ['radial power ', config], ['radial_', config, '.png'])
    
end