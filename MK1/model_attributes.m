% MK1
%--------------------------------------------------
% 236 MW thermal
% 116*2 MW to heat exchanger + 4 MW loss

% This file defines model attributes
%--------------------------------------------------
global reactor;
reactor = 'Mk1';

%% Define global variables for the model that can be used across the files and functions
global general_path data_path fuel_data_path rod_data_path; 
global dimNb dnb gnb unb seg_nb;
global domains gr_comps;
global universes;
global isTMSR isVerbose isMultiScale is_rounded_geom isSp3;
global rod_positions seg_heights;
global is_get_coef_from_file;
global output_path;
global fuel_comp;
global fuel_domNb fuel_univ;

fuel_comp = 'eq';
general_path = 'MK1\';

switch fuel_comp
    case 'fresh'
        data_path = 'MK1\XS_data_fresh\';
        fuel_data_path = 'MK1\XS_data_fresh\fuel\';
        rod_data_path = 'MK1\XS_data_rod_fresh\';
        output_path = 'results\Mk1\fresh_RI\';
    case 'eq'
        data_path = 'MK1\XS_data\';
        fuel_data_path = 'MK1\XS_data\fuel\';
        rod_data_path = 'MK1\XS_data_rod\';
        output_path = 'results\Mk1\eq_RI\';
end
        
dimNb = 3; % 3D model
dnb = 6; % delayed neutron precursor group number
gnb = 8; % energy group number
unb = 16; %total number of universes computed in serpent for cross sections
region=5; % temperature group number
region_coated=4; %temperature of TRISTO coat
region_fuel_kernel=3; %termperature of fuel kernel
OpPower = '236[MW]'; %string, input to comsol global variable 'Pop'


%% modeling options that you can switch on and off 
isTMSR = false;
isVerbose = false; % setting this to true will print out more information in console
isMultiScale= false;
is_rounded_geom = true; % the sharp corners in the fuel region are rounded, which avoids local flow recirculation
isSp3 = false;


%% region names, universes, and domain numbers
keySet = {'CR', 'fuelU', 'fuelB', 'fuela1', 'fuela2', 'fuela3', 'fuela4'...
      'Blanket', 'ORCC','OR', 'CB', 'DC', 'VS',...
       'CRCC1', 'CRCC2', 'CRCC3', 'CRCC4', ...
      'CRCC5', 'CRCC6', 'CRCC7', 'CRCC8_1', 'CRCC8_2'};

% universe number(the row number in serpent output for group constant
% generation) that corresponds to each name in keySet
uvalueSet = [3 12 12 13 14 15 16   ... 
             11 2 1 8 9 10 ...
             4 4 4 4  ...
             4 4 4 4 4];
         
        % [3 12 12 13 14 15 16   ... 
        %     11 2 1 10 9 8 ...
        %     4 4 4 4  ...
        %     4 4 4 4 4];
% domain number that corresponds to each name in keySet
dvalueSet = [11, 9, 8, 13, 12, 10, 7, ...
    6, 5, 4, 3, 2, 1, ...
    18, 19, 20, 14, 15, 16, 17, 21, 22];


domains = containers.Map(keySet,dvalueSet);
universes = containers.Map(keySet, uvalueSet);
is_get_coef_from_file = true; % loading fuel XS matrices from files instead of computing from serpent res files

%% for XS definition
global temp_indep_comps control_rods;
temp_indep_comps = {'CR', 'Blanket', 'ORCC','OR', 'CB', 'DC', 'VS'};
control_rods = {'CRCC1', 'CRCC2', 'CRCC3', 'CRCC4', ...
      'CRCC5', 'CRCC6', 'CRCC7', 'CRCC8_1', 'CRCC8_2'};   

rod_positions = ones(9, 1) * 5.7285; % current control rods position(height in meter)
% heights where the 4 axial segments of control rods are seperated, from
% top to bottom
seg_nb = 4;
seg_heights = [572.85, 430.85, 272, 112.5, 41.6]*0.01;

    
%% graphite based components, for material thermal properties definition
 gr_comps = {'CR',...
  'ORCC','OR', 'CB', 'DC',...
  'VS', 'CRCC1', 'CRCC2', 'CRCC3', 'CRCC4', ...
  'CRCC5', 'CRCC6', 'CRCC7', 'CRCC8_1', 'CRCC8_2'};

% for setting fuel XS and heat generation domains in fuel heat transfer
% module
fuel_domNb = cell2mat(values(domains, {'fuelU', 'fuelB', 'fuela1', 'fuela2', 'fuela3', 'fuela4'}));
fuel_univ = cell2mat(values(universes, {'fuelU', 'fuelB', 'fuela1', 'fuela2', 'fuela3', 'fuela4'})); 

% for porous media mmtm module and material properties
global porous_media
porous_media = {'Blanket', 'fuelU', 'fuelB', 'fuela1', 'fuela2', 'fuela3', 'fuela4'};


%% --------------------- porous media module
%boundary numbers used in comsol
global in_bound1 in_bound2;
% lower inlet
in_bound1= [63, 64, 71, 72, 203, 207, 246, 256] ;
% center inlet
in_bound2 = [107, 108, 118, 123, 130, 139, 147, 151, 158, 167, 225, 238, 290, 294, 305, 312, 326, 330, 335, 341];
% upper inlet
%in_bound3 = [73, 74, 208, 253] ;

global out_bound1 out_bound2 out_bound3; 
% lower outlet
out_bound1 = [39, 40, 191, 272]; 
% middle outlet
out_bound2 = [41, 42, 192, 264]; 
% upper outlet
out_bound3 = [61, 62, 67, 68, 202, 205, 254, 260]; 

global valueSet pm_domains main_pm_domains
valueSet = values(domains, porous_media);
pm_domains = cell2mat(valueSet);
main_pm_domains = cell2mat(values(domains, {'Blanket', 'fuelU', 'fuelB', 'fuela1', 'fuela2', 'fuela3', 'fuela4'}));

%% ---------------------- flibe heat transfer module
global flibe_domains inlet_temp_bound;
flibe_domains = cell2mat(values(domains, {'Blanket', 'fuelU', 'fuelB', 'fuela1', 'fuela2', 'fuela3', 'fuela4'}));
inlet_temp_bound = [in_bound1, in_bound2];


%% ----------------------- neutron diffusion module
global dirichelet_b
dirichelet_b = [1:6, 9:12, 15:18, 21:24, 33,34, 51:54, 57:60, 65:66, ...
    69:70, 75:76, 85:86, 97, 102, 105, 110, 121, 126, 129, 134, 136:138,...
    140:141, 143:144, 146:147, 152, 161:162, 164:165, 168, 170, 173, 178,...
    180:183, 192, 194:195, 199, 201, 204, 212, 214:215, 217:218, 220:222, ...
    232:233, 236, 241, 250:253];

if is_rounded_geom  % some corners of the center reflector are rounded for smoother coolant streamlines
dirichelet_b = [1, 2, 3, 4, 5, 6, 9, 10, 11, 12, 15, 16, 17, 18, 21, 22,...
    23, 24, 33:34, 61:64, 67:68, 71:72, 77:78, 93:94, 101:102, 113:114,...
    127, 133, 136, 142, 155, 161, 164, 170, 172:174, 176:177, 179:180,...
    182:183, 188, 202:203, 205, 207, 210, 218, 222, 228, 230:233, 246, ...
    254, 256, 260, 262, 265, 276, 278:279, 281:282, 284:286, 298:299,...
    302, 308, 318:321];
end

