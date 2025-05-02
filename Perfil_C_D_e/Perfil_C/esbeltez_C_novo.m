function esbeltez_C_novo
global d;
global tf;
global tw;
global bf;
global E;
global fy;
global Lb;
global iy;
global J;
global Wx;
global Cw;
global Iy;
global fla;
global flap;
global flar;
global flmp
global flmr;
global flm;
global flt;
global fltp;
global B1;
global fltr;
global flapy;
global flary;

    
%eixo X
    Cs = 0.83; 
            flm = bf/tf;
            flmp = 0.38*sqrt(E/fy);
            flmr = Cs*sqrt(E/(0.7*fy));
            fla = (d-2*tf)/tw;
            flap = 3.76*sqrt(E/fy);
            flar = 5.7*sqrt(E/fy);
            flt = Lb/iy;
            fltp = 1.76*sqrt(E/fy);
            B1 = 0.7*fy*Wx/(E*J);
            fltr = 1.38*sqrt(Iy*J)/(iy*J*B1)*sqrt(1+sqrt(1+27*Cw*B1^2/Iy));
            flapy = 1.12*sqrt(E/fy);
            flary = 1.4*sqrt(E/fy);
           
            
end