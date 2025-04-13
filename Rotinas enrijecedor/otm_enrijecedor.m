function[] = otm_enrijecedor()
global d;
global h;
global tw;
global fy;
global E;
global ya1;
global fla;
global Vxrd;
global Vysd;
global Vxsd;
global errov;
global espac;
global kv;

%mensagem de erro caso a mesa nao resista a força cisalhante
if Vxsd > Vxrd
    errov = 6;
end

%resistencia de plastificação da alma por cisalhamento
aux = 0.6*d*tw*fy/(ya1*100);

lp1 = Vysd*fla/aux;
lp2 = sqrt(Vysd/(aux*1.24))*fla;

kv0 = ((fla/1.1)^2)*fy/E;
kv1 = ((lp1/1.1)^2)*fy/E;
kv2 = ((lp2/1.1)^2)*fy/E;

lr1 = 1.37*sqrt(kv1*E/fy);
lr2 = 1.37*sqrt(kv2*E/fy);

if fla > lp1
    if fla <= lr1
    else
        kv1 = 5;
    end
else 
    kv1 = 5;
end

if fla > lr2
else
    kv2 = 5;
end

if kv1 == 5
    if kv2 == 5
        kv = kv0;
    else
        kv = min(kv0, kv2);
    end
else if kv2 == 5
        kv = min(kv0, kv1);
    else
        kv4 = min(kv1, kv2);
        kv = min(kv4,kv0);
    end
end

if kv <= 5
    espac = max(0.3*h, ((260/fla)^2)*0.1*h);
    kv = 5;
else
    espac = sqrt(5/(kv-5))*0.1*h;
end




