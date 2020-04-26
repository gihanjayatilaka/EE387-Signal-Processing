%   EE387 Lab04
%   E/14/158
%   22-01-2019

clear all;
close all;
Fp=1000;Fs=5000;Fsample=10000;

Wp=Fp/Fsample; %Multiplying by 2pi is not requred since it cancels out
Ws=Fs/Fsample; 

[N,Wn]=buttord(Wp,Ws,3,30);
[zeros_,poles_,scale_]=butter(N,Wn);
[num,den]=butter(N,Wn);

tf=zpk(zeros_,poles_,scale_);
bode(tf);
figure
freqz(num,den,5000,Fsample)