%% load GetRiff in vektor s
[s, Samplefrequenz] = audioread('GitRiff.wav');

%% load TrigRoom2 in vektor h
[h, hFrequenz] = audioread('TrigRoom2.wav');

%% h to mono
h = toMono(h);

%% groessenbestimmung
s_size = length(s);
h_size = length(h);

%% Faltung
tic, gOwn = MyConv(s,h); toc
tic, gMatlab = conv(s,h); toc

%% Normalisierung
gOwn_norm = gOwn/max(abs(gOwn));

gMatlab_norm = gMatlab/max(abs(gMatlab));

%% Abspielen
sound(s, Samplefrequenz);
pause
sound(gOwn_norm, Samplefrequenz);
pause
sound(gMatlab_norm, Samplefrequenz);