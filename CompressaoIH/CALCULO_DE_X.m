function X = CALCULO_DE_X()
global E;
global Ix;
global Iy;
global kx;
global ky;
global kz;
global L;
global f5;
global Cw;
global G;
global J;
global Ag;
global fy;
global lbd0;
global r0;
global y0;

%Parâmetros da força axial de flambagem
%Cálculo da força axial de flambagem, item 5.3.5.1 NBR 8800/2024
Nex = (pi^2 * E * Ix)/(kx * L)^2; %Não existe mais os coeficientes k!!!
Ney = (pi^2 * E * Iy)/(ky * L)^2;
Nez = (1/(r0^2))*(((pi^2 * E * Cw)/(kz * L)^2) + (G/10)*J);  
Neyz = ((Ney + Nez)/(2*(1-(y0/r0)^2)))*(1 - sqrt(1-((4 * Ney * Nez *(1-(y0/r0)^2))/(Ney + Nez)^2)));

%Cálculo da força axial de flambagem(Ne)
if f5 == 1 %Caso seja duplamente simétrico
    Ne = min([Nex Ney Nez]);
else
    Ne = min([Nex Neyz]);
end

%Cálculo do índice de esbeltez reduzido(lbd0)
lbd0 = sqrt((Ag*fy)/Ne);

%Cálculo de X
if lbd0 > 1.5
    X = 0.877/lbd0^2;
else
    X = 0.658^(lbd0^2);
end
end

