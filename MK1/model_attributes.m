% MK1
% 236 MW thermal
% 116*2 MW to heat exchanger + 4 MW loss
% Define global variables for the model 
data_path = 'MK1\XS_data_radial_zones\';
fuel_data_path = 'MK1\XS_data_radial_zones\fuel\';
rod_data_path = 'MK1\XS_rod\';

dimNb= 3; % 3D model
dnb=6; % delayed neutron precursor group number
gnb=8; % energy group number
region=5; % temperature group number
region_coated=4; %temperature of TRISTO coat
region_fuel_kernel=3; %termperature of fuel kernel

%% modeling options that you can switch on and off
TMSR = false;
isTMSR = false;
isVerbose = true; % setting this to true will print out more information in console
MultiScale= false;
is_rounded_geom = true;
sp3 = false;


unb = 16; %total number of universes computed in serpent for cross sections
% unb = 9 when there is only one fuel region and only one control rod

% region names
keySet = {'CR', 'fuelU', 'fuelB', 'fuela1', 'fuela2', 'fuela3', 'fuela4'...
      'Blanket', 'ORCC','OR', 'CB', 'DC', 'VS',...
       'CRCC1', 'CRCC2', 'CRCC3', 'CRCC4', ...
      'CRCC5', 'CRCC6', 'CRCC7', 'CRCC8_1', 'CRCC8_2'};
% keySet = {'CR', 'fuel',...
%       'Blanket', 'ORCC','OR', 'CB', 'DC',...
%       'VS', 'CRCC1', 'CRCC2', 'CRCC3', 'CRCC4', ...
%       'CRCC5', 'CRCC6', 'CRCC7', 'CRCC8_1', 'CRCC8_2'}; % one fuel zone

% the row number in serpent output for group constant generation
uvalueSet = int16([3 12 12 13 14 15 16   ... 
             11 2 1 10 9 8 ...
             4 4 4 4  ...
             4 4 4 4 4]);
dvalueSet = [11, 9, 8, 13, 12, 10, 7, ...
    6, 5, 4, 3, 2, 1, ...
    18, 19, 20, 14, 15, 16, 17, 21, 22];
% int16([8, 7,...
%             6, 5, 4, 3, 2, ...
%             1, 9, 10, 11, 12,...
%             13, 14, 15, 16, 17]); % one fuel zone


domains = containers.Map(keySet,dvalueSet);
universes = containers.Map(keySet, uvalueSet);
%universe_names = {'OR', 'ORCC', 'CR', 'CRCC', 'VS', 'DC', ...
%    'CB', 'BK','fuel'}; %one fuel zone

% for XS definition


rod = true; % having rods in the model geometry
if rod
    temp_indep_comps = {'CR', 'Blanket', 'ORCC','OR', 'CB', 'DC',...
          'VS'}; %, 'CRCC1', 'CRCC2', 'CRCC3', 'CRCC4', ...
          %'CRCC5', 'CRCC6', 'CRCC7', 'CRCC8_1', 'CRCC8_2'};
    control_rods = {'CRCC1', 'CRCC2', 'CRCC3', 'CRCC4', ...
          'CRCC5', 'CRCC6', 'CRCC7', 'CRCC8_1', 'CRCC8_2'};   
    control_rod_heights = ones(9, 1) * 572.85*0.01;
    %control_rod_heights(3) = 3;
    %control_rod_heights(6) = 3;
    % heights where the 4 axial segments of control rods are seperated, from
    % top to bottom
    heights = [572.85, 430.85, 272, 112.5, 41.6]*0.01;
else
    temp_indep_comps = {'CR', 'Blanket', 'ORCC','OR', 'CB', 'DC',...
          'VS', 'CRCC1', 'CRCC2', 'CRCC3', 'CRCC4', ...
          'CRCC5', 'CRCC6', 'CRCC7', 'CRCC8_1', 'CRCC8_2'};
end

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
fuel_domNb = cell2mat(values(domains, {'fuelU', 'fuelB', 'fuela1', 'fuela2', 'fuela3', 'fuela4'}));
fuel_univ = cell2mat(values(universes, {'fuelU', 'fuelB', 'fuela1', 'fuela2', 'fuela3', 'fuela4'})); 

% for porous media mmtm module and material properties

porous_media = {'Blanket', 'fuelU', 'fuelB', 'fuela1', 'fuela2', 'fuela3', 'fuela4'};


%% porous media module boundary numbers used in comsol
% lower inlet 
in_bound1= [53:54, 59:60, 162, 165, 192, 195]; %[75 76 144 159];
% center inlet
in_bound2 = [79:80, 89, 93, 99, 107, 114, 117, 123, 131, 175, 187, 225, 228, 238, 244, 257, 260, 264, 269];
% upper inlet
in_bound3 = [61 62 166 193];

%[53 54 59 60 133 136 163 166]; % when control rods are cylinders
%out_bound = [39 40 41 42 49 50 51 52 57 58 126 127 131 132 135 165 170 173 174 179];
% lower outlet
out_bound1 = [39 40 155 208]; %39:42, 155:156, 203, 208];
% middle outlet
out_bound2 = [41 42 156 203];
% upper outlet
out_bound3 = [51 52 57 58 161 164 194 199];


if is_rounded_geom
% lower inlet
in_bound1= [53 54 61 62 166 170 199 203];
% center inlet
in_bound2 = [83 84 93 97 103 111 118 121 127 135 181 193 233 236 246 252 265 268 272 277];
% upper inlet
in_bound3 = [63 64 171 200];

%[53 54 59 60 133 136 163 166]; % when control rods are cylinders
%out_bound = [39 40 41 42 49 50 51 52 57 58 126 127 131 132 135 165 170 173 174 179];
% lower outlet
out_bound1 = [39 40 159 216]; %39:42, 155:156, 203, 208];
% middle outlet
out_bound2 = [41 42 160 211];
% upper outlet
out_bound3 = [51 52 57 58 165 168 201 207];
end


valueSet = values(domains, porous_media);
pm_domains = cell2mat(valueSet);
main_pm_domains = cell2mat(values(domains, {'Blanket', 'fuelU', 'fuelB', 'fuela1', 'fuela2', 'fuela3', 'fuela4'}));

%% for flibe heat transfer module
flibe_domains = cell2mat(values(domains, {'Blanket', 'fuelU', 'fuelB', 'fuela1', 'fuela2', 'fuela3', 'fuela4'}));
inlet_temp_bound = [in_bound1, in_bound2, in_bound3];% [53 54 59 60 75 76 133 136 144 159 163 166];

dirichelet_b = [1:6, 9:12, 15:18, 21:24, 33,34, 51:54, 57:60, 65:66, ...
    69:70, 75:76, 85:86, 97, 102, 105, 110, 121, 126, 129, 134, 136:138,...
    140:141, 143:144, 146:147, 152, 161:162, 164:165, 168, 170, 173, 178,...
    180:183, 192, 194:195, 199, 201, 204, 212, 214:215, 217:218, 220:222, ...
    232:233, 236, 241, 250:253];

if is_rounded_geom
%     dirichelet_b = [1:6, 9:12, 15:18, 21:24, 33:34, 51:54, 57:58, 61:62, ...
%         67:68, 71:72, 79:80, 89:90, 101, 106, 109, 114, 125, 130, ...
%         133, 138, 140:142, 144:145, 147:148, 150:151, 156, 165:166, ...
%         168, 170, 173, 175, 179, 184, 186:189, 199, 201, 203, 207, 209,...
%         212, 220, 222:223, 225:226, 228:230, 240:241, 244, 249, 258:261];
dirichelet_b = [1, 2, 3, 4, 5, 6, 9, 10, 11, 12, 15, 16, 17, 18, 21, 22,...
    23, 24, 33:34, 61:64, 67:68, 71:72, 77:78, 93:94, 101:102, 113:114,...
    127, 133, 136, 142, 155, 161, 164, 170, 172:174, 176:177, 179:180,...
    182:183, 188, 202:203, 205, 207, 210, 218, 222, 228, 230:233, 246, ...
    254, 256, 260, 262, 265, 276, 278:279, 281:282, 284:286, 298:299,...
    302, 308, 318:321];
end

OpPower = '236[MW]'; %string, input to comsol global variable 'Pop'

%% define transient study parameters
tf = 20; %second, finishing time of the transient
dt = 0.1; %second, time step to record the results(not the timestep that the solver takes)

%% define reactivity insertion value, 0 means that this simulation is not
% about reactivity insertion
rho_ext = 0;% reactivity insertion value 


%% define Overcooling transient parameters
OCOnset = 100; %s, starting time of overcooling, a very large time means the overcooling is not simulated
OCSlope = -10; %K/s, speed of decrease in inlet coolant temperature
