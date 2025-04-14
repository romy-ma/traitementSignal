Xf=ones(size(fr));%X(f)
figure
plot(Xf,fr,'LineWidth',2)
xlabel('fréquence')
title(' spectre Xf')
grid
xt=ifft(Xf);figure
plot(xt)


% Le signal obtenu est une impulsion très étroite et centrée, 
% c’est une approximation discrète de la fonction de Dirac.
% En effet, la transformée de Fourier inverse d’un spectre plat 
% est une impulsion dans le domaine temporel (propriété fondamentale de Fourier).