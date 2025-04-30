function[] = flexao_T()
% Em rela��o � se��es T, a NBR 8800.08 s� trata de flex�o em torno...
% do eixo central perpendicular � alma (item G.2.3). 
global E;
global Iy;
global G;
global J;
global B;
global fy;
global Zx;
global flm;
global flmp;
global flmr;
global ya1;
global Lb;
global Wxc;
global Mxrd
global MrFlt;
global MrFlm;


Mplx=Zx*fy;
% An�lise FLT (item G.2.3, primeira parte)
MrFlt=(pi*sqrt(E*Iy*G*J)/Lb)*(B+sqrt(1+B^2));
% An�lse FLM (item G.2.3, segunda parte)
if flm<=flmp
    MrFlm=Mplx;
else
    if flm<=flmr;
        MrFlm=(1.19-0.5*flm*sqrt(fy/E))*fy*Wxc;
    else
        MrFlm=(0.69*E*Wxc)/(flm^2);
    end
end

Mxrd=min(min(Mplx,MrFlt),MrFlm)/(ya1*100);
% para se��o T, a norma 8800.08 n�o prev� Myrd.

end