%
%   Model of Inverted Pendulum
%   Copyright Hamid D. Taghirad 2014
%
function Xp=inverted_pendulum_luenburger(t,X);
%   State variable x=[x; v; \theta; \omega]
x=X(1:4); psi=X(5);
g=9.8;l=1;m=1;M=1;
d1=M+m*(1-cos(x(3))^2);
d2=l*d1;
k =[-40.0000  -37.3693 -190.6669  -54.7283];

dpsi=-40.0*x(1)-37.37*x(2)-405.9*x(3)-58.73*psi;
omega_h=psi+4*x(3);
xh=[x(1:3);omega_h];
F=-k*x;     % State feedback
%F=-k*xh;    % Luenburger Observer Feedback
xp=[
    x(2);
    (F+m*l*x(4)^2*sin(x(3))-m*g*sin(x(3))*cos(x(3)))/d1;
    x(4);
    (-F*cos(x(3))-m*l*x(4)^2*sin(x(3))*cos(x(3))+...
        (M+m)*g*sin(x(3)))/d2;
    ];
Xp=[xp;dpsi];
end


 