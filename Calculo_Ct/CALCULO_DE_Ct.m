  function [] = CALCULO_DE_Ct()
global errov;
global ct_otm;
global TpCt;
global TpCt1;
global avan_ct;
global lc;
global Ac;
global ec;
global An;
global Ct;
global matriz_tracao;
global i;
global otm;


% Parametros
% TpCt significa tipo de situa�ao de c�lculo de Ct (ver item 5.2.5 NBR
% 8800)

if ct_otm==1
   TpCt=TpCt1;
end

if TpCt==50 
    Ct = 1.00;
end

if TpCt==51 
        Ct = Ac/An;
end

if TpCt==52 
           Ct = 1 - (ec/lc);
% As considera��es a seguir foram retiradas na nova vers�o da NBR 8800/23
%  (ver p�g.41 da nbr 8800.24 e a vers�o da 8800.08 - p�g.39)
%         %while Ct<0.60;   
%          %   Aciona_Formulario_Ct();
%           %  waitfor (Ct_Form);
%            % Ct = 1 - (ec/lc);
%         %end
% xxxxxxxxx
% A vers�o da NBR 8800/24, p�g. 41 restirou a limita��o de Ct est� n�o...
....poder ser maior que 0.9 e n�o permite o uso de perfis com Ct...
....menor de 0.6. Neste program foi mantido a restri��o. 
        if Ct >0.90;
               Ct = 0.90;
        end
% xxxxxxxxx         
end

if ct_otm==0
    TpCt1=TpCt;
    TpCt='';
end
  if otm==1
      matriz_tracao(i,7)=Ct;
  else
      matriz_tracao(1,7)=Ct;
  end
  end
  
      

        
            
           
            


            






