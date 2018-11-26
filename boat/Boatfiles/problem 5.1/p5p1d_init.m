% -- TTK4115 Linear System Theory -- %
% -- Boat lab -- %
% -- Group 23, L. Sandberg, S. Olsen, B. Austnes -- %

% p5p1d %

% Common init
run('../Common files/init.m');

% Simulation
simtime = 1000;
h_ship = tf(K, [T 1 0]);
sim('p5p1d');

% Plots
figure(1);
plot(simout, 'LineWidth', 1);
grid on;
xlabel('Time [s]', 'Interpreter','latex');
ylabel('Angle [deg]', 'Interpreter','latex');
title('');
legend('Ship', 'Model', 'Location', 'best');
