function[] = rotina_otimizacao ()
global m;
global otimo;
global errov;
global ct_otm;

b = get(findobj(gcf,'Tag','popupmenu2'),'String');
num_rows = size(b,1);
aux1=10000;
aux2=0;
ct_otm = 0;

for i=1:1:num_rows
    set(findobj(gcf,'Tag','popupmenu2'),'Value',i);
    Selecionar_com ()
    ct_otm = 1;
    otimo_var()
    if otimo == 1;
        if m < aux1;
            aux2=i;
            aux1=m;
        end  
    end        
end  

if aux1 == 10000;
    Limpar_dados ();
    errov = 4;
    errof ();
else
    set(findobj(gcf,'Tag','popupmenu2'),'Value',aux2);
    Selecionar_com ();
end

ct_otm = 0;
    