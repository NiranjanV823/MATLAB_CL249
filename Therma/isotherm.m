%critical point information
Tc=154.6; %K
Pc=5.046e6; %Pa
Vc=0.0732e-3; %m^3/mol
omega=0.021;

R=8.314; %J/mol/K

eos=2; %1:vdW, 2:PR, 3: RK

if eos==1
  fprintf('van der Waals equation of state\n');
  a=27*(R*Tc)^2/64/Pc;
  b=R*Tc/8/Pc;
  h=figure;
  generate_vdW(h,[a b]);
elseif eos==2
  fprintf('Peng-Robinson equation of state\n');
  a=0.45724*(R*Tc)^2/Pc; %at T=Tc
  b=0.0778*R*Tc/Pc;
  h=figure;
  generate_PR(h,[a b omega Tc]);
end