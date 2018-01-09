function model = create_transient_study(model, transient_type)

    %% set neutron diffusion equations to transient mode
    %set to non-eigenvalue mode = adding the time derivative term in the PDE
    model.param.set('eigenMode', '1', 'binary value for NON eigenvalue mode(value = 1 if not engenvalue mode, value =0 if engenvalue mode)');
    %enable the lambda variable and define lambda for RI transient
    model.variable('var19').active(true);

    %% set parameters for different transient types 
    %% define transient study parameters
    tf = 20; %second, finishing time of the transient
    dt = 0.1; %second, time step to record the results(not the timestep that the solver takes)

    switch transient_type
     case 'ext_RI'
        % define reactivity insertion value, 0 means that this simulation is not
        % about reactivity insertion
        rho_ext = 0;% reactivity insertion value 

        model.param.set('reactivity_insertion', num2str(rho_ext), 'external reactivity insertion');

        % define step function for reactivity insertion
        model.func.create('step1', 'Step');
        model.func('step1').label('step_fun');
        model.func('step1').set('funcname', 'step_fun');
        model.func('step1').set('to', 'reactivity_insertion+1');
        model.func('step1').set('smooth', '0');
        model.func('step1').set('from', '1');
        model.func('step1').set('location', '0.1');
        
        model.variable('var19').set('lambda', 'step_fun(t/1[s])*lambda_critical');
        
        model.physics('ht_flibe').feature('temp1').set('T0', 'T_inlet_OC');
     case 'control_rods_removal'   
        % change control rod positions
        model.param.set('h_CRCC3', 5.7285);
        model.param.set('h_CRCC6', 5.7285);
        
        model.variable.create('var24');
        model.variable('var24').set('T_inlet_OC', 'TL_out - Q_real/mL/cpL', 'inlet coolant temperature during overcooling');
        model.variable('var24').set('Q_real', 'c_min*(TL_out-T_air_in)*eta');
        model.variable('var24').set('eta', '0.9', 'heat exchanger efficiency');
        model.variable('var24').set('c_min', '461540[J/K]', 'min(mCp_air, mCp_flibe)');
        model.variable('var24').set('T_air_in', '418.6[C]', 'cold air inlet temperature');
        model.physics('ht_flibe').feature('temp1').set('T0', 'T_inlet_OC');
        model.component('mod1').variable('var24').label('T_inlet_OC');
        
     case 'over_cooling'
        % define Overcooling transient parameters
        OCOnset = 2; %s, starting time of overcooling, a very large time might mean the overcooling is not simulated
        OCSlope = -10; %K/s, speed of decrease in inlet coolant temperature
        model.param.set('OCSlope', OCSlope); % value of OCSlope defined in 'define_input_parameters.m'
        model.param.descr('OCSlope', 'Over cooling inlet T drop slope');
        model.param.set('OCOnset', OCOnset);% value of OCOnset defined in 'define_input_parameters.m'
        model.param.descr('OCOnset', 'Over cooling start time, a very large time means it''s not triggered during the simulation');
        % define ramp function for overcooling 
        model.func.create('rm1', 'Ramp');
        model.func('rm1').set('cutoffactive', 'on');
        model.func('rm1').set('slope', 'OCSlope');
        model.func('rm1').set('location', 'OCOnset');
        model.func('rm1').set('cutoff', '-100');
        model.physics('ht_flibe').feature('temp1').set('T0', 'T_inlet+rm1(t/1[s])');
        
    end

    %% change 'Flux' to 'FluxN'
    model.variable('var18').set('Pdensity', 'kappa1*fiss1*FluxN1+kappa2*fiss2*FluxN2+kappa3*fiss3*FluxN3+kappa4*fiss4*FluxN4+kappa5*fiss5*FluxN5+kappa6*fiss6*FluxN6+kappa7*fiss7*FluxN7+kappa8*fiss8*FluxN8', 'power density used in transient study for heat generation in the fuel');
    model.variable('var18').set('PdensityN', 'Pdensity');
    model.physics('neutrondiffusion').field('dimensionless').field('FluxN');
    global isSp3;
    if isSp3
        model.physics('neutrondiffusion').field('dimensionless').component({'FluxN1' 'FluxN2' 'FluxN3' 'FluxN4' 'FluxN5' 'FluxN6' 'FluxN7' 'FluxN8' 'FluxN21' 'FluxN22' 'FluxN23' 'FluxN24' 'FluxN25' 'FluxN26' 'FluxN27' 'FluxN28' 'ConcN1' 'ConcN2' 'ConcN3' 'ConcN4' 'ConcN5' 'ConcN6'});
    else
            model.physics('neutrondiffusion').field('dimensionless').component({'FluxN1' 'FluxN2' 'FluxN3' 'FluxN4' 'FluxN5' 'FluxN6' 'FluxN7' 'FluxN8' 'ConcN1' 'ConcN2' 'ConcN3' 'ConcN4' 'ConcN5' 'ConcN6'});
    end
    % desable the FluxN variable, because FluxN become dependent variable in
    % neutron diffusion module, but the previous FluxN values will be used as
    % initial values for this transient study
    model.variable('var20').active(false);

    % desable ConcN
    model.variable('var23').active(false);
    % change the normalized power to Pdensity
    % if isMultiScale
    %     %Pdensity
    % else
    %     model.physics('ht_fuel').feature('hs1').set('Q0', 'Pdensity');
    % end

    %% set initial values for Flux and Conc
    global gnb dnb;
    init = model.physics('neutrondiffusion').feature('init1');
    for i=1:gnb
        init.set(['FluxN', num2str(i)], ['FluxN', num2str(i)]);
    end

    if isSp3
    for i=1:gnb
        init.set(['FluxN2', num2str(i)], ['FluxN2', num2str(i)]);
    end
    end

    for j=1:dnb
        init.set(['ConcN', num2str(j)], ['ConcN', num2str(j)]);
    end

    %% config solver
    model.study.create('std4');
    model.study('std4').create('time', 'Transient');
    model.study('std4').label('Transient study');
    
    model.sol.create('sol4');
    model.sol('sol4').study('std4');
    model.sol('sol4').attach('std4');
%     model.sol('sol4').create('st1', 'StudyStep');
%     model.sol('sol4').create('v1', 'Variables');
%     model.sol('sol4').create('t1', 'Time');
%     model.sol('sol4').feature('t1').create('fc1', 'FullyCoupled');
%     model.sol('sol4').feature('t1').create('d1', 'Direct');
%     model.sol('sol4').feature('t1').create('i1', 'Iterative');
%     model.sol('sol4').feature('t1').feature.remove('fcDef');


    model.study('std4').feature('time').set('initstudyhide', 'on');
    model.study('std4').feature('time').set('initsolhide', 'on');
    model.study('std4').feature('time').set('solnumhide', 'on');
    model.study('std4').feature('time').set('notstudyhide', 'on');
    model.study('std4').feature('time').set('notsolhide', 'on');
    model.study('std4').feature('time').set('notsolnumhide', 'on');
    model.study('std4').feature('time').set('probefreq', 'tout');
    model.study('std4').feature('time').set('initstudy', 'std6');
    model.study('std4').feature('time').set('initmethod', 'sol');
    model.study('std4').feature('time').set('plot', 'on');
    model.study('std4').feature('time').set('useinitsol', 'on');
    model.study('std4').feature('time').set('tlist', ...
        ['range(0,' num2str(dt), ',', num2str(tf), ')']);
    model.study('std4').feature('time').set('solnum', 'auto');


    model.sol('sol4').feature('v1').set('notsolnum', 'auto');
    model.sol('sol4').feature('v1').set('notsolmethod', 'sol');
    model.sol('sol4').feature('v1').set('initsol', 'sol15');
    model.sol('sol4').feature('v1').set('notsol', 'sol15');
    model.sol('sol4').feature('v1').set('initmethod', 'sol');
    model.sol('sol4').feature('v1').set('solnum', 'auto');
 
    model.sol('sol4').feature('t1').set('estrat', 'exclude');
    model.sol('sol4').feature('t1').set('stabcntrl', true);
    model.sol('sol4').feature('t1').set('tout', 'tsteps');
    model.sol('sol4').feature('t1').set('keeplog', true);
    model.sol('sol4').feature('t1').set('tlist', ...
        ['range(0,', num2str(dt), ',', num2str(tf), ')']);
    model.sol('sol4').feature('t1').set('bwinitstepfrac', '0.1');
    model.sol('sol4').feature('t1').set('maxorder', '1');
    %model.sol('sol4').feature('t1').set('maxstepbdf', '0.1');
    model.sol('sol4').feature('t1').set('probefreq', 'tout');
    model.sol('sol4').feature('t1').set('maxstepbdfactive', true);
    model.sol('sol4').feature('t1').set('atolglobal', '2');
    model.sol('sol4').feature('t1').set('eventtol', '2');
    model.sol('sol4').feature('t1').set('initialstepbdfactive', true);
    model.sol('sol4').feature('t1').set('tstepsbdf', 'strict');
    model.sol('sol4').feature('t1').set('plot', 'on');
    model.sol('sol4').feature('t1').feature('fc1').set('damp', '0.9');
    model.sol('sol4').feature('t1').feature('fc1').set('linsolver', 'd1');
    model.sol('sol4').feature('t1').feature('fc1').set('ntermconst', 'itertol');
    model.sol('sol4').feature('t1').feature('fc1').set('jtech', 'onevery');
    model.sol('sol4').feature('t1').feature('i1').set('maxlinit', '100');
    model.sol('sol4').feature('t1').feature('i1').feature('ilDef').set('relax', '0.8');
    model.sol('sol4').feature('t1').feature('i1').feature('ilDef').set('hybridization', 'multi');
    model.sol('sol4').feature('t1').feature('i1').feature('ilDef').set('hybridvar', {'mod1_FluxN7' 'mod1_FluxN8' 'mod1_FluxN5' 'mod1_FluxN6' 'mod1_FluxN3' 'mod1_FluxN4' 'mod1_FluxN1' 'mod1_FluxN2'});
    % save the timesteps that is specified in the list
    model.sol('sol4').feature('t1').set('tout', 'tlist');
    model.sol('sol4').feature('t1').set('reacf', 'off');
end