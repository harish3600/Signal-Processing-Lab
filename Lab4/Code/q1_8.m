%% Question 1 - Audio signals
clear ; clc;
%load handel.mat

path = 'D:\Term 3 Course Work\Signal Processing\Lab\Lab 4\Code\';

%Audio file 1: file_example_WAV_1MG.wav
name = 'file_example_WAV_1MG.wav';
filename = strcat(path,name);
disp(sprintf("Analysis of %s\n",name));

[y,Fs] = audioread(filename); %y - audio data, Fs - sample rate
disp(sprintf("Samping Rate: %d",Fs)); %Sampling Frequency

info = audioinfo(filename);
disp(sprintf("Duration = Total Samples/Sample Rate = %.4f seconds", info.TotalSamples / info.SampleRate));

sound(y,0.6*Fs); %lower sampling frequency
sound(y,1.6*Fs);  %higher sampling frequency

disp(sprintf('\n'));

%-----------------------------------------------
%Audio file 2: file_example_WAV_2MG.wav
name = 'file_example_WAV_2MG.wav';
filename = strcat(path,name);
disp(sprintf("Analysis of %s\n",name));

[y,Fs] = audioread(filename); %y - audio data, Fs - sample rate
disp(sprintf("Samping Rate: %d",Fs)); %Sampling Frequency

info = audioinfo(filename);
disp(sprintf("Duration = Total Samples/Sample Rate = %.4f seconds", info.TotalSamples / info.SampleRate));

sound(y,0.6*Fs); %lower sampling frequency
sound(y,1.6*Fs);  %higher sampling frequency

disp(sprintf('\n'));

%-----------------------------------------------
%Audio file 3: file_example_WAV_5MG.wav
name = 'file_example_WAV_5MG.wav';
filename = strcat(path,name);
disp(sprintf("Analysis of %s\n",name));

[y,Fs] = audioread(filename); %y - audio data, Fs - sample rate
disp(sprintf("Samping Rate: %d",Fs)); %Sampling Frequency

info = audioinfo(filename);
disp(sprintf("Duration = Total Samples/Sample Rate = %.4f seconds", info.TotalSamples / info.SampleRate));

sound(y,0.6*Fs); %lower sampling frequency
sound(y,1.6*Fs);  %higher sampling frequency

disp(sprintf('\n'));


%-----------------------------------------------
%Audio file 4: file_example_WAV_10MG.wav
name = 'file_example_WAV_10MG.wav';
filename = strcat(path,name);
disp(sprintf("Analysis of %s\n",name));

[y,Fs] = audioread(filename); %y - audio data, Fs - sample rate
disp(sprintf("Samping Rate: %d",Fs)); %Sampling Frequency

info = audioinfo(filename);
disp(sprintf("Duration = Total Samples/Sample Rate = %.4f seconds", info.TotalSamples / info.SampleRate));

sound(y,0.6*Fs); %lower sampling frequency
sound(y,1.6*Fs);  %higher sampling frequency

disp(sprintf('\n'));

clear sound;
%-------------------------------------

%OBSERVATIONS
%{
Analysis of file_example_WAV_1MG.wav

Bit Rate = Sample Rate * Bits Per Sample * Number of Channels 
         = 8000*16*2 = 256000 bps = 256 kbps
Samping Frequency = 8000 Hz
Duration = Total Samples/Sample Rate = 33.5296 seconds
Number of bits ADC must use while quantizing = BitsPerSample = 16
Number of Levels of Quantization = 2^16


Analysis of file_example_WAV_2MG.wav

Bit Rate = Sample Rate * Bits Per Sample * Number of Channels 
         = 16000*16*2 = 512000 bps = 512 kbps
Samping Frequency = 16000 Hz
Duration = Total Samples/Sample Rate = 33.5296 seconds
Number of bits ADC must use while quantizing = BitsPerSample = 16
Number of Levels of Quantization = 2^16

Analysis of file_example_WAV_5MG.wav

Bit Rate = Sample Rate * Bits Per Sample * Number of Channels 
         = 44100*16*2 = 1411200 bps = 1411.2 kbps
Samping Frequency = 44100 Hz
Duration = Total Samples/Sample Rate = 29.6287 seconds
Number of bits ADC must use while quantizing = BitsPerSample = 16
Number of Levels of Quantization = 2^16

Analysis of file_example_WAV_10MG.wav

Bit Rate = Sample Rate * Bits Per Sample * Number of Channels 
         = 44100*16*2 = 1411200 bps = 1411.2 kbps
Samping Frequency = 44100 Hz
Duration = Total Samples/Sample Rate = 58.9936 seconds
Number of bits ADC must use while quantizing = BitsPerSample = 16
Number of Levels of Quantization = 2^16


1. When we lower the sampling frequency, the sound signal is stretched as
a result takes more time to complete. This is because time period is
inversely proportional to frequency. As frequency decreases, the signal is
stretched in the time domain.

2. When we increase the sampling frequency, the sound signal is played at a
faster rate and takes less time(than the duration of the original signal)
to get completed. As frequency increases, the the signal is squeezed in
time domain.

3. The observations align with the time scaling property of Fourier
Transform. When signal is scaled by 'a' in time domain, the time period
becomes T/'a'.

If x(t) -> X(w)
Then x(at) -> 1/|a| . X(w/a)

%}