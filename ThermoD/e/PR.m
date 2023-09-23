function [Zv,Zl]=PR(T,P)
R=8.314;
[a,b]=parameter_PR(T);
%set up the cubic equation Z^3 + alpha * Z^2 + beta * Z + gamma =0
while true
A=a*P/(R*T)^2;
B=(b*P)/(R*T);
alpha= -1.+B;
beta=A-3*B*B-2*B;
gamma= -A*B + B*B*(B+1.);
PReq=[1.0 alpha beta gamma]';
zr=real(roots(PReq));
Zv=max(zr);
Zl=min(zr);

Fv=P*exp((Zv-1)-log(Zv-B ) - A*log( (Zv+(1+sqrt(2))*B ) /(Zv+(1-sqrt(2))*B)  )/(2*sqrt(2)*B ) );
Fl=P*exp((Zl-1)-log(Zl-B ) - A*log( (Zl+(1+sqrt(2))*B ) /(Zl+(1-sqrt(2))*B)  )/(2*sqrt(2)*B ) );

if abs(Fl/Fv -1)<0.0001
    break
else
    P=P*Fl/Fv;
end
end