%
%   Example 6-16 of Modern Book
%   Copyright Hamid D. Taghirad 2014
%
clear all
A=[0 1 0 0; 0 0 4.438 -7.396; 0 -12 -24  0; 0 0 0 -1];
b=[0 ; 0; 20; 0];
R=1; 
Q1=diag([9,0,0, 0]); k=lqr(A,b,Q1,R)
