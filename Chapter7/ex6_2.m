%
%   Example 6-2 of Modern Book
%   Copyright Hamid D. Taghirad 2014
%
clear all
A=[0 1 0; 0 0 4.438; 0 -12 -24];
b=[0 ; 0; 20];
pd=[-24 -3-3j -3+3j];
k=place(A,b,pd)

