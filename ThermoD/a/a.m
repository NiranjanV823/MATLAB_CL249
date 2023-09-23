clc
clear
K=273;
Ta=-125;
T1=Ta+K;
Tb=-150;
T2=Tb+K;
Tc=-175;
T3=Tc+K;
%Pc=5046000;
%P=4167160;pressure below this will give three roots for -125C
%P=2243430;pressure below this will give three roots for -150C
%P=1183490;pressure below this will give three roots for -175C
P1=4046000;%at 10e5 for -125
P2=2046000;%at 10e5 for -150
P3=1046000;%at 10e5 for -175
fprintf('For temp %d°C Pvap is %d Pa. \n',Ta,PR(T1,P1));
fprintf('For temp %d°C Pvap is %d Pa. \n',Tb,PR(T2,P2));
fprintf('For temp %d°C Pvap is %d Pa. \n',Tc,PR(T3,P3));
