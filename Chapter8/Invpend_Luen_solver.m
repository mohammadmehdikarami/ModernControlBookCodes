%
%   Simulation of Inverted Pendulum 
%               with Luenburger Observer
%   Copyright Hamid D. Taghirad 2014
%
%clear all
clf, echo off
tspan=[0 3];
x0=[0;0;0.26;0;0];

[t,x] = ode45(@inverted_pendulum_Luenburger,tspan, x0, ...
    odeset('OutputFcn','odeplot','MaxStep',1e-2)); 

psi=x(:,5); omega=x(:,4); omega_h=psi+4*x(:,3);
plot(t,omega,'k',t,omega_h,'-.k'),grid
xlabel('Time (sec)')
ylabel('Angular velocity (rad/sec)')
legend('\omega', '\omega_h')
set(findall(figure(1),'type','line'),'linewidth',2)
