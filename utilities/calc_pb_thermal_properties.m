
function [k_pb, rho_pb, cp_pb] = calc_pb_thermal_properties(bu_nb)

% thermal properties for the 'fuel region' (mainly the matrix material) in a pebble
% bu_nb: burnup number from 1 to 8

% global reactor;
% switch reactor
%     case 'TMSR'
%     %% radius TMSR
%         Rs = [0.25, 0.3]; 
%         ks = [15, 193];
%         rhos = [1.81, 1.96];
%         cps = [1744, 684];
    global fuel_comp
    switch fuel_comp
        case 'fresh'
            k_pb = 15;
        case 'eq'
            k_pbs = [40, 17, 17, 17, 17, 17, 17, 17];
            k_pb = k_pbs(bu_nb);
    end
            
    rho_pb = 1810;
    cp_pb = 1744;
    
end