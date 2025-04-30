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
    % Abre formulário que permite o cálculo do Cb
    movegui(CbTeste, 'center');
    % movegui(CbTeste,[638,165])
    % Espera até que o formulário CBteste seja fechado
    waitfor(CbTeste);
Aux3=0;
end 


% rotina para o calculo de rm (item 5.4.2.3 NBR 8800, p.48)

if f4 == 1   % perfil monossimétrico
    if Cb_Case_Aux==2; % seções sujeitas à curvatura reversa
    if pe==4 %perfil C
        if Mysd~=0; % fletido em relação ao eixo que não é de simetria
            rm=0.5+2*(Ixcc1/Ix); % aproximação visto que neste caso Iyc é muito pequeno.
        end
    end 
    if pe==1 % perfi I, monossimétrico (só para perfis soldados)
        if Mxsd~=0; % fletido em relação ao eixo que não é de simetria
            rm = 0.5 + 2*(Iycmin/Iy)^2;
        end
    end
    else
        rm=1.00;
    end
else
   rm = 1.00; % demais casos, pelo menos por enquanto (visto que até o
              % somente se está trabalhando com perfis I,C e L(só traçao
              % não se aplica).
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

%imprimindo na tela valores encontrados no formulário principal
% set(findobj(gcf,'Tag','esfcb1'),'String',rm);
% set(findobj(gcf,'Tag','esfcb2'),'String',Cb);
set(findobj(gcf,'Tag','esfcb1'),'String',Cb);
end