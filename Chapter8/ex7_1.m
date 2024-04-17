%
%   Example 7-1 of Modern Book
%   Copyright Hamid D. Taghirad 2014
%
clear all
A=[0 1 0 0; 0 0 4.438 -7.396; 0 -12 -24  0; 0 0 0 0];
c=[1 0 0 0];
pd=[-5+5*j -5-5*j -7+7*j -7-7*j];
G=place(A',c',pd)
