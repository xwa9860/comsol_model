function [ks_triso, cps_triso, rhos_triso] = calc_triso_thermal_properties()
    % Properties of each TRISO layer
    % fuel, buffer, ipyc, sic, opyc 
    
    %% radius
    Rs = [200, 300, 335, 370, 405]/10E6; 
    
    %% conductivity

    % compute coating equivalent conductivity using resistance in sphere
    ks = [3.5, 0.5, 4, 30, 4]; % conductivity    
    for i = 1:4
        resistance_coatings(i) = (1/Rs(i)- 1/Rs(i+1))/(4*pi*ks(i+1));
    end
    resistance_equ = sum(resistance_coatings);
    K_equ = (1/Rs(1) - 1/Rs(5)) /(4*pi*resistance_equ);  % equivelent thermal conductivity for the coatings
    ks_triso = [repmat(ks(1),1,3),K_equ]; % used in the model

    
    %% density
    rhos = [10500, 1000, 1900, 3200, 1900];

    rho_equ = 0;
    vol = 0;
    for i = 1:4
        rho_equ = rho_equ + 4/3*pi*(Rs(i+1)^3 - Rs(i)^3)*rhos(i+1);
        vol = vol + 4/3*pi*(Rs(i+1)^3 - Rs(i)^3);
    end
    rho_equ = rho_equ/vol;
    rhos_triso =[repmat(rhos(1),1,3), rho_equ];
    
    
    %% specific heat
    cps = [400, 2000, 2000, 1300, 2000];
    cp_equ = 0;
    mass = 0;
    for i = 1:4
        cp_equ = cp_equ + 4/3*pi*(Rs(i+1)^3 - Rs(i)^3)*rhos(i+1)*cps(i+1);
        mass = mass + 4/3*pi*(Rs(i+1)^3 - Rs(i)^3)*rhos(i+1);
    end
    cp_equ = cp_equ/mass;
    
    cps_triso=[repmat(cps(1), 1, 3), cp_equ];
    
    
    
end