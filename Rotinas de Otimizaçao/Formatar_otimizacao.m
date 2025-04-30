function[] = Formatar_otimizacao()
global pe;
global f4;

switch pe;
    case 1;
        if f4 ==1; % pefil I,H
            %desabilitando esforços na direçao Y
            set(findobj(gcf,'Tag','checkbox3'),'Enable','off');
            set(findobj(gcf,'Tag','checkbox5'),'Enable','off');
            set(findobj(gcf,'Tag','checkbox6'),'Enable','off');
            
            set(findobj(gcf,'Tag','checkbox1'),'Value',1);
            set(findobj(gcf,'Tag','checkbox2'),'Value',1);
            set(findobj(gcf,'Tag','checkbox3'),'Value',0);
            set(findobj(gcf,'Tag','checkbox4'),'Value',1);
            set(findobj(gcf,'Tag','checkbox5'),'Value',0);
            set(findobj(gcf,'Tag','checkbox6'),'Value',0);
            set(findobj(gcf,'Tag','checkbox7'),'Value',1);
                      
        else 
            %Habilitando esforços na direçao Y
            set(findobj(gcf,'Tag','checkbox3'),'Enable','on');
            set(findobj(gcf,'Tag','checkbox5'),'Enable','on');
            set(findobj(gcf,'Tag','checkbox6'),'Enable','on');
            
            set(findobj(gcf,'Tag','checkbox1'),'Value',1);
            set(findobj(gcf,'Tag','checkbox2'),'Value',1);
            set(findobj(gcf,'Tag','checkbox3'),'Value',1);
            set(findobj(gcf,'Tag','checkbox4'),'Value',1);
            set(findobj(gcf,'Tag','checkbox5'),'Value',1);
            set(findobj(gcf,'Tag','checkbox6'),'Value',1);
            set(findobj(gcf,'Tag','checkbox7'),'Value',1);
        end
    case 2; % Perfil L
        %deixando apenas traçao ou compressao habilitados
        set(findobj(gcf,'Tag','checkbox2'),'Enable','off');
        set(findobj(gcf,'Tag','checkbox3'),'Enable','off');
        set(findobj(gcf,'Tag','checkbox4'),'Enable','off');
        set(findobj(gcf,'Tag','checkbox5'),'Enable','off');
        set(findobj(gcf,'Tag','checkbox6'),'Enable','off');
        set(findobj(gcf,'Tag','checkbox7'),'Enable','off');
        
        set(findobj(gcf,'Tag','checkbox1'),'Value',1);
        set(findobj(gcf,'Tag','checkbox2'),'Value',0);
        set(findobj(gcf,'Tag','checkbox3'),'Value',0);
        set(findobj(gcf,'Tag','checkbox4'),'Value',0);
        set(findobj(gcf,'Tag','checkbox5'),'Value',0);
        set(findobj(gcf,'Tag','checkbox6'),'Value',0);
        set(findobj(gcf,'Tag','checkbox7'),'Value',0);
    case 3; % Perfil T
        %deixando apenas traçao ou compressao, flexão em torno do eixo x,
        %cortante em y e flexão composta habilitados.
        set(findobj(gcf,'Tag','checkbox2'),'Enable','on');
        set(findobj(gcf,'Tag','checkbox3'),'Enable','off');
        set(findobj(gcf,'Tag','checkbox4'),'Enable','off');
        set(findobj(gcf,'Tag','checkbox5'),'Enable','on');
        set(findobj(gcf,'Tag','checkbox6'),'Enable','off');
        set(findobj(gcf,'Tag','checkbox7'),'Enable','on');
        
        set(findobj(gcf,'Tag','checkbox1'),'Value',1);
        set(findobj(gcf,'Tag','checkbox2'),'Value',1);
        set(findobj(gcf,'Tag','checkbox3'),'Value',0);
        set(findobj(gcf,'Tag','checkbox4'),'Value',0);
        set(findobj(gcf,'Tag','checkbox5'),'Value',1);
        set(findobj(gcf,'Tag','checkbox6'),'Value',0);
        set(findobj(gcf,'Tag','checkbox7'),'Value',1);
    case 4; % Pefil C
        %deixando apenas traçao ou compressao habilitados
        set(findobj(gcf,'Tag','checkbox2'),'Enable','on');
        set(findobj(gcf,'Tag','checkbox3'),'Enable','on');
        set(findobj(gcf,'Tag','checkbox4'),'Enable','on');
        set(findobj(gcf,'Tag','checkbox5'),'Enable','on');
        set(findobj(gcf,'Tag','checkbox6'),'Enable','on');
        set(findobj(gcf,'Tag','checkbox7'),'Enable','on');
        
        set(findobj(gcf,'Tag','checkbox1'),'Value',1);
        set(findobj(gcf,'Tag','checkbox2'),'Value',1);
        set(findobj(gcf,'Tag','checkbox3'),'Value',1);
        set(findobj(gcf,'Tag','checkbox4'),'Value',1);
        set(findobj(gcf,'Tag','checkbox5'),'Value',1);
        set(findobj(gcf,'Tag','checkbox6'),'Value',1);
        set(findobj(gcf,'Tag','checkbox7'),'Value',1);
    case 5;
    case 6;
    case 7;
    case 8;
    case 9;
    case 10;
    case 11;
    case 12;
    case 13;
    case 14;
end   



