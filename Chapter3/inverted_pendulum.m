%
%   Model of Inverted Pendulum
%   Copyright Hamid D. Taghirad 2013
%
function xp=inverted_pendulum(t,x)
%   State variable x=[x; \theta; v; \omega]
g=9.8,l=1,m=1;M=1;
d1=M+m*(1-cos(x(2))^2);
d2=l*d1;

F=0; % No input

xp=[
    x(3);
    x(4);
    (F+m*l*x(4)^2*sin(x(2))-m*g*sin(x(2))*cos(x(2)))/d1;
    (-F*cos(x(2))-m*l*x(4)^2*sin(x(2))*cos(x(2))+...
        (M+m)*g*sin(x(2)))/d2;
    ];
end


 