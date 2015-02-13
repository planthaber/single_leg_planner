function kinematicConst = makeKinematicConst(l1,l2,l3,l4,l5,l6,l7,l8,zeta,r,B2PXOffset,B2PZOffset,leg1AngleOffset,leg2AngleOffset,leg3AngleOffset,leg4AngleOffset)

    kinematicConst = struct('l1',l1,'l2',l2,'l3',l3,'l4',l4,'l5',l5,...
                            'l6',l6,'l7',l7,'l8',l8,'zeta',zeta,'r',r,...
                            'B2PXOffset',B2PXOffset,'B2PZOffset',B2PZOffset,...
                            'legAngleOffset',[leg1AngleOffset leg2AngleOffset leg3AngleOffset leg4AngleOffset]);
end