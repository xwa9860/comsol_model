% TMSR 
%Define input variables for the model 
dimNb= 2; % model dimension, 2 or 3
dnb=6; % delayed neutron precursor group number
gnb=8; % energy group number
unb = 4;
region=4; % temperature group number
region_coated=1; %temperature of TRISTO coat
region_fuel_kernel=3; %termperature of fuel kernel

data_path = 'TMSR\XS_data\';

MultiScale= true;
if MultiScale
    fuel_data_path = 'TMSR\XS_data\multi_fuel\';
else
    fuel_data_path = 'TMSR\XS_data\fuel\';
end

sp3 = false;
TMSR = true;
rod = false;
domainNames = {'fuel', 'salt', 'gr'};
uvalueSet = [3, 4, 1];
if dimNb == 2
    dvalueSet = [2, 1, 3 ];
else %double checked in comsol
    dvalueSet = [3, 2, 1];
end
domains = containers.Map(domainNames,dvalueSet);
universes = containers.Map(domainNames, uvalueSet);

universe_names =["gr", "pb", "fuel", "flibe"];% the same order as in the serpent script, but called differently;
 % {'graphiteU', 'pebbleU', 'dispPebbleU', 'flibeU'} in serpent   
% for XS definition
temp_indep_comps = {'gr'};
% for material definition
gr_comps = {'gr'};

%channel_domains = cell2mat(values(domains, {'salt'}));

% for setting fuel XS and heat generation domains
fuel_domNb = domains('fuel');
fuel_univ = universes('fuel');

% for porous media mmtm module and material properties
porous_media = {'fuel'};
valueSet = values(domains,porous_media);
pm_domains = cell2mat(valueSet);
main_pm_domains = pm_domains;

%% for flibe heat transfer module
flibe_domains = cell2mat(values(domains, {'salt', 'fuel'}));
if dimNb == 3
    inlet_temp_bound = [9, 10, 17, 18, 19, 20, 29, 33, 34, 38, 42, 44];
    out_flow_bound = [15, 16, 23, 24, 32, 36, 41, 46];
else
    inlet_temp_bound = [2 8];
    out_flow_bound = [5 10];
end

%% neutron diffusion module
if dimNb ==3
dirichelet_b = [1 2 3 4 5 6 19 20 23 24 25 26 27 34 36 38 41 43 47 50];
else
dirichelet_b = [2 5 7 11 14];
end



OpPower = '1E7[W]'; %string, input to comsol global variable 'Pop'

%% define transient study parameters
tf = 20; %second, finishing time of the transient
dt = 0.1; %second, time step to record the results(not the timestep that the solver takes)

%% define reactivity insertion value, 0 means that this simulation is not
% about reactivity insertion
rho_ext = 0;% reactivity insertion value 


%% define Overcooling transient parameters
OCOnset = 100; %s, starting time of overcooling, a very large time means the overcooling is not simulated
OCSlope = -10; %K/s, speed of decrease in inlet coolant temperature
