%{
 MK1
%--------------------------------------------------
% 236 MW thermal
% 116*2 MW to heat exchanger + 4 MW loss

% This file defines model attributes
%--------------------------------------------------
%}

global reactor;
reactor = 'Mk1';

%% ------------------------------------------------------------------------ 
% Make variables global so that they can be used across all the files and functions
% model mode
global general_path data_path fuel_data_path rod_data_path; 
global dimNb dnb gnb unb seg_nb;

global isTMSR isVerbose isMultiScale is_rounded_geom isSp3;
global rod_positions seg_heights;
global is_get_coef_from_file;

% operating parameters
global T0_flibe T0_fuel;

% domain numbers and ....universe numbers
global pb_region region_coated region_fuel_kernel pb_non_fuel_region;
global flibe_domains;
global fuel_comp;
global fuel_domNb fuel_univ;
global domains gr_comps;
global universes;

% boundaries
global in_bound_lower in_bound_center_curved in_bound_center_straight in_bound_up_curved in_bound_up_top inlet_temp_bound;
global out_bound1 out_bound2 out_bound3 out_flow_bound; 
global valueSet pm_domains main_pm_domains;
global dirichelet_b;

global output_path;
global porous_media
global temp_indep_comps control_rods;
global OpPower T_inlet excess_rho;
global power_mode;

% solver mode
global transient_type

% reactor design
global triso_pf

%% -------------------------------------------------------------------------
transient_type = 'ext_RI_step';
%'control_rods_removal';
%'ext_RI_step';
%'control_rods_removal';
%'ext_RI_ramp';
%'overcooling';

triso_pf = 0.4;

fuel_comp = 'eq';
general_path = 'MK1/';

switch fuel_comp
    case 'fresh'
        data_path = 'MK1/XS_data_fresh/';
        fuel_data_path = 'MK1/XS_data_fresh/fuel/';
        rod_data_path = 'MK1/XS_data_rod_fresh/';
        %output_path = 'results\Mk1\multiscale_RI\fresh_ext_RI\';
        %output_path = 'results\Mk1\multiscale_RI\fresh_cr\zero_power\';

        output_path = 'results/Mk1/flow_optimization/even_flow/';
    case 'eq'
        data_path = 'MK1/XS_data_new/';
        fuel_data_path = 'MK1/XS_data_new/fuel/';
        rod_data_path = 'MK1/XS_data_rod/';
        output_path = 'results/Mk1/eq_steady_state_new_xsdata/';
end
        
dimNb = 3; % 3D model
dnb = 6; % delayed neutron precursor group number
gnb = 8; % energy group number
unb = 16; %total number of universes computed in serpent for cross sections
pb_region = 3; % number of regions in a fuel pebble, e.g.: graphte kernel, fuel(containing triso particles), shell
pb_non_fuel_region = 2; % number of regions in a fuel pebble that doesn't contain fuel
region_coated = 1; % number of regions in TRISO coat
region_fuel_kernel = 3; % number of regions in the fuel kernel in a TRISO particle

power_mode = 'full';

switch power_mode
    case 'zero'
        OpPower = 1E3;
        T_inlet = 600;
        excess_rho = 1.4/100 + [(650-T_inlet)*1.9 + (740-T_inlet)*5.9]/1E5;
    case 'full'
        OpPower = 236E6; %input to comsol global variable 'Pop'
        T_inlet = 600;
        excess_rho = 0.014; % 0.025 is for PWRs
end


%% ----------------------- modeling options that you can switch on and off 
isTMSR = false;
isVerbose = false; % setting this to true will print out more information in console
isMultiScale= false;
is_rounded_geom = true; % the sharp corners in the fuel region are rounded, which avoids local flow recirculation
isSp3 = false;

%% ----------------------- opearting parameters
T0_flibe = 650; % degC
T0_fuel = 800; % degC

%% ----------------------- region names, universes, and domain numbers
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

% for XS definition
temp_indep_comps = {'CR', 'Blanket', 'ORCC','OR', 'CB', 'DC', 'VS'};
control_rods = {'CRCC1', 'CRCC2', 'CRCC3', 'CRCC4', ...
      'CRCC5', 'CRCC6', 'CRCC7', 'CRCC8_1', 'CRCC8_2'};   

rod_positions = ones(9, 1) * 430.85; % current control rods position(height in meter)
% heights where the 4 axial segments of control rods are seperated, from
% top to bottom
seg_nb = 4;
seg_heights = [572.85, 430.85, 272, 112.5, 41.6]*0.01;

    
% graphite based components, for material thermal properties definition
 gr_comps = {'CR',...
  'ORCC','OR', 'CB', 'DC',...
  'VS', 'CRCC1', 'CRCC2', 'CRCC3', 'CRCC4', ...
  'CRCC5', 'CRCC6', 'CRCC7', 'CRCC8_1', 'CRCC8_2'};

% for setting fuel XS and heat generation domains in fuel heat transfer
% module
fuel_domNb = cell2mat(values(domains, {'fuelU', 'fuelB', 'fuela1', 'fuela2', 'fuela3', 'fuela4'}));
fuel_univ = cell2mat(values(universes, {'fuelU', 'fuelB', 'fuela1', 'fuela2', 'fuela3', 'fuela4'})); 

% for porous media mmtm module and material properties
porous_media = {'Blanket', 'fuelU', 'fuelB', 'fuela1', 'fuela2', 'fuela3', 'fuela4'};



%% --------------------- porous media module
%boundary numbers used in comsol

% lower inlet
in_bound_lower =  [63, 64, 71, 72, 203, 207, 246, 256];

% center inlet
in_bound_center_curved = [95, 96, 219, 236];

in_center_bound1 = [103:106, 116, 117, 121, 122, 128, ...
    129, 137, 138, 145, 146, 149, 150, 156, 157, 165, ...
    166, 223, 224, 235, 237, 288, 289, 292, 293, 303, ...
    304, 310, 311, 324, 325, 328, 329, 333, 334, 339, 340];
in_center_bound2 = [107, 108, 118, 123, 130, 139, 147, ...
    151, 158, 167, 225, 238, 290, 294, 305, 312, 326, ...
    330, 335, 341];
in_center_bound3 = [97, 98, 109, 110, 119, 124, 131, 140, ...
    148, 152, 159, 168, 220, 226, 240, 242, 291, 295, 306, ...
    313, 327, 331, 336, 342];
in_bound_center_straight= [in_center_bound1, in_center_bound2, in_center_bound3];

% upper inlet
in_bound_up_curved = [75, 76, 209, 244];
in_bound_up_top = [73, 74, 208, 253];

% lower outlet
out_bound1 = [39, 40, 191, 272];   
% middle outlet
out_bound2 = [41, 42, 192, 264];  
% upper outlet
out_bound3 = [61, 62, 67, 68, 202, 205, 254, 260]; 
out_flow_bound = [out_bound1, out_bound2, out_bound3];


valueSet = values(domains, porous_media);
pm_domains = cell2mat(valueSet);
main_pm_domains = cell2mat(values(domains, {'Blanket', 'fuelU', 'fuelB', 'fuela1', 'fuela2', 'fuela3', 'fuela4'}));

%% ---------------------- flibe heat transfer module
flibe_domains = cell2mat(values(domains, {'Blanket', 'fuelU', 'fuelB', 'fuela1', 'fuela2', 'fuela3', 'fuela4'}));
inlet_temp_bound = [in_bound_lower, in_bound_center_curved, in_bound_center_straight, in_bound_up_curved, in_bound_up_top];


%% ----------------------- neutron diffusion module
dirichelet_b = [1, 2, 3, 4, 5, 6, 9, 10, 11, 12, 15, 16, 17, 18, 21, 22,...
    23, 24, 33:34, 61:64, 67:68, 71:72, 77:78, 93:94, 101:102, 113:114,...
    127, 133, 136, 142, 155, 161, 164, 170, 172:174, 176:177, 179:180,...
    182:183, 188, 202:203, 205, 207, 210, 218, 222, 228, 230:233, 246, ...
    254, 256, 260, 262, 265, 276, 278:279, 281:282, 284:286, 298:299,...
    302, 308, 318:321];
