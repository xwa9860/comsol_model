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
                xsg = sprintf('%10.8e*step_rod(%s-%f)', serpent_data_name(1, k) , rod_height, heights(1));
                for seg = 2:seg_nb
                    xsg = sprintf('%s + %10.8e*step_rod(%s-%f)', xsg, serpent_data_name(seg, k), rod_height, heights(seg));
                end
                XS_mat(j, i+1)= {xsg};
            else
                XS_mat(j, i+1) = serpent_data_name(row_nb, k); 
            end
        end
    end
end