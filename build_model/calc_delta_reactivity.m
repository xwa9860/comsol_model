function drho = delta_reactivity(eigens, flag)
% TESTED
% compute delta reactivity compare to the reference reactivity from
% eigenvalues that comsol calculates
if strcmp(flag, 'COMSOL')
    keffs = 1.0 ./eigens;
else
    keffs = eigens;
end

rhos = (keffs - 1) ./ keffs;
drho = rhos - rhos(3);
    
    
% test
%eigs = [1, 2, 3, 4]
%dr = delta_reactivity(eigs)