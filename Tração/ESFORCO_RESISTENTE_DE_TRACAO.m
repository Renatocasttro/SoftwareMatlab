
function Ntrd = ESFORCO_RESISTENTE_DE_TRACAO(Ag,Ae,fy,fu,ya1,ya2)

%C�lculo do escoamento da se��o l�quida e ruptura da se��o bruta
Ntrd1 = (Ag*fy)/(ya1);%escoamento da se��o l�quida
Ntrd2 = (Ae*fu)/(ya2);%ruptura da se��o bruta

Ntrd = min([Ntrd1, Ntrd2]);
end
