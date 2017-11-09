function model = process_rod(model, comsol_var_name, pos_var_name)
    %{ 
    This function get the neutronics data from serpent output file for
    control rod channels and input them in the comsol model 

        comsol_var_name: the name of the comsol variable that these control rod
        cross-sections are associated to
    %}

    global gnb;
    global rod_data_path;
    global xs_name_unit_map;
    global seg_nb; % number of verticle segments that the control rods are divided into when computing cross-sections
    isCR = true;

    %% run serpent res files to load the data into workspace
    % when all the rods are all the way down in the core
    % and when all the rods are totally out of the core
    file_names = {[rod_data_path, 'all_down_res.m'], [rod_data_path, 'no_rod_res.m']};
    
    res = read_fixed(file_names, seg_nb, isCR, pos_var_name);
    model = set_a_XS_map(model, comsol_var_name, res, isCR); 
    
    res = read_dep(file_names, seg_nb, 1, isCR, pos_var_name);
    model = set_a_XS_map(model, comsol_var_name, res, isCR); 
    %% set the data contained in 'res' to COMSOL
%     for k = keys(res)        
%         name = k{1};
%         model = set_a_fixed_XS(model, comsol_var_name,  name, res(name), isCR);
%     end
    model = set_diff2(model, comsol_var_name); % diff2 variable is set differently from other cross-section data
    
end
    
    %{
    % read the data into 'res'
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
    res('diff1') = read_1d_array(INF_DIFFCOEF, seg, gnb, isCR);
    res('kappa') = read_1d_array(INF_KAPPA, seg, gnb, isCR);
    res('invV') = read_1d_array(INF_INVV, seg, gnb, isCR);
    res('chip') = read_1d_array(INF_CHIP, seg, gnb, isCR);
    res('chid') = read_1d_array(INF_CHID, seg, gnb, isCR);
    res('chit') = read_1d_array(INF_CHIT, seg, gnb, isCR);% can also be computed as: (1-res('beta'))*res('chip') + res('beta')*res('chid');
    res('fiss') = read_1d_array(INF_FISS, seg, gnb, isCR); 
    res('nsf') = read_1d_array(INF_NSF, seg, gnb, isCR);
    %}
    
    %{
    res('scat') = read_2d_array(INF_S0, seg_nb, gnb, isCR);   
    if size(size(res('scat'))) ~= 2
       error('scattering matrix size is wrong');
    end
    res('rem')= read_1d_array(INF_REMXS, seg_nb, gnb, isCR);
    res('nsf') = read_1d_array(INF_NSF, seg_nb, gnb, isCR);
    res('tot') = read_1d_array(INF_TOT, seg_nb, gnb, isCR);
 %}
    
    


