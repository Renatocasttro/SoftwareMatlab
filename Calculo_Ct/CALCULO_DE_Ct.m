
function Ct = CALCULO_DE_Ct(Ac,ec,lc,An,TpCt)
%global ec;
%global lc;
%global Ct;

%TpCt50 = get(findobj(gcf,'Tag','radiobutton50'),'Value');
%TpCt51 = get(findobj(gcf,'Tag','radiobutton51'),'Value');
%TpCt52 = get(findobj(gcf,'Tag','radiobutton52'),'Value');
global errov;


% Parametros
if TpCt==50 
    Ct = 1.00;
end

if TpCt==51 
        Ct = Ac/An;
end

if TpCt==52 
            Ct = 1 - (ec*10/lc);
        if Ct<0.60;
            errov=9;
            errof ();
        else if Ct >0.90;
                Ct = 0.90;
            end
         
        end
end
end

        
            
           
            


            






