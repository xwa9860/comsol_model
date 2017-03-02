%%return coefs: 
%In the non MS mode
    %For scattering matrix coefs: coefs(:,:,1) is the gnb*gnb
    %size matrix for c0, and coefs(:,:,2) is the gnb*gnb size matrix for c1
    %For other type of XS coefs: coefs(:,1) is the gnb*1 size array for c0


function coefs = fit_matrix(x, matrix_to_fit, figTitle, MS)
% aug17, 2016: added multi-temperature dependent functions for multi-scale
% treatment

if nargin > 4
    error('fit-matrix function:TooManyInputs', ...
        'requires at most 4 inputs');
end
if nargin == 3
        MS=false;
end

mat_size = size(matrix_to_fit); % caseNb*XSmatrixSize, e.g. scattering matrix: temp_case_nb*8*8

if MS
    % fit to a coefficient array 'coefs'
    if length(mat_size) == 3 %3D matrix, e.g. scattering matrix for different temperatures
        %for i=1:mat_size(2)
            for j = 1:mat_size(3)
                y = matrix_to_fit(1:length(x), :, j);
                coefs(j, :,:) = x\y;
            end
        %end
    end 

    if length(mat_size) == 2 %2D matrix
         coefs=x\matrix_to_fit;
    end 
else
    if length(mat_size) == 3 
        %3D matrix, e.g. scattering matrix for different temperatures
        % size is temp_case_nb * gnb * gnb                            
        for i=1:mat_size(2)
            for j = 1:mat_size(3)
                y = matrix_to_fit(1:length(x), i, j)';
                [c0, c1] = fit_and_plot(x, y, figTitle, [ num2str(i) ' to ' num2str(j)]);
                res_mat_coef(i, j,:) = [c0, c1];
            end
        end
    end 
    if length(mat_size) == 2 %2D matrix
        for i=1:mat_size(2)
                y = matrix_to_fit(1:length(x), i)';
                [c0, c1] = fit_and_plot(x, y, figTitle, num2str(i));
                res_mat_coef(i, :) =[c0, c1];
        end
    end 
    coefs = res_mat_coef;
end
