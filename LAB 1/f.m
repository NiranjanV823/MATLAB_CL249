function [y]=f(Vr,Tr)
y=((3.*Vr -1).^2)/(4.*(Vr.^3))-Tr;
end