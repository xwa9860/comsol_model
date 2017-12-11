model.param.set('OCSlope', OCSlope); % value of OCSlope defined in 'define_input_parameters.m'
model.param.descr('OCSlope', 'Over cooling inlet T drop slope');
model.param.set('OCOnset', OCOnset);% value of OCOnset defined in 'define_input_parameters.m'
model.param.descr('OCOnset', 'Over cooling start time, a very large time means it''s not triggered during the simulation');
model.param.set('eigenMode', '0', 'binary value for NON engenvalue mode(value = 1 if not engenvalue mode, value =0 if engenvalue mode)');
model.param.set('plotNb', '1', 'tracks plot number, increment as new plot are added');