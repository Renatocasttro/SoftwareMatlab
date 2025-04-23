
function Aef = AreaEF_I(f5,h,bf,tf,tw,bfs,tfs,bfi,tfi,f1,E,fy,kc,X) %Adicionei o X e retirei o Ag

%Verificação da simetria 
if f5 == 1
    esbeltAL = bf/(2*tf);
else
    esbeltAL = min(bfs/(2*tfs),bfi/(2*tfi));
end

%Cálculo de befm (mesa)

if f1 == 1
    if esbeltAL > (0.64 * sqrt(E/(fy/kc))) / sqrt(X)
        oel = (1.49 * (0.64 * sqrt(E/(fy/kc))) / esbeltAL)^2 * fy;
        befm = (bf/2) * (1 - 0.22 * sqrt(oel/(X*fy))) * sqrt(oel/(X*fy));
    else
        befm = (bf/2);
    end
else
    if esbeltAL > (0.56 * sqrt(E/fy))/ sqrt(X)
        oel = ((1.49 * (0.56 * sqrt(E/fy))) / esbeltAL)^2 * fy;
        befm = (bf/2) * (1 - 0.22 * sqrt((oel)/(X*fy))) * sqrt(oel/(X*fy));
    else
        befm = (bf/2);
    end
end

%Cálculo de befa (alma)

esbeltAA = h/tw;
    if esbeltAA < (1.49 * sqrt(E/fy))/ sqrt(X)
        befa = h;
    else
        oel = (1.31 * (1.49 * sqrt(E/fy)) / esbeltAA)^2 * fy;
        befa = h * (1 - 0.18 * sqrt(oel/(X*fy))) * sqrt(oel/(X*fy));
    end


%Cálculo de Aef

Aef = ((befm * tf) * 4) * (befa * tw);

end

