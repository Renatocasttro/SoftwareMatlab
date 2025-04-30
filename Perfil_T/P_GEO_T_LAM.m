function[] = P_GEO_T_LAM()
global d;
global y0;
global r0;
global Cw;
global ix;
global iy;
global h;
global J;
global tf;
global tw;
global bf;
global xg;
global Zx;
global Wxc;
global Ix;
global Wsup;
global Winf;
global Wx;

% Fez-se a correção de todas as unidades das dimensões do perfil para cm.
    h = d-tf; % mm
    y0 = 0;
    r0 = sqrt(ix^2 + iy^2); % em cm
    Cw = 0;
    % Constante de torção ou momento de inércia à torção, em cm4
    J = ((bf/10)*(tf/10)^3 + (h/10)*(tw/10)^3)/3;
    % Módulo resitente plástico do perfil T, cm3 
    Zx=((bf/10)*(tf/10))*(xg-0.5*(tf/10))+(xg-(tf/10)*(tw/10))*(xg-(tf/10))*0.5+abs(((d/10)-xg)*tw*((d/10)-xg)*0.5);
    Wxc=Ix/xg; % cm cm3
    Wsup=Wxc;
    Winf=Wx;
    
end