% Construction du filtre de Butterworth
[b, a] = butter(9, 1318.342, 's');  % 's' pour filtre analogique

% Calcul de la réponse en fréquence
[h, w] = freqs(b, a);         % h = H(jw), w = vecteur des pulsations

% Module du filtre (en valeur absolue)
hh = abs(h);                  
hh_db = 20 * log10(hh);       % Module en décibels

% Atténuation
aa = abs(1 ./ h);             
aa_db = 20 * log10(aa);       % Atténuation en dB

% Conversion des pulsations w en fréquences f (en Hz)
f = w / (2 * pi);             

% Tracé des résultats
figure;
subplot(2,1,1);
plot(f, hh_db);
grid on;
title('Module de la fonction de transfert H(jw) en dB');
xlabel('Fréquence (Hz)');
ylabel('Amplitude (dB)');

subplot(2,1,2);
plot(f, aa_db);
grid on;
title('Atténuation du filtre en dB');
xlabel('Fréquence (Hz)');
ylabel('Atténuation (dB)');

axis([0 500 0 60]);  % Zoom sur les fréquences utiles
