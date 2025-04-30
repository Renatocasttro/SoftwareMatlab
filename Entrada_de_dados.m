function[] = Entrada_de_dados()
%função para ler todos os dados de entrada comuns a todos os perfis
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

%limpando a variável de erros
errov = 0;

%limpando a variavel que diz se o perfil é permitido
errorv = 'PERMITIDO';

% Aux3 - limitando o parâmetro de controle de passagem obrigatório pelas rotinas de
% cálculo de Cb. Ocorre quando o perfil tem esforço de flexão, no que se
% refere a necessidade de abrir o formulario. Ver rotina de abertura do
% formulário de cálculo de Cb na função Calculo_rm()
Aux3=0;
% Aux4 - parâmetro de controle de acesso ao formulário de cálculo de Cb (para
% seções submetidas à flexão. Somente vai permitir abrir o formulário de
% cálculo de Cb, se os dados referentes aos esforços, tipos de aço,
% comprimentos das peças, coeficientes de segurança e estivierem preechicos
% de acordo com a vocação do perfil. A atribuiçao do valor para Aux4 é fetia na função Entrada_de_dados. 
% A verificação é feita na função Botão _calcular.
% Ver funções Botao_calcular() e Botao_Selecionar (), Entrada_de_dados ().
Aux4=0;

% if pe==3
% AuxT=0; % Não vai abrir o formuário de cálculo do Parâmetro B (item G.2.3 da...
       % ...NBR 8800/08). Deve acontecer toda primeira vez que o perfil T é
       % solicitado, para cada dimensionameneto ou quando o esforço de ...
       % ...momento fletor modificar de valor .
% else
% AuxT=0;
% end 

AuxT=0;% Não vai abrir o formuário de cálculo do Parâmetro B (item G.2.3 da...
       % ...NBR 8800/08). Deve acontecer toda primeira vez que o perfil T é
       % solicitado, para cada dimensionameneto ou quando o esforço de ...
       % ...momento fletor modificar de valor .
                  
Nsd= str2double(get(findobj(gcf,'Tag','esf1'),'String')); % em kN
%diferenciar tração e compressão
if str2double(get(findobj(gcf,'Tag','esf1'),'String'))>0;
    Ntsd = str2double(get(findobj(gcf,'Tag','esf1'),'String'));
    Ncsd = 0;
    Ncrd = 0;
else
    Ncsd = (-1)*str2double(get(findobj(gcf,'Tag','esf1'),'String'));
    Ntsd = 0;
    Ntrd = 0;
end

% Armazena os valores anteriores dos momentos nas direções x e y para
% verificação na cessidade de acessar as rotinas de cálculo de Cb por mais
% de uma vez por valores dos momentos.
Mxsd1=Mxsd;
Mysd1=Mysd;

% Teste para saber se é a primeira vez que está sendo executado o programa. Neste
% caso, caso seja necessário considerar a flexão, será obrigatório chamar
% as rotinas de cálculo de Cb e repectiva interface (CbTest.fig).
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
    if f4==1 % perfil I e monossimétrico
        Mysd=0; % Não tem momento em relaçao a eixo y
    end
end

if pe==2 % perfil L - para o perfil L esta versão admite somente
    % solicitações normais.
    Mxsd=0;
    Mysd=0;
    Vxsd=0
    Vysd=0   
end

if pe==3 % perfil T - admite somente esforço normal momento em torno de x...
        % ...e esforço em torno de y.
        Mysd=0;
        Vxsd=0;
end

%identificando quando o não é inserido um numero
if isnan(Ncsd) == 1;   
    Ncsd = 0;
end
%colocando zero, caso as solicitações estejam vazias
if isempty(Ntsd) == 1
    Ntsd = 0;
end

if isempty(Mxsd) == 1
    Mxsd = 0;
end
if isempty(Mysd) == 1
    Mysd = 0;
end

% Aux3 - Parâmetro auxiliar para cálculo de Cb. Aux3=0 não necessita passar pelas
% rotinas de cálculo de Cb, se diferente de zero, necessita.

if (Mxsd-Mxsd1)~=0
    Aux3=Aux3+1; % Aux3~=0 vai abrir o formulário de cálculo de Cb
end

if (Mxsd-Mxsd1)~=0
    AuxT=1 % abre formulário Tipo_flex_T().
else
    AuxT=0 % não abre formulário Tipo_flex_T().
end


if pe~=3  % Não é necessário fazer essa verificação caso o perfil seja T,
    % ...(pe=3) pois este perfil só tabalha com momento em torno do eixo x
    % ...(NBR 8800.08, item G.2.3).
    
if (Mysd-Mysd1)~=0
    Aux3=Aux3+1;% Aux3~=0 vai abrir o formulário de cálculo de Cb ou B
end
end

if isempty(Vxsd) == 1
    Vxsd = 0;
end
if isempty(Vysd) == 1
    Vysd = 0;
end

%exibindo msg caso alguma das opções estejam vazias
if isempty(L)==1||isempty(Lb)==1||isempty(kx)==1||isempty(ky)==1||isempty(kz)==1||isempty(E)==1||isempty(G)==1
    errov = 1;
    errof ();
    Aux4=1; % não permitirá abrir o formulário de Cb (CbTest.m) na função Calculo_rm()
           % chamada a partir das funçôes Botao_Calcular() e
           % Seleciona_com(), caso Aux4=1, o que significa que dados
           % necessários para o cálculo de Cb, para seções submetidas à
           % flexão, não foram preechidos.
end
if isempty(fy)==1||isempty(fu)==1||isempty(ya1)==1||isempty(ya2)==1 %||isempty(Cb1)==1
    errov = 1;
    errof ();
    Aux4=1;
end
%exibindo msg caso alguma das opções não sejam números
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