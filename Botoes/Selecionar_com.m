function[] = Selecionar_com ()
global pe;
global selecao;
global Aux4; % ver função Entrada_de_dados()
global errov;
global i;
global otm



%significa que o botao selecionar foi acionado e portanto os valores usados
%deverão ser os fornecidos pelo fabricante
selecao = 1;
if otm==1 % se estiver em andamento o processo de otimização, não...
          % ...será necessário ler os dados novamente na primeira...
          % ...interação pois eles já foram lidos no início do processo...
          % ...de otimização na função Botao_otimizar().
    if i>1
       Entrada_de_dados(); % a partir da segunda iteração o sitema deve...
                 % ...ler dos dados corresóndentes a novo perfil...
                 % ...analisado em cada ciclo iterativo.
    end
else
    Entrada_de_dados();    
end
if Aux4==0
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
       
    Aux4=0;                   
end
else
    errov = 1;
    errof ();
end