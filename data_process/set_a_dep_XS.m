function model = set_a_dep_XS(model, comsol_var_name, XS_name, temp_vars, coefs, flag)
%{
set a temperature dependent cross section matrix to comsol model via matlab livelink for comsol

model: comsol model
comsol_var_name: name of the comsol variable
coefs: matrix contains coefficients, so that XS = coefs * temps
    temp_vars_length * gnb or temp_vars_length * gnb *gnb matrix of
    doubles
flag: whether 'log_temp_dep' or 'lin_temp_dep'
    
%}
    global xs_name_unit_map;
    global gnb;
    unit = xs_name_unit_map(XS_name);   % neutronics parameter unit, e.g. 1/cm for cross-sections
    var_size = size(coefs);
        
    if length(var_size) == 2 
        if var_size(1) ~= length(temp_vars)+1 || var_size(2)~= gnb
            size(temp_vars)
            error(['coefficient value dimension doesnot match temp variables',...
            'should be temp_vars_length * gnb or temp_vars_length * gnb *gnb'])
        end
        % if the array is 1D or a constant, name the variables like d1, d2
        model = set_a_1d_XS(model, comsol_var_name, XS_name, temp_vars, coefs, flag);
    elseif length(var_size) ==3 % for scattering matrix
        if var_size(1) ~= length(temp_vars)+1 || var_size(2)~= gnb || var_size(3)~= gnb
            size(temp_vars)
            error(['coefficient value dimension doesnot match temp variables',...
            'should be temp_vars_length * gnb or temp_vars_length * gnb *gnb'])
        end
        model = set_a_2d_XS(model, comsol_var_name, XS_name, temp_vars, coefs, flag);
    else           
        error(['XS matrix size not supported for ', XS_name,  size(var_size)]);
    end

   
    
    %% nested function called above
    function model = set_a_1d_XS(model, comsol_var_name, XS_name, temp_vars, coefs, flag)
        for j = 1:var_size(2)
            if nnz(coefs(:,j))==0 % if all the coefs are 0
                xs_exp = [num2str(0),  unit];
            else
                func = ['(', num2str(coefs(1, j), '%10.8e')];
                for m = 2:var_size(1)
                    % loop for temp var names T_fuel1, T_fuel2, ...
                    if strcmp(flag, 'log_temp_dep')
                        func = [func, '+(log(', temp_vars(m-1), '[1/K])*(', num2str(coefs(m, j), '%10.8e'), '))'];
                    elseif strcmp(flag, 'lin_temp_dep')
                        func = [func, '+(', temp_vars(m-1), '*(', num2str(coefs(m, j), '%10.8e'), '))'];
                    end
                end
                xs_exp = strjoin([func, ')', unit]);
            end
            model.variable(comsol_var_name)...
                 .set([XS_name, num2str(j)], ...
                      xs_exp...
                      );
        end        
    end

    function model =  set_a_2d_XS(model, comsol_var_name, XS_name, temp_vars, coefs, flag)       
        var_size = size(coefs);
        if length(var_size) == 3
            for g1 = 1:var_size(2)
                for g2 = 1:var_size(3)
                    if nnz(coefs(:, g1, g2))==0
                       XS_exp = [num2str(0),  unit]; 
                    else
                        func = ['(', num2str(coefs(1, g1, g2), '%10.8e')];
                        for m = 2:var_size(1)
                            if strcmp(flag, 'log_temp_dep')
                                func = [func, '+(log(', temp_vars(m-1), '[1/K])*(', num2str(coefs(m, g1, g2), '%10.8e'), '))'];
                            elseif strcmp(flag, 'lin_temp_dep')
                                func = [func, '+(',temp_vars(m-1), '*(', num2str(coefs(m, g1, g2), '%10.8e'), '))'];
                            end
                        end
                        XS_exp = strjoin([func, ')', unit]);
                       
                    end
                    model.variable(comsol_var_name)...
                         .set([XS_name, num2str(g2), num2str(g1)], ...
                               XS_exp); 
                end
            end
        end
    end
end
