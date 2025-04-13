function[] = Config_inicial(handles)
%configurações iniciais para agilizar os cálculos para o usuário
% aaaa
%atribuindo imagens aos botões de perfis
icone1 = imread('perfili.jpg');
set(handles.icon1,'CData',icone1);
icone2 = imread('perfill.jpg');
set(handles.icon2,'CData',icone2);
icone3 = imread('perfilt.jpg');
set(handles.icon3,'CData',icone3);
icone4 = imread('perfilu.jpg');
set(handles.icon4,'CData',icone4);
icone5 = imread('retangular.jpg');
set(handles.icon5,'CData',icone5);
icone6 = imread('redondotubular.jpg');
set(handles.icon6,'CData',icone6);
icone7 = imread('quadradotubular.jpg');
set(handles.icon7,'CData',icone7);

%atribuindo imagens aos botões de ajuda
botaoajuda = imread('botaoajuda.PNG');
set(handles.pushbutton1,'CData',botaoajuda);
set(handles.pushbutton2,'CData',botaoajuda);
set(handles.pushbutton3,'CData',botaoajuda);
set(handles.pushbutton11,'CData',botaoajuda);

%atribuindo configurações iniciais do sistema para iniciar na guia relativa
%ao perfil I, soldado, monossimétrico
%a variavel "pe" está relacionada ao perfil escolhido
set(handles.radiobutton2,'Value',1);
set(handles.radiobutton4,'Value',1);
set(handles.radiobutton3,'Enable','off');
global pe;
pe = 1;

%Atribuindo valores de E e G, conforme norma
set(handles.prop1,'String','200000');
set(handles.prop3,'String','77000');

%Atribuindo valores iniciais para Kx, Ky, Kz
set(handles.comp2,'String','1.00');
set(handles.comp3,'String','1.00');
set(handles.comp5,'String','1.00');

%Atribuindo valores iniciais para ya1 e ya2
set(handles.coef,'String','1.10');
set(handles.coef2,'String','1.35');

%Zerando o valor das resistencias
set(handles.res1,'String','(*)');
set(handles.res2,'String','(*)');
set(handles.res3,'String','(*)');
set(handles.res4,'String','(*)');
set(handles.res5,'String','(*)');
set(handles.res6,'String','(*)');
set(handles.res7,'String','(*)');
set(handles.res8,'String','(*)');

%Iniciando com o aço MR250
set(handles.prop2,'String','250');
set(handles.prop4,'String','400');

%Valor inicial para Cb e Ct
global ct_otm;
ct_otm = 0;
set(handles.esfcb,'String','1.00');
set(handles.esfcb1,'String','1.00');
set(handles.esfcb2,'String','1.00');

%icones extras caso necessário
set(findobj(gcf,'Tag','icon8'),'Enable','off');
set(findobj(gcf,'Tag','icon8'),'Visible','off');
set(findobj(gcf,'Tag','icon9'),'Enable','off');
set(findobj(gcf,'Tag','icon9'),'Visible','off');
set(findobj(gcf,'Tag','icon10'),'Enable','off');
set(findobj(gcf,'Tag','icon10'),'Visible','off');
set(findobj(gcf,'Tag','icon11'),'Enable','off');
set(findobj(gcf,'Tag','icon11'),'Visible','off');
set(findobj(gcf,'Tag','icon12'),'Enable','off');
set(findobj(gcf,'Tag','icon12'),'Visible','off');
set(findobj(gcf,'Tag','icon13'),'Enable','off');
set(findobj(gcf,'Tag','icon13'),'Visible','off');
set(findobj(gcf,'Tag','icon14'),'Enable','off');
set(findobj(gcf,'Tag','icon14'),'Visible','off');

