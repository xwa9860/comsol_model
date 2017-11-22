%% multi-scale treatment to get the temperature profile inside a fuel pebble
% thermal resistance
model.physics.create('htpb', 'CoefficientFormPDE', 'geom1');
model.physics('htpb').identifier('htpb');
model.physics('htpb').field('dimensionless').field('Tp');
model.physics('htpb').field('dimensionless').component({'Tp11' 'Tp12' 'Tp13' 'Tp14' ...
    'Tp21' 'Tp22' 'Tp23' 'Tp24' ...
    'Tp31' 'Tp32' 'Tp33' 'Tp34'...
    'Tp44'});
model.physics('htpb').selection.set([2]);
model.physics('htpb').label('Heat diffusion in pebble');
model.physics('htpb').prop('Units').set('SourceTermQuantity', 'powerdensity');
model.physics('htpb').prop('Units').set('DependentVariableQuantity', 'temperature');
cfeq = model.physics('htpb').feature('cfeq1');
init = model.physics('htpb').feature('init1');

%% set k values
k_fuel=15;k_Opyc=4;k_Sic=30;k_IPyC=4;k_buffer=0.5;k_wo2=3.5;
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
for i=1:13
    for j=1:13
        cfeq.setIndex('c',{num2str(0), num2str(0)},k);
        k=k+1;
    end
end

%% set matrix a
k=0;
% kk=3*(region_coated+region_fuel_kernel)+1;
% kkk=1;
for n=1:pebbles_region
    if n<pebbles_region
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
        
    else %graphite layer
        for i=4:4
            for j=4:4
                cfeq.setIndex('a', ['4*pi*k_fuel*r',num2str(n),'*r',num2str(n-1),'/(r',num2str(n),'-r',num2str(n-1),')'...
                    '+  h_conv*pb_area/11000 '],k);
%                 k=k+3*(region_coated+region_fuel_kernel)+2;
                
                m=k-(3*(region_coated+region_fuel_kernel)+1);
                cfeq.setIndex('a', ['-4*pi*k_fuel*r',num2str(n-1),'*r',num2str(n),'/(r',num2str(n),'-r',num2str(n-1),')'],m);
            end
        end
        
    end
end
%% set matrix da
k=0;
for n=1:pebbles_region
    if n<pebbles_region
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
    else
        for i=1:1
            for j=1:1
                cfeq.setIndex('da',['eigenMode*rho_fuel*cp_fuel*V_graphite'],k);
                k=k+3*(region_coated+region_fuel_kernel)+2;
            end
        end
    end
end

%% set matrix f
k=0;
for n=1:pebbles_region
    if n<pebbles_region
        for m=1:region_coated+region_fuel_kernel
            if m==1
                cfeq.setIndex('f',['PdensityN/0.6*4/3*(pb_diam/2)^3*pi/10000/3'...
                    ],k);
%                 '+4*pi*',num2str(k_coat(m)),'*Tp',num2str(n),num2str(m+1),'*'...
%                     'R',num2str(m+1),'*R',num2str(m),'/(R',num2str(m+1),'-R',num2str(m),')'
            elseif m<region_coated+region_fuel_kernel
                cfeq.setIndex('f',['PdensityN/0.6*4/3*(pb_diam/2)^3*pi/10000/3'...
                    ],k);
%                 '+4*pi*',num2str(k_coat(m)),'*R',num2str(m),...
%                     '*( Tp',num2str(n),num2str(m-1),'*R',num2str(m-1),'/(R',num2str(m),'-R',num2str(m-1),')'...
%                     '+ Tp',num2str(n),num2str(m+1),'*R',num2str(m+1),'/(R',num2str(m+1),'-R',num2str(m),'))'
            else
                if n==1
                    cfeq.setIndex('f',num2str(0),k)
%                     cfeq.setIndex('f',[...
%                         '+4*pi*k_fuel*Tp',num2str(n+1),num2str(m),'*r',num2str(n),'*r',num2str(n+1),'/(r',num2str(n+1),'-r',num2str(n),')/3853'...
%                         '+4*pi*',num2str(k_coat(m)),'*R',num2str(m),'*R',num2str(m-1),...
%                         '*Tp',num2str(n),num2str(m-1),'/(R',num2str(m),'-R',num2str(m-1),')'],k);
                elseif n<pebbles_region
                    cfeq.setIndex('f',num2str(0),k)
%                     cfeq.setIndex('f',[...
%                         '+4*pi*k_fuel*Tp',num2str(n-1),num2str(m),'*r',num2str(n),'*r',num2str(n-1),'/(r',num2str(n),'-r',num2str(n-1),')/3853'...
%                         '+4*pi*k_fuel*Tp',num2str(n+1),num2str(m),'*r',num2str(n+1),'*r',num2str(n),'/(r',num2str(n+1),'-r',num2str(n),')/3853'...
%                         '+4*pi*',num2str(k_coat(m)),'*R',num2str(m),'*R',num2str(m-1),...
%                         '*Tp',num2str(n),num2str(m-1),'/(R',num2str(m),'-R',num2str(m-1),')'],k);
                end
                
            end
            k=k+1;
        end
    else
        m=region_coated+region_fuel_kernel;
        cfeq.setIndex('f',[...
            '+h_conv*pb_area*T_flibe/11000'],k);
        k=k+1;
    end
end

for i=1:pebbles_region
    if i<pebbles_region
        for m=1:region_coated+region_fuel_kernel
            init.set(['Tp', num2str(i),num2str(m)], 900);
        end
    else
        init.set(['Tp', num2str(i),num2str(i)], 900)
    end
end




