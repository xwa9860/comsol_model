function powerN = normalize_power(power, R)
weight = (R.^2 - (R-0.02).^2)';
total = sum(sum(power*weight));
powerN = power./total;
