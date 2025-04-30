
function[] = AreaEF_I() %Adicionei o X e retirei o Ag
global f5;
global h;
global bf;
global tf;
global tw;
global bfs;jb
global tfs;
global bfi;
global tfi;
global f1;
global E;
global fy;
global kc;
global X;

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
        if esbeltAL > (0.64 * sqrt(E/(fy/kc))) / sqrt(X) %item 5.3.4.2 NBR 8800(2024)
            c2 = 1.49; %item 5.3.4.2 tabela 5
            c1 = 0.22; %item 5.3.4.2 tabela 5
            fel = (c2 * (0.64 * sqrt(E/(fy/kc))) / esbeltAL)^2 * fy; %item 5.3.4.2 tabela 5
            befm = (bf/2) * (1 - c1 * sqrt(fel/(X*fy))) * sqrt(fel/(X*fy)); %Se não atender o limite se calcula o bef
        else
            befm = (bf/2); %Se atender continua o mesmo 
        end
        befmsup = befm;

        esbeltAL = esbeltALinf; %calculo befm mesa inferior
        if esbeltAL > (0.64 * sqrt(E/(fy/kc))) / sqrt(X) %item 5.3.4.2 NBR 8800(2024)
            c2 = 1.49; %item 5.3.4.2 tabela 5
            c1 = 0.22; %item 5.3.4.2 tabela 5
            fel = (c2 * (0.64 * sqrt(E/(fy/kc))) / esbeltAL)^2 * fy; %item 5.3.4.2 tabela 5
            befm = (bf/2) * (1 - c1 * sqrt(fel/(X*fy))) * sqrt(fel/(X*fy)); %Se não atender o limite se calcula o bef
        else
            befm = (bf/2); %Se atender continua o mesmo 
        end
        befminf = befm;

    else %Se for laminado
        esbeltAL = esbeltALsup;  %calculo befm mesa superior
        if esbeltAL > (0.56 * sqrt(E/fy))/ sqrt(X)
            c2 = 1.49; %item 5.3.4.2 tabela 5
            c1 = 0.22; %item 5.3.4.2 tabela 5
            fel = ((c2 * (0.56 * sqrt(E/fy))) / esbeltAL)^2 * fy; %item 5.3.4.2 tabela 5
            befm = (bf/2) * (1 - c1 * sqrt((fel)/(X*fy))) * sqrt(fel/(X*fy)); %Se não atender o limite se calcula o bef
        else
            befm = (bf/2); %Se atender continua o mesmo 
        end
        befmsup = befm;

        esbeltAL = esbeltALinf;  %calculo befm mesa inferior
        if esbeltAL > (0.56 * sqrt(E/fy))/ sqrt(X)
            c2 = 1.49; %item 5.3.4.2 tabela 5
            c1 = 0.22; %item 5.3.4.2 tabela 5
            fel = ((c2 * (0.56 * sqrt(E/fy))) / esbeltAL)^2 * fy; %item 5.3.4.2 tabela 5
            befm = (bf/2) * (1 - c1 * sqrt((fel)/(X*fy))) * sqrt(fel/(X*fy)); %Se não atender o limite se calcula o bef
        else
            befm = (bf/2); %Se atender continua o mesmo 
        end
        befminf = befm;
    end
    
    %Cálculo de befA (alma)
    %(b/t) nesse caso independe da simetria
    
    esbeltAA = h/tw;
        if esbeltAA < (1.49 * sqrt(E/fy))/ sqrt(X)
            befa = h; %Se atender continua o mesmo 
        else
            c2 = 1.31; %item 5.3.4.2 tabela 5
            c1 = 0.18; %item 5.3.4.2 tabela 5
            fel = (c2 * (1.49 * sqrt(E/fy)) / esbeltAA)^2 * fy;
            befa = h * (1 - c1 * sqrt(fel/(X*fy))) * sqrt(fel/(X*fy)); %Se não atender o limite se calcula o bef
        end
    
end

%Cálculo de Aef
    
Aef = ((befminf * tf) * 2) + ((befmsup * tf) * 2) + (befa * tw);
