clear all
close all
clc


syms x;

intervallo = 0.01;
asse_x = 0:intervallo:5-intervallo;

T = 1;
inizio = 0;
fine = 1;
w = 2*pi/T;
N = 5;
k = 1:N;

% f è una retta con m=1 e passante per l'origine 
% che ha intervallo (0,1) con periodicità 1.
a0 = (2/T)*int(x,x,inizio,fine);
ak = (2/T)*int(x*cos(w*k*x),x,inizio,fine);
bk = (2/T)*int(x*sin(w*k*x),x,inizio,fine);

Sf = a0/2;
for i=1:N
    Sf = Sf + ak(i)*cos(w*i*asse_x) + bk(i)*sin(w*i*asse_x);
end

figure
plot(asse_x, Sf)
grid on;



