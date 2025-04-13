function[] = enrij_apoio ()
global f4;
global espac;
global fye;
global E;
global tw;
global ts2;
global bs2;
global bf;
global tf;
global h;
global aux1;
global bfs;
global pe;

%Limpando caixa de aviso
set(findobj(gcf,'Tag','caixa4'),'String','');

ts2 = str2num(get(findobj(gcf,'Tag','ecx3'),'String'));
fye = str2num(get(findobj(gcf,'Tag','ecx4'),'String'))/10;

%tratamento de erros, caso caixa esteja vazia ou contenha  NaN
if isempty (fye)==1
    fye=25;
end
if isnumeric (fye)==0||isnumeric (ts2)==0||isnumeric (espac)==0
    set(findobj(gcf,'Tag','caixa4'),'ForegroundColor','red');
    set(findobj(gcf,'Tag','caixa4'),'String','Um ou mais dados não foram inseridos corretamente.');
end

j = 2.5/((10*espac/h)^2)-2;
if j < 0.5
    j=0.5;
end
if pe == 1
bsa = ((((j*120*espac*tw^3)/ts2)^(1/3))-tw)/2;
if f4 ==1
    bsb = (bfs/3-ts2/2);
else
    bsb = (bf/3-ts2/2);
end
else
    if pe == 4
    bsa = ((((j*120*espac*tw^3)/ts2)^(1/3))-tw);
    bsb = (bf/3-ts2/2);
    else
    bsa = 0;
    bsb = 0;
    end
end
bsmin = max(bsa, bsb)/10;
bsmax = 0.056*ts2*sqrt(E/fye);
aux2 = bsmax;


if ts2 < tf/2
    set(findobj(gcf,'Tag','caixa4'),'ForegroundColor','red');
    set(findobj(gcf,'Tag','caixa4'),'String','A espessura do enrjecedor deve ser maior que tf/2');
    set(findobj(gcf,'Tag','caixa2'),'String','');
else
    aux1 = 0;
    while bsmin < bsmax
        %verificaçao da compressao no enrijecedor
        compressao_enrij(bsmin);
        if aux1 == 1
            if bsmin < aux2
                aux2 = bsmin;
                bs2 = bsmin*10;
            end
        end
        bsmin = bsmin + 1;
    end
    %if aux1 == 1;
        set(findobj(gcf,'Tag','caixa2'),'String',bs2);
    %else
        %set(findobj(gcf,'Tag','caixa2'),'String','');
        %set(findobj(gcf,'Tag','caixa4'),'ForegroundColor','red');
        %set(findobj(gcf,'Tag','caixa4'),'String','Enrijecedor nao permitido, tente aumentar a espessura.');
    %end
end
end
