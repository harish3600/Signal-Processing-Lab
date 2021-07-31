N = 5;
fs = 10000;
A = zeros(1,N);
for k=1:N
    A(k) = 1/(k*k);
end
P = zeros(1,N);
asdr = [0.2 0.2 0.7 0.4 0.2];

% part (a)
F_notes = 50:5:100;
td_notes = ones(1,length(F_notes));
yn = my_synthesizer(A,F_notes,P,asdr,td_notes,fs);

soundsc(yn,fs);


% part (b)
F_notes = 100:-10:40;
td_notes = ones(1,length(F_notes));
yn = my_synthesizer(A,F_notes,P,asdr,td_notes,fs);

soundsc(yn,fs);


% part (c)
M = 5;
F_notes = 50 + 50*rand(1,M);
td_notes = 0.5 + round(rand(1,M),3);
yn = my_synthesizer(A,F_notes,P,asdr,td_notes,fs);

soundsc(yn,fs);

% part (d)
F_notes = [523 523 523 392 440 440 392];
td_notes = [0.5 0.5 0.5 0.5 0.5 0.5 0.5];
yn = my_synthesizer(A,F_notes,P,asdr,td_notes,fs);

soundsc(yn,fs);
% yn(yn>1.0) = 1.0;
% yn(yn<-1.0) = -1.0;
audiowrite('Result_4.wav', yn, fs);


%{
D=	294;
E=	330;
F=	349;
G=	392;
A=	440;
B=	494;
C=	523;
%}