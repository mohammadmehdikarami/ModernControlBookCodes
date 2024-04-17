%
%   Simulation of the active suspension system
%   Copyright Hamid D. Taghirad 2013
%
clear all
A=[0 0 1 0; 0 0 0 1;-10 10 -2 2; 60 -660 12 -12];
b1=[0 ; 0; 0.0033; -0.02];
b2=[0; 0; 0; 600];
B=[b1 b2];
C=[1 0 0 0];
D=0;
active_suspension=ss(A,b2,C,D);  % Note only Second input is used
t=0:0.01:7; N=max(size(t));
%
%   Initial response
%
x0=[0.2;0;0;0];
[y,t,x]=initial(active_suspension, x0, t)
plot(t,x(:,1),'k',t,x(:,2),'k-.'), grid
set(findall(figure(1),'type','line'),'linewidth',2)
xlabel('Time (sec)')
ylabel('State variables')
legend('x_1', 'x_2')
%
%    A Simple way to generate input u
%
u=0.1*(sin(5*t)+sin(9*t)+sin(13*t)+sin(17*t)+sin(21*t));
%
%    Simulate the system
%
[y,t,x]=lsim(active_suspension,u,t);

%  Plot the result
% ---------------------------------------
plot(t,x(:,1),'k',t,x(:,2),'k-.'), grid
set(findall(figure(1),'type','line'),'linewidth',2)
xlabel('Time (sec)')
ylabel('State variables')
legend('x_1', 'x_2')

  

 