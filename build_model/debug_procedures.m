% 1) check Pint==Pop: Pint is the integral of power in the core, Pop is the
% defined operation power
Pint = mphevalpoint(model,'Pint','selection',2, 'dataset', 'dset4');
% dset4 is the scaling study results
Pop = mphglobal(model, 'Pop', 'dataset', 'dset4');
if Pint ~= Pop
    fprintf('\nPint is different from Pop at steady state\n');
    fprintf('%.10f vs %.10f \n', Pint, Pop);
end

%% transient results
% check average of flibe temperature in the fuel region after scaling
Volume = mphint2(model, '1', 2, 'selection', 2);
T_flibe_ave = mphint2(model, 'T_flibe', 2, 'selection', 2)/Volume
% check temperature difference between flibe and fuel
T_fuel_ave = mphint2(model, 'T_fuel', 2, 'selection', 2)/Volume
T_fuel_ave - T_flibe_ave

% check temperature rise of flibe
T_flibe_inlet = mphmin(model, 'T_flibe', 2,'dataset', 'dset5', 't', 0.3) %dset5 is the transient
T_flibe_outlet = mphmax(model, 'T_flibe',2, 'dataset', 'dset5', 't', 0.3)
if T_flibe_outlet - T_flibe_inlet > 100 || T_flibe_outlet - T_flibe_inlet <10
    fprintf('problem with flibe temperature rise\n')
    fprintf('expected between 10 and 50, but found %.10f \n',...
        T_flibe_outlet-T_flibe_inlet)
end

% check Pint
Pint = mphevalpoint(model,'Pint','selection',2, 'dataset', 'dset5', 't', 0);
Pop = mphglobal(model, 'Pop');
if Pint ~= Pop
    fprintf('\nPint is different from Pop at the begining of the transient\n');
    fprintf('%.10f vs %.10f \n', Pint, Pop);
end
Pint = mphevalpoint(model,'Pint','selection',2, 'dataset', 'dset5', 't', 0.3);
fprintf('\nPint at 0.3s is\n');
fprintf('%.10f ', Pint);