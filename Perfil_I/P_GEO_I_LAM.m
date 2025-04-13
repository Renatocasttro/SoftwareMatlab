function[] = P_GEO_I_LAM()
global d;
global y0;
global r0;
global Cw;
global ix;
global iy;
global Iy;
global tf;
global tfs;
global tfi;
global bfs;
global bfi;
global tw;
global f5;
global alfay;
global ryc;
global ryt;
global Ysup;
global hc;
global hp;

% Fez-se a correção de todas as unidades das dimensões do perfil para cm.
if f5 == 1;
    y0 = 0;
    r0 = sqrt(ix^2 + iy^2);
    Cw =((d/10-(tf/10))^2*Iy)/4;

else
    LP = (tfi*(bfi-tw)-tfs*(bfs-tw)+d*tw)/(20*tw);
    Cw =((d/10-(tf/10))^2*Iy)/4;
    Iyc = tfs*(bfs^3)/120000;
    Iyt = tfi*(bfi^3)/120000;
    alfay = Iyc/Iyt;
    ryc = sqrt((Iyc + (Ysup-tfs/10)*tw^3/1000)/(tfs*bfs/100+(Ysup-tfs/10)*tw/10));
    hc = 2*(Ysup-tfs/10);
    hp = 2*(LP-tfs/10);
    y0 = (Ysup-LP);
       
end