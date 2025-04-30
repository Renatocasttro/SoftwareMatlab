function[] =Select_Botton_Cb7()
global Cb_Case;
global Cb1;

% Esta fun��o torna acess�veis (vis�veis) os par�metros utilizados no
% c�lculo de Cb quando o caso do bot�o 6 � acionado.
set(findobj(gcf,'Tag','uipanel11'),'Visible','on');
% Os valores iniciais os momentos nas extremidades da barra, M1 e M2 devem estar
% vazios, pois ainda nao foram fornecidos.
set(findobj(gcf,'Tag','text35'),'string','');
set(findobj(gcf,'Tag','text32'),'string','Valor de Cb:');
% Abre um formul�rio que mostra uma tabela de mais op�oes de caso de Cb
movegui(Cb_Mais, [300 200]);
waitfor(Cb_Mais);
Cb_Case=7;

% apresenta do formul�rio CbTeste o valor informado para Cb1
set(findobj(gcf,'Tag','text35'),'string',Cb1);
% Limpa textos exibi��o de messagens e valores de Cb1, na faixa inferior
% dos formal�rios e relacionada a selec�es de casos anteriores.
% Os novos valores ser�o exibidos quando da sele��o bdo bot�o Obter Cb.
set(findobj(gcf,'Tag','text15'),'Visible','of');
set(findobj(gcf,'Tag','text15'),'String','');
% limpa a apresena��o no formul�rio o valor de Cb1
set(findobj(gcf,'Tag','erroCb'),'Visible','of');

set(findobj(gcf,'Tag','text35'),'string',Cb1);
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
% Da op��o 5
set(findobj(gcf,'Tag','uipanel7'),'Visible','of');
% Da op��o 6
set(findobj(gcf,'Tag','uipanel8'),'Visible','of');

end


