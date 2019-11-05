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
g = conv(s,h);
%%
%%Normalisierung
g_norm = g/max(abs(g));
%%
%%Abspielen
sound(s, Samplefrequenz);
pause();
sound(g_norm, Samplefrequenz);




