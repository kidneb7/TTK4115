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

%%%%%%%%%% LQR with integral effect
 
A = [0 1 0;
     0 0 0;
     0 0 0];

B = [0 0;
     0 K_1;
     K_2 0];
 
 C = [1 0 0;
    0 0 1];
 
Co = ctrb(A, B); 

Q_ = [50 0 0 0 0; % pitch 40
     0 0.1 0 0 0; % pitchrate 0.1
     0 0 1 0 0; % elev-rate 70
     0 0 0 20 0; % pitch int 30
     0 0 0 0 70]; % elev-int 100
 
R_ = [1 0; % Vs
     0 1]; % Vd
 
 % Feedforwad A_ with K = 0
 
A_ = [A zeros(3,2);
       C zeros(2,2)];
   
B_ = [B;
      zeros(2,2)];
  

K_ = lqr(A_, B_, Q_, R_);

K_sliced = K_(1:2, 1:3);

P_i = inv(C * inv(B*K_sliced - A) * B);

%figure(1);
%plot(simout.time, [simout.signals.values]);
%grid on;

run('P3p3');
