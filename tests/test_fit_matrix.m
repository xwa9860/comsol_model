% an easy case, this should be perfect 
y = [   19.0000000000000e+000
    11.0000000000000e+000
    18.0000000000000e+000
    17.0000000000000e+000
    6.00000000000000e+000];
x = randi([2 100], [5 8]);
[coef, residual] = fit_matrix(x, y);
if (abs(x*coef - y) < 1E-6) == ones(5)
    fprintf('test passed\n')
else
    fprintf('test failed\n')
end

% a harder case with larger matrices
y = randi([1300 2000], [50 8]);
x = randi([300 1000], [50 26]);
[coef, residual] = fit_matrix(x, y);

if sum(abs((x*coef - y)./y) < 2E-1) <40
    fprintf('test failed. 80 percent of the coefficients are not good enough\n')
else
    fprintf('test passed\n')
end