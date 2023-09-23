temp = [148.15 143.15 133.15 123.15 113.15 103.15 98.15 93.15 90.15];
    delH = zeros(9,1);
    delS = zeros(9,1);
    for i = 1:9
        [dH,dS] = clapeyron(temp(i));
        delH(i) = dH*10^-3;
        delS(i) = dS*10^-3;
    end

    figure(1)
    plot(temp,delH,'linewidth',2.5)
    hold on
    plot(temp,delH,'.r',MarkerSize=15)
    hold off
    title("ΔH/mol vs T","FontSize",20)
    xlabel("Temperature(K)","FontSize",20)
    ylabel("ΔH/mol(KJ/mol)","FontSize",20)

    figure(2)
    plot(temp,delS,'linewidth',2.5)
    hold on
    plot(temp,delS,'.r',MarkerSize=15)
    hold off
    title("ΔS/mol vs T","FontSize",20)
    xlabel("Temperature(K)","FontSize",20)
    ylabel("ΔS/mol(KJ/mol/K)","FontSize",20)