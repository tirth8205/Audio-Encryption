%This function performs encryption by converting the vector received from
%ReadWAV function into a *.tif image file. Here, *.tif format is used
%beacuse the TIFF file format is a very good lossless compression algorithm
%for image.
function To_Image(X,D,path)
%First the column vector needs to be reshaped into a m x n matrix. Here, m
%is set to 100 and the number of columns i.e. n varies according to the
%number of samples in the *.wav file.
x=1;
y=round(X/100,0);
%This loop reshapes the column vector into the matrix and fills the matrix
%with all the values.
for i=1:100
    L=D(x:y);
    N=L';
    A(i,:)=N;
    x=x+round(X/100);
    y=y+round(X/100);
end
%Here, the matrix that is formed, is stored as a *.tif image file and also
%the image is in grayscale to preserve the double values of the samples
%that are received from the *.wav file. 
    imwrite(mat2gray(A),fullfile(path,'Encrypted.tif'));
  