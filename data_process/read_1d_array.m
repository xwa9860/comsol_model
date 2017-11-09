function XS_array = read_1d_array(serpent_data_name, row_nb, value_nb, isCR, pos_var_name)
%{
read 1D array from serpent input([1*2n+1]) and turn it to an array of
%cross sections [1*n] 


row_nb: row number in the serpent data matrix
value_nb: nb of values to be read, usually = energy group nb
isCR: if the array is for a control rod
pos_var_name: control rod position variable name

return: 
    1*value_nb cell array of chararrays(even if it's just a number, it's
    converted to char)

%}
    if nargin == 3
        isCR = false;
    end

    
    for i=1:value_nb
        k=i*2-1;
        if isCR
            % get global variables about the rods, defined in
            % model_attributes.m file
            global seg_heights seg_nb;
            
            % rod segment 1
            xsg = sprintf('(%10.6e*str(%4f-z[1/m])*str(z[1/m]-%4f)', ...
                          serpent_data_name(1, k) , seg_heights(1), seg_heights(2));
            
            % rod segment 2 and 3
            for seg = 2:3
                xsg = sprintf('%s + str(%f-z[1/m])*str(z[1/m]-%f)*(str(z[1/m]-%s)*%10.6e + str(%s-z[1/m])*%10.6e)', ...
                              xsg, ...
                              seg_heights(seg), seg_heights(seg+1), pos_var_name, serpent_data_name(seg, k),...
                              pos_var_name, serpent_data_name(seg+seg_nb, k));
            end
            
            % rod segment 4
            seg=4;
            xsg = sprintf('%s + %10.6e*str(%f-z[1/m])*str(z[1/m]-%f))', ...
                           xsg,...
                           serpent_data_name(seg, k), seg_heights(seg), seg_heights(seg+1));

            XS_array(i)= {xsg};
            
        else
            XS_array(i)= serpent_data_name(row_nb, k);
        end
    end   
end
