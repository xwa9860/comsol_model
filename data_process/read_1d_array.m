%read 1D array from serpent input([1*2n+1]) and turn it to an array of
%cross sections [1*n] 


function XS_array = read_1d_array(serpent_data_name, row_nb, value_nb, isCR, heights, rod_height)
% row_nb in the serpent data matrix
% value_nb: nb of values to be read, usually = energy group nb;
% heights is needed for control rods
    if nargin == 3
        isCR = false;
        heights = [];
    end

    
    for i=1:value_nb
        k=i*2-1;
        if isCR
            seg_nb =4;
            xsg = sprintf('(%10.6e*str(%4f-z[1/m])*str(z[1/m]-%4f)', serpent_data_name(1, k) ,  heights(1), heights(2));
            for seg = 2:3
                xsg = sprintf('%s + str(%f-z[1/m])*str(z[1/m]-%f)*(str(z[1/m]-%s)*%10.6e+str(%s-z[1/m])*%10.6e)', ...
                    xsg, heights(seg), heights(seg+1), rod_height, serpent_data_name(seg, k), rod_height, serpent_data_name(seg+seg_nb, k));
            end
            seg=4;
            xsg = sprintf('%s + %10.6e*str(%f-z[1/m])*str(z[1/m]-%f))', xsg, serpent_data_name(seg, k), heights(seg), heights(seg+1));

            XS_array(i)= {xsg};
        else
            XS_array(i)= serpent_data_name(row_nb, k);
        end
    end   
end
