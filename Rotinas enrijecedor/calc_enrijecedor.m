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

% Esta função calcula um novo valor para kv (parâmetro utilizado no..,
% cálculo do esforço cortante resistente de cálculo, em conformidade com
% o item 5.4.3.1.1 da NBR 8800/08.) Trata-se um novo valor que leverá em
% conta a presença do enrijedor espaçado do valor espac.

% Mensagem de erro caso a mesa não resista a força cisalhante...
% Obseve que a verificação abaixo se refere a força cortate horizontal,...
% resistida pela mesa do operfil. Neste caso não está previsto a colocação.
% de enrijecedores para reforçar as mesas no calculo do cortante.
if Vxsd > Vxrd
    errov = 6;
end
if pe == 1 % Trata-se de um perfil I
aux = espac/(h/10); % Item 5.4.3.1 da NBR 8800.08
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
else % trata-se de pefil C
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


