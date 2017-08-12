function power_mat = read_power(case_nb, power_nb, data_path)
power_mat = ones(case_nb, power_nb);
for c = 1:case_nb
    for i = 1:power_nb
        run([data_path, 'power_data\case_', num2str(c),'.m']);
        power_mat(c, i) = eval(['DET' num2str(i-1) '(11)']);
    end
end
end