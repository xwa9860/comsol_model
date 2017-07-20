%% modify the neutron diffusion equation to include the delayed neutrons
fprintf('\nModify the steady state or eigenvalue mode neutron diffusion equation to include delayed neutrons\n');
run('set_neutron_diffusion_with_DNP_in_Comsol.m');

%% create the DN module for delayed neutron precursor concentrations
fprintf('\nCreate delayed neutron(DN) module to compute the DNP concentrations\n');

% disable the 'conc' varaible because it's now a dependent variable in the
% DN module to be solved for
model.variable('var23').active(false);

% create DN module
model.physics.create('DN', 'CoefficientFormPDE', 'geom1');
model.physics('DN').identifier('DN');
model.physics('DN').field('dimensionless').field('Conc');
model.physics('DN').field('dimensionless').component({'Conc1' 'Conc2' 'Conc3' 'Conc4' 'Conc5' 'Conc6'});
model.physics('DN').label('Delayed_neutrons');
model.physics('DN').prop('Units').set('SourceTermQuantity', 'productionrate');
model.physics('DN').prop('Units').set('DependentVariableQuantity', 'numberdensity');


cfeq = model.physics('DN').feature('cfeq1');
init = model.physics('DN').feature('init1');


% set matrix 'a': diagnoal matrix of lambdas_i
k=0;
for i =1:dnb
    for j=1:dnb     
         if i==j
            cfeq.setIndex('a', ...
                ['lambdas', num2str(j)],  k);
        else
              cfeq.setIndex('a', ...
                num2str(0), k);
         end
    k=k+1;
    end
end
    
%% set matrix 'c': diffusion coefficients to 0
k=0;
for i =1:dnb
    for j=1:dnb
        cfeq.setIndex('c', ...
                    {num2str(0), num2str(0)},  k);
        k=k+1;
    end
end

%% set matrix f and ea 
k=0;

for i =1:dnb
    cfeq.setIndex('f', ['betas', num2str(i),'*sumN'], k);  
    cfeq.setIndex('ea', num2str(0), k);
    k=k+1;
end

% set matrix 'da' in comsol
k=0;
for i = 1:dnb
    for j = 1:dnb
        if i == j
            if dimNb == 2
                cfeq.setIndex('da', 'engenMode' , k);
            end
        else
            cfeq.setIndex('da', num2str(0), k);
        end
        k=k+1;
    end
end

% set initial value for Conc_i's
for i=1:dnb  
    %init.set(['Conc', num2str(i)], ['betas',num2str(i),'/lambdas', num2str(i),'*sumN']);
    init.set(['Conc', num2str(i)], ['Conc',num2str(i)]);
end