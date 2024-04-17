%
%   Jordan form of the DC motor
%   Copyright Hamid D. Taghirad 2013
%
clear all
A=[0 1 0; 0 0 4.438; 0 -12 -24];
b1=[0 ; 0; 20];
b2=[0; -7.396; 0];
B=[b1 b2];
C=[1 0 0; 0 1 0];
D=0;
DC_motor=ss(A,b1,C,D);  % Note only first input is used

[v,e]=eig(A)
[w,ee]=eig(A')

  

 