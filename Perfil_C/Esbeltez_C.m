function [] = Esbeltez_C()
%Rotina de cálculo de esbeltez:

global L;
global kx;
global ky;
global kz;
global iz;
global ix;
global iy;
global esbLx;
global esbLy;
global esbL;
global errov;


% Verificação do limite de esbeltez
esbLx = kx*L/ix;
esbLy = ky*L/iy;
esbL = max([esbLx esbLy]);

if esbL > 200 
    errov = 5;
    errof ();
end




end



