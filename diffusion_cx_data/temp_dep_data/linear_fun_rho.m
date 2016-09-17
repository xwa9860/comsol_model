% calculate linear function of rho for flibe cross sections
% calculate XS(rho) = XS_ref + (rho-rho_ref)/rho_ref* XS_ref, XS_ref =
% XS(rho_ref)
% because the density rho is linear with temperature, XS(T) = 0 +
% XS_ref/T_ref * T
function [res_mat_c1, res_mat_c0] = linear_fun_rho(ref_temp, ref_xs_matrix, figTitle)

gnb =8; % energy group number

mat_size=size(ref_xs_matrix);

if length(mat_size)== 2
    if mat_size(1) == gnb %2D matrix of 8*8
        for i=1:mat_size(1)
            for j = 1:mat_size(2)
                res_mat_c1(i, j) =  ref_xs_matrix(i, j)/ref_temp ;
                res_mat_c0(i, j) = 0;

            end
        end 
    elseif  mat_size(1) == 1 && mat_size(2) == gnb%2D matrix
        for i=1:mat_size(2)  %2D matrix with size 1*gnb(array)
                res_mat_c1(i) = ref_xs_matrix(1, i)/ref_temp;
                res_mat_c0(i) = 0;
        end
    else
        display('Warning: cross section provided is not in the right format, should be either an array of size 1*gnb or a matrix of size gnb*gnb')
    end
else
    display('Warning: cross section provided is not in the right format, should be either an array of size 1*gnb or a matrix of size gnb*gnb')
end 
