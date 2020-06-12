function [adjmatrix] = data_representation(EEG_signals,Lable)
%EEG_signals consists of n segments where each segment contains 256 sampling points.
%Label is a one-dimensional array of length n. Positive is 1 and negative is 0.
[n,m,~] = size(EEG_signals);
empty_matrix = zeros(m,m,n);
for k = 1:n
Adjmatrix = overlook(EEG_signals(k,:));%You can also use LPhorizontal1 and LPvisibility1 construct adjcency matrix.
empty_matrix(:,:,k) = Adjmatrix;
L = Label(k);
str=[num2str(L),'_',num2str(k),'.png'];
imwrite(A,strcat('F:\data\',str),'png');
end
