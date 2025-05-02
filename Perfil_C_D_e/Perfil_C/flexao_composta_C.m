function[] = flexao_composta_C()
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

%rotina para dimensionamento da resistencia do perfil I para combinaçao de
%esforços de momento com compressão ou tração

%flexocompressao
if f4 ==1;
    if Ncsd > 0
        x = Ncrd;
        if Ncsd/Ncrd >= 0.2
            flecomp = Ncsd/Ncrd + 8*(Mxsd/Mxrd)/9;
        else
            flecomp = Ncsd/(Ncrd*2) + (Mxsd/Mxrd);
        end
        %flexotração  
     else
         if Ntsd/Ntrd >= 0.2
             flecomp = Ntsd/Ntrd + 8*(Mxsd/Mxrd)/9;
         else
             flecomp = Ntsd/(Ntrd*2) + (Mxsd/Mxrd);
         end
    end
else
    
end