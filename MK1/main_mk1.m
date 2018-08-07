%{
The 'main' script that runs the modeling procedures for Mk1
This is the only script that should be called by users of the Mk1 model
%}

clear all;
close all;

fprintf('Define parameters used in matlab\n');
run('model_attributes.m');

fprintf('Build or load intermediate model, then run solver sequence\n');
model = run_ss_sequence("ss");

%% Transient calculation
fprintf('\nRunning transient...\n');
model = create_transient_study(model, transient_type);