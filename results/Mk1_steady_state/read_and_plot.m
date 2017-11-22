function res = read_and_plot(diffusion_output, serpent_output, R, Z, config)
    %{
    read, normalize and compare, and plot the power distribution
    from comsol and serpent output 
    %}
    
    % r and z bin numbers
    rbin = size(R, 2);
    zbin = size(Z, 2);
    
    % read power from comsol(diffusion) output
    [Rc, Zc, diffusion_power] = read_comsol_power(diffusion_output, rbin, zbin);
    
    %sp3_power = read_comsol_power('power_mesh_sp3.txt', rbin, zbin);
    
    % read power from serpent output, it was stored differently for TMSR
    % and Mk1
    if strcmp(serpent_output, 'isTMSR')
        MC_power = load('power.dat');
        MC_power = MC_power(zbin:-1:1, :);
        MC_uncert = load('unc.dat');
        MC_uncert = MC_uncert(zbin:-1:1, :);
    else
        MC_power = read_det_output(serpent_output, R, Z, 'DET1');
    end
    
    %% normalization of powers
%     diffusion_powerN = normalize_power(diffusion_power, R);
%     MC_powerN = normalize_power(MC_power, R);
    
    

    %% plot the distributions
    plim = max( max([diffusion_power, MC_power])); % upper limit for the y axis
    plot_2d(R, Z, diffusion_power,...
        ['diffusion power' config], ['diffusion_', config, '.png'], plim);
    plot_2d(R, Z, MC_power,...
        ['mc power', config], ['mc_', config, '.png'], plim);
    
   
    
    
    %% compute error bt the methods and plot
    diff_rel = (diffusion_power - MC_power)./(MC_power);
    diff_abs = abs((diffusion_power - MC_power));
    
    plim = 1; %max(max(diff_rel));
    plot_2d(R, Z, diff_rel,...
        ['rel error power' config], ['rel_error', config, '.png'], plim);  
    
    plim = false; % max(max(diff_abs));
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
    [diff_axial, diff_radial] = compute_axial_radial(diffusion_power, R);
    [mc_axial, mc_radial] = compute_axial_radial(MC_power, R);
    plot_1d(Z, diff_axial, Z, mc_axial, 'Axial', ['axial power ', config], ['axial_', config, '.png'])
    plot_1d(R, diff_radial, R, mc_radial, 'Radial', ['radial power ', config], ['radial_', config, '.png'])
    
end