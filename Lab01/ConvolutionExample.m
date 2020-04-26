clear all;
close all;
clc;

Ts=0.01; %Sampling time
t=-5:Ts:5; %Time vector


x1=rect(t);
y=conv(x1,x1);

try
    plot(t,y)
catch
    disp('The dimensions do not match for t and y');
end

t_y=-10:Ts:10;

%plot(t_y,y);

y1 = Ts* conv(x1,x1);
plot(t_y, y1);
axis( [-2 2 -1 2] ) ;
xlabel( 'time (sec)');
ylabel('y_1(t)');
title('Figure : y_1(t) = x_1(t)*x_1(t)');