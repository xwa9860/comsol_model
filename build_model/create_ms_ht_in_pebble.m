%% multi-scale treatment to get the temperature profile inside a fuel pebble
model.physics.create('htpb', 'CoefficientFormPDE', 'geom1');
model.physics('htpb').identifier('htpb');
model.physics('htpb').field('dimensionless').field('Tp');
model.physics('htpb').field('dimensionless').component({'Tp2' 'Tp3' 'Tp4' 'Tp5'});
model.physics('htpb').selection.set([2]);

model.physics('htpb').label('Heat diffusion in pebble');
model.physics('htpb').prop('Units').set('SourceTermQuantity', 'powerdensity');
model.physics('htpb').prop('Units').set('DependentVariableQuantity', 'temperature');
cfeq = model.physics('htpb').feature('cfeq1');
init = model.physics('htpb').feature('init1');


%% set matrix c
k=0;
for i=1:region-1
    for j=1:region-1
        cfeq.setIndex('c',{num2str(0), num2str(0)},k);
        k=k+1;
    end
end

%% set matrix a
k=0;
for i=1:region-1
    for j=1:region-1
        if i<=region-2 && j<=region-2
        if i==j
            cfeq.setIndex('a', ['(rho_fuel*cp_fuel/k_fuel)*2*r',num2str(i),'/((r',num2str(i+2),'-r',num2str(i+1)...
                ')*(r',num2str(i+1),'-r',num2str(i),'))'],k);
        else
            cfeq.setIndex('a',num2str(0),k);
        end
        else
            if i==j
           cfeq.setIndex('a',['(1','/(r',num2str(i+1),'-r',num2str(i),'))-','(h_conv/k_fuel)'],k);
            else
            cfeq.setIndex('a',num2str(0),k);  
            end
        end
        k=k+1;
    end
end

%% set matrix da
k=0;
for i=1:region-1
    for j=1:region-1
        if i<=region-2 && j<=region-2
            if i==j
            cfeq.setIndex('da', ['r',num2str(i+1)],k);
            else
            cfeq.setIndex('da',num2str(0),k);
            end
        else
           cfeq.setIndex('da',num2str(0),k);
        end
        k=k+1;
    end
end
%% set matrix f
k=0;
for i=1:region-1
    if i==1
        cfeq.setIndex('f',['r',num2str(i+1),'*(1/3)*PdensityN/(rho_fuel)'...
        '+(rho_fuel*cp_fuel/k_fuel)','*(((r',num2str(i+2),'*Tp',num2str(i+2),')/(r',num2str(i+2),...
        '-r',num2str(i+1),...
        '))/(0.5*(r',num2str(i+2),'+r',num2str(i),')))'],k);
    else
    if i<=region-2
    cfeq.setIndex('f',['r',num2str(i+1),'*(1/3)*PdensityN/(rho_fuel)'...
        '+(rho_fuel*cp_fuel/k_fuel)','*((r',num2str(i+2),'*Tp',num2str(i+2),')/(r',num2str(i+2),...
        '-r',num2str(i+1),')+','(r',num2str(i),'*Tp',num2str(i),')/(r',num2str(i+1),'-r',num2str(i),...
        '))/(0.5*(r',num2str(i+2),'+r',num2str(i),'))'],k);
    else
        cfeq.setIndex('f',['-h_conv/k_fuel*T_flibe','+','Tp',num2str(i),'/(r',num2str(i+1),'-r',...
            num2str(i),')'],k);
    end
    end
    k=k+1;
end
% set intial condition for temperture
for i=2:region
    init.set(['Tp', num2str(i)], 900);
end

        
        
    
                

         
         
         
    
%  model.physics('htpb').feature('cfeq1').set('c', {'0' '0' '0' '0'; '0' '0' '0' '0'; '0' '0' '0' '0'; '0' '0' '0' '0'; '0' '0' '0' '0'; '0' '0' '0' '0'; '0' '0' '0' '0'; '0' '0' '0' '0'; '0' '0' '0' '0'});
% model.physics('htpb').feature('cfeq1').set('a', {'(4*pi*k_fuel)/((1/r1-1/r2)*V_zone)'; '0'; '0'; '0'; '(4*pi*k_fuel)/((1/r1-1/r2)*V_zone)+(4*pi*k_fuel)/((1/r2-1/r3)*V_zone)'; '0'; '0'; '0'; '(4*pi*k_fuel)/((1/r2-1/r3)*V_zone)+h_conv*pb_area/V_zone/pb_nb'});
% model.physics('htpb').feature('cfeq1').set('f', {'Tp2*4*pi*k_fuel/((1/r1-1/r2)*V_zone)+Pdensity'; 'Tpn*4*pi*k_fuel/((1/r2-1/r3)*V_zone)+Tp1*4*pi*k_fuel/((1/r1-1/r2)*V_zone)+Pdensity'; 'Tp2*4*pi*k_fuel/((1/r1-1/r2)*V_zone)+T_flibe*h_conv*pb_area/V_zone/pb_nb+Pdensity'});
% model.physics('htpb').feature('cfeq1').set('da', {'rho_fuel*cp_fuel'; '0'; '0'; '0'; 'rho_fuel*cp_fuel'; '0'; '0'; '0'; 'rho_fuel*cp_fuel'});
% model.physics('htpb').feature('init1').set('Tp2', '900');
% model.physics('htpb').feature('init1').set('Tp1', '900');
% model.physics('htpb').feature('init1').set('Tpn', '900');