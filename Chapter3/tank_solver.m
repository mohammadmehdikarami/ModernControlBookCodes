%
%   Simulation of the train
%   Copyright Hamid D. Taghirad 2013
%
clear all
clf, echo on
tspan=[0 100];
x0=[100];

[t,x] = ode45(@tank_model,tspan, x0, ...
    odeset('OutputFcn','odeplot','MaxStep',1e-1)); 

plot(t,x(:,1),'k'),grid
xlabel('Time (sec)')
ylabel('Tank Level (m)')
set(findall(figure(1),'type','line'),'linewidth',2)
