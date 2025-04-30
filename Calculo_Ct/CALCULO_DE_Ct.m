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
% TpCt significa tipo de situaçao de cálculo de Ct (ver item 5.2.5 NBR
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
% As considerações a seguir foram retiradas na nova versão da NBR 8800/23
%  (ver pág.41 da nbr 8800.24 e a versão da 8800.08 - pág.39)
%         %while Ct<0.60;   
%          %   Aciona_Formulario_Ct();
%           %  waitfor (Ct_Form);
%            % Ct = 1 - (ec/lc);
%         %end
% xxxxxxxxx
% A versão da NBR 8800/24, pág. 41 restirou a limitação de Ct está não...
....poder ser maior que 0.9 e não permite o uso de perfis com Ct...
....menor de 0.6. Neste program foi mantido a restrição. 
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
  
      

        
            
           
            


            






