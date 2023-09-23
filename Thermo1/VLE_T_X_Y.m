function [] = VLE_T_X_Y()
P = 1.01325; %bar
T = [40 50 60 70 80 90];
T = T +273;
x1 = zeros(6);
A = [11.431 10.422];
B = [35200 26799];
R = 8.314; %J/mol/K
Y1 = zeros(6);
d= zeros(6);
for i=1:6
x1(i) = mol_frac(P,T(i));
d(i) = exp(1)^(A(1) - B(1)/(R*T(i)));
Y1(i) = x1(i)*d(i)/P;
end
plot(x1,T)
title("T_X_Y");
ylabel("T");
xlabel("X1");
hold on;
plot(Y1,T)
function [X1] = mol_frac(P,T)
A = [11.431 10.422];
B = [35200 26799];
e = exp(1);
R = 8.314; %J/mol/K
X1 = (P - e^(A(2)-B(2)/(R*T)))/(e^(A(1)-B(1)/(R*T)) - e^(A(2)-B(2)/(R*T)));