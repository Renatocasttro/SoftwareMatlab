function [] = Tracao_I()
%Rotina principal de dimensionamento:
global An;
% global Ag;
global Ae;
global Ac;
global AgR;
global avan_ct;
global Ct;
%global d;
global n;
global dp;
%global tf;
global t;
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
avan_ct = 0;
% movegui(CtI, 'center');
movegui(CtI,[150 100]);
waitfor (CtI);
else
   Cal_ec_Otm_Ct_Cont()
end

Ac=AgR;
An = CALCULO_DE_An(AgR,n,dp,t);
CALCULO_DE_Ct();
Ae = CALCULO_DE_Ae(An,Ct)
Ntrd = ESFORCO_RESISTENTE_DE_TRACAO(AgR,Ae,fy,fu,ya1,ya2);

end



