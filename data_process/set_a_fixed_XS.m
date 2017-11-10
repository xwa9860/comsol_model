function model = set_a_fixed_XS(model, comsol_var_name, XS_name, values, isCR)
%{
 set a cross section matrix to comsol model via matlab livelink for comsol
 values:
    
%}
 
    global xs_name_unit_map;
    global gnb dnb;
    unit = xs_name_unit_map(XS_name);
    
    var_size = size(values);
    if length(size(values)) == 2      
        % if the values array is 1D or a constant, name the variables like d1, d2
        if var_size(1) == 1 && (var_size(2) == 1 || var_size(2) == gnb || var_size(2) == dnb)
            model = set_a_1d_XS(model, comsol_var_name, XS_name, values, isCR);
        else
            var_size
            error(['coefficient value dimension doesnot match temp variables',...
            'should be 1 * gnb or 1 * 1'])
        end
        
    elseif length(var_size) ==3 && var_size(1) == 1 && var_size(2) == gnb && var_size(3) == gnb
        % for scattering matrix    
        model = set_a_2d_XS(model, comsol_var_name, XS_name, values, isCR);     
    else           
        error(['XS matrix size not supported for ', XS_name,  size(var_size)]);
    end
 

    
    %% nested function called above
    function model =  set_a_1d_XS(model, comsol_var_name, XS_name, data_arr, isCR)
        for j=1:length(data_arr)
            if ~isCR
                xs_exp = [num2str(values(j),'%10.6e'), unit];
            else 
                xs_exp = [values{j}, unit] ;               
            end            
            model.variable(comsol_var_name).set([XS_name, num2str(j)], ...
                           xs_exp);
        end
    end

    function model =  set_a_2d_XS(model, comsol_var_name, XS_name, data_arr, isCR)       
        var_size = size(data_arr);
        for i=1:var_size(2) 
           for j=1:var_size(3)
               if ~isCR
                   xs_exp = [num2str(values(1, j, i),'%10.6e'), unit];
               else
                   xs_exp = cell2mat([values(1, j, i), unit]);
               end
               model.variable(comsol_var_name).set([XS_name, num2str(i), num2str(j)], xs_exp);
           end 
        end
    end
end
        


