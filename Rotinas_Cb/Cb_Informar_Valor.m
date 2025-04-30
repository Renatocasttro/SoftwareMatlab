function[]=Cb_Informar_Valor()
global Cb1;
Cb1=str2double(get(findobj(gcf,'Tag','edit1'),'string'));
end