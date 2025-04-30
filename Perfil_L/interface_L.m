function [] = interface_L ()
%formatando interface para perfil L
global f1;
global f2;
global f4;
global f5;
global figura1;
global L_lam1;
global pe;
global Mxsd;
global Mysd;
global Vxsd;
global Vysd;

% bloqueando funçao para perfil ser sempre duplamente simétrico e laminado
% quando o sistema for icrementado para processar perfil L assimétrico e/ou
% soldado, estas configurações deverão ser ajustadas.
set(findobj(gcf,'Tag','radiobutton1'),'Enable','on'); % perfil soldado
set(findobj(gcf,'Tag','radiobutton2'),'Enable','on'); % perfil laminado
% set(findobj(gcf,'Tag','radiobutton2'),'Value',1); 

set(findobj(gcf,'Tag','radiobutton3'),'Enable','off');
set(findobj(gcf,'Tag','radiobutton4'),'Enable','off');
set(findobj(gcf,'Tag','radiobutton5'),'Enable','on'); % perfil duplamente simétrico.
set(findobj(gcf,'Tag','radiobutton5'),'Value',1);% aparece previamente selecionado

%habilitando esforços em Ypara perfis monossimetricos
set(findobj(gcf,'Tag','esf3'),'Enable','on');
set(findobj(gcf,'Tag','esf4'),'Enable','on');
set(findobj(gcf,'Tag','pushbutton14'),'Visible','off');

% f1=0; % perfil laminado.
% f2=1; % Perfil soldado.

       %perfil soldado
       if f1 == 1;
                
                
                    %figura para perfil sodado bissimétrico
                    figura1 = imread('PERFIL L - SOLDADO.PNG');
                    
                    %nomes da lista de perfis comerciais soldados
                    %bissimetricos
                    set(findobj(gcf,'Tag','popupmenu2'),'Enable','off');
                    set(findobj(gcf,'Tag','pushbutton10'),'Enable','off');
                    set(findobj(gcf,'Tag','pushbutton6'),'Enable','off');
                                        
                    set(findobj(gcf,'Tag','dim1'),'String','d (mm) :');
                    set(findobj(gcf,'Tag','dim2'),'String','tf (mm) :');
                    set(findobj(gcf,'Tag','dim3'),'String','tw (mm) :');
                    set(findobj(gcf,'Tag','dim4'),'String','bf (mm) :');
                    set(findobj(gcf,'Tag','dim5'),'String','');
                    set(findobj(gcf,'Tag','dim6'),'String','');
                    set(findobj(gcf,'Tag','dim7'),'String','A (cm²) :');
                    set(findobj(gcf,'Tag','dim8'),'String','Ix (cm4) :');
                    set(findobj(gcf,'Tag','dim9'),'String','Iy (cm4) :');
                    set(findobj(gcf,'Tag','dim10'),'String','ix (cm) :');
                    set(findobj(gcf,'Tag','dim11'),'String','iy (cm) :');
                    set(findobj(gcf,'Tag','dim12'),'String','iz (cm) :');
                    set(findobj(gcf,'Tag','dim13'),'String','Wx (cm³) :');
                    set(findobj(gcf,'Tag','dim14'),'String','Wy (cm³) :');
                    set(findobj(gcf,'Tag','dim15'),'String','J (cm4) :');
                    set(findobj(gcf,'Tag','dim16'),'String','');
        
                    set(findobj(gcf,'Tag','dimc5'),'Visible','off');
                    set(findobj(gcf,'Tag','dimc6'),'Visible','off');
                    set(findobj(gcf,'Tag','dimc7'),'Enable','off');
                    set(findobj(gcf,'Tag','dimc8'),'Enable','off');
                    set(findobj(gcf,'Tag','dimc9'),'Enable','off');
                    set(findobj(gcf,'Tag','dimc10'),'Enable','off');
                    set(findobj(gcf,'Tag','dimc11'),'Enable','off');
                    set(findobj(gcf,'Tag','dimc12'),'Enable','on');
                     set(findobj(gcf,'Tag','dimc12'),'Visible','on');
                    set(findobj(gcf,'Tag','dimc13'),'Enable','off');
                    set(findobj(gcf,'Tag','dimc14'),'Enable','off');
                    set(findobj(gcf,'Tag','dimc15'),'Enable','off');
                    set(findobj(gcf,'Tag','dimc15'),'Visible','on');
                    set(findobj(gcf,'Tag','dimc16'),'Enable','off');
                    set(findobj(gcf,'Tag','dimc16'),'Visible','off');
                    set(findobj(gcf,'Tag','dimc17'),'Enable','off');     
                    set(findobj(gcf,'Tag','res1'),'String','(*)');
                    set(findobj(gcf,'Tag','res2'),'String','(*)');
                    set(findobj(gcf,'Tag','res3'),'String','(*)');
                    set(findobj(gcf,'Tag','res4'),'String','(*)');
                    set(findobj(gcf,'Tag','res5'),'String','(*)');
                    set(findobj(gcf,'Tag','res6'),'String','(*)');
                    set(findobj(gcf,'Tag','res7'),'String','(*)');
                    set(findobj(gcf,'Tag','cx1'),'String','');
                    set(findobj(gcf,'Tag','cx2'),'String','');
                    set(findobj(gcf,'Tag','cx3'),'String','');
                    set(findobj(gcf,'Tag','cx4'),'String','');
                    set(findobj(gcf,'Tag','cx5'),'String','');
                    set(findobj(gcf,'Tag','cx6'),'String','');
                    set(findobj(gcf,'Tag','cx7'),'String','');
                    set(findobj(gcf,'Tag','esf2'),'Enable','off');                  
                    set(findobj(gcf,'Tag','esf4'),'Enable','off');
                    set(findobj(gcf,'Tag','esf3'),'Enable','off');
                    set(findobj(gcf,'Tag','esf5'),'Enable','off');

       
               
                
        %perfil laminado        
       else
                figura1 = imread('PERFIL L - LAMINADO.PNG');
                    
                    %lista de perfis comerciais laminados bissimétricos
                    a = L_lam1;
                    set(findobj(gcf,'Tag','popupmenu2'),'String',a);
                    set(findobj(gcf,'Tag','popupmenu2'),'Enable','on');
                    set(findobj(gcf,'Tag','pushbutton10'),'Enable','on');
                    set(findobj(gcf,'Tag','pushbutton6'),'Enable','on');
                    
                    set(findobj(gcf,'Tag','dim1'),'String','d (mm) :');
                    set(findobj(gcf,'Tag','dim2'),'String','tf (mm) :');
                    set(findobj(gcf,'Tag','dim3'),'String','tw (mm) :');
                    set(findobj(gcf,'Tag','dim4'),'String','bf (mm) :');
                    set(findobj(gcf,'Tag','dim5'),'String','xg (cm) :');
                    set(findobj(gcf,'Tag','dim6'),'String','');
                    set(findobj(gcf,'Tag','dim7'),'String','A (cm²) :');
                    set(findobj(gcf,'Tag','dim8'),'String','Ix (cm4) :');
                    set(findobj(gcf,'Tag','dim9'),'String','Iy (cm4) :');
                    set(findobj(gcf,'Tag','dim10'),'String','ix (cm) :');
                    set(findobj(gcf,'Tag','dim11'),'String','iy (cm) :');
                    set(findobj(gcf,'Tag','dim12'),'String','iz (cm) :');
                    set(findobj(gcf,'Tag','dim13'),'String','Wx (cm³) :');
                    set(findobj(gcf,'Tag','dim14'),'String','Wy (cm³) :');
                    set(findobj(gcf,'Tag','dim15'),'String','');
                    set(findobj(gcf,'Tag','dim16'),'String',''); 
                    set(findobj(gcf,'Tag','dimc5'),'Visible','on');
                    set(findobj(gcf,'Tag','dimc6'),'Visible','off');
                    set(findobj(gcf,'Tag','dimc7'),'Enable','on');
                    set(findobj(gcf,'Tag','dimc8'),'Enable','on');
                    set(findobj(gcf,'Tag','dimc9'),'Enable','on');
                    set(findobj(gcf,'Tag','dimc10'),'Enable','on');
                    set(findobj(gcf,'Tag','dimc11'),'Enable','on');
                    set(findobj(gcf,'Tag','dimc12'),'Enable','on');
                    set(findobj(gcf,'Tag','dimc12'),'Visible','on');
                    set(findobj(gcf,'Tag','dimc13'),'Enable','on');
                    set(findobj(gcf,'Tag','dimc14'),'Enable','on');
                    set(findobj(gcf,'Tag','dimc15'),'Enable','off');
                    set(findobj(gcf,'Tag','dimc15'),'Visible','off');
                    set(findobj(gcf,'Tag','dimc16'),'Enable','off');
                    set(findobj(gcf,'Tag','dimc16'),'Visible','off');
                    set(findobj(gcf,'Tag','dimc17'),'Enable','on');
                    set(findobj(gcf,'Tag','esf2'),'Enable','off');
                    set(findobj(gcf,'Tag','esf3'),'Enable','off');
                    set(findobj(gcf,'Tag','esf4'),'Enable','off');
                    set(findobj(gcf,'Tag','esf5'),'Enable','off');
                   
                
       end
        
if pe==2 % perfil L - para o perfil L esta versão admite somente
    % solicitações normais.
                    % fazendo com que a interface não mostre valores de
                    % solictaçoes para o esta versao náo programa ainda
                    % não alcança para perfil L, seja porque ainda não foi
                    % implementado ou a norma não prevê
                    set(findobj(gcf,'Tag','esf2'),'String',''); % para momento em x,
                    set(findobj(gcf,'Tag','esf3'),'String',''); % momento em y; 
                    set(findobj(gcf,'Tag','esf4'),'String',''); % cortante em x; 
                    set(findobj(gcf,'Tag','esf5'),'String',''); % cortante em y;       
    Mxsd=0;
    Mysd=0;
    Vxsd=0;
    Vysd=0;  
end
       
       
       
       