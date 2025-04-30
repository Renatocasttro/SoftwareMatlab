function[] =Select_Botton_Cb7()
global Cb_Case;
global Cb1;

% Esta função torna acessíveis (visíveis) os parâmetros utilizados no
% cálculo de Cb quando o caso do botão 6 é acionado.
set(findobj(gcf,'Tag','uipanel11'),'Visible','on');
% Os valores iniciais os momentos nas extremidades da barra, M1 e M2 devem estar
% vazios, pois ainda nao foram fornecidos.
set(findobj(gcf,'Tag','text35'),'string','');
set(findobj(gcf,'Tag','text32'),'string','Valor de Cb:');
% Abre um formulário que mostra uma tabela de mais opçoes de caso de Cb
movegui(Cb_Mais, [300 200]);
waitfor(Cb_Mais);
Cb_Case=7;

% apresenta do formulário CbTeste o valor informado para Cb1
set(findobj(gcf,'Tag','text35'),'string',Cb1);
% Limpa textos exibição de messagens e valores de Cb1, na faixa inferior
% dos formalários e relacionada a selecões de casos anteriores.
% Os novos valores serão exibidos quando da seleção bdo botão Obter Cb.
set(findobj(gcf,'Tag','text15'),'Visible','of');
set(findobj(gcf,'Tag','text15'),'String','');
% limpa a apresenação no formulário o valor de Cb1
set(findobj(gcf,'Tag','erroCb'),'Visible','of');

set(findobj(gcf,'Tag','text35'),'string',Cb1);
% Esta função torna inacessíveis (invisíveis) os parâmetros utilizados no
% cálculo de Cb das demais opoções de cálculo de Cb, quando o caso do botão 1 é acionado.
% Da opção 1
set(findobj(gcf,'Tag','uipanel3'),'Visible','of');
% Da opção 2
set(findobj(gcf,'Tag','uipanel5'),'Visible','of');
% Da opção 3
set(findobj(gcf,'Tag','uipanel4'),'Visible','of');
% Da opção 4
set(findobj(gcf,'Tag','uipanel6'),'Visible','of');
% Da opção 5
set(findobj(gcf,'Tag','uipanel7'),'Visible','of');
% Da opção 6
set(findobj(gcf,'Tag','uipanel8'),'Visible','of');

end


