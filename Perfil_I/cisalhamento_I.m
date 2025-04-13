function[] = cisalhamento_I()
global f4;
global fla;
global flm;
global E;
global fy;
global d;
global tw;
global tf;
global bf;
global ya1;
global Vxrd;
global Vyrd;
global cisxp;
global cisxr;
global cisyp;
global cisyr;
global kv;

%calculo dos parametros de esbeltez para cisalhamento em Y
cisyp = 1.10*sqrt(kv*E/fy);
cisyr = 1.37*sqrt(kv*E/fy);


%eixo Y
Aw = d*tw/100;
if fla <= cisyp
    Vyrd = 0.6*Aw*fy/ya1;
else if fla > cisyr
        Vyrd = 1.24*((cisyp/fla)^2)*0.6*Aw*fy/ya1;
    else
        Vyrd = (cisyp/fla)*0.6*Aw*fy/ya1;
    end
end

%eixo X
%calculo dos parametros de esbeltez para cisalhamento em X
cisxp = 1.10*sqrt(1.2*E/fy);
cisxr = 1.37*sqrt(1.2*E/fy);

%perfil monossimétrico
if f4 ==1
    Vxrd = '(*)';
else
    Aw = 2*bf*tf/100;
    if flm <= cisxp
        Vxrd = 0.6*Aw*fy/ya1;
    else if flm > cisxr
            Vxrd = 1.24*((cisxp/flm)^2)*0.6*Aw*fy/ya1;
        else
            Vxrd = (cisxp/flm)*0.6*Aw*fy/ya1;
        end
    end
end
    
    