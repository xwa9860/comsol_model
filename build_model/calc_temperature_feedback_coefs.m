%Compute temperature reactivity feedback for fuel and plot the comparison
%between this model and serpent
fuel_temperatures = [300, 600, 900, 1200, 1500];

for caseNb = 1:5
    model.param.set('T0_fuel', num2str(fuel_temperatures(caseNb)), 'initial temperature for fuel');
    model.sol('sol16').runAll;
    lambda_eigen = mphglobal(model, 'lambda');
    fuel_eigens(caseNb) = lambda_eigen;
    fprintf('\nAt fuel temperature\n');
    fprintf('%.10f \n', fuel_temperatures(caseNb))
    fprintf('\nThe eigenvalue is\n');
    fprintf('%.10f \n', lambda_eigen)
end
drho_fuel = calc_delta_reactivity(fuel_eigens, 'COMSOL');

rownb = 5;
unb = 4;
for caseNb = 1:5
    read_array_XS(IMP_KEFF, rownb, 1);
    keff_serpent(caseNb) = read_array_XS(IMP_KEFF, rownb, 1);
    rownb = rownb + unb;
end

drho_serpent_fuel = calc_delta_reactivity(keff_serpent, 'SERPENT');
[p, some] = polyfit(fuel_temperatures, drho_fuel, 1);
fprintf('\n The fuel feedback coef in serpent is %4.2f\n', p);


%% compute temperature reactivity feedback for flibe
flibe_temperatures = [1461.5, 1256.6, 1051.7, 846.8, 641.8]; % correspond to density 1700, 1800, ...2100
model.param.set('T0_fuel', '900[K]', 'initial temperature for fuel');
for caseNb = 1:5
    model.param.set('T0_flibe', num2str(flibe_temperatures(caseNb)), 'initial temperature for flibe');
    model.sol('sol16').runAll;
    lambda_eigen = mphglobal(model, 'lambda');
    flibe_eigens(caseNb) = lambda_eigen;
    fprintf('\nThe eigenvalue is\n');
    fprintf('%.10f \n', lambda_eigen)
end
drho_flibe = calc_delta_reactivity(flibe_eigens, 'COMSOL');

rownb = rownb + 1; % continue from the cases for fuel
for caseNb = 1:5
    read_array_XS(IMP_KEFF, rownb, 1);
    keff_serpent(caseNb) = read_array_XS(IMP_KEFF, rownb, 1);
    rownb = rownb + unb;
end
drho_serpent_flibe = calc_delta_reactivity(keff_serpent, 'SERPENT');
[p, some] = polyfit(flibe_temperatures, drho_flibe, 1);
fprintf('\n The flibe feedback coef is %4.2f\n', p);

%% reset the initial values to the reactor nominal value
model.param.set('T0_fuel', '800[degC]', 'initial temperature for fuel');
model.param.set('T0_flibe', '700[degC]', 'initial temperature for flibe');

%% plot the results
figure;
plot(flibe_temperatures, drho_flibe, 'k-*');
hold on;
plot(flibe_temperatures, drho_serpent_flibe, 'k--+');
title('Temperature(and void) reactivity feedback for flibe');
ylabel('Reactivity');
xlabel('Temperature(K)');
legend('Diffusion', 'Monte carlo')
hold off;
        
figure;
plot(fuel_temperatures, drho_fuel, 'k-*');
hold on;
plot(fuel_temperatures, drho_serpent_fuel, 'k--+');
title('Temperature reactivity feedback for fuel');
legend('Diffusion', 'Monte carlo')
ylabel('Reactivity');
xlabel('Temperature(K)');
hold off;
        
