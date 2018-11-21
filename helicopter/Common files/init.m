% -- GROUP 23, TTK4115 2018H -- %
% -- Austnes, Olsen, Sandberg -- %
% -- HELICOPTER 8 -- %

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

clear all;

%%%%%%%%%%% Calibration of the encoder and the hardware for the specific
%%%%%%%%%%% helicopter
Joystick_gain_x = 0.8;
Joystick_gain_y = -1;
Elevation_offset = 30;  % e* [deg]
Pitch_offset = 0;       % p* [deg]
Travel_offset = 0;      % l* [deg]


%%%%%%%%%%% Physical constants
g = 9.81;       % gravitational constant [m/s^2]
l_c = 0.46;     % distance elevation axis to counterweight [m]
l_h = 0.66;     % distance elevation axis to helicopter head [m]
l_p = 0.175;    % distance pitch axis to motor [m]
m_c = 1.92;     % Counterweight mass [kg]
m_p = 0.72;     % Motor mass [kg]


%%%%%%%%%%% System constants

V_s_meas = 7;                                   % [V]
Kf = (2*l_h*m_p - l_c*m_c)*g / (l_h*V_s_meas);  % [N/V]

K_1 = Kf/(2*m_p*l_p);
K_2 = (Kf*l_h)/(m_c * l_c^2 + 2 * m_p * l_h^2);
K_3 = (l_c*m_c - 2*l_h * m_p)*g/(m_c*(l_c)^2 + 2* m_p*((l_h)^2 + (l_p)^2));