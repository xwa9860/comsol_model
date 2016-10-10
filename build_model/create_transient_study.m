model.param.set('reactivity_insertion', num2str(rho_ext), 'external reactivity insertion');
%set to non-eigenvalue mode
model.param.set('engenMode', '1', 'binary value for NON engenvalue mode(value = 1 if not engenvalue mode, value =0 if engenvalue mode)');

%enable the lambda variable and define lambda for RI transient
model.variable('var19').active(true);
model.variable('var19').model('mod1');
model.variable('var19').set('lambda', 'step_fun(t/1[s])*lambda_critical');
model.variable('var19').label('lambda');

% change 'Flux' to 'FluxN'
model.variable('var18').set('Pdensity', 'kappa1*fiss1*FluxN1+kappa2*fiss2*FluxN2+kappa3*fiss3*FluxN3+kappa4*fiss4*FluxN4+kappa5*fiss5*FluxN5+kappa6*fiss6*FluxN6+kappa7*fiss7*FluxN7+kappa8*fiss8*FluxN8', 'power density');
model.physics('neutrondiffusion').field('dimensionless').field('FluxN');
model.physics('neutrondiffusion').field('dimensionless').component({'FluxN1' 'FluxN2' 'FluxN3' 'FluxN4' 'FluxN5' 'FluxN6' 'FluxN7' 'FluxN8' 'ConcN1' 'ConcN2' 'ConcN3' 'ConcN4' 'ConcN5' 'ConcN6'});
% desable FluxN variable, because FluxN become dependent variable in
% neutron diffusion module, but the previous FluxN values will be used as
% initial values for this transient study
model.variable('var20').active(false);
model.variable('var22').set('sumN', ...
    'nsf1*FluxN1+nsf2*FluxN2+nsf3*FluxN3+nsf4*FluxN4+nsf5*FluxN5+nsf6*FluxN6+nsf7*FluxN7+nsf8*FluxN8', 'sum of nuSigmafPhi_g, for delayed neutrons equations');
model.variable('var22').set('sumDelayedN', 'lambdas1*ConcN1+lambdas2*ConcN2+lambdas3*ConcN3+lambdas4*ConcN4+lambdas5*ConcN5+lambdas6*ConcN6', 'sum of lambda*C_i, for diffusion equation');

% desable ConcN
model.variable('var23').active(false);
%% set initial values for Flux and Conc
init = model.physics('neutrondiffusion').feature('init1');
for i=1:gnb
    init.set(['FluxN', num2str(i)], ['FluxN', num2str(i)]);
end

for j=1:dnb
    init.set(['ConcN', num2str(j)], ['ConcN', num2str(j)]);
end


if MultiScale
    fprintf('multiscale');
else
% change the normalized power to Pdensity
    model.physics('ht3').feature('hs1').set('Q0', 'Pdensity');
end

model.study.create('std4');
model.study('std4').create('time', 'Transient');
model.sol.create('sol4');
model.sol('sol4').study('std4');
model.sol('sol4').attach('std4');
model.sol('sol4').create('st1', 'StudyStep');
model.sol('sol4').create('v1', 'Variables');
model.sol('sol4').create('t1', 'Time');
model.sol('sol4').feature('t1').create('fc1', 'FullyCoupled');
model.sol('sol4').feature('t1').create('d1', 'Direct');
model.sol('sol4').feature('t1').create('i1', 'Iterative');
model.sol('sol4').feature('t1').feature.remove('fcDef');


model.study('std4').feature('time').set('initstudyhide', 'on');
model.study('std4').feature('time').set('initsolhide', 'on');
model.study('std4').feature('time').set('solnumhide', 'on');
model.study('std4').feature('time').set('notstudyhide', 'on');
model.study('std4').feature('time').set('notsolhide', 'on');
model.study('std4').feature('time').set('notsolnumhide', 'on');


model.study('std4').label('Transient study');
model.study('std4').feature('time').set('probefreq', 'tout');
model.study('std4').feature('time').set('initstudy', 'std6');
model.study('std4').feature('time').set('initmethod', 'sol');
model.study('std4').feature('time').set('plot', 'on');


if MultiScale
       model.study('std4').feature('time').set('activate', {'ht' 'on' 'neutrondiffusion' 'on' 'htpb' 'on'});    
else    
       model.study('std4').feature('time').set('activate', {'ht' 'on' 'ht3' 'on' 'neutrondiffusion' 'on'});
end

model.study('std4').feature('time').set('useinitsol', 'on');
model.study('std4').feature('time').set('tlist', ...
    ['range(0,' num2str(dt), ',', num2str(tf), ')']);
model.study('std4').feature('time').set('solnum', 'auto');

model.sol('sol4').attach('std4');
model.sol('sol4').feature('v1').set('notsolnum', 'auto');
model.sol('sol4').feature('v1').set('notsolmethod', 'sol');
model.sol('sol4').feature('v1').set('initsol', 'sol15');
model.sol('sol4').feature('v1').set('notsol', 'sol15');
model.sol('sol4').feature('v1').set('initmethod', 'sol');
model.sol('sol4').feature('v1').set('solnum', 'auto');
model.sol('sol4').feature('v1').feature('mod1_FluxN7').label('mod1.FluxN7');
model.sol('sol4').feature('v1').feature('mod1_FluxN8').label('mod1.FluxN8');
model.sol('sol4').feature('v1').feature('mod1_FluxN5').label('mod1.FluxN5');
model.sol('sol4').feature('v1').feature('mod1_FluxN6').label('mod1.FluxN6');
model.sol('sol4').feature('v1').feature('mod1_FluxN3').label('mod1.FluxN3');
model.sol('sol4').feature('v1').feature('mod1_FluxN4').label('mod1.FluxN4');
model.sol('sol4').feature('v1').feature('mod1_FluxN1').label('mod1.FluxN1');
model.sol('sol4').feature('v1').feature('mod1_FluxN2').label('mod1.FluxN2');

% deleted 'mod1_T_fuel' in the following list, don't know what's the
% consequence
model.sol('sol4').feature('t1').set('atoludotactive', ...
    {'mod1_FluxN7' 'off' 'mod1_FluxN8' 'off' 'mod1_FluxN5' 'off' 'mod1_FluxN6' 'off' 'mod1_FluxN3' 'off'  ...
'mod1_FluxN4' 'off' 'mod1_FluxN1' 'off' 'mod1_FluxN2' 'off' 'mod1_T_flibe' 'off'});
model.sol('sol4').feature('t1').set('atol', {'mod1_FluxN7' '1e-3' 'mod1_FluxN8' '1e-3' 'mod1_FluxN5' '1e-3' 'mod1_FluxN6' '1e-3' 'mod1_FluxN3' '1e-3'  ...
'mod1_FluxN4' '1e-3' 'mod1_FluxN1' '1e-3' 'mod1_FluxN2' '1e-3'  'mod1_T_flibe' '1e-3'}); %'mod1_T_fuel' '1e-3'
model.sol('sol4').feature('t1').set('atoludot', {'mod1_FluxN7' '1e-3' 'mod1_FluxN8' '1e-3' 'mod1_FluxN5' '1e-3' 'mod1_FluxN6' '1e-3' 'mod1_FluxN3' '1e-3'  ...
'mod1_FluxN4' '1e-3' 'mod1_FluxN1' '1e-3' 'mod1_FluxN2' '1e-3' 'mod1_T_flibe' '1e-3'});%  'mod1_T_fuel' '1e-3'

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
% deleted mod1_T_fuel from the list, don't know how this affects the
% simulation
model.sol('sol4').feature('t1').set('atolmethod', {'mod1_FluxN7' 'global' 'mod1_FluxN8' 'global' 'mod1_FluxN5' 'global' 'mod1_FluxN6' 'global' 'mod1_FluxN3' 'global'  ...
'mod1_FluxN4' 'global' 'mod1_FluxN1' 'global' 'mod1_FluxN2' 'global' 'mod1_T_flibe' 'global'}); % 'mod1_T_fuel' 'global'
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
