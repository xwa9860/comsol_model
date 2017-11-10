function model = set_a_XS_map(model, comsol_var_name, xsdata, isCR)
% set fixed XS data contained in 'xsdata' to 'comsol_var_name'
% for control rods or other components where all the cross-sections are
% fixed(independent of temperatures)


    for k = keys(xsdata)
            name = k{1};
            set_a_fixed_XS(model, comsol_var_name,  name, xsdata(name), isCR);
    end
end