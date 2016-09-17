function xs_data = write_XS_data(fileID, var_name, var_to_write, unit, flag)
% write cross section data to txt files, that can then be imported to
% comsol via GUI.
if strcmp(flag, 'fixed')
        var_size = size(var_to_write);
       for i=1:var_size(1)  
           for j=1:var_size(2)
            fprintf(fileID, ...
                [var_name, num2str(i), num2str(j), ' ', ...
                num2str(var_to_write(i, j)), unit, '\n']);
           end 
       end
elseif strcmp(flag, 'log_temp_dep')
    var_size = size(var_to_write.c0);
        for i = 1:var_size(1)
            for j = 1:var_size(2)
                if var_to_write.c1(i, j) ==0 && var_to_write.c0(i, j)==0
                   fprintf(fileID, ...
                        [var_name, num2str(i),num2str(j),' ', ...
                          num2str(0), unit, '\n'])
                else
                    
                 fprintf(fileID, ...
                        [var_name, num2str(i),num2str(j),' ', ...
                          '(', num2str(var_to_write.c1(i, j)), '*log(', var_to_write.temp_var ,'[1/K])+(', num2str(var_to_write.c0(i, j)), '))' , unit, '\n'])
                end
            end
        end
elseif strcmp(flag, 'lin_temp_dep')
    var_size = size(var_to_write.c0);
        for i = 1:var_size(1)
            for j = 1:var_size(2)
                 if var_to_write.c1(i, j) ==0 && var_to_write.c0(i, j)==0
                   fprintf(fileID, ...
                        [var_name, num2str(i),num2str(j),' ', ...
                          num2str(0), unit, '\n'])
                else
                 fprintf(fileID, ...
                        [var_name, num2str(i),num2str(j),' ', ...
                          '(', num2str(var_to_write.c1(i, j)), '*(', var_to_write.temp_var ,'[1/K])+(', num2str(var_to_write.c0(i, j)), '))' , unit, '\n'])
                end
            end
        end
end
   