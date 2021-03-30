%This function is used to read the samples of the *.wav file that is to be
%encrypted.
function ReadWAV(path,file)
%The next command performs pulse code modulation which is used to represent
%sampled analog signals in digital form and stores the samples in the
%variable b and the sampling frequency in the variable Fs. The values of
%samples that are stored in b would be of type double i.e. from -1 to 1.
[b,Fs] = audioread(fullfile(path,file));
C=b;
%The number of samples is stored in the variable X with the following
%command.
X=length(b);
%Now, in the follwing command, a column vector D of size same as the number
%of samples in b, is created and its values are assigned as the samples.
D=C(1:X);
%The next command is a call to a function which will convert the vector to
%an image.
To_Image(X,D,path);
