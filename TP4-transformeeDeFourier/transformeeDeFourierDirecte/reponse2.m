sp_p = abs(fft(p));          % Calcul du module de la TFD (transformée de Fourier)
sp_p = sp_p / 1000;          % Normalisation (division par Fe)

fr = linspace(0, Fe, length(p));  % Axe des fréquences en Hz (de 0 à Fe)

figure(2);
subplot(211); 
plot(t, p, 'LineWidth', 2);
grid on;
axis([-10 10 0 1.5]);         % Limites du signal temporel
xlabel('temps (s)');
ylabel('Amplitude');
title('Signal p(t)');

subplot(212); 
plot(fr, sp_p);
grid on;
axis([0 3 0 max(sp_p)]);      % Visualisation du spectre jusqu’à 3 Hz
xlabel('Fréquence (Hz)');
ylabel('Amplitude');
title('|P(f)|');
