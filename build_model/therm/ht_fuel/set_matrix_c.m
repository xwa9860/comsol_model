function cfeq = set_matrix_c(cfeq, dep_var_nb)
global dimNb
% %% set matrix c
k=0;
      
for i=1:dep_var_nb
    for j=1:dep_var_nb
        if dimNb == 3
            cfeq.setIndex('c',{num2str(0), num2str(0), num2str(0)},k);
        elseif dimNb == 2
            cfeq.setIndex('c',{num2str(0), num2str(0)},k);
        end
        k=k+1;
    end
end
end  