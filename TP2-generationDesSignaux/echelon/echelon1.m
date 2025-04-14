t = -10:1/1000:10;
u = zeros(size(t));
u(find(t >= 1)) = 1;
figure(3);
plot(t, u, 'LineWidth', 2);
grid;
xlabel('temps en (s)');
ylabel('amplitude en (v)');
title('signal échelon unitaire');
axis([-2 4 -0.2 1.2]);        % Zoom autour de la transition à t = 1
