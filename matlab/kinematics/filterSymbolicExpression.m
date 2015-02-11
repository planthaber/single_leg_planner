%filterSymbolicExpression.m

function fNew = filterSymbolicExpression(f,epsilon)

    %f =  0.99999999999999999999999999999998*L6*alphaDot*sin(alpha) - 0.00000000000000012246467991473514815405338584951*L7*alphaDot*cos(alpha) - 0.99999999999999999999999999999998*L7*betaDot*cos(alpha) - 0.99999999999999999999999999999998*L7*gammaDot*cos(alpha) - 0.99999999999999999999999999999998*L2*alphaDot*sin(alpha) - 2.0663894844482478025728370099142e-49*L1*alphaDot*cos(alpha) - 0.000000000000000061232339957367574077026692924753*L6*betaDot*sin(alpha) - 0.000000000000000061232339957367574077026692924753*L6*gammaDot*sin(alpha) - 0.000000000000000000000000000000014997597826618555547059690474015*L2*alphaDot*sin(phi) + 0.000000000000000000000000000000014997597826618555547059690474015*L6*alphaDot*sin(phi) + 0.00000000000000012246467991473532071737640294584*L6*betaDot*sin(phi) + 0.00000000000000012246467991473532071737640294584*L6*gammaDot*sin(phi) - 2.2520485398684307849262867288867e-81*L1*alphaDot*cos(alpha)*cos(phi)^2 - 1.197807293754551742069835984926e-48*L7*alphaDot*cos(alpha)*cos(phi)^2 - 0.000000000000000000000000000000011135782350883232794600096806446*L7*betaDot*cos(alpha)*cos(phi)^2 - 0.000000000000000000000000000000011135782350883232794600096806446*L7*gammaDot*cos(alpha)*cos(phi)^2 - 3.2e-116*L1*alphaDot*cos(alpha)*cos(zeta)^2 + 3.2e-116*L1*alphaDot*cos(alpha)*cos(zeta)^4 + 1.6e-49*L7*alphaDot*cos(alpha)*cos(zeta)^2 - 1.6e-49*L7*alphaDot*cos(alpha)*cos(zeta)^4 - 0.000000000000000000000000000000011135782350883232794600096806446*L2*alphaDot*cos(phi)^2*sin(alpha) + 0.000000000000000000000000000000011135782350883232794600096806446*L6*alphaDot*cos(phi)^2*sin(alpha) - 7.4663130476184764352706088466293e-49*L6*betaDot*cos(phi)^2*sin(alpha) - 7.4663130476184764352706088466293e-49*L6*gammaDot*cos(phi)^2*sin(alpha) - 0.000000000000000061232339957367574077026692924753*L3*alphaDot*cos(alpha)*sin(beta) - 0.99999999999999999999999999999998*L3*alphaDot*cos(beta)*sin(alpha) - 0.99999999999999999999999999999999*L3*betaDot*cos(alpha)*sin(beta) + 0.000000000000000061232339957367573999999999999999*L3*betaDot*cos(beta)*sin(alpha) - 0.000000000000000000000000000000014997597826618555547059690474015*L3*alphaDot*cos(beta)*sin(phi) - 0.00000000000000012246467991473532071737640294584*L3*betaDot*cos(beta)*sin(phi) - 0.000000000000000061232339957367574077026692924753*L4*alphaDot*cos(alpha)*sin(zeta) - 0.99999999999999999999999999999998*L4*alphaDot*sin(alpha)*cos(zeta) - 0.99999999999999999999999999999999*L4*betaDot*cos(alpha)*sin(zeta) + 0.000000000000000061232339957367573999999999999999*L4*betaDot*sin(alpha)*cos(zeta) - 0.99999999999999999999999999999999*L4*gammaDot*cos(alpha)*sin(zeta) + 0.000000000000000061232339957367574077026692924753*L4*gammaDot*sin(alpha)*cos(zeta) - 0.000000000000000000000000000000014997597826618555547059690474015*L4*alphaDot*cos(zeta)*sin(phi) - 0.00000000000000012246467991473532071737640294584*L4*betaDot*cos(zeta)*sin(phi) - 0.00000000000000012246467991473532071737640294584*L4*gammaDot*cos(zeta)*sin(phi) - 3.2e-116*L1*alphaDot*cos(alpha)*cos(beta)^2 + 3.2e-116*L1*alphaDot*cos(alpha)*cos(beta)^4 + 1.6e-49*L7*alphaDot*cos(alpha)*cos(beta)^2 - 1.6e-49*L7*alphaDot*cos(alpha)*cos(beta)^4 - 3.2e-116*L1*alphaDot*cos(alpha)*cos(gamma)^2 + 3.2e-116*L1*alphaDot*cos(alpha)*cos(gamma)^4 + 1.6e-49*L7*alphaDot*cos(alpha)*cos(gamma)^2 - 1.6e-49*L7*alphaDot*cos(alpha)*cos(gamma)^4 + 6.3999999999999999999999999999999e-116*L1*alphaDot*cos(alpha)*cos(beta)^2*cos(gamma)^2 - 6.3999999999999999999999999999999e-116*L1*alphaDot*cos(alpha)*cos(beta)^2*cos(gamma)^4 - 6.3999999999999999999999999999999e-116*L1*alphaDot*cos(alpha)*cos(beta)^4*cos(gamma)^2 + 6.3999999999999999999999999999999e-116*L1*alphaDot*cos(alpha)*cos(beta)^4*cos(gamma)^4 - 6.3999999999999999999999999999999e-49*L7*alphaDot*cos(alpha)*cos(beta)^2*cos(gamma)^2 + 6.3999999999999999999999999999999e-49*L7*alphaDot*cos(alpha)*cos(beta)^2*cos(gamma)^4 + 6.3999999999999999999999999999999e-49*L7*alphaDot*cos(alpha)*cos(beta)^4*cos(gamma)^2 - 6.3999999999999999999999999999999e-49*L7*alphaDot*cos(alpha)*cos(beta)^4*cos(gamma)^4 - 3.4157226943980627217798880858628e-148*L1*alphaDot*cos(alpha)*cos(beta)^2*cos(phi)^2 + 3.4157226943980627217798880858628e-148*L1*alphaDot*cos(alpha)*cos(beta)^4*cos(phi)^2 + 2.0771804919104607921203012734313e-81*L7*alphaDot*cos(alpha)*cos(beta)^2*cos(phi)^2 - 2.0771804919104607921203012734313e-81*L7*alphaDot*cos(alpha)*cos(beta)^4*cos(phi)^2 - 3.4157226943980627217798880858628e-148*L1*alphaDot*cos(alpha)*cos(gamma)^2*cos(phi)^2 + 3.4157226943980627217798880858628e-148*L1*alphaDot*cos(alpha)*cos(gamma)^4*cos(phi)^2 + 2.0771804919104607921203012734313e-81*L7*alphaDot*cos(alpha)*cos(gamma)^2*cos(phi)^2 - 2.0771804919104607921203012734313e-81*L7*alphaDot*cos(alpha)*cos(gamma)^4*cos(phi)^2 - 1.6e-65*L6*alphaDot*cos(beta)^2*cos(gamma)^2*sin(alpha) + 1.6e-65*L6*alphaDot*cos(beta)^2*cos(gamma)^4*sin(alpha) + 1.6e-65*L6*alphaDot*cos(beta)^4*cos(gamma)^2*sin(alpha) - 1.6e-65*L6*alphaDot*cos(beta)^4*cos(gamma)^4*sin(alpha) + 6.3999999999999999999999999999999e-116*L1*alphaDot*cos(alpha)*cos(beta)^2*cos(zeta)^2 - 6.3999999999999999999999999999999e-116*L1*alphaDot*cos(alpha)*cos(beta)^2*cos(zeta)^4 - 6.3999999999999999999999999999999e-116*L1*alphaDot*cos(alpha)*cos(beta)^4*cos(zeta)^2 + 6.3999999999999999999999999999999e-116*L1*alphaDot*cos(alpha)*cos(beta)^4*cos(zeta)^4 - 6.3999999999999999999999999999999e-49*L7*alphaDot*cos(alpha)*cos(beta)^2*cos(zeta)^2 + 6.3999999999999999999999999999999e-49*L7*alphaDot*cos(alpha)*cos(beta)^2*cos(zeta)^4 + 6.3999999999999999999999999999999e-49*L7*alphaDot*cos(alpha)*cos(beta)^4*cos(zeta)^2 - 6.3999999999999999999999999999999e-49*L7*alphaDot*cos(alpha)*cos(beta)^4*cos(zeta)^4 + 6.3999999999999999999999999999999e-116*L1*alphaDot*cos(alpha)*cos(gamma)^2*cos(zeta)^2 - 6.3999999999999999999999999999999e-116*L1*alphaDot*cos(alpha)*cos(gamma)^2*cos(zeta)^4 - 6.3999999999999999999999999999999e-116*L1*alphaDot*cos(alpha)*cos(gamma)^4*cos(zeta)^2 + 6.3999999999999999999999999999999e-116*L1*alphaDot*cos(alpha)*cos(gamma)^4*cos(zeta)^4 - 6.3999999999999999999999999999999e-49*L7*alphaDot*cos(alpha)*cos(gamma)^2*cos(zeta)^2 + 6.3999999999999999999999999999999e-49*L7*alphaDot*cos(alpha)*cos(gamma)^2*cos(zeta)^4 + 6.3999999999999999999999999999999e-49*L7*alphaDot*cos(alpha)*cos(gamma)^4*cos(zeta)^2 - 6.3999999999999999999999999999999e-49*L7*alphaDot*cos(alpha)*cos(gamma)^4*cos(zeta)^4 - 3.4157226943980627217798880858628e-148*L1*alphaDot*cos(alpha)*cos(phi)^2*cos(zeta)^2 + 3.4157226943980627217798880858628e-148*L1*alphaDot*cos(alpha)*cos(phi)^2*cos(zeta)^4 + 2.0771804919104607921203012734313e-81*L7*alphaDot*cos(alpha)*cos(phi)^2*cos(zeta)^2 - 2.0771804919104607921203012734313e-81*L7*alphaDot*cos(alpha)*cos(phi)^2*cos(zeta)^4 - 1.6e-65*L6*alphaDot*cos(beta)^2*sin(alpha)*cos(zeta)^2 + 1.6e-65*L6*alphaDot*cos(beta)^2*sin(alpha)*cos(zeta)^4 + 1.6e-65*L6*alphaDot*cos(beta)^4*sin(alpha)*cos(zeta)^2 - 1.6e-65*L6*alphaDot*cos(beta)^4*sin(alpha)*cos(zeta)^4 - 1.6e-65*L6*alphaDot*cos(gamma)^2*sin(alpha)*cos(zeta)^2 + 1.6e-65*L6*alphaDot*cos(gamma)^2*sin(alpha)*cos(zeta)^4 + 1.6e-65*L6*alphaDot*cos(gamma)^4*sin(alpha)*cos(zeta)^2 - 1.6e-65*L6*alphaDot*cos(gamma)^4*sin(alpha)*cos(zeta)^4 - 7.3863828942285886246071446099974e-33*L2*alphaDot*cos(alpha)*cos(phi)*sin(phi) + 7.3863828942285886246071446099974e-33*L6*alphaDot*cos(alpha)*cos(phi)*sin(phi) - 0.000000000000000061232339957367574077026692924753*L5*alphaDot*cos(alpha)*cos(gamma)*sin(zeta) - 0.000000000000000061232339957367574077026692924753*L5*alphaDot*cos(alpha)*sin(gamma)*cos(zeta) - 0.99999999999999999999999999999998*L5*alphaDot*cos(gamma)*sin(alpha)*cos(zeta) - 7.3863828942285886246071446099974e-49*L6*betaDot*cos(alpha)*cos(phi)*sin(phi) - 0.99999999999999999999999999999999*L5*betaDot*cos(alpha)*cos(gamma)*sin(zeta) - 0.99999999999999999999999999999999*L5*betaDot*cos(alpha)*sin(gamma)*cos(zeta) + 0.000000000000000061232339957367573999999999999999*L5*betaDot*cos(gamma)*sin(alpha)*cos(zeta) - 7.3863828942285886246071446099974e-49*L6*gammaDot*cos(alpha)*cos(phi)*sin(phi) - 0.99999999999999999999999999999999*L5*gammaDot*cos(alpha)*cos(gamma)*sin(zeta) - 0.99999999999999999999999999999999*L5*gammaDot*cos(alpha)*sin(gamma)*cos(zeta) + 0.000000000000000061232339957367574077026692924753*L5*gammaDot*cos(gamma)*sin(alpha)*cos(zeta) - 0.000000000000000000000000000000014997597826618555547059690474015*L5*alphaDot*cos(gamma)*cos(zeta)*sin(phi) + 2.2159148682685765873821433829992e-81*L1*alphaDot*cos(phi)*sin(alpha)*sin(phi) + 1.4772765788457177249214289219995e-48*L7*alphaDot*cos(phi)*sin(alpha)*sin(phi) - 0.00000000000000012246467991473532071737640294584*L5*betaDot*cos(gamma)*cos(zeta)*sin(phi) + 0.000000000000000000000000000000014772765788457177249214289219995*L7*betaDot*cos(phi)*sin(alpha)*sin(phi) - 0.00000000000000012246467991473532071737640294584*L5*gammaDot*cos(gamma)*cos(zeta)*sin(phi) + 0.000000000000000000000000000000014772765788457177249214289219995*L7*gammaDot*cos(phi)*sin(alpha)*sin(phi) + 0.99999999999999999999999999999998*L5*alphaDot*sin(alpha)*sin(gamma)*sin(zeta) - 0.000000000000000061232339957367573999999999999999*L5*betaDot*sin(alpha)*sin(gamma)*sin(zeta) - 0.000000000000000061232339957367574077026692924753*L5*gammaDot*sin(alpha)*sin(gamma)*sin(zeta) + 0.000000000000000000000000000000014997597826618555547059690474015*L5*alphaDot*sin(gamma)*sin(phi)*sin(zeta) + 0.00000000000000012246467991473532071737640294584*L5*betaDot*sin(gamma)*sin(phi)*sin(zeta) + 0.00000000000000012246467991473532071737640294584*L5*gammaDot*sin(gamma)*sin(phi)*sin(zeta) - 6.7276747581956175728098943856296e-49*L3*alphaDot*cos(alpha)*cos(phi)^2*sin(beta) - 0.000000000000000000000000000000011135782350883232794600096806446*L3*alphaDot*cos(beta)*cos(phi)^2*sin(alpha) - 0.000000000000000000000000000000011135782350883232794600096806446*L3*betaDot*cos(alpha)*cos(phi)^2*sin(beta) + 7.4663130476184764323825704406296e-49*L3*betaDot*cos(beta)*cos(phi)^2*sin(alpha) - 6.7276747581956175728098943856296e-49*L4*alphaDot*cos(alpha)*cos(phi)^2*sin(zeta) - 0.000000000000000000000000000000011135782350883232794600096806446*L4*alphaDot*cos(phi)^2*sin(alpha)*cos(zeta) - 0.000000000000000000000000000000011135782350883232794600096806446*L4*betaDot*cos(alpha)*cos(phi)^2*sin(zeta) + 7.4663130476184764323825704406296e-49*L4*betaDot*cos(phi)^2*sin(alpha)*cos(zeta) - 0.000000000000000000000000000000011135782350883232794600096806446*L4*gammaDot*cos(alpha)*cos(phi)^2*sin(zeta) + 7.4663130476184764352706088466293e-49*L4*gammaDot*cos(phi)^2*sin(alpha)*cos(zeta) - 7.3863828942285886246071446099974e-33*L3*alphaDot*cos(alpha)*cos(beta)*cos(phi)*sin(phi) + 7.3863828942285886246071446099974e-49*L3*betaDot*cos(alpha)*cos(beta)*cos(phi)*sin(phi) + 6.8314453887961254435597761717257e-148*L1*alphaDot*cos(alpha)*cos(beta)^2*cos(gamma)^2*cos(phi)^2 - 6.8314453887961254435597761717257e-148*L1*alphaDot*cos(alpha)*cos(beta)^2*cos(gamma)^4*cos(phi)^2 - 6.8314453887961254435597761717257e-148*L1*alphaDot*cos(alpha)*cos(beta)^4*cos(gamma)^2*cos(phi)^2 + 6.8314453887961254435597761717257e-148*L1*alphaDot*cos(alpha)*cos(beta)^4*cos(gamma)^4*cos(phi)^2 - 6.8314453887961254435597761717257e-81*L7*alphaDot*cos(alpha)*cos(beta)^2*cos(gamma)^2*cos(phi)^2 + 6.8314453887961254435597761717257e-81*L7*alphaDot*cos(alpha)*cos(beta)^2*cos(gamma)^4*cos(phi)^2 + 6.8314453887961254435597761717257e-81*L7*alphaDot*cos(alpha)*cos(beta)^4*cos(gamma)^2*cos(phi)^2 - 6.8314453887961254435597761717257e-81*L7*alphaDot*cos(alpha)*cos(beta)^4*cos(gamma)^4*cos(phi)^2 - 1.28e-115*L1*alphaDot*cos(alpha)*cos(beta)^2*cos(gamma)^2*cos(zeta)^2 + 1.28e-115*L1*alphaDot*cos(alpha)*cos(beta)^2*cos(gamma)^2*cos(zeta)^4 + 1.28e-115*L1*alphaDot*cos(alpha)*cos(beta)^2*cos(gamma)^4*cos(zeta)^2 + 1.28e-115*L1*alphaDot*cos(alpha)*cos(beta)^4*cos(gamma)^2*cos(zeta)^2 - 1.28e-115*L1*alphaDot*cos(alpha)*cos(beta)^2*cos(gamma)^4*cos(zeta)^4 - 1.28e-115*L1*alphaDot*cos(alpha)*cos(beta)^4*cos(gamma)^2*cos(zeta)^4 - 1.28e-115*L1*alphaDot*cos(alpha)*cos(beta)^4*cos(gamma)^4*cos(zeta)^2 + 1.28e-115*L1*alphaDot*cos(alpha)*cos(beta)^4*cos(gamma)^4*cos(zeta)^4 + 1.92e-48*L7*alphaDot*cos(alpha)*cos(beta)^2*cos(gamma)^2*cos(zeta)^2 - 1.92e-48*L7*alphaDot*cos(alpha)*cos(beta)^2*cos(gamma)^2*cos(zeta)^4 - 1.92e-48*L7*alphaDot*cos(alpha)*cos(beta)^2*cos(gamma)^4*cos(zeta)^2 - 1.92e-48*L7*alphaDot*cos(alpha)*cos(beta)^4*cos(gamma)^2*cos(zeta)^2 + 1.92e-48*L7*alphaDot*cos(alpha)*cos(beta)^2*cos(gamma)^4*cos(zeta)^4 + 1.92e-48*L7*alphaDot*cos(alpha)*cos(beta)^4*cos(gamma)^2*cos(zeta)^4 + 1.92e-48*L7*alphaDot*cos(alpha)*cos(beta)^4*cos(gamma)^4*cos(zeta)^2 - 1.92e-48*L7*alphaDot*cos(alpha)*cos(beta)^4*cos(gamma)^4*cos(zeta)^4 - 2.0771804919104607921203012734313e-97*L6*alphaDot*cos(beta)^2*cos(gamma)^2*cos(phi)^2*sin(alpha) + 2.0771804919104607921203012734313e-97*L6*alphaDot*cos(beta)^2*cos(gamma)^4*cos(phi)^2*sin(alpha) + 2.0771804919104607921203012734313e-97*L6*alphaDot*cos(beta)^4*cos(gamma)^2*cos(phi)^2*sin(alpha) - 2.0771804919104607921203012734313e-97*L6*alphaDot*cos(beta)^4*cos(gamma)^4*cos(phi)^2*sin(alpha) - 7.3863828942285886246071446099974e-33*L4*alphaDot*cos(alpha)*cos(phi)*cos(zeta)*sin(phi) + 6.8314453887961254435597761717257e-148*L1*alphaDot*cos(alpha)*cos(beta)^2*cos(phi)^2*cos(zeta)^2 - 6.8314453887961254435597761717257e-148*L1*alphaDot*cos(alpha)*cos(beta)^2*cos(phi)^2*cos(zeta)^4 - 6.8314453887961254435597761717257e-148*L1*alphaDot*cos(alpha)*cos(beta)^4*cos(phi)^2*cos(zeta)^2 + 6.8314453887961254435597761717257e-148*L1*alphaDot*cos(alpha)*cos(beta)^4*cos(phi)^2*cos(zeta)^4 - 6.8314453887961254435597761717257e-81*L7*alphaDot*cos(alpha)*cos(beta)^2*cos(phi)^2*cos(zeta)^2 + 6.8314453887961254435597761717257e-81*L7*alphaDot*cos(alpha)*cos(beta)^2*cos(phi)^2*cos(zeta)^4 + 6.8314453887961254435597761717257e-81*L7*alphaDot*cos(alpha)*cos(beta)^4*cos(phi)^2*cos(zeta)^2 - 6.8314453887961254435597761717257e-81*L7*alphaDot*cos(alpha)*cos(beta)^4*cos(phi)^2*cos(zeta)^4 + 7.3863828942285886246071446099974e-49*L4*betaDot*cos(alpha)*cos(phi)*cos(zeta)*sin(phi) + 6.8314453887961254435597761717257e-148*L1*alphaDot*cos(alpha)*cos(gamma)^2*cos(phi)^2*cos(zeta)^2 - 6.8314453887961254435597761717257e-148*L1*alphaDot*cos(alpha)*cos(gamma)^2*cos(phi)^2*cos(zeta)^4 - 6.8314453887961254435597761717257e-148*L1*alphaDot*cos(alpha)*cos(gamma)^4*cos(phi)^2*cos(zeta)^2 + 6.8314453887961254435597761717257e-148*L1*alphaDot*cos(alpha)*cos(gamma)^4*cos(phi)^2*cos(zeta)^4 - 6.8314453887961254435597761717257e-81*L7*alphaDot*cos(alpha)*cos(gamma)^2*cos(phi)^2*cos(zeta)^2 + 6.8314453887961254435597761717257e-81*L7*alphaDot*cos(alpha)*cos(gamma)^2*cos(phi)^2*cos(zeta)^4 + 6.8314453887961254435597761717257e-81*L7*alphaDot*cos(alpha)*cos(gamma)^4*cos(phi)^2*cos(zeta)^2 - 6.8314453887961254435597761717257e-81*L7*alphaDot*cos(alpha)*cos(gamma)^4*cos(phi)^2*cos(zeta)^4 + 7.3863828942285886246071446099974e-49*L4*gammaDot*cos(alpha)*cos(phi)*cos(zeta)*sin(phi) + 9.5999999999999999999999999999999e-65*L6*alphaDot*cos(beta)^2*cos(gamma)^2*sin(alpha)*cos(zeta)^2 - 9.5999999999999999999999999999999e-65*L6*alphaDot*cos(beta)^2*cos(gamma)^2*sin(alpha)*cos(zeta)^4 - 9.5999999999999999999999999999999e-65*L6*alphaDot*cos(beta)^2*cos(gamma)^4*sin(alpha)*cos(zeta)^2 - 9.5999999999999999999999999999999e-65*L6*alphaDot*cos(beta)^4*cos(gamma)^2*sin(alpha)*cos(zeta)^2 + 9.5999999999999999999999999999999e-65*L6*alphaDot*cos(beta)^2*cos(gamma)^4*sin(alpha)*cos(zeta)^4 + 9.5999999999999999999999999999999e-65*L6*alphaDot*cos(beta)^4*cos(gamma)^2*sin(alpha)*cos(zeta)^4 + 9.5999999999999999999999999999999e-65*L6*alphaDot*cos(beta)^4*cos(gamma)^4*sin(alpha)*cos(zeta)^2 - 9.5999999999999999999999999999998e-65*L6*alphaDot*cos(beta)^4*cos(gamma)^4*sin(alpha)*cos(zeta)^4 + 6.6477446048057297621464301489976e-49*L3*alphaDot*cos(phi)*sin(alpha)*sin(beta)*sin(phi) + 7.3863828942285886246071446099974e-33*L3*betaDot*cos(phi)*sin(alpha)*sin(beta)*sin(phi) - 2.0771804919104607921203012734313e-97*L6*alphaDot*cos(beta)^2*cos(phi)^2*sin(alpha)*cos(zeta)^2 + 2.0771804919104607921203012734313e-97*L6*alphaDot*cos(beta)^2*cos(phi)^2*sin(alpha)*cos(zeta)^4 + 2.0771804919104607921203012734313e-97*L6*alphaDot*cos(beta)^4*cos(phi)^2*sin(alpha)*cos(zeta)^2 - 2.0771804919104607921203012734313e-97*L6*alphaDot*cos(beta)^4*cos(phi)^2*sin(alpha)*cos(zeta)^4 - 2.0771804919104607921203012734313e-97*L6*alphaDot*cos(gamma)^2*cos(phi)^2*sin(alpha)*cos(zeta)^2 + 2.0771804919104607921203012734313e-97*L6*alphaDot*cos(gamma)^2*cos(phi)^2*sin(alpha)*cos(zeta)^4 + 2.0771804919104607921203012734313e-97*L6*alphaDot*cos(gamma)^4*cos(phi)^2*sin(alpha)*cos(zeta)^2 - 2.0771804919104607921203012734313e-97*L6*alphaDot*cos(gamma)^4*cos(phi)^2*sin(alpha)*cos(zeta)^4 + 6.6477446048057297621464301489976e-49*L4*alphaDot*cos(phi)*sin(alpha)*sin(phi)*sin(zeta) + 7.3863828942285886246071446099974e-33*L4*betaDot*cos(phi)*sin(alpha)*sin(phi)*sin(zeta) + 7.3863828942285886246071446099974e-33*L4*gammaDot*cos(phi)*sin(alpha)*sin(phi)*sin(zeta) - 6.7276747581956175728098943856296e-49*L5*alphaDot*cos(alpha)*cos(gamma)*cos(phi)^2*sin(zeta) - 6.7276747581956175728098943856296e-49*L5*alphaDot*cos(alpha)*cos(phi)^2*sin(gamma)*cos(zeta) - 0.000000000000000000000000000000011135782350883232794600096806446*L5*alphaDot*cos(gamma)*cos(phi)^2*sin(alpha)*cos(zeta) - 0.000000000000000000000000000000011135782350883232794600096806446*L5*betaDot*cos(alpha)*cos(gamma)*cos(phi)^2*sin(zeta) - 0.000000000000000000000000000000011135782350883232794600096806446*L5*betaDot*cos(alpha)*cos(phi)^2*sin(gamma)*cos(zeta) + 7.4663130476184764323825704406296e-49*L5*betaDot*cos(gamma)*cos(phi)^2*sin(alpha)*cos(zeta) + 3.6931914471142943123035723049987e-148*L1*alphaDot*cos(beta)^2*cos(phi)*sin(alpha)*sin(phi) - 3.6931914471142943123035723049987e-148*L1*alphaDot*cos(beta)^4*cos(phi)*sin(alpha)*sin(phi) - 2.2159148682685765873821433829992e-81*L7*alphaDot*cos(beta)^2*cos(phi)*sin(alpha)*sin(phi) + 2.2159148682685765873821433829992e-81*L7*alphaDot*cos(beta)^4*cos(phi)*sin(alpha)*sin(phi) - 0.000000000000000000000000000000011135782350883232794600096806446*L5*gammaDot*cos(alpha)*cos(gamma)*cos(phi)^2*sin(zeta) - 0.000000000000000000000000000000011135782350883232794600096806446*L5*gammaDot*cos(alpha)*cos(phi)^2*sin(gamma)*cos(zeta) + 7.4663130476184764352706088466293e-49*L5*gammaDot*cos(gamma)*cos(phi)^2*sin(alpha)*cos(zeta) + 3.6931914471142943123035723049987e-148*L1*alphaDot*cos(gamma)^2*cos(phi)*sin(alpha)*sin(phi) - 3.6931914471142943123035723049987e-148*L1*alphaDot*cos(gamma)^4*cos(phi)*sin(alpha)*sin(phi) - 2.2159148682685765873821433829992e-81*L7*alphaDot*cos(gamma)^2*cos(phi)*sin(alpha)*sin(phi) + 2.2159148682685765873821433829992e-81*L7*alphaDot*cos(gamma)^4*cos(phi)*sin(alpha)*sin(phi) + 3.6931914471142943123035723049987e-148*L1*alphaDot*cos(phi)*sin(alpha)*cos(zeta)^2*sin(phi) - 3.6931914471142943123035723049987e-148*L1*alphaDot*cos(phi)*sin(alpha)*cos(zeta)^4*sin(phi) - 2.2159148682685765873821433829992e-81*L7*alphaDot*cos(phi)*sin(alpha)*cos(zeta)^2*sin(phi) + 2.2159148682685765873821433829992e-81*L7*alphaDot*cos(phi)*sin(alpha)*cos(zeta)^4*sin(phi) + 0.000000000000000000000000000000011135782350883232794600096806446*L5*alphaDot*cos(phi)^2*sin(alpha)*sin(gamma)*sin(zeta) - 7.4663130476184764323825704406296e-49*L5*betaDot*cos(phi)^2*sin(alpha)*sin(gamma)*sin(zeta) - 7.4663130476184764352706088466293e-49*L5*gammaDot*cos(phi)^2*sin(alpha)*sin(gamma)*sin(zeta) - 6.6477446048057297621464301489976e-148*L1*alphaDot*cos(gamma)^2*cos(phi)*sin(alpha)*cos(zeta)^2*sin(phi) + 6.6477446048057297621464301489976e-148*L1*alphaDot*cos(gamma)^2*cos(phi)*sin(alpha)*cos(zeta)^4*sin(phi) + 6.6477446048057297621464301489976e-148*L1*alphaDot*cos(gamma)^4*cos(phi)*sin(alpha)*cos(zeta)^2*sin(phi) - 6.6477446048057297621464301489976e-148*L1*alphaDot*cos(gamma)^4*cos(phi)*sin(alpha)*cos(zeta)^4*sin(phi) + 6.6477446048057297621464301489976e-81*L7*alphaDot*cos(gamma)^2*cos(phi)*sin(alpha)*cos(zeta)^2*sin(phi) - 6.6477446048057297621464301489976e-81*L7*alphaDot*cos(gamma)^2*cos(phi)*sin(alpha)*cos(zeta)^4*sin(phi) - 6.6477446048057297621464301489976e-81*L7*alphaDot*cos(gamma)^4*cos(phi)*sin(alpha)*cos(zeta)^2*sin(phi) + 6.6477446048057297621464301489976e-81*L7*alphaDot*cos(gamma)^4*cos(phi)*sin(alpha)*cos(zeta)^4*sin(phi) - 7.3863828942285886246071446099974e-33*L5*alphaDot*cos(alpha)*cos(gamma)*cos(phi)*cos(zeta)*sin(phi) + 7.3863828942285886246071446099974e-49*L5*betaDot*cos(alpha)*cos(gamma)*cos(phi)*cos(zeta)*sin(phi) + 7.3863828942285886246071446099974e-49*L5*gammaDot*cos(alpha)*cos(gamma)*cos(phi)*cos(zeta)*sin(phi) + 7.3863828942285886246071446099974e-33*L5*alphaDot*cos(alpha)*cos(phi)*sin(gamma)*sin(phi)*sin(zeta) + 6.6477446048057297621464301489976e-49*L5*alphaDot*cos(gamma)*cos(phi)*sin(alpha)*sin(phi)*sin(zeta) + 6.6477446048057297621464301489976e-49*L5*alphaDot*cos(phi)*sin(alpha)*sin(gamma)*cos(zeta)*sin(phi) - 7.3863828942285886246071446099974e-49*L5*betaDot*cos(alpha)*cos(phi)*sin(gamma)*sin(phi)*sin(zeta) + 7.3863828942285886246071446099974e-33*L5*betaDot*cos(gamma)*cos(phi)*sin(alpha)*sin(phi)*sin(zeta) + 7.3863828942285886246071446099974e-33*L5*betaDot*cos(phi)*sin(alpha)*sin(gamma)*cos(zeta)*sin(phi) - 7.3863828942285886246071446099974e-49*L5*gammaDot*cos(alpha)*cos(phi)*sin(gamma)*sin(phi)*sin(zeta) + 7.3863828942285886246071446099974e-33*L5*gammaDot*cos(gamma)*cos(phi)*sin(alpha)*sin(phi)*sin(zeta) + 7.3863828942285886246071446099974e-33*L5*gammaDot*cos(phi)*sin(alpha)*sin(gamma)*cos(zeta)*sin(phi) - 7.3863828942285886246071446099974e-148*L1*alphaDot*cos(alpha)*cos(beta)^2*cos(gamma)^2*cos(phi)^2*cos(zeta)^2 + 1.1818212630765741799371431375996e-147*L1*alphaDot*cos(alpha)*cos(beta)^2*cos(gamma)^2*cos(phi)^2*cos(zeta)^4 + 1.1818212630765741799371431375996e-147*L1*alphaDot*cos(alpha)*cos(beta)^2*cos(gamma)^4*cos(phi)^2*cos(zeta)^2 + 1.1818212630765741799371431375996e-147*L1*alphaDot*cos(alpha)*cos(beta)^4*cos(gamma)^2*cos(phi)^2*cos(zeta)^2 - 1.1818212630765741799371431375996e-147*L1*alphaDot*cos(alpha)*cos(beta)^2*cos(gamma)^4*cos(phi)^2*cos(zeta)^4 - 1.1818212630765741799371431375996e-147*L1*alphaDot*cos(alpha)*cos(beta)^4*cos(gamma)^2*cos(phi)^2*cos(zeta)^4 - 1.1818212630765741799371431375996e-147*L1*alphaDot*cos(alpha)*cos(beta)^4*cos(gamma)^4*cos(phi)^2*cos(zeta)^2 + 7.3863828942285886246071446099974e-148*L1*alphaDot*cos(alpha)*cos(beta)^4*cos(gamma)^4*cos(phi)^2*cos(zeta)^4 + 1.4772765788457177249214289219995e-80*L7*alphaDot*cos(alpha)*cos(beta)^2*cos(gamma)^2*cos(phi)^2*cos(zeta)^2 - 2.2159148682685765873821433829992e-80*L7*alphaDot*cos(alpha)*cos(beta)^2*cos(gamma)^2*cos(phi)^2*cos(zeta)^4 - 2.2159148682685765873821433829992e-80*L7*alphaDot*cos(alpha)*cos(beta)^2*cos(gamma)^4*cos(phi)^2*cos(zeta)^2 - 2.2159148682685765873821433829992e-80*L7*alphaDot*cos(alpha)*cos(beta)^4*cos(gamma)^2*cos(phi)^2*cos(zeta)^2 + 2.1420510393262907011360719368992e-80*L7*alphaDot*cos(alpha)*cos(beta)^2*cos(gamma)^4*cos(phi)^2*cos(zeta)^4 + 2.1420510393262907011360719368992e-80*L7*alphaDot*cos(alpha)*cos(beta)^4*cos(gamma)^2*cos(phi)^2*cos(zeta)^4 + 2.1420510393262907011360719368992e-80*L7*alphaDot*cos(alpha)*cos(beta)^4*cos(gamma)^4*cos(phi)^2*cos(zeta)^2 - 2.2159148682685765873821433829992e-80*L7*alphaDot*cos(alpha)*cos(beta)^4*cos(gamma)^4*cos(phi)^2*cos(zeta)^4 + 7.3863828942285886246071446099974e-97*L6*alphaDot*cos(beta)^2*cos(gamma)^2*cos(phi)^2*sin(alpha)*cos(zeta)^2 - 1.0985806372617047027800378718588e-96*L6*alphaDot*cos(beta)^2*cos(gamma)^2*cos(phi)^2*sin(alpha)*cos(zeta)^4 - 1.0985806372617047027800378718588e-96*L6*alphaDot*cos(beta)^2*cos(gamma)^4*cos(phi)^2*sin(alpha)*cos(zeta)^2 - 1.0985806372617047027800378718588e-96*L6*alphaDot*cos(beta)^4*cos(gamma)^2*cos(phi)^2*sin(alpha)*cos(zeta)^2 + 1.1079574341342882936910716914996e-96*L6*alphaDot*cos(beta)^2*cos(gamma)^4*cos(phi)^2*sin(alpha)*cos(zeta)^4 + 1.1079574341342882936910716914996e-96*L6*alphaDot*cos(beta)^4*cos(gamma)^2*cos(phi)^2*sin(alpha)*cos(zeta)^4 + 1.1079574341342882936910716914996e-96*L6*alphaDot*cos(beta)^4*cos(gamma)^4*cos(phi)^2*sin(alpha)*cos(zeta)^2 - 1.4772765788457177249214289219995e-96*L6*alphaDot*cos(beta)^4*cos(gamma)^4*cos(phi)^2*sin(alpha)*cos(zeta)^4 - 2.2159148682685765873821433829992e-97*L6*alphaDot*cos(alpha)*cos(beta)^2*cos(gamma)^2*cos(phi)*sin(phi) + 2.2159148682685765873821433829992e-97*L6*alphaDot*cos(alpha)*cos(beta)^2*cos(gamma)^4*cos(phi)*sin(phi) + 2.2159148682685765873821433829992e-97*L6*alphaDot*cos(alpha)*cos(beta)^4*cos(gamma)^2*cos(phi)*sin(phi) - 2.2159148682685765873821433829992e-97*L6*alphaDot*cos(alpha)*cos(beta)^4*cos(gamma)^4*cos(phi)*sin(phi) - 6.6477446048057297621464301489976e-148*L1*alphaDot*cos(beta)^2*cos(gamma)^2*cos(phi)*sin(alpha)*sin(phi) + 6.6477446048057297621464301489976e-148*L1*alphaDot*cos(beta)^2*cos(gamma)^4*cos(phi)*sin(alpha)*sin(phi) + 6.6477446048057297621464301489976e-148*L1*alphaDot*cos(beta)^4*cos(gamma)^2*cos(phi)*sin(alpha)*sin(phi) - 6.6477446048057297621464301489976e-148*L1*alphaDot*cos(beta)^4*cos(gamma)^4*cos(phi)*sin(alpha)*sin(phi) + 6.6477446048057297621464301489976e-81*L7*alphaDot*cos(beta)^2*cos(gamma)^2*cos(phi)*sin(alpha)*sin(phi) - 6.6477446048057297621464301489976e-81*L7*alphaDot*cos(beta)^2*cos(gamma)^4*cos(phi)*sin(alpha)*sin(phi) - 6.6477446048057297621464301489976e-81*L7*alphaDot*cos(beta)^4*cos(gamma)^2*cos(phi)*sin(alpha)*sin(phi) + 6.6477446048057297621464301489976e-81*L7*alphaDot*cos(beta)^4*cos(gamma)^4*cos(phi)*sin(alpha)*sin(phi) - 2.2159148682685765873821433829992e-97*L6*alphaDot*cos(alpha)*cos(beta)^2*cos(phi)*cos(zeta)^2*sin(phi) + 2.2159148682685765873821433829992e-97*L6*alphaDot*cos(alpha)*cos(beta)^2*cos(phi)*cos(zeta)^4*sin(phi) + 2.2159148682685765873821433829992e-97*L6*alphaDot*cos(alpha)*cos(beta)^4*cos(phi)*cos(zeta)^2*sin(phi) - 2.2159148682685765873821433829992e-97*L6*alphaDot*cos(alpha)*cos(beta)^4*cos(phi)*cos(zeta)^4*sin(phi) - 2.2159148682685765873821433829992e-97*L6*alphaDot*cos(alpha)*cos(gamma)^2*cos(phi)*cos(zeta)^2*sin(phi) + 2.2159148682685765873821433829992e-97*L6*alphaDot*cos(alpha)*cos(gamma)^2*cos(phi)*cos(zeta)^4*sin(phi) + 2.2159148682685765873821433829992e-97*L6*alphaDot*cos(alpha)*cos(gamma)^4*cos(phi)*cos(zeta)^2*sin(phi) - 2.2159148682685765873821433829992e-97*L6*alphaDot*cos(alpha)*cos(gamma)^4*cos(phi)*cos(zeta)^4*sin(phi) - 6.6477446048057297621464301489976e-148*L1*alphaDot*cos(beta)^2*cos(phi)*sin(alpha)*cos(zeta)^2*sin(phi) + 6.6477446048057297621464301489976e-148*L1*alphaDot*cos(beta)^2*cos(phi)*sin(alpha)*cos(zeta)^4*sin(phi) + 6.6477446048057297621464301489976e-148*L1*alphaDot*cos(beta)^4*cos(phi)*sin(alpha)*cos(zeta)^2*sin(phi) - 6.6477446048057297621464301489976e-148*L1*alphaDot*cos(beta)^4*cos(phi)*sin(alpha)*cos(zeta)^4*sin(phi) + 6.6477446048057297621464301489976e-81*L7*alphaDot*cos(beta)^2*cos(phi)*sin(alpha)*cos(zeta)^2*sin(phi) - 6.6477446048057297621464301489976e-81*L7*alphaDot*cos(beta)^2*cos(phi)*sin(alpha)*cos(zeta)^4*sin(phi) - 6.6477446048057297621464301489976e-81*L7*alphaDot*cos(beta)^4*cos(phi)*sin(alpha)*cos(zeta)^2*sin(phi) + 6.6477446048057297621464301489976e-81*L7*alphaDot*cos(beta)^4*cos(phi)*sin(alpha)*cos(zeta)^4*sin(phi) - 9.5999999999999999999999999999999e-65*L6*alphaDot*cos(alpha)*cos(beta)^2*cos(gamma)^2*cos(phi)*cos(zeta)^2*sin(phi) - 1.4772765788457177249214289219995e-96*L6*alphaDot*cos(alpha)*cos(beta)^2*cos(gamma)^2*cos(phi)*cos(zeta)^4*sin(phi) - 1.4772765788457177249214289219995e-96*L6*alphaDot*cos(alpha)*cos(beta)^2*cos(gamma)^4*cos(phi)*cos(zeta)^2*sin(phi) - 1.4772765788457177249214289219995e-96*L6*alphaDot*cos(alpha)*cos(beta)^4*cos(gamma)^2*cos(phi)*cos(zeta)^2*sin(phi) + 8.8636594730743063495285735319969e-97*L6*alphaDot*cos(alpha)*cos(beta)^2*cos(gamma)^4*cos(phi)*cos(zeta)^4*sin(phi) + 8.8636594730743063495285735319969e-97*L6*alphaDot*cos(alpha)*cos(beta)^4*cos(gamma)^2*cos(phi)*cos(zeta)^4*sin(phi) + 8.8636594730743063495285735319969e-97*L6*alphaDot*cos(alpha)*cos(beta)^4*cos(gamma)^4*cos(phi)*cos(zeta)^2*sin(phi) - 1.4772765788457177249214289219995e-96*L6*alphaDot*cos(alpha)*cos(beta)^4*cos(gamma)^4*cos(phi)*cos(zeta)^4*sin(phi) - 1.28e-115*L1*alphaDot*cos(beta)^2*cos(gamma)^2*cos(phi)*sin(alpha)*cos(zeta)^2*sin(phi) - 9.6022977624971652119892879929966e-148*L1*alphaDot*cos(beta)^2*cos(gamma)^2*cos(phi)*sin(alpha)*cos(zeta)^4*sin(phi) - 9.6022977624971652119892879929966e-148*L1*alphaDot*cos(beta)^2*cos(gamma)^4*cos(phi)*sin(alpha)*cos(zeta)^2*sin(phi) - 9.6022977624971652119892879929966e-148*L1*alphaDot*cos(beta)^4*cos(gamma)^2*cos(phi)*sin(alpha)*cos(zeta)^2*sin(phi) + 1.1818212630765741799371431375996e-147*L1*alphaDot*cos(beta)^2*cos(gamma)^4*cos(phi)*sin(alpha)*cos(zeta)^4*sin(phi) + 1.1818212630765741799371431375996e-147*L1*alphaDot*cos(beta)^4*cos(gamma)^2*cos(phi)*sin(alpha)*cos(zeta)^4*sin(phi) + 1.1818212630765741799371431375996e-147*L1*alphaDot*cos(beta)^4*cos(gamma)^4*cos(phi)*sin(alpha)*cos(zeta)^2*sin(phi) - 7.3863828942285886246071446099974e-148*L1*alphaDot*cos(beta)^4*cos(gamma)^4*cos(phi)*sin(alpha)*cos(zeta)^4*sin(phi) + 4.427234211542822750785710780005e-49*L7*alphaDot*cos(beta)^2*cos(gamma)^2*cos(phi)*sin(alpha)*cos(zeta)^2*sin(phi) + 2.3636425261531483598742862751992e-80*L7*alphaDot*cos(beta)^2*cos(gamma)^2*cos(phi)*sin(alpha)*cos(zeta)^4*sin(phi) + 2.3636425261531483598742862751992e-80*L7*alphaDot*cos(beta)^2*cos(gamma)^4*cos(phi)*sin(alpha)*cos(zeta)^2*sin(phi) + 2.3636425261531483598742862751992e-80*L7*alphaDot*cos(beta)^4*cos(gamma)^2*cos(phi)*sin(alpha)*cos(zeta)^2*sin(phi) - 1.9204595524994330423978575985993e-80*L7*alphaDot*cos(beta)^2*cos(gamma)^4*cos(phi)*sin(alpha)*cos(zeta)^4*sin(phi) - 1.9204595524994330423978575985993e-80*L7*alphaDot*cos(beta)^4*cos(gamma)^2*cos(phi)*sin(alpha)*cos(zeta)^4*sin(phi) - 1.9204595524994330423978575985993e-80*L7*alphaDot*cos(beta)^4*cos(gamma)^4*cos(phi)*sin(alpha)*cos(zeta)^2*sin(phi) + 2.2159148682685765873821433829992e-80*L7*alphaDot*cos(beta)^4*cos(gamma)^4*cos(phi)*sin(alpha)*cos(zeta)^4*sin(phi);

    [c,t] = coeffs(f);
    c = vpa(c,5);

    for i = 1:length(c)
        if abs(c(i)) < epsilon
            c(i) = 0;
        end
    end

    fNew = c*t';
end