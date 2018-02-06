global reactor;
global pebbles_region;
global region_fuel_kernel;
global region_coated;
global fuel_domNb;

%% multi-scale treatment to get the temperature profile inside a fuel pebble
% thermal resistance
model.physics.create('ht_fuel', 'CoefficientFormPDE', 'geom1');
model.physics('ht_fuel').identifier('ht_fuel');
model.physics('ht_fuel').field('dimensionless').field('Tp');

%For MK1
%{
naming conventions:
'Tp1': graphite kernel
'Tp21', ..., 'TP24':fuel
'TP3': graphite shell
%}

%For TMSR
%naming:
%'Tp11...Tp31...' : fuel
%'Tp4: graphite shell

switch reactor
    case 'TMSR'
        model.physics('ht_fuel').field('dimensionless').component({'Tp11' 'Tp12' 'Tp13' 'Tp14' ...
            'Tp21' 'Tp22' 'Tp23' 'Tp24' ...
            'Tp31' 'Tp32' 'Tp33' 'Tp34'...
            'Tp4'});
        
    case 'Mk1'
        model.physics('ht_fuel').field('dimensionless').component({'Tp1' ...
            'Tp21' 'Tp22' 'Tp23' 'Tp24' ...
            'Tp3'});
end
model.physics('ht_fuel').selection.set(fuel_domNb);
model.physics('ht_fuel').label('Heat diffusion in pebble');
model.physics('ht_fuel').prop('Units').set('SourceTermQuantity', 'powerdensity');
model.physics('ht_fuel').prop('Units').set('DependentVariableQuantity', 'temperature');
cfeq = model.physics('ht_fuel').feature('cfeq1');
init = model.physics('ht_fuel').feature('init1');




%% get thermal_properties
[k_triso, cp_triso, rho_triso] = calc_triso_thermal_properties();
[k_fuel, cp_fuel, rho_fuel] = calc_pb_thermal_properties();
[k_gr, cp_gr, rho_gr] = calc_gr_properties();

k_g_core = 193;
k_g_shell = 193;

% %% set matrix c
k=0;
    switch reactor
        case 'Mk1'   
            for i=1:2+(region_coated+region_fuel_kernel)*(pebbles_region-2)
                for j=1:2+(region_coated+region_fuel_kernel)*(pebbles_region-2)
                    cfeq.setIndex('c',{num2str(0), num2str(0), num2str(0)},k);
                    k=k+1;
                end
            end
          
        case 'TMSR'
                for i=1:(region_coated+region_fuel_kernel)*(pebbles_region-1)+1
                    for j=1:(region_coated+region_fuel_kernel)*(pebbles_region-1)+1
                    cfeq.setIndex('c',{num2str(0), num2str(0)},k);
                    k=k+1;
                    end
                end

    end

%% set matrix a
k=0;
% kk=3*(region_coated+region_fuel_kernel)+1;
% kkk=1;
for n=1:pebbles_region
    if n<pebbles_region
        %
        switch reactor
            case 'Mk1'
                % graphit core
                if n==1
                    cfeq.setIndex('a', [num2str(k_g_core),'*4*pi*r',num2str(n+1),...
                        '*r',num2str(n),'/(r',num2str(n+1),'-r',num2str(n),')'],k);
                    k=k+region_coated+region_fuel_kernel+pebbles_region;
                    
                    %For Tp24
                    kk=k+(pebbles_region+region_coated+region_fuel_kernel-1)*3-1;
                    cfeq.setIndex('a', [num2str(k_g_core),'*(-4)*pi*r',num2str(n+1),...
                        '*r',num2str(n),'/(r',num2str(n+1),'-r',num2str(n),')'],kk);
                    
                    % fuel pebbles layer
                elseif n<=pebbles_region-1
                    
                    for i=1:region_coated+region_fuel_kernel
                        for j=1:region_coated+region_fuel_kernel
                            
                            if i==j && j==1 %Tp21
                                cfeq.setIndex('a', [num2str(k_triso(i)),'*4*pi*R',num2str(i+1),...
                                    '*R',num2str(i),'/(R',num2str(i+1),'-R',num2str(i),')'],k);
                                k=k+region_coated+region_fuel_kernel+pebbles_region;
                                % ++ position
                                kk=k-1;
                                cfeq.setIndex('a', ['-4*pi*',num2str(k_triso(i)),'*'...
                                    'R',num2str(i+1),'*R',num2str(i),'/(R',num2str(i+1),'-R',num2str(i),')'],kk);
                                
                            elseif i==j && j<region_coated+region_fuel_kernel %Tpi2-Tpi3
                                
                                cfeq.setIndex('a', [num2str(k_triso(i)),'*4*pi*R',num2str(i),...
                                    '*((R',num2str(i-1),'/(R',num2str(i),'-R',num2str(i-1),'))'...
                                    '+(R',num2str(i+1),'/(R',num2str(i+1),'-R',num2str(i),')))'],k);
                                k=k+region_coated+region_fuel_kernel+pebbles_region;
                                % ++
                                
                                kk=k-1;
                                cfeq.setIndex('a', ['-4*pi*',num2str(k_triso(i)),'*'...
                                    'R',num2str(i+1),'*R',num2str(i),'/(R',num2str(i+1),'-R',num2str(i),')'],kk);
                                
                                % --
                                kkkk=k-2*(region_coated+region_fuel_kernel+pebbles_region)+1;
                                cfeq.setIndex('a', ['(-4)*pi*',num2str(k_triso(i)),'*'...
                                    'R',num2str(i-1),'*R',num2str(i),'/(R',num2str(i),'-R',num2str(i-1),')'],kkkk);
                                
                                
                            elseif i==j && j==region_coated+region_fuel_kernel
                                %++
                                
                                cfeq.setIndex('a', ['4*pi'...
                                    '*((',num2str(k_triso(i)),'*R',num2str(i),'*R',num2str(i-1),'/(R',num2str(i),'-R',num2str(i-1),'))'...
                                    '+(k_fuel*r',num2str(n),'*r',num2str(n-1),'/(r',num2str(n),'-r',num2str(n-1),')/triso_nb)'...
                                    '+(k_fuel*r',num2str(n+1),'*r',num2str(n),'/(r',num2str(n+1),'-r',num2str(n),')/triso_nb) )'],k);
                                
                                %-- Tp23
                                kkkk=k-region_coated-region_fuel_kernel-pebbles_region+1;
                                cfeq.setIndex('a', ['(-4)*pi*',num2str(k_triso(i)),'*'...
                                    'R',num2str(i-1),'*R',num2str(i),'/(R',num2str(i),'-R',num2str(i-1),')'],kkkk);
                                %++ Tp3
                                kk=k+region_coated+region_fuel_kernel+pebbles_region-1;
                                cfeq.setIndex('a', ['(-4)*pi*k_fuel*'...
                                    'r',num2str(n+1),'*r',num2str(n),'/(r',num2str(n+1),'-r',num2str(n),')/triso_nb'],kk);
                                
                                %-- Tp1
                                
                                kkk=k-3*(region_coated+region_fuel_kernel+pebbles_region)-3;
                                cfeq.setIndex('a', ['(-4)*pi*k_fuel*'...
                                    'r',num2str(n),'*r',num2str(n-1),'/(r',num2str(n),'-r',num2str(n-1),')/triso_nb'],kkk);
                             else
                               cfeq.setIndex('a',num2str(0),k);   
                            end
                        end
                    end
                    
                end
                
            case 'TMSR'
                
                for i=1:region_coated+region_fuel_kernel
                    for j=1:region_coated+region_fuel_kernel
                        if i==j && j==1 %Tpi1
                            cfeq.setIndex('a', [num2str(k_triso(i)),'*4*pi*R',num2str(i+1),...
                                '*R',num2str(i),'/(R',num2str(i+1),'-R',num2str(i),')'],k);
                            k=k+3*(region_coated+region_fuel_kernel)+2;
                            % ++
                            kk=k-1;
                            cfeq.setIndex('a', ['-4*pi*',num2str(k_triso(i)),'*'...
                                'R',num2str(i+1),'*R',num2str(i),'/(R',num2str(i+1),'-R',num2str(i),')'],kk);
                            
                        elseif i==j && j<region_coated+region_fuel_kernel %Tpi2-Tpi3
                            
                            cfeq.setIndex('a', [num2str(k_triso(i)),'*4*pi*R',num2str(i),...
                                '*((R',num2str(i-1),'/(R',num2str(i),'-R',num2str(i-1),'))'...
                                '+(R',num2str(i+1),'/(R',num2str(i+1),'-R',num2str(i),')))'],k);
                            k=k+3*(region_coated+region_fuel_kernel)+2;
                            % ++
                            kk=k-1;
                            cfeq.setIndex('a', ['-4*pi*',num2str(k_triso(i)),'*'...
                                'R',num2str(i+1),'*R',num2str(i),'/(R',num2str(i+1),'-R',num2str(i),')'],kk);
                            % --
                            kkkk=k-2*(3*(region_coated+region_fuel_kernel)+1)-1;
                            cfeq.setIndex('a', ['(-4)*pi*',num2str(k_triso(i)),'*'...
                                'R',num2str(i-1),'*R',num2str(i),'/(R',num2str(i),'-R',num2str(i-1),')'],kkkk);
                            
                            
                            
                        elseif i==j && j==region_coated+region_fuel_kernel %Tp i4
                            if n==1
                                cfeq.setIndex('a', ['4*pi'...
                                    '*((',num2str(k_triso(i)),'*R',num2str(i),'*R',num2str(i-1),'/(R',num2str(i),'-R',num2str(i-1),'))'...
                                    '+(k_fuel*r',num2str(n+1),'*r',num2str(n),'/(r',num2str(n+1),'-r',num2str(n),')/3853) )'],k);
                                k=k+3*(region_coated+region_fuel_kernel)+2;
                                %++
                                kk=k-1;
                                cfeq.setIndex('a',num2str(0),kk);
                                
                                kkk=k+3*(3*(region_coated+region_fuel_kernel)+1)-1;
                                cfeq.setIndex('a', ['-4*pi*k_fuel*r',num2str(n),...
                                    '*r',num2str(n+1),'/(r',num2str(n+1),'-r',num2str(n),')/3853'], kkk);
                                
                                %--
                                kkkk=k-2*(3*(region_coated+region_fuel_kernel)+1)-1;
                                cfeq.setIndex('a', ['(-4)*pi*',num2str(k_triso(i)),'*'...
                                    'R',num2str(i-1),'*R',num2str(i),'/(R',num2str(i),'-R',num2str(i-1),')'],kkkk);
                                
                            else
                                cfeq.setIndex('a', ['4*pi'...
                                    '*((',num2str(k_triso(i)),'*R',num2str(i),'*R',num2str(i-1),'/(R',num2str(i),'-R',num2str(i-1),'))'...
                                    '+(k_fuel*r',num2str(n),'*r',num2str(n-1),'/(r',num2str(n),'-r',num2str(n-1),')/3853)'...
                                    '+(k_fuel*r',num2str(n+1),'*r',num2str(n),'/(r',num2str(n+1),'-r',num2str(n),')/3853) )'],k);
                                k=k+3*(region_coated+region_fuel_kernel)+2;
                                
                                % ++
                                if n<pebbles_region-1
                                    kk=k-1;
                                    cfeq.setIndex('a',num2str(0),kk);
                                    
                                    kkk=k+3*(3*(region_coated+region_fuel_kernel)+1)-1;
                                    cfeq.setIndex('a', ['-4*pi*k_fuel*r',num2str(n),...
                                        '*r',num2str(n+1),'/(r',num2str(n+1),'-r',num2str(n),')/3853'], kkk);
                                    
                                else
                                    kk=k-1;
                                    cfeq.setIndex('a', ['-4*pi*k_fuel*r',num2str(n),...
                                        '*r',num2str(n+1),'/(r',num2str(n+1),'-r',num2str(n),')/3853'], kk);
                                end
                                
                                %--
                                kkkk=k-2*(3*(region_coated+region_fuel_kernel)+1)-1;
                                cfeq.setIndex('a', ['(-4)*pi*',num2str(k_triso(i)),'*'...
                                    'R',num2str(i-1),'*R',num2str(i),'/(R',num2str(i),'-R',num2str(i-1),')'],kkkk);
                                
                                mm=k-5*(3*(region_coated+region_fuel_kernel)+1)-1;
                                cfeq.setIndex('a', ['-4*pi*k_fuel*r',num2str(n),'*r',num2str(n-1),'/(r',num2str(n),'-r',num2str(n-1),')/3853'],mm);
                                
                                
                            end
                            
                            
                        else
                            cfeq.setIndex('a',num2str(0),k);
                        end
                        
                    end
                end
                
        end
        
    else %graphite layer
        for i=pebbles_region:pebbles_region
            for j=pebbles_region:pebbles_region
                
                switch reactor
                    case 'Mk1'
                k=k+region_coated+region_fuel_kernel+pebbles_region;
                    case 'TMSR'
                        
                end
                cfeq.setIndex('a', ['4*pi*k_fuel*r',num2str(n),'*r',num2str(n-1),'/(r',num2str(n),'-r',num2str(n-1),')'...
                    '+ h_conv*pb_area/pb_nb '],k);
                %                 k=k+3*(region_coated+region_fuel_kernel)+2;
                switch reactor
                    case 'TMSR'
                        m=k-(3*(region_coated+region_fuel_kernel)+1);
                    case 'Mk1'
                        m=k-region_coated-region_fuel_kernel-pebbles_region+1;
                end
                
                cfeq.setIndex('a', ['-4*pi*k_fuel*r',num2str(n-1),'*r',num2str(n),'/(r',num2str(n),'-r',num2str(n-1),')'],m);
            end
        end
        
    end
end
%% set matrix da
k=0;
for n=1:pebbles_region
    if n<pebbles_region
        switch reactor
            case 'TMSR'
                
                for i=1:region_coated+region_fuel_kernel
                    for j=1:region_coated+region_fuel_kernel
                        if i==j && j<region_coated+region_fuel_kernel
                            cfeq.setIndex('da',['eigenMode*',num2str(rho_triso(i)),'*',num2str(cp_triso(i)),'*V_fuel'],k);
                            k=k+3*(region_coated+region_fuel_kernel)+2;
                        elseif i==j && j==region_coated+region_fuel_kernel
                            cfeq.setIndex('da',['eigenMode*',num2str(rho_triso(i)),'*',num2str(cp_triso(i)),'*V_coat'],k);
                            k=k+3*(region_coated+region_fuel_kernel)+2;
                        else
                            cfeq.setIndex('da',num2str(0),k);
                        end
                    end
                end
                
            case 'Mk1'
                if n==1
                    cfeq.setIndex('da',['eigenMode*', num2str(rho_gr), '*', num2str(cp_gr), '*V_graphite_core'],k);
                    k=k+region_coated+region_fuel_kernel+pebbles_region;
                else
                    for i=1:region_coated+region_fuel_kernel
                        for j=1:region_coated+region_fuel_kernel
                            if i==j && j<region_coated+region_fuel_kernel
                                cfeq.setIndex('da',['eigenMode*',num2str(rho_triso(i)),'*',num2str(cp_triso(i)),'*V_fuel'],k);
                                k=k+region_coated+region_fuel_kernel+pebbles_region;
                            elseif i==j && j==region_coated+region_fuel_kernel
                                cfeq.setIndex('da',['eigenMode*',num2str(rho_triso(i)),'*',num2str(cp_triso(i)),'*V_coat'],k);
                                k=k+region_coated+region_fuel_kernel+pebbles_region;
                            else
                                cfeq.setIndex('da',num2str(0),k);
                            end
                        end
                    end
                end
                
        end
        
    else
        for i=1:1
            for j=1:1
                cfeq.setIndex('da',['eigenMode*', num2str(rho_gr), '*', num2str(cp_fuel), '*V_graphite_shell'],k);
                switch reactor
                    case 'TMSR'
                k=k+3*(region_coated+region_fuel_kernel)+2;
                    case 'Mk1'
                        k=k+region_coated+region_fuel_kernel+pebbles_region;
                end
            end
        end
    end
end

%% set matrix f
k=0;
for n=1:pebbles_region
    
    if n<pebbles_region
        
        switch reactor
            case 'TMSR'
                
                for m=1:region_coated+region_fuel_kernel
                    if m==1
                        cfeq.setIndex('f',['PdensityN/0.6*4/3*(pb_diam/2)^3*pi/triso_nb/3'...
                            ],k);
                    elseif m<region_coated+region_fuel_kernel
                        cfeq.setIndex('f',['PdensityN/0.6*4/3*(pb_diam/2)^3*pi/triso_nb/3'...
                            ],k);
                    else
                        if n==1
                            cfeq.setIndex('f',num2str(0),k)
                        elseif n<pebbles_region
                            cfeq.setIndex('f',num2str(0),k)
                        end
                        
                    end
                    k=k+1;
                end
                
            case 'Mk1'
                if n==1
                    cfeq.setIndex('f',num2str(0),k)
                    k=k+1;
                else
                    for m=1:region_coated+region_fuel_kernel
                        if m<region_coated+region_fuel_kernel
                            cfeq.setIndex('f',['PdensityN/0.6*4/3*(pb_diam/2)^3*pi/triso_nb/3'...
                                ],k);
                        else
                            if n<pebbles_region
                                cfeq.setIndex('f',num2str(0),k)
                            end
                            
                        end
                        k=k+1;
                    end
                end
                
        end
    else
        m=region_coated+region_fuel_kernel;
        cfeq.setIndex('f',[...
            '+h_conv*pb_area*T_flibe/pb_nb'],k);
        k=k+1;
    end
end
%% initial value
for i=1:pebbles_region
    
    if i<pebbles_region
        switch reactor
            case 'TMSR'
                for m=1:region_coated+region_fuel_kernel
                    init.set(['Tp', num2str(i),num2str(m)], 900);
                end
            case 'Mk1'
                if i==1
                    init.set(['Tp', num2str(i)], 900);
                else
                    for m=1:region_coated+region_fuel_kernel
                    init.set(['Tp', num2str(i),num2str(m)], 900);
                    end
                end
        end
    else
        init.set(['Tp', num2str(i)], 900)
    end
end




