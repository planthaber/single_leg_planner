%SHERPATTIK Calculates the joint values for a g1iven contact point.
%   Calculates the joint values for a g1iven contact point for the Sherpa TT
%   leg. All coord1inates are in the pan joint coord1inate frame.
%
%Inputs:
%-u: A 1x3 Cartesian vector in the pan frame containing [xP yP zP].
%-kC: A struct containing the kinematic constants of the Sherpa TT Rover.
%-jointLimits: The joint limits of each of the rover's joints.
%Outputs:
%-q: A 1x3 joint vector containing [alpha beta gamma].
%sherpaTTIK.m
%author: wreid
%date: 20150122

function q = sherpaTTIK(u,kC,jointLimits)


    xC = u(1);
    yC = u(2);
    zC = u(3);

    x = sqrt(xC^2+yC^2);
    z = zC;
    
    alphaMin = jointLimits(1,1);
    alphaMax = jointLimits(2,1);
    betaMin = jointLimits(1,2);
    betaMax = jointLimits(2,2);
    gammaMin = jointLimits(1,3);
    gammaMax = jointLimits(2,3);
    
    gammaRaw = [- kC.zeta - log(-(kC.l1^2*exp(kC.zeta*1i)*1i + kC.l2^2*exp(kC.zeta*1i)*1i - kC.l3^2*exp(kC.zeta*1i)*1i + kC.l5^2*exp(kC.zeta*1i)*1i + kC.l6^2*exp(kC.zeta*1i)*1i + kC.l7^2*exp(kC.zeta*1i)*1i + (kC.l8+kC.r)^2*exp(kC.zeta*1i)*1i + x^2*exp(kC.zeta*1i)*1i + z^2*exp(kC.zeta*1i)*1i - (exp(kC.zeta*2*1i)*(kC.l1^2 - 2*sin(kC.zeta)*kC.l1*kC.l4 - 2*kC.l1*kC.l6 - 2*kC.l1*(kC.l8+kC.r) - 2*kC.l1*z + kC.l2^2 + 2*cos(kC.zeta)*kC.l2*kC.l4 - 2*kC.l2*kC.l7 - 2*kC.l2*x - kC.l3^2 + kC.l4^2 + 2*sin(kC.zeta)*kC.l4*kC.l6 - 2*cos(kC.zeta)*kC.l4*kC.l7 + 2*sin(kC.zeta)*kC.l4*(kC.l8+kC.r) - 2*cos(kC.zeta)*kC.l4*x + 2*sin(kC.zeta)*kC.l4*z + kC.l5^2 + kC.l6^2 + 2*kC.l6*(kC.l8+kC.r) + 2*kC.l6*z + kC.l7^2 + 2*kC.l7*x + (kC.l8+kC.r)^2 + 2*(kC.l8+kC.r)*z + x^2 + z^2)^2 + 4*kC.l5^2*exp(kC.zeta*1i)*(- kC.l4 + x*exp(kC.zeta*1i) + z*exp(kC.zeta*1i)*1i - kC.l1*exp(kC.zeta*1i)*1i - kC.l2*exp(kC.zeta*1i) + kC.l6*exp(kC.zeta*1i)*1i + kC.l7*exp(kC.zeta*1i) + (kC.l8+kC.r)*exp(kC.zeta*1i)*1i)*(kC.l2 - kC.l1*1i + kC.l6*1i - kC.l7 + (kC.l8+kC.r)*1i - x + z*1i + kC.l4*exp(kC.zeta*1i)))^(1/2)*1i - kC.l4*x*(exp(kC.zeta*2*1i)/2 + 1/2)*2*1i - kC.l1*kC.l6*exp(kC.zeta*1i)*2*1i - kC.l1*(kC.l8+kC.r)*exp(kC.zeta*1i)*2*1i - kC.l2*kC.l7*exp(kC.zeta*1i)*2*1i + kC.l6*(kC.l8+kC.r)*exp(kC.zeta*1i)*2*1i - kC.l1*kC.l4*(cos(2*kC.zeta) + sin(2*kC.zeta)*1i - 1) + kC.l4*kC.l6*(cos(2*kC.zeta) + sin(2*kC.zeta)*1i - 1) + kC.l4*(kC.l8+kC.r)*(cos(2*kC.zeta) + sin(2*kC.zeta)*1i - 1) - kC.l2*x*exp(kC.zeta*1i)*2*1i + kC.l7*x*exp(kC.zeta*1i)*2*1i - kC.l1*z*exp(kC.zeta*1i)*2*1i + kC.l6*z*exp(kC.zeta*1i)*2*1i + (kC.l8+kC.r)*z*exp(kC.zeta*1i)*2*1i + kC.l4*z*(cos(2*kC.zeta) + sin(2*kC.zeta)*1i - 1) + kC.l4^2*exp(kC.zeta*1i)*cos(kC.zeta)^2*1i + kC.l4^2*exp(kC.zeta*1i)*sin(kC.zeta)^2*1i - kC.l4*kC.l7*(exp(kC.zeta*2*1i)/2 + 1/2)*2*1i + kC.l2*kC.l4*(exp(kC.zeta*2*1i)*1i + 1i))/(2*kC.l5*(kC.l4*1i - x*exp(kC.zeta*1i)*1i + z*exp(kC.zeta*1i) - kC.l1*exp(kC.zeta*1i) + kC.l2*exp(kC.zeta*1i)*1i + kC.l6*exp(kC.zeta*1i) - kC.l7*exp(kC.zeta*1i)*1i + (kC.l8+kC.r)*exp(kC.zeta*1i))))*1i;
            - kC.zeta - log(-(kC.l1^2*exp(kC.zeta*1i)*1i + kC.l2^2*exp(kC.zeta*1i)*1i - kC.l3^2*exp(kC.zeta*1i)*1i + kC.l5^2*exp(kC.zeta*1i)*1i + kC.l6^2*exp(kC.zeta*1i)*1i + kC.l7^2*exp(kC.zeta*1i)*1i + (kC.l8+kC.r)^2*exp(kC.zeta*1i)*1i + x^2*exp(kC.zeta*1i)*1i + z^2*exp(kC.zeta*1i)*1i + (exp(kC.zeta*2*1i)*(kC.l1^2 - 2*sin(kC.zeta)*kC.l1*kC.l4 - 2*kC.l1*kC.l6 - 2*kC.l1*(kC.l8+kC.r) - 2*kC.l1*z + kC.l2^2 + 2*cos(kC.zeta)*kC.l2*kC.l4 - 2*kC.l2*kC.l7 - 2*kC.l2*x - kC.l3^2 + kC.l4^2 + 2*sin(kC.zeta)*kC.l4*kC.l6 - 2*cos(kC.zeta)*kC.l4*kC.l7 + 2*sin(kC.zeta)*kC.l4*(kC.l8+kC.r) - 2*cos(kC.zeta)*kC.l4*x + 2*sin(kC.zeta)*kC.l4*z + kC.l5^2 + kC.l6^2 + 2*kC.l6*(kC.l8+kC.r) + 2*kC.l6*z + kC.l7^2 + 2*kC.l7*x + (kC.l8+kC.r)^2 + 2*(kC.l8+kC.r)*z + x^2 + z^2)^2 + 4*kC.l5^2*exp(kC.zeta*1i)*(- kC.l4 + x*exp(kC.zeta*1i) + z*exp(kC.zeta*1i)*1i - kC.l1*exp(kC.zeta*1i)*1i - kC.l2*exp(kC.zeta*1i) + kC.l6*exp(kC.zeta*1i)*1i + kC.l7*exp(kC.zeta*1i) + (kC.l8+kC.r)*exp(kC.zeta*1i)*1i)*(kC.l2 - kC.l1*1i + kC.l6*1i - kC.l7 + (kC.l8+kC.r)*1i - x + z*1i + kC.l4*exp(kC.zeta*1i)))^(1/2)*1i - kC.l4*x*(exp(kC.zeta*2*1i)/2 + 1/2)*2*1i - kC.l1*kC.l6*exp(kC.zeta*1i)*2*1i - kC.l1*(kC.l8+kC.r)*exp(kC.zeta*1i)*2*1i - kC.l2*kC.l7*exp(kC.zeta*1i)*2*1i + kC.l6*(kC.l8+kC.r)*exp(kC.zeta*1i)*2*1i - kC.l1*kC.l4*(cos(2*kC.zeta) + sin(2*kC.zeta)*1i - 1) + kC.l4*kC.l6*(cos(2*kC.zeta) + sin(2*kC.zeta)*1i - 1) + kC.l4*(kC.l8+kC.r)*(cos(2*kC.zeta) + sin(2*kC.zeta)*1i - 1) - kC.l2*x*exp(kC.zeta*1i)*2*1i + kC.l7*x*exp(kC.zeta*1i)*2*1i - kC.l1*z*exp(kC.zeta*1i)*2*1i + kC.l6*z*exp(kC.zeta*1i)*2*1i + (kC.l8+kC.r)*z*exp(kC.zeta*1i)*2*1i + kC.l4*z*(cos(2*kC.zeta) + sin(2*kC.zeta)*1i - 1) + kC.l4^2*exp(kC.zeta*1i)*cos(kC.zeta)^2*1i + kC.l4^2*exp(kC.zeta*1i)*sin(kC.zeta)^2*1i - kC.l4*kC.l7*(exp(kC.zeta*2*1i)/2 + 1/2)*2*1i + kC.l2*kC.l4*(exp(kC.zeta*2*1i)*1i + 1i))/(2*kC.l5*(kC.l4*1i - x*exp(kC.zeta*1i)*1i + z*exp(kC.zeta*1i) - kC.l1*exp(kC.zeta*1i) + kC.l2*exp(kC.zeta*1i)*1i + kC.l6*exp(kC.zeta*1i) - kC.l7*exp(kC.zeta*1i)*1i + (kC.l8+kC.r)*exp(kC.zeta*1i))))*1i];
 
    betaRaw = -[asin((kC.l6 - kC.l1 + (kC.l8+kC.r) + z + kC.l4*sin(kC.zeta) - kC.l5*sin(log(-(kC.l1^2*exp(kC.zeta*1i)*1i + kC.l2^2*exp(kC.zeta*1i)*1i - kC.l3^2*exp(kC.zeta*1i)*1i + kC.l5^2*exp(kC.zeta*1i)*1i + kC.l6^2*exp(kC.zeta*1i)*1i + kC.l7^2*exp(kC.zeta*1i)*1i + (kC.l8+kC.r)^2*exp(kC.zeta*1i)*1i + x^2*exp(kC.zeta*1i)*1i + z^2*exp(kC.zeta*1i)*1i - (exp(kC.zeta*2*1i)*(kC.l1^2 - 2*sin(kC.zeta)*kC.l1*kC.l4 - 2*kC.l1*kC.l6 - 2*kC.l1*(kC.l8+kC.r) - 2*kC.l1*z + kC.l2^2 + 2*cos(kC.zeta)*kC.l2*kC.l4 - 2*kC.l2*kC.l7 - 2*kC.l2*x - kC.l3^2 + kC.l4^2 + 2*sin(kC.zeta)*kC.l4*kC.l6 - 2*cos(kC.zeta)*kC.l4*kC.l7 + 2*sin(kC.zeta)*kC.l4*(kC.l8+kC.r) - 2*cos(kC.zeta)*kC.l4*x + 2*sin(kC.zeta)*kC.l4*z + kC.l5^2 + kC.l6^2 + 2*kC.l6*(kC.l8+kC.r) + 2*kC.l6*z + kC.l7^2 + 2*kC.l7*x + (kC.l8+kC.r)^2 + 2*(kC.l8+kC.r)*z + x^2 + z^2)^2 + 4*kC.l5^2*exp(kC.zeta*1i)*(- kC.l4 + x*exp(kC.zeta*1i) + z*exp(kC.zeta*1i)*1i - kC.l1*exp(kC.zeta*1i)*1i - kC.l2*exp(kC.zeta*1i) + kC.l6*exp(kC.zeta*1i)*1i + kC.l7*exp(kC.zeta*1i) + (kC.l8+kC.r)*exp(kC.zeta*1i)*1i)*(kC.l2 - kC.l1*1i + kC.l6*1i - kC.l7 + (kC.l8+kC.r)*1i - x + z*1i + kC.l4*exp(kC.zeta*1i)))^(1/2)*1i - kC.l4*x*(exp(kC.zeta*2*1i)/2 + 1/2)*2*1i - kC.l1*kC.l6*exp(kC.zeta*1i)*2*1i - kC.l1*(kC.l8+kC.r)*exp(kC.zeta*1i)*2*1i - kC.l2*kC.l7*exp(kC.zeta*1i)*2*1i + kC.l6*(kC.l8+kC.r)*exp(kC.zeta*1i)*2*1i - kC.l1*kC.l4*(cos(2*kC.zeta) + sin(2*kC.zeta)*1i - 1) + kC.l4*kC.l6*(cos(2*kC.zeta) + sin(2*kC.zeta)*1i - 1) + kC.l4*(kC.l8+kC.r)*(cos(2*kC.zeta) + sin(2*kC.zeta)*1i - 1) - kC.l2*x*exp(kC.zeta*1i)*2*1i + kC.l7*x*exp(kC.zeta*1i)*2*1i - kC.l1*z*exp(kC.zeta*1i)*2*1i + kC.l6*z*exp(kC.zeta*1i)*2*1i + (kC.l8+kC.r)*z*exp(kC.zeta*1i)*2*1i + kC.l4*z*(cos(2*kC.zeta) + sin(2*kC.zeta)*1i - 1) + kC.l4^2*exp(kC.zeta*1i)*cos(kC.zeta)^2*1i + kC.l4^2*exp(kC.zeta*1i)*sin(kC.zeta)^2*1i - kC.l4*kC.l7*(exp(kC.zeta*2*1i)/2 + 1/2)*2*1i + kC.l2*kC.l4*(exp(kC.zeta*2*1i)*1i + 1i))/(2*kC.l5*(kC.l4*1i - x*exp(kC.zeta*1i)*1i + z*exp(kC.zeta*1i) - kC.l1*exp(kC.zeta*1i) + kC.l2*exp(kC.zeta*1i)*1i + kC.l6*exp(kC.zeta*1i) - kC.l7*exp(kC.zeta*1i)*1i + (kC.l8+kC.r)*exp(kC.zeta*1i))))*1i))/kC.l3);
            asin((kC.l6 - kC.l1 + (kC.l8+kC.r) + z + kC.l4*sin(kC.zeta) - kC.l5*sin(log(-(kC.l1^2*exp(kC.zeta*1i)*1i + kC.l2^2*exp(kC.zeta*1i)*1i - kC.l3^2*exp(kC.zeta*1i)*1i + kC.l5^2*exp(kC.zeta*1i)*1i + kC.l6^2*exp(kC.zeta*1i)*1i + kC.l7^2*exp(kC.zeta*1i)*1i + (kC.l8+kC.r)^2*exp(kC.zeta*1i)*1i + x^2*exp(kC.zeta*1i)*1i + z^2*exp(kC.zeta*1i)*1i + (exp(kC.zeta*2*1i)*(kC.l1^2 - 2*sin(kC.zeta)*kC.l1*kC.l4 - 2*kC.l1*kC.l6 - 2*kC.l1*(kC.l8+kC.r) - 2*kC.l1*z + kC.l2^2 + 2*cos(kC.zeta)*kC.l2*kC.l4 - 2*kC.l2*kC.l7 - 2*kC.l2*x - kC.l3^2 + kC.l4^2 + 2*sin(kC.zeta)*kC.l4*kC.l6 - 2*cos(kC.zeta)*kC.l4*kC.l7 + 2*sin(kC.zeta)*kC.l4*(kC.l8+kC.r) - 2*cos(kC.zeta)*kC.l4*x + 2*sin(kC.zeta)*kC.l4*z + kC.l5^2 + kC.l6^2 + 2*kC.l6*(kC.l8+kC.r) + 2*kC.l6*z + kC.l7^2 + 2*kC.l7*x + (kC.l8+kC.r)^2 + 2*(kC.l8+kC.r)*z + x^2 + z^2)^2 + 4*kC.l5^2*exp(kC.zeta*1i)*(- kC.l4 + x*exp(kC.zeta*1i) + z*exp(kC.zeta*1i)*1i - kC.l1*exp(kC.zeta*1i)*1i - kC.l2*exp(kC.zeta*1i) + kC.l6*exp(kC.zeta*1i)*1i + kC.l7*exp(kC.zeta*1i) + (kC.l8+kC.r)*exp(kC.zeta*1i)*1i)*(kC.l2 - kC.l1*1i + kC.l6*1i - kC.l7 + (kC.l8+kC.r)*1i - x + z*1i + kC.l4*exp(kC.zeta*1i)))^(1/2)*1i - kC.l4*x*(exp(kC.zeta*2*1i)/2 + 1/2)*2*1i - kC.l1*kC.l6*exp(kC.zeta*1i)*2*1i - kC.l1*(kC.l8+kC.r)*exp(kC.zeta*1i)*2*1i - kC.l2*kC.l7*exp(kC.zeta*1i)*2*1i + kC.l6*(kC.l8+kC.r)*exp(kC.zeta*1i)*2*1i - kC.l1*kC.l4*(cos(2*kC.zeta) + sin(2*kC.zeta)*1i - 1) + kC.l4*kC.l6*(cos(2*kC.zeta) + sin(2*kC.zeta)*1i - 1) + kC.l4*(kC.l8+kC.r)*(cos(2*kC.zeta) + sin(2*kC.zeta)*1i - 1) - kC.l2*x*exp(kC.zeta*1i)*2*1i + kC.l7*x*exp(kC.zeta*1i)*2*1i - kC.l1*z*exp(kC.zeta*1i)*2*1i + kC.l6*z*exp(kC.zeta*1i)*2*1i + (kC.l8+kC.r)*z*exp(kC.zeta*1i)*2*1i + kC.l4*z*(cos(2*kC.zeta) + sin(2*kC.zeta)*1i - 1) + kC.l4^2*exp(kC.zeta*1i)*cos(kC.zeta)^2*1i + kC.l4^2*exp(kC.zeta*1i)*sin(kC.zeta)^2*1i - kC.l4*kC.l7*(exp(kC.zeta*2*1i)/2 + 1/2)*2*1i + kC.l2*kC.l4*(exp(kC.zeta*2*1i)*1i + 1i))/(2*kC.l5*(kC.l4*1i - x*exp(kC.zeta*1i)*1i + z*exp(kC.zeta*1i) - kC.l1*exp(kC.zeta*1i) + kC.l2*exp(kC.zeta*1i)*1i + kC.l6*exp(kC.zeta*1i) - kC.l7*exp(kC.zeta*1i)*1i + (kC.l8+kC.r)*exp(kC.zeta*1i))))*1i))/kC.l3)];
    
    alpha = atan2(yC,xC); 

    if imag(alpha(1)) == 0 || imag(betaRaw(1)) == 0 || imag(gammaRaw(1)) == 0 || imag(betaRaw(2)) == 0 || imag(gammaRaw(2)) == 0
        
        %beta = betaRaw(1);
        %gamma = gammaRaw(1);
        
        if alpha >= alphaMin && alpha <= alphaMax && betaRaw(1) >= betaMin && betaRaw(1) <= betaMax && gammaRaw(1) >= gammaMin && gammaRaw(1) <= gammaMax
            alpha = alpha(1);
            beta = real(betaRaw(1));
            gamma = real(gammaRaw(1));
        elseif alpha >= alphaMin && alpha <= alphaMax && betaRaw(2) >= betaMin && betaRaw(2) <= betaMax && gammaRaw(2) >= gammaMin && gammaRaw(2) <= gammaMax
            alpha = alpha(1);
            beta = real(betaRaw(2));
            gamma = real(gammaRaw(2));
        else
            fprintf('Solution out of angular limit range.');
            alpha = alpha(1);
            beta = real(betaRaw(1));
            gamma = real(gammaRaw(1));
        end
    else
        fprintf('No Real Solution Found');
        alpha = 0;
        beta = 0;
        gamma = 0;
    end

    q = [alpha beta gamma];
    
end

