% -- TTK4115 Linear System Theory -- %
% -- Boat lab -- %
% -- Group 23, L. Sandberg, S. Olsen, B. Austnes -- %

% p5p3c %

clear all;

% Common init
run('../Common files/init.m');

% Init H_ship to sys model from the common init file
H_ship = sys; 

% P controller %
K_p = 0.1;
H_p = K_p;

% PD controller %
Wc = 0.100;                                 % Critical frequency
Pm = 50;                                    % Phase margin

T_d = T;                                    % Cancels the time constant in H_ship
T_f = 1/(Wc * tan((Pm - 180)*pi/180));      % 8.3910

K_pd = (1/K) * sqrt(T_f^2 * Wc^4 + Wc^2);   % 0.8370
H_pd = K_pd * tf([T_d 1], [T_f 1]);

% Simulation
reg_sys = H_pd;         % Choose controller (H_p | H_pd)
H_0 = reg_sys * H_ship; % Open loop system

% Plots
figure(1);
margin(H_0);

ref = 30;           % Reference heading
simtime = 6 * T;
sim('p5p3c');

% Plots
figure(2);
subplot(2, 1, 1);
plot(simout, 'LineWidth', 1);
grid on;
xlabel('Time [s]', 'Interpreter','latex');
ylabel('Angle [deg]', 'Interpreter','latex');
title('');
legend('\psi', '\psi_r');
hold on;

subplot(2, 1, 2);
plot(simout1, 'LineWidth', 1);
grid on;
xlabel('Time [s]', 'Interpreter','latex');
ylabel('Rudder angle [deg]', 'Interpreter','latex');
title('');
legend('\delta');
hold on;