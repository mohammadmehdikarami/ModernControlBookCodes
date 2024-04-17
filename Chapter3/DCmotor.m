%
%   Simulation of the DC motor
%   Copyright Hamid D. Taghirad 2013
%
clear all
A=[0 1 0; 0 0 4.438; 0 -12 -24];
b1=[0 ; 0; 20];
b2=[0; -7.396; 0];
B=[b1 b2];
C=[1 0 0; 0 1 0];
D=0;
DC_motor=ss(A,b1,C,D);  % Note only first input is used
t=0:0.01:4; N=max(size(t));
%
%    A Simple way to generate input u
%
for i=1:N;
 if t(i) < 2;
     u(:,i)=3;
 else
     u(:,i)=-3;
 end
end
%
%    A Professional way to generate input u
%
 [u,t] = gensig('square',4,4,0.01); u=-6*u+3;
%
%    Simulate the system
%
  [y,t,x]=lsim(DC_motor,u,t);

%  Plot the result
% ---------------------------------------
plot(t,x(:,1),'k',t,x(:,2),'k-.',t,x(:,3),'k:'), grid
 set(findall(figure(1),'type','line'),'linewidth',2)
xlabel('Time (sec)')
ylabel('State variables')
legend('\theta', '\omega','i')

  

 