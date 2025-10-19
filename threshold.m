function h=threshold(image,t)


[x, y]=size(image);
for i=1:x
    for j=1:y
        if image(i,j)>t
            h(i,j)=image(i,j);
        else
            h(i,j)=0;
        end
    end
end
h=uint8(h);