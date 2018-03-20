%{
 Create steady state results for 3D models: tables and plots
%}

fprintf('create steady state results, plots, tables, ...')
%% change the dataset for cp11 from eigenvalue solution to steady state solution
model.result.dataset('cpl1').set('data', 'dset2');


%% evaluate mass flow rate at inlets
% model.result.table.create('tbl2', 'Table');
% model = calc_inlet_flow(model, in_bound1, 'tbl2');
% model = calc_inlet_flow(model, in_bound2, 'tbl2');
% model = calc_inlet_flow(model, in_bound3, 'tbl2');
% model = calc_inlet_flow(model, in_bound4, 'tbl2');
% model = calc_inlet_flow(model, in_bound5, 'tbl2');
% model = calc_inlet_flow(model, inlet_temp_bound, 'tbl2');
%% plots
model = plot_surf(model, 'cpl1', 'T_flibe', 2, 'T_flibe(steady state)', 'degC');
model = plot_surf(model, 'cpl1', 'T_fuel', 2, 'T_fuel(steady state)', 'degC');
model = plot_surf(model, 'cpl1', 'T_fuel-T_flibe', 2, 'T_fuel-T_flibe(steady state)', 'degC');
model = plot_surf(model, 'cpl1', 'Pdensity', 2, 'Pdensity(steady state)(W/m3)','W/m^3');

%fast flux surface plot
model = plot_surf(model, 'cpl1', 'Flux1+Flux2+Flux3+Flux4', 2, 'fast flux(steady state)');

% thermal flux surface plot
model = plot_surf(model, 'cpl1', 'Flux5+Flux6+Flux7+Flux8', 2,...
                           'thermal flux(steady state)');

model = plot_surf(model, 'cpl1', 'h_conv', 2, ...
                           'h_conv', 'W/(m^2*K)',...
                           '(2+1.1*Pr^(1/3)*(rhoL*d*br.U/muL)^0.6)*kL/d',...
                           'hconv(wakao)(W/m2.K)');

model = plot_surf(model, 'cpl1', 'rhoL*d*br.U/muL', 2, ...
                           'Re', '1',...
                           'Re',...
                           'Re');
    
%% Streamline
model = plot_streamline(model);

%% Histogram of outlet flibe temperature
model.result.dataset.create('surf1', 'Surface');
model.result.dataset('surf1').set('data', 'dset2');
model.result.dataset('surf1').selection.set([39 40 41 42 61 62 67 68 191 192 202 205 254 260 264 272]);

model = plot_histogram(model);
