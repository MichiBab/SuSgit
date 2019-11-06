%% load GetRiff in vektor s
[s, Samplefrequenz] = audioread('GitRiff.wav');

%% Normalisierung
s = s/max(abs(s));

%% Quantisierung q
QSteps = 10;
q = round(s*QSteps);

%% Normalisierung von q
q = q/max(abs(q));

%% Audioausgabe von q
%sound(q,Samplefrequenz);

%% Subplot q und s im Intervall 15000:15400
q_bereich = q(15000:15400);
s_bereich = s(15000:15400);

subplot(3,1,1), plot(q_bereich)
hold on
plot(s_bereich,'r')
title('Subplot q und s im Intervall 15000:15400. s=rot q=blau');

%% Subplot q-s (max Quantisierungsfehler) im Intervall 15000:15400
subplot(3,1,2), plot(q_bereich)
plot(s_bereich-q_bereich,'r')
title('Subplot q-s (max Quantisierungsfehler) im Intervall 15000:15400');

%% Ausgabe des maximalen Absolutwertes von s-q (max Quantisierungsfehler)
maxQfehlerAbsolut = abs(max(s-q));
maxQfehlerAbsolut

%% Tabelle Qsteps -> MaxQFehlerAbsolut 
%10 - 0.05
%20 - 0.025
%50 - 0.01
%100 - 0.005
%200 - 0.0025
%500 - 0.0001

qstepsTabelle = [10 0.05;
    20 0.025;
    50 0.01;
    100 0.005;
    200 0.0025;
    500 0.0001;];
qstepsTx= qstepsTabelle(:,1);
qstepsTy= qstepsTabelle(:,2);
subplot(3,1,3)
plot(qstepsTx,qstepsTy)
title('Qsteps Tabelle. y = Maximalabsolute Quantisierungsfehler. x = Qsteps');

