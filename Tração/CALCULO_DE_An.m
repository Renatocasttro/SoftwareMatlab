
function An = CALCULO_DE_An(AgR,n,dp,t)
% �rea da se��o l�quida dos elementos conectados
% Item 5.2.4 da NBR 8800/23, p�g.40
% ver observa��o em Facury,2016, p�g.101 sobre o valor adicional de 3.5 mm
% no di�metro do furo.
%dp di�metro do parafuso
%n n�mero de parafusos da se��o tranversal
An = (AgR-(n*((dp/10)+0.35)*(t/10)));
if An<0
    An=0; % neste caso o di�metro/quantidade de parafusos est� icompat�vel
          % com as dimens�es do perfil e, desta forma Ntrd=0.
end
end
