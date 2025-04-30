function[]=Cont_zero_esf()
global pe;
global f1;
global f2;
global f3;
global f4;
global f5;
global Mxsd;
global Mysd;
global Vxsd;
global Vysd;
global Nsd;
global Aux4;
global errov;
global Ncsd;
global Ntsd;

% Esta funçao verifica se os valores esforços correpondente à vocação de cada tipo
% de perfil forma fornecidados e se não há volores de variáveis
% correspondnete vazias. Em caso afirmativo, informa que é necessário
% inserir os valores, chamando a função de erro.

if isnan(Nsd)
       errov=1;
       errof();
       Aux4=1; % não permitará abrir o formalário de Cb na função...
                 ....Botão_calcular().
end

        
switch pe
    case 1 % perfil I
      if f5==1 % pefil I, soldado ou laminado, duplamente simétrico.
          if isnan(Mxsd)==1||isnan(Mysd)==1||isnan(Vxsd)==1||isnan(Vysd)==1
              errov=1;
              errof();
              Aux4=1; % não permitará abrir o formalário de Cb na função...
                      ....Botão_calcular().
          end
      else
          if f4==1 % pefil I, soldado monossimétrico
              if isnan(Mxsd)==1||isnan(Vysd)==1
                 errov=1;
                 errof();
                 Aux4=1; % não permitará abrir o formalário de Cb na...
                         % ...função Botão_calcular()
              end
          end
      end
%    case 2 % perfil L, laminado ou soldado
%        if isnan(Nsd)==1
%            errov=1;
%               errof();
%               Aux4=1;
%        end   
   
    case 3 % perfil T, laminado ou soldado    
        if isnan(Mxsd)==1||isnan(Vysd)==1
                 errov=1;
                 errof();
                 Aux4=1; % não permitará abrir o formalário de Cb na...
                         % ...função Botão_calcular().
        end    
    case 4 % perfil C laminado ou soldado
        if isnan(Mxsd)==1||isnan(Mysd)==1||isnan(Vxsd)==1||isnan(Vysd)==1
              errov=1;
              errof();
              Aux4=1; % não permitará abrir o formalário de Cb na...
                      % ...função Botão_calcular().
        end
        
end
end