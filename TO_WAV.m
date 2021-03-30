%This function is used to decrypt the image that we had formed in the
%To_Image function again into a *.wav file. 
function TO_WAV(path,file)
%The following command will read the image from the file path specified and
%then it will store it into the variable aatif.
aatif=imread(fullfile(path,file));
%The image is then again converted into grayscale to obtain the double
%values.
mat2gray(aatif);
%The follwing command converts the image into a matrix of the type double
%and again stores in the varible aatif.
aatif=im2double(aatif);
TIF=[;];
%The next loop converts the matrix again into a column vector TIF by
%reshaping the matrix again into a column by vertical concatenation.
for i=1:100
    w=aatif(i,:);
    m=w';
    TIF=vertcat(TIF,m);
end
%After obtaining the column vector from the above loop we can again write
%it into a *.wav file with a sampling frequency of 44.1 KHz which is a
%standard sampling frequency. Thus, after the follwing command we will have
%successfully completed decryption and we will get the audio file almost
%similar to the original audio file. Actually, the audio file after
%decryption will also get compressed as the image is stored in TIFF format.
audiowrite(fullfile(path,'Recording2.wav'),TIF,44100);