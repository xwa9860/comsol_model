%% XS data, e.g. scattering, matrix[n*n] from a n x (gnb**2) size serpent output matrix e.g.:INF_S0

function XS_mat = read_2d_array(serpent_data_name, row_nb, gnb)
% row_nb in the INF_S0 matrix
    for i = 0:gnb-1 
        for j=1:gnb 
            k=i*gnb*2 + j*2-1;
            XS_mat(j, i+1) = serpent_data_name(row_nb, k); 
        end
    end
end
