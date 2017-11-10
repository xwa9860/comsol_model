function res_mat = read_det_output(file_name, rbin, zbin, det_name)

    %{
    returns a matrix power_mat[ri, zj]=power at ith rbin and jth zbin
    det_name: detector name
    %}
    
    %% run serpent result file to load the data into workspace
    run(file_name);
    
    %% raw_data is the variable with the name det_name
    raw_data = eval(det_name); 
    if size(raw_data)~= [zbin * rbin, 12]
        fprintf('wrong detector output dimension')
    end
    
    %% put the data in a zbin*rbin matrix
    res_mat = zeros(zbin, rbin);
    k = 1;
    for i = 1:rbin
        for j = 1:zbin

            res_mat(raw_data(k, 8), raw_data(k, 10)) = raw_data(k, 11);
            k = k+1;
        end
    end
    
    %% reverse the z axis
    res_mat = res_mat(zbin:-1:1, :);