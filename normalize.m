function d= normalize(a,x,y)

a=double(a);
range = max(a(:)) - min(a(:));
 c = (a - min(a(:))) / range;
 
 
range2 = y - x;
 d = (c*range2) + x;
 d=uint8(d);
 