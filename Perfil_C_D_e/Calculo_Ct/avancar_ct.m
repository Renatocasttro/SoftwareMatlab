function[] = avancar_ct()
global avan_ct;
global d;
global t;
global dp;
global n;
global ec;
global lc;
global tw;
global xg;
global errov;
global tfs;
global tfi;
global bfs;
global bfi;
global tf;
global bf;
global pe;
global f1;
global f2;
global f4
global CtTv;% tipo de vículo no extremo das barras no cálculo de Ct(pushbuttons):...
% se: 
       
global TpCt;% forma de conexão das extremidades do perfil na tração (radionbuttons):...
       %...Todos os elemetos conectados(50); ligação somente através de...
       %...soldas transverais (51);soldas longitudinais: Ct=1-(ec/lc)(52).
global h;
global Ag;
global AgR; % área bruta do perfil para efeito do cálculo de Ct
global Ct;
global ct_otm; % parâmetro de controle de otimização. Vale zero (0)...
...na primeira iteração;1 na segunda iteração em diante.
global aux2;
global matriz_tracao % armazena parâmetros das extremidades dos perfis na 
                     % tração (dp-diâmetro de parafusos;
                     % perfil;n - número de parafusos na vertical da seção;
                     % lc - distãncia entre parafusos.
global otm;
global i;
global num_rows;
global hPopup;

Ct='';
avan_ct=0;

while avan_ct~=5
%quando avan=1 significa que o botao avançar foi apertado, ao inves de
%fechar a interface
% d = str2num(set(findobj(gcf,'Tag','edit9'),'String'));
% t e tw são as espessuras da alma para Perfil I e C.Para perfis L a
% espessura da aba vertical.

% t = str2num(set(findobj(gcf,'Tag','edit10'),'String'));
% diâmetro do parafuso.
dp = str2double(get(findobj(gcf,'Tag','dimc59'),'String'));
% número de parafusos na vertical. 
n = str2double(get(findobj(gcf,'Tag','dimc60'),'String'));
% ec=xg;
% ec=str2num(set(findobj(gcf,'Tag','dimc50'),'String'));
% comprimento da ligação.
lc = str2double(get(findobj(gcf,'Tag','dimc51'),'String'));

% Início das verificações de que todas as informações solicitadas e
% necessárias para o cálculo do Ct foram fornecidas.
disp(['Valor de lc antes do if: ', num2str(lc)]);

if isempty(lc)==1||isempty(dp)==1||isempty(n)==1
    errov=11;
    errof ();
    avan_ct=0;
else 
    avan_ct = 1;
    pause(0.1)   
end

if isnan(lc)==1 %||isnan(dp)==1||isnan(n)==1
    errov=11;
    errof ();
    avan_ct=0;
else
    avan_ct=avan_ct+1;   
% neste caso apresenta-se uma inconsistência geométrica na disponsiçao dos
% parafusos/soldas e a geometria do perfil
% Valor de 3.5 mm foi adotado em conformidade com as recomendaões de
% FACURY, SILVA & CALDAS, 2016, p. 101.
dpR=(dp+3.5);% em mm
% dpR é o diâmetro do parafuso "real" (dp acrescido de um valor resitual
% devido ao processo de prefuração.
% dl é a altura total mínima que deve ter o perfil para que se possa
% colocar a quantidade de parafusos desejada (n).
% distância mínima entre parafusos 3*dp e distância mínima entre parafusos e bordo
% externo dp. Em conformidade com o item 6.3.9 da NBR 8800.24, pág. 91
if n==1
    dl=2*dpR; % para 1 parafuso
else
    if n==2
        dl=5*dpR;  % dois parafusos
    else
        dl=2*dpR+(n-1)*3*dpR; % mais de dois parafusos       
    end
end

if d<dl;
    errov=18; %emite informação incosistência
    errof();
    avan_ct=0;
% e caso o sitema estiver fazendo uma otimização o perfil em questão não
% será considerado.
    %if ct_otm ==1
   % Selecionar_Com_SegCham() % passará a verificar o próximo perfil
   % end
else
    avan_ct = avan_ct+1;
    pause(0.1); 
end

if isempty(TpCt)==1 %caso de não seleção dos botões de caso de Ct;
    errov=19;
    errof();
    avan_ct=0;  
else 
    avan_ct=avan_ct+1;
    pause(0.1);
end

% if ct_otm ~= 0
% else
%     avan_ct=avan_ct+1;
% end

end

% final dos procedimentos de verificação de consistência das informações
% fornecidas no formulário Cálculo_De_Ct.
t=tw;
if pe==1 %perfil I - vai calcular a posição de ec para meio perfil I
    if f1==1 % perfil I soldado 
     if f4==1 % pefil soldado monossimétrico
       tfse=tfs;
       tfie=tfi;
       bfse=bfs;
       bfie=bfi;
       AgR=Ag
     else   % perfil I soldado duplamente simétrico
       tfse=tf;
       tfie=tf;
       bfse=bf;
       bfie=bf;
       AgR=Ag     
     end
    end
    if f2==1 %perfil I laminado (duplamente simétrico)
       tfse=tf;
       tfie=tf;
       bfse=bf;
       bfie=bf;
       AgR=Ag;
    end
    if CtTv==1 % perfil I duplamente recortado no apoio
       AgR=h*tw/100;  %em cm2
       Tfse=0;
       bfse=0;
       Tfie=0;
       bfie=0;
    end
    
    if CtTv==2 % perfil I parcialmente recortado no apoio (parte superior)
       AgR=Ag-(bfse*tfse/100); %em cm2
       Tfse=0;
       bfse=0;
       
    end
    % CtTv==3 quando o perfil I não é recortado no apoio.
    % O parâmetro CtTv, foi utilizdo até o momento para o perfil I.
    % para os perfis C,L e T, só existe uma opção.
    % valor de ec para meio perfil I (soldado ou laminado) em mm
    ec=abs(((bfse*0.5)*tfse*(bfse*0.25)+tfie*(bfie*0.5)*(bfie*0.25)+(tw*0.5*h)*(tw*0.25))/(bfse*0.5*tfse+bfie*0.5*tfie+h*0.5*tw)-tw*0.5);
else
    if pe==3 % trata-se de perfil tipo T
        xct=(bf*0.5*(bf*0.5)+(d*tw*0.5)*(tw*0.5))/((bf*0.5*tf)+(tw*0.5*d));
        ec=xct-0.5*tw;
        AgR=Ag;
    else % trata-se de perfill tipo C ou L.
    ec=xg; % para os perfis C, L.
    AgR=Ag;
    end
    
end
% XXXXXXXX
% A versão da NBR 8800/24, pág. 41 restirou a limitação de Ct está não...
....poder ser maior que 0.9 e não permite o uso de perfis com Ct...
....menor de 0.6. Neste program foi mantido a restrição.
Ct1=1-ec/lc;
if Ct1<0.6
    errov=9;
    errof()
    avan_ct=0
else
     avan_ct=avan_ct+1
end
% XXXXXXXX
if otm==1 % está em curso um processo de otmização
   if avan_ct~=5
   % se não atender as condições de extremidade, vai pular
   % para o próximo perfil da lista.     
% força a lista (popupmenu2) ir para a próxima linha (próximo...
...número de ordem)
        i=i+1;
        set(findobj(hPopup,'Tag','popupmenu2'),'value',i);
        % Seleciona o banco de acordo com o tipo de perfil
        Selecionar_Banco_Com(); 
        if (i+1)>num_rows
            break
        end
   end
else
     break
       
end
%XXXXXXXXXX
set(findobj(gcf,'Tag','text25'),'String',i)
end   % Final do loop while


if avan_ct~=5 % a iteração percorreu todo o banco de perfis e não...
    ... neuhum deles que fosse compatível com os dados de conexão de...
        ... extremidades (diâmetro dos parafusos, número de parafusos...
        ... mesma seção e distância entre linhas de parafusos.
   
    set(set(findobj(gcf,'Tag','erroCt'),'String','Verifique dos dados de extremidade fornecidos e processe novamente'))
    pause (0.5)
end
if avan_ct == 5; % é possivel continuar
    set(findobj(gcf,'Tag','pushbutton40'),'enable','on')
    set(findobj(gcf,'Tag','erroCt'),'String','Tecle AVANÇAR')
    pause(0.5) 
end

set(findobj(gcf,'Tag','text23_Ct'),'String','Um momento');
set(findobj(gcf,'Tag','text23_Ct'),'ForegroundColor','Red');
% Armazenamento em matriz_tracao dos valores de dp,n,lc quando não estiver
% fazendo otimização perfis.

if ct_otm ==0
    aux2=i;
    matriz_tracao(i,1)=1;
    matriz_tracao(i,2)=ec;
    matriz_tracao(i,3)=n;
    matriz_tracao(i,4)=dp;
    matriz_tracao(i,5)=lc; 
    
end

end

