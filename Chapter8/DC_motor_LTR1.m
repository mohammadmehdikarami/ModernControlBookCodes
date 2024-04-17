%
%   Model of DC Motor for ode
%   Copyright Hamid D. Taghirad 2013
%
function Xp=DC_motor_LTR1(t,X)
global Par
%   Model of The Real System
%   State variable x=[\theta; \omega; i]
x=X(1:3);
A=[0 1 0; 0 0 4.438; 0 -12 -24];
B=[0 0; 0 -7.396; 20 0];
C=[1 0 0];
y=C*x;

%   Model of the observer with disturbance Tl=0.01*exp(-t)
%   State variable x=[\theta; \omega; i; Tl]
xh=X(4:7);
Ah=[0 1 0 0; 0 0 4.438 -7.396; 0 -12 -24  0; 0 0 0 -1];
Bh=[0; 0; 20; 0];
Ch=[1 0 0 0];

%   State feedback and state observer gains
k =[3.0000    0.8796    0.1529   -1.8190];
G=[-1.0000; 235.7440; -978.1707; -20.4870];
%G=[-9.0000e+00;   2.7574e+02;  -1.3057e+03;  -3.1333e+00];
%   Final Equations
theta_d=0;                  % Desired angular position
Tl=Par.Tl*exp(-t);            % exponential disturbance
v=-k*xh;
%v=-k*[x;Tl];
u=[v;Tl];

xhp=Ah*xh+Bh*v+G*(y-Ch*xh);
xp=A*x+B*u;
Xp=[xp;xhp];
end


 