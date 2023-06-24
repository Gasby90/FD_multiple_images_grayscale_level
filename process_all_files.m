%% process_all_files.m
%
%Riccardo Gasbarrone 2022 
%
%This script saves the Fractal Dimension (FD), the standard deviation of
%the FD (Std_dev_FD, calculated at different grayscale thresholds) as a
%fuction of the threshold, the FD calculated on otzu binarized image
%(Df_binary_Otzu_SI) and the corresponding standard deviation
%(std_df_binary_Otzu_SI). The process is applied on all .tif images in the
%folder.

tic
file_list = dir('*tif');%Read *.tif files in the directory 
nfiles = length(file_list); 
for k = 1 : nfiles
    I = imread(strcat(file_list(k).name));
    [FD{k}, Std_dev_FD{k}, Df_binary_Otzu_SI{k}, std_df_binary_Otzu_SI{k}] = fractal_optimizer(I);
end
FD2=cell2mat(FD); %fractal dimension (binarization 0-255)
Std_dev_FD2=cell2mat(Std_dev_FD); %standard deviation of fractal dimension (binarization 0-255)
Df_binary_Otzu_SI2=cell2mat(Df_binary_Otzu_SI); %fractal dimension (Otzu's binarization)
std_df_binary_Otzu_SI2=cell2mat(std_df_binary_Otzu_SI); %standard deviation of fractal dimension (Otzu's binarization)
toc

clear k I nfiles
