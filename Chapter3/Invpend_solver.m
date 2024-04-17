%
%   Simulation of Inverted Pendulum
%   Copyright Hamid D. Taghirad 2013
%
clear all
clf, echo on
tspan=[0 1];
x0=[0;0.1;0;0];

[t,x] = ode45(@inverted_pendulum,tspan, x0, ...
    odeset('OutputFcn','odeplot','MaxStep',1e-2)); 

plot(t,x(:,1),'k',t,x(:,2),'-.k'),grid
xlabel('Time (sec)')
ylabel('State Variables')
legend('x (m)', '\theta (rad)')
set(findall(figure(1),'type','line'),'linewidth',2)
