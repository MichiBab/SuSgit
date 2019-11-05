%load JetztGehtsLos in vektor y
[y, Samplefrequenz] = audioread('JetztGehtsLos.wav');

%Size
FileSize = size(y,1) %ohne ; für ausgabe

% K ANZAHL EINGEBEN
k=4;

%Platz für gefiltertes Signal freigeben
%yGemittelt = zeros(FileSize,0);
y_normiert  = y / max(abs(y));

%normieren
ymittel = U1mittelwertK(y_normiert, k);

%Plotten
subplot(2,1,1), plot(y_normiert)
ylim([-1 1]);
title('Original');

subplot(2,1,2), plot(ymittel)
ylim([-1 1]);
title('Gefiltert');

%ausgabe ungefiltert
% sound(y_normiert);
% pause
% sound(ymittel);
