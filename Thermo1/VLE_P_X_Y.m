function [] = VLE_P_X_Y()
A = [11.431 10.422];
B = [35200 26799];
e = exp(1);
R = 8.314; %J/mol/K
T = 50 + 273; %kelvin
X1 = [0 0.2 0.4 0.6 0.8 1];
p = zeros(6);
Y1 = zeros(6);
d = exp(1)^(A(1) - B(1)/(R*T));
for i=1:6
p(i) = Pvap_total(T,X1(i));
Y1(i) = X1(i)*d/p(i);
end
Y1
plot(X1,p)
title("P_X_Y");
ylabel("P");
xlabel("X1");
hold on;
plot(Y1,p)