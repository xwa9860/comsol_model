%% multi-scale treatment to get the temperature profile inside a fuel pebble
model.physics.create('htpb', 'CoefficientFormPDE', 'geom1');
model.physics('htpb').identifier('htpb');
model.physics('htpb').field('dimensionless').field('Tp');
model.physics('htpb').field('dimensionless').component({'Tp2' 'Tp22' 'Tp23' 'Tp24' 'Tp25'  ...
    'Tp3' 'Tp32' 'Tp33' 'Tp34' 'Tp35'  ...
    'Tp4' 'Tp42' 'Tp43' 'Tp44' 'Tp45' });
% model.physics('htpb').field('dimensionless').component({'Tp2' 'Tp22' 'Tp23' ...
%     'Tp3' 'Tp32' 'Tp33'  ...
%     'Tp4' 'Tp42' 'Tp43'  });
model.physics('htpb').selection.set([2]);

model.physics('htpb').label('Heat diffusion in pebble');
model.physics('htpb').prop('Units').set('SourceTermQuantity', 'powerdensity');
model.physics('htpb').prop('Units').set('DependentVariableQuantity', 'temperature');
cfeq = model.physics('htpb').feature('cfeq1');
init = model.physics('htpb').feature('init1');
% set k values

k_fuel=15;k_Opyc=4;k_Sic=30;k_IPyC=4;k_buffer=0.5;k_wo2=3.5;
k_coat=[repmat(k_wo2,1,3),k_IPyC];
% k_coat=[k_wo2,k_IPyC];

cp_fuel=1744;cp_Opyc=2000;cp_Sic=1300;cp_IPyC=2000;cp_buffer=2000;cp_wo2=400;
cp_coat=[repmat(cp_wo2,1,3),cp_IPyC];
% cp_coat=[cp_wo2,cp_IPyC];


rho_fuel=1810;rho_Opyc=1900;rho_Sic=3200;rho_IPyC=1900;rho_buffer=1000;rho_wo2=10500;
rho_coat=[repmat(rho_wo2,1,3),rho_IPyC];
% rho_coat=[rho_wo2,rho_IPyC];

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
r_t=[r_n1,r_n2,r_n3,r_n4,r_IPyc,092/1000];
% r_t=[0 0.5/1000 r_Opyc 0.92/1000];
%% set matrix c
k=0;
for i=1:region+3*region_coated+3*region_fuel_kernel-2
    for j=1:region+3*region_coated+3*region_fuel_kernel-2
        % for i=1:9
        %     for j=1:9
        cfeq.setIndex('c',{num2str(0), num2str(0)},k);
        k=k+1;
    end
end
%% set matrix a
k=0;
for n=1:3
    for i=1:region+region_coated+region_fuel_kernel-4
        for j=1:region+region_coated+region_fuel_kernel-4
            %     for i=1:3
            %         for j=1:3
            if i==j && j==1
                cfeq.setIndex('a', [num2str(k_fuel),'*2/((r',num2str(i+2),'-r',num2str(i+1)...
                    ')*(r',num2str(i+1),'-r',num2str(i),'))'],k);
                k=k+region+region_coated+region_fuel_kernel-3;
                %                 k=k+10;
                
            elseif i==j
                cfeq.setIndex('a', [num2str(k_coat(i-1)),'*2/((',num2str(r_t(i+1)),'-',num2str(r_t(i))...
                    ')*(',num2str(r_t(i)),'-',num2str(r_t(i-1)),'))'],k);
                k=k+region+region_coated+region_fuel_kernel-3;
                %                 k=k+10;
            else
                cfeq.setIndex('a',num2str(0),k);
            end
        end
    end
end

%% set matrix da
k=0;
for m=1:3
    
    %     for i=1:3
    %         for j=1:3
    for i=1:region+region_coated+region_fuel_kernel-4
        for j=region+region_coated+region_fuel_kernel-4
            if i==j && j==1
                cfeq.setIndex('da',['eigenMode*',num2str(rho_fuel),'*',num2str(cp_fuel)],k);
                k=k+region+region_coated+region_fuel_kernel-3;
                %                 k=k+10;
                %
            elseif i==j
                cfeq.setIndex('da',['eigenMode*',num2str(rho_coat(i-1)),'*',num2str(cp_coat(i-1))],k);
                k=k+region+region_coated+region_fuel_kernel-3;
                %                 k=k+10;
                
            else
                cfeq.setIndex('da',num2str(0),k);
            end
        end
    end
end
%% set matrix f
k=0;
for i=1:region-2
    % TP1 is zero
    if i==1
        cfeq.setIndex('f',['(1/r',num2str(i+1),')','*k_fuel*(((r',num2str(i+2),'*Tp',num2str(i+2),')/(r',num2str(i+2),...
            '-r',num2str(i+1),...
            '))/(0.5*(r',num2str(i+2),'-r',num2str(i),')))'],k);
    elseif i<=region-3
        cfeq.setIndex('f',['(1/r',num2str(i+1),')','*k_fuel*((r',num2str(i+2),'*Tp',num2str(i+2),')/(r',num2str(i+2),...
            '-r',num2str(i+1),')+','(r',num2str(i),'*Tp',num2str(i),')/(r',num2str(i+1),'-r',num2str(i),...
            '))/(0.5*(r',num2str(i+2),'-r',num2str(i),'))'],k);
    else
        cfeq.setIndex('f',['(1/r',num2str(i+1),')','*k_fuel*((r',num2str(i+2),...
            '*(((-h_conv/k_fuel)*T_flibe+Tp',num2str(i+1),'/(r',num2str(i+2),'-r',num2str(i+1),...
            '))/(1/(r',num2str(i+2),'-r',num2str(i+1),')-h_conv/k_fuel))',...
            ')/(r',num2str(i+2),...
            '-r',num2str(i+1),')+','(r',num2str(i),'*Tp',num2str(i),')/(r',num2str(i+1),'-r',num2str(i),...
            '))/(0.5*(r',num2str(i+2),'-r',num2str(i),'))'],k);
    end
    k=k+1;
    % coat and fuel kernel temperature
    for m=1:region_coated+region_fuel_kernel
        %     for m=1:2
        % TP21 31 41 are zero
        if m==1
            cfeq.setIndex('f',['(1/3)*PdensityN',...
                '+(1/',num2str(r_t(m+1)),')',...
                '*',num2str(k_coat(m)),'*(((',num2str(r_t(m+2)),'*Tp',num2str(i+1),...
                num2str(m+2),')/(',num2str(r_t(m+2)),'-',num2str(r_t(m+1)),...
                '))/(0.5*(',num2str(r_t(m+2)),'-',num2str(r_t(m)),')))'],k);
        elseif m<=region_fuel_kernel
            cfeq.setIndex('f',['(1/3)*PdensityN',...
                '+(1/',num2str(r_t(m+1)),')','*',num2str(k_coat(m)),'*((',num2str(r_t(m+2)),'*Tp',...
                num2str(i+1),num2str(m+2),')/(',num2str(r_t(m+2)),...
                '-',num2str(r_t(m+1)),')+','(',num2str(r_t(m)),'*Tp',num2str(i+1),num2str(m),...
                ')/(',num2str(r_t(m+1)),'-',num2str(r_t(m)),'))/(0.5*(',num2str(r_t(m+2)),'-',num2str(r_t(m)),'))'],k);
            %         elseif m<=region_fuel_kernel+region_coated-1
            %             cfeq.setIndex('f',['(1/',num2str(r_t(m+1)),')','*',num2str(k_coat(m)),'*((',num2str(r_t(m+2)),'*Tp',...
            %                 num2str(i+1),num2str(m+2),')/(',num2str(r_t(m+2)),...
            %                 '-',num2str(r_t(m+1)),')+','(',num2str(r_t(m)),'*Tp',num2str(i+1),num2str(m),...
            %                 ')/(',num2str(r_t(m+1)),'-',num2str(r_t(m)),...
            %                 '))/(0.5*(',num2str(r_t(m+2)),'-',num2str(r_t(m)),'))'],k);
            
            % the temperature of last layer is Tp2 Tp3 Tp4
        else
            cfeq.setIndex('f',['(1/',num2str(r_t(m+1)),')','*',num2str(k_coat(m)),...
                '*((',num2str(r_t(m+2)),'*Tp',num2str(i+1),')/(',num2str(r_t(m+2)),...
                '-',num2str(r_t(m+1)),')+','(',num2str(r_t(m)),'*Tp',num2str(i+1),num2str(m),...
                ')/(',num2str(r_t(m+1)),'-',num2str(r_t(m)),...
                '))/(0.5*(',num2str(r_t(m+2)),'-',num2str(r_t(m)),'))'],k);
        end
        k=k+1;
    end
end
% set intial condition for temperture
for i=2:region-1
    init.set(['Tp', num2str(i)], 900);
    for m=2:region_coated+region_fuel_kernel+1
        %     for m=2:3
        init.set(['Tp', num2str(i),num2str(m)], 900);
    end
end








%  model.physics('htpb').feature('cfeq1').set('c', {'0' '0' '0' '0'; '0' '0' '0' '0'; '0' '0' '0' '0'; '0' '0' '0' '0'; '0' '0' '0' '0'; '0' '0' '0' '0'; '0' '0' '0' '0'; '0' '0' '0' '0'; '0' '0' '0' '0'});
% model.physics('htpb').feature('cfeq1').set('a', {'(4*pi*k_fuel)/((1/r1-1/r2)*V_zone)'; '0'; '0'; '0'; '(4*pi*k_fuel)/((1/r1-1/r2)*V_zone)+(4*pi*k_fuel)/((1/r2-1/r3)*V_zone)'; '0'; '0'; '0'; '(4*pi*k_fuel)/((1/r2-1/r3)*V_zone)+h_conv*pb_area/V_zone/pb_nb'});
% model.physics('htpb').feature('cfeq1').set('f', {'Tp2*4*pi*k_fuel/((1/r1-1/r2)*V_zone)+Pdensity'; 'Tpn*4*pi*k_fuel/((1/r2-1/r3)*V_zone)+Tp1*4*pi*k_fuel/((1/r1-1/r2)*V_zone)+Pdensity'; 'Tp2*4*pi*k_fuel/((1/r1-1/r2)*V_zone)+T_flibe*h_conv*pb_area/V_zone/pb_nb+Pdensity'});
% model.physics('htpb').feature('cfeq1').set('da', {'rho_fuel*cp_fuel'; '0'; '0'; '0'; 'rho_fuel*cp_fuel'; '0'; '0'; '0'; 'rho_fuel*cp_fuel'});
% model.physics('htpb').feature('init1').set('Tp2', '900');
% model.physics('htpb').feature('init1').set('Tp1', '900');
% model.physics('htpb').feature('init1').set('Tpn', '900');