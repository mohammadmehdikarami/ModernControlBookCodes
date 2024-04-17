%
%   Simulation of the train
%   Copyright Hamid D. Taghirad 2013
%
clear all
echo off
global Par
Par.F=1000;
tspan=[0 20];
x0=[0;20;20;20;20;0;0;0;0;0;
    0;0;0;0;0;0;0;0;0]; 

[t,x] = ode23(@train_model_Obs,tspan, x0, ...
    odeset('OutputFcn','odeplot','OutputSel',[6,15],'MaxStep',1e-1)); 
xh=x(:,11:19);
subplot(211)
plot(t,x(:,2)-20,'k',t,xh(:,1),'k-.'), grid
set(findall(figure(1),'type','line'),'linewidth',2)
xlabel('Time (sec)')
ylabel('State variables')
legend('Real x_2', 'Est x_2'),

subplot(212)
plot(t,x(:,6),'k',t,xh(:,5),'k-.'), grid
set(findall(figure(1),'type','line'),'linewidth',2)
xlabel('Time (sec)')
ylabel('State variables')
legend('Real v_1', 'Est v_1')