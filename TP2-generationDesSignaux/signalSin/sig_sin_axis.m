
% sig_sin.m - Signal sinusoïdal échantillonné en rajoutant axis

fe = 1000;                    % Fréquence d’échantillonnage
t = -10:1/fe:10;              % Axe temporel
f0 = 100;                     % Fréquence du signal
x = sin(2 * pi * f0 * t);     % Signal sinusoïdal

figure(6);
plot(t, x);                   % Affichage en "échantillons"
grid on;
xlabel('Temps (s)');
ylabel('Amplitude (V)');
title('Signal sinusoïdal échantillonné');
axis([-0.01 0.01 -1.2 1.2]);  % Zoom sur 2 périodes
