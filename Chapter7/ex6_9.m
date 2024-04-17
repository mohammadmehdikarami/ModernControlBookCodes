%
%   Example 6-9 of Modern Book
%   Copyright Hamid D. Taghirad 2014
%
clear all
A=[-2 -1 2; -1 -2 2; -2 0 2];
B=[0 0; 0 1;1 0];
f=[1;1];
b=B*f;
C=ctrb(A,b);
Psi=[1 2 -1; 0 1 2; 0 0 1];
delta=[4 13 10];
M=delta*inv(C*Psi)
K1=f*M
pd=[-2 -2 -2];
k=acker(A,b,pd)
K2=f*k
Ac=A-B*K1;
eig(Ac)
