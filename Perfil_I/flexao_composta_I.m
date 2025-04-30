function[] = flexao_composta_I()
global f4;
global Mxrd;
global Mxsd;
global Myrd;
global Mysd;
global Ncrd;
global Ncsd;
global Ntrd;
global Ntsd;
global flecomp;
global fla;
global flar;

%rotina para dimensionamento da resistencia do perfil I para combina�ao de
%esfor�os de momento com compress�o ou tra��o( item 5.5 e 5.5.1.2 da NBR
%8800/08.


if f4 ==1; % monossim�trica
    % Neste caso, a NBR 8800/08, n�o prev�s a atua��o de momentos na
    % dire�ao y (item 5.4.1, segundo destaque)
    if Ncsd > 0 %flexocompress�o
        if Ncsd/Ncrd >= 0.2
            flecomp = Ncsd/Ncrd + 8*(Mxsd/Mxrd)/9;
        else
            flecomp = Ncsd/(Ncrd*2) + (Mxsd/Mxrd);
        end
        %flexotra��o  
     else
         if Ntsd/Ntrd >= 0.2
             flecomp = Ntsd/Ntrd + 8*(Mxsd/Mxrd)/9;
         else
             flecomp = Ntsd/(Ntrd*2) + (Mxsd/Mxrd);
         end
    end
else   
    if fla > flar % perfil de alma esbelta, sim�trico.
        % Perfil de alma esbelta. A NBR 8800/08 s� prev� esta
        % situa��o em se trantando de perfis I, H, soldados, com dois eixos
        % de simetria ou um eixo de simetria no plano m�dio da alma
        %(carregadas neste plano), em que se tenha labda (h/tw, sendo h a
        % dist�ncia entrer as faces internas da mesa) seja superior
        % 5.7*sqrt(E/fy)(Anexo H, da NBR 8800/08).
        if Ncsd > 0
            if Ncsd/Ncrd >= 0.2
                flecomp = Ncsd/Ncrd + 8*(Mxsd/Mxrd)/9;
            else
                flecomp = Ncsd/(Ncrd*2) + (Mxsd/Mxrd);
            end
            %flexotra��o  
        else
            if Ntsd/Ntrd >= 0.2
                flecomp = Ntsd/Ntrd + 8*(Mxsd/Mxrd)/9;
            else
                flecomp = Ntsd/(Ntrd*2) + (Mxsd/Mxrd);
            end
        end
    else % Perfil sim�trico de alma n�o esbelta
        if Ncsd > 0
            if Ncsd/Ncrd >= 0.2
                flecomp = Ncsd/Ncrd + 8*(Mxsd/Mxrd+Mysd/Myrd)/9;
            else
                flecomp = Ncsd/(Ncrd*2) + (Mxsd/Mxrd+Mysd/Myrd);
            end
        %flexotra��o - 
        else
            if Ntsd/Ntrd >= 0.2
                flecomp = Ntsd/Ntrd + 8*(Mxsd/Mxrd+Mysd/Myrd)/9;
            else
                flecomp = Ntsd/(Ntrd*2) + (Mxsd/Mxrd+Mysd/Myrd);
            end
        end
    end
end