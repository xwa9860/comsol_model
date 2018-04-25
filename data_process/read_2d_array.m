function XS_mat = read_2d_array(serpent_data_name, row_nb, gnb, isCR, pos_var_name)
%{
 read 2D XS data
 e.g. scattering, matrix[n*n] from a n x (gnb**2) size serpent output matrix INF_S0

 row_nb: row_nb in the INF_S0 matrix loaded from the serpent res files
 return: 
    for control rods: gnb*gnb cell array of chararrays
    for non_control rods: gnb*gnb array of doubles

%}
    if nargin == 3
            isCR = false;
            heights = [];
    end
    
    for i = 0:gnb-1 
        for j=1:gnb 
            k=i*gnb*2 + j*2-1; % the solumn number in serpent output matrix
            if isCR
                % get global variables about the rods, defined in
                % model_attributes.m file
                global seg_heights seg_nb;
                
                % from top to bottom
                % rod segment 1
                %xsg = sprintf('(%10.8e*str(%f-z[1/m])*str(z[1/m]-%f)*(str(z[1/m]-%s)+%10.8e*str(%s-z[1/m])', serpent_data_name(1, k) ,  seg_heights(1), seg_heights(2));
                 %{ 
                    seg_heights = [572.85, 430.85, 272, 112.5, 41.6]*0.01;
                    
                    - seg_heights1
                    |
                    - seg_heights2
                    |
                    - seg_heights3
                    |
                    - seg_heights4
                    |
                    - seg_heights5
                    
                    
                    %}
                xsg = '(0';
                for seg = 1:4
                   
                    
                    isInSeg = sprintf('str(%f-z[1/m])*str(z[1/m]-%f)', ...
                                seg_heights(seg), seg_heights(seg+1));
                    
                    xsg = sprintf('%s + %10.8e*%s*str(z[1/m]-%s) + %10.8e*%s*str(%s-z[1/m])', ...
                        xsg, serpent_data_name(seg, k), isInSeg, pos_var_name, serpent_data_name(seg+seg_nb, k), isInSeg, pos_var_name);
                    
                    % 'str(%f-z[1/m])*str(z[1/m]-%f)*(str(z[1/m]-%s)*%10.8e' meaning:
                    %   if seg_heights(seg)<z<seg_heights(seg+1), then the
                    %   cross section value above pos_var_name is
                    %   serpent_data_name(seg, k)=XS when rod is inserted
                    
                    % ' %10.8e*str(%s-z[1/m])' meaning:
                    % otherwise cross section value is when the rod is not
                    % inserted
                end
                xsg = sprintf('%s)', xsg); % adding parathesis around the XS, so a unit can be added to the end
                % rod segment 4
                %seg=4;
                %xsg = sprintf('%s + %10.8e*str(%f-z[1/m])*str(z[1/m]-%f))', xsg, serpent_data_name(seg, k), seg_heights(seg), seg_heights(seg+1));
                XS_mat(j, i+1)= {xsg};
            else
                XS_mat(j, i+1) = serpent_data_name(row_nb, k); 
            end
        end
    end
end