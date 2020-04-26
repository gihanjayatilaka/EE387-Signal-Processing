%EE387 Tutorial 02
%E/14/158 gihanchanaka@gmail.com
clc;clear all;close all;

n1=[12];
d1=[1 8 12];
h1=tf(n1,d1);
x=ones(1,100);
t=linspace(0,5);
y1=lsim(h1,x,t);
plot(t,y1,t,x);
xlabel('time');
ylabel('amplitude');
legend('Output','Input');
title('EE387 E14158 Gihan Jayatilaka Q1 (i)');

figure;
n2=[116];
d2=[1 8 116];
h2=tf(n2,d2);
y2=lsim(h2,x,t);
plot(t,y2,t,x);
xlabel('time');
ylabel('amplitude');
legend('Output','Input');
title('EE387 E14158 Gihan Jayatilaka Q1 (ii)');


