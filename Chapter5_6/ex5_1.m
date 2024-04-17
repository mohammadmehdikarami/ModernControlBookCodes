%
%   Example 5-1 of Modern Book
%   Copyright Hamid D. Taghirad 2013
%
clear all

A=[0 1 0; 0 0 1; -5 -11 -6];
B=[0;0;1]; C=[1 0 1]; D=0;
sys1=ss(A,B,C,D);
tf(sys1)

a=[0 0 -5; 1 0 -11; 0 1 -6]; 
b=[1;0;1]; c=[0 0 1]; d=0;
sys2=ss(a,b,c,d);
tf(sys2)

A=[0 1 0; 0 0 1; -5 -11 -6];
B=[1;-6;26]; C=[1 0 0]; D=0;
sys3=ss(A,B,C,D);
tf(sys3)
obsv(sys3)

A=[0 0 -5; 1 0 -11; 0 1 -6];
B=[1;0;0]; C=[1 -6 26]; D=0;
sys4=ss(A,B,C,D);
tf(sys4)
ctrb(sys4)

num=[1 0 1];
den=[1 6 11 5];
sys = tf(num,den);
[A,B,C,D]=tf2ss(num,den)
mysys=ss(sys)