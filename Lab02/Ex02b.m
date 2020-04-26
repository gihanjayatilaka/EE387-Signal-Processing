% EXERCISE (2) (B) CODE

close all;clear all; clc;
n=1:10;
x=0.5.^n .* heaviside(n);
h=heaviside(n);

xh=myConv(x,h);

figure;
hold on;
stem(n,x,'r')
stem(n,h,'g');
stem((1:length(xh)),xh,'b');
legend(["x[n]=0.5^nU[n]","h[n]=U[n]","x[n]*h[n]"]);