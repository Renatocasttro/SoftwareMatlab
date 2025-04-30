function[] = Resultados_I()
global f4;
global Mxrd;
global Mxsd;
global Myrd;
global Mysd;
global Ncrd;
global Ncsd;
global Vxrd;
global Vxsd;
global Vyrd;
global Vysd;
global fleassi;
global flecomp;
global Ntrd;
global Ntsd;

%fazendo o programa desconsiderar solicitações em Y para perfis
%monossimétricos
if f4 ==1
    Mysd = 0;
    Vxsd = 0;
end

%Imprimindo valor da resistencia à compressão calculada
if Ncrd > 0 
    set(findobj(gcf,'Tag','res1'),'String',Ncrd);
else
    set(findobj(gcf,'Tag','res1'),'String','(*)');
end

%Imprimindo valor da resistencia à tração calculada
if Ntrd > 0 
    set(findobj(gcf,'Tag','res8'),'String',Ntrd);
else
    set(findobj(gcf,'Tag','res8'),'String','(*)');
end

%Imprimindo valor da resistencia à flexao calculada
set(findobj(gcf,'Tag','res2'),'String',Mxrd);
if f4 ==1
    set(findobj(gcf,'Tag','res3'),'String','(*)');
else
    set(findobj(gcf,'Tag','res3'),'String',Myrd);
end


%Imprimindo valor da resistencia à cisalhamento calculada
set(findobj(gcf,'Tag','res5'),'String',Vyrd);
if f4 ==1
    set(findobj(gcf,'Tag','res4'),'String','(*)');
else
    set(findobj(gcf,'Tag','res4'),'String',Vxrd);
end

%Imprimindo valor da resistencia à flexao assimetrica calculada
set(findobj(gcf,'Tag','res6'),'String',fleassi);

%Imprimindo valor da resistencia à flexao composta calculada
set(findobj(gcf,'Tag','res7'),'String',flecomp);

if Ncsd > 0
        set(findobj(gcf,'Tag','cx8'),'String','');
    if Ncrd >= Ncsd
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

if Ntsd > 0 
    set(findobj(gcf,'Tag','cx1'),'String','');
    if Ntrd >= Ntsd
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

%colocando cor verde caso resista e vermelho caso nao resista ao esforço
%solicitante
if Mxrd >= Mxsd
    set(findobj(gcf,'Tag','cx2'),'String','RESISTIU');
    set(findobj(gcf,'Tag','cx2'),'ForegroundColor','[0 0.573 0]');
    resultado2 = 1;
else
    set(findobj(gcf,'Tag','cx2'),'String','NAO RESISTIU');
    set(findobj(gcf,'Tag','cx2'),'ForegroundColor','red');
    resultado2 = 0;
end

if Myrd >= Mysd
    set(findobj(gcf,'Tag','cx3'),'String','RESISTIU');
    set(findobj(gcf,'Tag','cx3'),'ForegroundColor','[0 0.573 0]');
    resultado3 = 1;
else
    set(findobj(gcf,'Tag','cx3'),'String','NAO RESISTIU');
    set(findobj(gcf,'Tag','cx3'),'ForegroundColor','red');
    resultado3 = 0;
end

%colocando cor verde caso resista e vermelho caso nao resista ao esforço
%solicitante
if Vxrd >= Vxsd
    set(findobj(gcf,'Tag','cx4'),'String','RESISTIU');
    set(findobj(gcf,'Tag','cx4'),'ForegroundColor','[0 0.573 0]');
    resultado4 = 1;
else
    set(findobj(gcf,'Tag','cx4'),'String','NAO RESISTIU');
    set(findobj(gcf,'Tag','cx4'),'ForegroundColor','red');
    resultado4 = 0;
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

if f4==1 % não é necessário informar resultados de Myrd e Vxrd para....
         % ... perfis monossimétricos.
   set(findobj(gcf,'Tag','cx3'),'String','');
   set(findobj(gcf,'Tag','cx4'),'String','');
end

%colocando cor verde caso resista e vermelho caso nao resista ao esforço
%solicitante
if fleassi > 1
    set(findobj(gcf,'Tag','cx6'),'String','NAO RESISTIU');
    set(findobj(gcf,'Tag','cx6'),'ForegroundColor','red');
    resultado6 = 0;
else
    set(findobj(gcf,'Tag','cx6'),'String','RESISTIU');
    set(findobj(gcf,'Tag','cx6'),'ForegroundColor','[0 0.573 0]');
    resultado6 = 1;
end

%colocando cor verde caso resista e vermelho caso nao resista ao esforço
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

resultadofinal = resultado1*resultado2*resultado3*resultado4*resultado5*resultado6*resultado7;

%colocando cor verde caso resista e vermelho caso nao resista a todos os
%esforços e imprimindo na tela o que o perfil está aprovado
%solicitante
if resultadofinal == 1;
    set(findobj(gcf,'Tag','textofinal'),'String','O PERFIL DIMENSIONADO RESISTE À TODAS AS SOLICITAÇÕES PROPOSTAS');
    set(findobj(gcf,'Tag','textofinal'),'ForegroundColor','[0 0.573 0]');
else
    set(findobj(gcf,'Tag','textofinal'),'String','O PERFIL DIMENSIONADO NÃO RESISTE À TODAS AS SOLICITAÇÕES PROPOSTAS');
    set(findobj(gcf,'Tag','textofinal'),'ForegroundColor','red');
end