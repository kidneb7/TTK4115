% -- TTK4115 Linear System Theory -- %
% -- Boat lab -- %
% -- Group 23, L. Sandberg, S. Olsen, B. Austnes -- %

% p5p1c %

% Common init
run('../Common files/init.m');

% Simulation
simtime = 10000;
sim('p5p1c');

% Plots
figure(1);
plot(simout, 'LineWidth', 1);
grid on;
xlabel('Time [s]', 'Interpreter','latex');
ylabel('Angle [deg]', 'Interpreter','latex');
title('');
legend('\psi + \psi_\omega', 'Interpreter', 'latex');