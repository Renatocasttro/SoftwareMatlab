function[]= Botao_calcular ()
global pe;
global selecao;
global perfilname;

%limpando o nome do perfil
perfilname = '';

%significa que o botao selecionar nao foi acionado e portanto os valores de
%propriedade geométrica devem ser calculados pelo programa
selecao = 0;
Entrada_de_dados();
Dimensoes_perfis();

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
end

%buscando algum erro de calculo
errof ();
