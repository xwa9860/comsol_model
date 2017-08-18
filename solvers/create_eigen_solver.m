
% 
% model.study('std2').label('Eigenvalue study');
% model.study('std2').feature('eigv').set('neigs', 1);
% model.study('std2').feature('eigv').set('eigunit', '');
% model.study('std2').feature('eigv').set('shift', '1');
% model.study('std2').feature('eigv').set('shiftactive', true);
% model.study('std2').feature('eigv').set('useinitsol', true);
% model.study('std2').feature('eigv').set('neigsactive', false);
% 
% model.study('std2').feature('eigv').set('initstudyhide', 'on');
% model.study('std2').feature('eigv').set('initsolhide', 'on');
% model.study('std2').feature('eigv').set('solnumhide', 'on');
% model.study('std2').feature('eigv').set('notstudyhide', 'on');
% model.study('std2').feature('eigv').set('notsolhide', 'on');
% model.study('std2').feature('eigv').set('notsolnumhide', 'on');
% 
% model.sol.create('sol16');
% model.sol('sol16').study('std2');
% model.sol('sol16').attach('std2');
% 
% 
% model.sol('sol16').create('st1', 'StudyStep');
% model.sol('sol16').create('v1', 'Variables');


%model.sol('sol16').feature('e1').create('i1', 'Iterative');
% model.sol('sol16').feature('e1').set('neigs', 1);
% model.sol('sol16').feature('e1').set('shift', '1');
% model.sol('sol16').feature('e1').set('maxeigit', 100);
% model.sol('sol16').feature('e1').set('krylovdim', 5);
% model.sol('sol16').feature('e1').set('keeplog', true);
%model.sol('sol16').create('e1', 'Eigenvalue');




%model.study('std2').feature('eigv').set('useinitsol', 'on');

% model.sol('sol16').attach('std2');
% model.sol('sol16').feature('e1').set('neigs', '1');
% model.sol('sol16').feature('e1').set('maxeigit', '100');
% model.sol('sol16').feature('e1').set('keeplog', true);
% model.sol('sol16').feature('e1').set('eigwhich', 'sr');
% model.sol('sol16').feature('e1').set('shift', '1');
% model.sol('sol16').feature('e1').set('krylovdim', '5');
% model.sol('sol16').feature('e1').feature('i1').set('maxlinit', '1000');
% model.sol('sol16').feature('e1').feature('i1').feature('ilDef').set('prefun', 'spooles');


model.study.create('std2');
model.study('std2').create('eigv', 'Eigenvalue');

if TMSR
        if MultiScale
        model.study('std2').feature('eigv').set('activate', {'ht' 'off' 'neutrondiffusion' 'on' 'htpb' 'off'}); 
        model.study('std2').feature('eigv').set('activate', {'ht' 'off' 'neutrondiffusion' 'on' 'htpb_2' 'off'});    
        else
        model.study('std2').feature('eigv').set('activate', {'ht' 'off' 'ht3' 'off' 'neutrondiffusion' 'on'});
        end

%             model.study('std2').feature('eigv').set('activate', {'ht' 'off' 'neutrondiffusion' 'on' 'htpb' 'off'});    
%     else
           
else
    model.study('std2').feature('eigv').set('activate', {'br' 'off' 'ht' 'off' 'ht3' 'off' 'neutrondiffusion' 'on'});
end


model.sol.create('sol16');
model.sol('sol16').study('std2');
model.sol('sol16').attach('std2');
model.sol('sol16').create('st1', 'StudyStep');
model.sol('sol16').create('v1', 'Variables');
model.sol('sol16').create('e1', 'Eigenvalue');

model.study('std2').label('Eigenvalue study');
model.study('std2').feature('eigv').set('neigs', 1);
model.study('std2').feature('eigv').set('eigunit', '');
model.study('std2').feature('eigv').set('shift', '1');
model.study('std2').feature('eigv').set('shiftactive', true);
model.study('std2').feature('eigv').set('useinitsol', true);
model.study('std2').feature('eigv').set('neigsactive', false);

model.sol('sol16').attach('std2');
model.sol('sol16').feature('e1').set('neigs', 1);
model.sol('sol16').feature('e1').set('shift', '1');
model.sol('sol16').feature('e1').set('maxeigit', 100);
model.sol('sol16').feature('e1').set('krylovdim', 10);
model.sol('sol16').feature('e1').set('keeplog', true);
