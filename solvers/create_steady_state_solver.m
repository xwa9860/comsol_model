function model = create_steady_state_solver(model)
global reactor fuel_comp;

model.study.create('std5');
model.study('std5').create('stat', 'Stationary');
model.study('std5').label('Steady state study');

% only solver for non-neutronics modules
% if isTMSR
%     model.study('std5').feature('stat').set('activate', {'ht_fuel' 'on'  'ht_flibe' 'on' 'neutrondiffusion' 'off'}); 
% else
%     model.study('std5').feature('stat').set('activate', {'br' 'on' 'ht_fuel' 'on' 'ht_flibe' 'on' 'neutrondiffusion' 'off'});
% end

switch reactor
    case 'TMSR'
        model.study('std5').feature('stat').set('activate', {'ht_fuel' 'on' 'neutrondiffusion' 'off' 'ht_flibe' 'on'}); 
    case 'Mk1'
        switch fuel_comp
            case 'eq'
                model.study('std5').feature('stat').set('activate',{'br' 'on' 'ht_fuel1' 'on' 'ht_fuel2' 'on' 'ht_fuel3' 'on' 'ht_fuel4' 'on' ...
                    'ht_fuel5' 'on' 'ht_fuel6' 'on' 'ht_fuel7' 'on' 'ht_fuel8' 'on' ...
                    'ht_flibe' 'on' 'neutrondiffusion' 'off'});
            case 'fresh'
                model.study('std5').feature('stat').set('activate',{'br' 'on' 'ht_fuel1' 'on' 'ht_flibe' 'on' 'neutrondiffusion' 'off'});
        end
end
    
    
    
model.study('std5').feature('stat').set('initstudyhide', 'on');
model.study('std5').feature('stat').set('initsolhide', 'on');
model.study('std5').feature('stat').set('solnumhide', 'on');
model.study('std5').feature('stat').set('notstudyhide', 'on');
model.study('std5').feature('stat').set('notsolhide', 'on');
model.study('std5').feature('stat').set('notsolnumhide', 'on');

model.sol.create('sol13');
model.sol('sol13').study('std5');
model.sol('sol13').attach('std5');
model.sol('sol13').create('st1', 'StudyStep');
model.sol('sol13').create('v1', 'Variables');
model.sol('sol13').create('s1', 'Stationary');
model.sol('sol13').feature('s1').create('fc1', 'FullyCoupled');
model.sol('sol13').feature('s1').create('d1', 'Direct');
model.sol('sol13').feature('s1').feature.remove('fcDef');

% take initial value from the previous eigenvalue solution for not solved
% variables
model.sol('sol13').feature('v1').set('notsolnum', 'auto');
model.sol('sol13').feature('v1').set('notsolmethod', 'sol');
model.sol('sol13').feature('v1').set('notsol', 'sol16');
model.sol('sol13').feature('v1').set('control', 'user');
% 
model.sol('sol13').feature('v1').feature('mod1_Flux7').set('solvefor', false);
model.sol('sol13').feature('v1').feature('mod1_Flux8').set('solvefor', false);
model.sol('sol13').feature('v1').feature('mod1_Flux5').set('solvefor', false);
model.sol('sol13').feature('v1').feature('mod1_Flux6').set('solvefor', false);
model.sol('sol13').feature('v1').feature('mod1_Flux3').set('solvefor', false);
model.sol('sol13').feature('v1').feature('mod1_Flux4').set('solvefor', false);
model.sol('sol13').feature('v1').feature('mod1_Flux1').set('solvefor', false);
model.sol('sol13').feature('v1').feature('mod1_Flux2').set('solvefor', false);

model.sol('sol13').feature('s1').feature('fc1').set('initstep', '0.01');
model.sol('sol13').feature('s1').feature('fc1').set('maxiter', '500');
model.sol('sol13').feature('s1').feature('fc1').set('minstep', '1.0E-6');

end