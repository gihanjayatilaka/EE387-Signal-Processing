clear all;
close all;
subplot(2,2,1)
b = [1 -1]; % Numerator coefficients
a = [1 3 2]; % Demoninator coefficients
zs = roots(b); % Generetes Zeros
ps = roots(a); % Generetes poles
pzmap(ps,zs); % generates pole-zero diagram


n1=[1,5];
d1=[1,2,3];
zeros1=roots(n1);
poles1=roots(d1);
subplot(2,2,2);
pzmap(poles1,zeros1);


n2=[2,5,12];
d2=[1,2,10];
zeros2=roots(n2);
poles2=roots(d2);
subplot(2,2,3);
pzmap(poles2,zeros2);

n3=[2,5,12];
d3=conv([1,2,10],[1,2]);
zeros3=roots(n3);
poles3=roots(d3);
subplot(2,2,4);
pzmap(poles3,zeros3);

