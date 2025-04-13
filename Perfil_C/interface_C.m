function [] = interface_C ()
%formatando interface para perfil C
global f1;
global f2;
global f4;
global f5;
global figura1;
global C_lam1_novo;

%bloqueando funçao para perfil ser sempre monossimétrico
set(findobj(gcf,'Tag','radiobutton4'),'Value',1);
set(findobj(gcf,'Tag','radiobutton2'),'Value',1);
set(findobj(gcf,'Tag','radiobutton1'),'Enable','off');
set(findobj(gcf,'Tag','radiobutton4'),'Enable','off');
set(findobj(gcf,'Tag','radiobutton5'),'Enable','off');

%habilitando esforços em Ypara perfis monossimetricos
set(findobj(gcf,'Tag','esf3'),'Enable','on');
set(findobj(gcf,'Tag','esf4'),'Enable','on');
set(findobj(gcf,'Tag','pushbutton14'),'Visible','on');

       %perfil soldado
       if f1 == 1;
                 
                    %figura para perfil sodado bissimétrico
                    figura1 = imread('PERFIL C - SOLDADO.PNG');
                    
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
                    set(findobj(gcf,'Tag','dim12'),'String','J (cm4) :');
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
                     set(findobj(gcf,'Tag','dimc12'),'Visible','on');
                    set(findobj(gcf,'Tag','dimc13'),'Enable','off');
                    set(findobj(gcf,'Tag','dimc14'),'Enable','off');
                    set(findobj(gcf,'Tag','dimc15'),'Enable','off');
                    set(findobj(gcf,'Tag','dimc15'),'Visible','off');
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
                    figura1 = imread('PERFIL C - LAMINADO.PNG');
                    
                    %lista de perfis comerciais laminados bissimétricos
                    a = C_lam1_novo;
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
                    set(findobj(gcf,'Tag','esf2'),'Enable','on');
                    set(findobj(gcf,'Tag','esf3'),'Enable','on');
                    set(findobj(gcf,'Tag','esf4'),'Enable','on');
                    set(findobj(gcf,'Tag','esf5'),'Enable','on');
                
        end