%
%   Example 5-2 of Modern Book
%   Copyright Hamid D. Taghirad 2013
%
clear all

A=[-1 1 0; 0  -1 0; 0  0 -2];
B=[0;1;1]; C=[4 -8 9]; D=0;
sys1=ss(A,B,C,D);
tf(sys1)

a=[-1 0 0; 1 -1 0; 0 0 -2]; 
b=[4;-8;9]; c=[0 1 1]; d=0;
sys2=ss(a,b,c,d);
tf(sys2)
