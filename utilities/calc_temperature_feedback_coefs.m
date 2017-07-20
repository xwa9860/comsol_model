

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
drho_fuel = calc_delta_reactivity(fuel_eigens, 3, 'COMSOL');

rownb = size(IMP_KEFF);
rownb = rownb(1)+1;
for caseNb = 1:5
    folder_name = ['diffusion_cx_data/temp_dep_data/tmsr_11000_' num2str(fuel_temperatures(caseNb))];
    file_name = '/tmsr_sf1_res.m';   
    run([folder_name file_name]);
end
unb = 4;
for caseNb = 1:5
    read_array_XS(IMP_KEFF, rownb, 1);
    keff_serpent_fuel(caseNb) = read_array_XS(IMP_KEFF, rownb, 1);
    rownb = rownb + unb;
end

drho_serpent_fuel = calc_delta_reactivity(keff_serpent_fuel, 3, 'SERPENT');
[p, some] = polyfit(fuel_temperatures, drho_fuel, 1);
fprintf('\n The fuel feedback coef in serpent is %4.2f\n', p);


%% compute temperature reactivity feedback for flibe
flibe_density = [17, 18, 19, 20, 21]; % the results for 21 is off
tot_case = 5;
flibe_temperatures = (2279.92-flibe_density*100)/0.488+273.15;
model.param.set('T0_fuel', '900[K]', 'initial temperature for fuel');
for caseNb = 1:tot_case
    model.param.set('T0_flibe', num2str(flibe_temperatures(caseNb)), 'initial temperature for flibe');
    model.sol('sol16').runAll;
    lambda_eigen = mphglobal(model, 'lambda');
    flibe_eigens(caseNb) = lambda_eigen;
    fprintf('\nThe eigenvalue is\n');
    fprintf('%.10f \n', lambda_eigen)
end
drho_flibe = calc_delta_reactivity(flibe_eigens, 3, 'COMSOL');
drho_flibe_initial_XS= calc_delta_reactivity([0.9691579531, 0.9690427061, 0.9687800299 , 0.9685916542,0.9686395821], 3, 'COMSOL') ;

rownb = rownb + 1; % continue from the cases for fuel
for caseNb = 1:tot_case
    folder_name = ['diffusion_cx_data/temp_dep_data/tmsr_11000_' num2str(flibe_density(caseNb))];
    file_name = '/tmsr_sf1_res.m';    
    run([folder_name file_name]);   
end

for caseNb = 1:tot_case
    read_array_XS(IMP_KEFF, rownb, 1);
    keff_serpent_flibe(caseNb) = read_array_XS(IMP_KEFF, rownb, 1);
    rownb = rownb + unb;
end
drho_serpent_flibe = calc_delta_reactivity(keff_serpent_flibe, 3, 'SERPENT');
[p, some] = polyfit(flibe_temperatures, drho_flibe, 1);
fprintf('\n The flibe feedback coef is %4.2f\n', p);

%% reset the initial values to the reactor nominal value
model.param.set('T0_fuel', '800[degC]', 'initial temperature for fuel');
model.param.set('T0_flibe', '700[degC]', 'initial temperature for flibe');

%% plot the results
figure;
plot(flibe_temperatures, drho_flibe, 'k-*');
plot(flibe_temperatures, drho_flibe_initial_XS, 'k-*');
hold on;
%plot(flibe_temperatures, drho_flibe_initial_XS, 'k:*');
errorbar(flibe_temperatures, drho_serpent_flibe, 2E-5*ones(1,tot_case), 'k--+');
title('Temperature(and void) reactivity feedback for flibe');
ylabel('Reactivity');
xlabel('Temperature(K)');
%legend('Diffusion','Diffusion with original cross sections', 'Monte carlo')
legend('Diffusion', 'Monte carlo');
hold off;
        
figure;
plot(fuel_temperatures, drho_fuel, 'k-*');
hold on;
errorbar(fuel_temperatures, drho_serpent_fuel, 2E-5*ones(1,5), 'k--+');
title('Temperature reactivity feedback for fuel');
legend('Diffusion', 'Monte carlo')
ylabel('Reactivity');
xlabel('Temperature(K)');
hold off;
        
