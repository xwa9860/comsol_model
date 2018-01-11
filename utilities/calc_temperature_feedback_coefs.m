%Compute temperature reactivity feedback and plot the comparison
%between this model and serpent
global general_path;

%% fuel
fuel_temps = [300, 600, 900, 1200, 1500];
drho_fuel_comsol = compute_drho(model, 'T0_fuel', fuel_temps);
drho_fuel_serpent = read_keffs([general_path, 'temp_coef/fuel/'], fuel_temps);

% set fuel temperature back
model.param.set('T0_fuel', '800[degC]', 'initial temperature');
fprintf('Run eigenvalue study');
model.sol('sol16').runAll;
lambda_eigen = mphglobal(model, 'lambda');
fprintf('\nThe eigenvalue with initial temperatures is\n');
fprintf('%.10f \n', lambda_eigen);

%% flibe
global reactor;
switch reactor
    case 'TMSR'
        flibe_density = [17, 18, 19, 20, 21]*100;
        flibe_temps = round((2413-flibe_density)/0.488);
    case 'Mk1'
        flibe_temps = [650 700 1000 1300];
end
drho_flibe_comsol = compute_drho(model, 'T0_flibe', flibe_temps);
drho_flibe_serpent = read_keffs([general_path, 'temp_coef/flibe/'],  flibe_temps);
%compute the drho with raw flibe cross sections taken directly from serpent
%file, without data fitting
%drho_flibe_initial_XS= calc_delta_reactivity([0.9691579531, 0.9690427061, 0.9687800299 , 0.9685916542,0.9686395821], 3, 'COMSOL') ;
% set flibe temperature back
model.param.set('T0_flibe', '672[degC]', 'initial temperature');

%% plot the results
figure;
plot(flibe_temps, drho_flibe_comsol, 'k-o');
hold on;
errorbar(flibe_temps, drho_flibe_serpent, 2E-5*ones(1, 5), 'k--^');
%plot(flibe_temps, drho_flibe_initial_XS, 'k:*');
xlim([500 1600]);
ylim([-0.015 0.025]);
title('Temperature(and void) reactivity feedback for flibe');
ylabel('Reactivity');
xlabel('Temperature(K)');
legend('Diffusion', 'Monte carlo', 'Diffusion with original cross sections')
%legend('Diffusion', 'Monte carlo');
hold off;
        
figure;
plot(fuel_temps, drho_fuel_comsol, 'k-o');
hold on;
errorbar(fuel_temps, drho_fuel_serpent, 2E-5*ones(1,5), 'k--^');
xlim([200 1600]);
ylim([-0.015 0.025]);
title('Temperature reactivity feedback for fuel');
legend('Diffusion', 'Monte carlo')
ylabel('Reactivity');
xlabel('Temperature(K)');
hold off;
        
function drho= read_keffs(file_path, temps)
    
    for i=1:length(temps)
        keffs(i) = read_keff([file_path, num2str(temps(i)), '/serp_full_core_res.m']);
    end
    
    drho = calc_delta_reactivity(keffs, 3, 'SERPENT');
    
    [p, some] = polyfit(temps, drho, 1);
    fprintf('\n The feedback coef in serpent is %4.10f\n', p(1));

end


function drho_comsol = compute_drho(model, temp_var, temps)
    
    for caseNb = 1:length(temps)
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
    model.param.set(temp_var, num2str(temps(round(length(temps)/2))), 'initial temperature');


end
