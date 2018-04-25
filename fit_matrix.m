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
    eval_res = false;
    mat_size = size(matrix_to_fit); % caseNb*XSmatrixSize, e.g. scattering matrix: temp_case_nb*8*8
    x_size = size(x);
    coefs = ones([x_size(2) mat_size(2:end)]);
    
    switch length(mat_size)
        case 3 % 3D array, e.g. scattering matrix for different cases
            if mat_size(1) ~= length(x)  % case nb
                error('x, y matrix not fit\n');
            end
            for i = 1 : mat_size(3)
                for j = 1 : mat_size(2) 
                    y = matrix_to_fit(:, j, i);
                    coefs(:, j, i) = x\y;    
                    if eval_res
                        % evaluate the goodness of fit and give warnings if the error
                        % is large
                        residual = max(abs((x*coefs(:, j, i)-matrix_to_fit(:, j, i))./matrix_to_fit(:, j, i)));
                        if ~(residual < 0.3)
                            if isinf(residual) || isnan(residual)
                                rate_of_zero = sum(y < 1E-11)/length(y);
                                if rate_of_zero > 0.3
                                    %warning('most of the values are 0, coefficients forced to be 0');                        
                                    coefs(:, j, i) = zeros(x_size(2), 1);
                                else
                                    %warning('error too large because some (less than half) of the values are 0')
                                    %'rate of zero' 
                                    %rate_of_zero                            
                                end
                            else
                                warning('error too large')
                                residual
                                figure;
                                plot(x(:, 2), x*coefs(:, j, i), 'o')
                                hold on;
                                plot(x(:, 2), matrix_to_fit(:, j, i), '.')
                                hold off;
                                figure;
                                plot(x(:, 2), x*coefs(:, j, i)-matrix_to_fit(:, j, i), 'o')

                            end
                        end
                    end
                end
            end
        case 2 % 2D array, e.g. all other cross sections except the scattering matrix
            mat_size = size(matrix_to_fit);
            for g = 1 : mat_size(2)
                coefs(:, g) = x\matrix_to_fit(:, g);
                if eval_res
                    residual = max(abs((matrix_to_fit(:, g) - x*coefs(:, g))./matrix_to_fit(:, g)));
                    if ~(residual < 0.3) 
                        warning('Fitting error too large');
                        fprintf('matrix_to_fit');
                        fprintf(matrix_to_fit(:,g));               
                        fprintf('coefs');
                        fprintf(coefs);
                    end
                end
            end 
        otherwise
            error('cross section matrix size not supported');
    end
    
end

