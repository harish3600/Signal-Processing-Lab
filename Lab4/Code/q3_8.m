%Question 3 - Quantization of Audio signals
clear; clc;

%loading .wav file
path = 'D:\Term 3 Course Work\Signal Processing\Lab\Lab 4\Code\';
name = 'file_example_WAV_10MG.wav';
filename = strcat(path,name);
[y,Fs] = audioread(filename); %y - audio data, Fs - sample rate
 
%Part 1 
B=3; a=1;
y_quantized = quadratic_quant(y,B,a);
sound(y_quantized,Fs);


%Part 2
info = audioinfo(filename);
a=1;

for bits = 1:8
    levels = 2^bits;
    y_quantized = quadratic_quant(y,bits,a);
    sound(y_quantized,Fs);
    
    %code for pausing for 2 seconds after the audio ends
    pause(2 + info.Duration)
end

%OBSERVATIONS
%{
1. When we increase the number of levels, there is an improvement in sound
quality. The noise in the audio decreases, and we can hear the audio
clearly.

2. Effect of Quantization on Frequency Content
During quantization, the sampled signal value is rounded off to the nearest
value. As a result, we lose high frequency components from the signal.
Therefore sampling decreases the frequncy content of the quantized signal
when compared to the original input signal.

When we increase the number of bits, the level increases and the frequency content increases.

3. As we increase the number of bits(B), the audio quality increases and the
sample becomes more clear(less noise). This is because when we increase the number of
bits, the number of levels increases, as a result we get a more accurate
reprsentation of the signal.
%}



    
