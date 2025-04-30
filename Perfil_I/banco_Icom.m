function [] = banco_Icom()
global f1;
global f2;
global f4;
global f5;
global perfilname;
global IHLdsim2;
global IHSdsim2;
global IHSmsim2;
global d;
global h;
global tf;
global tw;
global bf;
global tfs;
global tfi;
global bfs;
global bfi;
global Ag;
global Ix;
global Iy;
global ix;
global iy;
global J;
global Wx;
global Wy;
global Zx;
global Zy;
global m;
global fla;
global flm;
global Wsup;
global Winf;
global Ysup;
global Yinf;
global hPopup;
global hSTD;
% global b;

% % Identficação e atribuíçâo às variáveis hSTD e hPopup dos...
% ...identificadores dos objetos pertencentes a...
%     ....interface STD (formulário inicial)Esse procedimento é necessário...
%     ... para que as informações relacionadas aos dados do perfis sejam ...
%     ... utilzadas já que existe um outro formulário aberto e esse último...
%     ...(ct) é a interface (formulário) corrente.
hSTD = findobj('Type', 'figure', 'Name', 'STD'); % Itendifica em hSTD o ...
% ...da interface/formulário em que está apresentado/vinculado o componente...
%     ....popupmenu2 que contem a lista de perfis cadastrados
hPopup = findobj(hSTD, 'Tag', 'popupmenu2'); % Identifica e informa que...
% ... componente popupmenu2 está vinculado ao formulário STD (atribuído a...
%     ...variável hSTD). Este componente foi identficado como a variável...
%     ...hPopup.

%valor numérico correspondente ao perfil marcado pelo usuario na lista
% marca = get(findobj(cfg,'Tag','popupmenu2'),'Value');Número de ordem...
...ativo na lista hPopup.
marca = get(hPopup, 'Value'); % ver explicações deste procedimento na ...
....função INCIAL.

%salvando o nome do perfil da lista
% b = get(findobj(cfg,'Tag','popupmenu2'),'String');
b = get(hPopup, 'String');

perfilname = b(marca);

       if f1 == 1;
                if f4 == 1;
                    d = IHSmsim2(marca,2);
                    tfs = IHSmsim2(marca,6);
                    tfi = IHSmsim2(marca,7);
                    tw = IHSmsim2(marca,4);
                    bfs = IHSmsim2(marca,8);
                    bfi = IHSmsim2(marca,9);
                    Ag = IHSmsim2(marca,3);
                    Ix = IHSmsim2(marca,11);
                    Iy = IHSmsim2(marca,16);
                    ix = IHSmsim2(marca,14);
                    iy = IHSmsim2(marca,18);
                    J = IHSmsim2(marca,20);
                    Wsup = IHSmsim2(marca,12);
                    Winf = IHSmsim2(marca,13);
                    Wy = IHSmsim2(marca,17);
                    Zx = IHSmsim2(marca,15);
                    Zy = IHSmsim2(marca,19);
                    m = IHSmsim2(marca,1);
                    Ysup = IHSmsim2(marca,22);
                    Yinf = IHSmsim2(marca,21);
                else
                    %cada par ordenado corresponde a um par linha coluna da
                    %matriz de banco de dados
                    d = IHSdsim2(marca,2);
                    tf = IHSdsim2(marca,6);
                    tw = IHSdsim2(marca,4);
                    bf = IHSdsim2(marca,7);
                    Ag = IHSdsim2(marca,3);
                    Ix = IHSdsim2(marca,9);
                    Iy = IHSdsim2(marca,13);
                    ix = IHSdsim2(marca,11);
                    iy = IHSdsim2(marca,15);
                    J = IHSdsim2(marca,17);
                    Wx = IHSdsim2(marca,10);
                    Wy = IHSdsim2(marca,14);
                    Zx = IHSdsim2(marca,12);
                    Zy = IHSdsim2(marca,16);
                    m = IHSdsim2(marca,1);
                    fla = IHSdsim2(marca,20);
                    flm = IHSdsim2(marca,19);
                    
                end
       else
                if f4 == 1;
                    
                else
                    d = IHLdsim2(marca,2);
                    tf = IHLdsim2(marca,6);
                    tw = IHLdsim2(marca,4);
                    h = IHLdsim2(marca,5);
                    bf = IHLdsim2(marca,7);
                    Ag = IHLdsim2(marca,3);
                    Ix = IHLdsim2(marca,9);
                    Iy = IHLdsim2(marca,13);
                    ix = IHLdsim2(marca,11);
                    iy = IHLdsim2(marca,15);
                    J = IHLdsim2(marca,17);
                    Wx = IHLdsim2(marca,10);
                    Wy = IHLdsim2(marca,14);
                    Zx = IHLdsim2(marca,12);
                    Zy = IHLdsim2(marca,16);
                    m = IHLdsim2(marca,1);
                    fla = IHLdsim2(marca,20);
                    flm = IHLdsim2(marca,19);
                end
       end
       
       %imprimindo os valores do banco de dados nos seus respectivos
       %espaços na interface grafica
       if f4 == 1;
            set(findobj(gcf,'Tag','dimc1'),'String',d);
            set(findobj(gcf,'Tag','dimc2'),'String',tfs)
            set(findobj(gcf,'Tag','dimc3'),'String',tfi);
            set(findobj(gcf,'Tag','dimc4'),'String',tw);
            set(findobj(gcf,'Tag','dimc5'),'String',bfs);
            set(findobj(gcf,'Tag','dimc6'),'String',bfi);
            set(findobj(gcf,'Tag','dimc7'),'String',Ag)
            set(findobj(gcf,'Tag','dimc8'),'String',Ix);
            set(findobj(gcf,'Tag','dimc9'),'String',Iy);
            set(findobj(gcf,'Tag','dimc10'),'String',ix);
            set(findobj(gcf,'Tag','dimc11'),'String',iy);
            set(findobj(gcf,'Tag','dimc12'),'String',J);
            set(findobj(gcf,'Tag','dimc13'),'String',Wsup);
            set(findobj(gcf,'Tag','dimc14'),'String',Winf);
            set(findobj(gcf,'Tag','dimc15'),'String',Ysup);
            set(findobj(gcf,'Tag','dimc16'),'String',Yinf);
            set(findobj(gcf,'Tag','dimc17'),'String',m);
           
       else
           if f1==1;
                set(findobj(gcf,'Tag','dimc1'),'String',d);
                set(findobj(gcf,'Tag','dimc2'),'String',tf)
                set(findobj(gcf,'Tag','dimc3'),'String',tw);
                set(findobj(gcf,'Tag','dimc4'),'String',bf);
                set(findobj(gcf,'Tag','dimc7'),'String',Ag)
                set(findobj(gcf,'Tag','dimc8'),'String',Ix);
                set(findobj(gcf,'Tag','dimc9'),'String',Iy);
                set(findobj(gcf,'Tag','dimc10'),'String',ix);
                set(findobj(gcf,'Tag','dimc11'),'String',iy);
                set(findobj(gcf,'Tag','dimc12'),'String',J);
                set(findobj(gcf,'Tag','dimc13'),'String',Wx);
                set(findobj(gcf,'Tag','dimc14'),'String',Wy);
                set(findobj(gcf,'Tag','dimc15'),'String',Zx);
                set(findobj(gcf,'Tag','dimc16'),'String',Zy);
                set(findobj(gcf,'Tag','dimc17'),'String',m);
           else
                set(findobj(gcf,'Tag','dimc1'),'String',d);
                set(findobj(gcf,'Tag','dimc2'),'String',tf)
                set(findobj(gcf,'Tag','dimc3'),'String',tw);
                set(findobj(gcf,'Tag','dimc4'),'String',bf);
                set(findobj(gcf,'Tag','dimc5'),'String',h);
                set(findobj(gcf,'Tag','dimc7'),'String',Ag)
                set(findobj(gcf,'Tag','dimc8'),'String',Ix);
                set(findobj(gcf,'Tag','dimc9'),'String',Iy);
                set(findobj(gcf,'Tag','dimc10'),'String',ix);
                set(findobj(gcf,'Tag','dimc11'),'String',iy);
                set(findobj(gcf,'Tag','dimc12'),'String',J);
                set(findobj(gcf,'Tag','dimc13'),'String',Wx);
                set(findobj(gcf,'Tag','dimc14'),'String',Wy);
                set(findobj(gcf,'Tag','dimc15'),'String',Zx);
                set(findobj(gcf,'Tag','dimc16'),'String',Zy);
                set(findobj(gcf,'Tag','dimc17'),'String',m);
           end
           
       end
                 
    

