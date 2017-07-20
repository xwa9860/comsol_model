%read 1D array from serpent input([1*2n+1]) and turn it to an array of
%cross sections [1*n] 

function XS_array = read_1d_array(serpent_data_name, row_nb, value_nb)
% row_nb in the serpent data matrix
% value_nb: nb of values to be read, usually = energy group nb
    for i=1:value_nb
        k=i*2-1;
        XS_array(i)=serpent_data_name(row_nb, k);
    end   
end
