
function Ntrd = ESFORCO_RESISTENTE_DE_TRACAO(Ag,Ae,fy,fu,ya1,ya2)

%Cálculo do escoamento da seção líquida e ruptura da seção bruta
Ntrd1 = (Ag*fy)/(ya1);%escoamento da seção líquida
Ntrd2 = (Ae*fu)/(ya2);%ruptura da seção bruta

Ntrd = min([Ntrd1, Ntrd2]);
end
