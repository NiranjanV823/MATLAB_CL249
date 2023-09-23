% z=pv/rt
zv=4.810162e-01 ;
zl=1.511495e-01 ;
V=1:0.001:0.005;
%V=0.047e-3;
P=[];
k=273;
T=-125+k;
R=8.314;
for i=1:49001
P(i)=zv*R*T/V(i);
end
plot(V,P);