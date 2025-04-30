function[] = Dimensoes_I()
global d;
global tf;
global tw;
global bf;
global h;
global tfs;
global tfi;
global bfs;
global bfi;
global Ag;
global Ix;
global Iy;
global ix;
global iy;
global J;
global Wsup;
global Winf;
global Ysup;
global Yinf;
global Wx;
global Wy;
global Zx;
global Zy;
global f1;
global f4;
global errov;
global Aux5;

Aux5=0;
%soldado
if f1 == 1;
    %monossimetrico            
    if f4 == 1;
                    % valores em mm
                    d = str2num(get(findobj(gcf,'Tag','dimc1'),'String'));
                    tfs = str2num(get(findobj(gcf,'Tag','dimc2'),'String'));
                    tfi = str2num(get(findobj(gcf,'Tag','dimc3'),'String'));
                    tw = str2num(get(findobj(gcf,'Tag','dimc4'),'String'));
                    bfs = str2num(get(findobj(gcf,'Tag','dimc5'),'String'));
                    bfi = str2num(get(findobj(gcf,'Tag','dimc6'),'String'));
    %duplamente simétrico            
    else
                    % valores em mm
                    d = str2num(get(findobj(gcf,'Tag','dimc1'),'String'));
                    tf = str2num(get(findobj(gcf,'Tag','dimc2'),'String'));
                    tw = str2num(get(findobj(gcf,'Tag','dimc3'),'String'));
                    bf = str2num(get(findobj(gcf,'Tag','dimc4'),'String'));
    end
    
    % Buscando erro para variáveis vazias ou NaN para perfis soldados
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
else
    %monossimetrico
    if f4 == 1;
                    d = str2num(get(findobj(gcf,'Tag','dimc1'),'String'));
                    tfs = str2num(get(findobj(gcf,'Tag','dimc2'),'String'));
                    tfi = str2num(get(findobj(gcf,'Tag','dimc3'),'String'));
                    tw = str2num(get(findobj(gcf,'Tag','dimc4'),'String'));
                    bfs = str2num(get(findobj(gcf,'Tag','dimc5'),'String'));
                    bfi = str2num(get(findobj(gcf,'Tag','dimc6'),'String'));
                    Ag = str2num(get(findobj(gcf,'Tag','dimc7'),'String'));
                    Ix = str2num(get(findobj(gcf,'Tag','dimc8'),'String'));
                    Iy = str2num(get(findobj(gcf,'Tag','dimc9'),'String'));
                    ix = str2num(get(findobj(gcf,'Tag','dimc10'),'String'));
                    iy = str2num(get(findobj(gcf,'Tag','dimc11'),'String'));
                    J = str2num(get(findobj(gcf,'Tag','dimc12'),'String'));
                    Wsup = str2num(get(findobj(gcf,'Tag','dimc13'),'String'));
                    Winf = str2num(get(findobj(gcf,'Tag','dimc14'),'String'));
                    Ysup = str2num(get(findobj(gcf,'Tag','dimc15'),'String'));
                    Yinf = str2num(get(findobj(gcf,'Tag','dimc16'),'String'));
                
    %duplamente simetrico            
    else
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
                    J = str2num(get(findobj(gcf,'Tag','dimc12'),'String'));
                    Wx = str2num(get(findobj(gcf,'Tag','dimc13'),'String'));
                    Wy = str2num(get(findobj(gcf,'Tag','dimc14'),'String'));
                    Zx = str2num(get(findobj(gcf,'Tag','dimc15'),'String'));
                    Zy = str2num(get(findobj(gcf,'Tag','dimc16'),'String'));
                
    end
     % Buscando erro para variáveis vazias ou NaN para perfis laminados
       if isempty(d) || isnan(d) || isempty(tf) || isnan(tf) || isempty(tw) || isnan(tw) || isempty(bf)|| isempty(Zx)||isempty(Zy)||isempty(J) || isnan(bf)
            errov = 1;
            errof();
            Aux5=1; % informa que tem algum problema de preechimento nos 
            % dados geométricos do perfil soldado. Na função Botão_calular
            % () vai fazer a verficação do valor de Aux5 e sópermitirá o 
            % proceguimento do processamento se Aux5=0, ou seja se não
            % nenhum erro de preenchimeto de dados.
       end
end