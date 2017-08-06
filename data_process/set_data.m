function model = set_data(model, comsol_var_name, XS_name, temp_vars, values, unit, flag)
%{
 set cross section data to comsol model via matlab livelink for comsol
%}

    var_size = size(values);  
    
    if strcmp(flag, 'fixed')
        %% for fixed(independent on temperature) cross section values
        if var_size(1) == 1 
           % if the array is 1D, name the variables like d1, d2, ... instead of d11, d12...
           for j=1:var_size(2)
               model.variable(comsol_var_name).set([XS_name, num2str(j)],  ...
                [num2str(values(1, j),'%10.8e'), unit]);
           end 
        else % for scattering matrix
           for i=1:var_size(1)  
               for j=1:var_size(2)
                   model.variable(comsol_var_name).set([XS_name, num2str(i), num2str(j)],  ...
                    [num2str(values(j, i),'%10.8e'), unit]); %changed
               end 
           end
        end
    else
        if var_size(1) ~= length(temp_vars)+1 
        length(temp_vars)
        error('coefficient value dimension doesnot match temp variables');
        end
        % should be temp_vars_nb * gnb or temp_vars_length * gnb *gnb

        if length(var_size) == 2 %the array is 1D, name the variables like d1, d2, ... instead of d11, d12...
            for g = 1:var_size(2)
                if nnz(values(:,g))==0
                    model.variable(comsol_var_name).set(...
                        [XS_name, num2str(g)], ...
                        [num2str(0),  unit]);
                else
                    func = ['(', num2str(values(1, g), '%10.8e')];
                    for m = 2:var_size(1)
                        if strcmp(flag, 'log_temp_dep')
                            func = [func, '+(log(', temp_vars(m-1), '[1/K])*(', num2str(values(m, g), '%10.8e'), '))'];
                        elseif strcmp(flag, 'lin_temp_dep')
                            func = [func, '+(', temp_vars(m-1), '[1/K]*(', num2str(values(m, g), '%10.8e'), '))'];
                        end
                    end
                    model.variable(comsol_var_name).set(...
                        [XS_name, num2str(g)], strjoin([func, ')', unit]));
                end
            end
        elseif length(var_size) == 3
            for g1 = 1:var_size(2)
                for g2 = 1:var_size(3)
                    if nnz(values(:, g1, g2))==0
                        model.variable(comsol_var_name).set(...
                            [XS_name, num2str(g2), num2str(g1)], ...
                            [num2str(0),  unit]);  %changed g2 and g1
                    else
                        func = ['(', num2str(values(1, g1, g2), '%10.8e')];
                        for m = 2:var_size(1)
                            if strcmp(flag, 'log_temp_dep')
                                func = [func, '+(log(', temp_vars(m-1), '[1/K])*(', num2str(values(m, g1, g2), '%10.8e'), '))'];
                            elseif strcmp(flag, 'lin_temp_dep')
                                func = [func, '+(',temp_vars(m-1), '[1/K]*(', num2str(values(m, g1, g2), '%10.8e'), '))'];
                            end
                        end
                        model.variable(comsol_var_name).set(...
                        [XS_name, num2str(g2), num2str(g1)],  strjoin([func, ')', unit])); %changed g2 and g1
                    end
                end
            end
        end
end
   