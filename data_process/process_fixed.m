function model = process_fixed(model, data_path, data_units, comsol_var_name, univ)
    %{ 
    This function get the neutronics data from serpent output file for fuel 
    and input them in the comsol model 
    %}
    gnb = 8;
    file_name = [data_path, 'case_1.m'];  

    fixed_data = read_fixed(file_name, univ);
    model = set_fixed(model, comsol_var_name, fixed_data, data_units);   

    run(file_name);        
    xsdata = containers.Map; 
    xsdata('scat') = read_2d_array(INF_S0, univ, gnb);   
    if size(size(xsdata('scat'))) ~= 2
        error('scattering matrix size is wrong');
    end
    xsdata('rem')= read_1d_array(INF_REMXS, univ, gnb);
    xsdata('nsf') = read_1d_array(INF_NSF, univ, gnb);
    xsdata('tot') = read_1d_array(INF_TOT, univ, gnb);
%    xsdata('diff2') = 9/35.0./xsdata('tot');    
 
    for k = keys(xsdata)        
        name = k{1};
        set_data(model, comsol_var_name,  name, 'NA', xsdata(name), data_units(name), 'fixed');
        
    end

end


