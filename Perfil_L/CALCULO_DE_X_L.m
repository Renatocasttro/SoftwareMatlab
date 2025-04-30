function X = CALCULO_DE_X_L(E,Ix,Iy,kx,ky,kz,L,f5,Cw,G,J,Q,Ag,fy,r0,y0,ix);
global fator;
global esbel;
global lbd0;
global ct_otm;
global Compressao_L_Opt;

if ct_otm==0;
    Compressao_L_Opt = 0;
    movegui(Perfil_L_Compressao,[285,255])
    waitfor(Perfil_L_Compressao);
    ct_otm=0;
end

if Compressao_L_Opt==1
fator = (L/ix); % Anexo E, item E.1.4, da NBR 8800.08, p.123
 if  fator < 80
    esbel = 72*ix + 0.75*L;
    
else
    esbel = 32*ix + 1.25*L;
end
end

%Parâmetros da força axial de flambagem - Item E.1.4 da NBR 8800/08
% Observe que, no caso de cantoneiras conectadas por uma aba, não é ...
% ... o valor de xo e yo (coordenadas dos centro de torção).
% De qualquer forma, o centro de torção de uma cantoneira de abas iguais...
% ... está localizado no encontro das abas, na condição indicada por ...
% ... Hibberler (2018, p.349) 
Nex = (pi^2 * E * Ix)/((esbel)^2);


%Ney = (pi^2 * E * Iy)/(ky * L)^2;
%Nez = (1/(r0^2))*(((pi^2 * E * Cw)/(kz * L)^2) + (G/10)*J);  
%Neyz = ((Ney + Nez)/(2*(1-(y0/r0)^2)))*(1 - sqrt(1-((4 * Ney * Nez *(1-(y0/r0)^2))/(Ney + Nez)^2)));

%Cálculo da força axial de flambagem(Ne)
%if f5 == 1
    %Ne = min([Nex Ney Nez]);
%else
    %Ne = min([Nex Neyz]);
%end

%Cálculo do índice de esbeltez reduzido(lbd0)
lbd0 = sqrt((Q*Ag*fy)/Nex);

%Cálculo de X
if lbd0 > 1.5
    X = 0.877/lbd0^2;
else
    X = 0.658^(lbd0^2);
    
end
% Zera o valor da opção Compressao_L_Opt que identifica a forma como o
% perfil L esta comprimido, suas condições de contorno e o tipo de estrura
% da qual está participando (ver item E.1.4.1 da NBR 8800/08).
Compressao_L_Opt=0;
end


