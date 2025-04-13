function [] = Dimensionarperfil_T()
global f1;
global Ntsd;

if f1 == 1;
    P_GEO_T_SOL();
else
    P_GEO_T_LAM();
end

if Ntsd > 0 
    Tracao_T();
else
    Compressao_T();
end
%esbeltez_T();
%flexao_T();
Resultados_T();