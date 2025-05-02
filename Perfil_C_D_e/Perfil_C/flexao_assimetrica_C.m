function[] = flexao_assimetrica_C()
global f4;
global Mxrd;
global Mxsd;
global Myrd;
global Mysd;
global fleassi;
global fla;
global flar;
%rotina para dimensionamento da resistencia do perfil I para combinaçao de
%esforços de momentos atuando simultaneamente nos dois eixos do perfil

if f4 ==1
    fleassi = Mxsd/Mxrd;
else
    if fla > flar
        fleassi = Mxsd/Mxrd;
    else
        fleassi = Mxsd/Mxrd+Mysd/Myrd;
    end
end