function[] = compressao_enrij()
global Vysd;
global tw;
global fye;
global E;
global ts2;
global ya1;
global h;
global aux1;
global Ndres;
global bsmin;
global pe;
global d;
global bw;
global ts2;


if pe == 1
% equação utilizada anteriormente:
% lbd0 = (h*sqrt(6)/(20*bsmin+tw))*sqrt(fye/(pi^2*E));
% Momento de inércia do enrijecedor de apoio em função das dimensões
% bsmim(largura do enrijecedor, ts2(espessura do enrijecedor, espessura da
% alma(tw) (item 5.7.9.4 da NBR 8800.08.
% Inercia da seção do enrijecedor em relação ao eixo do plano médio da alma
% (item 5.4.3.1.3 da NBR 8800.08.
Ieng=(tw^4) + (10*bsmin*ts2/2)*(((4*10*bsmin^2)/3)+2*10*bsmin*tw+(tw^2)) % mm4
% Área da seção transversal do enrijecedor de apoio conforme definido no
% item 5.7.9.4 d NBR 8800.08.
Ageng=12*(tw^2)+2*10*bsmin*ts2; % mm2
% Força axial de flambagem elástica do enrijecedor, conforme item E.1.1 da
% NBR 8800.08.
Neeng=pi^2*E*Ieng/((0.75*h)^2);
% Item 5.3.3.da NBR 8800.08
lbd0= sqrt(1*Ageng*fye/Neeng);
 if lbd0 > 1.5
    X = 0.877/lbd0^2;
 else
    X = 0.658^(lbd0^2);
 end
 
% Item 5.5.2.3.c da NBR 8800.08
% Enrijecedores dos dois lado da alma.
Ndres = (20*bsmin+tw)*ts2*X*fye/(ya1*100); % kN

 if Ndres < Vysd
    aux1 = 0;
 else
    aux1 = 1;
 end
else
    aux1 = 1;
end
