%% multi-scale treatment to get the temperature profile inside a fuel pebble
model.physics.create('ht_fuel', 'CoefficientFormPDE', 'geom1');
model.physics('ht_fuel').identifier('ht_fuel');
model.physics('ht_fuel').field('dimensionless').field('Tp');

% naming conventions: 
% 
% Tp0 Tp10 Tp20 Tp30 are zeros
% Tp4 = surface temperature
model.physics('ht_fuel').field('dimensionless').component({'Tp11' 'Tp12' 'Tp13' 'Tp14' 'Tp1'...
    'Tp21' 'Tp22' 'Tp23' 'Tp24' 'Tp2'...
    'Tp31' 'Tp32' 'Tp33' 'Tp34' 'Tp3'});
model.physics('ht_fuel').selection.set([2]);

model.physics('ht_fuel').label('Heat diffusion in pebble');
model.physics('ht_fuel').prop('Units').set('SourceTermQuantity', 'powerdensity');
model.physics('ht_fuel').prop('Units').set('DependentVariableQuantity', 'temperature');
cfeq = model.physics('ht_fuel').feature('cfeq1');
init = model.physics('ht_fuel').feature('init1');
% set k values

k_fuel=15;k_Opyc=4;k_Sic=30;k_IPyC=4;k_buffer=0.5;k_wo2=3.5;
% k_coat=[k_wo2,k_buffer,k_IPyC, k_Sic, k_Opyc];
k_coat=[repmat(k_wo2,1,3),k_IPyC];

cp_fuel=1744;cp_Opyc=2000;cp_Sic=1300;cp_IPyC=2000;cp_buffer=2000;cp_wo2=400;
% cp_coat=[cp_wo2,cp_buffer,cp_IPyC, cp_Sic, cp_Opyc];
cp_coat=[repmat(cp_wo2,1,3),cp_IPyC];


rho_fuel=1810;rho_Opyc=1900;rho_Sic=3200;rho_IPyC=1900;rho_buffer=1000;rho_wo2=10500;
% rho_coat=[rho_wo2,rho_buffer,rho_IPyC, rho_Sic, rho_Opyc];
rho_coat=[repmat(rho_wo2,1,3),rho_IPyC];

% set radius
% radius for the coated
r_coated=0.92/2/1000;
r_fuel=0.5/2/1000;
% calculate the r_fuel
zone_nb=3;
V_zone = 4/3*pi*r_fuel^3/zone_nb;%volume for each zone in a pebble
r_n1=0;
cal_radius=V_zone/(4/3)/pi;
r_n2=nthroot(cal_radius,3)/2;
r_n3=(nthroot(V_zone*2,3)-r_n2*2)/2+r_n2;
r_n4=(nthroot(V_zone*3,3)-nthroot(V_zone*2,3))/2+r_n3;
r_buffer=(250+95/2)/1000000;
r_IPyc=(250+95+40/2)/1000000;
r_Sic=(250+95+40+35/2)/1000000;
r_Opyc=(250+95+40+35+40/2)/1000000;
% r_t=[r_n1, 250/1000000/2, r_buffer,r_IPyc,r_Sic, r_Opyc, 0.92/1000];
r_t=[r_n1,r_n2,r_n3,r_n4,r_IPyc,092/1000];
%% set matrix c
k=0;

for i=1:3*(region_coated+region_fuel_kernel)+3
    for j=1:3*(region_coated+region_fuel_kernel)+3
        cfeq.setIndex('c',{num2str(0), num2str(0)},k);
        k=k+1;
    end
end
%% set matrix a
k=0;
for n=1:3
    for i=1:region_coated+region_fuel_kernel+1
        for j=1:region_coated+region_fuel_kernel+1
            
            if i==j && j<region_coated+region_fuel_kernel+1
                cfeq.setIndex('a', [num2str(k_coat(i)),'*2/((R',num2str(i+1),'-R',num2str(i)...
                    ')*(R',num2str(i),'-R',num2str(i-1),'))'],k);
                k=k+3*(region_coated+region_fuel_kernel+1)+1;
            elseif i==j && j==region_coated+region_fuel_kernel+1
                cfeq.setIndex('a', ['k_fuel*2/((r',num2str(n+1),'-r',num2str(n)...
                    ')*(r',num2str(n),'-r',num2str(n-1),'))'], k)
                k=k+3*(region_coated+region_fuel_kernel+1)+1;
            else
                cfeq.setIndex('a',num2str(0),k);
            end
        end
    end
end

%% set matrix da
k=0;
for m=1:3
    
    for i=1:region_coated+region_fuel_kernel+1
        for j=1:region_coated+region_fuel_kernel+1
            
            if i==j && j<region_coated+region_fuel_kernel+1
                cfeq.setIndex('da',['eigenMode*',num2str(rho_coat(i)),'*',num2str(cp_coat(i))],k);
                k=k+3*(region_coated+region_fuel_kernel+1)+1;
            elseif i==j && j==region_coated+region_fuel_kernel+1
                cfeq.setIndex('da',['eigenMode*rho_fuel*cp_fuel'],k);
                k=k+3*(region_coated+region_fuel_kernel+1)+1;
            else
                cfeq.setIndex('da',num2str(0),k);
            end
        end
    end
end
%% set matrix f
k=0;
for i=1:3
    for m=1:region_coated+region_fuel_kernel+1
        
        if m==1
            cfeq.setIndex('f',['PdensityN/11558'...
                '+(1/R',num2str(m),')',...
                '*',num2str(k_coat(m)),'*(((R',num2str(m+1),'*Tp',num2str(i),...
                num2str(m+1),')/(R',num2str(m+1),'-R',num2str(m),...
                '))/(0.5*(R',num2str(m+1),'-R',num2str(m-1),')))'],k);
        elseif m<=region_fuel_kernel
            cfeq.setIndex('f',['PdensityN/11558'...
                '+(1/R',num2str(m),')','*',num2str(k_coat(m)),'*((R',num2str(m+1),'*Tp',...
                num2str(i),num2str(m+1),')/(R',num2str(m+1),...
                '-R',num2str(m),')+','(R',num2str(m-1),'*Tp',num2str(i),num2str(m-1),...
                ')/(R',num2str(m),'-R',num2str(m-1),'))/(0.5*(R',num2str(m+1),'-R',num2str(m-1),'))'],k);
            
        elseif m==region_fuel_kernel+region_coated
            cfeq.setIndex('f',['(1/R',num2str(m),')','*',num2str(k_coat(m)),'*((R',num2str(m+1),'*Tp',...
                num2str(i),')/(R',num2str(m+1),...
                '-R',num2str(m),')+','(R',num2str(m-1),'*Tp',num2str(i),num2str(m-1),...
                ')/(R',num2str(m),'-R',num2str(m-1),'))/(0.5*(R',num2str(m+1),'-R',num2str(m-1),'))'],k);
        else
            if i<=pebbles_region-2
                cfeq.setIndex('f',['(1/r',num2str(i),')','*k_fuel*((r',num2str(i+1),'*Tp',num2str(i+1),')/(r',num2str(i+1),...
                    '-r',num2str(i),')+','(r',num2str(i-1),'*Tp',num2str(i-1),')/(r',num2str(i),'-r',num2str(i-1),...
                    '))/(0.5*(r',num2str(i+1),'-r',num2str(i-1),'))'],k);
            else
                cfeq.setIndex('f',['(1/r',num2str(i),')','*k_fuel*((r',num2str(i+1),...
                    '*(((-h_conv/k_fuel)*T_flibe+Tp',num2str(i),'/(r',num2str(i+1),'-r',num2str(i),...
                    '))/(1/(r',num2str(i+1),'-r',num2str(i),')-h_conv/k_fuel))',...
                    ')/(r',num2str(i+1),...
                    '-r',num2str(i),')+','(r',num2str(i-1),'*Tp',num2str(i-1),')/(r',num2str(i),'-r',num2str(i-1),...
                    '))/(0.5*(r',num2str(i+1),'-r',num2str(i-1),'))'],k);
            end
            
            
        end
        k=k+1;
    end
end

% set intial condition for temperture
for i=1:3
    for m=1:region_coated+region_fuel_kernel
        init.set(['Tp', num2str(i),num2str(m)], 900);
    end
end










