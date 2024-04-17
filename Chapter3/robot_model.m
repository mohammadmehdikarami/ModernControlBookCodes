%
%   Model of 2R Robot
%   Copyright Hamid D. Taghirad 2013
%
function xp=robot_model(t,x)

%   State variable x=[\theta_1; \theta_2; \omega_1; \omega_2]

g=9.81;l1=1;l2=0.5;
m1=2;m2=1; 
I1=1e-2;I2=5e-3;
D=2;

M(1,1)=m1*(l1/2)^2+m2*(l1^2+(l2/2)^2)+m2*l1*l2*cos(x(2))+I1+I2;
M(1,2)=m2*(l2/2)^2+0.5*m2*l1*l2*cos(x(2))+I2;
M(2,1)=M(1,2);
M(2,2)=m2*(l2/2)^2+I2;

V(1,1)=-m2*l1*l2*sin(x(2))*x(3)*x(4)-0.5*m2*l1*l2*sin(x(2))*x(4)^2;
V(2,1)=-0.5*m2*l1*l2*sin(x(2))*x(3)*x(4);

G(1,1)=(m1*l1/2+m2*l1)*g*cos(x(1))+m2*g*l2/2*cos(x(1)+x(2));
G(2,1)=m2*g*l2/2*cos(x(1)+x(2));

Q=[0;0];   % No input
Q=Q-D*[x(3);x(4)];
xy=pinv(M)*(Q-V-G);
xp=[x(3);x(4);xy];

end


 