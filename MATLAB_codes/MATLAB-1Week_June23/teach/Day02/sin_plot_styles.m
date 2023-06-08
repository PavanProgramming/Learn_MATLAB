

x = 0:pi/10:2*pi; % 0:1/10:2 % 0 1/10 2/10 3/10 
y1 = sin(x);
y2 = sin(x-0.25);
y3 = sin(x-0.5);
plo = plot(x,y1,'g',x,y2,'b--o',x,y3,'c*')
xlabel('theta in radians')
ylabel('amplitude')
title('Sinusoidal signal')
% plo(1).LineWidth = 5 
plo(2).Marker = '*'
legend('sinx', 'sin(x-0.25)', 'sin(x-0.5)')