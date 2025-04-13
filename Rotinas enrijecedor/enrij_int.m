function[] = enrij_int ()
global espac;
global fye;
global E;
global tw;
global ts1;
global bs1;
global h;
global pe;

%Limpando caixa de aviso
set(findobj(gcf,'Tag','caixa4'),'String','');

ts1 = str2num(get(findobj(gcf,'Tag','ecx1'),'String'));
fye = str2num(get(findobj(gcf,'Tag','ecx2'),'String'))/10;

%tratamento de erros, caso caixa esteja vazia ou contenha  NaN
if isempty (fye)==1
    fye=25;
end
if isnumeric (fye)==0||isnumeric (ts1)==0||isnumeric (espac)==0
    set(findobj(gcf,'Tag','caixa4'),'ForegroundColor','red');
    set(findobj(gcf,'Tag','caixa4'),'String','Um ou mais dados não foram inseridos corretamente.');
end

j = 2.5/((10*espac/h)^2)-2;
if j < 0.5
    j=0.5;
end
if pe == 1
bs1 = ((((j*120*espac*tw^3)/ts1)^(1/3))-tw)/2;
else
    if pe == 4
        bs1 = ((((j*120*espac*tw^3)/ts1)^(1/3))-tw);
    else
        bs1 = 0;
    end
end

bsmax = 0.56*ts1*sqrt(E/fye);

if bs1 > bsmax
    set(findobj(gcf,'Tag','caixa4'),'ForegroundColor','red');
    set(findobj(gcf,'Tag','caixa4'),'String','Por favor, troque a espessura do enrijecedor');
else
    set(findobj(gcf,'Tag','caixa1'),'String',bs1);
end
