% triangle_signal.m - Signal triangulaire avec WIDTH = 0.5

f0 = 100;                             % Fréquence du signal
fe = 1000;                            % Fréquence d’échantillonnage
t = -0.01:1/fe:0.01;                  % Deux périodes

x = sawtooth(2 * pi * f0 * t, 0.5);   % Signal triangulaire (WIDTH = 0.5)

figure(9);
plot(t, x, 'LineWidth', 2);
grid on;
xlabel('Temps (s)');
ylabel('Amplitude (V)');
title('Signal triangulaire (2 périodes)');
axis([-0.01 0.01 -1.2 1.2]);
