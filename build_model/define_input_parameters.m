% Define input variables for the model
dimNb = 2; % 2D model
dnb=6; % delayed neutron precursor group number
gnb=8; % energy group number

MultiScale= false

%Try to use ChiT for all the Chi's and use beta effective for delayed
%neutrons
BetaEff = true;

OpPower = '1E7[W]' %string, input to comsol global variable 'Pop'

% define transient parameters
tf = 20 %second, finishing time of the transient
dt = 0.1 %second, time step to record the results(not the timestep that the solver takes)
rho_ext = 0.0 % reactivity insertion value 


% define Overcooling transient parameters
OCOnset = 0 %s, starting time of overcooling
OCSlope = -10 %K/s, speed of decrease in inlet coolant temperature
