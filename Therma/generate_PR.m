function f=generate_PR(h,param)
%generate the PR isotherm, param=[a b omega Tc]
%a is the value of a(Tc)

hold on;

T=[150 100 50 0 -50 -100 -118.54 -125 -140 -142]+273.15; %in K
%T=-150+273.15;
P=logspace(0,2,300)*1e5; %Pa
R=8.314; %J/mol/K

%test case -- oxygen
z=PR(298,101325,[0.45724*(R*154.6)^2/5.046e6 0.0778*R*154.6/5.046e6 0.021 154.6]);
fprintf('For oxygen at T=%f K, P=%f Pa roots found are ...\n',298.0,101325.)
for i=1:size(z,1)
  fprintf(' .. z= %f\n',z(i));
end

xlabel('Volume (m^3/kmol)','FontSize',24);
ylabel('Pressure (bar)','FontSize',24);

for tdata=1:size(T,2)
  fprintf('Temperature %f K\n',T(tdata));
  Parr=[];
  Varr=[];
  for pdata=1:size(P,2)
    temperature=T(1,tdata);
    pressure=P(1,pdata);
    z=PR(temperature,pressure,param);
    z=z';
    v=(z*R*temperature)/pressure;
    Varr=[Varr v*1e3]; %in m^3/kmol
    Parr=[Parr pressure/1.0e5*ones(size(v))]; %in bar
  end
  [sorted_arr,iarr]=sort(Varr);
  Varr=Varr(iarr);
  Parr=Parr(iarr);
  loglog(Varr',Parr','LineWidth',1.5);
end

axis([0.01 100 1 100]);
ax = gca;
set(ax,'FontSize',24,'LineWidth',1.5);
set(ax,'XMinorTick','on')
set(ax,'YMinorTick','on')
grid on