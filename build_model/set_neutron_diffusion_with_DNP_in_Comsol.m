%% Set cross section expressions in COMSOL neutron diffusion equation
init = model.physics('neutrondiffusion').feature('init1');
cfeq = model.physics('neutrondiffusion').feature('cfeq1');

%% set matrix 'a' in comsol: absorption&scattering&fission
k=0;
for i = 1:gnb+dnb
    for j=1:gnb+dnb
        if i<=gnb && j<=gnb
            if i == j
             cfeq.setIndex('a', ['(rem', num2str(i), '-(1-beta1)*chip', num2str(j),'*nsf', num2str(i), '*lambda)*r'], k);   
             else
             cfeq.setIndex('a', ['(-scat', num2str(j),num2str(i), '-(1-beta1)*chip', num2str(j),'*nsf', num2str(i), '*lambda)*r'] , k);
             end
        
        else
            if i==j
            cfeq.setIndex('a', ...
                ['lambdas', num2str(j-gnb)],  k);
        else
              cfeq.setIndex('a', ...
                num2str(0), k);
            end
            
        end
            k=k+1;
    end
end

%% set matrix 'da' in comsol
k=0;
for i = 1:gnb+dnb
    for j = 1:gnb+dnb
    if i<=gnb && j<=gnb
        if i == j
                cfeq.setIndex('da', ['invV', num2str(i), '*r*eigenMode'] , k);
        else
            cfeq.setIndex('da', num2str(0), k);
        end
    else
        if i == j
                cfeq.setIndex('da', 'eigenMode' , k);
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
             if i==j
                cfeq.setIndex('c', ...
                    {['diff', num2str(j), '*r'],...
                     ['diff', num2str(j), '*r']},  k);
            else
                  cfeq.setIndex('c', ...
                    {num2str(0), num2str(0)},  k);
             end
        else
             cfeq.setIndex('c', ...
                    {num2str(0), num2str(0)},  k);
        end
    k=k+1;
    end
end

%% set matrix f and ea to 0
k=0;

for i =1:gnb+dnb
    if i<=gnb
     cfeq.setIndex('f', ['chid', num2str(i), '*lambda*sumDelayedN*r'], k);
     cfeq.setIndex('ea', num2str(0), k);
    else
    cfeq.setIndex('f', ['betas', num2str(i-gnb),'*sumN'], k);  
    cfeq.setIndex('ea', num2str(0), k);
    end
    k=k+1;
end

%% set initial values for Flux and Conc
for i=1:gnb
    init.set(['Flux', num2str(i)], 1);
end

for j=1:dnb
    init.set(['Conc', num2str(j)], 1);
end

