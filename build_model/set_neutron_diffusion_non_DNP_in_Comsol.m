%% load the COMSOL model 'diffusion_coupled' and set cross section expressions in COMSOL diffusion equation

%model = mphopen('diffusion_coupled');
cfeq = model.physics('neutrondiffusion').feature('cfeq1');
init = model.physics('neutrondiffusion').feature('init1');

% %% set matrix 'a' in comsol: absorption&scattering&fission
k=0;
for i = 1:gnb+dnb
    for j=1:gnb+dnb
        if i<=gnb && j<=gnb
            
            if i == j
                
                if dimNb == 3
            cfeq.setIndex('a', ['(rem', num2str(i), '-chit', num2str(j),'*nsf', num2str(i), '*lambda)'], k);
                else
             cfeq.setIndex('a', ['(rem', num2str(i), '-chit', num2str(j),'*nsf', num2str(i), '*lambda)*r'], k);   
                end
                
            else
                
             if dimNb ==3
                cfeq.setIndex('a', ['(-scat', num2str(j),num2str(i), '-chit', num2str(j),'*nsf', num2str(i), '*lambda)'] , k);
             else
                cfeq.setIndex('a', ['(-scat', num2str(j),num2str(i), '-chit', num2str(j),'*nsf', num2str(i), '*lambda)*r'] , k);
             end
             
            end
            
        else
            if i==j
            cfeq.setIndex('a', ...
                ['lambdas', num2str(j)],  k);
        else
              cfeq.setIndex('a', ...
                num2str(0), k);
            end
        end
    end
        k=k+1;
end

    

%%
% set matrix 'da' in comsol
k=0;
for i = 1:gnb+dnb
    for j = 1:gnb+dnb
        if i<=gnb && j<=gnb
        if i == j
            if dimNb == 2
                cfeq.setIndex('da', ['invV', num2str(i), '*r*engenMode'] , k);
            else
                cfeq.setIndex('da', ['invV', num2str(i), '*engenMode'] , k);    
            end
        else
            cfeq.setIndex('da', num2str(0), k);
        end
        else
            if i == j
                cfeq.setIndex('da', 'engenMode' , k);
        else
            cfeq.setIndex('da', num2str(0), k);
            end
        end
        k=k+1;
    end
end
            
        
%% set matrix 'c': diffusion coefficients
k=0;
for i =1:gnb+dnb
    for j=1:gnb+dnb
      if i<=gnb && j<=gnb
        if dimNb == 3
            if i==j
                cfeq.setIndex('c', ...
                    {['diff', num2str(j)],...
                     ['diff', num2str(j)],...
                     ['diff', num2str(j)]},  k);
            else
                  cfeq.setIndex('c', ...
                    {num2str(0),num2str(0), num2str(0)},  k);
            end
        else %if dimNb==2
             if i==j
                cfeq.setIndex('c', ...
                    {['diff', num2str(j), '*r'],...
                     ['diff', num2str(j), '*r']},  k);
            else
                  cfeq.setIndex('c', ...
                    {num2str(0), num2str(0)},  k);
            end
        end
      else
          cfeq.setIndex('c', ...
                    {num2str(0), num2str(0)},  k);
      end
    k=k+1;
    end
end
% 
%% set matrix f and ea to 0
k=0;

for i =1:gnb+dnb
    if i<=gnb && j<=gnb
    cfeq.setIndex('f', num2str(0), k);
    cfeq.setIndex('ea', num2str(0), k);
    k=k+1;
    else
    cfeq.setIndex('f', ['betas', num2str(i),'*sumN'], k);  
    cfeq.setIndex('ea', num2str(0), k);
    end
end



