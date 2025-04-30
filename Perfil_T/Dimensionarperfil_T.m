function [] = Dimensionarperfil_T()
global f1;
global Ntsd;
global Aux3;
global kv;
global TB; % Par�metro auxiliar de c�lculo que serve para identficar...
           %...se a mesa est� comprimida (TB=1) ou tracionada(TB=2).
global B;
global d;
global Lb;
global Iy;
global J;
global AuxT;


if f1 == 1;
    P_GEO_T_SOL();
else
    P_GEO_T_LAM();
end

Esbeltez_global();

if Ntsd > 0 
    Tracao_T();
else
    Compressao_T();
end
%calculo_rm(); n�o � necess�rio para o perfil T


if AuxT==1
   
     % Abre formul�rio que permite o c�lculo do p�r�metro B, necess�rio
     % para c�lculo de Mrd (item G.2.3 da NBR 8800.08). Somente abre esta
     % interface caso haja momento fletor a ser considerado ou se
     % tiver ocorrido altera�oes neste momento. Ver valores de Aux3 em
     % entrada de dados.
    % movegui(Tipo_flex_T, 'center');
      movegui(Tipo_flex_T,[285,255])
    % Espera at� que o formul�rio CBteste seja fechado
      waitfor(Tipo_flex_T);
      AuxT=0;
end

% Aten��o: O comando if, a seguir, permete o c�lculo do par�metro B,...
% ...para os casos em que o formul�rio Tipo_fex_T n�o tenha sido aberto,
% definido de acordo com a condi��o de flex�o do perfil, conforme o item
% G.2.3 da NBR 8800.08. Se a alma estiver comprimida, TB=1  e B ser�
% positivo. Se a alma estiver tracionada, TB=2 e B ser� negativo. Observe
% que o valor de B positivo, influencia positivamente (melhorando o valor
% de Mrd, caso contr�rio (alma comprimida) B ser� negativo e diminuir� o
% valor de Mrd (veja equa��o no item G.2.3 da NBR 8800.08.
if TB==1 % alma do perfil T, tracionada e mesa comprimida.
 B=(2.3*d/Lb)*sqrt(Iy/J); % alma tracionada(item G2.3, p�g. 131,NBR8800.08)   
else 
 B=-(2.3*d/Lb)*sqrt(Iy/J);% alma comprimda (item G2.3, p�g. 131,NBR8800.08)
end

esbeltez_T();
flexao_T();
momentomaximo_T();
flexao_composta_T();
kv=1.2; % par�metro para c�lculo da se��o T ao cisalhameto (item 5.4.3.2
        % da NBR 8800/08).
cisalhamento_T()
Resultados_T();