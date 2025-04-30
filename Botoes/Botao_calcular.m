function[]= Botao_calcular ()
global pe;
global selecao;
global perfilname;
global Aux4;
global errov;
global Aux5;

%limpando o nome do perfil
perfilname = '';

%significa que o botao selecionar nao foi acionado e portanto os valores de
%propriedade geom�trica devem ser calculados pelo programa
selecao = 0;
Entrada_de_dados(); % Esfor�os, comprimento de flambagem, coeficientes de 
           % seguran�a, tipos de perfil.
if Aux4==0; % Verifica de todos os dados gerais do c�lculo (Esfor�os, 
    %comprimentos de flambagem, coeficientes de seguran�a, tipo de a�o,
    % m�dulo de elastacidade e tens�es foram pereenchidos. S� continua 
    % o processamento se estas informa��es estiverem preenchidas.
Dimensoes_perfis(); % geometria dos perfis

if Aux5==0;% Verifica de todos os dados geom�tricos dos perfis (alturas e
    % espessuras dos perfis) est�o preenchidos. S� continua 
    % o processamento se estas informa��es estiverem preenchidas. Ver 
    % fun��es Botao_calcular(), Dimensoes_I (L,T,C, etc).
    
switch pe;
    case 1;
        Dimensionarperfil_I();
    case 2;
        Dimensionarperfil_L();
    case 3;
        Dimensionarperfil_T();
    case 4;
        Dimensionarperfil_C();
    case 5;
    case 6;
    case 7;
    case 8;
    case 9;
    case 10;
    case 11;
    case 12;
    case 13;
    case 14;
    Aux4=0;
    Aux5=0;
end

%buscando algum erro de calculo
errof ();
else
    errov = 1;
    errof (); 
end
else
    errov = 1;
    errof ();
end
end
    
