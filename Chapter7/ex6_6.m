%
%   Example 6-6 of Modern Book
%   Copyright Hamid D. Taghirad 2014
%
clear all
A=[0 1 0 0; 0 0 -9.8 0; 0 0 0 1; 0 0 19.6 0];
b=[0 ; 1; 0; -1];
e=eig(A)
pd=[-4.43 -4.43 -2-2j -2+2j];
k=acker(A,b,pd)

