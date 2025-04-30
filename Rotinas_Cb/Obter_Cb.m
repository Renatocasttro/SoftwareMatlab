function[]=Obter_Cb()
global Cb_Case;
global Cb_Case_Aux;
global errov;
global Cb1;

if Cb_Case~=7
Cb1='';
end
if isnan (Cb_Case)==1
    errov=14;
    errof();
    % Não mostra o valor de  Cb
    set(findobj(gcf,'Tag','text15'),'Visible','of');
    % Os paineis inferiors de cada caso de Cb deve estar invisíveis
    set(findobj(gcf,'Tag','uipanel3'),'Visible','of');
    Cb1='';
    Cb_Case=8;
end
if isempty(Cb_Case)==1
    errov=14;
    errof();
    % Não mostra o valor de  Cb
    set(findobj(gcf,'Tag','text15'),'Visible','of');
    % Os paineis inferiors de cada caso de Cb deve estar invisíveis
    set(findobj(gcf,'Tag','uipanel3'),'Visible','of');
    Cb1='' ;
    Cb_Case=8;
end
    
switch Cb_Case;
    
    case 1;
        % Atribui a M1 e M2 os valores dos informados nos 
        % formulários armazenos em em edit3 e edit4. 
        M1=str2double(get(findobj(gcf,'Tag','edit3'),'String'));
        M2=str2double(get(findobj(gcf,'Tag','edit4'),'String'));
        %inserir erro para M1 e M2 iguais a NaN
        if isnan(M1)==1||isnan(M2)==1
            errov=12;
            Cb1=''
             % Não mostra o valor de Cb
            set(findobj(gcf,'Tag','text15'),'Visible','of');
            errof();     
        end
        if isempty(M1)==1||isempty(M2)==1
            errov=12;
            Cb1='';
            % Não mostra o valor de Cb
            set(findobj(gcf,'Tag','text15'),'Visible','of');
            errof();     
        end
        if M2<M1
            errov=13;
             Cb1='';
            errof();
            % não mostra o valor de Cb
            set(findobj(gcf,'Tag','text15'),'Visible','of');   
        end
        if M2==0
            errov=15;
            Cb1='';
            errof();
            % não mostra o valor de Cb 
            set(findobj(gcf,'Tag','text15'),'Visible','of'); 
        end
        if M2>=M1
        errov='';
        Cb1=12.5/(7.5+5*(M1/M2));
        % Apresenta no formulário o valor de Cb1
        set(findobj(gcf,'Tag','erroCb'),'Visible','on');
        set(findobj(gcf,'Tag','erroCb'),'String','Valor de Cb = ');
        set(findobj(gcf,'Tag','erroCb'),'ForegroundColor','blue');
        set(findobj(gcf,'Tag','erroCb'),'HorizontalAlignment','right');
        
        set(findobj(gcf,'Tag','text15'),'Visible','on');
        set(findobj(gcf,'Tag','text15'),'String',Cb1);
        end
        
    case 2
        % Atribui a M1 e M2 os valores dos informados nos 
        % formulários armazenos em em edit3 e edit4. 
        M1=str2double(get(findobj(gcf,'Tag','edit7'),'String'));
        M2=str2double(get(findobj(gcf,'Tag','edit8'),'String'));
        %inserir erro para M1 e M2 iguais a NaN
        if isnan(M1)==1||isnan(M2)==1
            errov=12;
            Cb1='';
             % Não mostra o valor de Cb
            set(findobj(gcf,'Tag','text15'),'Visible','of');
            errof();     
        end
        if isempty(M1)==1||isempty(M2)==1
            errov=12;
            Cb1='';
            % Não mostra o valor de Cb
            set(findobj(gcf,'Tag','text15'),'Visible','of');
            errof();     
        end
        if abs(M1)>abs(M2)
            errov=16;
             Cb1='';
            errof();
            % não mostra o valor de Cb
            set(findobj(gcf,'Tag','text15'),'Visible','of');   
        end
        if M2==0
            errov=15;
            Cb1='';
            errof();
            % não mostra o valor de Cb 
            set(findobj(gcf,'Tag','text15'),'Visible','of'); 
        end
        if abs(M2)>=abs(M1)
        errov='';
        Cb1=12.5/(2.5+(17+11*(M1/M2)+3*abs((3*M1/M2)+1))/4);
        % Apresenta no formulário o valor de Cb1
        set(findobj(gcf,'Tag','erroCb'),'Visible','on');
        set(findobj(gcf,'Tag','erroCb'),'String','Valor de Cb = ');
        set(findobj(gcf,'Tag','erroCb'),'ForegroundColor','blue');
        set(findobj(gcf,'Tag','erroCb'),'HorizontalAlignment','right');
        
        set(findobj(gcf,'Tag','text15'),'Visible','on');
        set(findobj(gcf,'Tag','text15'),'String',Cb1);
        end        
              
    case 3
        Cb1=1.15;
        set(findobj(gcf,'Tag','text15'),'Visible','on');
        set(findobj(gcf,'Tag','text15'),'String',Cb1);
        % Apresenta no formulário o valor de Cb1
        set(findobj(gcf,'Tag','erroCb'),'Visible','on');
        set(findobj(gcf,'Tag','erroCb'),'String','Valor de Cb = ');
        set(findobj(gcf,'Tag','erroCb'),'ForegroundColor','blue');
        set(findobj(gcf,'Tag','erroCb'),'HorizontalAlignment','right');
        errov='';
    case 4
        Cb1=1.32;
        set(findobj(gcf,'Tag','text15'),'Visible','on');
        set(findobj(gcf,'Tag','text15'),'String',Cb1);
        % Apresenta no formulário o valor de Cb1
        set(findobj(gcf,'Tag','erroCb'),'Visible','on');
        set(findobj(gcf,'Tag','erroCb'),'String','Valor de Cb = ');
        set(findobj(gcf,'Tag','erroCb'),'ForegroundColor','blue');
        set(findobj(gcf,'Tag','erroCb'),'HorizontalAlignment','right');
        errov='';
    case 5
        Cb1=1.67;
        set(findobj(gcf,'Tag','text15'),'Visible','on');
        set(findobj(gcf,'Tag','text15'),'String',Cb1);
        % Apresenta no formulário o valor de Cb1
        set(findobj(gcf,'Tag','erroCb'),'Visible','on');
        set(findobj(gcf,'Tag','erroCb'),'String','Valor de Cb = ');
        set(findobj(gcf,'Tag','erroCb'),'ForegroundColor','blue');
        set(findobj(gcf,'Tag','erroCb'),'HorizontalAlignment','right');
        errov='';
    case 6   
        Lc6=str2double(get(findobj(gcf,'Tag','edit9'),'String'));       
%       %inserir erro para Lc6 iguais a NaN
%        if isnan(Lc6)==1
%            errov=12
%            Cb1=''
%            % Não mostra o valor de Cb
%            set(findobj(gcf,'Tag','text15'),'Visible','of');
%            errof();     
%        end
%        if isempty(Lc6)==1
%            errov=12;
%            Cb1='';
%            % Não mostra o valor de Cb
%            set(findobj(gcf,'Tag','text15'),'Visible','of');
%            errof();     
%        end
        if Lc6~=1||Lc6~=2
            errov=17;
             Cb1='';
            errof();
            % não mostra o valor de Cb
            set(findobj(gcf,'Tag','text15'),'Visible','of');
        end
        if Lc6==1
            Cb1=1.67;
        end
        if Lc6==2
            Cb1=1;
        end  
        if Lc6==1||Lc6==2
        % Apresenta no formulário o valor de Cb1
        set(findobj(gcf,'Tag','erroCb'),'Visible','on');
        set(findobj(gcf,'Tag','erroCb'),'String','Valor de Cb = ');
        set(findobj(gcf,'Tag','erroCb'),'ForegroundColor','blue');
        set(findobj(gcf,'Tag','erroCb'),'HorizontalAlignment','right');
        
        set(findobj(gcf,'Tag','text15'),'Visible','on');
        set(findobj(gcf,'Tag','text15'),'String',Cb1);
        errov='';
        end
  case 7
     
     if isnan (Cb1)==1
        errov=17;
        errof();
        % Não mostra o valor de  Cb
        set(findobj(gcf,'Tag','text15'),'Visible','of');
        % Os paineis inferiors de cada caso de Cb deve estar invisíveis
        set(findobj(gcf,'Tag','uipanel3'),'Visible','of');
        Cb1='';
        Cb_Case=8;
     end
     if isempty(Cb1)==1
        errov=17;
        errof();
        % Não mostra o valor de  Cb
        set(findobj(gcf,'Tag','text15'),'Visible','of');
        % Os paineis inferiors de cada caso de Cb deve estar invisíveis
        set(findobj(gcf,'Tag','uipanel3'),'Visible','of');
        Cb1='' ;
        Cb_Case=8;
     end
        set(findobj(gcf,'Tag','text15'),'Visible','on');
        set(findobj(gcf,'Tag','text15'),'String',Cb1);
        % Apresenta no formulário o valor de Cb1
        set(findobj(gcf,'Tag','erroCb'),'Visible','on');
        set(findobj(gcf,'Tag','erroCb'),'String','Valor de Cb = ');
        set(findobj(gcf,'Tag','erroCb'),'ForegroundColor','blue');
        set(findobj(gcf,'Tag','erroCb'),'HorizontalAlignment','right');
        errov='';
end
Cb_Case_Aux=Cb_Case;
Cb_Case='';
end

