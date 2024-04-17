%
%   Simulation of 2R Robot
%   Copyright Hamid D. Taghirad 2013
%
clear all
clf, echo on
tspan=[0 5];
x0=[-pi/3;pi/3;0;0];

[t,x] = ode45(@robot_model,tspan, x0, ...
    odeset('OutputFcn','odeplot','OutputSel',[1,2])); 

plot(t,x(:,1)*180/pi,'k',t,x(:,2)*180/pi,'-.k'),grid
xlabel('Time (sec)')
ylabel('State Variables')
legend('\theta_1 (degrees)', '\theta_2 (degrees)')
set(findall(figure(1),'type','line'),'linewidth',2)
