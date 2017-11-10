function data = read_dep(data_path, univ, tot_case_nb, isCR, pos_var_name)
%{
 data_path: a cell array of file names if isCR,
%            otherwise the folder that contains the files    
% univ: universe number(row number) in serpent res 
% tot_case_nb: number of cases run for fitting temperature dependent XS
%}

    global unb gnb;
   
    %% run serpent result files
    if isCR
        for k = 1:numel(data_path)
            run(data_path{k});
        end
    else
        for c = 1:tot_case_nb 
            file_name = ['case_', num2str(c), '.m'];   
            run([data_path file_name])
        end
    end
    
    %% fill the result matrices with cross-section values
    for case_nb = 1:tot_case_nb     
        res_scat(case_nb, :, :) = read_2d_array(INF_S0, univ, gnb, isCR, pos_var_name);  
        res_rem(case_nb, :)= read_1d_array(INF_REMXS, univ, gnb, isCR, pos_var_name);
        res_nsf(case_nb, :) = read_1d_array(INF_NSF, univ, gnb, isCR, pos_var_name);       
        res_tot(case_nb, :) = read_1d_array(INF_TOT, univ, gnb, isCR, pos_var_name);
        
        %res_diff2(case_nb, :) = 9/35.0 ./read_1d_array(INF_TOT, u, gnb); 

%         if case_nb == 3
%             Ref_Rem_flibe = read_array_XS(INF_REMXS, u, gnb);
%             Ref_Tot_flibe = read_array_XS(INF_TOT, u, gnb);
%             Ref_Scat_flibe = read_inf_s0(INF_S0, u, gnb);
%         end
        univ = univ + unb;
    end

    %% put the data into a containers.Map
    data = containers.Map; 
    data('scat') = res_scat;
    data('rem')= res_rem;
    data('nsf') = res_nsf;
    data('tot') = res_tot;
end

 
