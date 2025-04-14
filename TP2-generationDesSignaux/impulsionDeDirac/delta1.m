% delta1.m - Génération de l'impulsion de Dirac centrée en t = 0

t = -10:1/1000:10;         % Échelle de temps de -10 à 10 avec 1000 échantillons par seconde
delta = zeros(size(t));   % Initialisation d’un vecteur de zéros de la même taille que t
delta(find(t == 0)) = 1;  % L'impulsion est non nulle uniquement à t = 0

figure(1);                % Ouvre une nouvelle figure nommée figure 1
stem(t, delta);           % Représente le signal delta sous forme discrète (traits et points)
grid on;                  % Active la grille
xlabel('Temps (s)');
ylabel('Amplitude (V)');
title('Signal impulsion de Dirac');
