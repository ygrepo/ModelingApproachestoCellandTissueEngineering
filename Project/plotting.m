% Parameters
alpha = 3;         % cell polarizability
kc = 1;            % cell stiffness (arbitrary units)
ktilde_c = (1 + alpha) * kc;

% Range of ECM stiffness (km)
km = logspace(-2, 2, 500); % from 0.01 to 100 (log scale)

% Compute fa/f0
fa_over_f0 = alpha .* km ./ (ktilde_c + km);

% Plotting
figure;
plot(km, fa_over_f0, 'LineWidth', 2);
set(gca, 'XScale', 'log');
xlabel('Matrix Stiffness k_m (log scale)', 'FontSize', 12);
ylabel('Normalized Active Force f^a / f^0', 'FontSize', 12);
title('Saturation of Active Force with ECM Stiffness', 'FontSize', 14);
grid on;
hold on;
yline(alpha, '--r', ['Saturation level (\alpha = ', num2str(alpha), ')']);
legend('f^a/f^0', 'Location', 'southeast');
hold off;
