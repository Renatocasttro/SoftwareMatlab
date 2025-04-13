function[] = P_GEO_T_SOL()
global d;
global tf;
global tw;
global bf;
global Ag;
global x1;
global Ix;
global Iy;
global ix;
global iy;
global J;
global Wx;
global Wy;
global h;
global Cw;
global y0;
global r0;
global kc;
global selecao;
global m;

if selecao == 0;
    %calculando propriedades geom�tricas necess�rias para perfis T soldados
    %duplamente sim�tricos
        h = d-tf;
        Ag = (bf*tf)/100 + (h/10)*(tw/10);
        %x1 - par�metro de c�lculo de Ix
        x1 = (((bf/10)-(tw/10))*(tf/10)^2+(tw/10)*(d/10)^2)/(2*(((bf/10)-(tw/10))*(tf/10)+(tw/10)*(d/10)));
        Ix = (((((bf/10)-(tw/10))*(tf/10)^3)+(tw/10)*((d/10)^3))/3)-((x1)^2*Ag);
        Iy = (((tf/10)*(bf/10)^3) + (tw/10)^3*((d/10)-(tf/10)))/12;
        J = ((bf/10)*(tf/10)^3 + (h/10)*(tw/10)^3)/3;
        Cw = 0;
        ix = sqrt(Ix/Ag);
        iy = sqrt(Iy/Ag);
        r0 = sqrt(ix^2 + iy^2);
        % kc > = 0.35 & kc < = 0.76
        kc = 4/sqrt(h/tw);
        if kc <0.35;
            kc = 0.35;
        else if kc >0.76;
                kc = 0.76;
            else
            end
        end
        y0 = 0;
        Wx = Ix/(d/20);
        Wy = Iy/(bf/20);
        m = Ag*0.78548;
        
        %imprimindo na tela os valores obtidos
        set(findobj(gcf,'Tag','dimc1'),'String',d);
        set(findobj(gcf,'Tag','dimc2'),'String',tf)
        set(findobj(gcf,'Tag','dimc3'),'String',tw);
        set(findobj(gcf,'Tag','dimc4'),'String',bf);
        set(findobj(gcf,'Tag','dimc7'),'String',Ag)
        set(findobj(gcf,'Tag','dimc8'),'String',Ix);
        set(findobj(gcf,'Tag','dimc9'),'String',Iy);
        set(findobj(gcf,'Tag','dimc10'),'String',ix);
        set(findobj(gcf,'Tag','dimc11'),'String',iy);
        set(findobj(gcf,'Tag','dimc13'),'String',Wx);
        set(findobj(gcf,'Tag','dimc14'),'String',Wy);
        set(findobj(gcf,'Tag','dimc17'),'String',m);
        
end