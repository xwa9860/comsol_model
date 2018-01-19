function res = read_and_plot(outputs, R, Z, plot_title, file_name, legends)
    %{
    read, normalize and compare, and plot the power distribution
    from comsol and serpent output 

    names: cell array of plot names
    %}
    
    % r and z bin numbers
    rbin = size(R, 2);
    zbin = size(Z, 2);
    powers = [];
    i = 1;
    for k = keys(outputs)
        output_file = k{1};
        if outputs(k{1})
            % read power from comsol(diffusion) output
            [Rc, Zc, power] = read_comsol_power(output_file, rbin, zbin);
        else
            %sp3_power = read_comsol_power('power_mesh_sp3.txt', rbin, zbin);
    
            % read power from serpent output, it was stored differently for TMSR
            % and Mk1
            % TODO: do it for TMSR
%             if strcmp(serpent_output, 'isTMSR')
%                 power = load('power.dat');
%                 power = power(zbin:-1:1, :);
%                 MC_uncert = load('unc.dat');
%                 MC_uncert = MC_uncert(zbin:-1:1, :);
%             else
                power = read_det_output(output_file, R, Z, 'DET1');
%             end
        end
        powers( :, :, i) = power;
        i = i+1;
    end
   
    %% plot the distributions
    plim = max(powers); % upper limit for the y axis
    sizes = size(powers);
    nb_plots = sizes(3);

    for i = 1:nb_plots
        power = powers(:, :, i);
        plot_2d(R, Z, power, 'title', 'power', plim);
    end

    % axial and radial distribution
    for i = 1:nb_plots
        power = powers(:, :, i);
        [axial, radial] = compute_axial_radial(power, R);
        radial_plots(i).name = legends{1};
        radial_plots(i).X = R;
        radial_plots(i).Y = radial;
        axial_plots(i).name = legends(i);
        axial_plots(i).X = Z;
        axial_plots(i).Y = axial;
    end
    plot_1d(axial_plots, 'Axial', ['axial power ' plot_title], ['axial_', file_name, '.png'], legends)
    plot_1d(radial_plots, 'Radial', ['radial power' plot_title], ['radial_', file_name, '.png'], legends)
    
   
    %% compute error bt the first and second outputs and plot
    power1 = powers(:,:,1);
    power2 = powers(:,:, 2);
    diff_rel = (power1 - power2)./(power2);
    diff_abs = ((power1 - power2));
    
    plim = false; %max(max(diff_rel));
    plot_2d(R, Z, diff_rel,...
        ['rel error power' plot_title], ['rel_error', '.png'], plim);  
    
    plim = false; % max(max(diff_abs));
    plot_2d(R, Z, diff_abs,...
        ['abs error power' plot_title], ['abs_error', '.png'], plim);

end