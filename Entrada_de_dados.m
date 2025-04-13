function[] = Entrada_de_dados()
%função para ler todos os dados de entrada comuns a todos os perfis
global Ncsd;
global Ntsd;
global Ncrd;
global Ntrd;
global Mxsd;
global Mysd;
global Vxsd;
global Vysd;
global errov;
global errorv;
global L;
global Lb;
global kx;
global ky;
global kz;
global E;
global G;
global fy;
global fu;
global ya1;
global ya2;
global Cb1;

%limpando a variável de erros
errov = 0;

%limpando a variavel que diz se o perfil é permitido
errorv = 'PERMITIDO';

%diferenciar tração e compressão
if str2double(get(findobj(gcf,'Tag','esf1'),'String'))>0;
    Ntsd = str2double(get(findobj(gcf,'Tag','esf1'),'String'));
    Ncsd = 0;
    Ncrd = 0;
else
    Ncsd = (-1)*str2double(get(findobj(gcf,'Tag','esf1'),'String'));
    Ntsd = 0;
    Ntrd = 0;
end

Mxsd = str2num(get(findobj(gcf,'Tag','esf2'),'String'));
Mysd = str2num(get(findobj(gcf,'Tag','esf4'),'String'));
Vxsd = str2num(get(findobj(gcf,'Tag','esf3'),'String'));
Vysd = str2num(get(findobj(gcf,'Tag','esf5'),'String'));
L = str2num(get(findobj(gcf,'Tag','comp1'),'String'));
Lb = str2num(get(findobj(gcf,'Tag','comp4'),'String'));
kx = str2num(get(findobj(gcf,'Tag','comp2'),'String'));
ky = str2num(get(findobj(gcf,'Tag','comp3'),'String'));
kz = str2num(get(findobj(gcf,'Tag','comp5'),'String'));
E = str2num(get(findobj(gcf,'Tag','prop1'),'String'))/10;
G = str2num(get(findobj(gcf,'Tag','prop3'),'String'));
fy = str2num(get(findobj(gcf,'Tag','prop2'),'String'))/10;
fu = str2num(get(findobj(gcf,'Tag','prop4'),'String'))/10;
ya1 = str2num(get(findobj(gcf,'Tag','coef'),'String'));
ya2 = str2num(get(findobj(gcf,'Tag','coef2'),'String'));
Cb1 = str2num(get(findobj(gcf,'Tag','esfcb'),'String'));

%identificando quando o não é inserido um numero
if isnan(Ncsd) == 1;   
    Ncsd = 0;
end
%colocando zero, caso as solicitações estejam vazias
if isempty(Ntsd) == 1
    Ntsd = 0;
end
if isempty(Mxsd) == 1
    Mxsd = 0;
end
if isempty(Mysd) == 1
    Mysd = 0;
end
if isempty(Vxsd) == 1
    Vxsd = 0;
end
if isempty(Vysd) == 1
    Vysd = 0;
end

%exibindo msg caso alguma das opções estejam vazias
if isempty(L)==1||isempty(Lb)==1||isempty(kx)==1||isempty(ky)==1||isempty(kz)==1||isempty(E)==1||isempty(G)==1
    errov = 1;
    errof ();
end
if isempty(fy)==1||isempty(fu)==1||isempty(ya1)==1||isempty(ya2)==1||isempty(Cb1)==1
    errov = 1;
    errof ();
end
%exibindo msg caso alguma das opções não sejam números
if isnan(L)==1||isnan(Lb)==1||isnan(kx)==1||isnan(ky)==1||isnan(kz)==1||isnan(E)==1||isnan(G)==1
    errov = 1;
    errof ();
end
if isnan(fy)==1||isnan(fu)==1||isnan(ya1)==1||isnan(ya2)==1||isnan(Cb1)==1
    errov = 1;
    errof ();
end