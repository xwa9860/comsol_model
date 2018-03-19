function temp_var_xs = build_temp_var()
%{
 name of the comsol variables for fuel and flibe temperature,
 temp_var_xs: temperature related variable names used in fuel region cross section formulation
 % named as log(T_fuel_1[1/K]), log(T_fuel_2[1/K]), ..., and T_flibe

               
%}        
    global fuel_comp;
    global reactor;
    global isMultiScale;

    switch reactor
        %% Mk1
        case 'Mk1'
            switch fuel_comp
                case 'fresh'
                    fuel_layer_nb = 3;
                    bu_nb = 1;                    
                case 'eq'
                    fuel_layer_nb = 3;
                    bu_nb = 8;
            end
            var_nb = fuel_layer_nb * bu_nb + 1; % 3*8 burnup number(fuel)+1(flibe)
            % var_nb: variable numbers, including temperature variables but not
            % interception term, e.g. var_nb = burnup_nb * 3 + 1 for flibe temprature
            temp_var_xs = strings(var_nb, 1);  
            temp_var_ht = strings(var_nb + 1, 1);
            k = 1;
            
            for i = 1:fuel_layer_nb
                for j = 1:bu_nb
                    temp_var_xs(k) = strcat("log(Tp2", num2str(i), num2str(j), "[1/K])");
                    
                    k = k + 1;
                end
            end
            temp_var_xs(var_nb) = "T_flibe";
        %% TMSR    
        case 'TMSR'
            if isMultiScale
                temp_var_xs = [];
                for pnb = 1:3
                    for tnb = 1:3
                            temp_var_xs = [temp_var_xs sprintf("log(Tp%d%d[1/K])", pnb, tnb)];
                    end
                end
            else
                 temp_var_xs = ["log(T_fuel[1/K])"];
            end 
    end

end