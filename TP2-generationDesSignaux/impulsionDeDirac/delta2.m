% delta2.m - Génération d'une impulsion de Dirac retardée (t = 2)

t = -10:1/1000:10;          % Échelle de temps
delta = zeros(size(t));    % Signal initialisé à zéro
delta(find(t == 2)) = 1;   % Impulsion à t = 2

figure(2);                 % Nouvelle figure
stem(t, delta);            % Tracé du signal
grid on;
xlabel('Temps (s)');
ylabel('Amplitude (V)');
title('Signal impulsion de Dirac retardée de 2');
