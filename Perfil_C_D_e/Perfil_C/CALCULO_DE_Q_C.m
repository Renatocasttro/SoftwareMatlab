
function Q = CALCULO_DE_Q_C(f5,h,bf,tf,tw,bfs,tfs,bfi,tfi,f1,Ag,E,fy,kc)
global Qa;
global Qs;

% kc > = 0.35 & kc < = 0.76
        kc = 4/sqrt(h/tw);
        if kc <0.35;
            kc = 0.35;
        else if kc >0.76;
                kc = 0.76;
            end
        end

if f5 == 1
    esbeltAL = bf/(tf);
else
    esbeltAL =  bf/(tf);
end

%Cálculo de Qs

if f1 == 1
    if esbeltAL > 0.64 * sqrt(E*kc/fy)
        if esbeltAL <= 1.17 * sqrt(E*kc/fy)
            Qs = 1.415 - 0.65 * esbeltAL * sqrt(fy/(E*kc));
        else 
            Qs = (0.90*E*kc)/(fy * esbeltAL^2);
        end
    else
        Qs = 1;
    end
else
    if esbeltAL > 0.56 * sqrt(E/fy)
        if esbeltAL <= 1.03 * sqrt(E/fy)
            Qs = 1.415 - 0.74 * esbeltAL * sqrt(fy/E);
        else
            Qs = (0.69*E)/(fy * esbeltAL^2);
        end
    else
        Qs = 1;
    end
end

%Cálculo de Qa

esbeltAA = h/tw;
    if esbeltAA < 1.49 * sqrt(E/fy) 
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