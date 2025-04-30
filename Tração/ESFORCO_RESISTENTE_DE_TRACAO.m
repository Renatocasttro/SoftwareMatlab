
function Ntrd = ESFORCO_RESISTENTE_DE_TRACAO(AgR,Ae,fy,fu,ya1,ya2)

% Item 5.2.2, da NBR 8800/24, P�g. 39
%C�lculo do escoamento da se��o l�quida e ruptura da se��o bruta
Ntrd1 = (AgR*fy)/(ya1);%escoamento da se��o bruta
Ntrd2 = (Ae*fu)/(ya2);%ruptura da se��o l�quida

Ntrd = min([Ntrd1, Ntrd2]);
end
