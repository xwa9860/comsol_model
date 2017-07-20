function coef = fit_fuel(log_temp_mat, data)
% fit a log_linear function XS = c1*log(T) + c0
    coef = containers.Map; 
    coef(scat) = fit_matrix(log_temp_mat, Res_Scat_Fuel, 'scat fuel');
    
    coef(nsf) = fit_matrix(log_temp_mat, Res_NSF_Fuel, 'NSF fuel');
   
    fuel_Rem.coefs = fit_matrix(log_temp_mat, Res_Rem_Fuel, 'removal fuel');
   
    fuel_Tot.coefs = fit_matrix(log_temp_mat, Res_Tot_Fuel, 'total fuel');
  
    fuel_Diff2.coefs = fit_matrix(log_temp_mat, Res_Diff2_Fuel, 'diff2 fuel');
   