function[] = relatorio_C()
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
global Ntsd;
global Ntrd;
global perfilname;
global errorv;
global Ac;
global An;
global Ae;
global Ct;
global Cb;
global fla;
global cisyp;
global cisyr;
global Vyrd;
global kv;
global espac;
global bs1;
global ts1;
global bs2;
global ts2;
global flm;
global cisxp;
global cisxr;
global flap;
global flar;
global flmp;
global flmr;
global flt;
global fltp;
global fltr;
global Mn1x;
global ya1;
global Mn2x;
global Myrd;
global Mn3x;
global Mmax;
global Mmay;
global Mxrd;
global fleassi;
global flecomp;
global Mxsd;
global Mysd;
global Vysd;
global Vxrd;
global Vxsd;
global aux2;
global matriz_tracao;
global errov;



        %perfil laminado        
                                        
                    set(findobj(gcf,'Tag','rdim1'),'String','d (mm) :');
                    set(findobj(gcf,'Tag','rdim2'),'String','tf (mm) :');
                    set(findobj(gcf,'Tag','rdim3'),'String','tw (mm) :');
                    set(findobj(gcf,'Tag','rdim4'),'String','bf (mm) :');                    
                    set(findobj(gcf,'Tag','rdim7'),'String','A (cm²) :');
                    set(findobj(gcf,'Tag','rdim8'),'String','Ix (cm4) :');
                    set(findobj(gcf,'Tag','rdim9'),'String','Iy (cm4) :');
                    set(findobj(gcf,'Tag','rdim10'),'String','ix (cm) :');
                    set(findobj(gcf,'Tag','rdim11'),'String','iy (cm) :');
                    set(findobj(gcf,'Tag','rdim12'),'String','J (cm4) :');
                    set(findobj(gcf,'Tag','rdim13'),'String','Wx (cm³) :');
                    set(findobj(gcf,'Tag','rdim14'),'String','Wy (cm³) :');
                   
                    
                    set(findobj(gcf,'Tag','rdimc1'),'String',d);
                    set(findobj(gcf,'Tag','rdimc2'),'String',tf);
                    set(findobj(gcf,'Tag','rdimc3'),'String',tw);
                    set(findobj(gcf,'Tag','rdimc4'),'String',bf);
                    set(findobj(gcf,'Tag','rdimc7'),'String',Ag);
                    set(findobj(gcf,'Tag','rdimc8'),'String',Ix);
                    set(findobj(gcf,'Tag','rdimc9'),'String',Iy);
                    set(findobj(gcf,'Tag','rdimc10'),'String',ix);
                    set(findobj(gcf,'Tag','rdimc11'),'String',iy);
                    set(findobj(gcf,'Tag','rdimc12'),'String',J);
                    set(findobj(gcf,'Tag','rdimc13'),'String',Wx);
                    set(findobj(gcf,'Tag','rdimc14'),'String',Wy);
                    set(findobj(gcf,'Tag','rdimc17'),'String',m);
                    set(findobj(gcf,'Tag','rdimc18'),'String',Cw);
                   
        
                                    
               


%imprimindo o nome do perfil
set(findobj(gcf,'Tag','text57'),'String',perfilname);

%imprimindo se o perfil é permitido ou nao
set(findobj(gcf,'Tag','textoerro'),'String',errorv);
      



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

if Ntsd>0 % se existir tração
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

end % final se existir tração


% imprimindo Cw e Cb na tela
set(findobj(gcf,'Tag','flt5'),'String',Cb);


%imprimindo se o perfil é permitido ou nao
set(findobj(gcf,'Tag','textoerro'),'String',errorv);

%imprimindo valores para cisalhamento no plano da alma
set(findobj(gcf,'Tag','cis1'),'String',fla);
set(findobj(gcf,'Tag','cis2'),'String',cisyp);
set(findobj(gcf,'Tag','cis3'),'String',cisyr);
set(findobj(gcf,'Tag','cis4'),'String',Vyrd);
set(findobj(gcf,'Tag','cis9'),'String',kv);

%inserindo informações referentes aos enrijecedores
set(findobj(gcf,'Tag','enrij1'),'String',espac);
set(findobj(gcf,'Tag','enrij2'),'String',bs1);
set(findobj(gcf,'Tag','enrij3'),'String',ts1);
set(findobj(gcf,'Tag','enrij4'),'String',bs2);
set(findobj(gcf,'Tag','enrij5'),'String',ts2);

%imprimindo valores para cisalhamento perpendicular ao plano da alma
set(findobj(gcf,'Tag','cis5'),'String',flm);
set(findobj(gcf,'Tag','cis6'),'String',cisxp);
set(findobj(gcf,'Tag','cis7'),'String',cisxr);

        
% imprimindo valores para compressão
set(findobj(gcf,'Tag','compre1'),'String',Qs);
set(findobj(gcf,'Tag','compre2'),'String',Qa);
set(findobj(gcf,'Tag','compre3'),'String',lbd0); 
set(findobj(gcf,'Tag','compre4'),'String',X);
set(findobj(gcf,'Tag','compre5'),'String',Q);
set(findobj(gcf,'Tag','compre6'),'String',Ncrd);
set(findobj(gcf,'Tag','compre7'),'String',Ncsd);

% imprimindo valores para FLA
set(findobj(gcf,'Tag','fla1'),'String',fla);
set(findobj(gcf,'Tag','fla2'),'String',flap);
set(findobj(gcf,'Tag','fla3'),'String',flar); 

% imprimindo valores para FLM
set(findobj(gcf,'Tag','flm1'),'String',flm);
set(findobj(gcf,'Tag','flm2'),'String',flmp);
set(findobj(gcf,'Tag','flm3'),'String',flmr); 

% imprimindo valores para FLT
set(findobj(gcf,'Tag','flt1'),'String',flt);
set(findobj(gcf,'Tag','flt2'),'String',fltp);
set(findobj(gcf,'Tag','flt3'),'String',fltr); 

%imprimindo valores de momento resistente para fla, flm, flt
set(findobj(gcf,'Tag','fla5'),'String',Mn1x/(ya1*100));
set(findobj(gcf,'Tag','flm5'),'String',Mn2x/(ya1*100));
set(findobj(gcf,'Tag','flm6'),'String',Myrd);
set(findobj(gcf,'Tag','flt6'),'String',Mn3x/(ya1*100));

%imprimindo valores para momento maximo
set(findobj(gcf,'Tag','mmax1'),'String',Mmax);
set(findobj(gcf,'Tag','mmax3'),'String',Mmay); 

%imprimindo momento resistente calculado
set(findobj(gcf,'Tag','mres2'),'String',Mxrd);
set(findobj(gcf,'Tag','mres4'),'String',Myrd);

%imprimindo valores para flexao assimétrica
set(findobj(gcf,'Tag','flea'),'String',fleassi);

%imprimindo valor para flexao composta
set(findobj(gcf,'Tag','flec2'),'String',flecomp);

if fla > flar
    set(findobj(gcf,'Tag','fla4'),'String','Esbelta');
else if fla <= flap
        set(findobj(gcf,'Tag','fla4'),'String','Compacta');
    else
        set(findobj(gcf,'Tag','fla4'),'String','Semi-Compacta');
    end
end

if flm > flmr
    set(findobj(gcf,'Tag','flm4'),'String','Esbelta');
else if flm <= flmp
        set(findobj(gcf,'Tag','flm4'),'String','Compacta');
    else
        set(findobj(gcf,'Tag','flm4'),'String','Semi-Compacta');
    end
end

if flt > fltr
    set(findobj(gcf,'Tag','flt4'),'String','Viga Longa');
else if flt <= fltp
        set(findobj(gcf,'Tag','flt4'),'String','Viga Curta');
    else
        set(findobj(gcf,'Tag','flt4'),'String','Viga Intermediaria');
    end
end

if Ncsd > Ncrd;
    set(findobj(gcf,'Tag','compre8'),'String','NAO RESISTIU');
    set(findobj(gcf,'Tag','compre8'),'ForegroundColor','red');
else
    set(findobj(gcf,'Tag','compre8'),'String','RESISTIU');
    set(findobj(gcf,'Tag','compre8'),'ForegroundColor','[0 0.573 0]')
end

if fleassi > 1
    set(findobj(gcf,'Tag','flea'),'ForegroundColor','red');
else
    set(findobj(gcf,'Tag','flea'),'ForegroundColor','[0 0.573 0]');
end

if flecomp > 1
    set(findobj(gcf,'Tag','flec2'),'ForegroundColor','red');
else
    set(findobj(gcf,'Tag','flec2'),'ForegroundColor','[0 0.573 0]');
end

if Mxrd < Mxsd
    set(findobj(gcf,'Tag','mres2'),'ForegroundColor','red');
else
    set(findobj(gcf,'Tag','mres2'),'ForegroundColor','[0 0.573 0]');
end
if Myrd < Mysd
    set(findobj(gcf,'Tag','mres4'),'ForegroundColor','red');
else
    set(findobj(gcf,'Tag','mres4'),'ForegroundColor','[0 0.573 0]');
end

if Vyrd < Vysd
    set(findobj(gcf,'Tag','cis4'),'ForegroundColor','red');
else
    set(findobj(gcf,'Tag','cis4'),'ForegroundColor','[0 0.573 0]');
end

if Vxrd > 0
    if Vxrd < Vxsd
        set(findobj(gcf,'Tag','cis8'),'String',Vxrd);
        set(findobj(gcf,'Tag','cis8'),'ForegroundColor','red');
    else
        set(findobj(gcf,'Tag','cis8'),'String',Vxrd);
        set(findobj(gcf,'Tag','cis8'),'ForegroundColor','[0 0.573 0]');
    end
else
    set(findobj(gcf,'Tag','cis8'),'String','(*)');    
end

if Ncsd >= 0
    if Ncsd/Ncrd >= 0.2
        set(findobj(gcf,'Tag','flec'),'String','Ncsd/Ncrd + 8*(Mxsd/Mxrd+Mysd/Myrd)/9:'); 
    else
        set(findobj(gcf,'Tag','flec'),'String','Ncsd/(Ncrd*2) + (Mxsd/Mxrd+Mysd/Myrd):');
    end
end
end

