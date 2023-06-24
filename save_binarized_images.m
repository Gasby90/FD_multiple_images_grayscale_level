%% save_binarized_images.m
%%Copyright (C) 2023  Riccardo Gasbarrone

%This program is free software; you can redistribute it and/or
%modify it under the terms of the GNU General Public License
%as published by the Free Software Foundation; either version 2
%of the License, or  any later version.

%This program is distributed in the hope that it will be useful,
%but WITHOUT ANY WARRANTY; without even the implied warranty of
%MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
%GNU General Public License for more details.
%%

%This script saves binary images thresholded at 50,	90, 135, 180, 205 and
%230.

tic

file_list = dir('*tif');%Read *.tif files in the directory 
nfiles = length(file_list); 

for k = 1 : nfiles

    I = imread(strcat(file_list(k).name));
    I_gray=rgb2gray(I);
    imwrite(I_gray,strcat(file_list(k).name,'_I_gray','.png'));

    Binary_50{k}=I_gray<50;
    imwrite(Binary_50{k},strcat(file_list(k).name,'_Binary_50','.png'));

    Binary_90{k}=I_gray<90;
    imwrite(Binary_90{k},strcat(file_list(k).name,'_Binary_90','.png'));

    Binary_135{k}=I_gray<135;
    imwrite(Binary_135{k},strcat(file_list(k).name,'_Binary_135','.png'));

    Binary_180{k}=I_gray<180;
    imwrite(Binary_180{k},strcat(file_list(k).name,'_Binary_180','.png'));

    Binary_205{k}=I_gray<205;
    imwrite(Binary_205{k},strcat(file_list(k).name,'_Binary_205','.png'));

    Binary_230{k}=I_gray<230;
    imwrite(Binary_230{k},strcat(file_list(k).name,'_Binary_230','.png'));
 
end
clear Binary_135 Binary_180 Binary_205 Binary_230 Binary_50 Binary_90 file_list I I_gray k nfiles

toc

