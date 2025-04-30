
function Ntrd = ESFORCO_RESISTENTE_DE_TRACAO(AgR,Ae,fy,fu,ya1,ya2)

% Item 5.2.2, da NBR 8800/24, Pág. 39
%Cálculo do escoamento da seção líquida e ruptura da seção bruta
Ntrd1 = (AgR*fy)/(ya1);%escoamento da seção bruta
Ntrd2 = (Ae*fu)/(ya2);%ruptura da seção líquida

Ntrd = min([Ntrd1, Ntrd2]);
end
