%MAKETRANSITIONSTATE Makes a structure containing state information.
%
%Inputs:
%Outputs:
%
%makeState.m
%author:wreid
%date:20150218

function s = makeTransitionState(id,parentID,cost,alpha,beta,gamma,alphaDot,betaDot,gammaDot,phi,omega,transitionArray)

    s = struct('id',id,...
                'parentID',parentID,...
                'cost',cost,...
                'alpha',alpha,...
                'beta',beta,...
                'gamma',gamma,...
                'alphaDot',alphaDot,...
                'betaDot',betaDot,...
                'gammaDot',gammaDot,...
                'phi',phi,...
                'omega',omega);
end