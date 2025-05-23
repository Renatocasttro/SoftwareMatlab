function[] = AreaEf_I() 
%Barras prismáticas submetidas a força axial de compressão
%Cálculo da área efetiva da seção transversal, item 5.3.4 NBR 8800/2024
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
global befm;
global befa;
% global E;
% global fy;
% global kc;
% global X;

%Verificação da simetria para (b/t) (mono ou duplamente)
if f5 == 1 %se for duplamente simétrico
    esbeltAL = bf/(2*tf);
    %Cálculo de befM (mesa)

    if f1 == 1 %Se for soldado 
       Calc_befm_sol() %Cálculo da largura efetiva da mesa do perfil I soldado, item 5.3.4.2 NBR 8800(2024)
    else %Se for laminado
       Calc_befm_lam() %Cálculo da largura efetiva da mesa do perfil I laminado, item 5.3.4.2 NBR 8800(2024)
    end
    
    %Cálculo de befA (alma)
    %(b/t) nesse caso independe da simetria
    
    esbeltAA = h/tw;
    Calc_befa() %Cálculo da largura efetiva da alma do perfil I, item 5.3.4.2 NBR 8800(2024)
    
    befmsup = befm;
    befminf = befm;
  
else %se for monossimétrico
    esbeltALsup = (bfs/(2*tfs));
    esbeltALinf = (bfi/(2*tfi));

    %Cálculo de befMsup e befMinf (mesa)
    
    if f1 == 1 %Se for soldado 
        esbeltAL = esbeltALsup;  %calculo befm mesa superior
        Calc_befm_sol() %Cálculo da largura efetiva da mesa do perfil I soldado, item 5.3.4.2 NBR 8800(2024)
        befmsup = befm;

        esbeltAL = esbeltALinf; %calculo befm mesa inferior
        Calc_befm_sol() %Cálculo da largura efetiva da mesa do perfil I soldado, item 5.3.4.2 NBR 8800(2024)
        befminf = befm;

    else %Se for laminado
        esbeltAL = esbeltALsup;  %calculo befm mesa superior
        Calc_befm_lam() %Cálculo da largura efetiva da mesa do perfil I laminado, item 5.3.4.2 NBR 8800(2024)
        befmsup = befm;

        esbeltAL = esbeltALinf;  %calculo befm mesa inferior
        Calc_befm_lam() %Cálculo da largura efetiva da mesa do perfil I laminado, item 5.3.4.2 NBR 8800(2024)
        befminf = befm;
    end
    
    %Cálculo de befA (alma)
    %(b/t) nesse caso independe da simetria
    
    esbeltAA = h/tw;
    befa = Calc_befa() %Cálculo da largura efetiva da alma do perfil I, item 5.3.4.2 NBR 8800(2024)
  
end

%Cálculo de Aef
    
Aef = ((befminf * tf) * 2) + ((befmsup * tf) * 2) + (befa * tw);

end
