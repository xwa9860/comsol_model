function input = build_X(tot_case_nb)
% build the input matrix for fitting the cross sections
global reactor fuel_data_path isMultiScale;
switch reactor
    case 'TMSR'
        if isMultiScale
            input =[ones(tot_case_nb, 1) log(ones(tot_case_nb, 9)*900)];
            row=1;
            col = 2;
            for pnb = 1:3
                for tnb = 1:3
                        input(row, col) = log(600);
                        input(row+1, col)= log(1200);
                        row = row+2;
                        col = col + 1;
                end
            end                                    
        else % not multiscale                        
            fuel_temp = [300; 600; 900; 1200; 1500];
            log_fuel_temp = log(fuel_temp);
            input = [ones(5, 1) log_fuel_temp];
        end  
    case 'Mk1'          
        % load temperature values, which are used in serpent scripts to generate xs matrix, in an input matrix
        
        % The coolant in the fuel regions are also contained in this input matrix
        % because the cross sections are generated per porous media zones
        % that contains both fuel pebbles and coolant
        raw_temps = load([fuel_data_path, 'temp.mat']);   
        raw_flibe_temps = raw_temps.liq;
        
        % The raw temperatures in the temp.mat file were randomly sampled 
        % in python and converted to a matlab .mat file. 
        % It's a 50*burnup number*fuel(pebble and triso) layer numbers matrix
        raw_fuel_temps = raw_temps.sol;
        
        burnup_nb = size(raw_fuel_temps);
        burnup_nb = burnup_nb(2);
        fuel_temps = ones(tot_case_nb, 3*burnup_nb);
        for i = 0:burnup_nb-1
            fuel_temps(:, i*3+1 :i*3+3) = raw_fuel_temps(:, i+1, 1:3);
        end
        
        % adding intercept(column of ones)
        input = [ones(tot_case_nb, 1) log(fuel_temps) raw_flibe_temps'];   
        
end
% fprintf('input matrix x has size:');
% size(input)
end
    