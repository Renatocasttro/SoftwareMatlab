 function[] = esbeltez_I()
global d;
global h;
global tf;
global tw;
global bf;
global tfs;
global tfi;
global bfs;
global f1;
global f5;
global kc;
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
global flm;
global flmp;
global flmr;
global flt;
global fltp;
global fltr;
global hc;
global hp;
global Wsup;
global Winf;
global ryc;
global ryt;
global Zx;
global alfay;
global b3;


%perfil soldado
if f1==1
    Cs = 0.95;
    %perfil duplamente simetrico
    if f5==1;
        %fla = lambida alma; flm = lambida mesa; flt = lambida flambagem
        %lateral e "p" e "r" sao os respectivos lambida_p e lambida_r para
        %cada caso, respectivamente
        flm = bf/(2*tf);
        flmp = 0.38*sqrt(E/fy);
        flmr = Cs*sqrt(E/((0.7*fy)/kc));
        fla = h/tw;
        flap = 3.76*sqrt(E/fy);
        flar = 5.7*sqrt(E/fy);
        
        %perfil de alma nao esbelta
        if fla < flar;
            flt = Lb/iy;
            fltp = 1.76*sqrt(E/fy);
            b1 = 0.7*fy*Wx/(E*J);
            fltr = 1.38*sqrt(Iy*J)/(iy*J*b1)*sqrt(1+sqrt(1+(27*Cw*b1^2)/Iy));
            
        %perfil de alma esbelta
        else
            flt = Lb/ryt;
            fltp = 1.1*sqrt(E/fy);
            fltr = pi*sqrt(E/(fy*0.7));
        end
        
    %perfil monossimetrico
    else
        flm = bfs/(2*tfs);
        flmp = 0.38*sqrt(E/fy);
        flmr = Cs*sqrt(E/((0.7*fy)/kc));
        fla = hc/(tw/10);
        W = min(Wsup,Winf);
        flap = (hc/hp)*sqrt(E/fy)/(0.54*Zx*fy/(W*fy)-0.09)^2;
        flar = 5.7*sqrt(E/fy);
        if flap < flar;
        else
            flap = flar;
        end
        %perfil de alma nao esbelta
        if fla < flar;
            flt = Lb/ryc;
            fltp = 1.76*sqrt(E/fy);
            b1 = 0.7*fy*Wsup/(E*J);
            b3 = 0.45*(d/10-(tfs+tfi)/20)*((alfay-1)/(alfay+1));
            b2 = 5.2*b1*b3+1;
            fltr = 1.38*sqrt(Iy*J)/(ryc*J*b1)*sqrt(b2+sqrt(b2^2+(27*Cw*b1^2)/Iy));
            
        %perfil de alma esbelta
        else
            flt = Lb/ryt;
            fltp = 1.1*sqrt(E/fy);
            fltr = pi*sqrt(E/(fy*0.7));
            
        end
    end
    
%perfil laminado
else 
    %perfil duplamente simetrico
    Cs = 0.83; 
        if f5==1
            flm = bf/(2*tf);
            flmp = 0.38*sqrt(E/fy);
            flmr = Cs*sqrt(E/(0.7*fy));
            fla = h/tw;
            flap = 3.76*sqrt(E/fy);
            flar = 5.7*sqrt(E/fy);
            flt = Lb/iy;
            fltp = 1.76*sqrt(E/fy);
            b1 = 0.7*fy*Wx/(E*J);
            fltr = 1.38*sqrt(Iy*J)/(iy*J*b1)*sqrt(1+sqrt(1+(27*Cw*b1^2)/Iy));
        
        else
            flm = bfs/(2*tfs);
            flmp = 0.38*sqrt(E/fy);
            flmr = Cs*sqrt(E/((0.7*fy)));
            fla = hc/tw;
            W = min(Wsup,Winf);
            flap = (hc/hp)*sqrt(E/fy)/(0.54*Zx*fy/(W*fy)-0.09)^2;
            flar = 5.7*sqrt(E/fy);
            flt = Lb/ryc;
            fltp = 1.76*sqrt(E/fy);
            b1 = 0.7*fy*Wsup/(E*J);
            b3 = 0.45*(d/10-(tfs+tfi)/20)*((alfay-1)/(alfay+1));
            b2 = 5.2*b1*b3+1;
            fltr = 1.38*sqrt(Iy*J)/(ryc*J*b1)*sqrt(b2+sqrt(b2^2+(27*Cw*b1^2)/Iy));
            if flap < flar;
            else
                flap = flar;
            end
        end
         
end

