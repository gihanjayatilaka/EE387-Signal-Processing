b=[2,2,17];
a=[1,4,104];
omega=linspace(-20,20,200);
H=freqs(b,a,omega);
subplot(2,1,1);
plot(omega,abs(H))
xlabel('omega / (rad/s))');
ylabel('magnitude of response');
subplot(2,1,2);
plot(omega,phase(H))
xlabel('omega / (rad/s))');
ylabel('phase of response');

figure;
subplot(2,1,1)
semilogx(omega,10*log(abs(H)));
xlabel('omega / (rad/s))');
ylabel('magnitude / (dB)');

subplot(2,1,2)
semilogx(omega,phase(H));
xlabel('omega / (rad/s))');
ylabel('phase');


figure
bode(tf(b,a))
