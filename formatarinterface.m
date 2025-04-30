function []= formatarinterface(handles)
%função responsavel por formatar a interface, dependendo do perfil e do seu
%modelo
global f1; % perfil soldado
global f2; % pefil laminado
global f3; % perfil de chapa dobrada
global f4; % perfil monossimétrico
global f5; % perfil duplamente simétrico
global pe; % tipo de perfil: 1 perfil I; 2 L;3 T;4 C; 8 CDe
global figura1;

%(f1,f2,f3,f4,f5) = (soldado,laminado, dobrado,monossimetrico,duplamente simetrico)
f1 = get(findobj(gcf,'Tag','radiobutton1'),'Value'); % Perfil soldado
f2 = get(findobj(gcf,'Tag','radiobutton2'),'Value'); % Perfil laminado
f3 = get(findobj(gcf,'Tag','radiobutton3'),'Value'); % Perfil dobrado
f4 = get(findobj(gcf,'Tag','radiobutton4'),'Value'); % Perfil Monossimétrico
f5 = get(findobj(gcf,'Tag','radiobutton5'),'Value'); % Perfil Duplamente simétrico


%colocando todas as listas para iniciarem no seu topo sempre que houver
%necessidade de formatar interface
set(findobj(gcf,'Tag','popupmenu2'),'Value',1);

%Zerando o valor das resistencias
set(handles.res1,'String','(*)');
set(handles.res2,'String','(*)');
set(handles.res3,'String','(*)');
set(handles.res4,'String','(*)');
set(handles.res5,'String','(*)');
set(handles.res6,'String','(*)');
set(handles.res7,'String','(*)');
set(handles.res8,'String','(*)');

% Retirando comentários (RESISITIU, NAO RESISTIU)
set(handles.cx1,'String','');
set(handles.cx2,'String','');
set(handles.cx3,'String','');
set(handles.cx4,'String','');
set(handles.cx5,'String','');
set(handles.cx7,'String','');
set(handles.cx8,'String','');

%pe=perfil escolhido
switch pe;
    case 1;
       interface_I ();
    case 2;
        interface_L ();
    case 3;
        interface_T ();
    case 4;
        interface_C ();
    case 5;
    case 6;
    case 7;
    case 8;
        interface_CDe();
    case 9;
    case 10;
    case 11;
    case 12;
    case 13;
    case 14;
end   

%atribuindo imagem conforme perfil escolhido
imshow(figura1,'Parent',handles.axes1);