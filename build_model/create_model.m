global reactor isMultiScale fuel_comp
fprintf('creating a model object in the server\n')
run('create_comsol_model.m');

fprintf('creating global variables\n')
% common ones for TMSR and Mk1, avoiding duplication of code
run('create_common_global_vars.m');
% specific for Mk1 or TMSR
run('create_global_vars.m');

fprintf('creating function, such as step, ramp, ... functions\n')
run('create_fcns.m');

fprintf('creating geometry\n')
run('create_geom.m');
run('create_mesh.m');
tic
fprintf('creating variables\n')
run('create_vars.m');
toc

fprintf('creating materials\n')
run('create_mats.m');

fprintf('creating physics\n')
switch reactor
    case 'Mk1'
        run('create_porous_media');
end

% Heat transfer modules
run('create_ht_flibe.m');

if isMultiScale
    switch fuel_comp
        case 'fresh'
            bu_nb = 1;
        case 'eq'
            bu_nb = 8;
    end
    


    % create the heat tranfer module(s)
    for k = 1 : bu_nb
        module_name = ['ht_fuel', num2str(k)];
 
        %For MK1
        %{
        naming conventions:
        'Tp1b': graphite kernel
        'Tp21b', ..., 'TP24':fuel
        'TP3b': graphite shell
        %}

        %For TMSR
        %naming:
        %'Tp11...Tp31...' : fuel
        %'Tp4: graphite shell

        switch reactor
            case 'TMSR'
                temp_var_ht = ...
                 {'Tp11' 'Tp12' 'Tp13' 'Tp14' ...
                    'Tp21' 'Tp22' 'Tp23' 'Tp24' ...
                    'Tp31' 'Tp32' 'Tp33' 'Tp34'...
                    'Tp4'};
            case 'Mk1'
                temp_var_ht{1} = ['Tp1', num2str(k)];
                for i = 1:4
                temp_var_ht{i+1} = ['Tp2', num2str(i), num2str(k)];
                end
                temp_var_ht{6} = ['Tp3', num2str(k)];
        end       
        model = create_ht_fuel_multiscale(model, module_name, temp_var_ht, k);
    end
    
    % create a variable for fuel surface temperature that is used in the
    % flibe heat transfer module 
    model.variable.create('var25');
    model.variable('var25').model('mod1');
    model.variable('var25').label('Fuel surface temp, used in flibe heat transfer');
    switch reactor
        case 'TMSR'
            model.variable('var25').set('T_fuel', 'Tp4');
        case 'Mk1'
            switch fuel_comp
                case 'fresh'
                    model.variable('var25').set('T_fuel', 'Tp31');
                case 'eq'
                    model.variable('var25').set('T_fuel', '1/8*(Tp31+ Tp32 + Tp33 + Tp34 + Tp35 + Tp36 + Tp37 + Tp38)');
            end
    end
else
    run('create_ht_fuel.m');
    
    %% create T_fuel_i varaibles for computing cross-sections
    model.variable.create('var_T_fuel');
    model.variable('var_T_fuel').model('mod1');
    for i = 1:3
        for j = 1:8
            model.variable('var_T_fuel').set(['Tp2', num2str(i), num2str(j)], 'T_fuel');
        end
    end
end 
%Neutronics module
run('create_neutron_diffusion.m');

%Math operatoins, such as integration, for probes
run('create_operations.m');
%Probes to get desired variable values during transient
run('create_probes.m');
