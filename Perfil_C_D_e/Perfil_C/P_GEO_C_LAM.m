function P_GEO_C_LAM
global d;
global bf;
global xg;
global y0;
global r0;
global Cw;
global x0;
global ix;
global Ag;
global iy;
global Iy;
global Ix;
global tf;
global tw;
global h;
global Iycc;
global Ixcc1;
global Zxc;

% Fez-se a correção de todas as unidades das dimensões do perfil para cm.
%xg e yo são as coordenadas do centróide
%xo é um parâmetro  para o cálculo de Cw
    xc = [(tw*d*tw/2 + 2*tf*(bf-tw)*(bf-tw)/2)]/(2*tf*(bf-tw)+d*tw);
    h = (d-2*tf);
    y0 = 0;
    r0 = sqrt(ix^2 + iy^2 + xg^2 +y0^2);
    x0 = ((tf/10)*((h/10)^2)*(bf/10)^2)/(4*Ix);
    Iycc = (tf*(bf^3)/12 + tf*bf*(bf/2-xc)^2)/10000; % acho que é o de baixo
    Ixcc1=((bf*(tf^3)/12+bf*tf*(d-tf)^2)/10000);
    Zxc = (2*(bf*tf*(d-tf)/2)+2*((d/2-tf)*tw*(d/2-tf)/2))/1000;
end