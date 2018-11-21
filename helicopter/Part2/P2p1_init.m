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

run('../Common files/init.m');

%%%%%%%%%%% Controller gains
K_pp = 10;
K_pd =2*sqrt(K_pp/K_1) * 0.4;

run('P2p1');

%figure(1);
%plot(pitchh.time, [pitchh.signals.values]);
%grid on;