function [] = Tracao_L()
%Rotina principal de dimensionamento da tração:
global An;
global AgR;
global Ae;
global Ac;
global Ct;
global d;
global n;
global dp;
global ec;
global lc;
global fy;
global fu;
global ya1;
global ya2;
global Ntrd;
global TpCt;
global ct_otm;
global t;


if ct_otm ==0
   Aciona_Formulario_Ct();
else
   Cal_ec_Otm_Ct_Cont()
end

Ac = CALCULO_DE_Ac(d,t);
An = CALCULO_DE_An(AgR,n,dp,t);
%Ct=CALCULO_DE_Ct();
CALCULO_DE_Ct()
Ae = CALCULO_DE_Ae(An,Ct);
Ntrd = ESFORCO_RESISTENTE_DE_TRACAO(AgR,Ae,fy,fu,ya1,ya2);

end




