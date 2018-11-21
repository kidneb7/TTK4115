% FOR HELICOPTER NR 3-10
% This file contains the initialization for the helicopter assignment in
% the course TTK4115. Run this file before you execute QuaRC_ -> Build 
% to build the file heli_q8.mdl.

% Oppdatert høsten 2006 av Jostein Bakkeheim
% Oppdatert høsten 2008 av Arnfinn Aas Eielsen
% Oppdatert høsten 2009 av Jonathan Ronen
% Updated fall 2010, Dominik Breu
% Updated fall 2013, Mark Haring
% Updated spring 2015, Mark Haring

close_system();
run('../Common files/init.m');

%%%%%%%%%%% Calibration of the encoder and the hardware for the specific
%%%%%%%%%%% helicopter
Joystick_gain_x = 0.8;
Joystick_gain_y = -1;

%%%%%%%%%% Matrix
 
A = [0 1 0;
     0 0 0;
     0 0 0];

B = [0 0;
     0 K_1;
     K_2 0];
 
 C = [1 0 0;
    0 0 1];
 
Co = ctrb(A, B); 

Q = [20 0 0; % pitch
     0 20 0; % pitchrate
     0 0 20]; % elev-rate
 
R = [0.05 0; % Vs
     0 0.1]; % Vd

 
 % Feedforwad A_ with K = 0
 
 A_ = [A zeros(3,2);
       C zeros(2,2)];
   
B_ = [B;
      zeros(2,2)];
  
K = lqr(A, B, Q, R);

P_p = inv(C * inv(B*K - A) * B);

%%%%%%%%% Prob 4.2 

 A_est = [0 1 0 0 0 0;
          0 0 0 0 0 0;
          0 0 0 1 0 0;
          0 0 0 0 0 0;    
          0 0 0 0 0 1;
         K_3 0 0 0 0 0];

B_est = [0 0;
         0 K_1;
         0 0;
         K_2 0;
         0 0;
         0 0];
 
 C_est = [1 0 0 0 0 0;
    0 0 1 0 0 0;
    0 0 0 0 1 0];

O_est = obsv(A_est, C_est);
rank_O_est = rank(O_est);

%%%%%%%%% 

% Find poles of the system
pol_sys = eig(A - B * K);

% Place poles of estimator
max_pol_sys = max(abs(pol_sys));
pol_est = 10 * max_pol_sys * [-1, -2, -3, -4, -5, -6];

L = place(A_est.', C_est.', pol_est).';

%figure(1);
%plot(simout.time, [simout.signals.values]);

run('P4p2');
