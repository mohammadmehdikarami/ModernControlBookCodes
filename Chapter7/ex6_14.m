%
%   Example 6-14 of Modern Book
%   Copyright Hamid D. Taghirad 2014
%
clear all
A=[0 1 0 0; 0 0 -9.8 0; 0 0 0 1; 0 0 19.6 0];
b=[0 ; 1; 0; -1];
Q=diag([4,0,8.16,0]);R=1/400;
k=lqr(A,b,Q,R)

