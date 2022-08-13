clear all
close all
clc

syms t
T = 2;
w = 2*pi/T;

fs = 100;
k = 0:1/fs:10-1/fs;
N = 5;
n = 1:N;

a0 = (2/T)*(int(1,t,0,1)+int(-1,t,1,2));
an = (2/T)*(int(1*cos(n*w*t),t,0,1)+int(-1*cos(n*w*t),t,1,2));
bn = (2/T)*(int(1*sin(n*w*t),t,0,1)+int(-1*sin(n*w*t),t,1,2));

F = a0 / 2;
for i = 1:N
    F = F + an(i)*cos(i*w*k) + bn(i)*sin(i*w*k);
end

figure
plot(k,F)
grid on;
