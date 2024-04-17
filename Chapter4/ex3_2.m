%
%   Example 3-2 of Modern Book
%   Copyright Hamid D. Taghirad 2013
%
clear all
A=[1 0; 1 1]; B=[1;1]; 
u=1; x0=[1;1];
syms t
phi=expm(A*t)
x1=expm(-A*t)*B*u
x_zs=int(x1)
x_zi=phi*x0
x=x_zi+x_zs