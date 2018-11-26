% Plotman


figure(1);
plot(simout);
grid on;
xlabel('Time [s]', 'Interpreter','latex');
ylabel('$\psi$ [deg]', 'Interpreter','latex');
title('');
legend('\psi', 'Interpreter', 'latex');