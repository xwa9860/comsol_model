function powerN = normalize_power(power, R)
% normalize the total power to 1
    weight = (R.^2 - (R-0.01).^2)';
    total = sum(sum(power*weight));
    powerN = power./total;
