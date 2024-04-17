%
%   Model of DC Motor and its Observer 
%   Copyright Hamid D. Taghirad 2014
%
function Xp=DC_motor_Obs(t,X)
global Par
%   Model of The Real System
%   State variable x=[\theta; \omega; i]
x=X(1:3);
A=[0 1 0; 0 0 4.438; 0 -12 -24];
B=[0 0; 0 -7.396; 20 0];
C=[1 0 0];
Tl=Par.Tl;            % step disturbance
v=0;
u=[v;Tl];
xp=A*x+B*u;
y=C*x;

%   Model of The observer
%   State variable x=[\theta_hat; \omega_hat; i_hat, Tl_hat]
xh=X(4:7);
Ah=[0 1 0 0; 0 0 4.438 -7.396; 0 -12 -24  0; 0 0 0 0];
Bh=[0; 0; 20; 0];
Ch=[1 0 0 0];
G =[0  234.7440 -936.9136  -27.6050]';
xhp=Ah*xh+Bh*v+G*(y-Ch*xh);
%   Augment the real and estimated states
Xp=[xp;xhp];
end


 