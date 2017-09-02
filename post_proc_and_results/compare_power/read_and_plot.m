function res = read_and_plot(diffusion_output, serpent_output, R, Z, cr_height)
    rbin = size(R, 2);
    zbin = size(Z, 2);
    diffusion_power = read_comsol_power(diffusion_output, rbin, zbin);
    %sp3_power = read_comsol_power('power_mesh_sp3.txt', rbin, zbin);
    MC_power = read_det_output(serpent_output, rbin, zbin);

    %% normalization of power
    diffusion_powerN = normalize_power(diffusion_power, R);
    MC_powerN = normalize_power(MC_power, R);
    
    plim = max( max([diffusion_powerN, MC_powerN]));

    %% plot the distribution
    plot_image(R, Z, diffusion_powerN,...
        ['diffusion power' cr_height], ['diffusion_rods_at_', cr_height, '.png'], plim);
    plot_image(R, Z, MC_powerN,...
        ['mc power', cr_height], ['mc_rods_at_', cr_height, '.png'], plim);
    %plot_image(R, Z, SP3_powerN,...
    %    'sp3 power', 'power_sp3_mk1.png');
    
    %% error bt the methods
    diff_rel = (diffusion_powerN - MC_powerN)./(MC_powerN);
    diff_abs = abs((diffusion_powerN - MC_powerN));
    
    plim = 1; %max(max(diff_rel));
    plot_image(R, Z, diff_rel,...
        ['rel error power' cr_height], ['rel_error_rods_at_', cr_height, '.png'], plim);  
    
    plim = max(max(diff_abs));
    plot_image(R, Z, diff_abs,...
        ['abs error power' cr_height], ['abs_error_rods_at_', cr_height, '.png'], plim);

    

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
    plot_1d(Z, diff_axial, Z, mc_axial, 'Axial power distribution')
    
    
end