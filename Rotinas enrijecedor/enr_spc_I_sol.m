function[]= enr_spc_I_sol()
global espac;
global h;
global tw;
global E;
global fy;
global errov;

% Item H.1.3.c n da NBR 8800/08
if (espac/h)<=1.5
    if (h/tw)>11.7*sqrt(E/fy);
    set(findobj(gcf,'Tag','caixa4'),'ForegroundColor','red');
    set(findobj(gcf,'Tag','caixa4'),'String','enrijecedores muito afastados - item H.1.3.c');
    end
else
    if (h/tw)>(0.42*E/fy);
    set(findobj(gcf,'Tag','caixa4'),'ForegroundColor','red');
    set(findobj(gcf,'Tag','caixa4'),'String','enrijecedores muito afastados - item H.1.3.c');
    end
end

