function model = set_coef(model, comsol_var_name, temp_var_name, data, flag, data_units)
        for k = keys(data)
            name = k{1};
            model = set_data(model, comsol_var_name,  name, temp_var_name, data(name), data_units(name), flag);
        end
end
