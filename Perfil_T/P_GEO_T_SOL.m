function[] = P_GEO_T_SOL()
global d;
global tf;
global tw;
global bf;
global Ag;
global xg;
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
global Wxc % m�dulo de resist�ncia el�stica do lado comprimido da se��o
           % relativo ao eixo de flex�o x. Aqui se considera a mesa como 
           % comprimida. Este m�dulo resistente ser� utiizado no c�lculo da
           % flex�o do perfil T, em rela��o ao eixo perpendicular a mesa,
           % considrando que a compress�o ocorrer� na mesa (� o que admite
           % a NBR 8800.08).
global Zx;
global Winf;
global Wsup;
           
           
if selecao == 0;
    %calculando propriedades geom�tricas necess�rias para perfis T soldados
    
        h = d-tf; % em mm
        Ag = (bf*tf)/100 + (h/10)*(tw/10); % em cm2
        %xg - posi��o do centroide da se��o T em rela��o ao bordo da mesa.
        % par�metro de c�lculo de Ix
        % xg em cm
        xg = (((bf/10)-(tw/10))*(tf/10)^2+(tw/10)*(d/10)^2)/(2*(((bf/10)-(tw/10))*(tf/10)+(tw/10)*(d/10)));
        % Ix, Iy e J em cm4.
        Ix = (((((bf/10)-(tw/10))*(tf/10)^3)+(tw/10)*((d/10)^3))/3)-((xg)^2*Ag);
        Iy = (((tf/10)*(bf/10)^3) + (tw/10)^3*((d/10)-(tf/10)))/12;
         % Constante de tor��o ou momento de in�rcia � tor��o, em cm3:
        J = ((bf/10)*(tf/10)^3 + (h/10)*(tw/10)^3)/3;
        % M�dulo resistente pl�stico em rela��o ao eixo perpendilar a alma
        % passanto pelo centroide de se��o T, em cm3
        Zx=((bf/10)*(tf/10))*(xg-0.5*(tf/10))+(xg-(tf/10)*(tw/10))*(xg-(tf/10))*0.5+abs(((d/10)-xg)*tw*((d/10)-xg)*0.5);
        Cw = 0;
        ix = sqrt(Ix/Ag); % em cm
        iy = sqrt(Iy/Ag); % em cm
        r0 = sqrt(ix^2 + iy^2); %em cm
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
        % m�dulo resistente em rela��o a extremidade da mesa, em cm3
        Wxc=Ix/xg;
        % m�dulo resistente em rela��o a extermidade da alma, em cm3
        Wx=Ix/((d/10)-xg);
        Winf=Wx;
        Wsup=Wxc;
        Wy = Iy/(bf/20); % em cm3
        m = Ag*0.78548; 
        
        %imprimindo na tela os valores obtidos
        set(findobj(gcf,'Tag','dimc1'),'String',d);
        set(findobj(gcf,'Tag','dimc2'),'String',tf)
        set(findobj(gcf,'Tag','dimc3'),'String',tw);
        set(findobj(gcf,'Tag','dimc4'),'String',bf);
        set(findobj(gcf,'Tag','dimc7'),'String',Ag);
        set(findobj(gcf,'Tag','dimc8'),'String',Ix);
        set(findobj(gcf,'Tag','dimc9'),'String',Iy);
        set(findobj(gcf,'Tag','dimc10'),'String',ix);
        set(findobj(gcf,'Tag','dimc11'),'String',iy);
        set(findobj(gcf,'Tag','dimc13'),'String',Wx);
        set(findobj(gcf,'Tag','dimc14'),'String',Wy);
        set(findobj(gcf,'Tag','dimc17'),'String',m);
        
end