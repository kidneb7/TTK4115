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
%clear all;
run('../Common files/init.m');

%%%%%%%%%%% Calibration of the encoder and the hardware for the specific
%%%%%%%%%%% helicopter
Joystick_gain_x = 1;
Joystick_gain_y = -1;

%%%%%%%%%% LQR

A = [0 1 0;
     0 0 0;
     0 0 0];

B = [0 0;
     0 K_1;
     K_2 0];
 
Co = ctrb(A, B); 

Q = [20 0 0;
     0 10 0;
     0 0 20];
 
R = [0.05 0;
     0 0.1];
 
 K = lqr(A, B, Q, R);

%%%%%%%%% Finding P

C = [1 0 0;
    0 0 1];

P = inv(C * inv(B*K - A) * B);

run('P3p2');

