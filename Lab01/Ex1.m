clear all;
close all;
clc;

x1=[1,2,4];
h1=[1,1,1,1,1];
y1=conv(x1,h1);

x2=1:5;
h2=1;
y2=conv(x2,h2);

x3=[1,2,0,2,1];
h3=x3;
y3=conv(x3,h3);

%>>>>>>>> Plot the set (1) of graphs
subplot(3,3,1)
stem(x1)
title('x_1(n)');
grid

subplot(3,3,4)
stem(h1)
title('h_1(n)');
grid

subplot(3,3,7)
stem(y1)
title('y_1(n) = x_1(n)*h_1(n)');
grid

%>>>>>>>> Plot the set (2) of graphs
subplot(3,3,2)
stem(x2)
title('x_2(n)');
grid

subplot(3,3,5)
stem(h2)
title('h_2(n)');
grid

subplot(3,3,8)
stem(y2)
title('y_2(n) = x_2(n)*h_2(n)');
grid

%>>>>>>>> Plot the set (3) of graphs
subplot(3,3,3)
stem(x3)
title('x_3(n)');
grid

subplot(3,3,6)
stem(h3)
title('h_3(n)');
grid

subplot(3,3,9)
stem(y3)
title('y_3(n) = x_3(n)*h_3(n)');
grid