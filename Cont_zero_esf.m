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

% Esta fun�ao verifica se os valores esfor�os correpondente � voca��o de cada tipo
% de perfil forma fornecidados e se n�o h� volores de vari�veis
% correspondnete vazias. Em caso afirmativo, informa que � necess�rio
% inserir os valores, chamando a fun��o de erro.

if isnan(Nsd)
       errov=1;
       errof();
       Aux4=1; % n�o permitar� abrir o formal�rio de Cb na fun��o...
                 ....Bot�o_calcular().
end

        
switch pe
    case 1 % perfil I
      if f5==1 % pefil I, soldado ou laminado, duplamente sim�trico.
          if isnan(Mxsd)==1||isnan(Mysd)==1||isnan(Vxsd)==1||isnan(Vysd)==1
              errov=1;
              errof();
              Aux4=1; % n�o permitar� abrir o formal�rio de Cb na fun��o...
                      ....Bot�o_calcular().
          end
      else
          if f4==1 % pefil I, soldado monossim�trico
              if isnan(Mxsd)==1||isnan(Vysd)==1
                 errov=1;
                 errof();
                 Aux4=1; % n�o permitar� abrir o formal�rio de Cb na...
                         % ...fun��o Bot�o_calcular()
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
                 Aux4=1; % n�o permitar� abrir o formal�rio de Cb na...
                         % ...fun��o Bot�o_calcular().
        end    
    case 4 % perfil C laminado ou soldado
        if isnan(Mxsd)==1||isnan(Mysd)==1||isnan(Vxsd)==1||isnan(Vysd)==1
              errov=1;
              errof();
              Aux4=1; % n�o permitar� abrir o formal�rio de Cb na...
                      % ...fun��o Bot�o_calcular().
        end
        
end
end