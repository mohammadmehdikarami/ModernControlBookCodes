%
%   Pole placement and Simulation of the active suspension system
%   Example 6-18 of the book
%   Copyright Hamid D. Taghirad 2014
%
clear all
A=[0 0 1 -1 0; 0 0 1 0 0;-10 0 -2 2 0;720 -660 12 -12 0; 1 0 0 0 0];
b1=[0 ; 0; 0.00333; -0.02; 0];
b2=[0; -1; 0; 0; 0];
b3=[0; 0; 0; 0; 1];
pd=[-5 -25+25*j -25-25*j -3+3*j -3-3*j];
k=place(A,b1,pd)

% Closed loop system
Acl=A-b1*k; Bcl=0.1*b2;
C=[1 0 0 0 0]; D=0; ld=0.1;
active_fb=ss(Acl,Bcl,C, D);
[y,t,x]=impulse(active_fb);

% plot the result
plot(t,x(:,1)+ld,'k',t,x(:,5)-0.574*ld,'k-.'), grid
set(findall(figure(1),'type','line'),'linewidth',2)
xlabel('Time (sec)')
ylabel('State variables')
legend('l_1','x')
