function model = create_and_run_scaling(model,  isControlRodRemoval)
    global output_path;
    global fuel_comp reactor;
    %% create new variable FluxN to get normalized fluxes => integral of
    % pdensity = Pop
    model.variable.create('var20');
    model.variable('var20').model('mod1');
    model.variable('var20').set('FluxN1', 'Flux1*Pop/Pint', 'Pop is the operation power');
    model.variable('var20').set('FluxN2', 'Flux2*Pop/Pint');
    model.variable('var20').set('FluxN3', 'Flux3*Pop/Pint');
    model.variable('var20').set('FluxN4', 'Flux4*Pop/Pint');
    model.variable('var20').set('FluxN5', 'Flux5*Pop/Pint');
    model.variable('var20').set('FluxN6', 'Flux6*Pop/Pint');
    model.variable('var20').set('FluxN7', 'Flux7*Pop/Pint');
    model.variable('var20').set('FluxN8', 'Flux8*Pop/Pint');
    model.variable('var20').set('FluxN21', 'Flux21*Pop/Pint');
    model.variable('var20').set('FluxN22', 'Flux22*Pop/Pint');
    model.variable('var20').set('FluxN23', 'Flux23*Pop/Pint');
    model.variable('var20').set('FluxN24', 'Flux24*Pop/Pint');
    model.variable('var20').set('FluxN25', 'Flux25*Pop/Pint');
    model.variable('var20').set('FluxN26', 'Flux26*Pop/Pint');
    model.variable('var20').set('FluxN27', 'Flux27*Pop/Pint');
    model.variable('var20').set('FluxN28', 'Flux28*Pop/Pint');
    model.variable('var20').label('FluxN');

    model.variable.create('var23');
    model.variable('var23').model('mod1');
    model.variable('var23').label('ConcN');
    model.variable('var23').set('ConcN1', 'Conc1*Pop/Pint');
    model.variable('var23').set('ConcN2', 'Conc2*Pop/Pint');
    model.variable('var23').set('ConcN3', 'Conc3*Pop/Pint');
    model.variable('var23').set('ConcN4', 'Conc4*Pop/Pint');
    model.variable('var23').set('ConcN5', 'Conc5*Pop/Pint');
    model.variable('var23').set('ConcN6', 'Conc6*Pop/Pint');


    %% set up a stationary study to calculate the value of FluxN's
    model.study.create('std6');
    model.study('std6').create('stat', 'Stationary');
    model.study('std6').feature('stat').set('initstudyhide', 'on');
    model.study('std6').feature('stat').set('initsolhide', 'on');
    model.study('std6').feature('stat').set('solnumhide', 'on');
    model.study('std6').feature('stat').set('notstudyhide', 'on');
    model.study('std6').feature('stat').set('notsolhide', 'on');
    model.study('std6').feature('stat').set('notsolnumhide', 'on');


    model.sol.create('sol15');
    model.sol('sol15').study('std6');
    model.sol('sol15').attach('std6');
    model.sol('sol15').create('st1', 'StudyStep');
    model.sol('sol15').create('v1', 'Variables');
    model.sol('sol15').create('s1', 'Stationary');

    model.study('std6').feature('stat').set('initstudyhide', 'on');
    model.study('std6').feature('stat').set('initsolhide', 'on');
    model.study('std6').feature('stat').set('solnumhide', 'on');
    model.study('std6').feature('stat').set('notstudyhide', 'on');
    model.study('std6').feature('stat').set('notsolhide', 'on');
    model.study('std6').feature('stat').set('notsolnumhide', 'on');


    model.study('std6').label('Scaling');
    model.study('std6').feature('stat').label('scaling');
    model.study('std6').feature('stat').set('notsolnum', 'auto');
    model.study('std6').feature('stat').set('notsolmethod', 'sol');

    % turn all the modules off
    switch reactor
        case 'TMSR'
            model.study('std6').feature('stat').set('activate', {'ht_fuel' 'off' 'neutrondiffusion' 'off' 'ht_flibe' 'off'}); 
        case 'Mk1'
            switch fuel_comp
                case 'eq'
                    model.study('std6').feature('stat').set('activate',{'br' 'off' 'ht_fuel1' 'off' 'ht_fuel2' 'off' 'ht_fuel3' 'off' 'ht_fuel4' 'off' ...
                        'ht_fuel5' 'off' 'ht_fuel6' 'off' 'ht_fuel7' 'off' 'ht_fuel8' 'off' ...
                        'ht_flibe' 'off' 'neutrondiffusion' 'off'});
                case 'fresh'
                    model.study('std6').feature('stat').set('activate',{'br' 'off' 'ht_fuel1' 'off' 'ht_flibe' 'off' 'neutrondiffusion' 'off'});
            end
    end
    
     
    model.study('std6').feature('stat').set('usesol', 'on');
    model.study('std6').feature('stat').set('notstudy', 'std2');


    model.sol('sol15').attach('std6');
    model.sol('sol15').feature('v1').set('initmethod', 'sol');
    model.sol('sol15').feature('v1').set('initsol', 'sol13');
    model.sol('sol15').feature('v1').set('solnum', 'auto');
    model.sol('sol15').feature('v1').set('notsolmethod', 'sol');
    model.sol('sol15').feature('v1').set('notsol', 'sol13');
    model.sol('sol15').feature('v1').set('notsolnum', 'auto');
    
    %% run and save to file
    model.sol('sol15').runAll; 
    if isControlRodRemoval
        mphsave(model, [output_path, 'scaling_cr.mph']);
    else
        mphsave(model, [output_path, 'scaling.mph']);
    end
end