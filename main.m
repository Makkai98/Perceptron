clear all
close all

TH=[1  1 0 1  1 1 1  1 0 1; 
    1  0 1 0  0 1 0  0 1 0]; 
% TH=[1  0 0;
%     1  0 1;
%     1  1 0;
%     1  1 1;]; AND tanitasara a tanitohalmaz

u=0.5;

d_TH=[1 0; 
      0 1;];

% d_TH=[0;
%       0;
%       0;
%       1]; AND tanitasara az elvart kimenetek
% N=[3,1]  AND-re bemenetek es kimenetek szama

N=[10, 2];
TH_Teszt=TH;

d_TH_Teszt=d_TH;
w0{1}=(rand(N(1),N(2))-0.5)*0.1 


t=100;
akt=0 ; 
d_TH_Tesz =d_TH; 

akt_par=1;


i=1;
    fo_program='nh'
[w, tm, ETH, ETH_Teszt ]= nh(TH,d_TH, TH_Teszt,d_TH_Teszt, w0, u, t, akt, akt_par)
abrazol(ETH, ETH_Teszt)
meres{i}={TH,d_TH, TH_Teszt,d_TH_Teszt, w0, u, t, akt, akt_par, fo_program};
eredmeny{i}={w, tm, ETH, ETH_Teszt};




