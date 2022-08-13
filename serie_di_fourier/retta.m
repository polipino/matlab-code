clear all
close all
clc


syms x;

intervallo = 0.01;
asse_x = -5:intervallo:5-intervallo;

T = 2;
inizio = -1;
fine = 1;
w = 2*pi/T;
N = 5;
k = 1:N;

% f è una retta con m=1 e passante per l'origine 
% che ha intervallo (-1,1) con periodicità 2.
f = x;

a0 = (2/T)*int(f,x,inizio,fine);
ak = (2/T)*int(f*cos(w*k*x),x,inizio,fine);
bk = (2/T)*int(f*sin(w*k*x),x,inizio,fine);

Sf = a0/2;
for i=1:N
    Sf = Sf + ak(i)*cos(w*i*asse_x) + bk(i)*sin(w*i*asse_x);
end

figure
plot(asse_x, Sf)
grid on;

% function ret = f(n)
%     m = mod(n,2);
%     if m < 1
%         ret = 1;
%     else
%         ret = -1;
%     end
% end
