%
%   Figure 6-5 of Modern Book
%   Copyright Hamid D. Taghirad 2014
%
clear all
k=0.02:0.02:5;k=k';
x=[1 0]';

r=0;
p11=0.5./k+0.5+(r+1).*k/2+r.*k.^2/2;
p12=0/5./k+r*k/2;
p22=0.5./k+0.5+r.*k/2;
J1=p11*x(1)^2+2*p12*x(1)*x(2)+p22*x(2)^2;

r=1;
p11=0.5./k+0.5+(r+1).*k/2+r.*k.^2/2;
p12=0/5./k+r*k/2;
p22=0.5./k+0.5+r.*k/2;
J2=p11*x(1)^2+2*p12*x(1)*x(2)+p22*x(2)^2;

r=2;
p11=0.5./k+0.5+(r+1).*k/2+r.*k.^2/2;
p12=0/5./k+r*k/2;
p22=0.5./k+0.5+r.*k/2;
J3=p11*x(1)^2+2*p12*x(1)*x(2)+p22*x(2)^2;

plot(k,J1,'k', k,J2,'-. k', k,J3,'--k','linewidth',2),grid
xlabel('k')
ylabel('J')
%legend('r=0', 'r=1', 'r=2')

clf
x=[0 1]';
r=2;
p11=0.5./k+0.5+(r+1).*k/2+r.*k.^2/2;
p12=0/5./k+r*k/2;
p22=0.5./k+0.5+r.*k/2;
J4=p11*x(1)^2+2*p12*x(1)*x(2)+p22*x(2)^2;
plot(k,J2,'k', k,J4,'-. k','linewidth',2),grid
xlabel('k')
ylabel('J')
