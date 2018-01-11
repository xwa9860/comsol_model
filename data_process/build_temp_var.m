function temp_var_pb = build_temp_var()
        % name of the comsol variables for fuel and flibe temperature,
        % named as log(T_fuel_1[1/K]), log(T_fuel_2[1/K]), ..., and T_flibe   
        
        % var_nb: variable numbers, including temperature variables but not
        % interception term, e.g. var_nb = burnup_nb * 3 + 1 for flibe temprature
        
        global fuel_comp;
        global reactor;
        switch reactor
            case 'Mk1'
                switch fuel_comp
                    case 'fresh'
                        var_nb = 4; % 1(flibe)+3(fuel)
                    case 'eq'
                        var_nb = 25; % 1(flibe)+3*8 burnup number(fuel)
                end

                temp_var_pb = strings(var_nb, 1);  
                for i = 1:(var_nb-1)
                 temp_var_pb(i) = strcat("log(T_fuel_", num2str(i), "[1/K])");
                end
                temp_var_pb(var_nb) = "T_flibe";
            case 'TMSR'
                if isMultiScale
                    temp_var_pb = [];
                    for pnb = 1:3
                        for tnb = 1:3
                                temp_var_pb = [temp_var_pb sprintf("log(Tp%d%d[1/K])", pnb, tnb)];
                        end
                    end
                else
                     temp_var_pb = ["log(T_fuel[1/K])"];
                end 
        end
        fprintf('size of temp_var_pb');
        size(temp_var_pb)
    end