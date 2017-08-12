% stores and plot the result of mesh refinement study for TMSR
DOF_lin = [4410 9366 14588 40516, 66430 ];
lambda_lin = [0.988 0.9797 0.97682 0.97356 0.97218 ];
rho_lin = compute_rho(lambda_lin)


DOF_qua = [303506 104762 66052 30590 20356];
lambda_qua = [0.9706 0.97024 0.97027 0.96824 0.9662];
rho_qua = compute_rho(lambda_qua)


figure;
semilogx(DOF_lin, rho_lin, 'k:o');
hold on;
semilogx(DOF_qua, rho_qua, 'k-^');
%errorbar(flibe_temps, drho_flibe_serpent, 2E-5*ones(1, 5), 'k--+');
%plot(flibe_temps, drho_flibe_initial_XS, 'k:*');
% xlim([500 1600]);
% ylim([-0.015 0.025]);
title('Mesh refinement study');
ylabel('Reactivity');
xlabel('DOF');
legend('Linear elements', 'Quadratic elements');
hold off;

function rho = compute_rho(lambda)
keff = 1./lambda;
rho = (keff-1)./keff;
end