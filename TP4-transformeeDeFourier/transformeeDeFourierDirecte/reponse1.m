Fe = 1000;                         % Fréquence d’échantillonnage
t = -10:1/Fe:10;                   % Vecteur temps

p = zeros(size(t));               % Initialisation de p avec des zéros
id = (t > -1) & (t <= 1);         % Indices où t est entre -1 et 1
p(id) = 1;                        % Mettre 1 dans l'intervalle [-1,1]

figure(1);
plot(t, p, 'LineWidth', 2); grid on;
axis([-10 10 0 1.5]);
xlabel('temps en (s)');
ylabel('amplitude en (v)');
title('signal impulsion carrée');
