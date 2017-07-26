% Define input variables for the model 
dimNb= 3; % model dimension, 2 or 3
dnb=6; % delayed neutron precursor group number
gnb=8; % energy group number
region=5; % temperature group number
region_coated=4; %temperature of TRISTO coat
region_fuel_kernel=3; %termperature of fuel kernel

TMSR = true;

keySet = {'fuel', 'salt', 'gr'};
uvalueSet = [9, 9, 1];
if dimNb == 2
    dvalueSet = [2, 1, 3 ];
else %checked in comsol
    dvalueSet = [3, 2, 1];
end
domains = containers.Map(keySet,dvalueSet);
universes = containers.Map(keySet, uvalueSet);

universe_names = ["gr", "disp", "fuel", "flibe"];

% for XS definition
temp_indep_comps = {'gr'};
% for material definition
gr_comps = {'gr'};
channel_domains = cell2mat(values(domains, {'salt'}));

% for setting fuel XS and heat generation domains
fuel_domNb = domains('fuel');
fuel_univ = universes('fuel');

% for porous media mmtm module and material properties
porous_media = {'fuel'};
valueSet = values(domains,porous_media);
pm_domains = cell2mat(valueSet);
main_pm_domains = pm_domains;

% for flibe heat transfer module
flibe_domains = cell2mat(values(domains, {'salt', 'fuel'}));

if dimNb ==3
dirichelet_b = [1 2 3 4 5 6 19 20 23 24 25 26 27 29 31 33 47 48 49 50];
else
dirichelet_b = [2 5 7 11 14];
end

MultiScale= false;
sp3 = false;

unb = 4;

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
