%{
define global parameters that are common to Mk1 and TMSR
%}
global OpPower T_inlet T0_flibe T0_fuel;


model.param.set('eigenMode', '0', 'binary value for NON engenvalue mode(value = 1 if not engenvalue mode, value =0 if engenvalue mode)');
model.param.set('plotNb', '1', 'tracks plot number, increment as new plots are added');
model.param.set('animNb', '1', 'tracks plot number, increment as new plots are added');
model.param.set('intNb', '1', 'tracks inlet flow probe number, increment as new probes are added');

% radius in triso and pebble
r_triso = calc_radius_in_triso();
for i = 1:length(r_triso)
    model.param.set(['R', num2str(i)], [num2str(r_triso(i)),'[m]']);
end

r_pb = calc_radius_in_pb();
for i = 1:length(r_pb)
    model.param.set(['r', num2str(i)], [num2str(r_pb(i)),'[m]']);
end

%% reactor operation parameters
model.param.set('Pop', [num2str(OpPower), '[W]']);
model.param.set('T_inlet', [num2str(T_inlet), '[degC]'],'nominal inlet coolant temperature');
model.param.set('T0_flibe', [num2str(T0_flibe), '[degC]'], 'initial temperature');
model.param.set('T0_fuel', [num2str(T0_fuel), '[degC]'], 'initial temperature');