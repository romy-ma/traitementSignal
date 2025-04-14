Fe = 1000;                         % Fréquence d’échantillonnage
t = -10:1/Fe:10;                   % Axe temporel

q = zeros(size(t));               % Initialisation du signal q(t)
idq = (t > -0.5) & (t <= 0.5);    % Détection de l'intervalle [-0.5, 0.5]
q(idq) = 1;                       % Affectation de 1 dans l’intervalle

% Affichage du signal
figure(3);
subplot(2,1,1);
plot(t, q, 'LineWidth', 2); grid on;
axis([-10 10 0 1.5]);
xlabel('temps (s)');
ylabel('Amplitude');
title('Signal q(t) (porte largeur 1)');

% Calcul de la transformée de Fourier
sp_q = abs(fft(q));               % Module de la TFD
sp_q = sp_q / Fe;                 % Normalisation

fr_q = linspace(0, Fe, length(q));  % Axe des fréquences

% Affichage du spectre
subplot(2,1,2);
plot(fr_q, sp_q); grid on;
axis([0 3 0 max(sp_q)]);
xlabel('Fréquence (Hz)');
ylabel('Amplitude');
title('|Q(f)|');
