% EXERCISE (1) (B) CODE
clear all;close all;clc;

tStart=-30;
tEnd=30;

w=[pi/6,  8*pi/31];
t=linspace(tStart,tEnd,100);%CT variable
T=5;
k=(tStart/T):(tEnd/T);
n=k*T;%DT variable

figure;
title('Ex 01 : B');
hold on;


for idx=1:2
    x_t=cos(w(idx)*t);
    x_n=cos(w(idx)*n);
    
    subplot(2,1,idx);
    hold on;
    plot(t,x_t);%Plot the CT
    stem(n,x_n);%Plot the DT
    xlabel('t,n');
    ylabel('x');
    legend(["x(t)","x[n]"]);
    labels=["x = cos(2 \pi t /12)","x = cos(8 \pi n /31)"];title(labels(idx));
end