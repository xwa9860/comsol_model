function res = read_fixed(file_names, univ, isCR, pos_var_name)
%{
read all the fixed(temperature independent) cross sections, no matter if
it's in the fuel region or graphite components

 file_names: a cell array contains the file names of the serpent res files
             that contains the data
 univ: universe number (= row number to read in the corresponding
       variable)
 isCR: whether the component is a control rod
 pos_var_name: control rod position variable name in comsol

 return: 
    a container.Map variable that contains all the fixed cross-sections
%}

global dnb gnb

%% load the data from serpent res files to the workspace
for k = 1:numel(file_names)
    run(file_names{k});
end

%% read the data into a container.Map variable
res = containers.Map; 
beta_arr = read_1d_array(ADJ_MEULEKAMP_BETA_EFF, 1, 1+dnb, isCR, pos_var_name);
res('beta') = beta_arr(1);
res('betas') = beta_arr(2:end);
if size(res('betas')) ~= [1 dnb]
    error('betas have a wrong size');
end
lambda_arr = read_1d_array(FWD_ANA_LAMBDA, 1, 1+dnb, isCR, pos_var_name);
res('lambdas') = lambda_arr(2:end);
if size(res('lambdas')) ~= [1 dnb]
    error('lambdas have a wrong size');
end
res('diff1') = read_1d_array(INF_DIFFCOEF, univ, gnb, isCR, pos_var_name);
res('kappa') = read_1d_array(INF_KAPPA, univ, gnb, isCR, pos_var_name);
res('invV') = read_1d_array(INF_INVV, univ, gnb, isCR, pos_var_name);
res('chip') = read_1d_array(INF_CHIP, univ, gnb, isCR, pos_var_name);
res('chid') = read_1d_array(INF_CHID, univ, gnb, isCR, pos_var_name);
res('chit') =  read_1d_array(INF_CHIT, univ, gnb, isCR, pos_var_name);%(1-res('beta'))*res('chip') + res('beta')*res('chid');
res('fiss') = read_1d_array(INF_FISS, univ, gnb, isCR, pos_var_name); 
res('nsf') = read_1d_array(INF_NSF, univ, gnb, isCR, pos_var_name);



