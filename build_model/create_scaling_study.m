% create new variable FluxN to get normalized fluxes
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
model.variable('var20').label('FluxN');

model.variable('var22').set('sumN', ...
    'nsf1*FluxN1+nsf2*FluxN2+nsf3*FluxN3+nsf4*FluxN4+nsf5*FluxN5+nsf6*FluxN6+nsf7*FluxN7+nsf8*FluxN8', 'sum of nuSigmafPhi_g, for delayed neutrons equations');

model.variable.create('var23');
model.variable('var23').model('mod1');
%model.variable('var23').selection.geom('geom1', 2);
%model.variable('var23').selection.set([1 2 3]);
model.variable('var23').label('ConcN');
model.variable('var23').set('ConcN1', 'betas1*sumN/lambdas1');
model.variable('var23').set('ConcN2', 'betas2*sumN/lambdas2');
model.variable('var23').set('ConcN3', 'betas3*sumN/lambdas3');
model.variable('var23').set('ConcN4', 'betas4*sumN/lambdas4');
model.variable('var23').set('ConcN5', 'betas5*sumN/lambdas5');
model.variable('var23').set('ConcN6', 'betas6*sumN/lambdas6');


% set up a stationary study to calculate the value of FluxN's
model.study.create('std6');
model.study('std6').create('stat', 'Stationary');

model.study('std6').feature('stat').set('initstudyhide', 'on');
model.study('std6').feature('stat').set('initsolhide', 'on');
model.study('std6').feature('stat').set('solnumhide', 'on');
model.study('std6').feature('stat').set('notstudyhide', 'on');
model.study('std6').feature('stat').set('notsolhide', 'on');
model.study('std6').feature('stat').set('notsolnumhide', 'on');

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


if MultiScale
    model.study('std6').feature('stat').set('activate', {'ht' 'off' 'neutrondiffusion' 'off' 'htpb' 'off'});    
else
    model.study('std6').feature('stat').set('activate', {'ht' 'off' 'ht3' 'off' 'neutrondiffusion' 'off'});
end


model.study('std6').feature('stat').set('usesol', 'on');
model.study('std6').feature('stat').set('notstudy', 'std2');


model.sol('sol15').attach('std6');
model.sol('sol15').feature('v1').set('notsolmethod', 'sol');
model.sol('sol15').feature('v1').set('notsol', 'sol16');
model.sol('sol15').feature('v1').set('notsolnum', 'auto');
model.sol('sol15').feature('v1').feature('mod1_Flux7').set('solvefor', false);
model.sol('sol15').feature('v1').feature('mod1_Flux8').set('solvefor', false);
model.sol('sol15').feature('v1').feature('mod1_Flux5').set('solvefor', false);
if MultiScale
%     model.sol('sol15').feature('v1').feature('mod1_Tp1').set('solvefor', false);
%     model.sol('sol15').feature('v1').feature('mod1_Tp2').set('solvefor', false);
%     model.sol('sol15').feature('v1').feature('mod1_Tpn').set('solvefor', false);
else
    model.sol('sol15').feature('v1').feature('mod1_T_fuel').set('solvefor', false);
end
model.sol('sol15').feature('v1').feature('mod1_Flux6').set('solvefor', false);
model.sol('sol15').feature('v1').feature('mod1_T_flibe').set('solvefor', false);
model.sol('sol15').feature('v1').feature('mod1_Flux3').set('solvefor', false);
model.sol('sol15').feature('v1').feature('mod1_Flux4').set('solvefor', false);
model.sol('sol15').feature('v1').feature('mod1_Flux1').set('solvefor', false);
model.sol('sol15').feature('v1').feature('mod1_Flux2').set('solvefor', false);
