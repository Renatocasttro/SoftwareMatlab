function[] = Selecionar_com ()
global pe;
global selecao;

%significa que o botao selecionar foi acionado e portanto os valores usados
%deverão ser os fornecidos pelo fabricante
selecao = 1;

Entrada_de_dados();

switch pe;
    case 1;
        banco_Icom();
        Dimensionarperfil_I();
    case 2;
        banco_Lcom();
        Dimensionarperfil_L();
    case 3;
        banco_Tcom();
        Dimensionarperfil_T();
    case 4;
        banco_Ccom();
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