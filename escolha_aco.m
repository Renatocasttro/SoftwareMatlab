function [] = escolha_aco(handles)
%rotina para imprimir na tela os valores de fy e fu dependendo do tipo de
%aço escolhido

global tiposdeaco;

a = get(handles.popupmenu1,'Value');

fy = tiposdeaco(a,1);
fu = tiposdeaco(a,2);

num2str(set(handles.prop2,'String',fy));
num2str(set(handles.prop4,'String',fu));
