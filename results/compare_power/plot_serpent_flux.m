function plot_serpent_flux()
    rbin = 90;
    zbin = 267;
    R = 0.00:0.02:1.78;
    Z = 0.41:0.02:5.73;
    
    %serpent_output = 'flibe_rods/serp_full_core_det0.m'; 
    %when the control rods channels are filled with flibe
    serpent_output = 'flibe_rods/serp_full_core_det0.m'; 
    %when the control
    % rods channels are filled with graphite

    power = read_det_output(serpent_output, rbin, zbin, 'DET1');
    plim = 4.5E-15; %max( max(power));
    plot_2d(R, Z, power, 'power', 'flibe_power.png', plim);
    
    thermal_flux = read_det_output(serpent_output, rbin, zbin, 'DET2');
    plim = 0.035; max( max(thermal_flux));
    plot_2d(R, Z, thermal_flux, 'thermal flux', 'flibe_thermal_flux.png', plim);
    
    
    fast_flux = read_det_output(serpent_output, rbin, zbin, 'DET3');
    plim = 0.05; %max( max(fast_flux));
    plot_2d(R, Z, fast_flux, 'fast flux', 'flibe_fast_flux.png', plim);

