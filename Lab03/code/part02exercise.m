close all
clear all
figure

subplot(2,2,1);
n1=[1,-1];
d1=[1,2,2];
sys1=tf(n1,d1);bode(sys1);

subplot(2,2,2);
n2=[1,5];
d2=[1,2,3];
sys2=tf(n2,d2);
bode(sys2);

subplot(2,2,3);
n3=[2,5,12];
d3=[1,2,10];
sys3=tf(n3,d3);
bode(sys3);

subplot(2,2,4)
n4=[2,5,12];
d4=conv([1,2,10],[1,2]);
sys4=tf(n4,d4);
bode(sys4);


for ii=1:3
   figure
   fi=158*ii;
   t=linspace(0,0.002*pi,20);
   x=sin(2*pi*fi*t);
   
   subplot(4,1,1);
   sys1=tf(n1,d1,fi);
   [y1,t1]=lsim(sys1,x);
   plot(t1,y1);
   
   subplot(4,1,2);
   sys2=tf(n2,d2,fi);
   [y2,t2]=lsim(sys2,x);
   plot(t2,y2);
   
   subplot(4,1,3);
   sys3=tf(n3,d3,fi);
   [y3,t3]=lsim(sys3,x);
   plot(t3,y3);
   
   subplot(4,1,4);
   sys4=tf(n4,d4,fi);
   [y4,t4]=lsim(sys4,x);
   plot(t4,y4);
   
end



