close all;

% mk1
R = 0.025:0.05:1.755; % center of the bins
Z = 0.48:0.14:5.66; % center of the bins

% no rod at all, serpent output
output_files = {'serpent_maxpf/serp_full_core_det0.m', 'serpent_ref_rods_572/serp_full_core_det0.m'};
type_of_output = {false, false}; % false if is from serpent
all_outputs = containers.Map(output_files, type_of_output);
legends = {'maxpf', 'nominalpf'};
read_and_plot(all_outputs, R, Z,  ...
    'power with different packing fractions', 'pf_power.png', legends);

