% -- TTK4115 Linear System Theory -- %
% -- Boat lab -- %
% -- Group 23, L. Sandberg, S. Olsen, B. Austnes -- %

% p5p5f %
% This task has been split into two separate files, denoted d and e
% This file is not included in the lab hand in, although it has been
% extensively used in this task.

clear all;

% Common init
run('../Common files/init.m');

% Constants
w0 = 0.7823;                % Omega_0 from p5p2
l = 0.0791;                 % Lambda from p5p2
sig = sqrt(0.007919);       % sigma = sqrt(sigma^2) from p5p2

K_w = 2*l*w0*sig;           % K_omega from p5p2

% CT state space model
A = [0 1 0 0 0 ; 
     -w0^2 -2*l*w0 0 0 0 ;
     0 0 0 1 0 ;
     0 0 0 -1/T -K/T;
     0 0 0 0 0];
 
 B = [0 0 0 K/T 0].';
 
 D = 0;
 
 E = [0 0;
     K_w 0;
     0 0;
     0 0;
     0 1];
 
 C = [0 1 1 0 0];
 
% Discretizing the CT model
Ts = 0.10;                      % Sampling time 0.1 s - sampling frequency 10 Hz
sysd = c2d(ss(A, B, C, D), Ts); % ZOH discretization
A_d = sysd.A; B_d = sysd.B; C_d = sysd.C;
sysd = c2d(ss(A, E, C, D), Ts); % ZOH discretization, with E as input
E_d = sysd.B;

% --! Discrete Kalman Filter !-- %

% Q and R matrices
% Change Q matrix here
Q = 0*10^(-3) * [30 0;
    0 10^(-6)];

Q_d = E_d * Q * E_d.';
R_d = 6.0236 * 10^(-6);

D_d = D;

% Struct for MATLAB function input
disc_struct = struct('A_d', A_d, 'B_d', B_d, 'C_d', C_d, 'D_d', D_d, 'E_d', E_d, 'Q_d', Q_d, 'R_d', R_d);

% PD controller %
Wc = 0.100;                                 % Critical frequency
Pm = 50;                                    % Phase margin

T_d = T;                                    % Cancels the time constant in H_ship
T_f = 1/(Wc * tan((Pm - 180)*pi/180));      % 8.3910

K_pd = (1/K) * sqrt(T_f^2 * Wc^4 + Wc^2);   % 0.8370
H_pd = K_pd * tf([T_d 1], [T_f 1]);

reg_sys = H_pd;

% Simulation %
% Vectors for extracting estimated states
K_psi = [0 0 1 0 0];
K_bias = [0 0 0 0 1];
K_wave = [0 1 0 0 0];

ref = 30;           % Reference heading
simtime = 6 * T;
sim('p5p5f_e');

% Plots
figure(2);
subplot(2, 1, 1);
plot(simout, 'LineWidth', 1);
grid on;
xlabel('Time [s]', 'Interpreter','latex');
ylabel('Angle [deg]', 'Interpreter','latex');
title('');
legend('$\hat{\psi}$', '$\psi_r$', '\psi + \psi_\omega', '\psi + \psi_\omega *');
hold on;

subplot(2, 1, 2);
plot(simout1, 'LineWidth', 1);
grid on;
xlabel('Time [s]', 'Interpreter','latex');
ylabel('Angle [deg]', 'Interpreter','latex');
title('');
legend('\delta', 'b_{est}', 'Rudder*', 'Interpreter', 'latex');
hold on;

% Actual wave input and wave estimate plots

% figure(3);
% plot(simout2, 'LineWidth', 1);
% grid on;
% xlabel('Time [s]', 'Interpreter', 'latex');
% ylabel('Angle [deg]', 'Interpreter', 'latex');
% title('');
% legend('\psi_\omega', '\psi_{est}');