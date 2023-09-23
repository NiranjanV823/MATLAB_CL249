clc
clear      
T=[-125 -130 -140 -150 -160 -170 -175 -180 -183] +273 ;
P=[ 40 24 20 15 8 5 4 2 2 ]*1e5;
Pvap=[1,9];
for i=1:9
 Pvap(i)=  PR(T(i),P(i));
end
disp(Pvap)
plot(T,Pvap/1e5,'-o');
xlabel("Temperature(K)");
ylabel("PVap(Bar)");