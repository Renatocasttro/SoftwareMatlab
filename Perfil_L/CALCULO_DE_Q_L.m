
function Q = CALCULO_DE_Q_L(f5,h,bf,tf,tw,bfs,tfs,bfi,tfi,f1,Ag,E,fy,kc)
global Qs;
global Qa;

if f5 == 1
    esbeltAL = bf/(tf);
else
    esbeltAL =  bf/(tf);
end


%Cálculo de Qs

if f1 == 1
    if esbeltAL > 0.45 * sqrt(E / fy)
        if esbeltAL <= 0.91 * sqrt(E / fy)
            Qs = 1.340 - 0.76 * esbeltAL * sqrt(fy/E);
        else 
            Qs = (0.53*E)/(fy * esbeltAL^2);
        end
    else
        Qs = 1;
    end
else
       if esbeltAL > 0.45 * sqrt(E / fy)
        if esbeltAL <= 0.91 * sqrt(E / fy)
            Qs = 1.340 - 0.76 * esbeltAL * sqrt(fy/E);
        else 
            Qs = (0.53*E)/(fy * esbeltAL^2);
        end
    else
        Qs = 1;
    end
end

%Cálculo de Qa

esbeltAA = h/tw;
    if esbeltAA < 0.56 * sqrt(E/fy) 
        Qa = 1;
    else
        bef =( 1.92 * (tw/10) * sqrt(E/fy) * (1 - (0.34/esbeltAA) * sqrt(E/fy)));
        if bef > h/10
            bef = h/10;
        end
        Aef = Ag - (h/10 - bef) * (tw/10);
        Qa = Aef/Ag;
    end


%Cálculo de Q

Q = Qs * Qa;

end