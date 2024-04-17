%
%   Simulation of closed-loop DC motor
%   Copyright Hamid D. Taghirad 2013
%
clear all
clf, echo on
tspan=[0 3];
x0=[0; 0; 0];

[t,x] = ode45(@DC_motor,tspan, x0, ...
    odeset('OutputFcn','odeplot','MaxStep',1e-2)); 

plot(t,x(:,1)*180/pi,'k'),grid
xlabel('Time (sec)')
ylabel('Angular displacement \theta (degrees)')
%legend('\theta (degrees)')
set(findall(figure(1),'type','line'),'linewidth',2)
