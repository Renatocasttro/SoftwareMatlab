
function[] = AreaEf_I() %Adicionei o X e retirei o Ag
global f5;
global h;
global bf;
global tf;
global tw;
global bfs;
global tfs;
global bfi;
global tfi;
global f1;
% global E;
% global fy;
% global kc;
% global X;

%Verificação da simetria para (b/t) (mono ou duplamente)
if f5 == 1 %se for duplamente simétrico
    esbeltAL = bf/(2*tf);
    %Cálculo de befM (mesa)

    if f1 == 1 %Se for soldado 
       Calc_befm_sol()
    else %Se for laminado
       Calc_befm_lam() 
    end
    
    %Cálculo de befA (alma)
    %(b/t) nesse caso independe da simetria
    
    esbeltAA = h/tw;
    Calc_befa()
    
    befmsup = befm;
    befminf = befm;
  
    end
else %se for monossimétrico
    esbeltALsup = (bfs/(2*tfs);
    esbeltALinf = (bfi/(2*tfi));

    %Cálculo de befMsup e befMinf (mesa)
    
    if f1 == 1 %Se for soldado 
        esbeltAL = esbeltALsup;  %calculo befm mesa superior
        Calc_befm_sol()
        befmsup = befm;

        esbeltAL = esbeltALinf; %calculo befm mesa inferior
        Calc_befm_sol()
        befminf = befm;

    else %Se for laminado
        esbeltAL = esbeltALsup;  %calculo befm mesa superior
        Calc_befm_lam()
        befmsup = befm;

        esbeltAL = esbeltALinf;  %calculo befm mesa inferior
        Calc_befm_lam()
        befminf = befm;
    end
    
    %Cálculo de befA (alma)
    %(b/t) nesse caso independe da simetria
    
    esbeltAA = h/tw;
        Calc_befa()
    
end

%Cálculo de Aef
    
Aef = ((befminf * tf) * 2) + ((befmsup * tf) * 2) + (befa * tw);
