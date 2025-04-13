function [] = Dimensionarperfil_L()
global f1;
global Ntsd;

if f1 == 1;
    P_GEO_L_SOL();
else
    P_GEO_L_LAM();
end

if Ntsd > 0 
    Tracao_L();
else
    Compressao_L();
end
%Esbeltez_L();
%flexao_L();
Resultados_L();