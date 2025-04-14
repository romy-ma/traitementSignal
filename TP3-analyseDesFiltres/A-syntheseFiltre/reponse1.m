figure;
hold on;
grid on;

% Axe des fréquences (0 à 600 Hz)
f = [0 200 350 600];

% Courbe du gabarit théorique
plot([0 200], [-2 -2], 'r', 'LineWidth', 2);       % Bande passante max -2 dB
plot([350 600], [-40 -40], 'r', 'LineWidth', 2);   % Bande coupée min -40 dB

% Zones interdites (entre -2 et -40 dB dans la transition)
fill([200 350 350 200], [-2 -2 -40 -40], [1 0.9 0.9], 'EdgeColor', 'none');  % zone de transition

xlabel('Fréquence (Hz)');
ylabel('Amplitude (dB)');
title('Gabarit du filtre Butterworth');
axis([0 600 -60 5]);

legend('Bande passante', 'Bande coupée', 'Zone de transition');
