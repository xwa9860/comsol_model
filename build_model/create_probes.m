global fuel_domNb;
global isMultiScale;
global flibe_domains;
global reactor;
global out_flow_bound;  % for outlet temperature in Mk1
global inlet_temp_bound; % for inlet temperature in Mk1
% create table to store probe values
model.result.table.create('tbl1', 'Table');
model.result.table('tbl1').set('tablebuffersize', '100000');

% domain probe for integrated total core power
model.probe.create('dom1', 'Domain');
model.probe('dom1').model('mod1');
model.probe('dom1').selection.set(fuel_domNb);
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
if isMultiScale
    switch reactor
        case 'TMSR'
            model.probe('dom2').set('expr', '1/13*(Tp11+Tp12+Tp13+Tp14+Tp21+Tp22+Tp23+Tp24+Tp31+Tp32+Tp33+Tp34+Tp4)');
        case 'Mk1'
            model.probe('dom2').set('expr', '1/6*(Tp1+Tp21+Tp22+Tp23+Tp24+Tp3)');
    end
else
    model.probe('dom2').set('expr', 'T_fuel');
end
model.probe('dom2').set('window', 'window2');
model.probe('dom2').set('descr', 'T_fuel');
model.probe('dom2').set('unit', 'degC');

% domain probe for average flibe temperature
model.probe.create('dom3', 'Domain');
model.probe('dom3').model('mod1');

model.probe('dom3').selection.set(flibe_domains );
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
if isMultiScale
    % the maximum of the inner most fuel layer
    switch reactor
        case 'TMSR'
            model.probe('dom4').set('expr', 'Tp11');
        case 'Mk1'
            model.probe('dom4').set('expr', 'Tp21');
    end
    
else
    model.probe('dom4').set('expr', 'T_fuel');
end

model.probe('dom4').set('table', 'tbl1');
model.probe('dom4').set('window', 'window3');
model.probe('dom4').set('unit', 'degC');

% domain probe for maximum flibe temperature(only in the upper region)
model.probe.duplicate('dom5', 'dom4');
model.probe('dom5').selection.set(fuel_domNb);
model.probe('dom5').set('expr', 'T_flibe');
model.probe('dom5').label('max flibe temp');
model.probe('dom5').set('probename', 'T_flibe_max');
model.probe('dom5').set('table', 'tbl1');
model.probe('dom5').set('window', 'window3');
model.probe('dom5').set('unit', 'degC');


if strcmp(reactor, 'Mk1')
% Boundary probe for average outlet temperature
model.component('mod1').probe.create('bnd1', 'Boundary');
model.component('mod1').probe('bnd1').label('TL_out');
model.component('mod1').probe('bnd1').set('probename', 'TL_out');
model.component('mod1').probe('bnd1').set('expr', 'T_flibe');
model.component('mod1').probe('bnd1').set('unit', 'degC');
model.component('mod1').probe('bnd1').set('descr', 'Temperature');
model.component('mod1').probe('bnd1').selection.set(out_flow_bound);

% Boundary probe for average inlet temperature
model.component('mod1').probe.create('bnd2', 'Boundary');
model.component('mod1').probe('bnd2').selection.set(inlet_temp_bound);
model.component('mod1').probe('bnd2').label('TL_in');
model.component('mod1').probe('bnd2').set('expr', 'T_flibe');
model.component('mod1').probe('bnd2').set('unit', 'degC');
model.component('mod1').probe('bnd2').set('descr', 'Temperature');
%model.component('mod1').probe('bnd2').set('table', 'tbl3');
model.component('mod1').probe('bnd2').set('window', 'window4');
end

if isMultiScale
    switch reactor
        case 'TMSR'
        %Tp11
        model.probe.create('dom6', 'Domain');
        model.probe('dom6').model('mod1');
        model.probe('dom6').selection.set(fuel_domNb);
        model.probe('dom6').label('Tp11');
        model.probe('dom6').set('table', 'tbl1');
        model.probe('dom6').set('descr', 'Tp11');
        model.probe('dom6').set('window', 'window2');
        model.probe('dom6').set('expr', 'Tp11');
        model.probe('dom6').set('unit', 'degC');

        %Tp12
        model.probe.create('dom7', 'Domain');
        model.probe('dom7').model('mod1');
        model.probe('dom7').selection.set(fuel_domNb);
        model.probe('dom7').label('Tp12');
        model.probe('dom7').set('table', 'tbl1');
        model.probe('dom7').set('descr', 'Tp12');
        model.probe('dom7').set('window', 'window2');
        model.probe('dom7').set('expr', 'Tp12');
        model.probe('dom7').set('unit', 'degC');

        %Tp13
        model.probe.create('dom8', 'Domain');
        model.probe('dom8').model('mod1');
        model.probe('dom8').selection.set(fuel_domNb);
        model.probe('dom8').label('Tp13');
        model.probe('dom8').set('table', 'tbl1');
        model.probe('dom8').set('descr', 'Tp13');
        model.probe('dom8').set('window', 'window2');
        model.probe('dom8').set('expr', 'Tp13');
        model.probe('dom8').set('unit', 'degC');

        %Tp14
        model.probe.create('dom9', 'Domain');
        model.probe('dom9').model('mod1');
        model.probe('dom9').selection.set(fuel_domNb);
        model.probe('dom9').label('Tp14');
        model.probe('dom9').set('table', 'tbl1');
        model.probe('dom9').set('descr', 'Tp14');
        model.probe('dom9').set('window', 'window2');
        model.probe('dom9').set('expr', 'Tp14');
        model.probe('dom9').set('unit', 'degC');

        %Tp21
        model.probe.create('dom10', 'Domain');
        model.probe('dom10').model('mod1');
        model.probe('dom10').selection.set(fuel_domNb);
        model.probe('dom10').label('Tp21');
        model.probe('dom10').set('table', 'tbl1');
        model.probe('dom10').set('descr', 'Tp21');
        model.probe('dom10').set('window', 'window2');
        model.probe('dom10').set('expr', 'Tp21');
        model.probe('dom10').set('unit', 'degC');


        %Tp22
        model.probe.create('dom11', 'Domain');
        model.probe('dom11').model('mod1');
        model.probe('dom11').selection.set(fuel_domNb);
        model.probe('dom11').label('Tp22');
        model.probe('dom11').set('table', 'tbl1');
        model.probe('dom11').set('descr', 'Tp22');
        model.probe('dom11').set('window', 'window2');
        model.probe('dom11').set('expr', 'Tp22');
        model.probe('dom11').set('unit', 'degC');

        %Tp23
        model.probe.create('dom12', 'Domain');
        model.probe('dom12').model('mod1');
        model.probe('dom12').selection.set(fuel_domNb);
        model.probe('dom12').label('Tp23');
        model.probe('dom12').set('table', 'tbl1');
        model.probe('dom12').set('descr', 'Tp23');
        model.probe('dom12').set('window', 'window2');
        model.probe('dom12').set('expr', 'Tp23');
        model.probe('dom12').set('unit', 'degC');

        %Tp24
        model.probe.create('dom13', 'Domain');
        model.probe('dom13').model('mod1');
        model.probe('dom13').selection.set(fuel_domNb);
        model.probe('dom13').label('Tp24');
        model.probe('dom13').set('table', 'tbl1');
        model.probe('dom13').set('descr', 'Tp24');
        model.probe('dom13').set('window', 'window2');
        model.probe('dom13').set('expr', 'Tp24');
        model.probe('dom13').set('unit', 'degC');


        %Tp31
        model.probe.create('dom14', 'Domain');
        model.probe('dom14').model('mod1');
        model.probe('dom14').selection.set(fuel_domNb);
        model.probe('dom14').label('Tp31');
        model.probe('dom14').set('table', 'tbl1');
        model.probe('dom14').set('descr', 'Tp31');
        model.probe('dom14').set('window', 'window2');
        model.probe('dom14').set('expr', 'Tp31');
        model.probe('dom14').set('unit', 'degC');

        %Tp32
        model.probe.create('dom15', 'Domain');
        model.probe('dom15').model('mod1');
        model.probe('dom15').selection.set(fuel_domNb);
        model.probe('dom15').label('Tp32');
        model.probe('dom15').set('table', 'tbl1');
        model.probe('dom15').set('descr', 'Tp32');
        model.probe('dom15').set('window', 'window2');
        model.probe('dom15').set('expr', 'Tp32');
        model.probe('dom15').set('unit', 'degC');

        %Tp33
        model.probe.create('dom16', 'Domain');
        model.probe('dom16').model('mod1');
        model.probe('dom16').selection.set(fuel_domNb);
        model.probe('dom16').label('Tp33');
        model.probe('dom16').set('table', 'tbl1');
        model.probe('dom16').set('descr', 'Tp33');
        model.probe('dom16').set('window', 'window2');
        model.probe('dom16').set('expr', 'Tp33');
        model.probe('dom16').set('unit', 'degC');

        %Tp34
        model.probe.create('dom17', 'Domain');
        model.probe('dom17').model('mod1');
        model.probe('dom17').selection.set(fuel_domNb);
        model.probe('dom17').label('Tp34');
        model.probe('dom17').set('table', 'tbl1');
        model.probe('dom17').set('descr', 'Tp34');
        model.probe('dom17').set('window', 'window2');
        model.probe('dom17').set('expr', 'Tp34');
        model.probe('dom17').set('unit', 'degC');

        %Tp4
        model.probe.create('dom18', 'Domain');
        model.probe('dom18').model('mod1');
        model.probe('dom18').selection.set(fuel_domNb);
        model.probe('dom18').label('Tp4');
        model.probe('dom18').set('table', 'tbl1');
        model.probe('dom18').set('descr', 'Tp4');
        model.probe('dom18').set('window', 'window2');
        model.probe('dom18').set('expr', 'Tp4');
        model.probe('dom18').set('unit', 'degC');
        
        case 'Mk1'
        %Tp1
        model.probe.create('dom6', 'Domain');
        model.probe('dom6').model('mod1');
        model.probe('dom6').selection.set(fuel_domNb);
        model.probe('dom6').label('Tp1');
        model.probe('dom6').set('table', 'tbl1');
        model.probe('dom6').set('descr', 'Tp1');
        model.probe('dom6').set('window', 'window2');
        model.probe('dom6').set('expr', 'Tp1');
        model.probe('dom6').set('unit', 'degC');

        %Tp21
        model.probe.create('dom7', 'Domain');
        model.probe('dom7').model('mod1');
        model.probe('dom7').selection.set(fuel_domNb);
        model.probe('dom7').label('Tp21');
        model.probe('dom7').set('table', 'tbl1');
        model.probe('dom7').set('descr', 'Tp21');
        model.probe('dom7').set('window', 'window2');
        model.probe('dom7').set('expr', 'Tp21');
        model.probe('dom7').set('unit', 'degC');

        %Tp22
        model.probe.create('dom8', 'Domain');
        model.probe('dom8').model('mod1');
        model.probe('dom8').selection.set(fuel_domNb);
        model.probe('dom8').label('Tp22');
        model.probe('dom8').set('table', 'tbl1');
        model.probe('dom8').set('descr', 'Tp22');
        model.probe('dom8').set('window', 'window2');
        model.probe('dom8').set('expr', 'Tp22');
        model.probe('dom8').set('unit', 'degC');

        %Tp23
        model.probe.create('dom9', 'Domain');
        model.probe('dom9').model('mod1');
        model.probe('dom9').selection.set(fuel_domNb);
        model.probe('dom9').label('Tp23');
        model.probe('dom9').set('table', 'tbl1');
        model.probe('dom9').set('descr', 'Tp23');
        model.probe('dom9').set('window', 'window2');
        model.probe('dom9').set('expr', 'Tp23');
        model.probe('dom9').set('unit', 'degC');

        %Tp24
        model.probe.create('dom10', 'Domain');
        model.probe('dom10').model('mod1');
        model.probe('dom10').selection.set(fuel_domNb);
        model.probe('dom10').label('Tp24');
        model.probe('dom10').set('table', 'tbl1');
        model.probe('dom10').set('descr', 'Tp24');
        model.probe('dom10').set('window', 'window2');
        model.probe('dom10').set('expr', 'Tp24');
        model.probe('dom10').set('unit', 'degC');
        
        %Tp3
        model.probe.create('dom11', 'Domain');
        model.probe('dom11').model('mod1');
        model.probe('dom11').selection.set(fuel_domNb);
        model.probe('dom11').label('Tp3');
        model.probe('dom11').set('table', 'tbl1');
        model.probe('dom11').set('descr', 'Tp3');
        model.probe('dom11').set('window', 'window2');
        model.probe('dom11').set('expr', 'Tp3');
        model.probe('dom11').set('unit', 'degC');

        
        
    end
end