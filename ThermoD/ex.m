
R = 0.08314;
[a,b]=parameter_PR(148);
Tc=154.6;
T=148;
Vm=05;
P1=R*T/(Vm-b) -a/(Vm^2 +2*b*Vm -b^2);
%Vm=0.0250;  
disp(P1);