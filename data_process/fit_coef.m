 function coef_map = fit_coef(temp_mat, data)
  %{ fit a linear function data = coef * temp_mat
  %  data: containers.Map that contains xs values for each type, such as
  %   'fission', 'absorption' ...
   %}
    
        coef_map = containers.Map; 
        for k = keys(data)
            name = k{1};
            [coefs, residual]=fit_matrix(temp_mat,  data(name));
            coef_map(name) = coefs;
            if max(residual) > 0.2
                fprintf('residual is too large for %s\n', name)
                disp(residual)
                fprintf('cross_section data is\n')
                disp(data(name))
            end
        end
 end
 
