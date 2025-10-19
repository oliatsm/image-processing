function [s,t]=sobelfilter(image,type)

filter = [1 2 1; 0 0 0; -1 -2 -1];

switch type
    case 'horizontal'
        h=convolution(image,filter);
    case 'vertical'
        h=convolution(image,filter');
    case 'any'
        a=convolution(image,filter);
        b=convolution(image,filter');
        h = sqrt(a.*a + b.*b);
    otherwise 
        disp('not valid');
end

s=normalize(h,0,255);
t=normalize(abs(h),0,255);

    
       
        