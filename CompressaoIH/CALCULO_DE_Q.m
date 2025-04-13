
function Q = CALCULO_DE_Q(f5,h,bf,tf,tw,bfs,tfs,bfi,tfi,f1,Ag,E,fy,kc)
global Qs;
global Qa;

if f5 == 1
    esbeltAL = bf/(2*tf);
else
    esbeltAL = min(bfs/(2*tfs),bfi/(2*tfi));
end

%Cálculo de Qs

if f1 == 1
    if esbeltAL > 0.64 * sqrt(E/(fy/kc))
        if esbeltAL <= 1.17 * sqrt(E/(fy/kc))
            Qs = 1.415 - 0.65 * esbeltAL * sqrt(fy/(kc*E));
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
        bef = 1.92 * (tw/10) * sqrt(E/fy) * (1 - (0.34/esbeltAA) * sqrt(E/fy));
        if bef > h/10
            bef = h/10;
        end
        Aef = Ag - (h/10 - bef) * (tw/10);
        Qa = Aef/Ag;
    end


%Cálculo de Q

Q = Qs * Qa;

end