function [] = momentomaximo_T()
global Mxrd;
global Mmax;
global Mmay;
% global Myrd;
global Wsup;
global Winf;
global Wx;
% global Wy;
global fy;
global ya1;
global f4;

% Momento máximo permitodo - em conformidade com o item 5.4.2.2 da NR 8800.08.
if f4 == 1
    W = min(Wsup,Winf);
    Mmax = 1.5*fy*W/(ya1*100);
    Mmay = '(*)'; % não previsto na NBR 8800/08.
    if Mxrd > Mmax
        Mxrd = Mmax;
    end
else
    Mmax = 1.5*fy*Wx/(ya1*100);
    Mmay = '(*)'; % não previsto na NBR 8800/08.
    if Mxrd > Mmax
        Mxrd = Mmax;
    end
end