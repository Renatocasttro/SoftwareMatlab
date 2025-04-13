function[] = compressao_enrij(bsmin)
global Vysd;
global tw;
global fye;
global E;
global ts2;
global ya1;
global h;
global aux1;
global Ndres;
global bsmin;
global pe;
global d;
global bw;


if pe == 1
lbd0 = (h*sqrt(6)/(20*bsmin+tw))*sqrt(fye/(pi^2*E));

 if lbd0 > 1.5
    X = 0.877/lbd0^2;
 else
    X = 0.658^(lbd0^2);
 end

Ndres = (20*bsmin+tw)*ts2*X*fye/(ya1*100);

 if Ndres < Vysd
    aux1 = 0;
 else
    aux1 = 1;
 end
else
    aux1 = 1;
end
