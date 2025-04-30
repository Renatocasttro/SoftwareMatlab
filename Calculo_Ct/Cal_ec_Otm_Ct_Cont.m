function[] = Cal_ec_Otm_Ct_Cont()
% função utilizada para o cálculo dos parâmetros necessários para calcular
% Ct quanto iniciado o processo de otimizaçao, após a primeira interação
% sem necessidade a abrir novamente os formulário de calculo de ct a cada
% iteração.

global d;
global t;
global dp;
global n;
global ec;
global tw;
global xg;
global tfs;
global tfi;
global bfs;
global bfi;
global tf;
global bf;
global pe;
global f1;
global f2;
global f4;
global CtTv;% tipo de vículo no extremo das barras no cálculo de Ct
global h;
global Ag;
global AgR; % área bruta do perfil para efeito do cálculo de Ct
global errov;
global avan_ct;
global lc;
global Ct;
global i; % contador do loop da otimização
global matriz_tracao;
global num_rows;
global Ct1;
%quando avan_Ct=1 significa que o botao avançar foi apertado, ao inves de
%fechar a interface
% d = str2num(set(findobj(gcf,'Tag','edit9'),'String'));
% t e tw são as espessuras da alma para Perfil I e C.Para perfis L a
% espessura da aba vertical.
avan_i=0; % parâmetro de controle de atendimento das condições geométricas
          % das extremidades (vínculos)dos perfis na tração.
t=tw;

while avan_i~=2
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
    dl=2*dpR; % para 1 parasufo
else
    if n==2
        dl=5*dpR  % dois parafusos
    else
        dl=2*dpR+(n-1)*3*dpR % mais de dois parafusos       
    end
end
    
if d<dl; %  em mm
    avan_i=0;
else
    avan_i=avan_i+1;
end
   if pe==1 %perfil I - vai calcular a posição de ec para meio perfil I
      if f1==1 % perfil I soldado
          if f4==1 % Perfil soldado monossimétrico
             tfse=tfs;
             tfie=tfi;
             bfse=bfs;
             bfie=bfi;
             AgR=Ag;
          else
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
         AgR=Ag
     end
     if CtTv==1 % perfil I duplamente recortado no apoio
         AgR=h*tw/100;  %em cm2
         tfse=0;
         bfse=0;
         tfie=0;
         bfie=0;
     end
     if CtTv==2 % perfil I parcialmente recortado no apoio (parte superior)
         AgR=Ag-(bfse*tfse/100); %em cm2
         tfse=0;
         bfse=0;     
     end

    % valor de ec para meio perfil I (soldado ou laminado)
    ec=abs(((bfse*0.5)*tfse*(bfse*0.25)+tfie*(bfie*0.5)*(bfie*0.25)+(tw*0.5*h)*(tw*0.25))/(bfse*0.5*tfse+bfie*0.5*tfie+h*0.5*tw)-tw*0.5);
   else % para perfis (C,L)
    if pe==3 % trata-se de perfil tipo T
        xct=(bf*0.5*(bf*0.5)+(d*tw*0.5)*(tw*0.5))/((bf*0.5*tf)+(tw*0.5*d));
        ec=xct-0.5*tw;
        AgR=Ag;
    else % trata-se de perfill tipo C ou L.
    ec=xg; % para os perfis C, L.
    AgR=Ag;
    end
   end
   Ct1=1-ec/lc;
%XXXXXXXXXX
% A versão da NBR 8800/24, pág. 41 restirou a limitação de Ct está não...
....poder ser maior que 0.9 e não permite o uso de perfis com Ct...
....menor de 0.6. Neste program foi mantido a restrição. 
   if Ct1<0.6
       avan_i=0;
   else
       avan_i=avan_i+1;
       
   end
%XXXXXXXXXXXXXXXXX   
   if avan_i==0 % se não atender as condições de extremidade, vai pular
                % para o próximo perfil.
        if (i+1)>num_rows
            disp('Condição de saída do loop atendida no início');
            break;
        else
        i=i+1;
        % continue % Pula para a próxima iteração do loop for
        % força a lista (popupmenu2) ir para a próxima linha
        set(findobj(gcf,'Tag','popupmenu2'),'value',i);
        %banco_Icom();
        % Seleciona o banco de acordo com o tipo de perfil
        Selecionar_Banco_Com(); 
        end
   end
   
   end

% armazena as informações dos vículos nas extremiddes dos perfis em
% matriz_tracao.
    matriz_tracao(i,1)=i;
    matriz_tracao(i,2)=ec;
    matriz_tracao(i,3)=n;
    matriz_tracao(i,4)=dp;
    matriz_tracao(i,5)=lc;
    matriz_tracao(i,6)=Ct1;
    
 disp(i);
    


                


