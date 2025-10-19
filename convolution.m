function h = convolution(image,filter)

image=double(image);
filter=double(filter);

[x1,y1]=size(image);
[x2,y2]=size(filter);

a=floor(x2/2);
b=floor(y2/2);

f(1:(x1+x2-1),1:(y1+y2-1))=0; 
f((a+1):(a+x1),(b+1):(b+y1))=image;

h(1:x1+x2-1,1:y1+y2-1)=0;

for m=1:x1-1
    for n=1:y1-1
        for k=1:x2
            for l=1:y2
                h(m+a,n+b)=(filter(k,l)*f(m+k,n+l))+h(m+a,n+b); 
            end
        end
    end
end

