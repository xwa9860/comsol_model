function data = read_dep(data_path, univ, unb, gnb, tot_case_nb)

    % run serpent result files
    for c = 1:tot_case_nb 
        file_name = ['case_', num2str(c), '.m'];   
        run([data_path file_name])
    end
    
    u=univ;
    %res_scat = ones(tot_case_nb, gnb, gnb);
    %res_rem = ones(tot_case_nb, gnb);
    %res_nsf = ones(tot_case_nb, gnb);
    %res_tot = ones(tot_case_nb, gnb);
    for case_nb = 1:tot_case_nb  
        res_scat(case_nb, :, :) = read_2d_array(INF_S0, u, gnb);  
        res_rem(case_nb, :)= read_1d_array(INF_REMXS, u, gnb);
        res_nsf(case_nb, :) = read_1d_array(INF_NSF, u, gnb);       
        res_tot(case_nb, :) = read_1d_array(INF_TOT, u, gnb);
        %res_diff2 = eye(case_nb, gnb);
        %res_diff2(case_nb, :) = 9/35.0 ./read_1d_array(INF_TOT, u, gnb); 

%         if case_nb == 3
%             Ref_Rem_flibe = read_array_XS(INF_REMXS, u, gnb);
%             Ref_Tot_flibe = read_array_XS(INF_TOT, u, gnb);
%             Ref_Scat_flibe = read_inf_s0(INF_S0, u, gnb);
%         end
        u = u+unb;
    end

    data = containers.Map; 
    data('scat') = res_scat;
    data('rem')= res_rem;
    data('nsf') = res_nsf;
    data('tot') = res_tot;
%    data('diff2') = 9/35.0./data('tot');
end

 
