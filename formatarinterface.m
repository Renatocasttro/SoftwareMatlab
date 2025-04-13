function []= formatarinterface(handles)
%função responsavel por formatar a interface, dependendo do perfil e do seu
%modelo
global f1;
global f2;
global f4;
global f5;
global pe;
global figura1;

%(f1,f2,f4,f5) = (soldado,laminado,monossimetrico,duplamente simetrico)
f1 = get(findobj(gcf,'Tag','radiobutton1'),'Value');
f2 = get(findobj(gcf,'Tag','radiobutton2'),'Value');
f4 = get(findobj(gcf,'Tag','radiobutton4'),'Value');
f5 = get(findobj(gcf,'Tag','radiobutton5'),'Value');

%colocando todas as listas para iniciarem no seu topo sempre que houver
%necessidade de formatar interface
set(findobj(gcf,'Tag','popupmenu2'),'Value',1);

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
    case 9;
    case 10;
    case 11;
    case 12;
    case 13;
    case 14;
end   

%atribuindo imagem conforme perfil escolhido
imshow(figura1,'Parent',handles.axes1);