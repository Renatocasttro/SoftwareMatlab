function[] = Dimensoes_C()
global d;
global tf;
global tw;
global bf;
global h;
global Ag;
global Ix;
global Iy;
global ix;
global iy;
global J;
global Wx;
global Wy;
global f1;
global f2;
global Aux5;
global errov;

Aux5=0;


%soldado
if f1 == 1
    %duplamente simétrico            
  
                    d = str2num(get(findobj(gcf,'Tag','dimc1'),'String'));
                    tf = str2num(get(findobj(gcf,'Tag','dimc2'),'String'));
                    tw = str2num(get(findobj(gcf,'Tag','dimc3'),'String'));
                    bf = str2num(get(findobj(gcf,'Tag','dimc4'),'String'));
end

 % Buscando erro para variáveis vazias ou NaN
       if isempty(d) || isnan(d) || isempty(tf) || isnan(tf) || isempty(tw) || isnan(tw) || isempty(bf) || isnan(bf)
            errov = 1;
            errof();
            Aux5=1; % informa que tem algum problema de preechimento nos 
            % dados geométricos do perfil soldado. Na função Botão_calular
            % () vai fazer a verficação do valor de Aux5 e sópermitirá o 
            % proceguimento do processamento se Aux5=0, ou seja se não
            % nenhum erro de preenchimeto de dados.
       end

%laminado    
if f2 == 1             
    %duplamente simetrico            

                    d = str2num(get(findobj(gcf,'Tag','dimc1'),'String'));
                    tf = str2num(get(findobj(gcf,'Tag','dimc2'),'String'));
                    tw = str2num(get(findobj(gcf,'Tag','dimc3'),'String'));
                    bf = str2num(get(findobj(gcf,'Tag','dimc4'),'String'));
                    h = str2num(get(findobj(gcf,'Tag','dimc5'),'String'));
                    Ag = str2num(get(findobj(gcf,'Tag','dimc7'),'String'));
                    Ix = str2num(get(findobj(gcf,'Tag','dimc8'),'String'));
                    Iy = str2num(get(findobj(gcf,'Tag','dimc9'),'String'));
                    ix = str2num(get(findobj(gcf,'Tag','dimc10'),'String'));
                    iy = str2num(get(findobj(gcf,'Tag','dimc11'),'String'));
                    Wx = str2num(get(findobj(gcf,'Tag','dimc13'),'String'));
                    Wy = str2num(get(findobj(gcf,'Tag','dimc14'),'String'));
                                             
end
end