%Compute temperature reactivity feedback and plot the comparison
%between this model and serpent

%% fuel
fuel_temps = [300, 600, 900, 1200, 1500];
drho_fuel_comsol = compute_drho(model, 'T0_fuel', fuel_temps);
drho_fuel_serpent = read_keffs([data_path, 'temp_coef/fuel/'], u_fuel, fuel_temps);


%% flibe
flibe_density = [21, 20, 19, 18, 17];
flibe_temps = (2279.92-flibe_density*100)/0.488+273.15;
drho_flibe_comsol = compute_drho(model, 'T0_flibe', flibe_temps);
drho_flibe_serpent = read_keffs([data_path, 'temp_coef/flibe/'], u_flibe, flibe_temps);
%compute the drho with raw flibe cross sections taken directly from serpent
%file, without data fitting
drho_flibe_initial_XS= calc_delta_reactivity([0.9691579531, 0.9690427061, 0.9687800299 , 0.9685916542,0.9686395821], 3, 'COMSOL') ;

%% plot the results
figure;
plot(flibe_temps, drho_flibe_comsol, 'k-*');
hold on;
errorbar(flibe_temps, drho_flibe_serpent, 2E-5*ones(1, 5), 'k--+');
%plot(flibe_temps, drho_flibe_initial_XS, 'k:*');

title('Temperature(and void) reactivity feedback for flibe');
ylabel('Reactivity');
xlabel('Temperature(K)');
legend('Diffusion', 'Monte carlo', 'Diffusion with original cross sections')
%legend('Diffusion', 'Monte carlo');
hold off;
        
figure;
plot(fuel_temps, drho_fuel_comsol, 'k-*');
hold on;
errorbar(fuel_temps, drho_fuel_serpent, 2E-5*ones(1,5), 'k--+');
title('Temperature reactivity feedback for fuel');
legend('Diffusion', 'Monte carlo')
ylabel('Reactivity');
xlabel('Temperature(K)');
hold off;
        
function drho = read_keffs(folder, row, temps)
    rownb = row;
    unb = 4;
    for caseNb = 1:5
        file_name = [folder, 'case_', num2str(caseNb),'.m']; 
        run(file_name);
    end

    for caseNb = 1:5
        read_1d_array(IMP_KEFF, rownb, 1);
        keff_serpent_fuel(caseNb) = read_1d_array(IMP_KEFF, rownb, 1);
        rownb = rownb + unb;
    end

    drho = calc_delta_reactivity(keff_serpent_fuel, 3, 'SERPENT');
    
    [p, some] = polyfit(temps, drho, 1);
    fprintf('\n The feedback coef in serpent is %4.2f\n', p);

end


function drho_comsol = compute_drho(model, temp_var, temps)
    
    for caseNb = 1:5
        model.param.set(temp_var, num2str(temps(caseNb)), 'initial temperature');
        model.sol('sol16').runAll;
        lambda_eigen = mphglobal(model, 'lambda');
        eigens(caseNb) = lambda_eigen;
        fprintf('\nAt temperature\n');
        fprintf('%.10f \n', temps(caseNb))
        fprintf('\nThe eigenvalue is\n');
        fprintf('%.10f \n', lambda_eigen)
    end
    drho_comsol = calc_delta_reactivity(eigens, 3, 'COMSOL');

    % set back to nominal
    model.param.set(temp_var, num2str(temps(3)), 'initial temperature');


end
