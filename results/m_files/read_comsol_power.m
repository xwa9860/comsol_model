function [R, Z, power] = read_comsol_power(file_name, rbin, zbin)
    % read the data from a txt file saved from COMSOL, using readtable
    % function to skip the first 9 lines that contains the file
    % header(simulation information)
    
    M = readtable(file_name, 'HeaderLines', 9, 'Delimiter', '\t ', 'MultipleDelimsAsOne', true );
    M = table2array(M);
    
%     k = find(isnan(M))'
%     M(k) = 0;
%     M(isnan(M)) = 0;
%     
     
    R = M(:, 1); 
    Z = M(:, 2);
    
    power = reshape(M(:, 3), [rbin, zbin])';
    
end