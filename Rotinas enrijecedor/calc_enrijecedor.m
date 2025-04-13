function[] = calc_enrijecedor()
global h;
global fla;
global Vxrd;
global Vxsd;
global errov;
global kv;
global espac;
global o;
global pe
global d;

%mensagem de erro caso a mesa nao resista a força cisalhante
if Vxsd > Vxrd
    errov = 6;
end
if pe == 1
aux = espac/(h/10);
if aux >= 3
    kv = 5;
else
    o = (260/fla)^2;
    if aux > o
        kv = 5;
    else
        kv = 5 + 5/(aux^2);
    end
 end
else
   aux = espac/(d/10);
if aux >= 3
    kv = 5;
else
    o = (260/fla)^2;
    if aux > o
        kv = 5;
    else
        kv = 5 + 5/(aux^2);
    end
end
end


