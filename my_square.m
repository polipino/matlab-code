clear all
close all
clc


syms x;

intervallo = 0.01;
asse_x = 0:intervallo:10-intervallo;

T = 2;
inizio = 0;
fine = 2;
w = 2*pi/T;
N = 5;
k = 1:N;

% f in questo caso è la square function che vale 1 nell'intervallo (0,1) e
% -1 nell'intervallo (1,2) e ha periodicità 2.
a0 = (2/T)*int(1,x,inizio,1) + (2/T)*int(-1,x,1,fine);
ak = (2/T)*int(1*cos(w*k*x),x,inizio,1) + (2/T)*int(-1*cos(w*k*x),x,1,fine);
bk = (2/T)*int(1*sin(w*k*x),x,inizio,1) + (2/T)*int(-1*sin(w*k*x),x,1,fine);

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
