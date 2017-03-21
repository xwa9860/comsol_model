%%return coefs: 
%In the non MS mode
    %For scattering matrix coefs: coefs(:,:,1) is the gnb*gnb
    %size matrix for c0, and coefs(:,:,2) is the gnb*gnb size matrix for c1
    %For other type of XS coefs: coefs(:,1) is the gnb*1 size array for c0


function coefs = fit_matrix(x, matrix_to_fit, figTitle, MV)
% aug17, 2016: added multi-temperature dependent functions for multi-scale
% treatment

% MV: multivariable, the temperature variables contains more than one
% features, e.g.['1', 'T_fuel', 'T_flibe']

if nargin > 4
    error('fit-matrix function:TooManyInputs', ...
        'requires at most 4 inputs');
end
if nargin == 3
        MV=false;
end

mat_size = size(matrix_to_fit);
% caseNb*XSmatrixSize, e.g. scattering matrix: temp_case_nb*8*8
% for lower dimensional XS, temp_case_nb * 8 

if MV
    % fit to a coefficient array 'coefs'
    if length(mat_size) == 3 %3D matrix, e.g. scattering matrix for different temperatures
        if length(x) ~= mat_size(1)
            error('ERROR: matrix to fit doesnot match the size of input variables number');
        end
        %for i=1:mat_size(2)
            for j = 1:mat_size(3)
                y = matrix_to_fit(:, :, j); %caseNb * gnb e.g. 9x8
                beta = x\y; % varNb * gnb e.g. 3x8
                %beta = x\y returns the least squres solution to x*beta = y
                
                % check relative residual and set those with relative
                % residual = infinity to 0, because it means at least one of the real y
                % value is 0. The BIG assumption here is that if the cross section is 0 for one of the temperatures,
                %then it should be 0. This is to avoid negative cross section
                % values when using the fitted formula
                res = max(((y - x*beta)./y), [], 1);
                beta(:, res == Inf) = 0;
                coefs(j, :,:) = beta;
            end
        %end
    end 

    if length(mat_size) == 2 %2D matrix
        coefs=x\matrix_to_fit;
        % check relative residual and set those with relative
        % residual = infinity to 0, because it means the real y
        % value is 0. This is to avoid negative cross section
        % values when using the fitted formula
        res = abs(matrix_to_fit - x*coefs)./matrix_to_fit;
        coefs(res > 10^20) = 0;
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
