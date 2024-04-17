%
%   Simulation of the train
%   Copyright Hamid D. Taghirad 2013
%
clear all
echo on
tspan=[0 10];
x0=[0;20;20;20;20;0;0;0;0;0];

[t,x] = ode23(@train_model1,tspan, x0, ...
    odeset('OutputFcn','odeplot','OutputSel',[2,3])); 

pause   %strike a key to continue
plot(t,x(:,2),'k',t,x(:,5),'k-.'), grid
set(findall(figure(1),'type','line'),'linewidth',2)
xlabel('Time (sec)')
ylabel('State variables')
legend('x_2', 'x_5')