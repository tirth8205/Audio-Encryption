%This function is used to plot the original waveform of the recorded *.wav
%file that is to be encrypted
function y = Original_Waveform(path,file)
y = audioread(fullfile(path,file));