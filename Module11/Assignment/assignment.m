% Angular frequency range in rad/s
omega = linspace(1, 1000, 100);  % Avoid starting from 0 to prevent division by zero

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
title('Storage Modulus vs. W for low-MW Hydrogel (35 kDa)', 'FontSize', 24,'FontWeight','bold');

% 
% xlabel('\omega (rad/s)', 'FontSize', 20, 'FontWeight','bold');
% ylabel("G' Storage Modulus", 'FontSize', 20, 'FontWeight','bold');
% title('Storage Modulus vs. Angular Frequency', 'FontSize', 20, 'FontWeight','bold');
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
title('Loss Modulus vs. W for low-MW Hydrogel (35 kDa)', 'FontSize', 24,'FontWeight','bold');

% xlabel('\omega (rad/s)', 'FontSize', 20, 'FontWeight','bold');
% ylabel('G" Loss Modulus', 'FontSize', 20, 'FontWeight','bold');
% title('Loss Modulus vs. Angular Frequency', 'FontSize', 20, 'FontWeight','bold');
grid on;
ax = gca;
ax.XAxis.FontSize = 18;
ax.YAxis.FontSize = 18;
ax.XAxis.FontWeight = 'bold';
ax.YAxis.FontWeight = 'bold';


% % Frequency range in Hz
% f = 0.1:0.1:1;
% 
% % Convert to angular frequency in rad/s
% omega = f;
% %omega = 2 * pi * f;
% 
% % Given parameters
% tau1 = 81;
% tau2 = 900;
% E1 = 0.5;
% E2 = 0.5;
% 
% % Precompute for efficiency
% omega2 = omega.^2;
% 
% % G' (Storage Modulus)
% G_prime = E1 * (tau1^2 * omega2) ./ (1 + tau1^2 * omega2) + ...
%           E2 * (tau2^2 * omega2) ./ (1 + tau2^2 * omega2);
% 
% % G'' (Loss Modulus)
% G_double_prime = E1 * (tau1 * omega) ./ (1 + tau1^2 * omega2) + ...
%                  E2 * (tau2 * omega) ./ (1 + tau2^2 * omega2);
% 
% %figure('Position', [100, 100, 800, 600]);
% 
% %hold on;
% 
% 
% tiledlayout(2,1, 'Padding','loose', 'TileSpacing','loose');
% nexttile
% 
% xlabel('Frequency (Hz)', 'FontSize', 24,'FontWeight','bold'); % Label for the x-axis
% ylabel("G' Storage Modulus", 'FontSize', 24,'FontWeight','bold'); % Label for the y-axis
% title('Storage Modulus vs. Frequency for low-MW Hydrogel (35 kDa)', 'FontSize', 24,'FontWeight','bold');
% hold on;
% plot(f, G_prime, '-o', 'LineWidth', 2, 'Color', "g");
% hold on;
% xticks(f);
% hold on;
% %yticks(0.9:0.005:1)
% ax = gca;
% fontSize = 24;
% ax.XAxis.FontSize = fontSize;
% ax.XAxis.FontWeight = 'bold';
% ax.YAxis.FontSize = fontSize;
% ax.YAxis.FontWeight = 'bold';
% 
% nexttile
% 
% xlabel('Frequency (Hz)', 'FontSize', 24,'FontWeight','bold'); % Label for the x-axis
% ylabel('G" Loss Modulus', 'FontSize', 24,'FontWeight','bold'); % Label for the y-axis
% title('Loss Modulus vs. Frequency for low-MW Hydrogel (35 kDa)', 'FontSize', 24,'FontWeight','bold');
% hold on;
% plot(f, G_double_prime, '-o', 'LineWidth', 2, 'Color', "r");
% 
% hold on;
% xticks(f);
% hold on;
% %yticks(0.001:0.002:0.015)
% ax = gca;
% fontSize = 24;
% ax.XAxis.FontSize = fontSize;
% ax.XAxis.FontWeight = 'bold';
% ax.YAxis.FontSize = fontSize;
% ax.YAxis.FontWeight = 'bold';