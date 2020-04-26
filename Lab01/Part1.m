clear all;
close all;
clc;

Ts=0.01; %Sampling time
t=-5:Ts:5; %Time vector

y1=ramp(t,3,3);
y2=ramp(t,-6,1);
y3=ramp(t,3,0);
y4=ustep(t,-3);



y=y1 - 2*y2 + 3*y3 - y4;

plot(t,y,'k');
axis([-5,5,-1,7]);
grid;