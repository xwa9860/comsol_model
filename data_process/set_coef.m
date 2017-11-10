function model = set_coef(model, comsol_var_name, temp_var_name, data, flag)
%{ 
set fuel temperature coefficients to the comsol model 

    comsol_var_name: variable name in COMSOL model
    temp_var_name: temperature variable name in COMSOL model
    data: coefficients 
%}
    for k = keys(data)
        name = k{1};
        model = set_a_dep_XS(model, comsol_var_name,  name, temp_var_name, data(name), flag);
    end

   
end