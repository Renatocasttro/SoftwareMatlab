function[] = calc_espac ()
global espac
global Vyrd;
global Vysd;
global Ndres;

%lendo valor espacamento fornecido pelo usuario
espac = str2num(get(findobj(gcf,'Tag','ecx5'),'String'));

calc_enrijecedor();
cisalhamento_I();
cisalhamento_C();

%imprimindo nova resistencia encontrada na tela
set(findobj(gcf,'Tag','caixa3'),'String',Vyrd);

if Vyrd < Vysd
    set(findobj(gcf,'Tag','caixa4'),'ForegroundColor','red');
    set(findobj(gcf,'Tag','caixa4'),'String','Mesmo com enrijecedor, a viga n�o � capaz de resistir � solicita��o.');
else
    set(findobj(gcf,'Tag','caixa4'),'ForegroundColor','[0 0.573 0]');
    set(findobj(gcf,'Tag','caixa4'),'String','Com enrijecedores, o perfil � capaz de resistir.');
end

