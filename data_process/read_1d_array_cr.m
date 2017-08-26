%read 1D array from serpent input([1*2n+1]) and turn it to an array of
%cross sections [1*n] for control rods

function XS_array = read_1d_array_cr(serpent_data_name, row_nb, value_nb, heights)
% row_nb in the serpent data matrix
% value_nb: nb of values to be read, usually = energy group nb
    XS_array = eye(1, value_nb);
    
    for i=1:value_nb
        xsg = sprintf('%s %f*step_rod(h_rod-%f)', xsg, read_1d_array(INF_DIFFCOEF, seg, gnb), heights(seg));
        for seg = 1:seg_nb
         xsg = sprintf('%s %f*step_rod(h_rod-%f)', xsg, read_1d_array(INF_DIFFCOEF, seg, gnb), heights(seg));
         k=i*2-1;
         serpent_data_name(row_nb, k);
        end
        XS_array(i)= xsg;
    end   
end
