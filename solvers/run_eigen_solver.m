function [model, lambda_eigen]= run_eigen_solver(model, saveToFile, isInitialRun)
    tic
    global dimNb;
    % set to eigenvalue mode
    model.param.set('eigenMode', '0', 'binary value for NON engenvalue mode(value = 1 if not eigenvalue mode, value =0 if eigenvalue mode)');
    % desable lambda
    model.variable('var19').active(false);
    
    if isInitialRun
        % taking initial values from initial values
        model.study('std2').label('Eigenvalue study');
        model.study('std2').feature('eigv').set('neigs', 1);
        % model.study('std2').feature('eigv').set('eigunit', '');
        model.study('std2').feature('eigv').set('shift', '1');
        model.study('std2').feature('eigv').set('shiftactive', true);
        model.study('std2').feature('eigv').set('useinitsol', true);
        model.study('std2').feature('eigv').set('neigsactive', false);
    else
        % set the solver to take initial value from the previous steady state
        % results
        model.study('std2').feature('eigv').set('notsolnum', 'auto');
        model.study('std2').feature('eigv').set('notsolmethod', 'sol');
        model.study('std2').feature('eigv').set('usesol', 'on');
        model.study('std2').feature('eigv').set('eigwhich', 'sr');
        model.study('std2').feature('eigv').set('notstudy', 'std5');
        model.study('std2').feature('eigv').set('shift', '1');
        model.study('std2').feature('eigv').set('useinitsol', 'on');        
    end

    %% run solver
    fprintf('Running eigenvalue study\n');
    model.sol('sol16').runAll;

    %% display eigenvalue

    lambda_eigen = mphglobal(model, 'lambda');
    fprintf('\nThe eigenvalue is\n');
    fprintf('%.10f \n', lambda_eigen);

    %% post_processing
    global output_path
    if dimNb == 3
        model = create_3d_eigen_results(model, output_path);
    end
    mphsave(model, [output_path, saveToFile]); % save intermediate solutions
    toc
    
