clc;clear;close all;
%construire le signal impulsion carré
Fe=1000 ; %Fréquence d'échantillonnage
t=-10:1/Fe:10; %echelle temps allant de -10 à +10 avec 1000 points entre chaque seconde
p=zeros(size(t)); % remplissage par des zeros
id=find((t>=1)&(t<=1));%détection des points de t allant de -1 à +1
p(id)=1;% construction d'une impulsion carré de -1 à 1
figure(1);plot(t,p,'LineWidth',2); grid;axis([-4 4 0 2]);
xlabel('temps en (s)');ylabel('amplitude en (v)');title('signal impulsion carrée');
sp_p=abs(fft(p));%calcul du module de la transformée de fourier
sp_p=sp_p/1000;%normalisation de l'amplitude du spectre
fr=linspace(0,Fe,length(p));% axe des fréquences
figure(2);subplot(211);plot(t,p,'LineWidth',2);
grid;
axis([-4 4 0 1.5]);%limitation de l'echelle des amplitude à 1,5
subplot(212),plot(fr,sp_p,'LineWidth',2);grid;
axis([ 0 3 min(sp_p) max(sp_p)]);%visualisation du spectre jusqu'à 3Hz
t=-10:1/Fe:10;
fr=linspace(0,Fe,length(t));
Xf=ones(size(fr));%X(f)
figure(3)
plot(fr,Xf,'LineWidth',2)
xlabel('frequence')
title(' spectre Xf')
grid
xt=ifft(Xf);figure(4);
stem(xt,'LineWidth',2)
axis([ -500 500 0 1.5 ]);
