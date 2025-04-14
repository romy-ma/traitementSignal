figure;

% Courbe du module (ce que le filtre laisse passer)
plot(f, hh_db, 'b', 'LineWidth', 2);   
hold on;

% Courbe de l'atténuation (ce que le filtre bloque)
plot(f, aa_db, 'r--', 'LineWidth', 2);

grid on;
xlabel('Fréquence (Hz)');
ylabel('Amplitude / Atténuation (dB)');
title('Superposition module et atténuation du filtre');
legend('|H(jw)| en dB', 'Atténuation en dB');

axis([0 500 0 60]);  % Zoom utile

% on remarque bien que :
% Le filtre respecte bien les exigences du cahier des charges :
% 
% Il laisse passer les fréquences jusqu’à 200 Hz avec peu de perte (≤ 2 dB)
% 
% Il atténue fortement les fréquences au-dessus de 350 Hz (≥ 40 dB)
% 
% La transition entre les deux zones est nette et progressive, 
% comme prévu pour un filtre de Butterworth