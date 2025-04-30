function[] = cisalhamento_T()
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
global errov;

if (d/tw)<= 260  % limite imposto no item 5.4.3.3 da NBR 8800/08
    % para perfis T submetidos a cisalhameto.
%calculo dos parametros de esbeltez para cisalhamento em Y.
% item 5.4.3.1.1 da NBR 8800/08
cisyp = 1.10*sqrt(kv*E/fy);
cisyr = 1.37*sqrt(kv*E/fy);


%eixo Y. Plano perpendicualar a mesa (na alma do perfil T).
% A NBR 8800/08 não prevê cisalhamento para perfil T para o plano no eixo x
%no plano da mesa. Item 5.4.3.3.
Aw = d*tw/100;
if fla <= cisyp
    Vyrd = 0.6*Aw*fy/ya1;
else if fla > cisyr
        Vyrd = 1.24*((cisyp/fla)^2)*0.6*Aw*fy/ya1;
    else
        Vyrd = (cisyp/fla)*0.6*Aw*fy/ya1;
    end
end
else
    errov=21;
    errof();   
end
end
    
    