function res = read_fixed(file_name, univ)
% file_name: serpent result file that contains the data
% univ: universe number (= row number to read in the corresponding
% variable)
dnb = 6;
gnb = 8;
run(file_name);

res = containers.Map; 
beta_arr = read_1d_array(ADJ_MEULEKAMP_BETA_EFF, 1, 1+dnb);
res('beta') = beta_arr(1);
res('betas') = beta_arr(2:end);
if size(res('betas')) ~= [1 6]
    error('betas have a wrong size');
end
lambda_arr = read_1d_array(FWD_ANA_LAMBDA, 1, 1+dnb);
res('lambdas') = lambda_arr(2:end);
if size(res('lambdas')) ~= [1 6]
    error('lambdas have a wrong size');
end
res('diff1') = read_1d_array(INF_DIFFCOEF, univ, gnb);
res('kappa') = read_1d_array(INF_KAPPA, univ, gnb);
res('invV') = read_1d_array(INF_INVV, univ, gnb);
res('chip') = read_1d_array(INF_CHIP, univ, gnb);
res('chid') = read_1d_array(INF_CHID, univ, gnb);
res('chit') =  read_1d_array(INF_CHIT, univ, gnb);%(1-res('beta'))*res('chip') + res('beta')*res('chid');
res('fiss') = read_1d_array(INF_FISS, univ, gnb); 
res('nsf') = read_1d_array(INF_NSF, univ, gnb);



