function[] = Dimensoes_T()
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
global f2;
global f4;
global f5;
global Aux5;
global errov;
global xg;
global Wxc; % m�dulo de resist�ncia el�stica do lado comprimido da se��o
            % relativo ao eixo de flex�o. No caso de perfil T da mesa 
            % comprimida.

Aux5=0;

%soldado
if f1 == 1;
    %duplamente sim�trico            
                    % Aten��o: dimens�es de d, tf, tw e bf em mm
                    d = str2num(get(findobj(gcf,'Tag','dimc1'),'String')); 
                    tf = str2num(get(findobj(gcf,'Tag','dimc2'),'String'));
                    tw = str2num(get(findobj(gcf,'Tag','dimc3'),'String'));
                    bf = str2num(get(findobj(gcf,'Tag','dimc4'),'String'));
end
    
 % Buscando erro para vari�veis vazias ou NaN
       if isempty(d) || isnan(d) || isempty(tf) || isnan(tf) || isempty(tw) || isnan(tw) || isempty(bf) || isnan(bf)
            errov = 1;
            errof();
            Aux5=1; % informa que tem algum problema de preechimento nos 
            % dados geom�tricos do perfil soldado. Na fun��o Bot�o_calular
            % () vai fazer a verfica��o do valor de Aux5 e s�permitir� o 
            % proceguimento do processamento se Aux5=0, ou seja se n�o
            % nenhum erro de preenchimeto de dados.
       end

%laminado    
  if f2 == 1;              
    %duplamente simetrico            

                    d = str2num(get(findobj(gcf,'Tag','dimc1'),'String')); % em mm
                    tf = str2num(get(findobj(gcf,'Tag','dimc2'),'String')); % em mm
                    tw = str2num(get(findobj(gcf,'Tag','dimc3'),'String'));% em mm
                    bf = str2num(get(findobj(gcf,'Tag','dimc4'),'String')); % em mm
                    % h = str2num(get(findobj(gcf,'Tag','dimc5'),'String'));
                    % h - altura da alma do tefil, descontado da espessrua da
                    % mesa.
                    h=d-tf; % em mm
                    % x1 - dist�ncia do centroide da se��o at� o bordo
                    % externo da mesa do perfil T.
                    xg = str2num(get(findobj(gcf,'Tag','dimc5'),'String'));
                    Ag = str2num(get(findobj(gcf,'Tag','dimc7'),'String'));
                    Ix = str2num(get(findobj(gcf,'Tag','dimc8'),'String'));
                    Iy = str2num(get(findobj(gcf,'Tag','dimc9'),'String'));
                    ix = str2num(get(findobj(gcf,'Tag','dimc10'),'String'));
                    iy = str2num(get(findobj(gcf,'Tag','dimc11'),'String'));
                    J = str2num(get(findobj(gcf,'Tag','dimc12'),'String'));
                    % Wx e Wy s�o os maiores m�dulos resitentes, ou seja,no
                    % caso do eixo x (aten��o eixo vertical), neste caso,
                    % Ix/((d/10)-xg), onde ((d/10)-xg) � a dist�ncia do centroide da
                    % se�ao, posicionado de xg do bordo da mesa, at� a
                    % extremidade da alma.
                    Wx = str2num(get(findobj(gcf,'Tag','dimc13'),'String'));
                    Wy = str2num(get(findobj(gcf,'Tag','dimc14'),'String'));
                    Wxc=Ix/xg; % em cm3
                    Wsup=Wxc;
                    Winf=Wx;
                    Zx = str2num(get(findobj(gcf,'Tag','dimc15'),'String'));
                    Zy = str2num(get(findobj(gcf,'Tag','dimc16'),'String'));
                
    end
end