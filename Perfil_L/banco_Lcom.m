function [] = banco_Lcom()
global f1;
global L_lam2;
global d;
global h;
global tf;
global tw;
global bf;
global Ag;
global Ix;
global Iy;
global ix;
global iy;
global iz;
global Wx;
global Wy;
global m;
global xg;
global perfilname;
global hPopup;
global hSTD;

% %valor numerico correspondente ao perfil marcado pelo usuario na lista
% marca = get(findobj(gcf,'Tag','popupmenu2'),'Value');
% %salvando o nome do perfil da lista
% b = get(findobj(gcf,'Tag','popupmenu2'),'String');
% perfilname = b(marca);

% Identficação e atribuíçâo às variáveis hSTD e hPopup dos...
...identificadores dos objetos pertencentes a...
    ....interface STD (formulário inicial)Esse procedimento é necessário...
    ... para que as informações relacionadas aos dados do perfis sejam ...
    ... utilzadas já que existe um outro formulário aberto e esse último...
    ...(ct) é a interface (formulário) corrente.
hSTD = findobj('Type', 'figure', 'Name', 'STD'); % Itendifica em hSTD o ...
...da interface/formulário em que está apresentado/vinculado o componente...
    ....popupmenu2 que contem a lista de perfis cadastrados
hPopup = findobj(hSTD, 'Tag', 'popupmenu2'); % Identifica e informa que...
... componente popupmenu2 está vinculado ao formulário STD (atribuído a...
    ...variável hSTD). Este componente foi identficado como a variável...
    ...hPopup.

%valor numérico correspondente ao perfil marcado pelo usuario na lista
% marca = get(findobj(cfg,'Tag','popupmenu2'),'Value');Número de ordem...
...ativo na lista hPopup.
marca = get(hPopup, 'Value');

%salvando o nome do perfil da lista
% b = get(findobj(cfg,'Tag','popupmenu2'),'String');
b = get(hPopup, 'String');

perfilname = b(marca);

       if f1 == 1;
%                 %cada par ordenado corresponde a um par linha coluna da
%                     %matriz de banco de dados
%                     d = L_lam2(marca,2);
%                     tf = L_lam2(marca,6);
%                     tw = L_lam2(marca,4);
%                     bf = L_lam2(marca,7);
%                     Ag = L_lam2(marca,3);
%                     Ix = L_lam2(marca,9);
%                     Iy = L_lam2(marca,13);
%                     ix = L_lam2(marca,11);
%                     iy = L_lam2(marca,15);
%                     Wx = L_lam2(marca,10);
%                     Wy = L_lam2(marca,14);
%                     Zy = L_lam2(marca,16);
%                     m = L_lam2(marca,1);
                    
              
       else
                    d = L_lam2(marca,2);
                    tf = L_lam2(marca,6);
                    tw = L_lam2(marca,4);
                    bf = L_lam2(marca,7);
                    Ag = L_lam2(marca,3);
                    Ix = L_lam2(marca,9);
                    Iy = L_lam2(marca,13);
                    ix = L_lam2(marca,11);
                    iy = L_lam2(marca,15);
                    iz = L_lam2(marca,20);
                    Wx = L_lam2(marca,10);
                    Wy = L_lam2(marca,14);
                    m = L_lam2(marca,1);
                    xg = L_lam2(marca,19);
                
       end
       
       %imprimindo os valores do banco de dados nos seus respectivos
       %espaços na interface grafica
       
           if f1==1;
%                 set(findobj(gcf,'Tag','dimc1'),'String',d);
%                 set(findobj(gcf,'Tag','dimc2'),'String',tf)
%                 set(findobj(gcf,'Tag','dimc3'),'String',tw);
%                 set(findobj(gcf,'Tag','dimc4'),'String',bf);
%                 set(findobj(gcf,'Tag','dimc7'),'String',Ag)
%                 set(findobj(gcf,'Tag','dimc8'),'String',Ix);
%                 set(findobj(gcf,'Tag','dimc9'),'String',Iy);
%                 set(findobj(gcf,'Tag','dimc10'),'String',ix);
%                 set(findobj(gcf,'Tag','dimc11'),'String',iy);
%                 %set(findobj(gcf,'Tag','dimc12'),'String',J);
%                 set(findobj(gcf,'Tag','dimc13'),'String',Wx);
%                 set(findobj(gcf,'Tag','dimc14'),'String',Wy);
%                 %set(findobj(gcf,'Tag','dimc15'),'String',Zx);
%                 set(findobj(gcf,'Tag','dimc16'),'String',Zy);
%                 set(findobj(gcf,'Tag','dimc17'),'String',m);
           else
                set(findobj(gcf,'Tag','dimc1'),'String',d);
                set(findobj(gcf,'Tag','dimc2'),'String',tf)
                set(findobj(gcf,'Tag','dimc3'),'String',tw);
                set(findobj(gcf,'Tag','dimc4'),'String',bf);
                set(findobj(gcf,'Tag','dimc5'),'String',xg);
                set(findobj(gcf,'Tag','dimc7'),'String',Ag)
                set(findobj(gcf,'Tag','dimc8'),'String',Ix);
                set(findobj(gcf,'Tag','dimc9'),'String',Iy);
                set(findobj(gcf,'Tag','dimc10'),'String',ix);
                set(findobj(gcf,'Tag','dimc11'),'String',iy);
                set(findobj(gcf,'Tag','dimc12'),'String',iz);
                set(findobj(gcf,'Tag','dimc13'),'String',Wx);
                set(findobj(gcf,'Tag','dimc14'),'String',Wy);
                %set(findobj(gcf,'Tag','dimc15'),'String',Zx);
                %set(findobj(gcf,'Tag','dimc16'),'String',Zy);
                set(findobj(gcf,'Tag','dimc17'),'String',m);
           end
           
           
           
      
                 
    

