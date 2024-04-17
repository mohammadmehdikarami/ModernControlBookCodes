%
%   Example 5-6 of Modern Book
%   Copyright Hamid D. Taghirad 2013
%
clear all
A=[-1 -2; 1 -4];
Q=eye(2);
P=60*lyap(A',Q)
det(P)