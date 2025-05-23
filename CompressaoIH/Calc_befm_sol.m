function[] = Calc_befm_sol()
%Cálculo da largura efetiva da mesa do perfil I soldado, item 5.3.4.2 NBR 8800(2024)
global kc;
global c1;
global c2; 
global E;
global fy;
global bf;
global X;
global tf;

esbeltAL = bf/(2*tf);
esbeltALlim = (0.64 * sqrt(E/(fy/kc)))
if esbeltAL > esbeltALlim / sqrt(X) 
    c2 = 1.49; %item 5.3.4.2 tabela 5
    c1 = 0.22; %item 5.3.4.2 tabela 5
    fel = (c2 * esbeltALlim / esbeltAL)^2 * fy; %item 5.3.4.2 tabela 5
    befm = (bf/2) * (1 - c1 * sqrt(fel/(X*fy))) * sqrt(fel/(X*fy)); %Se não atender o limite se calcula o bef
else
    befm = (bf/2); %Se atender continua o mesmo 
end
end