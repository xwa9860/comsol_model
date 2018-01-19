function res_mat = read_det_output(file_name, R, Z, det_name)

    %{
    returns a matrix power_mat[ri, zj]=power at ith rbin and jth zbin
    det_name: detector name
    %}
    
    %% run serpent result file to load the data into workspace
    run(file_name);
    
    %% raw_data is the variable with the name det_name
    raw_data = eval(det_name); 
    if size(raw_data)~= [length(Z)* length(R), 12]
        fprintf('wrong detector output dimension')
    end
    
    dz = (Z(2)-Z(1)) ; % Z bin size
    dr = R(2)-R(1); % R bin size
    
    %% put the data in a zbin*rbin matrix
    res_mat = zeros(length(Z), length(R));
    k = 1;
    for i = 1:length(Z)
        for j = 1:length(R)
            if j == 1
                vol_bin = dz* pi * (R(1)+dr/2)^2;
            else
                vol_bin = dz *pi*((R(j)+dr/2)^2-(R(j-1)+dr/2)^2);
            end
                      
            % raw_data(k, 8): index number for Z bin
            % raw_data(k, 10): index number for R bin
            res_mat(raw_data(k, 8), raw_data(k, 10)) = raw_data(k, 11)/vol_bin;
            k = k+1;
        end
    end
    
    %% reverse the z axis, because smaller Z's has been put at the begining of the matrix(upper region of the matrix)
    res_mat = res_mat(end:-1:1, :);