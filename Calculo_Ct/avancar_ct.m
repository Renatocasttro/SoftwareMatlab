function[] = avancar_ct()
global avan_ct;
global d;
global t;
global dp;
global n;
global ec;
global lc;
global tw;
global xg;
global errov;

% global Ct
%quando avan=1 significa que o botao avançar foi apertado, ao inves de
%fechar a interface
% d = str2num(set(findobj(gcf,'Tag','edit9'),'String'));

t=tw;
% t = str2num(set(findobj(gcf,'Tag','edit10'),'String'));
dp = str2num(get(findobj(gcf,'Tag','dimc59'),'String'));
n = str2num(get(findobj(gcf,'Tag','dimc60'),'String'));
ec=xg;
% ec=str2num(set(findobj(gcf,'Tag','dimc50'),'String'));
lc = str2num(get(findobj(gcf,'Tag','dimc51'),'String'));

if isempty(lc)==1||isempty(dp)==1||isempty(n)==1
    errov=11;
    errof ();
    avan_ct=0;
% else
%     avan_ct = 1;
% pause(0.1);

% if errov==11
%     avan_ct = 0;
else
avan_ct = 1;
pause(0.1);
end
end
