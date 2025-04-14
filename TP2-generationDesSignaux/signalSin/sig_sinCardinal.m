% sinc_signal.m - Signal sinus cardinal (sinc)

fe = 1000;                   % Fréquence d’échantillonnage
f0 = 100;                    % Fréquence de référence (non obligatoire ici mais on garde pour cohérence)
t = -0.01:1/fe:0.01;         % Intervalle temporel sur deux périodes (2 * 1/100)

x = sinc(f0 * t);            % Signal sinc centré, avec f0 pour mise à l’échelle

figure(10);
plot(t, x, 'LineWidth', 2);
grid on;
xlabel('Temps (s)');
ylabel('Amplitude (V)');
title('Signal sinus cardinal sinc(f0·t)');
axis([-0.01 0.01 -0.5 1.2]); % Zoom sur la zone centrale
