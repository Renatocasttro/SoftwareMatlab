function [] = Compressao_C()
%Rotina principal de dimensionamento:
global Q;
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
global xg;
global r0;
global kc;

Q = CALCULO_DE_Q_C(f5,h,bf,tf,tw,bfs,tfs,bfi,tfi,f1,Ag,E,fy,kc);
X = CALCULO_DE_X_C(E,Ix,Iy,kx,ky,kz,L,f5,Cw,G,J,Q,Ag,fy,r0,xg);
Ncrd =(X*Q*Ag*fy)/(ya1);

end



