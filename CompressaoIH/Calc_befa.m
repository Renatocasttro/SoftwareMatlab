function[] = Calc_befa()
global kc;
global c1;
global c2; 
global E;
global fy;
global bf;
global X;

if esbeltAA < (1.49 * sqrt(E/fy))/ sqrt(X)
    befa = h; %Se atender continua o mesmo 
else
    c2 = 1.31; %item 5.3.4.2 tabela 5
    c1 = 0.18; %item 5.3.4.2 tabela 5
    fel = (c2 * (1.49 * sqrt(E/fy)) / esbeltAA)^2 * fy;
    befa = h * (1 - c1 * sqrt(fel/(X*fy))) * sqrt(fel/(X*fy)); %Se não atender o limite se calcula o bef
end
end