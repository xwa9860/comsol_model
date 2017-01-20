% 1) check Pint==Pop: Pint is the integral of power in the core, Pop is the
% defined operation power


PintN = mphevalpoint(model,'PintN','selection',2);
fprintf('\nPintN is\n');
fprintf('%.10f ', PintN);

Pop = mphglobal(model, 'Pop');
fprintf('\nPop is\n');
fprintf('%.10f ', Pop);