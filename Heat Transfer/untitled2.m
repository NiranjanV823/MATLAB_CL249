close all;
clear;

A1=2;
A2=2.6;
Aw=1.2;
alpha_r=0.9;
alpha_f=0.9;
alpha_w=0;
h=50;
epsilon_r=0.5;
epsilon_f=0.5;
epsilon_w=0.5;
G=1400;
m=65;
cp=1500;
r=0.2;
Ta=303;
sigma=5.67*10^-8;

F=@(t,T)((1/(m*cp))*((alpha_r*G*A1)+(alpha_f*r*G*A2)+((1-alpha_w)*G*Aw)-(h*(A1+A2+Aw)*(T-Ta))-(epsilon_r*A1*sigma*(T^4-Ta^4))-(epsilon_f*A2*sigma*(T^4-Ta^4))-(epsilon_w*Aw*sigma*(T^4-Ta^4))));

z=[0 3600];
[t,T1]=ode45(F,z,303);
plot(t,T1)
hold on;
epsilon_r=0.6;
epsilon_f=0.6;
epsilon_w=0.6;
F=@(t,T)((1/(m*cp))*((alpha_r*G*A1)+(alpha_f*r*G*A2)+((1-alpha_w)*G*Aw)-(h*(A1+A2+Aw)*(T-Ta))-(epsilon_r*A1*sigma*(T^4-Ta^4))-(epsilon_f*A2*sigma*(T^4-Ta^4))-(epsilon_w*Aw*sigma*(T^4-Ta^4))));
z=[0 3600];
[t,T2]=ode45(F,z,303);
plot(t,T2)
hold on;
epsilon_r=0.7;
epsilon_f=0.7;
epsilon_w=0.7;
F=@(t,T)((1/(m*cp))*((alpha_r*G*A1)+(alpha_f*r*G*A2)+((1-alpha_w)*G*Aw)-(h*(A1+A2+Aw)*(T-Ta))-(epsilon_r*A1*sigma*(T^4-Ta^4))-(epsilon_f*A2*sigma*(T^4-Ta^4))-(epsilon_w*Aw*sigma*(T^4-Ta^4))));
z=[0 3600];
[t,T3]=ode45(F,z,303);
plot(t,T3)

ylabel('Temperature(K)')
xlabel('time(s)')
legend('epsilon=0.5','epsilon=0.6','epsilon=0.7')
