Fe = 1000;
t = -10:1/Fe:10;

% Construction de p(t)
p = zeros(size(t));
id_p = (t > -1) & (t <= 1);
p(id_p) = 1;

% Construction de q(t)
q = zeros(size(t));
id_q = (t > -0.5) & (t <= 0.5);
q(id_q) = 1;

% FFT
sp_p = abs(fft(p)) / Fe;
sp_q = abs(fft(q)) / Fe;
fr = linspace(0, Fe, length(t));

% Affichage des deux spectres superposés
figure;
plot(fr, sp_p, 'b', 'LineWidth', 1.5); hold on;
plot(fr, sp_q, 'r', 'LineWidth', 1.5);
axis([0 3 0 max(sp_p)]);
xlabel('Fréquence (Hz)');
ylabel('Amplitude');
title('Comparaison des spectres |P(f)| et |Q(f)|');
legend('|P(f)| (largeur 2)', '|Q(f)| (largeur 1)');
grid on;

% Le signal 
% p(t) (porte de largeur 2) possède un spectre plus étroit
% (concentré autour de 0 Hz).
% 
% Le signal 
% q(t) (porte de largeur 1) a un spectre plus large.
% 
% On observe donc que :
% 
% plus un signal est court dans le temps, 
% plus son spectre est large dans la fréquence
% 
% C'est une illustration concrète du principe d’incertitude de Fourier.
% 
