function[] = flexao_C()

global f1;
global errorv;
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
global Zxc;
global Wy;
global Zy;
global Iy;
global Cb1;
global Mxrd;
global Myrd;
global ya1;
global ar;
global Mysd;
global Mn1x;
global Mn2x;
global errov;
global Wef;
global flapy;
global flary;
global Mn3x;
global Mp1y;
global Mr1y;
global Mnxmax;
global Mnymax;

%alma nao esbelta
    if fla <= flar
        
    %Mr = momento com efeito de tensoes residuais, Mp = momento de %plastificaçao,
    %Mn = momento nominal, Mc = momento critico; sendo o índice 1 = FLA / FMT, índice
    %2 = FLM, índice 3 = FLT, e por último x ou y indicarão o eixo em análise. 
    %Ex: Mr1x = momento com efeito das tensoes residuais para FLA no eixo X
        
       
    
        Mr1x = Wx*fy;
        Mp1x = Zxc*fy;
        Mp1y = Zy*fy;
        Mr1y = Wef*fy;
        Mr2x = Wx*fy*0.7;
        Mp2x = Zxc*fy;
        Mr2y = Wy*fy*0.7;
        Mp2y = Zy*fy;
        Mr3x = Wx*fy*0.7;
        Mp3x = Zxc*fy;
        Mnxmax = 1.5*Wx*fy;
        Mnymax = 1.5*Wy*fy;
        %Análise para FLA 
        %eixo x
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
    else
             errorv = 3;
        end
        %eixo y
        %seção compacta
        if fla <= flapy
            Mn1y = Mp1y;
        %seção semicompacta
        else
          if fla > flary
             errorv = 3;
          else
            Mn1y = Mp1y - (Mp1y-Mr1y)*(fla-flapy)/(flary-flapy);
            
            if Mn1y > Mp1y
                Mn1y = Mp1y;
            end
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
       
                    Mc2x = 0.69*E*Wx/(flmr)^2;
                    Mc2y = 0.69*E*Wy/(flmr)^2;
                
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
                Mc3x = Cb1*(pi^2)*E*Iy*sqrt((Cw/Iy)*(1+0.039*J*(Lb^2)/Cw))/(Lb^2);
                Mn3x = Mc3x;
                
            %seçao semicompacta    
            else
                Mn3x = Cb1*(Mp3x - (Mp3x-Mr3x)*(flt-fltp)/(fltr-fltp));
            end
            if Mn3x > Mp3x
                Mn3x = Mp3x;
            end

    end


%Mxrd deverá ser o menor valor entre as resistencias encontradas
Mxrd = min([Mn1x Mn2x Mn3x Mnxmax])/(ya1*100);
        
%Myrd deverá ser o menor valor entre as resistencias encontradas
if Mysd > 0
Myrd = min([Mn2y Mnymax])/(ya1*100);
else
Myrd = min([Mn1y Mnymax])/(ya1*100);

end
