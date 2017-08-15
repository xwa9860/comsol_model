% stores and plot the result of mesh refinement study for TMSR

% sp3 3d
%DOF_lin = [63668 104390 289256 1026850];
%lambda_lin = [0.97331645937931 0.9719628480208382 0.9712241278862939 0.9707303115456213];
close all;
% diffusion 3d
labels = [ "coarse" "normal" "fine" "finer" "extra fine"]
DOF_lin = [14588 40390 66430 184072 653702 1242626]
lambda_lin = [0.9768165281376843 0.9734561513260596 0.9721826303552723 0.9714039091655888 0.9708833897638568 0.9707881992170532]
deltaK_lin = compute_rho(lambda_lin)

labels = ["extra coarse" "coarser" "coarse" "normal" "fine" "in between" "finer"]
DOF_qua = [20356 30590 104762 302218  996086 1415862];
lambda_qua = [0.9666157299402155 0.968242824763829 ...
    0.9702372673045825  0.970601695498837  0.9706306234476497 0.9706276691123495];
deltaK_qua = compute_rho(lambda_qua)
[ 65954 495922]
[ 0.9702717515136612 0.9706277448443164]
figure;
loglog(DOF_lin, deltaK_lin, 'k:o');
hold on;
loglog(DOF_qua, deltaK_qua, 'k-^');
%errorbar(flibe_temps, drho_flibe_serpent, 2E-5*ones(1, 5), 'k--+');
%plot(flibe_temps, drho_flibe_initial_XS, 'k:*');
% xlim([500 1600]);
% ylim([-0.015 0.025]);
title('Mesh refinement study');
ylabel('\Delta K_{eff}');
xlabel('DOF');
legend('Linear elements', 'Quadratic elements');
hold off;

function deltaK = compute_rho(lambda)
keff = 1./lambda;
deltaK = abs(keff-1/0.9706276691123495);
end