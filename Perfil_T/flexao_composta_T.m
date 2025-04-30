function[] = flexao_composta_T()
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

%rotina para dimensionamento da resistencia do perfil T para combina�ao de
%esfor�os de momento com compress�o ou tra��o( item 5.5 e 5.5.1.2 da NBR
%8800/08.
% Observar que, no perfil T, a NBR 8800/08,item 5.4.1.1, admite somente 
% momento em torno do eixo x, perpendicular � alma.

if f4 ==1; % monossim�trica
    % Neste caso, a NBR 8800/08, n�o prev�s a atua��o de momentos na
    % dire�ao y (item 5.4.1, segundo destaque)
    if Ncsd > 0 %flexocompress�o
        if Ncsd/Ncrd >= 0.2
            flecomp = Ncsd/Ncrd + 8*(Mxsd/Mxrd)/9;
        else
            flecomp = Ncsd/(Ncrd*2) + (Mxsd/Mxrd);
        end
    else %flexotra��o  
         if Ntsd/Ntrd >= 0.2
             flecomp = Ntsd/Ntrd + 8*(Mxsd/Mxrd)/9;
         else
             flecomp = Ntsd/(Ntrd*2) + (Mxsd/Mxrd);
         end
    end
end   
end