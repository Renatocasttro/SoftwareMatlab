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

%rotina para dimensionamento da resistencia do perfil T para combinaçao de
%esforços de momento com compressão ou tração( item 5.5 e 5.5.1.2 da NBR
%8800/08.
% Observar que, no perfil T, a NBR 8800/08,item 5.4.1.1, admite somente 
% momento em torno do eixo x, perpendicular à alma.

if f4 ==1; % monossimétrica
    % Neste caso, a NBR 8800/08, não prevès a atuação de momentos na
    % direçao y (item 5.4.1, segundo destaque)
    if Ncsd > 0 %flexocompressão
        if Ncsd/Ncrd >= 0.2
            flecomp = Ncsd/Ncrd + 8*(Mxsd/Mxrd)/9;
        else
            flecomp = Ncsd/(Ncrd*2) + (Mxsd/Mxrd);
        end
    else %flexotração  
         if Ntsd/Ntrd >= 0.2
             flecomp = Ntsd/Ntrd + 8*(Mxsd/Mxrd)/9;
         else
             flecomp = Ntsd/(Ntrd*2) + (Mxsd/Mxrd);
         end
    end
end   
end