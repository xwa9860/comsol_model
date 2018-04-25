function model = create_ht_fuel_multiscale(model, module_name, temp_var_ht, bu_nb)

    global reactor;
    global pb_region;
    global region_fuel_kernel;
    global region_coated;
    global fuel_domNb;

    triso_layer_nb = region_fuel_kernel + region_coated;

    %% multi-scale treatment to get the temperature profile inside a fuel pebble
    model.physics.create(module_name, 'CoefficientFormPDE', 'geom1');
    model.physics(module_name).identifier(module_name);
    model.physics(module_name).field('dimensionless').field(['Tp', num2str(bu_nb)]);


    model.physics(module_name).selection.set(fuel_domNb);
    model.physics(module_name).label(['Heat diffusion in pebble', num2str(bu_nb)]);
    model.physics(module_name).prop('Units').set('SourceTermQuantity', 'powerdensity');
    model.physics(module_name).prop('Units').set('DependentVariableQuantity', 'temperature');
    model.physics(module_name).field('dimensionless').component(temp_var_ht);


    switch reactor
        case 'TMSR'     
            dep_var_nb = triso_layer_nb *(pb_region-1) + 1;
        case 'Mk1'
            dep_var_nb = triso_layer_nb*(pb_region-2) + 2;
    end


    model = create_multiscale_matrices(model, module_name, dep_var_nb, bu_nb);

end