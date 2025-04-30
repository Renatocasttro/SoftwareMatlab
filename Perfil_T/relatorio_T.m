function[] = relatorio_T()
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
global m;
global Wsup;
global Winf;
global Ysup;
global Yinf;
global f1;
global f4;
global lbd0;
global Qs;
global Qa;
global Q;
global X;
global Ncrd;
global Ncsd;
global fla;
global flap;
global flar;
global Mn1x;
global Mn2x;
global Mn3x;
global ya1;
global flm;
global flmp;
global flmr;
global Myrd;
global flt;
global fltp;
global fltr;
global Cb;
global flecomp;
global fleassi;
global Ntsd;
global Ntrd;
global Mxrd;
global Mmax;
global Mmay;
global Mxsd;
global Mysd;
global perfilname;
global errorv;
global cisxp;
global cisxr;
global cisyp;
global cisyr;
global Vxrd;
global Vyrd;
global Vxsd;
global Vysd;
global kv;
global espac;
global ts1;
global bs1;
global ts2;
global bs2;
global Ac;
global An;
global Ae;
global Ct;
global errov;
global aux2;
global matriz_tracao;
global MrFlt;
global MrFlm;



%imprimindo valores do perfil
if f1 == 1;
                %monossimétrico
                if f4 == 1;
                    set(findobj(gcf,'Tag','rdim1'),'String','d (mm) :');
                    set(findobj(gcf,'Tag','rdim2'),'String','tfs (mm) :');
                    set(findobj(gcf,'Tag','rdim3'),'String','tfi (mm) :');
                    set(findobj(gcf,'Tag','rdim4'),'String','tw (mm) :');
                    set(findobj(gcf,'Tag','rdim5'),'String','bfs (mm) :');
                    set(findobj(gcf,'Tag','rdim6'),'String','bfi (mm) :');
                    set(findobj(gcf,'Tag','rdim7'),'String','A (cm²) :');
                    set(findobj(gcf,'Tag','rdim8'),'String','Ix (cm4) :');
                    set(findobj(gcf,'Tag','rdim9'),'String','Iy (cm4) :');
                    set(findobj(gcf,'Tag','rdim10'),'String','ix (cm) :');
                    set(findobj(gcf,'Tag','rdim11'),'String','iy (cm) :');
                    set(findobj(gcf,'Tag','rdim12'),'String','J (cm4) :');
                    set(findobj(gcf,'Tag','rdim13'),'String','Wsup (cm³) :');
                    set(findobj(gcf,'Tag','rdim14'),'String','Winf (cm³) :');
                    set(findobj(gcf,'Tag','rdim15'),'String','Ysup (cm) :');
                    set(findobj(gcf,'Tag','rdim16'),'String','Yinf (cm) :');
                    
                    set(findobj(gcf,'Tag','rdimc1'),'String',d);
                    set(findobj(gcf,'Tag','rdimc2'),'String',tfs);
                    set(findobj(gcf,'Tag','rdimc3'),'String',tfi);
                    set(findobj(gcf,'Tag','rdimc4'),'String',tw);
                    set(findobj(gcf,'Tag','rdimc5'),'String',bfs);
                    set(findobj(gcf,'Tag','rdimc6'),'String',bfi);
                    set(findobj(gcf,'Tag','rdimc7'),'String',Ag);
                    set(findobj(gcf,'Tag','rdimc8'),'String',Ix);
                    set(findobj(gcf,'Tag','rdimc9'),'String',Iy);
                    set(findobj(gcf,'Tag','rdimc10'),'String',ix);
                    set(findobj(gcf,'Tag','rdimc11'),'String',iy);
                    set(findobj(gcf,'Tag','rdimc12'),'String',J);
                    set(findobj(gcf,'Tag','rdimc13'),'String',Wsup);
                    set(findobj(gcf,'Tag','rdimc14'),'String',Winf);
                    set(findobj(gcf,'Tag','rdimc15'),'String',Ysup);
                    set(findobj(gcf,'Tag','rdimc16'),'String',Yinf);
                    set(findobj(gcf,'Tag','rdimc17'),'String',m);
                    set(findobj(gcf,'Tag','rdimc18'),'String',Cw);
                
                else 
                    set(findobj(gcf,'Tag','rdim1'),'String','d (mm) :');
                    set(findobj(gcf,'Tag','rdim2'),'String','tf (mm) :');
                    set(findobj(gcf,'Tag','rdim3'),'String','tw (mm) :');
                    set(findobj(gcf,'Tag','rdim4'),'String','bf (mm) :');
                    set(findobj(gcf,'Tag','rdim5'),'String','');
                    set(findobj(gcf,'Tag','rdim6'),'String','');
                    set(findobj(gcf,'Tag','rdim7'),'String','A (cm²) :');
                    set(findobj(gcf,'Tag','rdim8'),'String','Ix (cm4) :');
                    set(findobj(gcf,'Tag','rdim9'),'String','Iy (cm4) :');
                    set(findobj(gcf,'Tag','rdim10'),'String','ix (cm) :');
                    set(findobj(gcf,'Tag','rdim11'),'String','iy (cm) :');
                    set(findobj(gcf,'Tag','rdim12'),'String','J (cm4) :');
                    set(findobj(gcf,'Tag','rdim13'),'String','Wx (cm³) :');
                    set(findobj(gcf,'Tag','rdim14'),'String','Wy (cm³) :');
                    set(findobj(gcf,'Tag','rdim15'),'String','Zx (cm³) :');
                    set(findobj(gcf,'Tag','rdim16'),'String','Zy (cm³) :');
                    
                    set(findobj(gcf,'Tag','rdimc1'),'String',d);
                    set(findobj(gcf,'Tag','rdimc2'),'String',tf);
                    set(findobj(gcf,'Tag','rdimc3'),'String',tw);
                    set(findobj(gcf,'Tag','rdimc4'),'String',bf);
                    set(findobj(gcf,'Tag','rdimc5'),'String','');
                    set(findobj(gcf,'Tag','rdimc6'),'String','');
                    set(findobj(gcf,'Tag','rdimc7'),'String',Ag);
                    set(findobj(gcf,'Tag','rdimc8'),'String',Ix);
                    set(findobj(gcf,'Tag','rdimc9'),'String',Iy);
                    set(findobj(gcf,'Tag','rdimc10'),'String',ix);
                    set(findobj(gcf,'Tag','rdimc11'),'String',iy);
                    set(findobj(gcf,'Tag','rdimc12'),'String',J);
                    set(findobj(gcf,'Tag','rdimc13'),'String',Wx);
                    set(findobj(gcf,'Tag','rdimc14'),'String',Wy);
                    set(findobj(gcf,'Tag','rdimc15'),'String',Zx);
                    set(findobj(gcf,'Tag','rdimc16'),'String',Zy);
                    set(findobj(gcf,'Tag','rdimc17'),'String',m);
                    set(findobj(gcf,'Tag','rdimc18'),'String',Cw);
        
                    
                end
                
        %perfil laminado        
       else
                %monossimétrico
                if f4 == 1;
                                        
                    set(findobj(gcf,'Tag','rdim1'),'String','d (mm) :');
                    set(findobj(gcf,'Tag','rdim2'),'String','tfs (mm) :');
                    set(findobj(gcf,'Tag','rdim3'),'String','tfi (mm) :');
                    set(findobj(gcf,'Tag','rdim4'),'String','tw (mm) :');
                    set(findobj(gcf,'Tag','rdim5'),'String','bfs (mm) :');
                    set(findobj(gcf,'Tag','rdim6'),'String','bfi (mm) :');
                    set(findobj(gcf,'Tag','rdim7'),'String','A (cm²) :');
                    set(findobj(gcf,'Tag','rdim8'),'String','Ix (cm4) :');
                    set(findobj(gcf,'Tag','rdim9'),'String','Iy (cm4) :');
                    set(findobj(gcf,'Tag','rdim10'),'String','ix (cm) :');
                    set(findobj(gcf,'Tag','rdim11'),'String','iy (cm) :');
                    set(findobj(gcf,'Tag','rdim12'),'String','J (cm4) :');
                    set(findobj(gcf,'Tag','rdim13'),'String','Wsup (cm³) :');
                    set(findobj(gcf,'Tag','rdim14'),'String','Winf (cm³) :');
                    set(findobj(gcf,'Tag','rdim15'),'String','Ysup (cm) :');
                    set(findobj(gcf,'Tag','rdim16'),'String','Yinf (cm) :'); 
                    
                    set(findobj(gcf,'Tag','rdimc1'),'String',d);
                    set(findobj(gcf,'Tag','rdimc2'),'String',tfs);
                    set(findobj(gcf,'Tag','rdimc3'),'String',tfi);
                    set(findobj(gcf,'Tag','rdimc4'),'String',tw);
                    set(findobj(gcf,'Tag','rdimc5'),'String',bfs);
                    set(findobj(gcf,'Tag','rdimc6'),'String',bfi);
                    set(findobj(gcf,'Tag','rdimc7'),'String',Ag);
                    set(findobj(gcf,'Tag','rdimc8'),'String',Ix);
                    set(findobj(gcf,'Tag','rdimc9'),'String',Iy);
                    set(findobj(gcf,'Tag','rdimc10'),'String',ix);
                    set(findobj(gcf,'Tag','rdimc11'),'String',iy);
                    set(findobj(gcf,'Tag','rdimc12'),'String',J);
                    set(findobj(gcf,'Tag','rdimc13'),'String',Wsup);
                    set(findobj(gcf,'Tag','rdimc14'),'String',Winf);
                    set(findobj(gcf,'Tag','rdimc15'),'String',Ysup);
                    set(findobj(gcf,'Tag','rdimc16'),'String',Yinf);
                    set(findobj(gcf,'Tag','rdimc18'),'String',Cw);
                    set(findobj(gcf,'Tag','rdimc17'),'String',m);
        
                                    
                %duplamente simetrico
                else
                    
                    set(findobj(gcf,'Tag','rdim1'),'String','d (mm) :');
                    set(findobj(gcf,'Tag','rdim2'),'String','tf (mm) :');
                    set(findobj(gcf,'Tag','rdim3'),'String','tw (mm) :');
                    set(findobj(gcf,'Tag','rdim4'),'String','bf (mm) :');
                    set(findobj(gcf,'Tag','rdim5'),'String','h (mm) :');
                    set(findobj(gcf,'Tag','rdim6'),'String','');
                    set(findobj(gcf,'Tag','rdim7'),'String','A (cm²) :');
                    set(findobj(gcf,'Tag','rdim8'),'String','Ix (cm4) :');
                    set(findobj(gcf,'Tag','rdim9'),'String','Iy (cm4) :');
                    set(findobj(gcf,'Tag','rdim10'),'String','ix (cm) :');
                    set(findobj(gcf,'Tag','rdim11'),'String','iy (cm) :');
                    set(findobj(gcf,'Tag','rdim12'),'String','J (cm4) :');
                    set(findobj(gcf,'Tag','rdim13'),'String','Wx (cm³) :');
                    set(findobj(gcf,'Tag','rdim14'),'String','Wy (cm³) :');
                    set(findobj(gcf,'Tag','rdim15'),'String','Zx (cm³) :');
                    set(findobj(gcf,'Tag','rdim16'),'String','Zy (cm³) :'); 
                    
                    set(findobj(gcf,'Tag','rdimc1'),'String',d);
                    set(findobj(gcf,'Tag','rdimc2'),'String',tf');
                    set(findobj(gcf,'Tag','rdimc3'),'String',tw);
                    set(findobj(gcf,'Tag','rdimc4'),'String',bf);
                    set(findobj(gcf,'Tag','rdimc5'),'String',h);
                    set(findobj(gcf,'Tag','rdimc6'),'String','');
                    set(findobj(gcf,'Tag','rdimc7'),'String',Ag);
                    set(findobj(gcf,'Tag','rdimc8'),'String',Ix);
                    set(findobj(gcf,'Tag','rdimc9'),'String',Iy);
                    set(findobj(gcf,'Tag','rdimc10'),'String',ix);
                    set(findobj(gcf,'Tag','rdimc11'),'String',iy);
                    set(findobj(gcf,'Tag','rdimc12'),'String',J);
                    set(findobj(gcf,'Tag','rdimc13'),'String',Wx);
                    set(findobj(gcf,'Tag','rdimc14'),'String',Wy);
                    set(findobj(gcf,'Tag','rdimc15'),'String',Zx);
                    set(findobj(gcf,'Tag','rdimc16'),'String',Zy); 
                    set(findobj(gcf,'Tag','rdimc18'),'String',Cw);
                    set(findobj(gcf,'Tag','rdimc17'),'String',m);
        
                end
end

%imprimindo o nome do perfil
set(findobj(gcf,'Tag','text57'),'String',perfilname);

%imprimindo se o perfil é permitido ou nao
set(findobj(gcf,'Tag','textoerro'),'String',errorv);
      
%imprimindo valores para cisalhamento no plano da alma
set(findobj(gcf,'Tag','cis1'),'String',fla);
set(findobj(gcf,'Tag','cis2'),'String',cisyp);
set(findobj(gcf,'Tag','cis3'),'String',cisyr);
set(findobj(gcf,'Tag','cis4'),'String',Vyrd);
set(findobj(gcf,'Tag','cis9'),'String',kv);

% imprimindo valores para compressão
set(findobj(gcf,'Tag','compre1'),'String',Qs);
set(findobj(gcf,'Tag','compre2'),'String',Qa);
set(findobj(gcf,'Tag','compre3'),'String',lbd0); 
set(findobj(gcf,'Tag','compre4'),'String',X);
set(findobj(gcf,'Tag','compre5'),'String',Q);
set(findobj(gcf,'Tag','compre6'),'String',Ncrd);
set(findobj(gcf,'Tag','compre7'),'String',Ncsd);


if Ncsd==0 
    set(findobj(gcf,'Tag','compre8'),'String',''); 
else
if Ncsd > Ncrd;
    set(findobj(gcf,'Tag','compre8'),'String','NAO RESISTIU');
    set(findobj(gcf,'Tag','compre8'),'ForegroundColor','red');
else
    set(findobj(gcf,'Tag','compre8'),'String','RESISTIU');
    set(findobj(gcf,'Tag','compre8'),'ForegroundColor','[0 0.573 0]')
end
end
   
% imprimindo valores para tração
if Ntsd>0
set(findobj(gcf,'Tag','trac1'),'String',Ac);
set(findobj(gcf,'Tag','trac2'),'String',An);
set(findobj(gcf,'Tag','trac3'),'String',Ae); 
set(findobj(gcf,'Tag','trac4'),'String',Ct);
set(findobj(gcf,'Tag','trac5'),'String',Ntsd);

% imprindo parâmetros dos vínculos das extemidades dos perfis na tração
set(findobj(gcf,'Tag','trac8'),'String',matriz_tracao(aux2,4)); % dp (mm)
set(findobj(gcf,'Tag','trac9'),'String',matriz_tracao(aux2,3)); % n
set(findobj(gcf,'Tag','trac10'),'String',matriz_tracao(aux2,5)); % lc (mm)


if Ct>0.6    
set(findobj(gcf,'Tag','trac6'),'String',Ntrd);

if Ntsd==0  
    set(findobj(gcf,'Tag','trac7'),'String','');
else
if Ntsd > Ntrd;
    set(findobj(gcf,'Tag','trac7'),'String','NAO RESISTIU');
    set(findobj(gcf,'Tag','trac7'),'ForegroundColor','red');
else
    set(findobj(gcf,'Tag','trac7'),'String','RESISTIU');
    set(findobj(gcf,'Tag','trac7'),'ForegroundColor','[0 0.573 0]');
end
end
else
    errov=10;
    errof();
end
end

% imprimindo valores flexão
% imprimindo valores para FLM
set(findobj(gcf,'Tag','flm1'),'String',flm);
set(findobj(gcf,'Tag','flm2'),'String',flmp);
set(findobj(gcf,'Tag','flm3'),'String',flmr); 

% de acordo com o item G.2.3 da NBR 8800.08, não existes valores para FLT
% para pertis T.

%imprimindo valores de momento resistente para FLM, FLT
set(findobj(gcf,'Tag','flt6'),'String',MrFlt/(ya1*100));
set(findobj(gcf,'Tag','flm5'),'String',MrFlm/(ya1*100));
% Para perfil T, a norma 8800.08 não prevê´FLA

% Classificação do pefil quanto à esbeltez de acordo com o item 5.1.2.1.1
% e G.2.3 (Anexo G) da NBR 8800.08. Estado limite FLM
if flm > flmr
    set(findobj(gcf,'Tag','flm4'),'String','Esbelta');
else if flm <= flmp
        set(findobj(gcf,'Tag','flm4'),'String','Compacta');
    else
        set(findobj(gcf,'Tag','flm4'),'String','Semi-Compacta');
    end
end

% imprimindo valores para momento máximo admissível, conforme item 5.4.2.2
% da NBR 8800.08.
set(findobj(gcf,'Tag','mmax1'),'String',Mmax);
set(findobj(gcf,'Tag','mmax3'),'String',Mmay); 

%imprimindo momento resistente calculado
set(findobj(gcf,'Tag','mres2'),'String',Mxrd);
% para seção T, a norma 8800.08 não prevê Myrd.

%imprimindo valor para flexao composta
set(findobj(gcf,'Tag','flec2'),'String',flecomp);

if flm > flmr
    set(findobj(gcf,'Tag','flm4'),'String','Esbelta');
else if flm <= flmp
        set(findobj(gcf,'Tag','flm4'),'String','Compacta');
    else
        set(findobj(gcf,'Tag','flm4'),'String','Semi-Compacta');
    end
end

