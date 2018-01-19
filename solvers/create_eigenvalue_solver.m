function model = create_eigenvalue_solver(model, isTMSR)
    model.study.create('std2');
    model.study('std2').create('eigv', 'Eigenvalue');

    if isTMSR
        model.study('std2').feature('eigv').set('activate', {'ht_fuel' 'off' 'neutrondiffusion' 'on' 'ht_flibe' 'off'}); 
    else
        model.study('std2').feature('eigv').set('activate', {'br' 'off' 'ht_fuel' 'off' 'ht_flibe' 'off' 'neutrondiffusion' 'on'});
    end


    model.sol.create('sol16');
    model.sol('sol16').study('std2');
    model.sol('sol16').attach('std2');
    model.sol('sol16').create('st1', 'StudyStep');
    model.sol('sol16').create('v1', 'Variables');
    model.sol('sol16').create('e1', 'Eigenvalue');

    model.sol('sol16').attach('std2');
    model.sol('sol16').feature('e1').set('neigs', 1);
    model.sol('sol16').feature('e1').set('shift', '0.8');
    model.sol('sol16').feature('e1').set('maxeigit', 100);
    model.sol('sol16').feature('e1').set('krylovdim', 10);
    model.sol('sol16').feature('e1').set('keeplog', true);