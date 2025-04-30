function [] = interface_I ()
%formatando interface para perfil I
global f1;
global f4;
global figura1;
global IHLdsim1;
global IHSdsim1;
global IHSmsim1;

%habilitando botoes de monossimétricos que podem ser desabilitados ao
%trocar de perfil
set(findobj(gcf,'Tag','radiobutton1'),'Enable','on');
set(findobj(gcf,'Tag','radiobutton2'),'Enable','on');
set(findobj(gcf,'Tag','radiobutton3'),'Enable','of');
set(findobj(gcf,'Tag','radiobutton4'),'Enable','on');
set(findobj(gcf,'Tag','radiobutton5'),'Enable','on');


%habilitando listas de perfis comerciais
set(findobj(gcf,'Tag','popupmenu2'),'Enable','on');
set(findobj(gcf,'Tag','pushbutton10'),'Enable','on');
set(findobj(gcf,'Tag','pushbutton14'),'Visible','on');
set(findobj(gcf,'Tag','pushbutton6'),'Enable','on');

%habilitando esforços que possam ser desabilitados
set(findobj(gcf,'Tag','esf2'),'Enable','on');
set(findobj(gcf,'Tag','esf3'),'Enable','on');
set(findobj(gcf,'Tag','esf4'),'Enable','on');
set(findobj(gcf,'Tag','esf5'),'Enable','on');

       %perfil soldado
       if f1 == 1;
                %monossimétrico
                if f4 == 1;
                    %figura para perfil sodado monossimétrico
                    figura1 = imread('perfil_soldado_mono.PNG');
                    
                    %nomes da lista de perfis comerciais soldados
                    %monossimetricos
                    a = IHSmsim1;
                    
                    %desabilitando esforços em Ypara perfis monossimetricos
                    set(findobj(gcf,'Tag','esf3'),'Enable','off');
                    set(findobj(gcf,'Tag','esf4'),'Enable','off');
                    
                    
                    set(findobj(gcf,'Tag','dim2'),'String','tfs (mm) :');
                    set(findobj(gcf,'Tag','dim3'),'String','tfi (mm) :');
                    set(findobj(gcf,'Tag','dim4'),'String','tw (mm) :');
                    set(findobj(gcf,'Tag','dim5'),'String','bfs (mm) :');
                    set(findobj(gcf,'Tag','dim6'),'String','bfi (mm) :');
                    set(findobj(gcf,'Tag','dim13'),'String','Wsup (cm³) :');
                    set(findobj(gcf,'Tag','dim14'),'String','Winf (cm³) :');
                    set(findobj(gcf,'Tag','dim15'),'String','Ysup (cm) :');
                    set(findobj(gcf,'Tag','dim16'),'String','Yinf (cm) :');
                    
        
                    set(findobj(gcf,'Tag','dimc5'),'Visible','on');
                    set(findobj(gcf,'Tag','dimc6'),'Visible','on');
        
                %duplamente simétrico
                else 
                    %figura para perfil soldado bissimétrico
                    figura1 = imread('perfil_soldado_bi.PNG');
                    
                    %nomes da lista de perfis comerciais soldados
                    %bissimetricos
                    a = IHSdsim1;
                    
                    
                    %habilitando esforços em Ypara perfis duplamente simetricos
                    set(findobj(gcf,'Tag','esf3'),'Enable','on');
                    set(findobj(gcf,'Tag','esf4'),'Enable','on');
                                        
                    set(findobj(gcf,'Tag','dim2'),'String','tf (mm) :');
                    set(findobj(gcf,'Tag','dim3'),'String','tw (mm) :');
                    set(findobj(gcf,'Tag','dim4'),'String','bf (mm) :');
                    set(findobj(gcf,'Tag','dim5'),'String','');
                    set(findobj(gcf,'Tag','dim6'),'String','');
                    set(findobj(gcf,'Tag','dim13'),'String','Wx (cm³) :');
                    set(findobj(gcf,'Tag','dim14'),'String','Wy (cm³) :');
                    set(findobj(gcf,'Tag','dim15'),'String','Zx (cm³) :');
                    set(findobj(gcf,'Tag','dim16'),'String','Zy (cm³) :');
                    
                    set(findobj(gcf,'Tag','dimc5'),'Visible','off');
                    set(findobj(gcf,'Tag','dimc6'),'Visible','off');
                end
                    set(findobj(gcf,'Tag','popupmenu2'),'String',a);
                    set(findobj(gcf,'Tag','popupmenu2'),'Enable','on');
                    set(findobj(gcf,'Tag','pushbutton10'),'Enable','on');
                    set(findobj(gcf,'Tag','pushbutton6'),'Enable','on');
                
                    
                    set(findobj(gcf,'Tag','dimc7'),'Enable','off');
                    set(findobj(gcf,'Tag','dimc8'),'Enable','off');
                    set(findobj(gcf,'Tag','dimc9'),'Enable','off');
                    set(findobj(gcf,'Tag','dimc10'),'Enable','off');
                    set(findobj(gcf,'Tag','dimc11'),'Enable','off');
                    set(findobj(gcf,'Tag','dimc12'),'Enable','off');
                    set(findobj(gcf,'Tag','dimc13'),'Enable','off');
                    set(findobj(gcf,'Tag','dimc14'),'Enable','off');
                    set(findobj(gcf,'Tag','dimc15'),'Enable','off');
                    set(findobj(gcf,'Tag','dimc16'),'Enable','off');
                    set(findobj(gcf,'Tag','dimc17'),'Enable','off');
                
        %perfil laminado        
       else
                %monossimétrico
                if f4 == 1;
                    figura1 = imread('perfil_laminado.PNG');
                    
                    %desabilitando lista de perfis comerciais monossimetricos
                    set(findobj(gcf,'Tag','popupmenu2'),'Enable','off');
                    set(findobj(gcf,'Tag','pushbutton10'),'Enable','off');
                    set(findobj(gcf,'Tag','pushbutton6'),'Enable','off');
                    
                    %desabilitando esforços em Ypara perfis monossimetricos
                    set(findobj(gcf,'Tag','esf3'),'Enable','off');
                    set(findobj(gcf,'Tag','esf4'),'Enable','off');
                                        
                    set(findobj(gcf,'Tag','dim2'),'String','tfs (mm) :');
                    set(findobj(gcf,'Tag','dim3'),'String','tfi (mm) :');
                    set(findobj(gcf,'Tag','dim4'),'String','tw (mm) :');
                    set(findobj(gcf,'Tag','dim5'),'String','bfs (mm) :');
                    set(findobj(gcf,'Tag','dim6'),'String','bfi (mm) :');
                    set(findobj(gcf,'Tag','dim13'),'String','Wsup (cm³) :');
                    set(findobj(gcf,'Tag','dim14'),'String','Winf (cm³) :');
                    set(findobj(gcf,'Tag','dim15'),'String','Ysup (cm) :');
                    set(findobj(gcf,'Tag','dim16'),'String','Yinf (cm) :'); 
        
                    set(findobj(gcf,'Tag','dimc6'),'Visible','on');
                    
                %duplamente simetrico
                else
                    figura1 = imread('perfil_laminado.PNG');
                    
                    %lista de perfis comerciais laminados bissimétricos
                    a = IHLdsim1;
                    set(findobj(gcf,'Tag','popupmenu2'),'String',a);
                    set(findobj(gcf,'Tag','popupmenu2'),'Enable','on');
                    set(findobj(gcf,'Tag','pushbutton10'),'Enable','on');
                    set(findobj(gcf,'Tag','pushbutton6'),'Enable','on');
                    
                    %habilitando esforços em Ypara perfis monossimetricos
                    set(findobj(gcf,'Tag','esf3'),'Enable','on');
                    set(findobj(gcf,'Tag','esf4'),'Enable','on');
                    
                    set(findobj(gcf,'Tag','dim2'),'String','tf (mm) :');
                    set(findobj(gcf,'Tag','dim3'),'String','tw (mm) :');
                    set(findobj(gcf,'Tag','dim4'),'String','bf (mm) :');
                    set(findobj(gcf,'Tag','dim5'),'String','h (mm) :');
                    set(findobj(gcf,'Tag','dim6'),'String','');
                    set(findobj(gcf,'Tag','dim13'),'String','Wx (cm³) :');
                    set(findobj(gcf,'Tag','dim14'),'String','Wy (cm³) :');
                    set(findobj(gcf,'Tag','dim15'),'String','Zx (cm³) :');
                    set(findobj(gcf,'Tag','dim16'),'String','Zy (cm³) :');  
        
                    set(findobj(gcf,'Tag','dimc6'),'Visible','off');
                end
                    set(findobj(gcf,'Tag','dimc5'),'Visible','on');

                    set(findobj(gcf,'Tag','dimc7'),'Enable','on');
                    set(findobj(gcf,'Tag','dimc8'),'Enable','on');
                    set(findobj(gcf,'Tag','dimc9'),'Enable','on');
                    set(findobj(gcf,'Tag','dimc10'),'Enable','on');
                    set(findobj(gcf,'Tag','dimc11'),'Enable','on');
                    set(findobj(gcf,'Tag','dimc12'),'Enable','on');
                    set(findobj(gcf,'Tag','dimc13'),'Enable','on');
                    set(findobj(gcf,'Tag','dimc14'),'Enable','on');
                    set(findobj(gcf,'Tag','dimc15'),'Enable','on');
                    set(findobj(gcf,'Tag','dimc16'),'Enable','on');
                    set(findobj(gcf,'Tag','dimc17'),'Enable','on');
       end
set(findobj(gcf,'Tag','dim1'),'String','d (mm) :');
set(findobj(gcf,'Tag','dim7'),'String','A (cm²) :');
set(findobj(gcf,'Tag','dim8'),'String','Ix (cm4) :');
set(findobj(gcf,'Tag','dim9'),'String','Iy (cm4) :');
set(findobj(gcf,'Tag','dim10'),'String','ix (cm) :');
set(findobj(gcf,'Tag','dim11'),'String','iy (cm) :');
set(findobj(gcf,'Tag','dim12'),'String','J (cm4) :');
                    
set(findobj(gcf,'Tag','dimc7'),'Visible','on');
set(findobj(gcf,'Tag','dimc8'),'Visible','on');
set(findobj(gcf,'Tag','dimc9'),'Visible','on');
set(findobj(gcf,'Tag','dimc10'),'Visible','on');
set(findobj(gcf,'Tag','dimc11'),'Visible','on');
set(findobj(gcf,'Tag','dimc12'),'Visible','on');
set(findobj(gcf,'Tag','dimc13'),'Visible','on');
set(findobj(gcf,'Tag','dimc14'),'Visible','on');
set(findobj(gcf,'Tag','dimc15'),'Visible','on');
set(findobj(gcf,'Tag','dimc16'),'Visible','on');
set(findobj(gcf,'Tag','dimc17'),'Visible','on');