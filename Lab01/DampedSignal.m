clear all;
close all;
clc;

Ts=0.01; %Sampling time
t=-5:Ts:5; %Time vector

x= 3 * exp(-1*t) .* cos(4*pi*t);
envelope= 3 * exp(-1*t);

figure;
hold on;
plot(t,x);
plot(t, envelope);
plot(t, -1*envelope);
title('A damped signal');
xlabel('t');
ylabel('x(t)');
grid