function[] = calculo_rm ()
global Iycmin; % para perfil I
global Ixcc1; % para perfil C
global Ix;
global Iy;
global Cb;
global Cb1;
global f4;
global Aux3;
global Mysd;
global Mxsd;
global Cb_Case_Aux;
global pe;

if Aux3~=0
    % Abre formul�rio que permite o c�lculo do Cb
    movegui(CbTeste, 'center');
    % movegui(CbTeste,[638,165])
    % Espera at� que o formul�rio CBteste seja fechado
    waitfor(CbTeste);
Aux3=0;
end 


% rotina para o calculo de rm (item 5.4.2.3 NBR 8800, p.48)

if f4 == 1   % perfil monossim�trico
    if Cb_Case_Aux==2; % se��es sujeitas � curvatura reversa
    if pe==4 %perfil C
        if Mysd~=0; % fletido em rela��o ao eixo que n�o � de simetria
            rm=0.5+2*(Ixcc1/Ix); % aproxima��o visto que neste caso Iyc � muito pequeno.
        end
    end 
    if pe==1 % perfi I, monossim�trico (s� para perfis soldados)
        if Mxsd~=0; % fletido em rela��o ao eixo que n�o � de simetria
            rm = 0.5 + 2*(Iycmin/Iy)^2;
        end
    end
    else
        rm=1.00;
    end
else
   rm = 1.00; % demais casos, pelo menos por enquanto (visto que at� o
              % somente se est� trabalhando com perfis I,C e L(s� tra�ao
              % n�o se aplica).
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

%imprimindo na tela valores encontrados no formul�rio principal
% set(findobj(gcf,'Tag','esfcb1'),'String',rm);
% set(findobj(gcf,'Tag','esfcb2'),'String',Cb);
set(findobj(gcf,'Tag','esfcb1'),'String',Cb);
end