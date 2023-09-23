clc
clear
K=273;
T=-125+K;
Pc=5.046e6;
Pvap=Pc; %Pa -- initial guess
nroots=1;
while nroots~=3 %check whether this initial guess provides 3 roots
     z=PR1(T,Pvap);
     nroots=size(z,1);
     fprintf(' for Pvap= %f bar %d roots found\n',Pvap,nroots);
     if nroots==1
          Pvap=Pvap-100; %New guess
     end
end