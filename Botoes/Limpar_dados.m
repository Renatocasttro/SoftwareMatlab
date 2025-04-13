function[] = Limpar_dados ()
global Ncrd;
global Ntrd;
global Mxrd;
global Myrd;
global Vxrd;
global Vyrd;
global fleassi;
global flecomp;

%Limpar todos os valores de dimensoes do perfil, resistências e Cb
Ncrd = 0;
Ntrd = 0;
Mxrd = 0;
Myrd = 0;
Vxrd = 0;
Vyrd = 0;
fleassi = 0;
flecomp = 0;

set(findobj(gcf,'Tag','dimc1'),'String','');
set(findobj(gcf,'Tag','dimc2'),'String','')
set(findobj(gcf,'Tag','dimc3'),'String','');
set(findobj(gcf,'Tag','dimc4'),'String','');
set(findobj(gcf,'Tag','dimc5'),'String','');
set(findobj(gcf,'Tag','dimc6'),'String','');
set(findobj(gcf,'Tag','dimc7'),'String','')
set(findobj(gcf,'Tag','dimc8'),'String','');
set(findobj(gcf,'Tag','dimc9'),'String','');
set(findobj(gcf,'Tag','dimc10'),'String','');
set(findobj(gcf,'Tag','dimc11'),'String','');
set(findobj(gcf,'Tag','dimc12'),'String','');
set(findobj(gcf,'Tag','dimc13'),'String','');
set(findobj(gcf,'Tag','dimc14'),'String','');
set(findobj(gcf,'Tag','dimc15'),'String','');
set(findobj(gcf,'Tag','dimc16'),'String','');
set(findobj(gcf,'Tag','dimc17'),'String','');
set(findobj(gcf,'Tag','res1'),'String','(*)');
set(findobj(gcf,'Tag','res2'),'String','(*)');
set(findobj(gcf,'Tag','res3'),'String','(*)');
set(findobj(gcf,'Tag','res4'),'String','(*)');
set(findobj(gcf,'Tag','res5'),'String','(*)');
set(findobj(gcf,'Tag','res6'),'String','(*)');
set(findobj(gcf,'Tag','res7'),'String','(*)');
set(findobj(gcf,'Tag','res8'),'String','(*)');
set(findobj(gcf,'Tag','cx1'),'String','');
set(findobj(gcf,'Tag','cx2'),'String','');
set(findobj(gcf,'Tag','cx3'),'String','');
set(findobj(gcf,'Tag','cx4'),'String','');
set(findobj(gcf,'Tag','cx5'),'String','');
set(findobj(gcf,'Tag','cx6'),'String','');
set(findobj(gcf,'Tag','cx7'),'String','');
set(findobj(gcf,'Tag','cx8'),'String','');
set(findobj(gcf,'Tag','textofinal'),'String','');
set(findobj(gcf,'Tag','esfcb'),'String','1.00'); 
set(findobj(gcf,'Tag','esfcb1'),'String','1.00');
set(findobj(gcf,'Tag','esfcb2'),'String','1.00'); 
set(findobj(gcf,'Tag','sinalcb'),'String','='); 