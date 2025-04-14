% sawtooth_signal.m - Signal dent de scie (avec Signal Processing Toolbox)

f0 = 100;                       % Fréquence du signal
fe = 1000;                      % Fréquence d’échantillonnage
t = -0.01:1/fe:0.01;            % Deux périodes (T = 1/f0 = 0.01s)

x = sawtooth(2 * pi * f0 * t);  % Signal dent de scie entre -1 et 1

figure(8);
plot(t, x, 'LineWidth', 2);     % Affichage en ligne continue
grid on;
xlabel('Temps (s)');
ylabel('Amplitude (V)');
title('Signal dent de scie - 2 périodes');
axis([-0.01 0.01 -1.2 1.2]);    % Zoom sur 2 périodes
