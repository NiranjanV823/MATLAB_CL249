T=[-125 -130 -140 -150 -160 -170 -175 -180 -183] +273 ;
P=[ 40 24 20 15 8 5 4 2 2 ]*1e5;
[~,n]=size(T);
for i=1:n
    Pvp(i)=PR(T(i),P(i));
end
R=8.314;
delta_V=[];
delta_S=[];
delta_H=[];
coeff=polyfit(T,PVp,3);
derivate=polyder(coeff);

for i=1:n
    [Zv,Zl]=PR(T(i),PVp(i));
    delta_V(i)=(R*T(i)/PVp(i))*(Zv-Zl);
    delta_S(i)=polyval(derivate,T(i))*delta_V(i);
end

entropy = polyfit(T,delta_S,3);

for i=1:n
    delta_H(i)=delta_S(i)*T(i);
end
enthalpy = polyfit(T,delta_H,3);

nexttile
plot(T,delta_S,'-o')
title('△S V/s T')
xlabel("Temparature(K)")
ylabel('△S in joules ')

nexttile
plot(T,delta_H/1000,'-o')
title('△H V/s T')
xlabel('Temparature(K)');
ylabel('△H in kilojoules')
hold off