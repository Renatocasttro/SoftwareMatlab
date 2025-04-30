
function An = CALCULO_DE_An(AgR,n,dp,t)
% Área da seção líquida dos elementos conectados
% Item 5.2.4 da NBR 8800/23, pág.40
% ver observação em Facury,2016, pág.101 sobre o valor adicional de 3.5 mm
% no diâmetro do furo.
%dp diâmetro do parafuso
%n número de parafusos da seção tranversal
An = (AgR-(n*((dp/10)+0.35)*(t/10)));
if An<0
    An=0; % neste caso o diâmetro/quantidade de parafusos está icompatível
          % com as dimensões do perfil e, desta forma Ntrd=0.
end
end
