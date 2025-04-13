function[] = P_GEO_C_SOL()
global d;
global tf;
global tw;
global bf;
global Ag;
%parâmetros para o cálculo de Iy
global y1;
global x1;
global x2;
global x3;
global Ix;
global Iy;
global ix;
global iy;
global J;
global Wx;
global Wy;
global h;
global Cw;
global xg;
global x0;
global y0;
global r0;
global kc;
global m;


    %calculando propriedades geométricas necessárias para perfis  soldados
    %duplamente simétricos
    %x1,x2 e x3 são parâmetros para o cálculo de Iy
    
        h = (d - 2*tf);
        Ag = (2*bf*tf)/100 + (h/10)*(tw/10);
        y1 = (((d/10)*((tw/10)^2))+(2*(tf/10)*((bf/10)^2-(tw/10)^2)))/(2*(Ag));
        x1 = (((d/10)*(tw/10)^3)+2*(tf/10)*((bf/10)-(tw/10))^3)/12;
        x2 = (d/10)*(tw/10)*((y1-(tw/20))^2);
        x3 = 2*(tf/10)*((bf/10)-(tw/10))*((((bf/20)-(tw/20))+(bf/10)-(y1))^2);
        Ix = (((d/10)^3*(bf/10))-(((bf/10)-(tw/10))*((d/10)-2*(tf/10))^3))/12;
        Iy = x1+x2+x3;
        J = (2*(bf/10)*(tf/10)^3+(h/10)*(tw/10)^3)/3;
        xg = (((bf/10)-(tw/10))*(tf/10)*(bf/10))/(((2*(bf/10)-(tw/10))*(tf/10))+((h/10)*(tw/10)));
        x0 = ((tf/10)*((h/10)^2)*(bf/10)^2)/(4*Ix);
        Cw =(((h/10)^2)/4)*(Iy+Ag*xg-Ag*x0*xg)
        ix = sqrt(Ix/Ag);
        iy = sqrt(Iy/Ag);
        r0 = sqrt(ix^2 + iy^2 + xg^2 +y0^2);
        
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
        set(findobj(gcf,'Tag','dimc12'),'String',J);
