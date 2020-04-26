% EXERCISE (3) (B) CODE
clear all;close all;clc;
im=zeros(1,40);
im(1)=1;
balance=investor(im);
savings=merchant(im);

subplot(3,1,1);
stem(im,'b.');
title("Impulse");
subplot(3,1,2);
stem(balance,'b.');
title("Investor bank balance");
subplot(3,1,3);
stem(savings,'b.');
title("Merchant savings");