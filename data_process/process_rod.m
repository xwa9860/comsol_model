function model = process_rod(model, comsol_var_name, pos_var_name)
    %{ 
    This function get the neutronics data from serpent output files for
    control rod channels and input them in the comsol model 

        comsol_var_name: the name of the comsol variable that these control rod
        cross-sections are associated to, e.g.: 'xs_rodCRCC1'
        pos_var_name: the name of the comsol variable that these control rod
        position is associated to, e.g.: 'h_CRCC1'
    %}

    global rod_data_path;
    global seg_nb; % number of verticle segments that the control rods are divided into when computing cross-sections
    isCR = true;

    %% run serpent res files to load the data into workspace
    % when all the rods are all the way down in the core
    % and when all the rods are totally out of the core
    file_names = {[rod_data_path, 'all_down_res.m'], [rod_data_path, 'no_rod_res.m']};
    
    res = read_fixed(file_names, seg_nb, isCR, pos_var_name);
    model = set_a_XS_map(model, comsol_var_name, res, isCR); 
    
    res = read_dep(file_names, seg_nb, 1, isCR, pos_var_name);
    model = set_a_XS_map(model, comsol_var_name, res, isCR); 
    model = set_diff2(model, comsol_var_name); % diff2 variable is set differently from other cross-section data
    
end
    
 
 
    
    


