

% Define input variables for the model 
dimNb= 2; % model dimension, 2 or 3
dnb=6; % delayed neutron precursor group number
gnb=8; % energy group number
region=5; % temperature group number
region_coated=4; %temperature of TRISTO coat
region_fuel_kernel=3; %termperature of fuel kernel

if dimNb == 2
    pbDomain = 2;
    refDomain = 3;
    saltDomain = 1;
else %checked in comsol
    pbDomain = 3;
    refDomain = 1;
    saltDomain = 2;
end

MultiScale= false;
sp3 = false;

unb = 4;
u_flibe = 4;
u_fuel = 3;
u_gr = 1;
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
