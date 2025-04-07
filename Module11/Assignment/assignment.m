% Angular frequency range in rad/s
f = linspace(1, 1000, 100);  % Avoid starting from 0 to prevent division by zero
omega = 2 * pi .* f;
% Given parameters
tau1 = 81;
tau2 = 900;
E1 = 0.5;
E2 = 0.5;

% Precompute for efficiency
omega2 = omega.^2;

% G' (Storage Modulus)
G_prime = E1 * (tau1^2 * omega2) ./ (1 + tau1^2 * omega2) + ...
          E2 * (tau2^2 * omega2) ./ (1 + tau2^2 * omega2);

% G'' (Loss Modulus)
G_double_prime = E1 * (tau1 * omega) ./ (1 + tau1^2 * omega2) + ...
                 E2 * (tau2 * omega) ./ (1 + tau2^2 * omega2);

% Plot
tiledlayout(2,1, 'Padding','loose', 'TileSpacing','loose');

% Storage Modulus
nexttile
plot(omega, G_prime, '-o', 'LineWidth', 2, 'Color', "g");
xlabel('w', 'FontSize', 24,'FontWeight','bold'); % Label for the x-axis
ylabel("G' Storage Modulus", 'FontSize', 24,'FontWeight','bold'); % Label for the y-axis
title("G', Storage Modulus vs. $W = 2\pi f$ for low-MW Hydrogel (35 kDa)", ...
    'FontSize', 24, 'FontWeight', 'bold', 'Interpreter', 'latex');
grid on;
ax = gca;
ax.XAxis.FontSize = 18;
ax.YAxis.FontSize = 18;
ax.XAxis.FontWeight = 'bold';
ax.YAxis.FontWeight = 'bold';

% Loss Modulus
nexttile
plot(omega, G_double_prime, '-o', 'LineWidth', 2, 'Color', "r");
xlabel('w', 'FontSize', 24,'FontWeight','bold'); % Label for the x-axis
ylabel('G" Loss Modulus', 'FontSize', 24,'FontWeight','bold'); % Label for the y-axis
title('G'', Loss Modulus vs. $W = 2\pi f$ for low-MW Hydrogel (35 kDa)', ...
    'FontSize', 24, 'FontWeight', 'bold', 'Interpreter', 'latex');
grid on;
ax = gca;
ax.XAxis.FontSize = 18;
ax.YAxis.FontSize = 18;
ax.XAxis.FontWeight = 'bold';
ax.YAxis.FontWeight = 'bold';