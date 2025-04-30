function[] = Entrada_de_dados()
%fun��o para ler todos os dados de entrada comuns a todos os perfis
global Ncsd;
global Ntsd;
global Ncrd;
global Ntrd;
global Mxsd;
global Mysd;
global Vxsd;
global Vysd;
global errov;
global errorv;
global L;
global Lb;
global kx;
global ky;
global kz;
global E;
global G;
global fy;
global fu;
global ya1;
global ya2;
% global Cb1;
global Aux3;
global Aux4;
global pe;
global f4;
global Nsd;
global AuxT;

%limpando a vari�vel de erros
errov = 0;

%limpando a variavel que diz se o perfil � permitido
errorv = 'PERMITIDO';

% Aux3 - limitando o par�metro de controle de passagem obrigat�rio pelas rotinas de
% c�lculo de Cb. Ocorre quando o perfil tem esfor�o de flex�o, no que se
% refere a necessidade de abrir o formulario. Ver rotina de abertura do
% formul�rio de c�lculo de Cb na fun��o Calculo_rm()
Aux3=0;
% Aux4 - par�metro de controle de acesso ao formul�rio de c�lculo de Cb (para
% se��es submetidas � flex�o. Somente vai permitir abrir o formul�rio de
% c�lculo de Cb, se os dados referentes aos esfor�os, tipos de a�o,
% comprimentos das pe�as, coeficientes de seguran�a e estivierem preechicos
% de acordo com a voca��o do perfil. A atribui�ao do valor para Aux4 � fetia na fun��o Entrada_de_dados. 
% A verifica��o � feita na fun��o Bot�o _calcular.
% Ver fun��es Botao_calcular() e Botao_Selecionar (), Entrada_de_dados ().
Aux4=0;

% if pe==3
% AuxT=0; % N�o vai abrir o formu�rio de c�lculo do Par�metro B (item G.2.3 da...
       % ...NBR 8800/08). Deve acontecer toda primeira vez que o perfil T �
       % solicitado, para cada dimensionameneto ou quando o esfor�o de ...
       % ...momento fletor modificar de valor .
% else
% AuxT=0;
% end 

AuxT=0;% N�o vai abrir o formu�rio de c�lculo do Par�metro B (item G.2.3 da...
       % ...NBR 8800/08). Deve acontecer toda primeira vez que o perfil T �
       % solicitado, para cada dimensionameneto ou quando o esfor�o de ...
       % ...momento fletor modificar de valor .
                  
Nsd= str2double(get(findobj(gcf,'Tag','esf1'),'String')); % em kN
%diferenciar tra��o e compress�o
if str2double(get(findobj(gcf,'Tag','esf1'),'String'))>0;
    Ntsd = str2double(get(findobj(gcf,'Tag','esf1'),'String'));
    Ncsd = 0;
    Ncrd = 0;
else
    Ncsd = (-1)*str2double(get(findobj(gcf,'Tag','esf1'),'String'));
    Ntsd = 0;
    Ntrd = 0;
end

% Armazena os valores anteriores dos momentos nas dire��es x e y para
% verifica��o na cessidade de acessar as rotinas de c�lculo de Cb por mais
% de uma vez por valores dos momentos.
Mxsd1=Mxsd;
Mysd1=Mysd;

% Teste para saber se � a primeira vez que est� sendo executado o programa. Neste
% caso, caso seja necess�rio considerar a flex�o, ser� obrigat�rio chamar
% as rotinas de c�lculo de Cb e repectiva interface (CbTest.fig).
if isempty(Mxsd)
    Aux3=Aux3+1;
    AuxT=1;
end
Mxsd = str2double(get(findobj(gcf,'Tag','esf2'),'String')); % em kN m
Mysd = str2double(get(findobj(gcf,'Tag','esf4'),'String')); % em kN m
Vxsd = str2double(get(findobj(gcf,'Tag','esf3'),'String')); % em kN
Vysd = str2double(get(findobj(gcf,'Tag','esf5'),'String')); % em kN
L = str2double(get(findobj(gcf,'Tag','comp1'),'String')); % em cm
Lb = str2double(get(findobj(gcf,'Tag','comp4'),'String'));
kx = str2double(get(findobj(gcf,'Tag','comp2'),'String'));
ky = str2double(get(findobj(gcf,'Tag','comp3'),'String'));
kz = str2double(get(findobj(gcf,'Tag','comp5'),'String'));
E = str2double(get(findobj(gcf,'Tag','prop1'),'String'))/10; % em kN/cm2
G = str2double(get(findobj(gcf,'Tag','prop3'),'String'));
fy = str2double(get(findobj(gcf,'Tag','prop2'),'String'))/10; % kN/cm2
fu = str2double(get(findobj(gcf,'Tag','prop4'),'String'))/10; % kN/cm2
ya1 = str2double(get(findobj(gcf,'Tag','coef'),'String'));
ya2 = str2double(get(findobj(gcf,'Tag','coef2'),'String'));
% Cb1 = str2double(get(findobj(gcf,'Tag','esfcb'),'String'));

Cont_zero_esf()

if pe==1  % perfil I
    if f4==1 % perfil I e monossim�trico
        Mysd=0; % N�o tem momento em rela�ao a eixo y
    end
end

if pe==2 % perfil L - para o perfil L esta vers�o admite somente
    % solicita��es normais.
    Mxsd=0;
    Mysd=0;
    Vxsd=0
    Vysd=0   
end

if pe==3 % perfil T - admite somente esfor�o normal momento em torno de x...
        % ...e esfor�o em torno de y.
        Mysd=0;
        Vxsd=0;
end

%identificando quando o n�o � inserido um numero
if isnan(Ncsd) == 1;   
    Ncsd = 0;
end
%colocando zero, caso as solicita��es estejam vazias
if isempty(Ntsd) == 1
    Ntsd = 0;
end

if isempty(Mxsd) == 1
    Mxsd = 0;
end
if isempty(Mysd) == 1
    Mysd = 0;
end

% Aux3 - Par�metro auxiliar para c�lculo de Cb. Aux3=0 n�o necessita passar pelas
% rotinas de c�lculo de Cb, se diferente de zero, necessita.

if (Mxsd-Mxsd1)~=0
    Aux3=Aux3+1; % Aux3~=0 vai abrir o formul�rio de c�lculo de Cb
end

if (Mxsd-Mxsd1)~=0
    AuxT=1 % abre formul�rio Tipo_flex_T().
else
    AuxT=0 % n�o abre formul�rio Tipo_flex_T().
end


if pe~=3  % N�o � necess�rio fazer essa verifica��o caso o perfil seja T,
    % ...(pe=3) pois este perfil s� tabalha com momento em torno do eixo x
    % ...(NBR 8800.08, item G.2.3).
    
if (Mysd-Mysd1)~=0
    Aux3=Aux3+1;% Aux3~=0 vai abrir o formul�rio de c�lculo de Cb ou B
end
end

if isempty(Vxsd) == 1
    Vxsd = 0;
end
if isempty(Vysd) == 1
    Vysd = 0;
end

%exibindo msg caso alguma das op��es estejam vazias
if isempty(L)==1||isempty(Lb)==1||isempty(kx)==1||isempty(ky)==1||isempty(kz)==1||isempty(E)==1||isempty(G)==1
    errov = 1;
    errof ();
    Aux4=1; % n�o permitir� abrir o formul�rio de Cb (CbTest.m) na fun��o Calculo_rm()
           % chamada a partir das fun��es Botao_Calcular() e
           % Seleciona_com(), caso Aux4=1, o que significa que dados
           % necess�rios para o c�lculo de Cb, para se��es submetidas �
           % flex�o, n�o foram preechidos.
end
if isempty(fy)==1||isempty(fu)==1||isempty(ya1)==1||isempty(ya2)==1 %||isempty(Cb1)==1
    errov = 1;
    errof ();
    Aux4=1;
end
%exibindo msg caso alguma das op��es n�o sejam n�meros
if isnan(L)==1||isnan(Lb)==1||isnan(kx)==1||isnan(ky)==1||isnan(kz)==1||isnan(E)==1||isnan(G)==1
    errov = 1;
    errof ();
    Aux4=1;
end
if isnan(fy)==1||isnan(fu)==1||isnan(ya1)==1||isnan(ya2)==1% ||isnan(Cb1)==1
    errov = 1;
    errof ();
    Aux4=1;
   
end
%  if isnan(Mxsd)==1
%  Mxsd=0;
%  end  
%  if isnan(Mysd)==1
%  Mysd=0;
%  end  
%  if isnan(Vxsd)==1
%  Vxsd=0;
%  end 
%  if isnan(Vysd)==1
%  Vysd=0;
%  end
end