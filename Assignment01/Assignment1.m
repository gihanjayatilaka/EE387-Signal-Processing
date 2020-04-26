%   EE387
%   E/14/158 gihanchanaka@gmail.com
clc
close all;
clear all;
N=[1,3,7,19,43,79];
overshoot=zeros(1,6);
t=linspace(-2,2);
w=2*pi/4;
figure;
hold on;
for idx = 1:6
    x=zeros(1,100);
    for tt = 1:100
        n = (-1*N(idx)):N(idx);
        a=sin(w*n)./(w*n);
        a(N(idx)+1)=1;
        e=exp(1i*w*n*t(tt));
        x(tt)=0.5*sum(a.*e);
        
    end
    
    overshoot(idx)=max(x);
    
    plot(t,real(x));
    
end

legend(["N=1","N=3","N=7","N=19","N=43","N=73"])
overshoot=real((overshoot-1)*100);