% sig_sin.m - Signal sinusoïdal échantillonné

fe = 1000;                    % Fréquence d’échantillonnage
t = -10:1/fe:10;              % Axe temporel
f0 = 100;                     % Fréquence du signal
x = sin(2 * pi * f0 * t);     % Signal sinusoïdal

figure(6);
plot(t, x);                   % Affichage en "échantillons"
grid on;
xlabel('Temps (s)');
ylabel('Amplitude (V)');
title('Signal sinusoïdal échantillonné');

%reponse :
% Lorsque le signal est tracé sur une longue durée (de -10 s à 10 s), 
% la densité des points devient très élevée à cause de l’échantillonnage élevé 
% (20 000 points au total).
% Cela rend le graphe difficile à lire visuellement : le tracé apparaît comme 
% une surface bleue uniforme, où les oscillations sinusoïdales sont trop 
% compressées pour être distinguées.
