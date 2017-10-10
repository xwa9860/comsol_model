% create table to store probe values
model.result.table.create('tbl1', 'Table');
model.result.table('tbl1').set('tablebuffersize', '100000');


% domain probe for integrated total core power
model.probe.create('dom1', 'Domain');
model.probe('dom1').model('mod1');
model.probe('dom1').label('Probe Pint');
model.probe('dom1').set('table', 'tbl1');
model.probe('dom1').set('descr', 'integrated total core power');
model.probe('dom1').set('window', 'window1');
model.probe('dom1').set('expr', 'Pint');
model.probe('dom1').set('unit', 'W*m');

% domain probe for average fuel temperature
model.probe.create('dom2', 'Domain');
model.probe('dom2').model('mod1');
model.probe('dom2').selection.set(fuel_domNb);
model.probe('dom2').label('average_fuel_temp_probe');
model.probe('dom2').set('table', 'tbl1');
model.probe('dom2').set('descr', 'T_fuel');
model.probe('dom2').set('window', 'window2');
model.probe('dom2').set('expr', 'T_fuel');
model.probe('dom2').set('unit', 'degC');

% domain probe for average flibe temperature(only in the upper region)
model.probe.create('dom3', 'Domain');
model.probe('dom3').model('mod1');
model.probe('dom3').selection.set(fuel_domNb);
model.probe('dom3').label('average_flibe_temp_probe');
model.probe('dom3').set('table', 'tbl1');
model.probe('dom3').set('descr', 'T_flibe');
model.probe('dom3').set('window', 'window2');
model.probe('dom3').set('expr', 'T_flibe');
model.probe('dom3').set('unit', 'degC');

% domain probe for maximum fuel temperature
model.probe.create('dom4', 'Domain');
model.probe('dom4').model('mod1');
model.probe('dom4').label('max fuel temp');
model.probe('dom4').set('probename', 'T_fuel_max');
model.probe('dom4').set('type', 'maximum');
model.probe('dom4').selection.set(fuel_domNb);
model.probe('dom4').set('expr', 'T_fuel');
model.probe('dom4').set('table', 'tbl1');
model.probe('dom4').set('window', 'window3');
model.probe('dom4').set('unit', 'degC');

% domain probe for maximum flibe temperature(only in the upper region)
model.probe.duplicate('dom5', 'dom4');
model.probe('dom5').set('expr', 'T_flibe');
model.probe('dom5').label('max flibe temp');
model.probe('dom5').set('probename', 'T_flibe_max');
model.probe('dom5').set('table', 'tbl1');
model.probe('dom5').set('window', 'window3');
model.probe('dom5').set('unit', 'degC');




