function plot_serpent_flux()
    rbin = 90;
    zbin = 267;
    R = 0.00:0.02:1.78;
    Z = 0.41:0.02:5.73;
    
    serpent_output = 'two_fuelsgr_rods/serp_full_core_det0.m'; %when the control
    % rods channels are filled with graphite
    % serpent_output =  'cr_all_up_for_flux_det0.m';
    %when the control
    % rods channels are filled with flibe
    power = read_det_output(serpent_output, rbin, zbin, 'DET1');
    plim = max( max(power));
    plot_2d(R, Z, power, 'power', 'gr_power.png', plim);
    
    thermal_flux = read_det_output(serpent_output, rbin, zbin, 'DET2');
    fast_flux = read_det_output(serpent_output, rbin, zbin, 'DET3');
    
    plim = max( max(thermal_flux));
    plot_2d(R, Z, thermal_flux, 'thermal flux', 'gr_thermal_flux.png', plim);
    
    plim = max( max(fast_flux));
    plot_2d(R, Z, fast_flux, 'fast flux', 'gr_fast_flux.png', plim);

