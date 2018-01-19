function plot_serpent_flux()
    R = 0.005:0.01:1.775; % center of the bins
    Z = 0.415:0.01:5.725; %
    
    %serpent_output = 'flibe_rods/serp_full_core_det0.m'; 
    %when the control rods channels are filled with flibe
    serpent_output = 'rods_112/serp_full_core_det0.m'; 
    %when the control
    % rods channels are filled with graphite

    power = read_det_output(serpent_output, R, Z, 'DET1');
    plim = max( max(power));
    plot_2d(R, Z, power, 'power', 'rods_112_power.png', plim);
    
    thermal_flux = read_det_output(serpent_output, R, Z, 'DET2');
    plim = max( max(thermal_flux));
    plot_2d(R, Z, thermal_flux, 'thermal flux', 'rods_112_thermal_flux.png', plim);
    
    
    fast_flux = read_det_output(serpent_output, R, Z, 'DET3');
    plim = max( max(fast_flux));
    plot_2d(R, Z, fast_flux, 'fast flux', 'rods_112_fast_flux.png', plim);

