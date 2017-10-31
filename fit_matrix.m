 function [coefs, residual] = fit_matrix(x, matrix_to_fit)
    %{
    Return a matrix that contains coefs for each x variable
     e.g. x = [1 log(T11) log(T12) ...Tflibe]
    - For scattering matrix coefs: 
        [[beta11, beta12, ..beta1g;
         beta21, beta22, ..beta2g;
                ...
         betam1, betam2, .. betamg]_1,
                ...
         [beta11, beta12, ..beta1g;
         beta21, beta22, ..beta2g;
                ...
         betam1, betam2, .. betamg]_g
        ]

    - For other type of XS coefs: 
        [beta11, beta12, ..beta1g;
         beta21, beta22, ..beta2g;
                ...
         betam1, betam2, .. betamg]

     m is length of x
    %}

    mat_size = size(matrix_to_fit); % caseNb*XSmatrixSize, e.g. scattering matrix: temp_case_nb*8*8
    x_size = size(x);
    coefs = ones([x_size(2) mat_size(2:end)]);

    if length(mat_size) == 3 %3D array, e.g. scattering matrix for different cases
        if mat_size(1) ~= length(x)  % case nb
            error('x, y matrix not fit')
        end
        for g = 1 : mat_size(3)
            y = matrix_to_fit(:, :, g);
            coefs(:, :, g) = x\y;
        end
        residual=0; % to do this is placeholder, need to compute residual properly in the future
    end 

    if length(mat_size) == 2 %2D array
        % for this step, the following three approaches all give the same
        % results
        % - coefs = x\matrix_to_fit;
        % - mat_size = size(matrix_to_fit);
        %   for g = 1 : mat_size(2)
        %    - coefs(:, g) = x\matrix_to_fit(:, g);
        %    - coefs(:, g) = regress(matrix_to_fit(:,g), x);
        mat_size = size(matrix_to_fit);
        for g = 1 : mat_size(2)
            coefs(:, g) = x\matrix_to_fit(:, g);
            %coefs(:, g) = regress(matrix_to_fit(:,g), x);
            residual = (matrix_to_fit - x*coefs)./matrix_to_fit;
        end 
    end
    
end

