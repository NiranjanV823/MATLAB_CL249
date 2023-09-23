T=[-125 -130 -140 -150 -160 -170 -175 -180 -183] +273 ;
P=[ 40 24 20 15 8 5 4 2 2 ]*1e5;
for i=1:9
    PVp(i)=PR(T(i),P(i));
end

coeff = polyfit(T,PVp,3);
x = 148.15:-5:88.15;
y = polyval(coeff,x);
plot(T,PVp,'*')
hold on
plot(x,y)
title('Pvap V/s T')
xlabel('Temparature(K)');
ylabel('Pressure(Bar)');
fprintf("The polynomial equation of the curve is (%d)T³ + (%d)T² + (%d)T + %d",coeff(1),coeff(2),coeff(3),coeff(4));