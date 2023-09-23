function z=vdW(T,P,param)
  %solve using van der Waals equation of state .. param=[a b]
  %returns the value of Z for the given T (in K), P (in Pa) and param
  %param should be containing a and b (in SI units)

  R=8.314; %J/mol/K
  a=param(1);
  b=param(2);

  %set up the cubic equation Z^3 + alpha * Z^2 + beta * Z + gamma =0
  A=a*P/(R*T)^2;
  B=(b*P)/(R*T);
  alpha=-(1.+B);
  beta=A;
  gamma=-A*B;

  vdWeq=[1.0 alpha beta gamma];
  zr=real(roots(vdWeq));

  %get only relevant values of z
  check_zr=abs(polyval(vdWeq,zr))<1.e-8;
  pos=find(check_zr==1);
  z=zr(pos);
end