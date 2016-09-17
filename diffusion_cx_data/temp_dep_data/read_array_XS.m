%read array from serpent input and turn it to an array of group-nb cross section
%data
%%[1*n] from [1*2n+1]

function XS_array = read_array_S0(serpent_data_name, row_nb, gnb)
% row_nb in the serpent data matrix
    for i=1:gnb
        k=i*2-1;
        XS_array(i)=serpent_data_name(row_nb, k);
    end   
end
