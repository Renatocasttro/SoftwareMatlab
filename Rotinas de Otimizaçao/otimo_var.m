function[] = otimo_var()
global otm1
global otm2
global otm3
global otm4
global otm5
global otm6
global otm7
global Mxrd;
global Mxsd;
global Myrd;
global Mysd;
global Ncrd;
global Ncsd;
global Ntrd;
global Ntsd;
global Vxrd;
global Vxsd;
global Vyrd;
global Vysd;
global fleassi;
global flecomp;
global otimo;

if otm1 == 1;
    if Ncsd > 0
    if Ncrd >= Ncsd
        otimo1 = 1;
    else
        otimo1 = 0;
    end
    else
    if Ntrd >= Ntsd
        otimo1 = 1;
    else
        otimo1 = 0;
    end
    end
else
    otimo1 = 1;
end
if otm2 == 1;
    if Mxrd >= Mxsd
        otimo2 = 1;
    else
        otimo2 = 0;
    end
else
    otimo2 = 1;
end
if otm3 == 1;
    if Myrd >= Mysd
        otimo3 = 1;
    else
        otimo3 = 0;
    end
else 
    otimo3 = 1;
end
if otm4 == 1;
    if Vxrd >= Vxsd
        otimo4 = 1;
    else
        otimo4 = 0;
    end
else 
    otimo4 = 1;
end
if otm5 == 1;
    if Vyrd >= Vysd
        otimo5 = 1;
    else
        otimo5 = 0;
    end
else 
    otimo5 = 1;
end
if otm6 == 1;
    if fleassi > 1
        otimo6 = 0;
    else
        otimo6 = 1;
    end
else 
    otimo6 = 1;
end
if otm7 == 1;
    if flecomp > 1
        otimo7 = 0;
    else
        otimo7 = 1;
    end
else 
    otimo7 = 1;
end

otimo = otimo1*otimo2*otimo3*otimo4*otimo5*otimo6*otimo7;