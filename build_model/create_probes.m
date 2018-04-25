function model = create_probes(model, temp_var_ht)
% temp_var_ht: used to define temperature probes for individual fuel layers
    global fuel_domNb;
    global isMultiScale;
    global flibe_domains;
    global reactor;
    global out_flow_bound;  % for outlet temperature in Mk1
    global inlet_temp_bound; % for inlet temperature in Mk1
    
    %----------------create table to store probe values
    model.result.table.create('tbl1', 'Table');
    model.result.table('tbl1').set('tablebuffersize', '100000');

    %--------------- domain probe for integrated total core power
    model.probe.create('dom1', 'Domain');
    model.probe('dom1').model('mod1');
    model.probe('dom1').selection.set(fuel_domNb);
    model.probe('dom1').label('Probe Pint');
    model.probe('dom1').set('table', 'tbl1');
    model.probe('dom1').set('descr', 'integrated total core power');
    model.probe('dom1').set('window', 'window1');
    model.probe('dom1').set('expr', 'Pint');
    model.probe('dom1').set('unit', 'W*m');

    %----------- domain probe for average fuel temperature
    model.probe.create('dom2', 'Domain');
    model.probe('dom2').model('mod1');
    model.probe('dom2').selection.set(fuel_domNb);
    model.probe('dom2').label('average_fuel_temp_probe');
    model.probe('dom2').set('table', 'tbl1');
    if isMultiScale
        switch reactor
            case 'TMSR'
                model.probe('dom2').set('expr', '1/9*(Tp11+Tp12+Tp13+Tp21+Tp22+Tp23+Tp31+Tp32+Tp33)');
            case 'Mk1'
                model.probe('dom2').set('expr', '1/3*(Tp211+Tp221+Tp231)');
        end
    else
        model.probe('dom2').set('expr', 'T_fuel');
    end
    model.probe('dom2').set('window', 'window2');
    model.probe('dom2').set('descr', 'T_fuel');
    model.probe('dom2').set('unit', 'degC');

    %--------- domain probe for average flibe temperature
    model.probe.create('dom3', 'Domain');
    model.probe('dom3').model('mod1');

    model.probe('dom3').selection.set(flibe_domains );
    model.probe('dom3').label('average_flibe_temp_probe');
    model.probe('dom3').set('table', 'tbl1');
    model.probe('dom3').set('descr', 'T_flibe');
    model.probe('dom3').set('window', 'window2');
    model.probe('dom3').set('expr', 'T_flibe');
    model.probe('dom3').set('unit', 'degC');

    %--------- domain probe for maximum fuel temperature
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
                model.probe('dom4').set('expr', 'Tp211');
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
        model.component('mod1').probe('bnd1').label('TL_out_ave');
        model.component('mod1').probe('bnd1').set('probename', 'TL_out_ave');
        model.component('mod1').probe('bnd1').set('expr', 'T_flibe');
        model.component('mod1').probe('bnd1').set('unit', 'degC');
        model.component('mod1').probe('bnd1').set('descr', 'Temperature');
        model.component('mod1').probe('bnd1').selection.set(out_flow_bound);

        % Boundary probe for average inlet temperature
        model.component('mod1').probe.create('bnd2', 'Boundary');
        model.component('mod1').probe('bnd2').selection.set(inlet_temp_bound);
        model.component('mod1').probe('bnd2').label('TL_in_ave');
        model.component('mod1').probe('bnd2').set('probename', 'TL_in_ave');
        model.component('mod1').probe('bnd2').set('expr', 'T_flibe');
        model.component('mod1').probe('bnd2').set('unit', 'degC');
        model.component('mod1').probe('bnd2').set('descr', 'Temperature');
        %model.component('mod1').probe('bnd2').set('table', 'tbl3');
        model.component('mod1').probe('bnd2').set('window', 'window4');

        % Boundary probe for average outlet temperature
        model.component('mod1').probe.create('bnd3', 'Boundary');
        model.component('mod1').probe('bnd3').label('TL_out_max');
        model.component('mod1').probe('bnd3').set('probename', 'TL_out_max');
        model.component('mod1').probe('bnd3').set('type', 'maximum');
        model.component('mod1').probe('bnd3').set('expr', 'T_flibe');
        model.component('mod1').probe('bnd3').set('unit', 'degC');
        model.component('mod1').probe('bnd3').set('descr', 'Temperature');
        model.component('mod1').probe('bnd3').selection.set(out_flow_bound);

        % Boundary probe for average inlet temperature
        model.component('mod1').probe.create('bnd4', 'Boundary');
        model.component('mod1').probe('bnd4').selection.set(inlet_temp_bound);
        model.component('mod1').probe('bnd4').label('TL_in_max');
        model.component('mod1').probe('bnd4').set('probename', 'TL_in_max');
        model.component('mod1').probe('bnd4').set('type', 'maximum');
        model.component('mod1').probe('bnd4').set('expr', 'T_flibe');
        model.component('mod1').probe('bnd4').set('unit', 'degC');
        model.component('mod1').probe('bnd4').set('descr', 'Temperature');
        %model.component('mod1').probe('bnd2').set('table', 'tbl3');
        model.component('mod1').probe('bnd4').set('window', 'window4');
    end

    % ----------- probes for individual fuel layer temperature   
    if isMultiScale  
        for i = 1:length(temp_var_ht)
            model = create_a_dom_probe(temp_var_ht(i), model, 'tbl1');
        end       
    end
end


function model = create_a_dom_probe(expr, model, tb_name)
    %% get and update dom_probe_nb
    global dom_probe_nb fuel_domNb
   
    % https://www.mathworks.com/matlabcentral/answers/99602-how-can-i-use-global-variables-and-matlab-workspaces
    if ~isempty(dom_probe_nb)
        dom_probe_nb = dom_probe_nb + 1;
    else
        dom_probe_nb = mphglobal(model, 'dom_probe_nb');
    end
    
   
    model.param.set('dom_probe_nb', dom_probe_nb);
    
    %% create the probe
    probe_name = ['dom', num2str(dom_probe_nb)];
    model.probe.create(probe_name, 'Domain');
    probe = model.probe(probe_name);
    probe.model('mod1');
    probe.selection.set(fuel_domNb);
    probe.label(expr);
    probe.set('table', tb_name);
    probe.set('descr', expr);
    probe.set('window', 'window2');
    probe.set('expr', expr);
    probe.set('unit', 'degC');


end

