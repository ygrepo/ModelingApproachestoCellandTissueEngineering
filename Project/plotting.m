% Parameters
alpha = 3;         % cell polarizability
kc = 1;            % cell stiffness (arbitrary units)
ktilde_c = (1 + alpha) * kc;

% Range of ECM stiffness (km)
km = logspace(-2, 2, 500); % from 0.01 to 100 (log scale)
%km = 0:10:100;
% Compute fa/f0
fa_over_f0 = alpha .* km ./ (ktilde_c + km);

% Plotting
figure;
plot(km, fa_over_f0, 'LineWidth', 2);
set(gca, 'XScale', 'log');
xlabel('Matrix Stiffness k_m (log scale)', 'FontWeight', 'bold', 'FontSize', 24);
ylabel('Normalized Active Force f^a / f^0', 'FontWeight', 'bold', 'FontSize', 24);
title('Saturation of Active Force with ECM Stiffness', 'FontWeight', 'bold', 'FontSize', 24);
grid on;
hold on;
yline(alpha, '--r', ['Saturation level (\alpha = ', num2str(alpha), ')']);
legend('f^a/f^0', 'Location', 'southeast');
hold off;