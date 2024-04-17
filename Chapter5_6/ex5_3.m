%
%   Example 5-3 of Modern Book
%   Copyright Hamid D. Taghirad 2013
%
clear all

num={[1]; [1 0]};
den={conv([1 0 1],[1 1]); [1 3 2]};
sys=tf(num,den)
sys1=zpk(sys)
sys2=minreal(ss(sys))

s=zpk('s');
mysys=[1/((s^2+1)*(s+1));s/((s+1)*(s+2))]
myss=minreal(ss(mysys))

A=[0 1 0 0 ; 0 0 1 0; 0 0 0 1; -2 -3 -3 -3];
B=[0;0;0;1]; C=[2 1 0 0; 0 1 0 1]; D=[0;0];
sys=ss(A,B,C,D);
tf(sys)
zpk(sys)
