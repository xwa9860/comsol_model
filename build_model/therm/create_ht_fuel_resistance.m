global reactor;
global pebbles_region;
global region_fuel_kernel;
global region_coated;


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
model.physics('ht_fuel').selection.set([2]);
model.physics('ht_fuel').label('Heat diffusion in pebble');
model.physics('ht_fuel').prop('Units').set('SourceTermQuantity', 'powerdensity');
model.physics('ht_fuel').prop('Units').set('DependentVariableQuantity', 'temperature');
cfeq = model.physics('ht_fuel').feature('cfeq1');
init = model.physics('ht_fuel').feature('init1');

%% set k values
k_fuel=15;k_Opyc=4;k_Sic=30;k_IPyC=4;k_buffer=0.5;k_wo2=3.5;
k_g_core=4.0;
k_g_shell=3.5;
% k_coat=[k_wo2,k_buffer,k_IPyC, k_Sic, k_Opyc];
k_coat=[repmat(k_wo2,1,3),k_IPyC];

cp_fuel=1744;cp_Opyc=2000;cp_Sic=1300;cp_IPyC=2000;cp_buffer=2000;cp_wo2=400;
% cp_coat=[cp_wo2,cp_buffer,cp_IPyC, cp_Sic, cp_Opyc];
cp_coat=[repmat(cp_wo2,1,3),cp_IPyC];


rho_fuel=1810;rho_Opyc=1900;rho_Sic=3200;rho_IPyC=1900;rho_buffer=1000;rho_wo2=10500;
% rho_coat=[rho_wo2,rho_buffer,rho_IPyC, rho_Sic, rho_Opyc];
rho_coat=[repmat(rho_wo2,1,3),rho_IPyC];

%% set matrix c
k=0;
for m=1:pebbles_region
    for i=1:region_coated+region_fuel_kernel
        for j=1:region_coated+region_fuel_kernel
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
            case 'MK1'
                % graphit core
                if n==1
                    cfeq.setIndex('a', [num2str(k_g_core),'*4*pi*r',num2str(n+1),...
                        '*r',num2str(n),'/(r',num2str(n+1),'-r',num2str(n),')'],k);
                    k=k+region_coated+region_fuel_kernel+2;
                    
                    %For Tp24
                    kk=k-1;
                    cfeq.setIndex('a', [num2str(k_g_core),'-4*pi*r',num2str(n+1),...
                        '*r',num2str(n),'/(r',num2str(n+1),'-r',num2str(n),')'],kk);
                    
                    % fuel layer
                elseif n<=pebbles_region-1
                    
                    
                    for i=1:region_coated+region_fuel_kernel
                        for j=1:region_coated+region_fuel_kernel
                            
                            if i==j && j==1 %Tp21
                                cfeq.setIndex('a', [num2str(k_coat(i)),'*4*pi*R',num2str(i+1),...
                                    '*R',num2str(i),'/(R',num2str(i+1),'-R',num2str(i),')'],k);
                                k=k+region_coated+region_fuel_kernel+2;
                                % ++ position
                                kk=k-1;
                                cfeq.setIndex('a', ['-4*pi*',num2str(k_coat(i)),'*'...
                                    'R',num2str(i+1),'*R',num2str(i),'/(R',num2str(i+1),'-R',num2str(i),')'],kk);
                                
                            elseif i==j && j<region_coated+region_fuel_kernel %Tpi2-Tpi3
                                
                                cfeq.setIndex('a', [num2str(k_coat(i)),'*4*pi*R',num2str(i),...
                                    '*((R',num2str(i-1),'/(R',num2str(i),'-R',num2str(i-1),'))'...
                                    '+(R',num2str(i+1),'/(R',num2str(i+1),'-R',num2str(i),')))'],k);
                                k=k+region_coated+region_fuel_kernel+2;
                                % ++
                                
                                kk=k-1;
                                cfeq.setIndex('a', ['-4*pi*',num2str(k_coat(i)),'*'...
                                    'R',num2str(i+1),'*R',num2str(i),'/(R',num2str(i+1),'-R',num2str(i),')'],kk);
                                % --
                                kkkk=k-2*(region_coated+region_fuel_kernel+1)-1;
                                cfeq.setIndex('a', ['(-4)*pi*',num2str(k_coat(i)),'*'...
                                    'R',num2str(i-1),'*R',num2str(i),'/(R',num2str(i),'-R',num2str(i-1),')'],kkkk);
                                
                                
                            elseif i==j && j==region_coated+region_fuel_kernel
                                %++
                                
                                cfeq.setIndex('a', ['4*pi'...
                                    '*((',num2str(k_coat(i)),'*R',num2str(i),'*R',num2str(i-1),'/(R',num2str(i),'-R',num2str(i-1),'))'...
                                    '+(k_fuel*r',num2str(n),'*r',num2str(n-1),'/(r',num2str(n),'-r',num2str(n-1),')/11558)'...
                                    '+(k_fuel*r',num2str(n+1),'*r',num2str(n),'/(r',num2str(n+1),'-r',num2str(n),')/11558) )'],k);
                                k=k+3*(region_coated+region_fuel_kernel)+2;
                                
                                %--
                                kkkk=k-2*(region_coated+region_fuel_kernel+1)-1;
                                cfeq.setIndex('a', ['(-4)*pi*',num2str(k_coat(i)),'*'...
                                    'R',num2str(i-1),'*R',num2str(i),'/(R',num2str(i),'-R',num2str(i-1),')'],kkkk);
                                
                                
                                
                            end
                        end
                    end
                    
                    
                    
                end
                
            case 'TMSR'
                
                for i=1:region_coated+region_fuel_kernel
                    for j=1:region_coated+region_fuel_kernel
                        if i==j && j==1 %Tpi1
                            cfeq.setIndex('a', [num2str(k_coat(i)),'*4*pi*R',num2str(i+1),...
                                '*R',num2str(i),'/(R',num2str(i+1),'-R',num2str(i),')'],k);
                            k=k+3*(region_coated+region_fuel_kernel)+2;
                            % ++
                            kk=k-1;
                            cfeq.setIndex('a', ['-4*pi*',num2str(k_coat(i)),'*'...
                                'R',num2str(i+1),'*R',num2str(i),'/(R',num2str(i+1),'-R',num2str(i),')'],kk);
                            
                        elseif i==j && j<region_coated+region_fuel_kernel %Tpi2-Tpi3
                            
                            cfeq.setIndex('a', [num2str(k_coat(i)),'*4*pi*R',num2str(i),...
                                '*((R',num2str(i-1),'/(R',num2str(i),'-R',num2str(i-1),'))'...
                                '+(R',num2str(i+1),'/(R',num2str(i+1),'-R',num2str(i),')))'],k);
                            k=k+3*(region_coated+region_fuel_kernel)+2;
                            % ++
                            kk=k-1;
                            cfeq.setIndex('a', ['-4*pi*',num2str(k_coat(i)),'*'...
                                'R',num2str(i+1),'*R',num2str(i),'/(R',num2str(i+1),'-R',num2str(i),')'],kk);
                            % --
                            kkkk=k-2*(3*(region_coated+region_fuel_kernel)+1)-1;
                            cfeq.setIndex('a', ['(-4)*pi*',num2str(k_coat(i)),'*'...
                                'R',num2str(i-1),'*R',num2str(i),'/(R',num2str(i),'-R',num2str(i-1),')'],kkkk);
                            
                            
                            
                        elseif i==j && j==region_coated+region_fuel_kernel %Tp i4
                            if n==1
                                cfeq.setIndex('a', ['4*pi'...
                                    '*((',num2str(k_coat(i)),'*R',num2str(i),'*R',num2str(i-1),'/(R',num2str(i),'-R',num2str(i-1),'))'...
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
                                cfeq.setIndex('a', ['(-4)*pi*',num2str(k_coat(i)),'*'...
                                    'R',num2str(i-1),'*R',num2str(i),'/(R',num2str(i),'-R',num2str(i-1),')'],kkkk);
                                
                            else
                                cfeq.setIndex('a', ['4*pi'...
                                    '*((',num2str(k_coat(i)),'*R',num2str(i),'*R',num2str(i-1),'/(R',num2str(i),'-R',num2str(i-1),'))'...
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
                                cfeq.setIndex('a', ['(-4)*pi*',num2str(k_coat(i)),'*'...
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
                cfeq.setIndex('a', ['4*pi*k_fuel*r',num2str(n),'*r',num2str(n-1),'/(r',num2str(n),'-r',num2str(n-1),')'...
                    '+  h_conv*pb_area/11000 '],k);
                %                 k=k+3*(region_coated+region_fuel_kernel)+2;
                switch reactor
                    case 'TMSR'
                        m=k-(3*(region_coated+region_fuel_kernel)+1);
                    case 'MK1'
                        m=k-(region_coated+region_fuel_kernel+1);
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
                            cfeq.setIndex('da',['eigenMode*',num2str(rho_coat(i)),'*',num2str(cp_coat(i)),'*V_fuel'],k);
                            k=k+3*(region_coated+region_fuel_kernel)+2;
                        elseif i==j && j==region_coated+region_fuel_kernel
                            cfeq.setIndex('da',['eigenMode*',num2str(rho_coat(i)),'*',num2str(cp_coat(i)),'*V_coat'],k);
                            k=k+3*(region_coated+region_fuel_kernel)+2;
                        else
                            cfeq.setIndex('da',num2str(0),k);
                        end
                    end
                end
                
            case 'MK1'
                if n==1
                    cfeq.setIndex('da',['eigenMode*rho_fuel*cp_fuel*V_graphite_core'],k);
                    k=k+region_coated+region_fuel_kernel+2;
                else
                    for i=1:region_coated+region_fuel_kernel
                        for j=1:region_coated+region_fuel_kernel
                            if i==j && j<region_coated+region_fuel_kernel
                                cfeq.setIndex('da',['eigenMode*',num2str(rho_coat(i)),'*',num2str(cp_coat(i)),'*V_fuel'],k);
                                k=k+region_coated+region_fuel_kernel+2;
                            elseif i==j && j==region_coated+region_fuel_kernel
                                cfeq.setIndex('da',['eigenMode*',num2str(rho_coat(i)),'*',num2str(cp_coat(i)),'*V_coat'],k);
                                k=k+region_coated+region_fuel_kernel+2;
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
                cfeq.setIndex('da',['eigenMode*rho_fuel*cp_fuel*V_graphite_shell'],k);
                k=k+3*(region_coated+region_fuel_kernel)+2;
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
                        cfeq.setIndex('f',['PdensityN/0.6*4/3*(pb_diam/2)^3*pi/10000/3'...
                            ],k);
                    elseif m<region_coated+region_fuel_kernel
                        cfeq.setIndex('f',['PdensityN/0.6*4/3*(pb_diam/2)^3*pi/10000/3'...
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
                
            case 'MK1'
                if n==1
                    cfeq.setIndex('f',num2str(0),k)
                else
                    for m=1:region_coated+region_fuel_kernel
                       if m<region_coated+region_fuel_kernel
                            cfeq.setIndex('f',['PdensityN/0.6*4/3*(pb_diam/2)^3*pi/10000/3'...
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
            '+h_conv*pb_area*T_flibe/11000'],k);
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
            case 'MK1'
                if i==1
                    init.set(['Tp', num2str(i)], 900);
                else
                    init.set(['Tp', num2str(i),num2str(m)], 900);
                end
        end
    else
        init.set(['Tp', num2str(i)], 900)
    end
end




