function[] = calc_espac ()
global espac
global Vyrd;
global Vysd;
global Ndres;
global pe;
global f1;
global h;
global tw;
global fla;
global E;
global fy;

%lendo valor espacamento fornecido pelo usuario
espac = str2num(get(findobj(gcf,'Tag','ecx5'),'String'));

if pe==1 %trata-se de perfil I
    if f1==1 % trata-se de perfil soldado
        if fla>5.7*sqrt(E/fy) %trata-se de perfil I, soldado de alma...
            % esbelta, conforme item H.1.2 e H.1.3.c da NBR 8800.08
            if (espac*10/h)<=1.5
                if (fla)<11.7*sqrt(E/fy)
                   calc_enrijecedor();
                   cisalhamento_I();
                else
                   set(findobj(gcf,'Tag','caixa4'),'ForegroundColor','red');
                   set(findobj(gcf,'Tag','caixa4'),'String','Espaçamento entre enfijecedores inadequado - item H.1.3.c da NBR 8800/08.'); 
                end
            else
               if (fla)<0.42*E/fy
                   calc_enrijecedor();
                   cisalhamento_I(); 
               else
                   set(findobj(gcf,'Tag','caixa4'),'ForegroundColor','red');
                   set(findobj(gcf,'Tag','caixa4'),'String','Espaçamento entre enfijecedores inadequado - item H.1.3.c da NBR 8800/08.'); 
               end    
            end
        else %neste caso a alma do perfil não é esbelta (h/tw<=5.7*sqrt(E/fy)  
            calc_enrijecedor();
            cisalhamento_I();
        end
    end
else
    if pe==4 % Trata-se de perfil C
       calc_enrijecedor();
       cisalhamento_C(); 
    end
  
end
    
% calc_enrijecedor();
% cisalhamento_I();
% cisalhamento_C();

%imprimindo nova resistencia encontrada na tela
set(findobj(gcf,'Tag','caixa3'),'String',Vyrd);

if Vyrd < Vysd
    set(findobj(gcf,'Tag','caixa4'),'ForegroundColor','red');
    set(findobj(gcf,'Tag','caixa4'),'String','Mesmo com enrijecedor, a viga não é capaz de resistir à solicitação.');
else
    set(findobj(gcf,'Tag','caixa4'),'ForegroundColor','[0 0.573 0]');
    set(findobj(gcf,'Tag','caixa4'),'String','Com enrijecedores, o perfil é capaz de resistir.');
end

