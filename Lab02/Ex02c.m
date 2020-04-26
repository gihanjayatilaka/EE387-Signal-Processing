% EXERCISE (2) (C) CODE
close all;clear all; clc;

X=[1	1	1	1	1	0	0	0	0	0	0	0	0	0	0];
h=[2	4	8	16	32	64	0	0	0	0	0	0	0	0	0];
Xh=myConv(X,h);%My implementation
Xhh=conv(X,h);%MATLAB function

subplot(2,2,1);
stem(X);
title("X[n]");

subplot(2,2,2);
stem(h);
title("h[n]");

subplot(2,2,3);
stem(Xh);
title("X[n]*h[n] my function");

subplot(2,2,4);
stem(Xhh);
title("X[n]*h[n] MATLAB function");
