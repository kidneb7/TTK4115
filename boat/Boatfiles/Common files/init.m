% -- TTK4115 Linear System Theory -- %
% -- Boat lab -- %
% -- Group 23, L. Sandberg, S. Olsen, B. Austnes -- %

% Init file %

a1_pk = 58.68;      % Measured pk-pk psi w1
a1 = a1_pk / 2;     % Amplitude psi w1
a2_pk = 1.666;      % Measured pk-pk psi w2
a2 = a2_pk / 2;     % Amplitude psi w2
w1 = 0.005;
w2 = 0.05;

% Model constants
T = sqrt((a1^2 * w1^2 - a2^2 * w2^2)/(a2^2 * w2^4 - a1^2 * w1^4));  % 72.17
K = a1 * w1 * sqrt(T^2 * w1^2 + 1);                                 % 0.15

% Model TF
sys = tf(K, [T 1 0]);