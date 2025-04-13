function [] = interface_T ()
%formatando interface para perfil T
global f1;
global f2;
global f4;
global f5;
global figura1;
global T_lam1;

%bloqueando funçao para perfil ser sempre monossimétrico
set(findobj(gcf,'Tag','radiobutton4'),'Value',1);
set(findobj(gcf,'Tag','radiobutton4'),'Enable','off');
set(findobj(gcf,'Tag','radiobutton5'),'Enable','off');

%habilitando esforços em Ypara perfis monossimetricos
set(findobj(gcf,'Tag','esf4'),'Enable','on');
set(findobj(gcf,'Tag','esf5'),'Enable','on');
set(findobj(gcf,'Tag','pushbutton14'),'Visible','off');

       %perfil soldado
       if f1 == 1;
                    %figura para perfil sodado bissimétrico
                    figura1 = imread('PERFIL T - SOLDADO.PNG');
                    
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
                    set(findobj(gcf,'Tag','dim12'),'String','');
                    set(findobj(gcf,'Tag','dim13'),'String','Wx (cm³) :');
                    set(findobj(gcf,'Tag','dim14'),'String','Wy (cm³) :');
                    set(findobj(gcf,'Tag','dim15'),'String','');
                    set(findobj(gcf,'Tag','dim16'),'String','');
        
                    set(findobj(gcf,'Tag','dimc5'),'Visible','off');
                    set(findobj(gcf,'Tag','dimc6'),'Visible','off');
                    set(findobj(gcf,'Tag','dimc7'),'Enable','off');
                    set(findobj(gcf,'Tag','dimc8'),'Enable','off');
                    set(findobj(gcf,'Tag','dimc9'),'Enable','off');
                    set(findobj(gcf,'Tag','dimc10'),'Enable','off');
                    set(findobj(gcf,'Tag','dimc11'),'Enable','off');
                    set(findobj(gcf,'Tag','dimc12'),'Enable','off');
                    set(findobj(gcf,'Tag','dimc13'),'Enable','off');
                    set(findobj(gcf,'Tag','dimc14'),'Enable','off');
                    set(findobj(gcf,'Tag','dimc15'),'Enable','off');
                    set(findobj(gcf,'Tag','dimc15'),'Visible','off');
                    set(findobj(gcf,'Tag','dimc16'),'Enable','off');
                    set(findobj(gcf,'Tag','dimc16'),'Visible','off');
                    set(findobj(gcf,'Tag','dimc17'),'Enable','off');
                    
                    
       
                
                
        %perfil laminado        
        else
                    figura1 = imread('PERFIL T - LAMINADO.PNG');
                    
                    %lista de perfis comerciais laminados bissimétricos
                    a = T_lam1;
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
                    set(findobj(gcf,'Tag','dim12'),'String','');
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
                    set(findobj(gcf,'Tag','dimc12'),'Enable','off');
                    set(findobj(gcf,'Tag','dimc12'),'Visible','off');
                    set(findobj(gcf,'Tag','dimc13'),'Enable','on');
                    set(findobj(gcf,'Tag','dimc14'),'Enable','on');
                    set(findobj(gcf,'Tag','dimc15'),'Enable','off');
                    set(findobj(gcf,'Tag','dimc15'),'Visible','off');
                    set(findobj(gcf,'Tag','dimc16'),'Enable','off');
                    set(findobj(gcf,'Tag','dimc16'),'Visible','off');
                    set(findobj(gcf,'Tag','dimc17'),'Enable','on');
                
        end