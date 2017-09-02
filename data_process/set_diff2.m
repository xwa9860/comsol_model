function model = set_diff2(model, comsol_var_name)
%{
 set diff2 cross section data to comsol model via matlab livelink for comsol
%}
   for i =1:8
       model.variable(comsol_var_name).set(['diff2', num2str(i)],  ...
        [num2str(9/35.0,'%10.8e'),'*tot', num2str(i), '[1/cm]']); 
            %res_diff2(case_nb, :) = 9/35.0 ./read_1d_array(INF_TOT, u, gnb); 
   end
 