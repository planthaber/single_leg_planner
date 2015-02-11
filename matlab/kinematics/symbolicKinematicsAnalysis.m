clear
clc
syms L1 L2 L3 L4 L5 L6 L7 L8 alpha beta gamma zeta alphaDot betaDot gammaDot alphaDotDot gammaDotDot betaDotDot

% %Forward Kinematics
% 
% x =         (L2+L3*cos(-beta)+L4*cos(zeta)+L5*cos(zeta+gamma)-L7)*cos(alpha);
% 
% xDot =      - alphaDot*sin(alpha)*(L2 - L7 + L5*cos(gamma + zeta) + L3*cos(beta) + L4*cos(zeta))...
%             - betaDot*L3*cos(alpha)*sin(beta)...
%             - gammaDot*L5*sin(gamma + zeta)*cos(alpha);
% 
% xDotDot =   -alphaDotDot*sin(alpha)*(L2 - L7 + L5*cos(gamma + zeta) + L3*cos(beta) + L4*cos(zeta))...
%             -alphaDot^2*cos(alpha)*(L2 - L7 + L5*cos(gamma + zeta) + L3*cos(beta) + L4*cos(zeta))...
%             +alphaDot*betaDot*L3*sin(beta)*sin(alpha)...
%             +alphaDot*gammaDot*L5*sin(zeta+gamma)*sin(alpha)...
%             -betaDotDot*L3*sin(beta)*cos(alpha)...
%             -betaDot^2*L3*cos(beta)*cos(alpha)...
%             -gammaDotDot*L5*sin(zeta+gamma)*cos(alpha)...
%             -gammaDot^2*L5*cos(zeta+gamma)*cos(alpha);    
% 
% y = (L2+L3*cos(-beta)+L4*cos(zeta)+L5*cos(zeta+gamma)-L7)*sin(alpha);
% 
% yDot =      alphaDot*cos(alpha)*(L2 - L7 + L5*cos(gamma + zeta) + L3*cos(beta) + L4*cos(zeta))...
%             -gammaDot*L5*sin(gamma + zeta)*sin(alpha)...
%             -betaDot*L3*sin(alpha)*sin(beta);
%     
% yDotDot =   alphaDotDot*cos(alpha)*(L2 - L7 + L5*cos(gamma + zeta) + L3*cos(beta) + L4*cos(zeta))...
%             -alphaDot^2*sin(alpha)*(L2 - L7 + L5*cos(gamma + zeta) + L3*cos(beta) + L4*cos(zeta))...
%             -alphaDot*betaDot*L3*cos(alpha)*sin(beta)...
%             -alphaDot*gammaDot*L5*sin(zeta+gamma)*cos(alpha)...
%             -betaDotDot*L3*sin(alpha)*sin(beta)...
%             -betaDot^2*L3*sin(alpha)*cos(beta)...
%             -gammaDotDot*L5*sin(zeta+gamma)*sin(alpha)...
%             -gammaDot^2*L5*cos(zeta+gamma)*sin(alpha);   
%     
% z =         L1+L3*sin(-beta)-L4*sin(zeta)-L5*sin(zeta+gamma)-L6-L8;        
%         
% zDot =      -betaDot*L3*cos(beta)...
%             -L5*gammaDot*cos(zeta+gamma);
%     
% zDotDot =   -betaDotDot*L3*cos(beta)...
%             +betaDot^2*L3*sin(beta)...
%             -gammaDotDot*L5*cos(zeta+gamma)...
%             +gammaDot^2*L5*sin(zeta+gamma);
        
%The Jacobian        
J = [-sin(alpha)*(L2 - L7 + L5*cos(gamma + zeta) + L3*cos(beta) + L4*cos(zeta)) -L3*cos(alpha)*sin(beta) -L5*sin(gamma + zeta)*cos(alpha);
     cos(alpha)*(L2 - L7 + L5*cos(gamma + zeta) + L3*cos(beta) + L4*cos(zeta)) -L5*sin(gamma + zeta)*sin(alpha) -L3*sin(alpha)*sin(beta);
     0 -L3*cos(beta) -L5*cos(zeta+gamma)];
 
JDot = [-sin(alpha)*(L2 - L7 + L5*cos(gamma + zeta) + L3*cos(beta) + L4*cos(zeta)) -L3*sin(beta)*cos(alpha) -L5*sin(zeta+gamma)*cos(alpha);
        cos(alpha)*(L2 - L7 + L5*cos(gamma + zeta) + L3*cos(beta) + L4*cos(zeta)) -L3*sin(alpha)*sin(beta) -L5*cos(zeta+gamma)*sin(alpha);
        0 -L3*cos(beta) -L5*cos(zeta+gamma)];
    
clear xDot yDot zDot xDotDot yDotDot zDotDot
syms xDot yDot zDot xDotDot yDotDot zDotDot
uDot = [xDot yDot zDot]';
uDotDot = [xDotDot yDotDot zDotDot]';

qDot = inv(J)*uDot;

clear qDot
qDot = [alphaDot betaDot gammaDot]';

qDotDot = inv(J)*(uDotDot-JDot*qDot);

          



