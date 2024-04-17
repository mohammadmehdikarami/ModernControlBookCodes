%
%   Example 6-13 of Modern Book
%   Copyright Hamid D. Taghirad 2014
%
clear all
A=[0 1 0; 0 0 4.438; 0 -12 -24];
b=[0 ; 0; 20];
R=1; 
Q1=diag([4,0,0]); k1=lqr(A,b,Q1,R)
Q2=diag([9,0,0]); k2=lqr(A,b,Q2,R)
Q3=diag([20,0,0]);k3=lqr(A,b,Q3,R)
C=[1 0 0]; D=0; x0=[-1; 0; 0];
Acl1=A-b*k1; CL_sys1=ss(Acl1,b,C,D);
Acl2=A-b*k2; CL_sys2=ss(Acl2,b,C,D);
Acl3=A-b*k3; CL_sys3=ss(Acl3,b,C,D);
 
[y1,t1,x1]=initial(CL_sys1,x0,2);u1=-k1*x1';
[y2,t2,x2]=initial(CL_sys2,x0,2);u2=-k2*x2';
[y3,t3,x3]=initial(CL_sys3,x0,2);u3=-k3*x3';

figure(1)
subplot(121)
plot(t1,y1,'k-.',t2,y2,'k',t3,y3,'k--','linewidth',2),grid
axis([0 2 -1 0.2])
xlabel('Time (sec)')
ylabel('Angular Error (rad)')
subplot(122)
plot(t1,u1,'k-.',t2,u2,'k',t3,u3,'k--','linewidth',2),grid
xlabel('Time (sec)')
ylabel('Motor Voltage (V)')
legend('Q_{11}=4','Q_{11}=9','Q_{11}=20','location','best')

Q4=diag([9,3,0]);k4=lqr(A,b,Q4,R)
Acl4=A-b*k4; CL_sys4=ss(Acl4,b,C,D);
[y4,t4,x4]=initial(CL_sys4,x0,2);u4=-k4*x4';

figure(2)
subplot(121)
plot(t2,y2,'k',t4,y4,'k-.','linewidth',2),grid
axis([0 2 -1 0.2])
xlabel('Time (sec)')
ylabel('Angular Error (rad)')
subplot(122)
plot(t2,x2(:,2),'k',t4,x4(:,2),'k-.','linewidth',2),grid
xlabel('Time (sec)')
ylabel('Angular Velocity (rad/sec)')
legend('Q_{22}=0','Q_{22}=3','location','best')