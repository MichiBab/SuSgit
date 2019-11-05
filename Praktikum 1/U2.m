
%Chirp Parameter
t_Start = 0;
t_Stop = 5;
fStart = 10;
fStop = 5000;
FSample = 10000;
TSample = 1/FSample;

%Create Chirp Signal
t= t_Start : TSample : t_Stop;
y= chirp(t, fStart, t_Stop, fStop, 'logarithmic');

%Size
FileSize = size(y,1) %ohne ; für ausgabe

% K ANZAHL EINGEBEN
k=250;

%Platz für gefiltertes Signal freigeben
yGemittelt = zeros(FileSize,0);
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
