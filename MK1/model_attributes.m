% MK1
% Define input variables for the model 
dimNb= 3; % 3D model
dnb=6; % delayed neutron precursor group number
gnb=8; % energy group number
region=5; % temperature group number
region_coated=4; %temperature of TRISTO coat
region_fuel_kernel=3; %termperature of fuel kernel

TMSR = false;
data_path = 'MK1\XS_data\';
fuel_data_path = 'MK1\XS_data\fuel\';

MultiScale= false;

sp3 = false;

unb = 9;

keySet = {'CR', 'fuel',...
      'Blanket', 'ORCC','OR', 'CB', 'DC',...
      'VS', 'CRCC1', 'CRCC2', 'CRCC3', 'CRCC4', ...
      'CRCC5', 'CRCC6', 'CRCC7', 'CRCC8_1', 'CRCC8_2'};
uvalueSet = int16([3 9 ...
             8 2 1 7 6 ...
             5 4 4 4 4  ...
             4 4 4 4 4]);
dvalueSet = int16([8, 7,...
            6, 5, 4, 3, 2, ...
            1, 9, 10, 11, 12,...
            13, 14, 15, 16, 17]);


domains = containers.Map(keySet,dvalueSet);
universes = containers.Map(keySet, uvalueSet);
universe_names = {'OR', 'ORCC', 'CR', 'CRCC', 'VS', 'DC', 'CB', 'BK','fuel'};

% for XS definition

temp_indep_comps = {'CR', 'Blanket', 'ORCC','OR', 'CB', 'DC',...
          'VS'}; %, 'CRCC1', 'CRCC2', 'CRCC3', 'CRCC4', ...
          %'CRCC5', 'CRCC6', 'CRCC7', 'CRCC8_1', 'CRCC8_2'};
rod = true;          
rod_domNb = cell2mat(values(domains, {'CRCC1', 'CRCC2', 'CRCC3', 'CRCC4', ...
          'CRCC5', 'CRCC6', 'CRCC7', 'CRCC8_1', 'CRCC8_2'}));   
% heights where the 4 axial segments of control rods are seperated, from
% top to bottom
heights = [572.85, 430.85, 272, 112.5, 41.6];
% temp_indep_comps = {'CR',...
%   'Blanket', 'ORCC','OR', 'CB', 'DC',...
%   'VS', 'CRCC1', 'CRCC2', 'CRCC3', 'CRCC4', ...
%   'CRCC5', 'CRCC6', 'CRCC7', 'CRCC8_1', 'CRCC8_2'};
%       
% for material definition
 gr_comps = {'CR',...
  'ORCC','OR', 'CB', 'DC',...
  'VS', 'CRCC1', 'CRCC2', 'CRCC3', 'CRCC4', ...
  'CRCC5', 'CRCC6', 'CRCC7', 'CRCC8_1', 'CRCC8_2'};

% for setting fuel XS and heat generation domains
fuel_domNb = domains('fuel');
fuel_univ = universes('fuel');

% for porous media mmtm module and material properties

porous_media = {'Blanket', 'fuel'};


%% porous media module
% lower inlet
in_bound1 = [79:80, 89, 93, 99, 107, 114, 117, 123, 131, 175, 187, 225, 228, 238, 244, 257, 260, 264, 269];
% upper inlet
in_bound2= [53:54, 59:60, 162, 165, 192, 195]; %[75 76 144 159];

%[53 54 59 60 133 136 163 166]; % when control rods are cylinders
%out_bound = [39 40 41 42 49 50 51 52 57 58 126 127 131 132 135 165 170 173 174 179];
% lower outlet
out_bound1 = [39:42, 155:156, 203, 208];
% upper outlet
out_bound2 = [51:52, 57:58, 161, 164, 194, 199];



valueSet = values(domains, porous_media);
pm_domains = cell2mat(valueSet);
main_pm_domains = cell2mat(values(domains, {'Blanket', 'fuel'}));

%% for flibe heat transfer module
flibe_domains = cell2mat(values(domains, {'Blanket', 'fuel'}));
inlet_temp_bound = [in_bound1, in_bound2];% [53 54 59 60 75 76 133 136 144 159 163 166];

dirichelet_b = [1:6, 9:12, 15:18, 21:24, 33,34, 51:54, 57:60, 65:66, ...
    69:70, 75:76, 85:86, 97, 102, 105, 110, 121, 126, 129, 134, 136:138,...
    140:141, 143:144, 146:147, 152, 161:162, 164:165, 168, 170, 173, 178,...
    180:183, 192, 194:195, 199, 201, 204, 212, 214:215, 217:218, 220:222, ...
    232:233, 236, 241, 250:253];
 

% [1:6, 9:12, 15:18, 21:24, 33:34, 51:54, 57:60, 65:66, ...
%     69:70, 81:84, 89:90, 93:94, 101:102, 105:109, 111:112, 114:115, ...
%     117:118, 123, 132:133, 135, 136, 139, 141, 147:148, 151:152, 154:155, ...
%     163, 165:166, 170, 172, 175, 183, 185, 186, 188, 189, 191:193, ... 
%     196:197, 200:201, 209:212];


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
