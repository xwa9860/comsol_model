
% Define input variables for the model 
dimNb= 3; % 3D model
dnb=6; % delayed neutron precursor group number
gnb=8; % energy group number
region=5; % temperature group number
region_coated=4; %temperature of TRISTO coat
region_fuel_kernel=3; %termperature of fuel kernel

MultiScale= false;
sp3 = false;

unb = 9;

haveinlet=false;
if haveinlet
    keySet = {'inlet', 'outlet_high', 'outlet_low','CR', 'fuel',...
              'Blanket', 'ORCC','OR', 'CB', 'DC',...
              'VS', 'CRCC1', 'CRCC2', 'CRCC3', 'CRCC4', ...
              'CRCC5', 'CRCC6', 'CRCC7', 'CRCC8_1', 'CRCC8_2'};
    uvalueSet = int16([3 1 1 3 9 ...
                 8 2 1 7 6 ...
                 5 4 4 4 4  ...
                 4 4 4 4 4]);
    dvalueSet = int16([11, 7, 6, 10, 9,...
                8, 5, 4, 3, 2, ...
                1, 12, 13, 14, 15,...
                16, 17, 18, 19, 20 ]);
            % domain 19 and 20 are two halves of the CR8
else
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
end


domains = containers.Map(keySet,dvalueSet);
universes = containers.Map(keySet, uvalueSet);
universe_names = {'OR', 'ORCC', 'CR', 'CRCC', 'VS', 'DC', 'CB', 'BK','fuel'};

% for XS definition

% todo
% temp_indep_comps = {'inlet', 'outlet_high', 'outlet_low','CR',...
%           'Blanket', 'ORCC','OR', 'CB', 'DC',...
%           'VS', 'CRCC1', 'CRCC2', 'CRCC3', 'CRCC4', ...
%           'CRCC5', 'CRCC6', 'CRCC7', 'CRCC8_1', 'CRCC8_2', 'fuel'};
      
temp_indep_comps = {'CR',...
  'Blanket', 'ORCC','OR', 'CB', 'DC',...
  'VS', 'CRCC1', 'CRCC2', 'CRCC3', 'CRCC4', ...
  'CRCC5', 'CRCC6', 'CRCC7', 'CRCC8_1', 'CRCC8_2', 'fuel'};
      
% for material definition
 gr_comps = {'CR',...
  'ORCC','OR', 'CB', 'DC',...
  'VS', 'CRCC1', 'CRCC2', 'CRCC3', 'CRCC4', ...
  'CRCC5', 'CRCC6', 'CRCC7', 'CRCC8_1', 'CRCC8_2'};

% for setting fuel XS and heat generation domains
fuel_domNb = domains('fuel');
fuel_univ = universes('fuel');

% for porous media mmtm module and material properties
if haveinlet
    porous_media = {'inlet', 'outlet_high', 'outlet_low', 'Blanket', 'fuel'};
else
    porous_media = {'Blanket', 'fuel'};
end

%out_bound = [35 36 41 42 140 143 204 211];
%out_bound = [51 52 57 58 132 135 165 170];
% center
%in_bound = [93 94 169 181];
in_bound1=[77 78 145 160];
out_bound = [39 40 41 42 51 52 57 58 126 127 132 135 165 170 174 179];
in_bound2 = [53 54 59 60 133 136 163 166];
%[63 64 69 70 154 157 190 193]

valueSet = values(domains, porous_media);
pm_domains = cell2mat(valueSet);
main_pm_domains = cell2mat(values(domains, {'Blanket', 'fuel'}));
%channel_domains = cell2mat(values(domains, {'inlet', 'outlet_high', 'outlet_low'}));

% for flibe heat transfer module
flibe_domains = cell2mat(values(domains, {'Blanket', 'fuel'}));

% dirichelet_b = [1 2 3 4 5 6 9 10 11 12 15 16 17 18 21 22 23 24 33 34 61 62 63 64 67 ...
%  68 69 70 75 76 79 80 97 98 99 100 105 106 109 110 117 118 121 122 123 ...
%  124 125 127 128 130 131 133 134 139 153 154 156 157 160 162 171 172 ... 
%  175 176 178 179 190 192 193 197 199 203 215 217 218 220 221 223 224 ...
%  225 228 229 232 233 241 242 243 244];

dirichelet_b = [1 2 3 4 5 6 9 10 11 12 15 16 17 18 21 22 23 24 33 34 ...
    51 52 53 54 57 58 59 60 65 66 69 70 77 78 79 80 85 86 89 90 ...
    97 98 101 102 103 104 105 107 108 110 111 113 114 119 128 129 131 132 ...
    135 137 141 142 145 146 148 149 155 157 158 162 164 167 175 177 ...
    178 180 181 183 184 185 188 189  192 193 201 202 203 204 ];
%147 ?
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
