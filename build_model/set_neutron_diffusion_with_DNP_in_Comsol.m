%% Set cross section expressions in COMSOL neutron diffusion equation
init = model.physics('neutrondiffusion').feature('init1');
cfeq = model.physics('neutrondiffusion').feature('cfeq1');

% The matrices contain two parts: neutron transport(NT) equations and delayed neutron(DN) equations
if sp3
    NT_nb = 2*gnb;
else
    NT_nb = gnb;
end

%% set matrix 'a' in comsol: absorption&scattering&fission
k=0;


for i = 1:NT_nb+dnb % column number
    for j=1:NT_nb+dnb %line number
        if i<=gnb && j<=gnb
            %upper left part of the matrix
            if i == j
                if dimNb ==2
                    cfeq.setIndex('a', ['(rem', num2str(i), '-(1-beta1)*chip', num2str(j),'*nsf', num2str(i), '*lambda)*r'], k); 
                elseif dimNb ==3
                    cfeq.setIndex('a', ['(rem', num2str(i), '-(1-beta1)*chip', num2str(j),'*nsf', num2str(i), '*lambda)'], k); 
                end
            else
                 if dimNb == 2
                     cfeq.setIndex('a', ['(-scat', num2str(j),num2str(i), '-(1-beta1)*chip', num2str(j),'*nsf', num2str(i), '*lambda)*r'] , k);
                 elseif dimNb ==3
                     cfeq.setIndex('a', ['(-scat', num2str(j),num2str(i), '-(1-beta1)*chip', num2str(j),'*nsf', num2str(i), '*lambda)'] , k);
 
                 end
            end
        end
        if sp3 && i<=gnb && j>gnb && j<=NT_nb
            %lower left
            if i == j-gnb
                if dimNb ==2
                    cfeq.setIndex('a', ['-2/5.0*(rem', num2str(i), '-(1-beta1)*chip', num2str(j-gnb),'*nsf', num2str(i), '*lambda)*r'], k); 
                elseif dimNb ==3
                    cfeq.setIndex('a', ['-2/5.0*(rem', num2str(i), '-(1-beta1)*chip', num2str(j-gnb),'*nsf', num2str(i), '*lambda)'], k);
                end                    
            else
                 if dimNb ==2
                     cfeq.setIndex('a', ['-2/5.0*(-scat', num2str(j-gnb),num2str(i), '-(1-beta1)*chip', num2str(j-gnb),'*nsf', num2str(i), '*lambda)*r'] , k);
                 elseif dimNb ==3
                     cfeq.setIndex('a', ['-2/5.0*(-scat', num2str(j-gnb),num2str(i), '-(1-beta1)*chip', num2str(j-gnb),'*nsf', num2str(i), '*lambda)'] , k);
                 end                  
            end             
        end
        if sp3 && j<=gnb && gnb<i && i<=NT_nb
            %upper right
            cfeq.setIndex('a', ...
              num2str(0), k);           
        end
        if sp3 && gnb<i && i<=NT_nb && gnb<j && j<=NT_nb
            %lower right part of the matrix
            if i == j
                if dimNb ==2
                cfeq.setIndex('a', ...
                ['tot',num2str(i-gnb),'*r'],  k);
                elseif dimNb ==3
                 cfeq.setIndex('a', ...
                ['tot',num2str(i-gnb)],  k);
                end                   
            else
              cfeq.setIndex('a', ...
              num2str(0), k);
            end
        end
        if i>NT_nb && j>NT_nb
            if i == j
            cfeq.setIndex('a', ...
              ['lambdas',num2str(i-NT_nb)], k);
            end
        end
        k=k+1;
    end
end

%% set matrix 'da' in comsol
k=0;
for i = 1:NT_nb+dnb 
    for j = 1:NT_nb+dnb
        if i<=gnb && j<=gnb
            if i == j
                if dimNb ==2
                    cfeq.setIndex('da', ['invV', num2str(i), '*r*eigenMode'] , k);
                else
                    cfeq.setIndex('da', ['invV', num2str(i), '*eigenMode'] , k);
                end
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
for i =1:NT_nb+dnb %column number
    for j=1:NT_nb+dnb %line number
        if dimNb == 2
            cfeq.setIndex('c', ...
            {num2str(0), num2str(0)},  k);
        elseif dimNb ==3
            cfeq.setIndex('c', ...
            {num2str(0), num2str(0), num2str(0)},  k);
        end
        if i<=gnb && j<=gnb && i==j
            if dimNb == 2
                cfeq.setIndex('c', ...
                    {['diff1', num2str(j), '*r'],...
                     ['diff1', num2str(j), '*r']},  k);
            elseif dimNb == 3
                cfeq.setIndex('c', ...
                    {['diff1', num2str(j)],...
                     ['diff1', num2str(j)],...
                     ['diff1', num2str(j)]},  k);
            end
        end
        if sp3 && gnb<i  && i<=NT_nb && j<=gnb && j==(i-gnb)
            if dimNb == 2
                 cfeq.setIndex('c', ...
                    {['2*diff1', num2str(i-gnb), '*r'],...
                     ['2*diff1', num2str(i-gnb), '*r']},  k);
            elseif dimNb ==3
                 cfeq.setIndex('c', ...
                    {['2*diff1', num2str(i-gnb)],...
                     ['2*diff1', num2str(i-gnb)],...
                     ['2*diff1', num2str(i-gnb)]},  k); 
            end
        end      
        if sp3 && i >gnb && i<=NT_nb && j>gnb && j<=NT_nb && i==j 
            if dimNb == 2
                 cfeq.setIndex('c', ...
                    {['diff2', num2str(j-gnb), '*r'],...
                     ['diff2', num2str(j-gnb), '*r']},  k);
            elseif dimNb ==3
                  cfeq.setIndex('c', ...
                    {['diff2', num2str(j-gnb)],...
                     ['diff2', num2str(j-gnb)],...
                     ['diff2', num2str(j-gnb)]},  k);
            end
        end  
            
    k=k+1;
    end
end

%% set matrix f and ea
k=0;
for i =1:NT_nb+dnb
    if i<=gnb
        if dimNb ==2
            cfeq.setIndex('f', ['chid', num2str(i), '*lambda*sumDelayedN*r'], k);
        elseif dimNb ==3
            cfeq.setIndex('f', ['chid', num2str(i), '*lambda*sumDelayedN'], k);
        end    
        cfeq.setIndex('ea', num2str(0), k);
    else
        if sp3 && i<=NT_nb
            cfeq.setIndex('f', num2str(0), k);
%             cfeq.setIndex('f', ['2.0/5.0*(CS2', num2str(i-gnb), '*Flux0', num2str(i-gnb),...
%                 '-chid', num2str(i), '*lambda*sumDelayedN*r'], k);
            cfeq.setIndex('ea', num2str(0), k);
        else
        cfeq.setIndex('f', ['betas', num2str(i-NT_nb),'*sumN'], k);  
        cfeq.setIndex('ea', num2str(0), k);
        end
    end
    k=k+1;
end

%% set initial values for Flux and Conc
for i=1:gnb
    if sp3
        init.set(['Flux', num2str(i)], 1);
        init.set(['Flux2', num2str(i)], 1);
    else
    init.set(['Flux', num2str(i)], 1);
    end
end

for j=1:dnb
    init.set(['Conc', num2str(j)], 1);
end

