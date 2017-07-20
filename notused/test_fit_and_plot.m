
fuel_temp = [300, 600, 900, 1200];
log_fuel_temp = log(fuel_temp);

y_fuel = Res_Scat_Fuel(1:4, 3, 4)'  % scat34
[c0, c1] = fit_and_plot(log_fuel_temp, y_fuel, 'fuel_{scat}', [ num2str(1) ' to ' num2str(1)]);
y_fuel_pred = c0 + c1*log(fuel_temp)