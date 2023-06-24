%% process_all_files_slope.m
%
%Riccardo Gasbarrone 2022 
%
%This script saves the Fractal Dimension (FD), the standard deviation of
%the FD (Std_dev_FD, calculated at different grayscale thresholds) as a
%fuction of the threshold, the FD calculated on otzu binarized image
%(Df_binary_Otzu_SI) and the corresponding standard deviation
%(std_df_binary_Otzu_SI). For each image in the folder are calculated:
% the fractal dimension at different box sizes, the number of boxes, the
% box sizes, the averaged fractal dimension and the standard deviation of
% the fractal dimension The process is applied on all .tif images in the
%folder.

tic
file_list = dir('*tif');%Read *.tif files in the directory 
nfiles = length(file_list); 
for k = 1 : nfiles
    I = imread(strcat(file_list(k).name));
    [FD_boxes{k}, n_boxes{k}, r_boxes{k}, meanFD{k}, mean_FD_stdv{k}] = fractal_optimizer_slope(I);
end

FD_boxes_i=cell2mat(FD_boxes); %Collect fractal dimension at different box sizes
n_boxes_i=cell2mat(n_boxes); %Collect number of boxes
r_boxes_i=cell2mat(r_boxes); %Collect box sizes
meanFD_i=cell2mat(meanFD); %Collect averaged fractal dimension
mean_FD_stdv_i=cell2mat(mean_FD_stdv); %Collect standard deviation of the fractal dimension
gray_scale_THS=0:5:255;%Return gray scale threshold
clear k I nfiles
toc
% Label=file_list.name;