function [] = momentomaximo_I()
global Mxrd;
global Mmax;
global Mmay;
global Myrd;
global Wsup;
global Winf;
global Wx;
global Wy;
global fy;
global ya1;
global f4;

if f4 == 1
    W = min(Wsup,Winf);
    Mmax = 1.5*fy*W/(ya1*100);
    Mmay = '(*)';
    if Mxrd > Mmax
        Mxrd = Mmax;
    end
else
    Mmax = 1.5*fy*Wx/(ya1*100);
    Mmay = 1.5*fy*Wy/(ya1*100);
    if Mxrd > Mmax
        Mxrd = Mmax;
    end
    if Myrd > Mmay
        Myrd = Mmay;
    end
end