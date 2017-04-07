% run the model with comsol generated mesh at different refinement levels:
% normal, fine, finer, extra fine, extremely fine,
eigens = [0.97001, 0.96999, 0.96998, 0.97000, 0.97003];
dof = [3025, 11546,  12063,  6106, 1615]

keffs = 1.0 ./eigens;
rhos = (keffs - 1) ./ keffs;
drhos = abs(rhos - rhos(3));
loglog(dof, drhos, '*')
xlabel('log(DOF)')
ylabel('keff-keff_{ref}')