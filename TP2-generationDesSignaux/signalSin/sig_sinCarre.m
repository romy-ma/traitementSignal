% square_signal.m - Signal carré avec la fonction square()

f0 = 100;                        % Fréquence du signal (Hz)
fe = 1000;                       % Fréquence d’échantillonnage (Hz)
t = -0.01:1/fe:0.01;             % Deux périodes autour de 0 (T = 0.01s)

x = square(2 * pi * f0 * t);     % Génère une onde carrée

figure(7);
stairs(t, x, 'LineWidth', 2)
grid on;
xlabel('Temps (s)');
ylabel('Amplitude (V)');
title('Signal carré - 2 périodes');
axis([-0.01 0.01 -1.2 1.2]);     % Zoom sur deux périodes
