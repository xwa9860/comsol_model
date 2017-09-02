%% XS data, e.g. scattering, matrix[n*n] from a n x (gnb**2) size serpent output matrix e.g.:INF_S0

function XS_mat = read_2d_array(serpent_data_name, row_nb, gnb, isCR, heights, rod_height)
% row_nb in the INF_S0 matrix
    
    if nargin == 3
            isCR = false;
            heights = [];
    end
    

    for i = 0:gnb-1 
        for j=1:gnb 
            k=i*gnb*2 + j*2-1;
            if isCR                
                seg_nb =4;
                xsg = sprintf('(%10.8e*str(%f-z[1/m])*str(z[1/m]-%f)', serpent_data_name(1, k) ,  heights(1), heights(2));
                for seg = 2:3
                    xsg = sprintf('%s + str(%f-z[1/m])*str(z[1/m]-%f)*(str(z[1/m]-%s)*%10.8e+str(%s-z[1/m])*%10.8e)', ...
                        xsg, heights(seg), heights(seg+1), rod_height, serpent_data_name(seg, k), rod_height, serpent_data_name(seg+seg_nb, k));
                end
                seg=4;
                xsg = sprintf('%s + %10.8e*str(%f-z[1/m])*str(z[1/m]-%f))', xsg, serpent_data_name(seg, k), heights(seg), heights(seg+1));

                XS_mat(j, i+1)= {xsg};
            else
                XS_mat(j, i+1) = serpent_data_name(row_nb, k); 
            end
        end
    end
end