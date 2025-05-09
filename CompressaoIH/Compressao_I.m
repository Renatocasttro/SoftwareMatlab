function [] = Compressao_I()
%Rotina principal de dimensionamento:
% global Q;
global X;
global Ncrd;
global tf;
global tw;
global bf;
global tfs;
global tfi;
global bfs;
global bfi;
global Ag;
global Ix;
global Iy;
global J;
global f1;
global f5;
global L;
global kx;
global ky;
global kz;
global E;
global G;
global fy;
global ya1;
global h;
global Cw;
global y0;
global r0;
global kc;
global Aef;

CALCULO_DE_X();
AreaEf_I();
Ncrd = (X*Aef*fy)/(ya1);
end



