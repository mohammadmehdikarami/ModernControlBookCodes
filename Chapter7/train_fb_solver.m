%
%   Simulation of the train
%   Copyright Hamid D. Taghirad 2013
%
clear all
echo off, clf
tspan=[0 300];
x0=[0;20;20;20;20;0;0;0;0;0];

[t,x] = ode23s(@train_fb,tspan, x0, ...
    odeset('OutputFcn','odeplot','OutputSel',[2:5])); 

% Calculation of the input force
vd=25*(1-exp(-t/40));
% First design R=1/120^2
k=[54.5333, 16.2848, -1.3027, -4.3607, 191.7414, ...
    -40.4841, -34.2067, -29.7070, -27.3437,  52.0886];
% Second Design R=35/120^2
% k=[0.4559, 0.3331, 0.2170, 0.1069, 11.5387, -0.2622, ...
%    -0.3371, -0.3865, -0.4110, 5.3731];
Ks=2.5e3; Ds=1.5e2;   % Spring and damper coeff (KN/m)&(KN/m/s)
N=max(size(t));
for i=1:N,
dx=[x(i,2)-20; x(i,3)-20; x(i,4)-20; x(i,5)-20]; 
dv=[x(i,6)-vd(i); x(i,7)-vd(i); x(i,8)-vd(i); x(i,9)-vd(i); x(i,10)-vd(i)];
z=x(i,6)-vd(i);
X(i,:)=[dx;dv;z];
F(i)=-k*X(i,:)';
Fs(:,i)=Ks*dx;
end

figure(1)
subplot(211)
plot(t,x(:,1)/1000,'k'),grid
xlabel('Time (sec)')
ylabel('Train Position (Km)')
subplot(212)
plot(t,vd,'k',t,x(:,6),'-.k'),grid
xlabel('Time (sec)')
ylabel('Train Velocity (m)')
legend('Desired Velocity','Real velocity')
set(findall(figure(1),'type','line'),'linewidth',2)
figure(2)
subplot(211)
plot(t,F,'k',t,Fs(1,:),'-.k',t,Fs(4,:),'--k'),grid
xlabel('Time (sec)')
ylabel('Force (KN)')
legend('Input Force','Spring Force 1','Spring Force 4')
subplot(212)
plot(t,Ds*(x(:,6)-x(:,7)),'k',t,Ds*(x(:,9)-x(:,10)),'k-.'), grid
xlabel('Time (sec)')
ylabel('Force (KN)')
legend('Damping Force 1','Damping Force 4')
%axis([0 50 -0.5 3])
 axis([0 100 -0.1 0.5])
set(findall(figure(2),'type','line'),'linewidth',2)

