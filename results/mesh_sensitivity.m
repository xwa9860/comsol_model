function mesh_refinement
% run the model with comsol generated mesh at different refinement levels:
% normal, fine, finer, extra fine, extremely fine,
eigens_quad = [0.96998, 0.97001, 0.96999,  0.97000, 0.97003, 0.97004];
dof_quad = [23708, 3025, 11546,   6106, 1615, 1270];

eigens_linear = [0.97, 0.97, 0.96998, 0.96993, 0.97, 0.97, 0.96996];
dof_linear = [23708, 6106, 1615, 1026, 3911, 2682, 1270];
max_elemt_size = [0.01, 0.04, 0.08, 0.1, 0.05, 0.06, 0.09];

calc_delta_keff(dof_quad, eigens_quad);
%hold on 
%calc_delta_keff(dof_linear, eigens_linear);
%hold off
%legend('quadratic', 'linear')
    function calc_delta_keff(dofs, eigens)
        keffs = 1.0 ./eigens;
        rhos = (keffs - 1) ./ keffs;
        drhos = abs(rhos - rhos(1));
        loglog(dofs, drhos, '*')
        xlabel('DOF')
        ylabel('keff-keff_{ref}')
    end
end