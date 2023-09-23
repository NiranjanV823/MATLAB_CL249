function z=PR(T,P,param)
  %solve using Peng-Robinson equation of state ... param=[a b omega Tc]
  %returns the value of Z for the given T (in K), P (in Pa) and param
  %param should be containing a and b (in SI units)

  R=8.314; %J/mol/K
  a=param(1);
  b=param(2);
  omega=param(3);
  Tc=param(4);

  %correct for a
  kappa=0.37464+1.54226*omega-0.26992*omega^2;
  alpha=1.+kappa*(1.-sqrt(T/Tc));
  alpha=alpha*alpha;
  a=a*alpha;

  %set up the cubic equation Z^3 + alpha * Z^2 + beta * Z + gamma =0
  A=a*P/(R*T)^2;
  B=(b*P)/(R*T);
  alpha= -1.+B;
  beta=A-3*B*B-2*B;
  gamma= -A*B + B*B*(B+1.);

  PReq=[1.0 alpha beta gamma];
  zr=real(roots(PReq));

  %get only relevant values of z
  check_zr=abs(polyval(PReq,zr))<1.e-8;
  pos=find(check_zr==1);
  z=zr(pos);
end