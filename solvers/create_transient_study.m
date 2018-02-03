function model = create_transient_study(model, transient_type)

    %% set neutron diffusion equations to transient mode
    %set to non-eigenvalue mode = adding the time derivative term in the PDE
    model.param.set('eigenMode', '1', 'binary value for NON eigenvalue mode(value = 1 if not engenvalue mode, value =0 if engenvalue mode)');
    %enable the lambda variable and define lambda for RI transient
    model.variable('var19').active(true);

    %% set parameters for different transient types 
    %% define transient study parameters
    tf = 100; %second, finishing time of the transient
    dt = 0.1; %second, time step to record the results(not the timestep that the solver takes)

    switch transient_type
     case 'ext_RI_step'
        % define reactivity insertion value
        rho_ext = 0.00650;% reactivity insertion value 

        model.param.set('reactivity_insertion', num2str(rho_ext), 'external reactivity insertion');

        % define step function for reactivity insertion
        model.func.create('step1', 'Step');
        model.func('step1').label('step_fun');
        model.func('step1').set('funcname', 'step_fun');
        model.func('step1').set('to', 'reactivity_insertion+1');
        model.func('step1').set('smooth', '0');
        model.func('step1').set('from', '1');
        model.func('step1').set('location', '10');
        
        model.variable('var19').set('lambda', 'step_fun(t/1[s])*lambda_critical');
        

     case 'ext_RI_ramp'
            rho_ext = 0.00650;% reactivity insertion value 

            model.param.set('reactivity_insertion', num2str(rho_ext), 'external reactivity insertion');

            duration = 30; %seconds
            model.func.create('rm1', 'Ramp');
            model.func('rm1').label('rm1');
            model.func('rm1').set('location', 10);
            model.func('rm1').set('slope', ['reactivity_insertion/', num2str(duration)]);
            model.func('rm1').set('cutoff', 'reactivity_insertion');
            model.func('rm1').set('cutoffactive', true);
            model.func('rm1').set('smoothzonecutoff', 0);
            model.func('rm1').set('smoothzonecutoffactive', true);
            model.variable('var19').set('lambda', 'lambda_critical*(1+rm1(t/1[s]))');

        
     case 'control_rods_removal'   
        % change control rod positions
        model.param.set('h_CRCC3', 5.7285);
        model.param.set('h_CRCC6', 5.7285);
        
        
     case 'over_cooling'
        % define Overcooling transient parameters
        OCOnset = 10; %s, starting time of overcooling, a very large time might mean the overcooling is not simulated
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

    model.sol.create('sol4');
    model.sol('sol4').study('std4');
    model.sol('sol4').attach('std4');
    
    global isTMSR
    if isTMSR

    model.sol('sol4').create('st1', 'StudyStep');
    model.sol('sol4').create('v1', 'Variables');
    model.sol('sol4').create('t1', 'Time');
    model.sol('sol4').feature('t1').create('ps1', 'PreviousSolution');
    model.sol('sol4').feature('t1').create('fc1', 'FullyCoupled');
    model.sol('sol4').feature('t1').create('d1', 'Direct');
    model.sol('sol4').feature('t1').create('i1', 'Iterative');
    model.sol('sol4').feature('t1').create('i2', 'Iterative');
    model.sol('sol4').feature('t1').feature('i1').create('mg1', 'Multigrid');
    model.sol('sol4').feature('t1').feature('i2').create('mg1', 'Multigrid');
    model.sol('sol4').feature('t1').feature.remove('fcDef');
    model.sol('sol4').feature('v1').set('initmethod', 'sol');
    model.sol('sol4').feature('v1').set('initsol', 'sol15');
    model.sol('sol4').feature('v1').set('solnum', 'auto');
    model.sol('sol4').feature('v1').set('clist', {'range(0,0.1,100)' '0.02[s]'});
    model.sol('sol4').feature('t1').set('tlist', 'range(0,0.1,100)');
    model.sol('sol4').feature('t1').set('maxorder', 2);
    model.sol('sol4').feature('t1').set('estrat', 'exclude');
    model.sol('sol4').feature('t1').set('plot', true);
    model.sol('sol4').feature('t1').set('probefreq', 'tout');
    model.sol('sol4').feature('t1').feature('ps1').set('prevcomp', {'mod1_ht_flibe_dt2Inv_T'});
    model.sol('sol4').feature('t1').feature('ps1').set('linsolver', 'lumped');
    model.sol('sol4').feature('t1').feature('ps1').set('prevcompdamp', 0.35);
    model.sol('sol4').feature('t1').feature('ps1').set('prevcompdampactive', true);
    model.sol('sol4').feature('t1').feature('fc1').set('linsolver', 'd1');
    model.sol('sol4').feature('t1').feature('fc1').set('maxiter', 5);
    model.sol('sol4').feature('t1').feature('fc1').set('damp', 0.9);
    model.sol('sol4').feature('t1').feature('fc1').set('jtech', 'once');
    model.sol('sol4').feature('t1').feature('fc1').set('stabacc', 'aacc');
    model.sol('sol4').feature('t1').feature('fc1').set('aaccdim', 5);
    model.sol('sol4').feature('t1').feature('i1').label('Algebraic Multigrid Solver (ht_flibe)');
    model.sol('sol4').feature('t1').feature('i1').feature('mg1').set('prefun', 'saamg');
    model.sol('sol4').feature('t1').feature('i2').label('Geometric Multigrid Solver (ht_flibe)');
    model.sol('sol4').runAll;
    model = create_transient_results(model);
    end
end