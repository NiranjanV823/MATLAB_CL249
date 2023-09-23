clc
clear
V=0:0.0000001:0.005;
P=[];
k=273;
R=8.314;
T=[-125 -150 -175]+k;

for j=1:3
 for i=1:50001
[a(j),b(j)]=parameter_PR(T(j));
P(i)=((R*T(j))/(V(i)-b(j))) - a(j)/(V(i)*(V(i)+b(j))+b(j)*(V(i)-b(j)));

 end
plot(V*1000,P*0.00001);
xlim([0 5])
ylim([0 100])
hold on
end
title('PV isotherm')
ylabel('Pressure(bar)');
xlabel('Volume(m^3/kmol)');