 function coef_map = fit_coef(temp_mat, data)
 %{
 fit a linear function data = coef * temp_mat
 temp_mat: temperature matrix
 data: containers.Map that contains xs values for each type, such as
       'fission', 'absorption' ...
 return: a containers.Map that contains xs_name - coefficients pairs
         coefficients are matrices of doubles
         size of coefficients matrices is: 
            (length of temperature variables ) * gnb for 1D XS
            or 
            (length of temperature variables ) * gnb * gnb for 2D XS
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
 
