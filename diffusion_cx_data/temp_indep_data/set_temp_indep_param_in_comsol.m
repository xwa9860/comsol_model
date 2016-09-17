%% load the COMSOL model 'diffusion_coupled' and set cross section expressions in COMSOL diffusion equation

model = mphopen('diffusion_coupled');
cfeq = model.physics('neutrondiffusion').feature('cfeq1');
% %% energy group number
gnb=8;
% %% set matrix 'a' in comsol: absorption&scattering&fission
k=0;

for i = 1:gnb 
    for j=1:gnb 
        if i == j
            if dimNb == 3
            cfeq.setIndex('a', ['(rem1', num2str(i), '-chi1', num2str(j),'*nsf1', num2str(i), '*lambda)'], k);
            else
             cfeq.setIndex('a', ['(rem1', num2str(i), '-chi1', num2str(j),'*nsf1', num2str(i), '*lambda)*r'], k);   
            end
        else
             if dimNb ==3
                cfeq.setIndex('a', ['(-scat', num2str(j),num2str(i), '-chi1', num2str(j),'*nsf1', num2str(i), '*lambda)'] , k);
             else
                cfeq.setIndex('a', ['(-scat', num2str(j),num2str(i), '-chi1', num2str(j),'*nsf1', num2str(i), '*lambda)*r'] , k);
             end
        end
        k=k+1;
    end
end   

%%
% set matrix 'da' in comsol
k=0;
for i = 1:gnb
    for j = 1:gnb
        if i == j
            if dimNb == 2
                cfeq.setIndex('da', ['invV1', num2str(i), '*r*engenMode'] , k);
            else
                cfeq.setIndex('da', ['invV1', num2str(i), '*engenMode'] , k);    
            end
        else
            cfeq.setIndex('da', num2str(0), k);
        end
        k=k+1;
    end
end
            
        
%% set matrix 'c': diffusion coefficients
k=0;
for i =1:gnb
    for j=1:gnb
        if dimNb == 3
            if i==j

                cfeq.setIndex('c', ...
                    {['c1', num2str(j)],...
                     ['c1', num2str(j)],...
                     ['c1', num2str(j)]},  k);
            else
                  cfeq.setIndex('c', ...
                    {num2str(0),num2str(0), num2str(0)},  k);
            end
        else %if dimNb==2
             if i==j

                cfeq.setIndex('c', ...
                    {['c1', num2str(j), '*r'],...
                     ['c1', num2str(j), '*r']},  k);
            else
                  cfeq.setIndex('c', ...
                    {num2str(0), num2str(0)},  k);
            end
        end
    k=k+1;
    end
end
% 
%% set matrix f and ea to 0
k=0;

for i =1:gnb
     cfeq.setIndex('f', num2str(0), k);
     cfeq.setIndex('ea', num2str(0), k);
    k=k+1;
end

