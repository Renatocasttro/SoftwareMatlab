function calculo_Wef
global d
global tf
global tw
global bf
global E
global fy
global hef
global xgef1
global xgef2
global xgef
global Ief1
global Ief2
global Ief
global Wef


%Calculo Wef
%calculo hef (altura efetiva);
hef1 = 1.92*tw*sqrt(E/fy)*(1-0.34/(d/tw)*sqrt(E/fy));
if hef1 > d
hef = d;
else
hef = hef1;
end

%Calculo do xgef (centro de inercia da seção com a altura efetiva)
xgef1 = (hef-2*tf)*tw^2/2;
xgef2 = (tf*bf^2)/2;
xgef = (xgef1+2*xgef2)/((hef-2*tf)*tw+2*bf*tf);
%Calculo do Ief (momento de inercia da seção com a altura efetiva)
Ief1 = (hef-2*tf)*tw^3/12+(hef-2*tf)*tw*(xgef-tw/2)^2;
Ief2 = tw*bf^3/12+tf*bf*(bf/2-xgef)^2;
Ief = (Ief1+2*Ief2)/10000;
Wef = Ief*10/(bf-xgef);
end