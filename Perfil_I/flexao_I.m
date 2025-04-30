function[] = flexao_I()
global f4;
global f1;
global fla;
global flar;
global flap;
global flm;
global flmr;
global flmp;
global flt;
global fltr;
global fltp;
global Mr1x;
global Mp1x;
global Mr2x;
global Mp2x;
global Mr2y;
global Mp2y;
global Mc2x;
global Mc2y;
global Mr3x;
global Mp3x;
global Mc3x;
global E;
global J;
global fy;
global kc;
global Cw;
global Lb;
global Wx;
global Zx;
global Wy;
global Zy;
global Iy;
global Cb;
global Mxrd;
global Myrd;
global ya1;
global ar;
global Wsup;
global Winf;
global b3;
global Mn1x;
global Mn2x;
global Mn3x;
global errov;


%perfil monossimétrico
if f4 ==1
    Mn2y = 0;
    
    % Limite para alma esbelta - item H.1.2 da NBR 8800/08 
    if fla <= flar % alma nao esbeltam,conforme mitem H.1.2. da NBR 8800/08
        
    %Mr = momento com efeito de tensoes residuais, Mp = momento de %plastificaçao,
    %Mn = momento nominal, Mc = momento critico; sendo o índice 1 = FLA / FMT, índice
    %2 = FLM, índice 3 = FLT, e por último x ou y indicarão o eixo em análise. 
    %Ex: Mr1x = momento com efeito das tensoes residuais para FLA no eixo X
    
        W = min(Wsup,Winf); 
        Mr1x = W*fy;
        Mp1x = Zx*fy;
        Mr2x = Wsup*fy*0.7;
        Mp2x = Zx*fy;
        Mr3x = min (Wsup*fy*0.7 , Winf*fy);
        Mp3x = Zx*fy;
        %Análise para FLA
        %seçao compacta
        if fla <= flap
            Mn1x = Mp1x;
        %seçao semicompacta
        else
            Mn1x = Mp1x - (Mp1x-Mr1x)*(fla-flap)/(flar-flap);
            if Mn1x > Mp1x
                Mn1x = Mp1x;
            end
        end
        %Análise para FLM
        %seçao compacta
        if flm <= flmp
            Mn2x = Mp2x;
            
        else
            %seçao esbelta
            if flm > flmr
                %perfil soldado
                if f1 ==1
                    Mc2x = 0.9*E*kc*Wsup/(flmr)^2;
                    
                %perfil laminado
                else
                    Mc2x = 0.69*E*Wsup/(flmr)^2;
                end
                Mn2x = Mc2x;
                
            %seçao semicompacta    
            else
                Mn2x = Mp2x - (Mp2x-Mr2x)*(flm-flmp)/(flmr-flmp);
                if Mn2x > Mp2x
                    Mn2x = Mp2x;
                end
            end
            
        end
        %analise para FLT
        %seçao compacta
        if flt <= fltp
            Mn3x = Mp3x;
        
        else
            %seçao esbelta
            if flt > fltr
                Mc3x = Cb*(pi^2)*E*Iy*(b3+sqrt((b3^2)+(Cw/Iy)*(1+0.039*J*(Lb^2)/Cw)))/(Lb^2);
                Mn3x = Mc3x;
                
            %seçao semicompacta    
            else
                Mn3x = Cb*(Mp3x - (Mp3x-Mr3x)*(flt-fltp)/(fltr-fltp));
            end
            if Mn3x > Mp3x
                Mn3x = Mp3x;
            end
            
        end
        
    %perfis monosimétricos de alma esbelta
    else
        if f1 == 1; % I soldado
            % para (FMT) - escoamento da mesa tracionada
            % item H.2.1, NBR 8800.08,  pag.138
            Mn1x = Winf*fy;
            % % item H.2.2 da NBR 8800/08
            kpg = 1-ar*(fla-5.7*sqrt(E/fy))/(1200+300*ar); 
            if kpg >1
                kpg = 1;
            end
            Mp3x = kpg*Wsup*fy;
            % item H.1.3.B da NBR 8800/08
            if ar > 10 
                errov = 3;
            end
            % item H.1.3.c da NBR 8800/08
            if fla>=260
                errov = 3;
            end
            % Para FLT - item H.2.2 da NBR 8800/08
            % para viga curta
            if flt <= fltp  % item H.2.2.a
                Mn3x = Mp3x;
             
            %para viga longa    
            else if flt > fltr; % item H. 2.2.c
                    Mn3x = Cb*kpg*pi^2*E*Wsup/(flt^2);
                %para viga intermediaria % item H.2.2.b   
                else
                    Mn3x = Cb*kpg*Wsup*fy*(1-0.3*(flt-fltp)/(fltr-fltp));
                end
                if Mn3x > Mp3x;
                    Mn3x = Mp3x;
                end
            end
            
            % para FLM - Item H.2.3 da NBR 8800/08
            Mp2x = kpg*Wsup*fy;
            
            % para mesa compacta
            if flm <= flmp
                Mn2x = Mp2x;
             
            %para mesa esbelta    
            else if flm > flmr;
                    Mn2x = kpg*0.9*kc*E*Wsup/(flm^2);
                    
                %para mesa intermediaria    
                else
                    Mn2x = kpg*Wsup*fy*(1-0.3*(flm-flmp)/(flmr-flmp));
                    
                 end
            end
           
        else
        end
    end
    
%perfil duplamente simetrico
else
    %alma nao esbelta
    if fla <= flar
        
    %Mr = momento com efeito de tensoes residuais, Mp = momento de %plastificaçao,
    %Mn = momento nominal, Mc = momento critico; sendo o índice 1 = FLA / FMT, índice
    %2 = FLM, índice 3 = FLT, e por último x ou y indicarão o eixo em análise. 
    %Ex: Mr1x = momento com efeito das tensoes residuais para FLA no eixo X
    
        Mr1x = Wx*fy;
        Mp1x = Zx*fy;
        Mr2x = Wx*fy*0.7;
        Mp2x = Zx*fy;
        Mr2y = Wy*fy*0.7;
        Mp2y = Zy*fy;
        Mr3x = Wx*fy*0.7;
        Mp3x = Zx*fy;
        %Análise para FLA
        %seçao compacta
        if fla <= flap
            Mn1x = Mp1x;
        %seçao semicompacta
        else
            Mn1x = Mp1x - (Mp1x-Mr1x)*(fla-flap)/(flar-flap);
            if Mn1x > Mp1x
                Mn1x = Mp1x;
            end
        end
        %Análise para FLM
        %seçao compacta
        if flm <= flmp
            Mn2x = Mp2x;
            Mn2y = Mp2y;
        
        else
            %seçao esbelta
            if flm > flmr
                %perfil soldado
                if f1 ==1
                    Mc2x = 0.9*E*kc*Wx/(flmr)^2;
                    Mc2y = 0.9*E*kc*Wy/(flmr)^2;
                %perfil laminado
                else
                    Mc2x = 0.69*E*Wx/(flmr)^2;
                    Mc2y = 0.69*E*Wy/(flmr)^2;
                end
                Mn2x = Mc2x;
                Mn2y = Mc2y;
            %seçao semicompacta    
            else
                Mn2x = Mp2x - (Mp2x-Mr2x)*(flm-flmp)/(flmr-flmp);
                Mn2y = Mp2y - (Mp2y-Mr2y)*(flm-flmp)/(flmr-flmp);
                if Mn2x > Mp2x
                    Mn2x = Mp2x;
                end
                if Mn2y > Mp2y
                    Mn2y = Mp2y;
                end
            end
            
        end
        %analise para FLT
        %seçao compacta
        if flt <= fltp
            Mn3x = Mp3x;
        
        else
            %seçao esbelta
            if flt > fltr
                Mc3x = Cb*(pi^2)*E*Iy*sqrt((Cw/Iy)*(1+0.039*J*(Lb^2)/Cw))/(Lb^2);
                Mn3x = Mc3x;
                
            %seçao semicompacta    
            else
                Mn3x = Cb*(Mp3x - (Mp3x-Mr3x)*(flt-fltp)/(fltr-fltp));
            end
            if Mn3x > Mp3x
                Mn3x = Mp3x;
            end
            
        end
        
    %perfis duplamente simétricos de alma esbelta
    else
        % item H.1.3.b da NBR 8800/08
        if ar >10
            errov = 3;
        end
        % item H.1.3.c da NBR 8800/08
        if fla>=260
            errov = 3;
        end
        Mn2y = 0;
        if f1 == 1;
            % para (FMT) - escoamento da mesa tracionada
            Mn1x = Wx*fy;
            
            kpg = 1-ar*(fla-5.7*sqrt(E/fy))/(1200+300*ar);
            if kpg >1
                kpg = 1;
            end
            Mp3x = kpg*Wx*fy;
            
            % Para FLT
            % para viga curta
            if flt <= fltp
                Mn3x = Mp3x;
             
            %para viga longa    
            else if flt > fltr;
                    Mn3x = Cb*kpg*pi^2*E*Wx/(flt^2);
                %para viga intermediaria    
                else
                    Mn3x = Cb*kpg*Wx*fy*(1-0.3*(flt-fltp)/(fltr-fltp));
                end
                if Mn3x > Mp3x;
                    Mn3x = Mp3x;
                end
            end
            
            % para FLM
            Mp2x = kpg*Wx*fy;
            
            % para mesa compacta
            if flm <= flmp
                Mn2x = Mp2x;
             
            %para mesa esbelta    
            else if flm > flmr;
                    Mn2x = kpg*0.9*kc*E*Wx/(flm^2);
                    
                %para mesa intermediaria    
                else
                    Mn2x = kpg*Wx*fy*(1-0.3*(flm-flmp)/(flmr-flmp));
                    
                 end
            end
           
        else
        end
    end
end

%Mxrd deverá ser o menor valor entre as resistencias encontradas em kN m.
Mxrd = min([Mn1x Mn2x Mn3x])/(ya1*100);
        
%Myrd deverá ser o menor valor entre as resistencias encontradas
Myrd = Mn2y/(ya1*100);


