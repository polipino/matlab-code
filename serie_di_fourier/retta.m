clear all
close all
clc


syms x;

intervallo = 0.01;
asse_x = 0:intervallo:5-intervallo;

T = 2;
inizio = -1;
fine = 1;
w = 2*pi/T;
N = 5;
k = 1:N;

% f è una retta con m=1 e passante per l'origine 
% che ha intervallo (-1,1) con periodicità 2.
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



% y = asse_x;
% for i=1:500
%     y(i) = f(y(i));
% end
% figure
% plot(asse_x, y)
% grid on;
% 
% function ret = f(n)
%     %    n h
%     % -0.5 0
%     %    0 0
%     % +0.5 0
%     %
%     %  1.5 1
%     %    2 1
%     %  2.5 1
%     %    3 
%     %  3.5 2
%     %    4 2
%     %  4.5 2
%     for h=0:10
%         if mod(n,2) == 1
%             ret = 0;
%         elseif n < 2*h-1 && n > 2*h+1
%             ret = n - 2*h;
%         end
%     end
%     ret = 0;
% end