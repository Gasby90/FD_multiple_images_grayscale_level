function [FD, Std_dev_FD, Df_binary_Otzu_SI, std_df_binary_Otzu_SI, I_gray]=fractal_optimizer(I)


%%  Fractal_optimizer.m
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
%This function converts the selected image to grayscale (uint8). based on
%the chosen image the script binarizes the scaled image of gray "I_gray"
%with a threshold varying from 0 to 255 with a pitch of 5. For each binary
%image is calculated fractal size with the "boxcount.m function", then the
%mean is obtained (Df_binary_SI) and the standard deviation
%(std_df_binary_SI) of the fractal size for each image.

%grayscale image conversion
I_gray=rgb2gray(I);

%%

% Binary 0
binary_0=(I_gray<0);
% imwrite(binary_0, 'Binary_0.bmp');
[n,r] = boxcount(binary_0);
df_binary_Otzu= -diff(log(n))./diff(log(r));
Df_binary_0_SI=mean(df_binary_Otzu);
std_df_binary_0_SI=std(df_binary_Otzu);
% disp(['Fractal dimension binary 0, Df = ' num2str(mean(df_binary_Otzu(4:8))) ' +/- ' num2str(std(df_binary_Otzu(4:8)))]);
clear 'n' 'r'

% Binary 5
binary_5=(I_gray<5);
% imwrite(binary_5, 'Binary_5.bmp');
[n,r] = boxcount(binary_5);
df_binary_5= -diff(log(n))./diff(log(r));
Df_binary_5_SI=mean(df_binary_5);
std_df_binary_5_SI=std(df_binary_5);
% disp(['Fractal dimension binary 5, Df = ' num2str(mean(df_binary_5(4:8))) ' +/- ' num2str(std(df_binary_5(4:8)))]);
clear 'n' 'r'

% Binary 10
binary_10=(I_gray<10);
% imwrite(binary_10, 'Binary_10.bmp');
[n,r] = boxcount(binary_10);
df_binary_10= -diff(log(n))./diff(log(r));
Df_binary_10_SI=mean(df_binary_10);
std_df_binary_10_SI=std(df_binary_10);
% disp(['Fractal dimension binary 10, Df = ' num2str(mean(df_binary_10(4:8))) ' +/- ' num2str(std(df_binary_10(4:8)))]);
clear 'n' 'r'

% Binary 15
binary_15=(I_gray<15);
% imwrite(binary_15, 'Binary_15.bmp');
[n,r] = boxcount(binary_15);
df_binary_15= -diff(log(n))./diff(log(r));
Df_binary_15_SI=mean(df_binary_15);
std_df_binary_15_SI=std(df_binary_15);
% disp(['Fractal dimension binary 15, Df = ' num2str(mean(df_binary_15(4:8))) ' +/- ' num2str(std(df_binary_15(4:8)))]);
clear 'n' 'r'

% Binary 20
binary_20=(I_gray<20);
% imwrite(binary_20, 'Binary_20.bmp');
[n,r] = boxcount(binary_20);
df_binary_20= -diff(log(n))./diff(log(r));
Df_binary_20_SI=mean(df_binary_20);
std_df_binary_20_SI=std(df_binary_20);
% disp(['Fractal dimension binary 20, Df = ' num2str(mean(df_binary_20(4:8))) ' +/- ' num2str(std(df_binary_20(4:8)))]);
clear 'n' 'r'

% Binary 25
binary_25=(I_gray<25);
% imwrite(binary_25, 'Binary_25.bmp');
[n,r] = boxcount(binary_25);
df_binary_25= -diff(log(n))./diff(log(r));
Df_binary_25_SI=mean(df_binary_25);
std_df_binary_25_SI=std(df_binary_25);
% disp(['Fractal dimension binary 25, Df = ' num2str(mean(df_binary_25(4:8))) ' +/- ' num2str(std(df_binary_25(4:8)))]);
clear 'n' 'r'

% Binary 30
binary_30=(I_gray<30);
% imwrite(binary_30, 'Binary_30.bmp');
[n,r] = boxcount(binary_30);
df_binary_30= -diff(log(n))./diff(log(r));
Df_binary_30_SI=mean(df_binary_30);
std_df_binary_30_SI=std(df_binary_30);
% disp(['Fractal dimension binary 30, Df = ' num2str(mean(df_binary_30(4:8))) ' +/- ' num2str(std(df_binary_30(4:8)))]);
clear 'n' 'r'

% Binary 35
binary_35=(I_gray<35);
% imwrite(binary_35, 'Binary_35.bmp');
[n,r] = boxcount(binary_35);
df_binary_35= -diff(log(n))./diff(log(r));
Df_binary_35_SI=mean(df_binary_35);
std_df_binary_35_SI=std(df_binary_35);
% disp(['Fractal dimension binary 35, Df = ' num2str(mean(df_binary_35(4:8))) ' +/- ' num2str(std(df_binary_35(4:8)))]);
clear 'n' 'r'

% Binary 40
binary_40=(I_gray<40);
% imwrite(binary_40, 'Binary_40.bmp');
[n,r] = boxcount(binary_40);
df_binary_40= -diff(log(n))./diff(log(r));
Df_binary_40_SI=mean(df_binary_40);
std_df_binary_40_SI=std(df_binary_40);
% disp(['Fractal dimension binary 40, Df = ' num2str(mean(df_binary_40(4:8))) ' +/- ' num2str(std(df_binary_40(4:8)))]);
clear 'n' 'r'

% Binary 45
binary_45=(I_gray<45);
% imwrite(binary_45, 'Binary_45.bmp');
[n,r] = boxcount(binary_45);
df_binary_45= -diff(log(n))./diff(log(r));
Df_binary_45_SI=mean(df_binary_45);
std_df_binary_45_SI=std(df_binary_45);
% disp(['Fractal dimension binary 45, Df = ' num2str(mean(df_binary_45(4:8))) ' +/- ' num2str(std(df_binary_45(4:8)))]);
clear 'n' 'r'

% Binary 50
binary_50=(I_gray<50);
% imwrite(binary_50, 'Binary_50.bmp');
[n,r] = boxcount(binary_50);
df_binary_50= -diff(log(n))./diff(log(r));
Df_binary_50_SI=mean(df_binary_50);
std_df_binary_50_SI=std(df_binary_50);
% disp(['Fractal dimension binary 50, Df = ' num2str(mean(df_binary_50(4:8))) ' +/- ' num2str(std(df_binary_50(4:8)))]);
clear 'n' 'r'

% Binary 55
binary_55=(I_gray<55);
% imwrite(binary_55, 'Binary_55.bmp');
[n,r] = boxcount(binary_55);
df_binary_55= -diff(log(n))./diff(log(r));
Df_binary_55_SI=mean(df_binary_55);
std_df_binary_55_SI=std(df_binary_55);
% disp(['Fractal dimension binary 55, Df = ' num2str(mean(df_binary_55(4:8))) ' +/- ' num2str(std(df_binary_55(4:8)))]);
clear 'n' 'r'

% Binary 60
binary_60=(I_gray<60);
% imwrite(binary_60, 'Binary_60.bmp');
[n,r] = boxcount(binary_60);
df_binary_60= -diff(log(n))./diff(log(r));
Df_binary_60_SI=mean(df_binary_60);
std_df_binary_60_SI=std(df_binary_60);
% disp(['Fractal dimension binary 60, Df = ' num2str(mean(df_binary_60(4:8))) ' +/- ' num2str(std(df_binary_60(4:8)))]);
clear 'n' 'r'

% Binary 65
binary_65=(I_gray<65);
% imwrite(binary_65, 'Binary_65.bmp');
[n,r] = boxcount(binary_65);
df_binary_65= -diff(log(n))./diff(log(r));
Df_binary_65_SI=mean(df_binary_65);
std_df_binary_65_SI=std(df_binary_65);
% disp(['Fractal dimension binary 65, Df = ' num2str(mean(df_binary_65(4:8))) ' +/- ' num2str(std(df_binary_65(4:8)))]);
clear 'n' 'r'

% Binary 70
binary_70=(I_gray<70);
% imwrite(binary_70, 'Binary_70.bmp');
[n,r] = boxcount(binary_70);
df_binary_70= -diff(log(n))./diff(log(r));
Df_binary_70_SI=mean(df_binary_70);
std_df_binary_70_SI=std(df_binary_70);
% disp(['Fractal dimension binary 70, Df = ' num2str(mean(df_binary_70(4:8))) ' +/- ' num2str(std(df_binary_70(4:8)))]);
clear 'n' 'r'

% Binary 75
binary_75=(I_gray<75);
% imwrite(binary_75, 'Binary_75.bmp');
[n,r] = boxcount(binary_75);
df_binary_75= -diff(log(n))./diff(log(r));
Df_binary_75_SI=mean(df_binary_75);
std_df_binary_75_SI=std(df_binary_75);
% disp(['Fractal dimension binary 75, Df = ' num2str(mean(df_binary_75(4:8))) ' +/- ' num2str(std(df_binary_75(4:8)))]);
clear 'n' 'r'

% Binary 80
binary_80=(I_gray<80);
% imwrite(binary_80, 'Binary_80.bmp');
[n,r] = boxcount(binary_80);
df_binary_80= -diff(log(n))./diff(log(r));
Df_binary_80_SI=mean(df_binary_80);
std_df_binary_80_SI=std(df_binary_80);
% disp(['Fractal dimension binary 80, Df = ' num2str(mean(df_binary_80(4:8))) ' +/- ' num2str(std(df_binary_80(4:8)))]);
clear 'n' 'r'

% Binary 85
binary_85=(I_gray<85);
% imwrite(binary_85, 'Binary_85.bmp');
[n,r] = boxcount(binary_85);
df_binary_85= -diff(log(n))./diff(log(r));
Df_binary_85_SI=mean(df_binary_85);
std_df_binary_85_SI=std(df_binary_85);
% disp(['Fractal dimension binary 85, Df = ' num2str(mean(df_binary_85(4:8))) ' +/- ' num2str(std(df_binary_85(4:8)))]);
clear 'n' 'r'

% Binary 90
binary_90=(I_gray<90);
% imwrite(binary_90, 'Binary_90.bmp');
[n,r] = boxcount(binary_90);
df_binary_90= -diff(log(n))./diff(log(r));
Df_binary_90_SI=mean(df_binary_90);
std_df_binary_90_SI=std(df_binary_90);
% disp(['Fractal dimension binary 90, Df = ' num2str(mean(df_binary_90(4:8))) ' +/- ' num2str(std(df_binary_90(4:8)))]);
clear 'n' 'r'

% Binary 95
binary_95=(I_gray<95);
% imwrite(binary_95, 'Binary_95.bmp');
[n,r] = boxcount(binary_95);
df_binary_95= -diff(log(n))./diff(log(r));
Df_binary_95_SI=mean(df_binary_95);
std_df_binary_95_SI=std(df_binary_95);
% disp(['Fractal dimension binary 95, Df = ' num2str(mean(df_binary_95(4:8))) ' +/- ' num2str(std(df_binary_95(4:8)))]);
clear 'n' 'r'

% Binary 100
binary_100=(I_gray<100);
% imwrite(binary_100, 'Binary_100.bmp');
[n,r] = boxcount(binary_100);
df_binary_100= -diff(log(n))./diff(log(r));
Df_binary_100_SI=mean(df_binary_100);
std_df_binary_100_SI=std(df_binary_100);
% disp(['Fractal dimension binary 100, Df = ' num2str(mean(df_binary_100(4:8))) ' +/- ' num2str(std(df_binary_100(4:8)))]);
clear 'n' 'r'

% Binary 105
binary_105=(I_gray<105);
% imwrite(binary_105, 'Binary_105.bmp');
[n,r] = boxcount(binary_105);
df_binary_105= -diff(log(n))./diff(log(r));
Df_binary_105_SI=mean(df_binary_105);
std_df_binary_105_SI=std(df_binary_105);
% disp(['Fractal dimension binary 105, Df = ' num2str(mean(df_binary_105(4:8))) ' +/- ' num2str(std(df_binary_105(4:8)))]);
clear 'n' 'r'

% Binary 110
binary_110=(I_gray<110);
% imwrite(binary_110, 'Binary_110.bmp');
[n,r] = boxcount(binary_110);
df_binary_110= -diff(log(n))./diff(log(r));
Df_binary_110_SI=mean(df_binary_110);
std_df_binary_110_SI=std(df_binary_110);
% disp(['Fractal dimension binary 110, Df = ' num2str(mean(df_binary_110(4:8))) ' +/- ' num2str(std(df_binary_110(4:8)))]);
clear 'n' 'r'

% Binary 115
binary_115=(I_gray<115);
% imwrite(binary_115, 'Binary_115.bmp');
[n,r] = boxcount(binary_115);
df_binary_115= -diff(log(n))./diff(log(r));
Df_binary_115_SI=mean(df_binary_115);
std_df_binary_115_SI=std(df_binary_115);
% disp(['Fractal dimension binary 115, Df = ' num2str(mean(df_binary_115(4:8))) ' +/- ' num2str(std(df_binary_115(4:8)))]);
clear 'n' 'r'

% Binary 120
binary_120=(I_gray<120);
% imwrite(binary_120, 'Binary_120.bmp');
[n,r] = boxcount(binary_120);
df_binary_120= -diff(log(n))./diff(log(r));
Df_binary_120_SI=mean(df_binary_120);
std_df_binary_120_SI=std(df_binary_120);
% disp(['Fractal dimension binary 120, Df = ' num2str(mean(df_binary_120(4:8))) ' +/- ' num2str(std(df_binary_120(4:8)))]);
clear 'n' 'r'

% Binary 125
binary_125=(I_gray<125);
% imwrite(binary_125, 'Binary_125.bmp');
[n,r] = boxcount(binary_125);
df_binary_125= -diff(log(n))./diff(log(r));
Df_binary_125_SI=mean(df_binary_125);
std_df_binary_125_SI=std(df_binary_125);
% disp(['Fractal dimension binary 125, Df = ' num2str(mean(df_binary_125(4:8))) ' +/- ' num2str(std(df_binary_125(4:8)))]);
clear 'n' 'r'

% Binary 130
binary_130=(I_gray<130);
% imwrite(binary_130, 'Binary_130.bmp');
[n,r] = boxcount(binary_130);
df_binary_130= -diff(log(n))./diff(log(r));
Df_binary_130_SI=mean(df_binary_130);
std_df_binary_130_SI=std(df_binary_130);
% disp(['Fractal dimension binary 130, Df = ' num2str(mean(df_binary_130(4:8))) ' +/- ' num2str(std(df_binary_130(4:8)))]);
clear 'n' 'r'

% Binary 135
binary_135=(I_gray<135);
% imwrite(binary_135, 'Binary_135.bmp');
[n,r] = boxcount(binary_135);
df_binary_135= -diff(log(n))./diff(log(r));
Df_binary_135_SI=mean(df_binary_135);
std_df_binary_135_SI=std(df_binary_135);
% disp(['Fractal dimension binary 135, Df = ' num2str(mean(df_binary_135(4:8))) ' +/- ' num2str(std(df_binary_135(4:8)))]);
clear 'n' 'r'

% Binary 140
binary_140=(I_gray<140);
% imwrite(binary_140, 'Binary_140.bmp');
[n,r] = boxcount(binary_140);
df_binary_140= -diff(log(n))./diff(log(r));
Df_binary_140_SI=mean(df_binary_140);
std_df_binary_140_SI=std(df_binary_140);
% disp(['Fractal dimension binary 140, Df = ' num2str(mean(df_binary_140(4:8))) ' +/- ' num2str(std(df_binary_140(4:8)))]);
clear 'n' 'r'

% Binary 145
binary_145=(I_gray<145);
% imwrite(binary_145, 'Binary_145.bmp');
[n,r] = boxcount(binary_145);
df_binary_145= -diff(log(n))./diff(log(r));
Df_binary_145_SI=mean(df_binary_145);
std_df_binary_145_SI=std(df_binary_145);
% disp(['Fractal dimension binary 145, Df = ' num2str(mean(df_binary_145(4:8))) ' +/- ' num2str(std(df_binary_145(4:8)))]);
clear 'n' 'r'

% Binary 150
binary_150=(I_gray<150);
% imwrite(binary_150, 'Binary_150.bmp');
[n,r] = boxcount(binary_150);
df_binary_150= -diff(log(n))./diff(log(r));
Df_binary_150_SI=mean(df_binary_150);
std_df_binary_150_SI=std(df_binary_150);
% disp(['Fractal dimension binary 150, Df = ' num2str(mean(df_binary_150(4:8))) ' +/- ' num2str(std(df_binary_150(4:8)))]);
clear 'n' 'r'

% Binary 155
binary_155=(I_gray<155);
% imwrite(binary_155, 'Binary_155.bmp');
[n,r] = boxcount(binary_155);
df_binary_155= -diff(log(n))./diff(log(r));
Df_binary_155_SI=mean(df_binary_155);
std_df_binary_155_SI=std(df_binary_155);
% disp(['Fractal dimension binary 155, Df = ' num2str(mean(df_binary_155(4:8))) ' +/- ' num2str(std(df_binary_155(4:8)))]);
clear 'n' 'r'

% Binary 160
binary_160=(I_gray<160);
% imwrite(binary_160, 'Binary_160.bmp');
[n,r] = boxcount(binary_160);
df_binary_160= -diff(log(n))./diff(log(r));
Df_binary_160_SI=mean(df_binary_160);
std_df_binary_160_SI=std(df_binary_160);
% disp(['Fractal dimension binary 160, Df = ' num2str(mean(df_binary_160(4:8))) ' +/- ' num2str(std(df_binary_160(4:8)))]);
clear 'n' 'r'

% Binary 165
binary_165=(I_gray<165);
% imwrite(binary_165, 'Binary_165.bmp');
[n,r] = boxcount(binary_165);
df_binary_165= -diff(log(n))./diff(log(r));
Df_binary_165_SI=mean(df_binary_165);
std_df_binary_165_SI=std(df_binary_165);
% disp(['Fractal dimension binary 165, Df = ' num2str(mean(df_binary_165(4:8))) ' +/- ' num2str(std(df_binary_165(4:8)))]);
clear 'n' 'r'

% Binary 170
binary_170=(I_gray<170);
% imwrite(binary_170, 'Binary_170.bmp');
[n,r] = boxcount(binary_170);
df_binary_170= -diff(log(n))./diff(log(r));
Df_binary_170_SI=mean(df_binary_170);
std_df_binary_170_SI=std(df_binary_170);
% disp(['Fractal dimension binary 170, Df = ' num2str(mean(df_binary_170(4:8))) ' +/- ' num2str(std(df_binary_170(4:8)))]);
clear 'n' 'r'

% Binary 175
binary_175=(I_gray<175);
% imwrite(binary_175, 'Binary_175.bmp');
[n,r] = boxcount(binary_175);
df_binary_175= -diff(log(n))./diff(log(r));
Df_binary_175_SI=mean(df_binary_175);
std_df_binary_175_SI=std(df_binary_175);
% disp(['Fractal dimension binary 175, Df = ' num2str(mean(df_binary_175(4:8))) ' +/- ' num2str(std(df_binary_175(4:8)))]);
clear 'n' 'r'

% Binary 180
binary_180=(I_gray<180);
% imwrite(binary_180, 'Binary_180.bmp');
[n,r] = boxcount(binary_180);
df_binary_180= -diff(log(n))./diff(log(r));
Df_binary_180_SI=mean(df_binary_180);
std_df_binary_180_SI=std(df_binary_180);
% disp(['Fractal dimension binary 180, Df = ' num2str(mean(df_binary_180(4:8))) ' +/- ' num2str(std(df_binary_180(4:8)))]);
clear 'n' 'r'

% Binary 185
binary_185=(I_gray<185);
% imwrite(binary_185, 'Binary_185.bmp');
[n,r] = boxcount(binary_185);
df_binary_185= -diff(log(n))./diff(log(r));
Df_binary_185_SI=mean(df_binary_185);
std_df_binary_185_SI=std(df_binary_185);
% disp(['Fractal dimension binary 185, Df = ' num2str(mean(df_binary_185(4:8))) ' +/- ' num2str(std(df_binary_185(4:8)))]);
clear 'n' 'r'

% Binary 190
binary_190=(I_gray<190);
% imwrite(binary_190, 'Binary_190.bmp');
[n,r] = boxcount(binary_190);
df_binary_190= -diff(log(n))./diff(log(r));
Df_binary_190_SI=mean(df_binary_190);
std_df_binary_190_SI=std(df_binary_190);
% disp(['Fractal dimension binary 190, Df = ' num2str(mean(df_binary_190(4:8))) ' +/- ' num2str(std(df_binary_190(4:8)))]);
clear 'n' 'r'

% Binary 195
binary_195=(I_gray<195);
% imwrite(binary_195, 'Binary_195.bmp');
[n,r] = boxcount(binary_195);
df_binary_195= -diff(log(n))./diff(log(r));
Df_binary_195_SI=mean(df_binary_195);
std_df_binary_195_SI=std(df_binary_195);
% disp(['Fractal dimension binary 195, Df = ' num2str(mean(df_binary_195(4:8))) ' +/- ' num2str(std(df_binary_195(4:8)))]);
clear 'n' 'r'

% Binary 200
binary_200=(I_gray<200);
% imwrite(binary_200, 'Binary_200.bmp');
[n,r] = boxcount(binary_200);
df_binary_200= -diff(log(n))./diff(log(r));
Df_binary_200_SI=mean(df_binary_200);
std_df_binary_200_SI=std(df_binary_200);
% disp(['Fractal dimension binary 200, Df = ' num2str(mean(df_binary_200(4:8))) ' +/- ' num2str(std(df_binary_200(4:8)))]);
clear 'n' 'r'

% Binary 205
binary_205=(I_gray<205);
% imwrite(binary_205, 'Binary_205.bmp');
[n,r] = boxcount(binary_205);
df_binary_205= -diff(log(n))./diff(log(r));
Df_binary_205_SI=mean(df_binary_205);
std_df_binary_205_SI=std(df_binary_205);
% disp(['Fractal dimension binary 205, Df = ' num2str(mean(df_binary_205(4:8))) ' +/- ' num2str(std(df_binary_205(4:8)))]);
clear 'n' 'r'

% Binary 210
binary_210=(I_gray<210);
% imwrite(binary_210, 'Binary_210.bmp');
[n,r] = boxcount(binary_210);
df_binary_210= -diff(log(n))./diff(log(r));
Df_binary_210_SI=mean(df_binary_210);
std_df_binary_210_SI=std(df_binary_210);
% disp(['Fractal dimension binary 210, Df = ' num2str(mean(df_binary_210(4:8))) ' +/- ' num2str(std(df_binary_210(4:8)))]);
clear 'n' 'r'

% Binary 215
binary_215=(I_gray<215);
% imwrite(binary_215, 'Binary_215.bmp');
[n,r] = boxcount(binary_215);
df_binary_215= -diff(log(n))./diff(log(r));
Df_binary_215_SI=mean(df_binary_215);
std_df_binary_215_SI=std(df_binary_215);
% disp(['Fractal dimension binary 215, Df = ' num2str(mean(df_binary_215(4:8))) ' +/- ' num2str(std(df_binary_215(4:8)))]);
clear 'n' 'r'

% Binary 220
binary_220=(I_gray<220);
% imwrite(binary_220, 'Binary_220.bmp');
[n,r] = boxcount(binary_220);
df_binary_220= -diff(log(n))./diff(log(r));
Df_binary_220_SI=mean(df_binary_220);
std_df_binary_220_SI=std(df_binary_220);
% disp(['Fractal dimension binary 220, Df = ' num2str(mean(df_binary_220(4:8))) ' +/- ' num2str(std(df_binary_220(4:8)))]);
clear 'n' 'r'

% Binary 225
binary_225=(I_gray<225);
% imwrite(binary_225, 'Binary_225.bmp');
[n,r] = boxcount(binary_225);
df_binary_225= -diff(log(n))./diff(log(r));
Df_binary_225_SI=mean(df_binary_225);
std_df_binary_225_SI=std(df_binary_225);
% disp(['Fractal dimension binary 225, Df = ' num2str(mean(df_binary_225(4:8))) ' +/- ' num2str(std(df_binary_225(4:8)))]);
clear 'n' 'r'

% Binary 230
binary_230=(I_gray<230);
% imwrite(binary_230, 'Binary_230.bmp');
[n,r] = boxcount(binary_230);
df_binary_230= -diff(log(n))./diff(log(r));
Df_binary_230_SI=mean(df_binary_230);
std_df_binary_230_SI=std(df_binary_230);
% disp(['Fractal dimension binary 230, Df = ' num2str(mean(df_binary_230(4:8))) ' +/- ' num2str(std(df_binary_230(4:8)))]);
clear 'n' 'r'

% Binary 235
binary_235=(I_gray<235);
% imwrite(binary_235, 'Binary_235.bmp');
[n,r] = boxcount(binary_235);
df_binary_235= -diff(log(n))./diff(log(r));
Df_binary_235_SI=mean(df_binary_235);
std_df_binary_235_SI=std(df_binary_235);
% disp(['Fractal dimension binary 235, Df = ' num2str(mean(df_binary_235(4:8))) ' +/- ' num2str(std(df_binary_235(4:8)))]);
clear 'n' 'r'

% Binary 240
binary_240=(I_gray<240);
% imwrite(binary_240, 'Binary_240.bmp');
[n,r] = boxcount(binary_240);
df_binary_240= -diff(log(n))./diff(log(r));
Df_binary_240_SI=mean(df_binary_240);
std_df_binary_240_SI=std(df_binary_240);
% disp(['Fractal dimension binary 240, Df = ' num2str(mean(df_binary_240(4:8))) ' +/- ' num2str(std(df_binary_240(4:8)))]);
clear 'n' 'r'

% Binary 245
binary_245=(I_gray<245);
% imwrite(binary_245, 'Binary_245.bmp');
[n,r] = boxcount(binary_245);
df_binary_245= -diff(log(n))./diff(log(r));
Df_binary_245_SI=mean(df_binary_245);
std_df_binary_245_SI=std(df_binary_245);
% disp(['Fractal dimension binary 245, Df = ' num2str(mean(df_binary_245(4:8))) ' +/- ' num2str(std(df_binary_245(4:8)))]);
clear 'n' 'r'

% Binary 250
binary_250=(I_gray<250);
% imwrite(binary_250, 'Binary_250.bmp');
[n,r] = boxcount(binary_250);
df_binary_250= -diff(log(n))./diff(log(r));
Df_binary_250_SI=mean(df_binary_250);
std_df_binary_250_SI=std(df_binary_250);
% disp(['Fractal dimension binary 250, Df = ' num2str(mean(df_binary_250(4:8))) ' +/- ' num2str(std(df_binary_250(4:8)))]);
clear 'n' 'r'

% Binary 255
binary_255=(I_gray<255);
% imwrite(binary_255, 'Binary_255.bmp');
[n,r] = boxcount(binary_255);
df_binary_255= -diff(log(n))./diff(log(r));
Df_binary_255_SI=mean(df_binary_255);
std_df_binary_255_SI=std(df_binary_255);
% disp(['Fractal dimension binary 255, Df = ' num2str(mean(df_binary_255(4:8))) ' +/- ' num2str(std(df_binary_255(4:8)))]);
clear 'n' 'r'

%%

%Collect data of fractal dimensions
df_binary_FINAL=cat(1, df_binary_Otzu,df_binary_5, df_binary_10, df_binary_15, df_binary_20, df_binary_25, df_binary_30, df_binary_35, df_binary_40, df_binary_45, df_binary_50, df_binary_55, df_binary_60, df_binary_65, df_binary_70, df_binary_75, df_binary_80, df_binary_85, df_binary_90, df_binary_95, df_binary_100, df_binary_105, df_binary_110, df_binary_115, df_binary_120, df_binary_125, df_binary_130, df_binary_135, df_binary_140, df_binary_145, df_binary_150, df_binary_155, df_binary_160, df_binary_165, df_binary_170, df_binary_175, df_binary_180, df_binary_185, df_binary_190, df_binary_195, df_binary_200, df_binary_205, df_binary_210, df_binary_215,df_binary_220 ,df_binary_225 ,df_binary_230 ,df_binary_235 ,df_binary_240, df_binary_245, df_binary_250, df_binary_255);

%Dimensione frattale media
Df_binary_SI=cat(1, Df_binary_0_SI, Df_binary_5_SI, Df_binary_10_SI, Df_binary_15_SI, Df_binary_20_SI, Df_binary_25_SI, Df_binary_30_SI, Df_binary_35_SI, Df_binary_40_SI, Df_binary_45_SI, Df_binary_50_SI, Df_binary_55_SI, Df_binary_60_SI, Df_binary_65_SI, Df_binary_70_SI, Df_binary_75_SI, Df_binary_80_SI, Df_binary_85_SI, Df_binary_90_SI, Df_binary_95_SI, Df_binary_100_SI, Df_binary_105_SI, Df_binary_110_SI, Df_binary_115_SI, Df_binary_120_SI, Df_binary_125_SI, Df_binary_130_SI, Df_binary_135_SI, Df_binary_140_SI, Df_binary_145_SI, Df_binary_150_SI, Df_binary_155_SI, Df_binary_160_SI, Df_binary_165_SI, Df_binary_170_SI, Df_binary_175_SI, Df_binary_180_SI, Df_binary_185_SI, Df_binary_190_SI, Df_binary_195_SI, Df_binary_200_SI, Df_binary_205_SI, Df_binary_210_SI, Df_binary_215_SI, Df_binary_220_SI, Df_binary_225_SI, Df_binary_230_SI, Df_binary_235_SI, Df_binary_240_SI, Df_binary_245_SI, Df_binary_250_SI, Df_binary_255_SI );

%Deviazione standard della dimensione frattale
std_df_binary_SI=cat(1, std_df_binary_0_SI, std_df_binary_5_SI, std_df_binary_10_SI, std_df_binary_15_SI, std_df_binary_20_SI, std_df_binary_25_SI, std_df_binary_30_SI, std_df_binary_35_SI, std_df_binary_40_SI, std_df_binary_45_SI, std_df_binary_50_SI, std_df_binary_55_SI, std_df_binary_60_SI, std_df_binary_65_SI, std_df_binary_70_SI, std_df_binary_75_SI, std_df_binary_80_SI, std_df_binary_85_SI, std_df_binary_90_SI, std_df_binary_95_SI, std_df_binary_100_SI, std_df_binary_105_SI, std_df_binary_110_SI, std_df_binary_115_SI, std_df_binary_120_SI, std_df_binary_125_SI, std_df_binary_130_SI, std_df_binary_135_SI, std_df_binary_140_SI, std_df_binary_145_SI, std_df_binary_150_SI, std_df_binary_155_SI, std_df_binary_160_SI, std_df_binary_165_SI, std_df_binary_170_SI, std_df_binary_175_SI, std_df_binary_180_SI, std_df_binary_185_SI, std_df_binary_190_SI, std_df_binary_195_SI, std_df_binary_200_SI, std_df_binary_205_SI, std_df_binary_210_SI, std_df_binary_215_SI, std_df_binary_220_SI, std_df_binary_225_SI, std_df_binary_230_SI, std_df_binary_235_SI, std_df_binary_240_SI, std_df_binary_245_SI, std_df_binary_250_SI, std_df_binary_255_SI);
%%

%Plot mean fractal dimension and standard deviation as a function of the Grayscale channel (binarization threshold)
%It can be used also the errorbar fuction,
y = Df_binary_SI; %y(isnan(y))=0; % your mean standard deviation;
x=0:5:255;% grayscale channels
std_dev = std_df_binary_SI; %std_dev(isnan(std_dev))=0;

Std_dev_FD=std_dev;
FD=y;
clearvars -except I I_gray GRAY_CH MIN FD Std_dev_FD Fractal_d MIN_std_dev multi
%%
%Calculate the fractal dimension based on a binarized image with otzu's
%algorithm.
% By default, the function imbinarize creates a binary image using
% a threshold obtained using Otzu method. This default threshold is identical
% to the threshold returned by graythresh. However, imbinarize only returns the binary image.
% If you want to know the level or the effectiveness metric,
level = graythresh(I_gray)
BW = imbinarize(I_gray,level);
%return 0 to 1
BW=1-BW;
% % h3=figure;
% % hold on;
% % imshow(BW)
% % imwrite(BW, 'Binary_Otzu.bmp');
% % hold off;
[n,r] = boxcount(BW);
df_binary_Otzu= -diff(log(n))./diff(log(r));
Df_binary_Otzu_SI=mean(df_binary_Otzu);
std_df_binary_Otzu_SI=std(df_binary_Otzu);
% disp(['Fractal dimension of the binarized image with Otzu algorithm, Df = ' num2str(mean(df_binary_Otzu(4:8))) ' +/- ' num2str(std(df_binary_Otzu(4:8)))]);
clear 'n' 'r'
end
