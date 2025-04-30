function [] = Esbeltez_global()
global L;
global kx;
global ky;
global ix;
global iy;
global errov;
global Ncsd;
global Ntsd;

esbeltX=L*kx/ix;
esbeltY=L*ky/iy;

% Verificação da esbeltez para a compressão
% Item 5.3.7, NBR 8800/24, p.52
if Ncsd>0
if esbeltX>200
    errov=20;
    errof();
    pause(0.1);
end
if  esbeltY>200
    errov=20;
    errof();
    pause(0.5);
end
end
% Verificação da esbeltez para a tração
% item 5.2.8.1 da NBR 8800/24, p.44
if Ntsd>0
if esbeltX>300
    errov=20;
    errof();
    pause(0.5);
end
if  esbeltY>300
    errov=20;
    errof();
    pause(0.5)
end 
end

