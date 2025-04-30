function[] = Resultados_T()
global Ncrd;
global Ncsd;
global Ntrd;
global Ntsd;
global Vyrd;
global Vysd;
global Mxrd;
global Mxsd;
global flecomp;

%Imprimindo valor da resistencia � compress�o/tra��o calculada
if Ncrd > 0 
    set(findobj(gcf,'Tag','res1'),'String',Ncrd);
else
    set(findobj(gcf,'Tag','res8'),'String',Ntrd);
end

%Imprimindo valor da resistencia � tra��o calculada
if Ntrd > 0 
    set(findobj(gcf,'Tag','res8'),'String',Ntrd);
else
    set(findobj(gcf,'Tag','res8'),'String','(*)');
end

% Imprimindo valor da resistencia � flexao calculada
set(findobj(gcf,'Tag','res2'),'String',Mxrd);
% set(findobj(gcf,'Tag','res3'),'String',Myrd);

%Imprimindo valor da resistencia � cisalhamento calculada
% set(findobj(gcf,'Tag','res4'),'String',Vxrd);
set(findobj(gcf,'Tag','res5'),'String',Vyrd);

%Imprimindo valor da resistencia � flexao assimetrica calculada
% set(findobj(gcf,'Tag','res6'),'String',fleassi);

%Imprimindo valor da resistencia � flexao assimetrica calculada
set(findobj(gcf,'Tag','res7'),'String',flecomp);

if Ncrd > 0 
    set(findobj(gcf,'Tag','cx8'),'String','');
    if Ncrd > Ncsd
        set(findobj(gcf,'Tag','cx1'),'String','RESISTIU');
        set(findobj(gcf,'Tag','cx1'),'ForegroundColor','[0 0.573 0]');
        resultado1 = 1;
    else
        set(findobj(gcf,'Tag','cx1'),'String','NAO RESISTIU');
        set(findobj(gcf,'Tag','cx1'),'ForegroundColor','red');
        resultado1 = 0;
    end
else
    set(findobj(gcf,'Tag','cx1'),'String','');
end
if Ntsd>0
     if Ntrd > Ntsd
    
            set(findobj(gcf,'Tag','cx8'),'String','RESISTIU');
            set(findobj(gcf,'Tag','cx8'),'ForegroundColor','[0 0.573 0]');
            resultado1 = 1;
    else
            set(findobj(gcf,'Tag','cx8'),'String','NAO RESISTIU');
            set(findobj(gcf,'Tag','cx8'),'ForegroundColor','red');
            resultado1 = 0;
     end
else
    set(findobj(gcf,'Tag','cx8'),'String','');
end

if Mxrd >= Mxsd
    set(findobj(gcf,'Tag','cx2'),'String','RESISTIU');
    set(findobj(gcf,'Tag','cx2'),'ForegroundColor','[0 0.573 0]');
    resultado2 = 1;
else
    set(findobj(gcf,'Tag','cx2'),'String','NAO RESISTIU');
    set(findobj(gcf,'Tag','cx2'),'ForegroundColor','red');
    resultado2 = 0;
end
if Vyrd >= Vysd
    set(findobj(gcf,'Tag','cx5'),'String','RESISTIU');
    set(findobj(gcf,'Tag','cx5'),'ForegroundColor','[0 0.573 0]');
    resultado5 = 1;
else
    set(findobj(gcf,'Tag','cx5'),'String','NAO RESISTIU');
    set(findobj(gcf,'Tag','cx5'),'ForegroundColor','red');
    resultado5 = 0;
end
%colocando cor verde caso resista e vermelho caso nao resista ao esfor�o
%solicitante
if flecomp > 1
     set(findobj(gcf,'Tag','cx7'),'String','NAO RESISTIU');
     set(findobj(gcf,'Tag','cx7'),'ForegroundColor','red');
     resultado7 = 0;
 else
     set(findobj(gcf,'Tag','cx7'),'String','RESISTIU');
     set(findobj(gcf,'Tag','cx7'),'ForegroundColor','[0 0.573 0]');
     resultado7 = 1;
 end


%colocando cor verde caso resista e vermelho caso nao resista ao esfor�o
%solicitante
% if Mxrd > Mxsd
%     set(findobj(gcf,'Tag','cx2'),'String','RESISTIU');
%     set(findobj(gcf,'Tag','cx2'),'ForegroundColor','[0 0.573 0]');
%     resultado2 = 1;
% else
%     set(findobj(gcf,'Tag','cx2'),'String','NAO RESISTIU');
%     set(findobj(gcf,'Tag','cx2'),'ForegroundColor','red');
%     resultado2 = 0;
% end
% 
% if Myrd > Mysd
%     set(findobj(gcf,'Tag','cx3'),'String','RESISTIU');
%     set(findobj(gcf,'Tag','cx3'),'ForegroundColor','[0 0.573 0]');
%     resultado3 = 1;
% else
%     set(findobj(gcf,'Tag','cx3'),'String','NAO RESISTIU');
%     set(findobj(gcf,'Tag','cx3'),'ForegroundColor','red');
%     resultado3 = 0;
% end

%colocando cor verde caso resista e vermelho caso nao resista ao esfor�o
%solicitante
% if Vxrd > Vxsd
%     set(findobj(gcf,'Tag','cx4'),'String','RESISTIU');
%     set(findobj(gcf,'Tag','cx4'),'ForegroundColor','[0 0.573 0]');
%     resultado4 = 1;
% else
%     set(findobj(gcf,'Tag','cx4'),'String','NAO RESISTIU');
%     set(findobj(gcf,'Tag','cx4'),'ForegroundColor','red');
%     resultado4 = 0;
% end
% 
% if Vyrd > Vysd
%     set(findobj(gcf,'Tag','cx5'),'String','RESISTIU');
%     set(findobj(gcf,'Tag','cx5'),'ForegroundColor','[0 0.573 0]');
%     resultado5 = 1;
% else
%     set(findobj(gcf,'Tag','cx5'),'String','NAO RESISTIU');
%     set(findobj(gcf,'Tag','cx5'),'ForegroundColor','red');
%     resultado5 = 0;
% end
% 
% %colocando cor verde caso resista e vermelho caso nao resista ao esfor�o
% %solicitante
% if fleassi > 1
%     set(findobj(gcf,'Tag','cx6'),'String','NAO RESISTIU');
%     set(findobj(gcf,'Tag','cx6'),'ForegroundColor','red');
%     resultado6 = 0;
% else
%     set(findobj(gcf,'Tag','cx6'),'String','RESISTIU');
%     set(findobj(gcf,'Tag','cx6'),'ForegroundColor','[0 0.573 0]');
%     resultado6 = 1;
% end
% 
%colocando cor verde caso resista e vermelho caso nao resista ao esfor�o
%solicitante
% if flecomp > 1
%     set(findobj(gcf,'Tag','cx7'),'String','NAO RESISTIU');
%     set(findobj(gcf,'Tag','cx7'),'ForegroundColor','red');
%     resultado7 = 0;
% else
%     set(findobj(gcf,'Tag','cx7'),'String','RESISTIU');
%     set(findobj(gcf,'Tag','cx7'),'ForegroundColor','[0 0.573 0]');
%     resultado7 = 1;
% end

% resultadofinal = resultado1*resultado2*resultado3*resultado4*resultado5*resultado6*resultado7;

%colocando cor verde caso resista e vermelho caso nao resista a todos os
%esfor�os e imprimindo na tela o que o perfil est� aprovado
%solicitante
resultadofinal = resultado1*resultado2*resultado5*resultado7;
if resultadofinal == 1;
    set(findobj(gcf,'Tag','textofinal'),'String','O PERFIL DIMENSIONADO RESISTE � TODAS AS SOLICITA��ES PROPOSTAS');
    set(findobj(gcf,'Tag','textofinal'),'ForegroundColor','[0 0.573 0]');
else
    set(findobj(gcf,'Tag','textofinal'),'String','O PERFIL DIMENSIONADO N�O RESISTE � TODAS AS SOLICITA��ES PROPOSTAS');
    set(findobj(gcf,'Tag','textofinal'),'ForegroundColor','red');
end

    