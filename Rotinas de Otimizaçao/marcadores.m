function[] = marcadores()
global otm1
global otm2
global otm3
global otm4
global otm5
global otm6
global otm7

set(findobj(gcf,'Tag','texto'),'String','Aguarde um momento.');
set(findobj(gcf,'Tag','texto'),'ForegroundColor','Red');

%lendo e salvando o estado de cada marcador da interface de otimizaçao
otm1 = get(findobj(gcf,'Tag','checkbox1'),'Value');
otm2 = get(findobj(gcf,'Tag','checkbox2'),'Value');
otm3 = get(findobj(gcf,'Tag','checkbox3'),'Value');
otm4 = get(findobj(gcf,'Tag','checkbox4'),'Value');
otm5 = get(findobj(gcf,'Tag','checkbox5'),'Value');
otm6 = get(findobj(gcf,'Tag','checkbox6'),'Value');
otm7 = get(findobj(gcf,'Tag','checkbox7'),'Value');

