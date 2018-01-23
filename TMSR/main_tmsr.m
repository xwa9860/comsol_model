clear all;
close all;


fprintf('Define paramet used in the matlab model\n')
run('model_attributes.m');

fprintf('Solver sequence\n');
isControlRodRemoval = false;
isLoadScalingFromFile = false;

if isLoadScalingFromFile
    if isControlRodRemoval
        model = mphload([output_path, 'scaling_cr.mph']);
    else
        model = mphload([output_path, 'scaling.mph']);
    end
else
    model = run_ss_sequence(isControlRodRemoval);
end

%% Transient calculation
fprintf('\nRunning transient...\n');
model = create_transient_study(model, 'ext_RI');
%model = create_transient_study(model, 'over_cooling');
%model.sol('sol4').runAll;
%run('create_transient_results')