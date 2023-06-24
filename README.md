#FD multiple images (boxcount) - grayscale level

Fractal dimension as a function of the grayscale level used as the binarization threshold (Routines collection). 
[![DOI](https://zenodo.org/badge/658008539.svg)](https://zenodo.org/badge/latestdoi/658008539)

Copyright (C) 2023  Riccardo Gasbarrone


This MATLAB routines collection allows to perform the following steps to images: 
• Conversion of the original image to grayscale.
• Binarization of the grayscale image at different thresholds for the grayscale levels, ranging from 0 to 255 with a step of 5.
• Calculation of the fractal dimension using the box-counting method for each binarized image.
• Obtaining the curve of the fractal dimension as a function of the binarization threshold (grayscale level) of the image.
Fractal_optimizer.m (and fractal_optimizer_slope.m) converts the selected image to grayscale (uint8). based on the chosen image the script binarizes the scaled image of gray "I_gray" with a threshold varying from 0 to 255 with a pitch of 5. For each binary image is calculated fractal size with the "boxcount.m function", then the mean is obtained (Df_binary_SI) and the standard deviation (std_df_binary_SI) of the fractal size for each image.
process_all_files.m (and process_all_files_slope.m) script saves the Fractal Dimension (FD), the standard deviation of the FD (Std_dev_FD, calculated at different grayscale thresholds) as a fuction of the threshold, the FD calculated on otzu binarized image (Df_binary_Otzu_SI) and the corresponding standard deviation (std_df_binary_Otzu_SI). The process is applied on all .tif images in the folder.
save_binarized_images.m script saves binary images thresholded at 50,	90, 135, 180, 205 and 230.
The MATLAB function boxcount.m by Frederic Moisy can be retrieved at:
https://it.mathworks.com/matlabcentral/fileexchange/13063-boxcount.
