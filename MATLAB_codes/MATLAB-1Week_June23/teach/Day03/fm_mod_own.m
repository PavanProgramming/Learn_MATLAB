function fm_mod_own(Fc, Fm,Be)
% generation of the FM Modulated Signal

Tc=1/Fc; %time period of carrier sgnl
Tm=1/Fm; %time period of msg sgnl
%-----------CARRIER SIGNAL------------
Am=0.5; %amplitude of msg sgnl
%time of simulation sgnl for 6 signals
t=0:Tc/25:6*Tm;
msg=Am*cos(2*pi*Fm*t);
subplot(3,1,1)
plot(t,msg)
xlabel('time');
ylabel('amp msg')
title('msg sgnl')
% -----------CARRIER SGNL------------
Ac=1.5; %Amplitude of msg sgnl
%time of simulation sgnl for 6 signals
t=0:Tc/25:6*Tm;
car=Ac*cos(2*pi*Fc*t);
subplot(3,1,2)
plot(t,car)
xlabel('time');
ylabel('amp car');
title('carrier sgnl')
%------------FM SIGNAL-------------
X_FM=Ac*cos(2*pi*Fc*t+Be.*sin(2*pi*Fm*t));
subplot(3,1,3)
plot(t,X_FM)
xlabel('time');
ylabel('FM amp.');
title('FM sgnl')
xlswrite('FM_data.xlsx', [t(:),X_FM(:)], 'FMdata', 'A2');
xlswrite('FM_data.xlsx', {'time','FM_sgnl'}, 'FMdata', 'A1');
end

