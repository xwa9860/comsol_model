function power_mat = read_det_output(file_name, rbin, zbin)
% returns a matrix power_mat[ri, zj]=power at ith rbin and jth zbin
run(file_name);

power_mat = ones(zbin, rbin);
k = 1;
for i = 1:rbin
    for j = 1:zbin
        power_mat(DET1(k, 8), DET1(k, 10)) = DET1(k, 11);
        k = k+1;
    end
end
power_mat = power_mat(zbin:-1:1, :);