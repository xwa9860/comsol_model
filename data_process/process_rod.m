function model = process_rod(model, data_path, data_units, comsol_var_name, heights)
    %{ 
    This function get the neutronics data from serpent output file for
    control rod channels
    and input them in the comsol model 
    %}

 
    file_name = [data_path, 'case_1.m'];
    run(file_name);
    res = containers.Map; 
    dnb = 6;
    gnb = 8;


    %define step function for reactivity insertion
    model.func.create('step_rod', 'Step');
    model.func('step_rod').label('step_rod');
    model.func('step_rod').set('funcname', 'step_rod');
    model.func('step_rod').set('to', '1');
    model.func('step_rod').set('smooth', '0');
    model.func('step_rod').set('from', '1');
    model.func('step_rod').set('location', '0');
    
 
    res = containers.Map; 
    seg = 4;
    isCR = true;
        beta_arr = read_1d_array(ADJ_MEULEKAMP_BETA_EFF, 1, 1+dnb, isCR, heights);
    res('beta') = beta_arr(1);
    res('betas') = beta_arr(2:end);
    if size(res('betas')) ~= [1 6]
        error('betas have a wrong size');
    end
    lambda_arr = read_1d_array(FWD_ANA_LAMBDA, 1, 1+dnb, isCR, heights);
    res('lambdas') = lambda_arr(2:end);
    if size(res('lambdas')) ~= [1 6]
        error('lambdas have a wrong size');
    end
    res('diff1') = read_1d_array(INF_DIFFCOEF, seg, gnb, isCR, heights);
    res('kappa') = read_1d_array(INF_KAPPA, seg, gnb, isCR, heights);
    res('invV') = read_1d_array(INF_INVV, seg, gnb, isCR, heights);
    res('chip') = read_1d_array(INF_CHIP, seg, gnb, isCR, heights);
    res('chid') = read_1d_array(INF_CHID, seg, gnb, isCR, heights);
    res('chit') = read_1d_array(INF_CHIT, seg, gnb, isCR, heights);% (1-res('beta'))*res('chip') + res('beta')*res('chid');
    res('fiss') = read_1d_array(INF_FISS, seg, gnb, isCR, heights); 
    res('nsf') = read_1d_array(INF_NSF, seg, gnb, isCR, heights);
    res('scat') = read_2d_array(INF_S0, seg, gnb, isCR, heights);   
    if size(size(res('scat'))) ~= 2
       error('scattering matrix size is wrong');
    end
    res('rem')= read_1d_array(INF_REMXS, seg, gnb, isCR, heights);
    res('nsf') = read_1d_array(INF_NSF, seg, gnb, isCR, heights);
    res('tot') = read_1d_array(INF_TOT, seg, gnb, isCR, heights);
    % res('diff2') = 9/35.0./res('tot'); 
 
            
    for k = keys(res)        
        name = k{1};
        set_data(model, comsol_var_name,  name, 'NA', res(name), data_units(name), 'cr');
    end

    end


