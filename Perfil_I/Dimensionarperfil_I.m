function [] = Dimensionarperfil_I()
global f1;
global kv;
global espac;
global ts1;
global bs1;
global ts2;
global bs2;
global Ntsd;
global errov;

%calculando apenas se for compressão
%Lembrar de desfazer quando for implementada funçao de traçao
if  Ntsd > 0
    errov = 7; 
else
    if f1 == 1
        P_GEO_I_SOL();
    else
        P_GEO_I_LAM();
    end
    
    Compressao_I();
    calculo_rm ();
    esbeltez_I();
    flexao_I();
    momentomaximo_I();
    flexao_assimetrica_I();
    flexao_composta_I();

    kv = 5;

    %limpando variaveis referentes a enrijecedor
    espac = '(*)';
    ts1 = '(*)';
    bs1 = '(*)';
    ts2 = '(*)';
    bs2 = '(*)';

    cisalhamento_I();
    Resultados_I();
end

errof ();
end
