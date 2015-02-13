clear

sherpaTTKinematicConstants

zp = -1;

A = kC.l1-kC.l4*sin(kC.zeta)-kC.l6-kC.l8-kC.r-zp;
B1 = kC.l1-kC.l3-kC.l4*sin(kC.zeta)-kC.l6-kC.l8-kC.r;
B2 = kC.l1+kC.l3-kC.l4*sin(kC.zeta)-kC.l6-kC.l8-kC.r;
e1 = kC.l5+B1
e2 = -kC.l5+B1

e3 = kC.l5+B2
e4 = -kC.l5+B2

extremums = [e1 e2 e3 e4]

zMin = min(extremums)
zMax = max(extremums)

gammaMin = asin((-kC.l3-A)/kC.l5)-kC.zeta
gammaMax = asin((kC.l3-A)/kC.l5)-kC.zeta


betaMin = -1.0385;
betaMax = 0.2967;
gammaMin = -0.0873;
gammaMax = 1.2863;
beta = linspace(betaMin,betaMax,20);
gamma = linspace(gammaMin,gammaMax,20);
figure(1)
axis equal
hold on

for i = 1:length(beta)
    for j = 1:length(gamma)
        x = kC.l2+kC.l3*cos(beta(i))+kC.l4*cos(zeta)+kC.l5*sin(zeta+gamma(j))-kC.l7;
        zp = kC.l1+kC.l3*sin(beta(i))-kC.l4*sin(zeta)-kC.l5*sin(zeta+gamma(j))-kC.l6-kC.l8-kC.r;
        plot(x,zp,'k.');
    end
end