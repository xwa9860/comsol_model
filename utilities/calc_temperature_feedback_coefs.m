%{
Compute temperature reactivity feedback and plot the comparison
between this model and the serpent model


%%--------------------For Mk1
% Serpent results for Mk1
fuel_temp = [300, 600, 900, 1200, 1500];
keff = [9.89334E-01 9.87615E-01 9.58675E-01, 9.57168E-01 9.12511E-01];
fuel_serpent = -0.0000596655; % computed from serpent outputs
flibe_serpent = -0.0000196931; % computed from serpent outputs

%comsol feedback coef for fuel
fuel_comsol = -0.0000672071;


%comsol feedback coef for flibe
flibe_comsol= -0.0000217063;

%}
global general_path;
global output_path;
global reactor;
global T0_flibe T0_fuel;

%% fuel
fuel_temps = [300, 600, 900, 1200, 1500];
% compute delta_keffs at these temperatures in COMSOL
drho_fuel_comsol = compute_drho(model, 'T0_fuel', fuel_temps, T0_fuel);
% % set fuel temperature back to the nominal value for following computations
% model.param.set('T0_fuel', '800[degC]', 'initial temperature');
% fprintf('Run eigenvalue study');
% model.sol('sol16').runAll;
% lambda_eigen = mphglobal(model, 'lambda');
% fprintf('\nThe eigenvalue with initial temperatures is\n');
% fprintf('%.10f \n', lambda_eigen);

% read keffs from serpent output and compute the delta between them
drho_fuel_serpent = read_keffs([general_path, 'temp_coef/fuel/'], fuel_temps, 'fuel_fb_keffs');
plot_temp_fb(fuel_temps, drho_fuel_serpent, drho_fuel_serpent, reactor, [output_path 'fuel_fb.png']) 
% % plot_temp_fb(fuel_temps, drho_fuel_comsol, drho_fuel_serpent, reactor, [output_path 'fuel_fb.png']) 



%% flibe
flibe_density = [17, 18, 19, 20, 21]*100;
flibe_temps = round((2413-flibe_density)/0.488);
    
drho_flibe_comsol = compute_drho(model, 'T0_flibe', flibe_temps, T0_flibe);
        
drho_flibe_serpent = read_keffs([general_path, 'temp_coef/flibe/'],  flibe_temps, 'flibe_fb_keffs');

%For TMSR, we have also computed the drho with raw flibe cross sections taken directly from serpent
%file, without data fitting
%drho_flibe_initial_XS= calc_delta_reactivity([0.9691579531, 0.9690427061, 0.9687800299 , 0.9685916542,0.9686395821], 3, 'COMSOL') ;
% set flibe temperature back
%plot_temp_fb(flibe_temps, drho_flibe_serpent, drho_flibe_serpent, reactor, [output_path 'flibe_fb.png']) 
plot_temp_fb(flibe_temps, drho_flibe_comsol, drho_flibe_serpent, reactor, [output_path 'flibe_fb.png']) 
        
function drho= read_keffs(file_path, temps, keff_saveTo)
    
    for i=1:length(temps)
        keffs(i) = read_keff([file_path, num2str(temps(i)), '/serp_full_core_res.m']);
    end
    csvwrite(keff_saveTo, keffs) % save the raw value of keffs to a file
    drho = calc_delta_reactivity(keffs, 3, 'SERPENT');
    
    [p, some] = polyfit(temps, drho, 1);
    fprintf('\n The feedback coef in serpent is %4.10f\n', p(1));

end


function drho_comsol = compute_drho(model, temp_var, temps, nominal_temp)
    eigens = ones(size(temps)); % initialization
    
    for caseNb = 1:length(temps)
        fprintf('\nAt temperature\n');
        fprintf('%.10f \n', temps(caseNb));
        model.param.set(temp_var, num2str(temps(caseNb)), 'initial temperature');
        model.sol('sol16').runAll;
        lambda_eigen = mphglobal(model, 'lambda')
        eigens(caseNb) = lambda_eigen;
        fprintf('\nThe eigenvalue is\n');
        fprintf('%.10f \n', lambda_eigen)
    end
    drho_comsol = calc_delta_reactivity(eigens, 3, 'COMSOL');

    % set back to nominal
    model.param.set(temp_var, nominal_temp, 'initial temperature');
    
    [p, some] = polyfit(temps, drho_comsol, 1);
    fprintf('\n The feedback coef in comsol is %4.10f\n', p(1));
end


function figures = plot_temp_fb(temps, drho_comsol, drho_serpent, reactor, saveTo)
    figure;
    fig = gcf;
    fig.PaperUnits = 'inches';
    fig.PaperPosition = [0 0 6 3];
    
    plot(temps, drho_comsol, 'k-o');
    hold on;
    errorbar(temps, drho_serpent, 2E-5*ones(1,5), 'k--^');
    xlim([200 1600]);
    switch reactor
        case 'TMSR'
            ylim([-0.015 0.025]);
        case 'Mk1'
            ylim([-0.05 0.05])
    end

    title('Temperature reactivity feedback');
    legend('Diffusion', 'Monte carlo')
    ylabel('Reactivity');
    xlabel('Temperature(K)');
    
    saveas(gcf,saveTo);
    hold off;
end