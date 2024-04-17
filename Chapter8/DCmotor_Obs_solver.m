%
%   Simulation of DC motor observer
%   Copyright Hamid D. Taghirad 2014
%
clear all
clf, echo on
tspan=[0 2];
global Par
Par.Tl=1;
x0=[1; 0; 0; 0; 0; 0; Par.Tl];

[t,x] = ode45(@DC_motor_Obs,tspan, x0, ...
    odeset('OutputFcn','odeplot','OutputSel',[1,4],'MaxStep',1e-2)); 
xh=x(:,4:7);
subplot(221)
plot(t,x(:,1),'k',t,xh(:,1),'-.k'),grid
xlabel('Time (sec)')
ylabel('\theta (rad)')

subplot(222)
plot(t,x(:,2),'k',t,xh(:,2),'-.k'),grid
xlabel('Time (sec)')
ylabel('\omega (rad/sec)')
legend('Real states','Estimated states')

subplot(223)
plot(t,x(:,3),'k',t,xh(:,3),'-.k'),grid
xlabel('Time (sec)')
ylabel('i (Amp)')

subplot(224)
plot(t,Par.Tl+(t*0),'k',t,xh(:,4),'-.k'),grid
xlabel('Time (sec)')
ylabel('T_l (N.m)')
set(findall(figure(1),'type','line'),'linewidth',2)
