clc;
R = 0.08314; % universal gas constant in bar.L/(mol.k)
T = input('enter temperature of the gas in K = ');    % temperature of the gas in K
w = input('enter the value accentric factor = ');  % accentric factor for the gas
Tc = input('enter the critical temperature of the gas in K = ');   % critical temperture of the gas in K
Pc = input('enter the critical pressure of the gas in bar = ');   % critical pressure of the gas in bar
a = 0.45724*R^2*Tc^2/Pc;    % PR EoS coefficient 'a'
b = 0.07780*R*Tc/Pc;    % PR EoS coefficient 'b'
syms Vm temp
% alpha as a function of temperature
alpha = @(temp) (1 + (0.37464 + 1.54226*w - 0.26992*w^2)*(1-sqrt(temp/Tc)))^2;
% pressure as a function of molar volume and temperature using PR EoS
P = @(Vm,temp) R*temp/(Vm - b) - alpha(temp)*a/(Vm^2 + 2*Vm*b - b^2);
fplot(P(Vm,Tc),[0,1000])   % plotting PR isotherm @ critical temperature
hold on;
fplot(P(Vm,T),[0,1000])    % plotting PR isotherm @ generic temperature
hold on;
if 0 < T && T < Tc
    % to find the points of local minima & maxima on isotherm
    % dP/dVm = 0 @ Vm = points of local minima & maxima
    dP = diff(P(Vm,T),Vm);
    extrema = sort(vpasolve(dP == 0,Vm,[0,inf]),'ascend');
    extrema = extrema(end-1:end);
    plot(extrema, subs(P(Vm,T),extrema),'*')
    hold off;
    % to calculate variable limit to x axis
    xmax = double(extrema(end));
    xlim([0 xmax+0.1])
    % to calculate variable limit to y axis
    ymin = double(min(min(subs(P(Vm,T),extrema)),Pc));
    ymax = double(max(max(subs(P(Vm,T),extrema)),Pc));
    ylim([ymin-50 ymax+250])
else
    xlim([0 1])
    ylim([0 10*Pc])
end
grid on;
grid minor;
legend({'critical isotherm','generic isotherm'})
xlabel('Volume, L/mol')
ylabel('Pressure, bar')
title('Peng-Robinson Isotherm')