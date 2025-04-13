function [] = banco_Tcom()
global f1;
global T_lam2;
global d;
global tf;
global tw;
global bf;
global Ag;
global Ix;
global Iy;
global ix;
global iy;
global Wx;
global Wy;
global Zy;
global m;
global xg;



%valor numerico correspondente ao perfil marcado pelo usuario na lista
marca = get(findobj(gcf,'Tag','popupmenu2'),'Value');
       if f1 == 1;
                %cada par ordenado corresponde a um par linha coluna da
                    %matriz de banco de dados
%                     d = T_lam2(marca,2);
%                     tf = T_lam2(marca,4);
%                     tw = T_lam2(marca,5);
%                     bf = T_lam2(marca,7);
%                     Ag = T_lam2(marca,3);
%                     Ix = T_lam2(marca,9);
%                     Iy = T_lam2(marca,13);
%                     ix = T_lam2(marca,11);
%                     iy = T_lam2(marca,15);
%                     Wx = T_lam2(marca,10);
%                     Wy = T_lam2(marca,14);
%                     Zy = T_lam2(marca,16);
%                     m = T_lam2(marca,1);
%                     
              
       else
                    d = T_lam2(marca,2);
                    tf = T_lam2(marca,4);
                    tw = T_lam2(marca,5);
                    bf = T_lam2(marca,7);
                    Ag = T_lam2(marca,3);
                    Ix = T_lam2(marca,9);
                    Iy = T_lam2(marca,13);
                    ix = T_lam2(marca,11);
                    iy = T_lam2(marca,15);
                    Wx = T_lam2(marca,10);
                    Wy = T_lam2(marca,14);
                    xg = T_lam2(marca,16);
                    m = T_lam2(marca,1);
                
       end
       
       %imprimindo os valores do banco de dados nos seus respectivos
       %espaços na interface grafica
       
           if f1==1;
%                 set(findobj(gcf,'Tag','dimc1'),'String',d);
%                 set(findobj(gcf,'Tag','dimc2'),'String',tf)
%                 set(findobj(gcf,'Tag','dimc3'),'String',tw);
%                 set(findobj(gcf,'Tag','dimc4'),'String',bf);
%                 set(findobj(gcf,'Tag','dimc7'),'String',Ag)
%                 set(findobj(gcf,'Tag','dimc8'),'String',Ix);
%                 set(findobj(gcf,'Tag','dimc9'),'String',Iy);
%                 set(findobj(gcf,'Tag','dimc10'),'String',ix);
%                 set(findobj(gcf,'Tag','dimc11'),'String',iy);
%                 %set(findobj(gcf,'Tag','dimc12'),'String',J);
%                 set(findobj(gcf,'Tag','dimc13'),'String',Wx);
%                 set(findobj(gcf,'Tag','dimc14'),'String',Wy);
%                 %set(findobj(gcf,'Tag','dimc15'),'String',Zx);
%                 set(findobj(gcf,'Tag','dimc16'),'String',Zy);
%                 set(findobj(gcf,'Tag','dimc17'),'String',m);
           else
                set(findobj(gcf,'Tag','dimc1'),'String',d);
                set(findobj(gcf,'Tag','dimc2'),'String',tf)
                set(findobj(gcf,'Tag','dimc3'),'String',tw);
                set(findobj(gcf,'Tag','dimc4'),'String',bf);
                set(findobj(gcf,'Tag','dimc5'),'String',xg);
                set(findobj(gcf,'Tag','dimc7'),'String',Ag)
                set(findobj(gcf,'Tag','dimc8'),'String',Ix);
                set(findobj(gcf,'Tag','dimc9'),'String',Iy);
                set(findobj(gcf,'Tag','dimc10'),'String',ix);
                set(findobj(gcf,'Tag','dimc11'),'String',iy);
                %set(findobj(gcf,'Tag','dimc12'),'String',J);
                set(findobj(gcf,'Tag','dimc13'),'String',Wx);
                set(findobj(gcf,'Tag','dimc14'),'String',Wy);
                %set(findobj(gcf,'Tag','dimc15'),'String',Zx);
                set(findobj(gcf,'Tag','dimc16'),'String',Zy);
                set(findobj(gcf,'Tag','dimc17'),'String',m);
           end
           
      
                 
    



