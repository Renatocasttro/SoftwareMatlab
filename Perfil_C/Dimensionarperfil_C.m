function [] = Dimensionarperfil_C()
global f1;
global Ntsd;
global kv;

if f1 == 1
    P_GEO_C_SOL();
else
    flexao_C();
    P_GEO_C_LAM();
    calculo_rmc();
    esbeltez_C_novo();
    calculo_Wef();
    
    kv = 5;    
end     
if Ntsd > 0 
    Tracao_C();
    
else
    Compressao_C();
    
end
%Esbeltez_C();
flexao_assimetrica_C();
flexao_composta_C();
cisalhamento_C();
Resultados_C();
kv = 5;

end