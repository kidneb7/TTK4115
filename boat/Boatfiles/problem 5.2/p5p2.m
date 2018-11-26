% -- TTK4115 Linear System Theory -- %
% -- Boat lab -- %
% -- Group 23, L. Sandberg, S. Olsen, B. Austnes -- %

% p5p2 %

clear all;

% Initialization %
load('..\wave.mat');

x = psi_w(2,:).*(pi/180);                   % Convert to rad
window = 4096;
fs = 10;                                    % Sampling frequency in Hz

[pxx, f] = pwelch(x, window, [], [], fs);

pxx_rad = pxx./(2*pi);
w = (f).*(2*pi);

[maxDensity, maxDensityIndex] = max(pxx_rad);
w_0 = w(maxDensityIndex);                   % Find vector entry equal to index
variance = maxDensity;

% Model

lambda = linspace(0,1,0.001);
sigma = sqrt(variance);
l = 1;

% Anonymous function
P = @(l, w) ((w.^2*(2*l*w_0*sigma).^2)./((w_0.^2 - w.^2).^2 + (2*l*w_0*w).^2));

l_est = lsqcurvefit(P, l, w.', pxx_rad.');

% Plots
plot(w, pxx_rad, 'LineWidth',2);
hold on;
plot(w, P(l_est, w), 'LineWidth',2);
hold on;
line_1 = line([w_0 w_0], [0 variance], 'Color', [0.2 0.4 0.1], 'Linestyle', '--', 'LineWidth', 1.5);
plot(w(maxDensityIndex),pxx_rad(maxDensityIndex), 'rs','LineWidth',0.8,'MarkerEdgeColor','k','MarkerFaceColor','y','MarkerSize',10);
xlim([0 pi/2]);
grid on;
title('');
xlabel('$\frac{rad}{s}$', 'Interpreter','latex');
ylabel('$S_{\psi_{\omega}}(\omega) (\frac{s}{rad})$', 'Interpreter','latex');
hasbehavior(line_1, 'legend', false);
legend('estimated PSD', 'curvefit', '$\hat{\omega_0}$', 'Interpreter', 'latex');
set(gca, 'XTick', 0:pi/8:pi/2);
set(gca, 'XTickLabel', {'$0$','$\frac{\pi}{8}$','$\frac{\pi}{4}$', '$\frac{3\pi}{8}$', '$\frac{\pi}{2}$'});
g = gca;
g.TickLabelInterpreter = 'latex';
g.FontSize = 12;
hold off;