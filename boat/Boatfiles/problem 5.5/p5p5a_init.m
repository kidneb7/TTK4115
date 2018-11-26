% -- TTK4115 Linear System Theory -- %
% -- Boat lab -- %
% -- Group 23, L. Sandberg, S. Olsen, B. Austnes -- %

% DELETE THIS FILE %

clear all;

% Common init
run('../Common files/init.m');

% Constants
w0 = 0.7823;                    % Omega_0 from p5p2
l = 0.0791;                     % Lambda from p5p2
sig = sqrt(0.007919);           % sigma = sqrt(sigma^2) from p5p2

K_w = 2*l*w0*sig;               % K_omega from p5p2

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
