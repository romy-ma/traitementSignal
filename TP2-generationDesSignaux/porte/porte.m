% porte.m - Construction de la fonction porte p(t) = u(t + 0.5) - u(t - 0.5)

t = -5:0.001:5;

x1 = double(t >= -0.5);   % u(t + 0.5)
x2 = double(t >= 0.5);    % u(t - 0.5)
p = x1 - x2;              % porte : 1 entre -0.5 et 0.5, 0 ailleurs

figure(5);
plot(t, p, 'LineWidth', 2);
grid on;
xlabel('Temps (s)');
ylabel('Amplitude (V)');
title('Fonction porte p(t)');

axis([-2 2 -0.2 1.2]);    % Zoom sur la partie intéressante
