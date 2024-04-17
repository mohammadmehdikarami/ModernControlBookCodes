%
%   Simulation of the train
%   Copyright Hamid D. Taghirad 2013
%
clear all
echo on, clf
tspan=[0 100];
x0=[0;20;20;20;20;0;0;0;0;0];

[t,x] = ode23(@train_model,tspan, x0, ...
    odeset('OutputFcn','odeplot','MaxStep',1e-2,'OutputSel',[2,5])); 

pause   %strike a key to continue
subplot(211)
plot(t,x(:,1),'k'),grid
xlabel('Time (sec)')
ylabel('Locomotive Position (m)')
legend('x_1')
subplot(212)
plot(t,x(:,2),'k',t,x(:,5),'k-.'), grid
set(findall(figure(1),'type','line'),'linewidth',2)
xlabel('Time (sec)')
ylabel('Wagons Distance (m)')
legend('x_2', 'x_5')