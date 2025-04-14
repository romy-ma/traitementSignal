% butterworth_synth.m - Calcul de l’ordre du filtre

fa = 200;        % bande passante (Hz)
fc = 350;        % fréquence de coupure (Hz)

wa = 2 * pi * fa;   % pulsation de bande passante
wc = 2 * pi * fc;   % pulsation de coupure

ra = 2;         % atténuation maximale en bande passante (dB)
rc = 40;        % atténuation minimale en bande coupée (dB)

[n, wn] = buttord(wa, wc, ra, rc, 's');  % ordre et fréquence de coupure du filtre

disp(['Ordre du filtre = ' num2str(n)]);
disp(['Pulsation de coupure wn = ' num2str(wn)]);
