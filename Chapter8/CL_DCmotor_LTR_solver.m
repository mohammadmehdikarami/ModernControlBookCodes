%
%   Simulation of closed-loop DC motor with Observer
%   Copyright Hamid D. Taghirad 2014
%
clf, echo off
global Par
Par.Tl=0.01;
tspan=[0 5];
x0=[0; 0; 0; 
    0; 0; 0; 0];


[t,x] = ode45(@DC_motor_LTR1,tspan, x0, ...
    odeset('OutputFcn','odeplot','MaxStep',1e-2,'OutputSel',[1,4])); 

subplot(221)
plot(t,x(:,1),'k',t,x(:,4),'-.k'),grid
xlabel('Time (sec)')
ylabel('Angular displacement (rad)')
legend('\theta','\theta_h')

subplot(222)
plot(t,x(:,2),'k',t,x(:,5),'-.k'),grid
xlabel('Time (sec)')
ylabel('Angular velocity (rad/sec)')
legend('\omega','\omega_h')

subplot(223)
plot(t,x(:,3),'k',t,x(:,6),'-.k'),grid
xlabel('Time (sec)')
ylabel('Motor Current (Amp)')
legend('i','i_h')

Tl=Par.Tl*exp(-t)
subplot(224)
plot(t,Tl,'k',t,x(:,7),'-.k'),grid
xlabel('Time (sec)')
ylabel('Disturbance torque (N.m)')
legend('Tl','Tl_h')

set(findall(figure(1),'type','line'),'linewidth',2)
