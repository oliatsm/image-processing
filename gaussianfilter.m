function h = gaussianfilter(image)

filter = fspecial('gaussian', [5 5], 5/6 );
h=convolution(image,filter);
h=uint8(h);


