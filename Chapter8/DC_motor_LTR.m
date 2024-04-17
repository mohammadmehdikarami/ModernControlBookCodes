%
%   Example DC_Motor LQR-LQE Design
%   Copyright Hamid D. Taghirad 2014
%
clear all

A=[0 1 0 0; 0 0 4.438 -7.396; 0 -12 -24  0; 0 0 0 -1];
b=[0 ; 0; 20; 0];
c=[1 0 0 0];
% State feedback design 
R=1; 
Q1=diag([9,0,0, 0]); 
k=lqr(A,b,Q1,R)
% State Observer design
pd=[-5-5*j -5+5*j -7+7*j -7-7*j];
G=place(A',c',pd)'


