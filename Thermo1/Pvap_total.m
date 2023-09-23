function [P] = Pvap_total(T,X1)
A = [11.431 10.422];
B = [35200 26799];
e = exp(1);
R = 8.314; %J/mol/K
P = X1*(e^(A(1)-B(1)/(R*T)) - e^(A(2)-B(2)/(R*T))) + e^(A(2)-B(2)/(R*T));
end