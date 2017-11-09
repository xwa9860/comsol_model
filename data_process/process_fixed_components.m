function model = process_fixed_components(model, comsol_var_name, univ)
    %{ 
    This function get the neutronics data from serpent res file 
    and set them into the comsol model 
    for the components of which xs don't dependent on temperatures,
    basically all the components except for fuel and flibe
    %}

    global data_path;
    file_name = {[data_path, 'fixed\', 'case_1.m']};  

    fixed_data_map = read_fixed(file_name, univ, false, '');
    isCR = false;
    model = set_a_XS_map(model, comsol_var_name, fixed_data_map, isCR);   
    
    xsdata = read_dep([data_path, 'fixed\'], univ, 1, isCR, '');
    model = set_a_XS_map(model, comsol_var_name, xsdata, isCR);
    model = set_diff2(model, comsol_var_name);
end


