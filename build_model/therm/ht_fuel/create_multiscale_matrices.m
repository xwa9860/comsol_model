function model = create_multiscale_matrices(model, module_name, dep_var_nb, bu_nb)
global reactor fuel_comp;
global pb_region;
global region_fuel_kernel;
global region_coated;
global fuel_domNb;

triso_layer_nb = region_fuel_kernel + region_coated;

cfeq = model.physics(module_name).feature('cfeq1');
init = model.physics(module_name).feature('init1');


%% get thermal_properties
[k_triso, cp_triso, rho_triso] = calc_triso_thermal_properties();
[k_pb, cp_fuel, rho_fuel] = calc_pb_thermal_properties(bu_nb);
[k_gr, cp_gr, rho_gr] = calc_gr_properties();

%% set matrices in the PDE

cfeq = set_matrix_c(cfeq, dep_var_nb);
cfeq = set_matrix_a(cfeq, triso_layer_nb, k_triso, k_pb, k_gr);
cfeq = set_matrix_da(cfeq, triso_layer_nb, pb_region, ...
    rho_triso, cp_triso, rho_gr, cp_gr, rho_fuel, cp_fuel );



%% set matrix f
k=0;
for n=1:pb_region
    
    if n<pb_region
        % 'PdensityN/0.6*4/3*(pb_diam/2)^3*pi/triso_nb/9' means: Pdensity *
        % volume in the core that a pebble would occupy, including the
        % portion of coolant around it;
        % then divided by the number of trisos in a pebble;
        % then divided by 3 to get the power in each triso particle layers 
        % Note: triso_nb here is defined as the number of triso particles
        % in each pebble layer
        switch reactor
            case 'TMSR'
                
                for m=1:triso_layer_nb
                    if m==1
                        cfeq.setIndex('f',['PdensityN/0.6*4/3*(pb_diam/2)^3*pi/triso_nb/9'...
                            ],k);
                    elseif m<triso_layer_nb
                        cfeq.setIndex('f',['PdensityN/0.6*4/3*(pb_diam/2)^3*pi/triso_nb/9'...
                            ],k);
                    else
                        if n==1
                            cfeq.setIndex('f',num2str(0),k);
                        elseif n<pb_region
                            cfeq.setIndex('f',num2str(0),k);
                        end
                        
                    end
                    k=k+1;
                end
                
            case 'Mk1'
                switch fuel_comp
                    case 'fresh'
                        fraction = 1;
                    case 'eq'
                        fractions = get_fractions();
                        fraction = fractions(bu_nb);
                end
                
                if n==1
                    cfeq.setIndex('f',num2str(0),k);
                    k=k+1;
                else
                    for m=1:triso_layer_nb
                        if m<triso_layer_nb
                            cfeq.setIndex('f', ...
                                [num2str(fraction), '*PdensityN/0.6*4/3*(pb_diam/2)^3*pi/triso_nb/3'], ...
                                k);
                        else
                            if n<pb_region
                                cfeq.setIndex('f', num2str(0), k);
                            end
                            
                        end
                        k=k+1;
                    end
                end
                
        end
    else
        m=triso_layer_nb;
        cfeq.setIndex('f', ...
            ['h_conv*pb_area*T_flibe/pb_nb'],k);
        k=k+1;
    end
end

%% initial value
for i=1:pb_region
    
    if i<pb_region
        switch reactor
            case 'TMSR'
                for m=1:triso_layer_nb
                    init.set(['Tp', num2str(i), num2str(m)], 'T0_fuel');
                end
            case 'Mk1'
                if i==1
                    init.set(['Tp', num2str(i), num2str(bu_nb)], 'T0_fuel');
                else
                    for m=1:triso_layer_nb
                    init.set(['Tp', num2str(i),num2str(m), num2str(bu_nb)], 'T0_fuel');
                    end
                end
        end
    else
        init.set(['Tp', num2str(i), num2str(bu_nb)], 'T0_fuel');
    end
end


