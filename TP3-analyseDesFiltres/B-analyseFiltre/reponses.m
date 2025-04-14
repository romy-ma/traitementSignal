fe = 2000;              % Fréquence d’échantillonnage
f1 = 100;               % Première fréquence (grave)
f2 = 400;               % Deuxième fréquence (aiguë)
t = 0:1/fe:1;           % Vecteur temps sur 1 seconde

x1 = cos(2*pi*f1*t);    % Signal sinusoïdal 1
x2 = cos(2*pi*f2*t);    % Signal sinusoïdal 2

x = x1 + x2;            % Signal total = somme des deux

spx=(abs(fft(x)))/fe;
fr=linspace(0,fe,length(t));
figure; subplot(211); plot(t,x); grid; axis([0 5/f1 -1.5 1.5])
xlabel('temps en s'); title('signal x(t)')
subplot(212); plot(fr,spx); grid; axis([0 1000 0 1]);
xlabel('fréquence en Hz');
title('spectre du signal x(t)');

syst=tf(b,a);% "création du filtre
s=lsim(syst,x,t); %"filltrage de x par le filtre figure;
subplot(211); plot(t,s); grid; axis([5/f1 10/f1 -1.5 1.5])
title('signal filtré');

spy=(abs(fft(s)))/fe; %"spectre du signal de sortie du filtre
subplot(212); plot(fr,spy); grid; axis([0 1000 0 1]);
xlabel('fréquence en Hz');
title('spectre du signal filtré');
 
%remarque :
% Après application du filtre Butterworth conçu au signal composé de deux
% fréquences (100 Hz et 400 Hz), on observe que :
% 
% Le signal filtré dans le domaine temporel est une sinusoïde pure
% correspondant à la fréquence de 100 Hz.
% 
% Le spectre du signal filtré ne contient plus que le pic à 100 Hz.
% La composante à 400 Hz a été totalement atténuée.
% Cela confirme que le filtre respecte le cahier des charges :
% il laisse passer les basses fréquences (100 Hz) et supprime les hautes 
% fréquences (400 Hz).


