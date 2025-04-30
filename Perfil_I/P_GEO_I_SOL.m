function[] = P_GEO_I_SOL()
global d;
global tf;
global tw;
global bf;
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
global Wx;
global Wy;
global Zx;
global Zy;
global h;
global Cw;
global y0;
global r0;
global kc;
global f5;
global selecao;
global m;
global Wsup;
global Winf;
global hc;
global hp;
global ryc;
global ryt;
global alfay;
global Ysup;
global Yinf;
global ar;
global errov;
global Iyc;
global Iyt;
global Iycmin;

if selecao == 0;
    if f5 == 1;
        %calculando propriedades geométricas necessárias para perfis I soldados
        %duplamente simétricos
        
% Buscando erro para variáveis vazias ou NaN
       if isempty(d) || isnan(d) || isempty(tf) || isnan(tf) || isempty(tw) || isnan(tw) || isempty(bf) || isnan(bf)
            errov = 1;
            errof();
       end
      
        h = (d - 2*tf); % altura da alma, descontando as espessuras das mesas
        Ag = (2*bf*tf)/100 + (h/10)*(tw/10);
        Ix = (((tw/10)*(h/10)^3) + (bf/10)*((d/10)^3 - (h/10)^3))/12;
        Iy = ((2*(tf/10)*(bf/10)^3) + (h/10)*(tw/10)^3)/12;
        Iyc = tfs*(bfs^3)/120000;
        Iyt = tfi*(bfi^3)/120000;
        Iycmin=min(Iyc,Iyt);
        J = (2*(bf/10)*(tf/10)^3 + ((d/10) - (tf/10))*(tw/10)^3)/3;
        Cw = (((h/10)+(tf/10))^2*Iy)/4;
        ix = sqrt(Ix/Ag);
        iy = sqrt(Iy/Ag);
        r0 = sqrt(ix^2 + iy^2);
        y0 = 0;
        Wx = Ix/(d/20);
        Wy = Iy/(bf/20);
        Zx = (bf*tf*(d-tf)+(tw/4)*(d-2*tf)^2)/1000;
        Zy = ((bf^2)*(tf/2)+(tw^2)*(d-2*tf)/4)/1000;
        m = Ag*0.78548;
        ryc = sqrt((tf*(bf^3)/120000 + (d/2-tf)*tw^3/10000)/(tf*bf/100+(d/2-tf)*tw/100));
        ryt = sqrt((tf*(bf^3)/120000 + (d/2-tf)/tw^3/30000)/(tf*bf/100+(d/2-tf)*tw/300));
        ar = (h*tw/(2*bf*tf));     
        % Tabela 4, p. 47 da NBR 8800/24.       
        % kc > = 0.35 & kc < = 0.76
        kc = 4/sqrt(h/tw);
        if kc <0.35;
            kc = 0.35;
        else if kc >0.76;
                kc = 0.76;
            else
            end
        end
            
        %imprimindo na tela os valores obtidos
        set(findobj(gcf,'Tag','dimc1'),'String',d);
        set(findobj(gcf,'Tag','dimc2'),'String',tf)
        set(findobj(gcf,'Tag','dimc3'),'String',tw);
        set(findobj(gcf,'Tag','dimc4'),'String',bf);
        set(findobj(gcf,'Tag','dimc7'),'String',Ag)
        set(findobj(gcf,'Tag','dimc8'),'String',Ix);
        set(findobj(gcf,'Tag','dimc9'),'String',Iy);
        set(findobj(gcf,'Tag','dimc10'),'String',ix);
        set(findobj(gcf,'Tag','dimc11'),'String',iy);
        set(findobj(gcf,'Tag','dimc12'),'String',J);
        set(findobj(gcf,'Tag','dimc13'),'String',Wx);
        set(findobj(gcf,'Tag','dimc14'),'String',Wy);
        set(findobj(gcf,'Tag','dimc15'),'String',Zx);
        set(findobj(gcf,'Tag','dimc16'),'String',Zy);
        set(findobj(gcf,'Tag','dimc17'),'String',m);
    
    else
    %calculando propriedades geométricas necessárias para perfis I soldados
    %monossimétricos
    
        %buscando erro para variáveis vazias ou NaN
        if isempty(d)==1||isempty(tfs)==1||isempty(tfi)==1||isempty(tw)==1||isempty(bfs)==1||isempty(bfi)==1
            errov = 1;
            errof ();
        end
        if isnan(d)==1||isnan(tfs)==1||isnan(tfi)==1||isnan(tw)==1||isnan(bfs)==1||isnan(bfi)==1
            errov = 1;
            errof ();
        end
        
        h = (d - tfs - tfi); % em mm
        delta = (tfi*(bfi-tw)-tfs*(bfs-tw)+d*tw)/(2*tw);
        LP = delta/10;
        Ag = (bfs*tfs)/100 + (bfi*tfi)/100 + (h*tw)/100; % em cm
        cg = ((bfs*(tfs^2)/2)+tw*h*(tfs+h/2)+tfi*bfi*(tfs+h+tfi/2))/(1000*Ag); % em cm
        Ysup = cg; % em cm
        Yinf = d/10 - cg; % em cm
        hc = 2*(cg-tfs/10); % em cm
        hp = 2*(LP-tfs/10); % em cm
        h0 = (d - tfs/2 - tfi/2)/10; % em cm
        hs = cg-tfs/20; % em cm
        hi = h0-hs; % em cm
        y0 = (cg-LP);
        % Ix, Iy e J em cm4
        Ix = bfs*(tfs^3)/120000+bfi*(tfi^3)/120000+tw*(h^3)/120000+tfs*bfs*(hs^2)/100+tfi*bfi*(hi^2)/100+tw*h*((h/20+tfs/10-cg)^2)/100;
        Iy = (((tfs/10)*(bfs/10)^3)+((tfi/10)*(bfi/10)^3)+((h/10)*(tw/10)^3))/12;
        J = ((bfs/10)*(tfs/10)^3+h0*(tw/10)^3+(bfi/10)*(tfi/10)^3)/3;
        Cw = ((h0^2)/12)*(((tfi/10)*(bfi/10)^3*(tfs/10)*(bfs/10)^3)/((tfi/10)*(bfi/10)^3+(tfs/10)*(bfs/10)^3));
        ix = sqrt(Ix/Ag); % em cm
        iy = sqrt(Iy/Ag); % em cm
        r0 = sqrt(ix^2 + iy^2 + y0^2); % em cm
        % Zx, Zy, Wsup, Winf, Iyc, Iyt, ryc, ryt em cm
        Zx = ((delta^2)*(tw/2)+((d-delta)^2)*(tw/2)+tfs*(bfs-tw)*(delta-tfs/2)+tfi*(bfi-tw)*(d-delta-tfi/2))/1000;
        Zy = ((d-tfs-tfi)*(tw/2)^2+tfs*(bfs/2)^2+tfi*(bfi/2)^2)/1000;
        m = Ag*0.78548;
        Wsup = Ix/cg;
        Winf = Ix/(d/10-cg);
        % xxxxxxxxxxxx
        % Item H.1.3 e nota 9 da Tabela G.1
        % do Anexo G da NBR 8800.08.
%         Iyc = tfs*(bfs^3)/120000; 
%         Iyt = tfi*(bfi^3)/120000;
%         Iycmin=min(Iyc,Iyt); 
%        alfay = Iyc/Iyt; % Item H.1.3 e nota 9 da Tabela G.1
                         % do Anexo G da NBR 8800.08
   % xxxxxxxxxxxx                                            
        % Atualizado para Tabela D.1, pág. 144, da NBR
        % 8800/24, observando as notas i e j (pág. 146)
        IyTc=(tfs*(bfs^3)/12) % +(h*(tw^3)/12); % desprezado o complemento
        Iyt=(tfi*(bfi^3)/12)  % +(h*(tw^3)/12); % deprezado o complemento
        Iycmin=min(IyTc,Iyt);
        alfay=IyTc/Iy;
             
        ryc = sqrt((Iyc + (cg-tfs/10)*tw^3/1000)/(tfs*bfs/100+(cg-tfs/10)*tw/10));
        ryt = sqrt((Iyc + (cg-tfs/10)*tw^3/3000)/(tfs*bfs/100+(cg-tfs/10)*tw/30));
        amenor = min(bfs*tfs,bfi*tfi);
        amaior = max(bfs*tfs,bfi*tfi);
        aream = amenor + h*tw - amaior;
        % Tabela 4, p. 47 da NBR 8800/24.
        kc = 4/sqrt(h/tw);
        if kc <0.35;
            kc = 0.35;
        else if kc >0.76;
                kc = 0.76;
            else
            end
        end
        if cg > (tfs/10);
            ar = (10*cg-tfs)*tw/(tfs*bfs);
        else
            ar = 0;
        end
        
        % Buscando erro para perfil monossimétrico.
        % Item H.1.3 e nota 9 da Tabela G.1 do Anexo G da NBR 8800/08.
        % xxxxxxxxx
%         if alfay < 1/9;
%             errov = 2;
%         else if alfay > 9
%                 errov = 2;
%             end
%         end
        % xxxxxxxxx
        % Atualização para para item i e j, da Tabela D.1, pág. 146 da NBR
        % 8800/24.
        if alfay<0.1;
            errov=2;
        else if alfay>0.9
                errov=2;
            end
        end
               
if aream <= 0
            errov = 2;
        end
        errof ();
             
        %imprimindo na tela os valores obtidos
        set(findobj(gcf,'Tag','dimc1'),'String',d);
        set(findobj(gcf,'Tag','dimc2'),'String',tfs)
        set(findobj(gcf,'Tag','dimc3'),'String',tfi);
        set(findobj(gcf,'Tag','dimc4'),'String',tw);
        set(findobj(gcf,'Tag','dimc5'),'String',bfs);
        set(findobj(gcf,'Tag','dimc6'),'String',bfi);
        set(findobj(gcf,'Tag','dimc7'),'String',Ag)
        set(findobj(gcf,'Tag','dimc8'),'String',Ix);
        set(findobj(gcf,'Tag','dimc9'),'String',Iy);
        set(findobj(gcf,'Tag','dimc10'),'String',ix);
        set(findobj(gcf,'Tag','dimc11'),'String',iy);
        set(findobj(gcf,'Tag','dimc12'),'String',J);
        set(findobj(gcf,'Tag','dimc13'),'String',Wsup);
        set(findobj(gcf,'Tag','dimc14'),'String',Winf);
        set(findobj(gcf,'Tag','dimc15'),'String',Ysup);
        set(findobj(gcf,'Tag','dimc16'),'String',Yinf);
        set(findobj(gcf,'Tag','dimc17'),'String',m);
    end
else
    if f5 == 1;
    %calculando propriedades geométricas necessárias para perfis I soldados
    %duplamente simétricos
        h = (d - 2*tf); % em mm
        r0 = sqrt(ix^2 + iy^2);
        Cw = ((h/10+(tf/10))^2*Iy)/4;
        % kc > = 0.35 & kc < = 0.76
        y0 = 0;
        ryc = sqrt((tf*(bf^3)/120000 + (d/2-tf)*tw^3/10000)/(tf*bf/100+(d/2-tf)*tw/100));
        ryt = sqrt((tf*(bf^3)/120000 + (d/2-tf)/tw^3/30000)/(tf*bf/100+(d/2-tf)*tw/300));
        ar = (h*tw/(2*bf*tf));
        % Tabela 4, p. 47 da NBR 8800/24.
        kc = 4/sqrt(h/tw);
        if kc <0.35;
            kc = 0.35;
        else if kc >0.76;
                kc = 0.76;
            else
            end
        end
            
    else
    %calculando propriedades geométricas necessárias para perfis I soldados
    %monossimétricos
        h = (d - tfs - tfi);
        delta = (tfi*(bfi-tw)-tfs*(bfs-tw)+d*tw)/(2*tw);
        LP = delta/10;
        cg = Ysup;
        h0 = (d - tfs/2 - tfi/2)/10;
        y0 = (cg-LP);
        Cw = ((h0^2)/12)*(((tfi/10)*(bfi/10)^3*(tfs/10)*(bfs/10)^3)/((tfi/10)*(bfi/10)^3+(tfs/10)*(bfs/10)^3));
        r0 = sqrt(ix^2 + iy^2 + y0^2);
        Iyc = tfs*(bfs^3)/120000;
        Iyt = tfi*(bfi^3)/120000; 
        Iycmin=min(Iyc,Iyt);
        alfay = Iyc/Iyt;
        ryc = sqrt((Iyc + (cg-tfs/10)*tw^3/1000)/(tfs*bfs/100+(cg-tfs/10)*tw/10));
        ryt = sqrt((Iyc + (cg-tfs/10)*tw^3/3000)/(tfs*bfs/100+(cg-tfs/10)*tw/30));
        hc = 2*(cg-tfs/10);
        hp = 2*(LP-tfs/10);
        if cg > (tfs/10);
            ar = (10*cg-tfs)*tw/(tfs*bfs);
        else
            ar = 0;
        end
        % Tabela 4, p. 47 da NBR 8800/24.
        kc = 4/sqrt(h/tw);
        if kc <0.35;
            kc = 0.35;
        else if kc >0.76;
                kc = 0.76;
            else
            end
        end
    end   
end