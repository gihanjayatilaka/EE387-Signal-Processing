clear all;
close all;
clc;
% [Q,R] = deconv(B,A)
% B = conv(A,Q) + R.

n=0:3;
h=0.5.^n;

y=[1, 2, 2.5, 3, 3, 3, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0 ];

[x,R]=deconv(y,h);

figure

subplot(3,1,1);
stem(h);
title('Impulse response');
xlabel('n');
ylabel('h(n)');

subplot(3,1,2);
stem(y);
title('Output');
xlabel('n');
ylabel('y(n)');


subplot(3,1,3);
stem(x);
title('Input');
xlabel('n');
ylabel('x(n)');

