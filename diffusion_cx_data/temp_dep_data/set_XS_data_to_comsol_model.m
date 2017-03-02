function set_xs_data = set_XS_data(model, comsol_var_name, XS_name, var_to_write, unit, flag, MS)
% set cross section data to comsol model via matlab livelink for comsol

if nargin > 7
    error('fit-matrix function:TooManyInputs', ...
        'requires at most 4 inputs');
end
if nargin == 6
        MS=false;
end

%% for fixed(independent on temperature) cross section values
if strcmp(flag, 'fixed')
       var_size = size(var_to_write);
       if var_size(1) == 1 
           % if the array is 1D, name the variables like d1, d2, ... instead of d11, d12...
           for j=1:var_size(2)
               model.variable(comsol_var_name).set([XS_name, num2str(j)],  ...
                [num2str(var_to_write(1, j),'%10.8e'), unit]);
           end 
       else
           for i=1:var_size(1)  
               for j=1:var_size(2)
                   model.variable(comsol_var_name).set([XS_name, num2str(i), num2str(j)],  ...
                    [num2str(var_to_write(i, j),'%10.8e'), unit]);
               end 
           end
       end
%% for cross sections with log linear dependence with temperature
elseif strcmp(flag, 'log_temp_dep')
    var_size = size(var_to_write.coefs)  % should be gnb*2 or gnb*gnb*2
    if MS
        if length(var_size) ==2
            % if the array is 1D, name the variables like d1, d2, ... instead of d11, d12...
             for j = 1:var_size(1)
                    if sum(var_to_write.coefs(j, :) ==0) 
                        model.variable(comsol_var_name).set(...
                            [XS_name, num2str(j)], ...
                            [num2str(0),  unit]);
                    else
                        var_str = '(';
                        for k = 1:var_size(2) %temperature number
                            var_str = [var_str,'(', num2str(var_to_write.coefs(j, k)), ')*log(', var_to_write.temp_var(k,:) ,'[1/K])+']    
                        end
                      
                        model.variable(comsol_var_name).set(...
                                [XS_name, num2str(j)], ...
                                [var_str, '0)', unit]);                           
                   end
            end
        else
            
            %%
            % $\sum_k coefs[i, k, j]log(T_k)$
            for i = 1:var_size(1) %group number
                for j = 1:var_size(3) % group number
                    var_to_write.coefs(i, :, j)
                    if sum(var_to_write.coefs(i, :, j)) ==0 
                        % if all the coef are 0, then set the CX to 0 instead of 0*T1+0*T2... 
                        model.variable(comsol_var_name).set(...
                            [XS_name, num2str(i),num2str(j)], ...
                            [num2str(0),  unit]);
                    else
                        var_str = '(';
                        for k = 1:var_size(2) %temperature number
                            var_str = [var_str,'(' num2str(var_to_write.coefs(i, k, j)), ')*log(', var_to_write.temp_var(k,:) ,'[1/K])+']    
                        end
                      
                        model.variable(comsol_var_name).set(...
                                [XS_name, num2str(i),num2str(j)], ...
                                [var_str, '0)', unit]);
                    end
                end
            end
        end
    else
        if length(var_size) == 2
            % if the array is 1D, name the variables like d1, d2, ... instead of d11, d12...
            for j = 1:var_size(1)
                    if var_to_write.coefs(j, 1) ==0 && var_to_write.coefs(j, 2)==0
                        model.variable(comsol_var_name).set(...
                            [XS_name, num2str(j)], ...
                            [num2str(0),  unit]);
                    else
                        model.variable(comsol_var_name).set(...
                            [XS_name, num2str(j)], ...
                            ['(',num2str(var_to_write.coefs(j, 2),'%10.8e'), '*log(', var_to_write.temp_var ,'[1/K])+(', num2str(var_to_write.coefs(j, 1)), '))' , unit]);
                    end
            end
        else
            for i = 1:var_size(1)
                for j = 1:var_size(2)
                    if var_to_write.coefs(i, j, 1) ==0 && var_to_write.coefs(i, j, 2)==0
                        model.variable(comsol_var_name).set(...
                            [XS_name, num2str(i),num2str(j)], ...
                            [num2str(0),  unit]);
                    else
                        model.variable(comsol_var_name).set(...
                            [XS_name, num2str(i),num2str(j)], ...
                            ['(',num2str(var_to_write.coefs(i, j, 2)), '*log(', var_to_write.temp_var ,'[1/K])+(', num2str(var_to_write.coefs(i, j, 1)), '))' , unit]);
                    end
                end
            end
        end
    end
%% for cross sections with linear dependence of temperature
elseif strcmp(flag, 'lin_temp_dep')
    var_size = size(var_to_write.c0);
    if var_size(1) == 1
        % if the array is 1D, name the variables like d1, d2, ... instead of d11, d12...
        for j = 1:var_size(2)
                 if var_to_write.c1(1, j) ==0 && var_to_write.c0(1, j)==0
                    model.variable(comsol_var_name).set(...
                        [XS_name, num2str(j)], ...
                        [num2str(0), unit]);
                 else
                     model.variable(comsol_var_name).set(...
                        [XS_name, num2str(j)], ...
                        ['(', num2str(var_to_write.c1(1, j)), '*(', var_to_write.temp_var ,'[1/K])+(', num2str(var_to_write.c0(1, j)), '))', unit]);
                end
        end
    else
        for i = 1:var_size(1)
            for j = 1:var_size(2)
                 if var_to_write.c1(i, j) ==0 && var_to_write.c0(i, j)==0
                    model.variable(comsol_var_name).set(...
                        [XS_name, num2str(i),num2str(j)], ...
                        [num2str(0), unit]);
                 else
                     model.variable(comsol_var_name).set(...
                        [XS_name, num2str(i),num2str(j)], ...
                        ['(', num2str(var_to_write.c1(i, j)), '*(', var_to_write.temp_var ,'[1/K])+(', num2str(var_to_write.c0(i, j)), '))', unit]);
                end
            end
        end
    end
end

end % end of function

   