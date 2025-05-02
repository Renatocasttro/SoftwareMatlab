
function An = CALCULO_DE_An(Ag,n,dp,t)
%dp diâmetro do parafuso
%n número de parafusos da seção tranversal

An = (Ag-(n*((dp/10)+0.35)*(t/10)));
end
