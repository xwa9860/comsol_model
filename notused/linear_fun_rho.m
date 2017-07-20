function slope = linear_slope(ref_temp, ref_xs_matrix)
%{
 calculate linear function for flibe cross sections
 XS(T) = 0 + (XS_ref/T_ref) * T
 with XS_ref/T_ref = slope
%}
gnb =8; % energy group number

mat_size=size(ref_xs_matrix);

if length(mat_size)== 2
    if mat_size(1) == gnb %2D matrix of 8*8
        for i=1:mat_size(1)
            for j = 1:mat_size(2)
                slope(i, j) =  ref_xs_matrix(i, j)/ref_temp ;
            end
        end 
    elseif  mat_size(1) == 1 && mat_size(2) == gnb%2D matrix of 1*gnb(array)
        for i=1:mat_size(2)
                slope(i) = ref_xs_matrix(1, i)/ref_temp;
        end
    else
        display('Warning: cross section provided is not in the right format, should be either an array of size 1*gnb or a matrix of size gnb*gnb')
    end
else
    display('Warning: cross section provided is not in the right format, should be either an array of size 1*gnb or a matrix of size gnb*gnb')
end 
