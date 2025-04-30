function[] = flexao_assimetrica_I()
global f4;
global Mxrd;
global Mxsd;
global Myrd;
global Mysd;
global fleassi;
global fla;
global flar;

% Rotina desenvolvida para facilitar a exibição, no relatório, de parâmetros
% relacionados à atuação de momentos fletores atuantes de forma assimétricas,
% resultando em componentes deste momentos em relação aos eixos x e y. 

if f4 ==1;
    fleassi = Mxsd/Mxrd;
else
    if fla > flar
        fleassi = Mxsd/Mxrd;
    else
        fleassi = Mxsd/Mxrd+Mysd/Myrd;
    end
end
       