function[] = otm_espac ()
global espac;
global Vyrd;
global Vysd;
global Ndres;
otm_enrijecedor();
cisalhamento_I();
cisalhamento_C();


%imprimindo nova resistencia encontrada na tela
set(findobj(gcf,'Tag','caixa3'),'String',Vyrd);
set(findobj(gcf,'Tag','ecx5'),'String',espac);

if Vyrd < Vysd
    set(findobj(gcf,'Tag','caixa4'),'ForegroundColor','red');
    set(findobj(gcf,'Tag','caixa4'),'String','Mesmo com enrijecedor, a viga não é capaz de resistir à solicitação.');
else
    set(findobj(gcf,'Tag','caixa4'),'ForegroundColor','[0 0.573 0]');
    set(findobj(gcf,'Tag','caixa4'),'String','Com enrijecedores, o perfil é capaz de resistir.');
end
