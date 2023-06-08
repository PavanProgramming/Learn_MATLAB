clc
clear all

%sin(2*pi*1000*)

fm = 1000;
fs = 100*fm;

t = 1/fs:1/fs: 1/fm;

x = sin(2*pi*fm*t);
x = x + abs(min(x));
x = 2000*x;  % 0 to 4000
sin_wave = round(x);
plot(t,x)
csvwrite('dacData.txt',sin_wave)

fprintf('%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, \n', sin_wave);
