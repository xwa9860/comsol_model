function model = run_steady_state_solver(model, lambda_eigen, saveToFile)
%% steady state calculation
    global output_path;
    
    % set lambda obtained from eigenvalue solver, 
    model.param.set('lambda_critical', lambda_eigen, 'lambda_engeinvalue to get to criticality');
    % activate the lambda variable
    model.variable('var19').active(true);
    model.param.set('eigenMode', '1', 'binary value for NON eigenvalue mode(value = 1 if not eigenvalue mode, value =0 if eigenvalue mode)');
   
%     model.sol('sol13').runAll;
% 
%     mphsave(model, [output_path, saveToFile]);
