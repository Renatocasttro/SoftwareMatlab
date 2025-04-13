function calculo_rmc
global Iycc;
global Mysd
global Iy;
global Cb;
global Cb1;
global f4;
%rotina para o calculo de rm
if f4 ==1
    if Mysd ==0
        rm = 1.00; 
    else
        rm = 0.5 + 2*(Iycc/Iy)^2;
    end
else rm = 1.00;
end
 


Cb = Cb1*rm;

if Cb < 1
    Cb = 1;
    set(findobj(gcf,'Tag','sinalcb'),'String','<');
else if Cb > 3
        Cb = 3;
        set(findobj(gcf,'Tag','sinalcb'),'String','>');
    else
        set(findobj(gcf,'Tag','sinalcb'),'String','=');
    end
end


%imprimindo na tela valores encontrados
set(findobj(gcf,'Tag','esfcb1'),'String',rm);
set(findobj(gcf,'Tag','esfcb2'),'String',Cb);
end