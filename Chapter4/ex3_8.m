%
%   Example 3-8 of Modern Book
%   Copyright Hamid D. Taghirad 2013
%
clear all
A=[0 1; -2 -3];
B=[1;1];
C=[1 0];      
D=0;
sys=ss(A,B,C,D);  % Note both inputs are considered
eigs=eig(A)
poles=pole(sys)
zeros=tzero(sys)