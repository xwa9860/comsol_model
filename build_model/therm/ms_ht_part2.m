%% multi-scale treatment to get the temperature profile inside a fuel pebble
model.physics.create('htpb_2', 'CoefficientFormPDE', 'geom1');
model.physics('htpb_2').identifier('htpb_2');
model.physics('htpb_2').field('dimensionless').field('Tpp');
model.physics('htpb_2').field('dimensionless').component({'Tp2' 'Tp3' 'Tp4'});
model.physics('htpb_2').selection.set([2]);

model.physics('htpb_2').label('Heat diffusion in pebble_part2');
model.physics('htpb_2').prop('Units').set('SourceTermQuantity', 'powerdensity');
model.physics('htpb_2').prop('Units').set('DependentVariableQuantity', 'temperature');
cfeq = model.physics('htpb_2').feature('cfeq1');
init = model.physics('htpb_2').feature('init1');


%% set matrix c
k=0;
for i=1:region-2
    for j=1:region-2
        cfeq.setIndex('c',{num2str(0), num2str(0)},k);
        k=k+1;
    end
end

%% set matrix a
k=0;
for i=1:region-2
    for j=1:region-2
        if i==j
            cfeq.setIndex('a', ['k_fuel*2/((r',num2str(i+2),'-r',num2str(i+1)...
                ')*(r',num2str(i+1),'-r',num2str(i),'))'],k);
        else
            cfeq.setIndex('a',num2str(0),k);
        end
%         else
%             if i==j
%            cfeq.setIndex('a',['(1','/(r',num2str(i+1),'-r',num2str(i),'))+','(h_conv/k_fuel)'],k);
%             else
%             cfeq.setIndex('a',num2str(0),k);  
%             end
%         end
        k=k+1;
    end
end

%% set matrix da
k=0;
for i=1:region-2
    for j=1:region-2
%         if i<=region-2 && j<=region-2
            if i==j
            cfeq.setIndex('da','eigenMode*rho_fuel*cp_fuel',k);
            else
            cfeq.setIndex('da',num2str(0),k);
            end
%         else
%            cfeq.setIndex('da',num2str(0),k);
%         end
        k=k+1;
    end
end
%% set matrix f
k=0;
for i=1:region-2
    if i==1
        cfeq.setIndex('f',[...
        '+(1/r',num2str(i+1),')','*k_fuel*(((r',num2str(i+2),'*Tp',num2str(i+2),')/(r',num2str(i+2),...
        '-r',num2str(i+1),...
        '))/(0.5*(r',num2str(i+2),'-r',num2str(i),')))'],k);
    else
    if i<=region-3
    cfeq.setIndex('f',[...
        '+(1/r',num2str(i+1),')','*k_fuel*((r',num2str(i+2),'*Tp',num2str(i+2),')/(r',num2str(i+2),...
        '-r',num2str(i+1),')+','(r',num2str(i),'*Tp',num2str(i),')/(r',num2str(i+1),'-r',num2str(i),...
        '))/(0.5*(r',num2str(i+2),'-r',num2str(i),'))'],k);
    else
        cfeq.setIndex('f',[...
        '+(1/r',num2str(i+1),')','*k_fuel*((r',num2str(i+2),...
        '*(((-h_conv/k_fuel)*T_flibe+Tp',num2str(i+1),'/(r',num2str(i+2),'-r',num2str(i+1),...
        '))/(1/(r',num2str(i+2),'-r',num2str(i+1),')-h_conv/k_fuel))',...
        ')/(r',num2str(i+2),...
        '-r',num2str(i+1),')+','(r',num2str(i),'*Tp',num2str(i),')/(r',num2str(i+1),'-r',num2str(i),...
        '))/(0.5*(r',num2str(i+2),'-r',num2str(i),'))'],k);
%         cfeq.setIndex('f',['h_conv/k_fuel*T_flibe','+','Tp',num2str(i),'/(r',num2str(i+1),'-r',...
%             num2str(i),')'],k);
    end
    end
    k=k+1;
end
% set intial condition for temperture
for i=2:region-1
    init.set(['Tp', num2str(i)], 900);
end