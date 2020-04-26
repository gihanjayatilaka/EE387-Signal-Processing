%   EE387 Lab04
%   E/14/158
%   22-01-2019
clear all;
close all;
 
N=4;
Rp=2;
fp=1000;
 
Wp=2*pi*fp;
 
[num,den]=cheby1(N,Rp,Wp,'s');
fil=tf(num,den);
bode(fil);