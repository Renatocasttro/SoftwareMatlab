
function An = CALCULO_DE_An(Ag,n,dp,t)
%dp di�metro do parafuso
%n n�mero de parafusos da se��o tranversal

An = (Ag-(n*((dp/10)+0.35)*(t/10)));
end
