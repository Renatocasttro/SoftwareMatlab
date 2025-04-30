function [] = Dimensionarperfil_C()
global f1;
global Ntsd;
global kv;

if f1 == 1
    P_GEO_C_SOL();
else
    P_GEO_C_LAM(); 
end
if Ntsd > 0 
    Tracao_C();
else
    Compressao_C();    
end
    esbeltez_C_novo();
    calculo_rm();
    flexao_C();
    calculo_Wef(); 
    kv = 5;         
Esbeltez_global();
flexao_assimetrica_C();
flexao_composta_C();
cisalhamento_C();
Resultados_C();
kv = 5;

end