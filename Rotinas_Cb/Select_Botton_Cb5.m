function[] =Select_Botton_Cb5()
global Cb_Case;
global Cb1;
% Esta fun��o torna acess�veis (vis�veis) os par�metros utilizados no
% c�lculo de Cb quando o caso do bot�o 5 � acionado.
set(findobj(gcf,'Tag','uipanel7'),'Visible','on');
% Os valores iniciais os momentos nas extremidades da barra, M1 e M2 devem estar
% vazios, pois ainda nao foram fornecidos.
Cb_Case=5;
Cb1=1.67;
set(findobj(gcf,'Tag','text25'),'string','Cb =');
set(findobj(gcf,'Tag','text26'),'string',Cb1);

% Limpa textos exibi��o de messagens e valores de Cb, na faixa inferior do
% formal�rios e relacionada a selec�es de casos anteriores.
% Os novos valores ser�o exibidos quando da sele��o do bot�o Obter Cb.
set(findobj(gcf,'Tag','text15'),'Visible','of');
set(findobj(gcf,'Tag','text15'),'String','');
% limpa a apresena��o no formul�rio o valor de Cb1
set(findobj(gcf,'Tag','erroCb'),'Visible','of');

% Esta fun��o torna inacess�veis (invis�veis) os par�metros utilizados no
% c�lculo de Cb das demais opo��es de c�lculo de Cb, quando o caso do bot�o 1 � acionado.
% Da op��o 1
set(findobj(gcf,'Tag','uipanel3'),'Visible','of');
% Da op��o 2
set(findobj(gcf,'Tag','uipanel5'),'Visible','of');
% Da op��o 3 
set(findobj(gcf,'Tag','uipanel4'),'Visible','of');
% Da op��o 4 
set(findobj(gcf,'Tag','uipanel6'),'Visible','of');
% Da op��o 6 
set(findobj(gcf,'Tag','uipanel8'),'Visible','of');
% Da op��o 7
set(findobj(gcf,'Tag','uipanel11'),'Visible','of');
end