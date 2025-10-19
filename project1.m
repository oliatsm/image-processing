clc;
clear all;

I1=imread('images/grid.png'); %loads grid as logical
I1=im2uint8(I1);              %convert grid to uint8
I2=imread('images/Lenna.png');
%%
%erotima 1

L1=gaussianfilter(I1);
L2=gaussianfilter(I2);
figure();
subplot(2,2,1), subimage(I1);
subplot(2,2,2), subimage(L1);
subplot(2,2,3), subimage(I2);
subplot(2,2,4), subimage(L2);
%%
% erotima 2
[H11, H12]=sobelfilter(I1,'horizontal');
[J11, J12]=sobelfilter(L1,'horizontal');
[H21, H22]=sobelfilter(I2,'horizontal');
[J21, J22]=sobelfilter(L2,'horizontal');

figure();
subplot(2,2,1), subimage(H11);
subplot(2,2,2), subimage(H12);
subplot(2,2,3), subimage(H21);
subplot(2,2,4), subimage(H22);

figure();
subplot(2,2,1), subimage(J11);
subplot(2,2,2), subimage(J12);
subplot(2,2,3), subimage(J21);
subplot(2,2,4), subimage(J22);



%% erotima 3

[H11, H12]=sobelfilter(I1,'vertical');
[J11, J12]=sobelfilter(L1,'vertical');
[H21, H22]=sobelfilter(I2,'vertical');
[J21, J22]=sobelfilter(L2,'vertical');
figure();
subplot(2,2,1), subimage(H11);
subplot(2,2,2), subimage(H12);
subplot(2,2,3), subimage(H21);
subplot(2,2,4), subimage(H22);

figure(3);
subplot(2,2,1), subimage(J11);
subplot(2,2,2), subimage(J12);
subplot(2,2,3), subimage(J21);
subplot(2,2,4), subimage(J22);


%% erotima 4

[H11, H12]=sobelfilter(I1,'any');
[J11, J12]=sobelfilter(L1,'any');
[H21, H22]=sobelfilter(I2,'any');
[J21, J22]=sobelfilter(L2,'any');


figure();
subplot(2,2,1), subimage(H11);
subplot(2,2,2), subimage(H12);
subplot(2,2,3), subimage(H21);
subplot(2,2,4), subimage(H22);

figure();
subplot(2,2,1), subimage(J11);
subplot(2,2,2), subimage(J12);
subplot(2,2,3), subimage(J21);
subplot(2,2,4), subimage(J22);

%% erotima 5

T1=threshold(H11,40);
T2=threshold(H12,40);
T3=threshold(H21,40);
T4=threshold(H22,40);
figure();
subplot(2,2,1), subimage(T1);
subplot(2,2,2), subimage(T2);
subplot(2,2,3), subimage(T3);
subplot(2,2,4), subimage(T4);


