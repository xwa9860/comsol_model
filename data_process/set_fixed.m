
function model = set_fixed(model, comsol_var_name, xsdata, data_units)
        for k = keys(xsdata)
            name = k{1};
            set_data(model, comsol_var_name,  name, 'NA', xsdata(name), data_units(name), 'fixed');
        end
end