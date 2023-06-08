clc
clear all
close all

%% Square wave
freq_sig = 1000;
tper_sig = 1/freq_sig;

samp_factor =100;
duty_cycle = 0.50;
fsamp_sig = samp_factor*freq_sig;

tsamp = 1/fsamp_sig;

t = tsamp:tsamp:tper_sig;

pos_samp = round(samp_factor*duty_cycle);
x = [ones(1,pos_samp) zeros(1,samp_factor-pos_samp)];

x= x + abs(min(x));

sqr_wav = 2000*x;

plot(t,sqr_wav);

fprintf('%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, \n', sqr_wav);
