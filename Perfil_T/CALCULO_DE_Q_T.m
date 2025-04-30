function Q = CALCULO_DE_Q_T(f5,h,bf,tf,tw,bfs,tfs,bfi,tfi,f1,Ag,E,fy,kc)
global Qa;
global Qs;
global d;
global f2;
global pe;

%esbeltez das mesas
esbeltALm= bf/(2*tf);
% esbeltez da alma
esbeltALa=d/tw;

%Cálculo de Qs - para a mesa - Perfil T

if f1 == 1 % pefil T soldado (Grupo 5, Tabela F.1. NBR 8800)    
    if esbeltALm > 0.64 * sqrt(E/(fy/kc))
        if esbeltALm <= 1.17 * sqrt(E/(fy/kc))
            Qsm = 1.415 - 0.65 * esbeltALm * sqrt(fy/(kc*E));
        else 
            Qsm = (0.90*E*kc)/(fy * esbeltALm^2);
        end
    else
        Qsm = 1;
    end
end
if f2==1 % pefil T laminado (Grupo 4, Tabela F.1. NBR 8800)
    if esbeltALm > 0.56 * sqrt(E/fy)
        if esbeltALm <= 1.03 * sqrt(E/fy)
            Qsm = 1.415 - 0.74 * esbeltALm * sqrt(fy/E);
        else
            Qsm = (0.69*E)/(fy * esbeltALm^2);
        end
    else
        Qsm = 1;
    end
end

%Cálculo de Qs - para a alma - Perfil T: Grupo 6, Tabela F.1. NBR 8800)
if esbeltALa>0.75*sqrt(E/fy)
    if esbeltALa<=1.03*sqrt(E/fy)
        Qsa=1.908-1.22*esbeltALa*sqrt(fy/E);
    else
        Qsa=0.69*E/(fy*(esbeltALa^2));
    end
else
    Qsa=1;
end

Qs=min(Qsm,Qsa);

%Cálculo de Qa

if pe~=3 % trate-se de perfil T (pe=3), que só tem elementos AL
    
esbeltAA = h/tw;
    if esbeltAA < 0.75 * sqrt(E/fy) 
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

Q = Qs * Qa;  % quando o perfil tiver elementos AL e AA.

else
Q = Qs;  % quando o elemento tiver somente elementos AL (caso do perfil T)
end

end