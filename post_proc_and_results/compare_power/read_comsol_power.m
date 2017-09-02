function power = read_comsol_power(file_name, rbin, zbin)
    M = csvread(file_name, 9, 0);
    k = find(isnan(M))'; 
    M(k) = 0;
    M(isnan(M)) = 0;
    
    R = M(:, 1);
    Z = M(:, 2);
    
    power = reshape(M(:, 3), [rbin, zbin])'; 
    %power = power(zbin:-1:1, :);
end