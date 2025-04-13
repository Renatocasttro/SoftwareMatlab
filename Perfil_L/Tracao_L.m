function [] = Tracao_L()
%Rotina principal de dimensionamento:
global An;
global Ag;
global Ae;
global Ac;
global Ct;
global d;
global n;
global dp;
global tf;
global ec;
global lc;
global fy;
global fu;
global ya1;
global ya2;
global Ntrd;
global TpCt;
global ct_otm;

if ct_otm ==0
Aciona_Formulario_Ct();
else
end

Ac = CALCULO_DE_Ac(d,tf);
An = CALCULO_DE_An(Ag,n,dp,tf);
Ct = CALCULO_DE_Ct(Ac,ec,lc,An,TpCt);
Ae = CALCULO_DE_Ae(An,Ct);
Ntrd = ESFORCO_RESISTENTE_DE_TRACAO(Ag,Ae,fy,fu,ya1,ya2);

end



