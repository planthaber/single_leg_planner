%sherpaTTFKVel.m
%author: wreid
%date: 20150122

function qDot = sherpaTTIKVel(uDot,q,kC)
%sherpaTTFKVel Sherpa_TT single leg forward velocity kinematics.

    alpha = q(1);
    beta = q(2);
    gamma = q(3);
    phi = 0;
    
    xDot = uDot(1);
    yDot = uDot(2);
    zDot = uDot(3);
    
    qDot = real([(conj(xDot)*(cos(gamma + kC.zeta)*sin(gamma + kC.zeta)*sin(alpha)*kC.l5^2 - cos(beta)*sin(alpha)*sin(beta)*kC.l3^2))/(kC.l3^3*cos(beta)^2*sin(alpha)^2*sin(beta) - kC.l5^3*cos(gamma + kC.zeta)^2*sin(gamma + kC.zeta)*sin(alpha)^2 + kC.l2*kC.l3^2*cos(beta)*sin(alpha)^2*sin(beta) - kC.l3^2*kC.l7*cos(beta)*sin(alpha)^2*sin(beta) - kC.l3*kC.l5^2*cos(gamma + kC.zeta)^2*cos(alpha)^2*sin(beta) + kC.l3^2*kC.l5*sin(gamma + kC.zeta)*cos(alpha)^2*cos(beta)^2 - kC.l2*kC.l5^2*cos(gamma + kC.zeta)*sin(gamma + kC.zeta)*sin(alpha)^2 + kC.l5^2*kC.l7*cos(gamma + kC.zeta)*sin(gamma + kC.zeta)*sin(alpha)^2 + kC.l3^2*kC.l4*cos(beta)*sin(alpha)^2*sin(beta)*cos(kC.zeta) + kC.l3*kC.l5^2*cos(gamma + kC.zeta)*sin(gamma + kC.zeta)*cos(alpha)^2*cos(beta) - kC.l3*kC.l5^2*cos(gamma + kC.zeta)*sin(gamma + kC.zeta)*cos(beta)*sin(alpha)^2 - kC.l3^2*kC.l5*cos(gamma + kC.zeta)*cos(alpha)^2*cos(beta)*sin(beta) - kC.l4*kC.l5^2*cos(gamma + kC.zeta)*sin(gamma + kC.zeta)*sin(alpha)^2*cos(kC.zeta) + kC.l3^2*kC.l5*cos(gamma + kC.zeta)*cos(beta)*sin(alpha)^2*sin(beta) - kC.l2*kC.l3*kC.l5*cos(gamma + kC.zeta)*cos(alpha)^2*sin(beta) + kC.l2*kC.l3*kC.l5*sin(gamma + kC.zeta)*cos(alpha)^2*cos(beta) + kC.l3*kC.l5*kC.l7*cos(gamma + kC.zeta)*cos(alpha)^2*sin(beta) - kC.l3*kC.l5*kC.l7*sin(gamma + kC.zeta)*cos(alpha)^2*cos(beta) - kC.l3*kC.l4*kC.l5*cos(gamma + kC.zeta)*cos(alpha)^2*sin(beta)*cos(kC.zeta) + kC.l3*kC.l4*kC.l5*sin(gamma + kC.zeta)*cos(alpha)^2*cos(beta)*cos(kC.zeta)) - (conj(zDot)*(kC.l5^2*sin(gamma + kC.zeta)^2*cos(alpha)*sin(alpha) - kC.l3^2*cos(alpha)*sin(alpha)*sin(beta)^2))/(kC.l3^3*cos(beta)^2*sin(alpha)^2*sin(beta) - kC.l5^3*cos(gamma + kC.zeta)^2*sin(gamma + kC.zeta)*sin(alpha)^2 + kC.l2*kC.l3^2*cos(beta)*sin(alpha)^2*sin(beta) - kC.l3^2*kC.l7*cos(beta)*sin(alpha)^2*sin(beta) - kC.l3*kC.l5^2*cos(gamma + kC.zeta)^2*cos(alpha)^2*sin(beta) + kC.l3^2*kC.l5*sin(gamma + kC.zeta)*cos(alpha)^2*cos(beta)^2 - kC.l2*kC.l5^2*cos(gamma + kC.zeta)*sin(gamma + kC.zeta)*sin(alpha)^2 + kC.l5^2*kC.l7*cos(gamma + kC.zeta)*sin(gamma + kC.zeta)*sin(alpha)^2 + kC.l3^2*kC.l4*cos(beta)*sin(alpha)^2*sin(beta)*cos(kC.zeta) + kC.l3*kC.l5^2*cos(gamma + kC.zeta)*sin(gamma + kC.zeta)*cos(alpha)^2*cos(beta) - kC.l3*kC.l5^2*cos(gamma + kC.zeta)*sin(gamma + kC.zeta)*cos(beta)*sin(alpha)^2 - kC.l3^2*kC.l5*cos(gamma + kC.zeta)*cos(alpha)^2*cos(beta)*sin(beta) - kC.l4*kC.l5^2*cos(gamma + kC.zeta)*sin(gamma + kC.zeta)*sin(alpha)^2*cos(kC.zeta) + kC.l3^2*kC.l5*cos(gamma + kC.zeta)*cos(beta)*sin(alpha)^2*sin(beta) - kC.l2*kC.l3*kC.l5*cos(gamma + kC.zeta)*cos(alpha)^2*sin(beta) + kC.l2*kC.l3*kC.l5*sin(gamma + kC.zeta)*cos(alpha)^2*cos(beta) + kC.l3*kC.l5*kC.l7*cos(gamma + kC.zeta)*cos(alpha)^2*sin(beta) - kC.l3*kC.l5*kC.l7*sin(gamma + kC.zeta)*cos(alpha)^2*cos(beta) - kC.l3*kC.l4*kC.l5*cos(gamma + kC.zeta)*cos(alpha)^2*sin(beta)*cos(kC.zeta) + kC.l3*kC.l4*kC.l5*sin(gamma + kC.zeta)*cos(alpha)^2*cos(beta)*cos(kC.zeta)) - (conj(yDot)*(kC.l3*kC.l5*cos(gamma + kC.zeta)*cos(alpha)*sin(beta) - kC.l3*kC.l5*sin(gamma + kC.zeta)*cos(alpha)*cos(beta)))/(kC.l3^3*cos(beta)^2*sin(alpha)^2*sin(beta) - kC.l5^3*cos(gamma + kC.zeta)^2*sin(gamma + kC.zeta)*sin(alpha)^2 + kC.l2*kC.l3^2*cos(beta)*sin(alpha)^2*sin(beta) - kC.l3^2*kC.l7*cos(beta)*sin(alpha)^2*sin(beta) - kC.l3*kC.l5^2*cos(gamma + kC.zeta)^2*cos(alpha)^2*sin(beta) + kC.l3^2*kC.l5*sin(gamma + kC.zeta)*cos(alpha)^2*cos(beta)^2 - kC.l2*kC.l5^2*cos(gamma + kC.zeta)*sin(gamma + kC.zeta)*sin(alpha)^2 + kC.l5^2*kC.l7*cos(gamma + kC.zeta)*sin(gamma + kC.zeta)*sin(alpha)^2 + kC.l3^2*kC.l4*cos(beta)*sin(alpha)^2*sin(beta)*cos(kC.zeta) + kC.l3*kC.l5^2*cos(gamma + kC.zeta)*sin(gamma + kC.zeta)*cos(alpha)^2*cos(beta) - kC.l3*kC.l5^2*cos(gamma + kC.zeta)*sin(gamma + kC.zeta)*cos(beta)*sin(alpha)^2 - kC.l3^2*kC.l5*cos(gamma + kC.zeta)*cos(alpha)^2*cos(beta)*sin(beta) - kC.l4*kC.l5^2*cos(gamma + kC.zeta)*sin(gamma + kC.zeta)*sin(alpha)^2*cos(kC.zeta) + kC.l3^2*kC.l5*cos(gamma + kC.zeta)*cos(beta)*sin(alpha)^2*sin(beta) - kC.l2*kC.l3*kC.l5*cos(gamma + kC.zeta)*cos(alpha)^2*sin(beta) + kC.l2*kC.l3*kC.l5*sin(gamma + kC.zeta)*cos(alpha)^2*cos(beta) + kC.l3*kC.l5*kC.l7*cos(gamma + kC.zeta)*cos(alpha)^2*sin(beta) - kC.l3*kC.l5*kC.l7*sin(gamma + kC.zeta)*cos(alpha)^2*cos(beta) - kC.l3*kC.l4*kC.l5*cos(gamma + kC.zeta)*cos(alpha)^2*sin(beta)*cos(kC.zeta) + kC.l3*kC.l4*kC.l5*sin(gamma + kC.zeta)*cos(alpha)^2*cos(beta)*cos(kC.zeta));
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           (conj(zDot)*(kC.l5*sin(gamma + kC.zeta)*cos(alpha)^2 + kC.l3*sin(beta)*sin(alpha)^2))/(kC.l5^2*cos(gamma + kC.zeta)*sin(gamma + kC.zeta)*sin(alpha)^2 - kC.l3^2*cos(beta)*sin(alpha)^2*sin(beta) + kC.l3*kC.l5*cos(gamma + kC.zeta)*cos(alpha)^2*sin(beta) - kC.l3*kC.l5*sin(gamma + kC.zeta)*cos(alpha)^2*cos(beta)) - (kC.l5*cos(gamma + kC.zeta)*cos(alpha)*conj(xDot))/(kC.l5^2*cos(gamma + kC.zeta)*sin(gamma + kC.zeta)*sin(alpha)^2 - kC.l3^2*cos(beta)*sin(alpha)^2*sin(beta) + kC.l3*kC.l5*cos(gamma + kC.zeta)*cos(alpha)^2*sin(beta) - kC.l3*kC.l5*sin(gamma + kC.zeta)*cos(alpha)^2*cos(beta)) - (kC.l5*cos(gamma + kC.zeta)*sin(alpha)*conj(yDot))/(kC.l5^2*cos(gamma + kC.zeta)*sin(gamma + kC.zeta)*sin(alpha)^2 - kC.l3^2*cos(beta)*sin(alpha)^2*sin(beta) + kC.l3*kC.l5*cos(gamma + kC.zeta)*cos(alpha)^2*sin(beta) - kC.l3*kC.l5*sin(gamma + kC.zeta)*cos(alpha)^2*cos(beta));
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           (kC.l3*cos(alpha)*cos(beta)*conj(xDot))/(kC.l5^2*cos(gamma + kC.zeta)*sin(gamma + kC.zeta)*sin(alpha)^2 - kC.l3^2*cos(beta)*sin(alpha)^2*sin(beta) + kC.l3*kC.l5*cos(gamma + kC.zeta)*cos(alpha)^2*sin(beta) - kC.l3*kC.l5*sin(gamma + kC.zeta)*cos(alpha)^2*cos(beta)) - (conj(zDot)*(kC.l3*sin(beta)*cos(alpha)^2 + kC.l5*sin(gamma + kC.zeta)*sin(alpha)^2))/(kC.l5^2*cos(gamma + kC.zeta)*sin(gamma + kC.zeta)*sin(alpha)^2 - kC.l3^2*cos(beta)*sin(alpha)^2*sin(beta) + kC.l3*kC.l5*cos(gamma + kC.zeta)*cos(alpha)^2*sin(beta) - kC.l3*kC.l5*sin(gamma + kC.zeta)*cos(alpha)^2*cos(beta)) + (kC.l3*cos(beta)*sin(alpha)*conj(yDot))/(kC.l5^2*cos(gamma + kC.zeta)*sin(gamma + kC.zeta)*sin(alpha)^2 - kC.l3^2*cos(beta)*sin(alpha)^2*sin(beta) + kC.l3*kC.l5*cos(gamma + kC.zeta)*cos(alpha)^2*sin(beta) - kC.l3*kC.l5*sin(gamma + kC.zeta)*cos(alpha)^2*cos(beta))]);
end