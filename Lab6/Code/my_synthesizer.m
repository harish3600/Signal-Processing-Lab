function y = my_synthesizer(A,F_notes,P,adsr,td_notes,fs)
% Initialize output as empty
y = [];
% Loop over the notes
for ii =1:length(F_notes)
    % scale a,d,sd,r so that they sum to required note duration
    td = td_notes(ii);
    a = adsr(1)*td;
    d = adsr(2)*td;
    s = adsr(3);
    sd = adsr(4)*td;
    r = adsr(5)*td;
    
    % Compute the time vector and ADSR envelope for this note
    [t,env] = envelope(a,d,s,sd,r,fs);
    % Compute the sum of harmonics for this note
    xt= harmonics(A,F_notes(ii),P,td,fs);
    % Modulate the sum of harmonics with the envelope
    xte= xt.*env;
    % Add the note to the sequence
    y = [y,xte];
end
end