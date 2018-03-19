function cfeq = set_matrix_a(cfeq, triso_layer_nb, k_triso, k_pb, k_gr)

global reactor;
global pb_region;
global pb_non_fuel_region;
pb_fuel_region = pb_region - pb_non_fuel_region;
%% set matrix a
k=0;
skip_k = pb_fuel_region*triso_layer_nb + pb_non_fuel_region+1;
switch reactor

    case 'Mk1'
        % for graphite core
        skip_kk = (pb_region+triso_layer_nb-1)*3;         
        skip_kkkk = 2*(triso_layer_nb + pb_region-1);
        
        % for last layer in triso
        skip_kkk = triso_layer_nb + pb_region - skip_k;
        skip_kkkk_1 = triso_layer_nb + pb_region -2 + skip_k; %region_coated-region_fuel_kernel-pb_region;
        skip_mm = 3*(triso_layer_nb+pb_region+1) + skip_k; %3*(pb_fuel_region*triso_layer_nb + pb_region + 1);
    case 'TMSR'
        %skip_k = pb_fuel_region*triso_layer_nb + 2;
         
        skip_kkk = 3*(3*triso_layer_nb+1);
        skip_kkkk = 2*(3*triso_layer_nb+1);
        skip_kkkk_1 = 2*(3*triso_layer_nb+1);
        skip_mm = 5*(pb_fuel_region*triso_layer_nb+pb_non_fuel_region) + 1;
end

for n=1:pb_region-1
    switch reactor
        case 'Mk1'            
            if n==1 % graphit core
                Qflux = [num2str(k_gr),'*4*pi*r',num2str(n+1),...
                    '*r',num2str(n),'/(r',num2str(n+1),'-r',num2str(n),')'];
                
                % for Tp1
                cfeq.setIndex('a', Qflux, k);
                k=k+skip_k;

                %For Tp24
                
                kk=k+skip_kk-1;
                cfeq.setIndex('a', ['-', Qflux], kk);                 
            elseif n <= pb_region-1 % fuel layer              
                [k, cfeq] = set_a_fuel_layer(cfeq, k, ...
                    skip_k, skip_kkk, skip_kkkk, skip_kkkk_1, skip_mm,...
                    n, triso_layer_nb, pb_region, ...
                    k_triso, k_pb, k_gr);         
            end

         case 'TMSR'
            [k, cfeq] = set_a_fuel_layer(cfeq, k, ...
                skip_k, skip_kkk, skip_kkkk, skip_kkkk_1, skip_mm, ...
                n, triso_layer_nb, pb_region, ...
                k_triso, k_pb, k_gr);
    end
    
end  

%% graphite shell layer in the pebble
n = pb_region;
switch reactor
    case 'Mk1'
        %k = k + skip_k;
        m = k-skip_k+1; % Ok
    case 'TMSR'
        m = k-(3*triso_layer_nb+1);
end
cfeq = set_a_shell_layer(cfeq, n, k, m, k_gr);

end

function [k, cfeq] = set_a_fuel_layer(cfeq, k, ...
    skip_k, skip_kkk, skip_kkkk, skip_kkkk_1, skip_mm, ...
    n, triso_layer_nb, pb_region, k_triso, k_pb, k_gr)
    for i = 1:triso_layer_nb
        for j = 1:triso_layer_nb
            if i == j && j == 1 
                %Tpi1: the inner most layer in a triso, only transfers heat
                %with the next triso layer
                Qflux = ['4*pi*', num2str(k_triso(i)),...
                    '*R',num2str(i+1), '*R',num2str(i), ...
                    '/(R',num2str(i+1),'-R',num2str(i),')'];
                cfeq.setIndex('a', Qflux, k);
                k = k + skip_k;
                %
                cfeq.setIndex('a', ['-', Qflux], k-1);

            elseif i==j && j<triso_layer_nb 
                %Tpn2-Tpn3: triso layers between the center one and the
                %last one, transfers heat to the two adjecent triso layers
                Qflux_out = ['4*pi*', num2str(k_triso(i+1)), ...
                    '*R',num2str(i+1), '*R',num2str(i), ...
                    '/(R',num2str(i+1), '-R', num2str(i),')'];
                
                Qflux_in = ['4*pi*',num2str(k_triso(i)), ...
                    '*R',num2str(i-1),'*R',num2str(i),...
                    '/(R',num2str(i),'-R',num2str(i-1),')'];
                
                cfeq.setIndex('a', [Qflux_out, '+', Qflux_in], k);
                k = k + skip_k;
                % ++
                kk=k-1;
                cfeq.setIndex('a', ['-', Qflux_out], kk);
                % --
                kkkk=k-skip_kkkk-1;
                cfeq.setIndex('a', ['-', Qflux_in], kkkk);

            elseif i==j && j==triso_layer_nb 
                %Tp n4:the coating and matrix layer in a triso
                if n == pb_region - 1
                    k_outer = k_gr;
                else
                    k_outer = k_pb;
                end 
                Qflux_out_pb = ['4*pi*', num2str(k_outer), ...
                    '*r',num2str(n),...
                    '*r',num2str(n+1),...
                    '/(r',num2str(n+1),'-r',num2str(n),')/triso_nb'];
                
                Qflux_in_pb = ['4*pi*', num2str(k_pb), ...
                        '*r',num2str(n),'*r',num2str(n-1), ...
                        '/(r',num2str(n),'-r',num2str(n-1),')/triso_nb'];
                    
                Qflux_in_triso = ['4*pi*',num2str(k_triso(i)),'*'...
                    'R',num2str(i-1),'*R',num2str(i),'/(R',num2str(i),'-R',num2str(i-1),')'];

                if n==1 
                    %in pebble layer 1(Tp14)
                    %can only transfer to the outer pebble layer or the inner triso layer             
                    cfeq.setIndex('a', [Qflux_out_pb, '+', Qflux_in_triso], k);
                    k=k+skip_k;
                    %++
                    %kk=k-1;
                    %cfeq.setIndex('a',num2str(0),kk);

                    kkk=k+skip_kkk-1;
                    cfeq.setIndex('a', ['-', Qflux_out_pb], kkk);

                    %--
                    kkkk=k-skip_kkkk-1;
                    cfeq.setIndex('a', ['-', Qflux_in_triso], kkkk);

                else % if n>1, the coating and matrix layer in a triso that is in pebble layer 2:end
                    cfeq.setIndex('a', [Qflux_in_pb, '+', Qflux_out_pb, '+', Qflux_in_triso], k);
                    k=k+skip_k;
                    
                    if n < pb_region - 1
                        kk=k+skip_kkk-1;                       
                    else
                        kk=k-1; 
                    end
                    
                    cfeq.setIndex('a', ['-', Qflux_out_pb], kk);

                     %--term for triso layer Tp_n3
                    kkkk=k-skip_kkkk_1-1;
                    cfeq.setIndex('a', ['-', Qflux_in_triso], kkkk);

                    %--term for Tp(n-1)
                    mm=k-skip_mm; 
                    cfeq.setIndex('a', ['-', Qflux_in_pb], mm);
                end
            else
                cfeq.setIndex('a',num2str(0),k);                    
            end
        end
    end
end

function cfeq = set_a_shell_layer(cfeq, n, k, m, k_gr)
    % n is pebble layer number
    % k is index for the first term
    % m is index for the second term

    Qflux_cond = ['4*pi*', num2str(k_gr), ...
    '*r',num2str(n),'*r',num2str(n-1),...
    '/(r',num2str(n),'-r',num2str(n-1),')'];

    % for shell layer Tpn   
    cfeq.setIndex('a', [Qflux_cond, '+ h_conv*pb_area/pb_nb'], k);

    % for matrix layer next to the shell layer Tp(n-1, 4)
    cfeq.setIndex('a', ['-', Qflux_cond], m);
end