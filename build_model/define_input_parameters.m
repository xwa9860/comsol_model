% Define input variables for the model
dimNb = 2; % 2D model
dnb=6; % delayed neutron precursor group number
gnb=8; % energy group number
region=5; % temperature group number

MultiScale= false;
sp3 = true;
%Try to use ChiT for all the Chi's and use beta effective for delayed
%neutrons
BetaEff = true;

OpPower = '1E7[W]' %string, input to comsol global variable 'Pop'

%% define transient study parameters
tf = 20 %second, finishing time of the transient
dt = 0.1 %second, time step to record the results(not the timestep that the solver takes)

%% define reactivity insertion value, 0 means that this simulation is not
% about reactivity insertion
rho_ext = 0% reactivity insertion value 


%% define Overcooling transient parameters
OCOnset = 100 %s, starting time of overcooling, a very large time means the overcooling is not simulated
OCSlope = -10 %K/s, speed of decrease in inlet coolant temperature
